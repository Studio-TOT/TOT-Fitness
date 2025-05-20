const express = require('express');
const router = express.Router();

// Import all route modules
const { router: authRoutes } = require('./routes/auth');
const userRoutes = require('./routes/user');
const subscriptionRoutes = require('./routes/subscription');
const exerciseRoutes = require('./routes/exercises');
const programRoutes = require('./routes/programs');
const savedProgramsRouter = require('./routes/savedPrograms');
// const nutritionRoutes = require('./routes/nutrition'); // Removed

// Mount routes with their respective prefixes
router.use('/auth', authRoutes);
router.use('/user', userRoutes);
router.use('/subscription', subscriptionRoutes);
router.use('/exercises', exerciseRoutes);
router.use('/programs', programRoutes);
router.use('/users/saved-programs', savedProgramsRouter);
// router.use('/nutrition', nutritionRoutes); // Removed

module.exports = router;
