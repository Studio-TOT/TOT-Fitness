const pool = require('./index');

const findUserByEmail = async (email) => {
    const { rows } = await pool.query('SELECT * FROM users WHERE email = $1', [email]);
    return rows[0];
};

const findUserById = async (id) => {
    const { rows } = await pool.query('SELECT * FROM users WHERE id = $1', [id]);
    return rows[0];
};

const findUserByStripeCustomerId = async (stripeCustomerId) => {
    const { rows } = await pool.query('SELECT * FROM users WHERE stripe_customer_id = $1', [stripeCustomerId]);
    return rows[0];
};

const createUser = async (email, stripeCustomerId, passwordHash = null) => {
    const { rows } = await pool.query(
        'INSERT INTO users (email, stripe_customer_id, is_premium, password_hash) VALUES ($1, $2, $3, $4) RETURNING *',
        [email, stripeCustomerId, false, passwordHash]
    );
    return rows[0];
};

const setPremiumStatus = async (userId, isPremium) => {
    console.log('[USER] Setting premium status', { userId, isPremium });
    const { rows } = await pool.query(
        'UPDATE users SET is_premium = $1 WHERE id = $2 RETURNING *',
        [isPremium, userId]
    );
    return rows[0];
};

const updateStripeCustomerId = async (userId, stripeCustomerId) => {
    console.log('[USER] Updating Stripe customer ID', { userId, stripeCustomerId });
    const { rows } = await pool.query(
        'UPDATE users SET stripe_customer_id = $1 WHERE id = $2 RETURNING *',
        [stripeCustomerId, userId]
    );
    return rows[0];
};

module.exports = {
    findUserByEmail,
    findUserById,
    findUserByStripeCustomerId,
    createUser,
    setPremiumStatus,
    updateStripeCustomerId,
}; 