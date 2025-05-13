const userModel = require('../models/user');

const getUser = async (req, res) => {
    try {
        const user = await userModel.findUserByEmail(req.user.email);
        if (!user) {
            return res.status(404).json({ error: 'User not found' });
        }

        // Return only necessary user data
        res.json({
            id: user.id,
            email: user.email,
            is_premium: user.is_premium,
            created_at: user.created_at
        });
    } catch (error) {
        console.error('[GET_USER] Error fetching user:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

const updatePremiumStatus = async (req, res) => {
    try {
        const { isPremium } = req.body;

        if (typeof isPremium !== 'boolean') {
            return res.status(400).json({ error: 'isPremium must be a boolean' });
        }

        const updatedUser = await userModel.setPremiumStatus(req.user.id, isPremium);

        if (!updatedUser) {
            return res.status(404).json({ error: 'User not found' });
        }

        res.json({
            id: updatedUser.id,
            email: updatedUser.email,
            is_premium: updatedUser.is_premium
        });
    } catch (error) {
        console.error('[UPDATE_PREMIUM] Error updating premium status:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

module.exports = {
    getUser,
    updatePremiumStatus
}; 