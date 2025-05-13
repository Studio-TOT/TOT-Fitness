const express = require('express');
const router = express.Router();
const { requireAuth } = require('./auth');
const subscriptionController = require('../controllers/subscriptionController');

// Create checkout session
router.post('/create-checkout-session', requireAuth, subscriptionController.createCheckoutSession);

// Verify session and update premium status
router.post('/verify-session', requireAuth, subscriptionController.verifySession);

// Check premium status
router.get('/check-premium', requireAuth, subscriptionController.checkPremiumStatus);

module.exports = router;
