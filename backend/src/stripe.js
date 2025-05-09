const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);

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
            case 'checkout.session.completed':
                const session = event.data.object;
                // Update user's subscription status in your database
                // You'll need to implement this based on your database schema
                break;
            case 'customer.subscription.deleted':
                const subscription = event.data.object;
                // Handle subscription cancellation
                break;
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