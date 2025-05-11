const pool = require('./index');

const createSubscription = async (userId, stripeSubscriptionId, status, currentPeriodEnd) => {
    const { rows } = await pool.query(
        'INSERT INTO subscriptions (user_id, stripe_subscription_id, status, current_period_end) VALUES ($1, $2, $3, $4) RETURNING *',
        [userId, stripeSubscriptionId, status, currentPeriodEnd]
    );
    return rows[0];
};

const updateSubscription = async (stripeSubscriptionId, status, currentPeriodEnd) => {
    await pool.query(
        'UPDATE subscriptions SET status = $1, current_period_end = $2 WHERE stripe_subscription_id = $3',
        [status, currentPeriodEnd, stripeSubscriptionId]
    );
};

const findByStripeSubscriptionId = async (stripeSubscriptionId) => {
    const { rows } = await pool.query('SELECT * FROM subscriptions WHERE stripe_subscription_id = $1', [stripeSubscriptionId]);
    return rows[0];
};

module.exports = {
    createSubscription,
    updateSubscription,
    findByStripeSubscriptionId,
}; 