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
const createCheckoutSession = async (priceId, userId, successUrl, cancelUrl) => {
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
            success_url: successUrl || `${process.env.FRONTEND_URL}/subscription/success?session_id={CHECKOUT_SESSION_ID}`,
            cancel_url: cancelUrl || `${process.env.FRONTEND_URL}/subscription`,
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
                const userId = session.client_reference_id;
                const subscriptionId = session.subscription;

                // Find user by ID
                const user = await userModel.findUserById(userId);
                if (!user) {
                    console.error('[WEBHOOK] User not found', { userId });
                    throw new Error('User not found');
                }

                // Update user's Stripe customer ID first
                await userModel.updateStripeCustomerId(user.id, customerId);

                // Then update premium status
                await userModel.setPremiumStatus(user.id, true);

                // Get subscription details from Stripe
                const stripeSub = await stripe.subscriptions.retrieve(subscriptionId);

                // For testing, set period end to 30 days from now
                const currentPeriodEnd = new Date();
                currentPeriodEnd.setDate(currentPeriodEnd.getDate() + 30);

                await subscriptionModel.createSubscription(
                    user.id,
                    subscriptionId,
                    stripeSub.status,
                    currentPeriodEnd
                );

                // Verify the update
                const updatedUser = await userModel.findUserById(userId);
                console.log('[WEBHOOK] User updated successfully', {
                    userId: updatedUser.id,
                    isPremium: updatedUser.is_premium,
                    stripeCustomerId: updatedUser.stripe_customer_id
                });
                break;
            }
            case 'customer.subscription.deleted': {
                const subscription = event.data.object;
                const stripeSubscriptionId = subscription.id;
                // Find subscription in DB
                const sub = await subscriptionModel.findByStripeSubscriptionId(stripeSubscriptionId);
                if (sub) {
                    // For testing, set period end to now
                    const currentPeriodEnd = new Date();

                    await subscriptionModel.updateSubscription(
                        stripeSubscriptionId,
                        subscription.status,
                        currentPeriodEnd
                    );

                    // Set user as not premium
                    await userModel.setPremiumStatus(sub.user_id, false);
                }
                break;
            }
            default:
                console.log(`[WEBHOOK] Unhandled event type ${event.type}`);
        }
    } catch (error) {
        console.error('[WEBHOOK] Error handling webhook:', error);
        throw error;
    }
};

module.exports = {
    createSubscriptionPlans,
    createCheckoutSession,
    handleWebhook,
}; 