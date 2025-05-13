const express = require('express');
const router = express.Router();

// Import all route modules
const authRoutes = require('./routes/auth');
const userRoutes = require('./routes/user');
const subscriptionRoutes = require('./routes/subscription');
const exerciseRoutes = require('./routes/exercise');
const programRoutes = require('./routes/program');
const nutritionRoutes = require('./routes/nutrition');

// Mount routes with their respective prefixes
router.use('/auth', authRoutes);
router.use('/user', userRoutes);
router.use('/subscription', subscriptionRoutes);
router.use('/exercise', exerciseRoutes);
router.use('/program', programRoutes);
router.use('/nutrition', nutritionRoutes);

module.exports = router;
