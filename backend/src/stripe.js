const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);
const userModel = require('./models/user');
const subscriptionModel = require('./models/subscription');

// Create subscription plans
const createSubscriptionPlans = async () => {
    try {
        // Monthly plan
        const monthlyPlan = await stripe.prices.create({
            unit_amount: 499, // $4.99
            currency: 'usd',
            recurring: {
                interval: 'month',
            },
            product_data: {
                name: 'Monthly Plan',
                description: 'Access to all workout programs and recipes',
            },
        });

        // Annual plan
        const annualPlan = await stripe.prices.create({
            unit_amount: 4999, // $49.99
            currency: 'usd',
            recurring: {
                interval: 'year',
            },
            product_data: {
                name: 'Annual Plan',
                description: 'Access to all workout programs and recipes (Save $9.89)',
            },
        });

        return {
            monthly: monthlyPlan.id,
            annual: annualPlan.id,
        };
    } catch (error) {
        console.error('Error creating subscription plans:', error);
        throw error;
    }
};

// Create a checkout session
const createCheckoutSession = async (priceId, userId) => {
    try {
        const session = await stripe.checkout.sessions.create({
            payment_method_types: ['card'],
            line_items: [
                {
                    price: priceId,
                    quantity: 1,
                },
            ],
            mode: 'subscription',
            success_url: `${process.env.FRONTEND_URL}/subscription/success?session_id={CHECKOUT_SESSION_ID}`,
            cancel_url: `${process.env.FRONTEND_URL}/subscription`,
            client_reference_id: userId,
        });

        return session;
    } catch (error) {
        console.error('Error creating checkout session:', error);
        throw error;
    }
};

// Handle webhook events
const handleWebhook = async (event) => {
    try {
        switch (event.type) {
            case 'checkout.session.completed': {
                const session = event.data.object;
                const customerId = session.customer;
                const email = session.customer_details?.email;
                const subscriptionId = session.subscription;
                // Find or create user
                let user = await userModel.findUserByStripeCustomerId(customerId);
                if (!user && email) {
                    user = await userModel.findUserByEmail(email);
                    if (!user) {
                        user = await userModel.createUser(email, customerId);
                    }
                }
                if (user) {
                    await userModel.setPremiumStatus(user.id, true);
                    // Get subscription details from Stripe
                    const stripeSub = await stripe.subscriptions.retrieve(subscriptionId);
                    await subscriptionModel.createSubscription(
                        user.id,
                        subscriptionId,
                        stripeSub.status,
                        new Date(stripeSub.current_period_end * 1000)
                    );
                }
                break;
            }
            case 'customer.subscription.deleted': {
                const subscription = event.data.object;
                const stripeSubscriptionId = subscription.id;
                // Find subscription in DB
                const sub = await subscriptionModel.findByStripeSubscriptionId(stripeSubscriptionId);
                if (sub) {
                    await subscriptionModel.updateSubscription(
                        stripeSubscriptionId,
                        subscription.status,
                        new Date(subscription.current_period_end * 1000)
                    );
                    // Set user as not premium
                    await userModel.setPremiumStatus(sub.user_id, false);
                }
                break;
            }
            default:
                console.log(`Unhandled event type ${event.type}`);
        }
    } catch (error) {
        console.error('Error handling webhook:', error);
        throw error;
    }
};

module.exports = {
    createSubscriptionPlans,
    createCheckoutSession,
    handleWebhook,
}; 