const express = require('express');
const router = express.Router();
const { requireAuth } = require('./auth');
const userController = require('../controllers/userController');

// GET /api/user
router.get('/', requireAuth, userController.getUser);

// PATCH /api/user/premium
router.patch('/premium', requireAuth, userController.updatePremiumStatus);

module.exports = router; 