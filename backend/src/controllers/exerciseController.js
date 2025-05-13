const exerciseModel = require('../models/exercise');

class ExerciseController {
    async getAllExercises(req, res) {
        try {
            const exercises = await exerciseModel.findAll(req.query);
            res.json(exercises);
        } catch (error) {
            console.error('Error in getAllExercises:', error);
            res.status(500).json({ error: 'Failed to fetch exercises' });
        }
    }

    async getExercisesByMuscle(req, res) {
        try {
            const { muscle } = req.params;
            const exercises = await exerciseModel.findByMuscle(muscle, req.query);
            res.json(exercises);
        } catch (error) {
            console.error('Error in getExercisesByMuscle:', error);
            res.status(500).json({ error: 'Failed to fetch exercises by muscle' });
        }
    }

    async getExercisesByBodyPart(req, res) {
        try {
            const { bodyPart } = req.params;
            const exercises = await exerciseModel.findByBodyPart(bodyPart, req.query);

            if (!exercises || exercises.length === 0) {
                return res.status(404).json({ error: 'No exercises found for this body part' });
            }

            res.json(exercises);
        } catch (error) {
            console.error('Error in getExercisesByBodyPart:', error);
            res.status(500).json({ error: 'Failed to fetch exercises by body part' });
        }
    }

    async getExerciseById(req, res) {
        try {
            const { id } = req.params;
            const exercise = await exerciseModel.findById(id);

            if (!exercise) {
                return res.status(404).json({ error: 'Exercise not found' });
            }

            res.json(exercise);
        } catch (error) {
            console.error('Error in getExerciseById:', error);
            res.status(500).json({ error: 'Failed to fetch exercise' });
        }
    }

    async getExercisesByDifficulty(req, res) {
        try {
            const { difficulty } = req.params;
            const exercises = await exerciseModel.findByDifficulty(difficulty);
            res.json(exercises);
        } catch (error) {
            console.error('[GET_EXERCISES_BY_DIFFICULTY] Error:', error);
            res.status(500).json({ error: 'Failed to fetch exercises' });
        }
    }

    async createExercise(req, res) {
        try {
            const exerciseData = req.body;
            const newExercise = await exerciseModel.create(exerciseData);
            res.status(201).json(newExercise);
        } catch (error) {
            console.error('[CREATE_EXERCISE] Error:', error);
            res.status(500).json({ error: 'Failed to create exercise' });
        }
    }

    async updateExercise(req, res) {
        try {
            const { id } = req.params;
            const exerciseData = req.body;

            const updatedExercise = await exerciseModel.update(id, exerciseData);

            if (!updatedExercise) {
                return res.status(404).json({ error: 'Exercise not found' });
            }

            res.json(updatedExercise);
        } catch (error) {
            console.error('[UPDATE_EXERCISE] Error:', error);
            res.status(500).json({ error: 'Failed to update exercise' });
        }
    }

    async deleteExercise(req, res) {
        try {
            const { id } = req.params;
            const deletedExercise = await exerciseModel.delete(id);

            if (!deletedExercise) {
                return res.status(404).json({ error: 'Exercise not found' });
            }

            res.json({ message: 'Exercise deleted successfully' });
        } catch (error) {
            console.error('[DELETE_EXERCISE] Error:', error);
            res.status(500).json({ error: 'Failed to delete exercise' });
        }
    }
}

module.exports = new ExerciseController(); 