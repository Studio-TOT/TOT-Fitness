const express = require('express');
const router = express.Router();
const exerciseController = require('../controllers/exerciseController');
const { requireAuth } = require('../middleware/auth');

// Public routes
router.get('/', exerciseController.getAllExercises);
router.get('/muscle/:muscle', exerciseController.getExercisesByMuscle);
router.get('/bodypart/:bodyPart', exerciseController.getExercisesByBodyPart);
router.get('/:id', exerciseController.getExerciseById);

// Protected routes (require authentication)
router.post('/', requireAuth, exerciseController.createExercise);
router.put('/:id', requireAuth, exerciseController.updateExercise);
router.delete('/:id', requireAuth, exerciseController.deleteExercise);

module.exports = router; 