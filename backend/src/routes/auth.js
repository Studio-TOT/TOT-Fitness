const express = require('express');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const userModel = require('../models/user');
const router = express.Router();

const JWT_SECRET = process.env.JWT_SECRET || 'dev_secret_key';

// Register
router.post('/register', async (req, res) => {
    const { email, password } = req.body;
    console.log('[REGISTER] Incoming request:', { email });
    if (!email || !password) {
        console.warn('[REGISTER] Missing email or password');
        return res.status(400).json({ error: 'Email and password required' });
    }
    try {
        const existing = await userModel.findUserByEmail(email);
        if (existing) {
            console.warn(`[REGISTER] User already exists: ${email}`);
            return res.status(409).json({ error: 'User already exists' });
        }
        const hash = await bcrypt.hash(password, 10);
        console.log('[REGISTER] Password hashed');
        const user = await userModel.createUser(email, null, hash);
        console.log('[REGISTER] User created:', user);
        const token = jwt.sign({ id: user.id, email: user.email }, JWT_SECRET, { expiresIn: '7d' });
        res.json({ token, user: { id: user.id, email: user.email, is_premium: user.is_premium } });
    } catch (err) {
        console.error('[REGISTER] Error:', err);
        // In dev, return error message for debugging
        const isDev = process.env.NODE_ENV !== 'production';
        res.status(500).json({ error: isDev ? (err.message || 'Internal server error') : 'Internal server error' });
    }
});

// Login
router.post('/login', async (req, res) => {
    const { email, password } = req.body;
    if (!email || !password) return res.status(400).json({ error: 'Email and password required' });
    try {
        const user = await userModel.findUserByEmail(email);
        if (!user || !user.password_hash) return res.status(401).json({ error: 'Invalid credentials' });
        const valid = await bcrypt.compare(password, user.password_hash);
        if (!valid) return res.status(401).json({ error: 'Invalid credentials' });
        const token = jwt.sign({ id: user.id, email: user.email }, JWT_SECRET, { expiresIn: '7d' });
        res.json({ token, user: { id: user.id, email: user.email, is_premium: user.is_premium } });
    } catch (err) {
        res.status(500).json({ error: 'Internal server error' });
    }
});

// Middleware to check JWT
function requireAuth(req, res, next) {
    const auth = req.headers.authorization;
    if (!auth || !auth.startsWith('Bearer ')) return res.status(401).json({ error: 'Missing token' });
    try {
        const payload = jwt.verify(auth.split(' ')[1], JWT_SECRET);
        req.user = payload;
        next();
    } catch {
        res.status(401).json({ error: 'Invalid token' });
    }
}

// Get current user
router.get('/me', requireAuth, async (req, res) => {
    try {
        const user = await userModel.findUserByEmail(req.user.email);
        if (!user) return res.status(404).json({ error: 'User not found' });
        res.json({ id: user.id, email: user.email, is_premium: user.is_premium });
    } catch (err) {
        res.status(500).json({ error: 'Internal server error' });
    }
});

module.exports = {
    router,
    requireAuth
}; 