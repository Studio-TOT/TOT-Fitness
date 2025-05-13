const NodeCache = require('node-cache');

class CacheService {
    constructor(ttlSeconds = 300) {
        this.cache = new NodeCache({ stdTTL: ttlSeconds });
    }

    get(key) {
        return this.cache.get(key);
    }

    set(key, value) {
        return this.cache.set(key, value);
    }

    del(key) {
        return this.cache.del(key);
    }

    flush() {
        return this.cache.flushAll();
    }

    // Generate cache key for exercises
    generateExerciseCacheKey(params) {
        const { bodyPart, category, difficulty, page, limit, search } = params;
        return `exercise_${bodyPart}${category ? `_${category}` : ''}${difficulty ? `_${difficulty}` : ''}_page${page}_limit${limit}_search${search}`;
    }

    // Generate cache key for all exercises
    generateAllExercisesCacheKey() {
        return 'all_exercises';
    }
}

// Export a singleton instance
module.exports = new CacheService(); 