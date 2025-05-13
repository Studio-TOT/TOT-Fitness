const pool = require('../db');

const findUserByEmail = async (email) => {
    const { rows } = await pool.query('SELECT * FROM users WHERE email = $1', [email]);
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
    const { rows } = await pool.query(
        'UPDATE users SET is_premium = $1 WHERE id = $2 RETURNING *',
        [isPremium, userId]
    );
    return rows[0];
};

module.exports = {
    findUserByEmail,
    findUserByStripeCustomerId,
    createUser,
    setPremiumStatus,
}; 