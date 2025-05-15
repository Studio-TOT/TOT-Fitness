const stripe = require('../stripe');
const userModel = require('../models/user');
const subscriptionModel = require('../models/subscription');

const createCheckoutSession = async (req, res) => {
    try {
        console.log('[CREATE_CHECKOUT] Starting checkout session creation', {
            requestUser: req.user.email,
            userId: req.user.id,
            priceId: req.body.priceId
        });

        // Verify user exists
        const user = await userModel.findUserByEmail(req.user.email);

        if (!user) {
            console.error('[CREATE_CHECKOUT] User not found', { email: req.user.email });
            return res.status(404).json({ error: 'User not found' });
        }

        console.log('[CREATE_CHECKOUT] User found, creating Stripe session', {
            userId: user.id,
            is_premium: user.is_premium
        });

        // Create checkout session 
        const session = await stripe.createCheckoutSession(
            req.body.priceId,
            user.id,
            req.body.successUrl,
            req.body.cancelUrl
        );

        console.log('[CREATE_CHECKOUT] Session created successfully', {
            sessionId: session.id,
            userId: user.id
        });

        // Return the session URL
        res.status(200).json({
            url: session.url,
            sessionId: session.id
        });
    } catch (error) {
        console.error('[CREATE_CHECKOUT] Error creating checkout session:', error);
        res.status(500).json({ error: 'Failed to create checkout session' });
    }
};

const verifySession = async (req, res) => {
    try {
        const { sessionId } = req.body;
        console.log('[VERIFY_SESSION] Starting session verification', {
            sessionId,
            userId: req.user.id
        });

        // Retrieve the session from Stripe
        const session = await stripe.checkout.sessions.retrieve(sessionId);

        if (!session) {
            console.error('[VERIFY_SESSION] Session not found', { sessionId });
            return res.status(404).json({ error: 'Session not found' });
        }

        // Verify the session belongs to the current user
        if (session.client_reference_id !== req.user.id.toString()) {
            console.error('[VERIFY_SESSION] Session does not belong to user', {
                sessionUserId: session.client_reference_id,
                requestUserId: req.user.id
            });
            return res.status(403).json({ error: 'Unauthorized' });
        }

        // Get user from database
        const user = await userModel.findUserByEmail(req.user.email);
        if (!user) {
            console.error('[VERIFY_SESSION] User not found', { email: req.user.email });
            return res.status(404).json({ error: 'User not found' });
        }

        // Check if subscription already exists
        const existingSubscription = await subscriptionModel.findByStripeSubscriptionId(session.subscription);
        if (!existingSubscription) {
            // Get subscription details from Stripe
            const subscription = await stripe.subscriptions.retrieve(session.subscription);

            // Create subscription record
            await subscriptionModel.createSubscription(
                user.id,
                session.subscription,
                subscription.status,
                new Date(subscription.current_period_end * 1000)
            );

            // Set user as premium
            await userModel.setPremiumStatus(user.id, true);

            console.log('[VERIFY_SESSION] Subscription created and user set as premium', {
                userId: user.id,
                subscriptionId: session.subscription
            });
        }

        // Get updated user data
        const updatedUser = await userModel.findUserByEmail(req.user.email);

        console.log('[VERIFY_SESSION] Verification complete', {
            userId: updatedUser.id,
            isPremium: updatedUser.is_premium
        });

        res.status(200).json({
            success: true,
            isPremium: updatedUser.is_premium,
            userId: updatedUser.id,
            subscriptionId: session.subscription
        });
    } catch (error) {
        console.error('[VERIFY_SESSION] Error verifying session:', error);
        res.status(500).json({ error: 'Failed to verify session' });
    }
};

const checkPremiumStatus = async (req, res) => {
    try {
        const user = await userModel.findUserByEmail(req.user.email);
        if (!user) {
            return res.status(404).json({ error: 'User not found' });
        }

        res.json({
            isPremium: user.is_premium,
            userId: user.id
        });
    } catch (error) {
        console.error('[CHECK_PREMIUM] Error checking premium status:', error);
        res.status(500).json({ error: 'Failed to check premium status' });
    }
};

module.exports = {
    createCheckoutSession,
    verifySession,
    checkPremiumStatus
}; 