const db = require('../db');
const cacheService = require('../services/cacheService');
const transformService = require('../services/transformService');
const queryBuilderService = require('../services/queryBuilderService');

class ExerciseModel {
    async findAll(filters = {}) {
        try {
            const cacheKey = cacheService.getExercisesCacheKey(filters);
            const cachedData = await cacheService.get(cacheKey);

            if (cachedData) {
                return cachedData;
            }

            const { query, params } = queryBuilderService.buildExerciseQuery(filters);
            const result = await db.query(query, params);

            const exercises = transformService.transformExerciseList(result.rows);
            await cacheService.set(cacheKey, exercises);

            return exercises;
        } catch (error) {
            console.error('Error in findAll:', error);
            throw error;
        }
    }

    async findByMuscle(muscleName, filters = {}) {
        try {
            const cacheKey = cacheService.getExercisesCacheKey({ ...filters, muscle: muscleName });
            const cachedData = await cacheService.get(cacheKey);

            if (cachedData) {
                return cachedData;
            }

            const { query, params } = queryBuilderService.buildExerciseQuery({
                ...filters,
                muscle: muscleName
            });
            const result = await db.query(query, params);

            const exercises = transformService.transformExerciseList(result.rows);
            await cacheService.set(cacheKey, exercises);

            return exercises;
        } catch (error) {
            console.error('Error in findByMuscle:', error);
            throw error;
        }
    }

    async findByBodyPart(bodyPart, filters = {}) {
        try {
            const cacheKey = cacheService.getExercisesCacheKey({ ...filters, bodyPart });
            const cachedData = await cacheService.get(cacheKey);

            if (cachedData) {
                return cachedData;
            }

            const { page = 1, limit = 10 } = filters;
            const offset = (page - 1) * limit;

            const { query, params } = queryBuilderService.buildExerciseQuery({
                ...filters,
                bodyPart,
                offset,
                limit
            });

            // Get total count
            const { query: countQuery, params: countParams } = queryBuilderService.buildCountQuery({
                ...filters,
                bodyPart
            });
            const countResult = await db.query(countQuery, countParams);
            const total = parseInt(countResult.rows[0].total);

            // Get paginated data
            const result = await db.query(query, params);
            const exercises = transformService.transformExerciseList(result.rows);

            const response = {
                data: exercises,
                pagination: {
                    total,
                    page: parseInt(page),
                    limit: parseInt(limit),
                    totalPages: Math.ceil(total / limit)
                }
            };

            await cacheService.set(cacheKey, response);
            return response;
        } catch (error) {
            console.error('Error in findByBodyPart:', error);
            throw error;
        }
    }

    async findById(id) {
        try {
            const cacheKey = cacheService.getExerciseCacheKey(id);
            const cachedData = await cacheService.get(cacheKey);

            if (cachedData) {
                return cachedData;
            }

            const { query, params } = queryBuilderService.buildExerciseQuery({ id });
            const result = await db.query(query, params);

            if (result.rows.length === 0) {
                return null;
            }

            const exercise = transformService.transformExercise(result.rows[0]);
            await cacheService.set(cacheKey, exercise);

            return exercise;
        } catch (error) {
            console.error('Error in findById:', error);
            throw error;
        }
    }

    async getTotalCount(filters = {}) {
        try {
            const { query, params } = queryBuilderService.buildCountQuery(filters);
            const result = await db.query(query, params);
            return parseInt(result.rows[0].total);
        } catch (error) {
            console.error('Error in getTotalCount:', error);
            throw error;
        }
    }

    async create(exerciseData) {
        try {
            const { query, params } = queryBuilderService.buildInsertQuery(exerciseData);
            const result = await db.query(query, params);
            return transformService.transformExercise(result.rows[0]);
        } catch (error) {
            console.error('Error in create:', error);
            throw error;
        }
    }

    async update(id, exerciseData) {
        try {
            const { query, params } = queryBuilderService.buildUpdateQuery(id, exerciseData);
            const result = await db.query(query, params);

            if (result.rows.length === 0) {
                return null;
            }

            return transformService.transformExercise(result.rows[0]);
        } catch (error) {
            console.error('Error in update:', error);
            throw error;
        }
    }

    async delete(id) {
        try {
            const { query, params } = queryBuilderService.buildDeleteQuery(id);
            const result = await db.query(query, params);
            return result.rows[0] || null;
        } catch (error) {
            console.error('Error in delete:', error);
            throw error;
        }
    }

    async findByDifficulty(difficulty) {
        try {
            const { query, params } = queryBuilderService.buildExerciseQuery({ difficulty });
            const result = await db.query(query, params);
            return transformService.transformExerciseList(result.rows);
        } catch (error) {
            console.error('Error in findByDifficulty:', error);
            throw error;
        }
    }
}

module.exports = new ExerciseModel(); 