const express = require('express');
const router = express.Router();
const userModel = require('../models/user');

// GET /api/user?email=...
router.get('/', async (req, res) => {
    const { email } = req.query;
    if (!email) return res.status(400).json({ error: 'Email is required' });
    try {
        const user = await userModel.findUserByEmail(email);
        if (!user) return res.status(404).json({ error: 'User not found' });
        res.json({
            id: user.id,
            email: user.email,
            is_premium: user.is_premium,
            created_at: user.created_at,
        });
    } catch (err) {
        res.status(500).json({ error: 'Internal server error' });
    }
});

// GET /api/user/premium?email=...
router.get('/premium', async (req, res) => {
    const { email } = req.query;
    if (!email) return res.status(400).json({ error: 'Email is required' });
    try {
        const user = await userModel.findUserByEmail(email);
        if (!user) return res.status(404).json({ error: 'User not found' });
        res.json({ is_premium: user.is_premium });
    } catch (err) {
        res.status(500).json({ error: 'Internal server error' });
    }
});

module.exports = router; 