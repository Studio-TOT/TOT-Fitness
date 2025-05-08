const express = require('express');
const router = express.Router();
const { Pool } = require('pg');
const NodeCache = require('node-cache');

// Create a cache with a TTL of 5 minutes
const cache = new NodeCache({ stdTTL: 300 });

// Get the appropriate database configuration based on environment
const getDatabaseConfig = () => {

  if (process.env.NODE_ENV === 'production') {
    if (!process.env.DATABASE_URL) {
      console.error('DATABASE_URL is required in production environment');
      console.error('Available environment variables:', Object.keys(process.env).join(', '));
      throw new Error('DATABASE_URL is required in production environment');
    }

    return {
      connectionString: process.env.DATABASE_URL,
      ssl: { rejectUnauthorized: false }
    };
  }

  // In development, use local database configuration
  if (process.env.LOCAL_DATABASE_URL) {
    return {
      connectionString: process.env.LOCAL_DATABASE_URL,
      ssl: false
    };
  }

  // Fallback to individual parameters for local development
  return {
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT || 5432,
    ssl: false
  };
};

// Get database configuration
const dbConfig = getDatabaseConfig();
// Create the connection pool
const pool = new Pool(dbConfig);

// Transform exercise data to match frontend format
const transformExercise = (exercise) => {
  // Ensure arrays exist before filtering
  const muscles = exercise.muscles || [];
  const categories = exercise.categories || [];
  const steps = exercise.steps || [];
  const images = exercise.images || [];

  const primaryMuscles = muscles
    .filter(m => m && m.is_primary)
    .map(m => m.name);

  const secondaryMuscles = muscles
    .filter(m => m && m.is_secondary)
    .map(m => m.name);

  const tertiaryMuscles = muscles
    .filter(m => m && m.is_tertiary)
    .map(m => m.name);

  const primaryCategory = categories
    .filter(c => c && c.is_primary)
    .map(c => c.name)[0];

  const equipment = categories
    .filter(c => c && !c.is_primary)
    .map(c => c.name);

  // Get difficulty from the new difficulty_name field
  const difficulty = exercise.difficulty_name ? exercise.difficulty_name.toLowerCase() : null;

  // Filter out null values from steps and sort by order
  const validSteps = steps
    .filter(s => s && s.text) // Filter out null or undefined steps
    .sort((a, b) => a.order - b.order)
    .map(s => s.text);

  // Filter out null values from images and sort by order
  const maleImages = images
    .filter(i => i && i.gender === 'male' && i.branded_video)
    .sort((a, b) => a.order - b.order);

  const femaleImages = images
    .filter(i => i && i.gender === 'female' && i.branded_video)
    .sort((a, b) => a.order - b.order);

  return {
    id: exercise.id,
    exercise_name: exercise.name,
    target: {
      Primary: primaryMuscles,
      Secondary: secondaryMuscles,
      Tertiary: tertiaryMuscles
    },
    category: primaryCategory,
    equipment,
    difficulty,
    force: exercise.force?.[0]?.name,
    mechanic: exercise.mechanic?.[0]?.name,
    steps: validSteps.length > 0 ? validSteps : [null], // Return [null] if no steps
    images: {
      male: maleImages,
      female: femaleImages
    }
  };
};

// Get all exercises with their related data
router.get('/', async (req, res) => {
  try {
    const cacheKey = 'all_exercises';

    // Check cache first
    const cachedData = cache.get(cacheKey);
    if (cachedData) {
      return res.json(cachedData);
    }

    const client = await req.db.connect();
    try {
      const result = await client.query(`
        SELECT
          e.*,
          (SELECT d.name FROM difficulties d JOIN exercise_details ed_sub ON d.id = ed_sub.difficulty_id WHERE ed_sub.exercise_id = e.id) as difficulty_name,
          json_agg(DISTINCT jsonb_build_object(
            'id', m.id,
            'name', m.name,
            'name_en_us', m.name_en_us,
            'is_primary', em.is_primary,
            'is_secondary', em.is_secondary,
            'is_tertiary', em.is_tertiary
          )) FILTER (WHERE m.id IS NOT NULL) as muscles,
          json_agg(DISTINCT jsonb_build_object(
            'id', c.id,
            'name', c.name,
            'name_en_us', c.name_en_us,
            'is_primary', ec.is_primary
          )) FILTER (WHERE c.id IS NOT NULL) as categories,
          json_agg(DISTINCT jsonb_build_object(
            'id', f.id,
            'name', f.name,
            'name_en_us', f.name_en_us
          )) FILTER (WHERE f.id IS NOT NULL) as force,
          json_agg(DISTINCT jsonb_build_object(
            'id', me.id,
            'name', me.name,
            'name_en_us', me.name_en_us
          )) FILTER (WHERE me.id IS NOT NULL) as mechanic,
          json_agg(DISTINCT jsonb_build_object(
            'id', s.id,
            'order', s.order_num,
            'text', s.text,
            'text_en_us', s.text_en_us
          )) FILTER (WHERE s.id IS NOT NULL) as steps,
          json_agg(DISTINCT jsonb_build_object(
            'id', i.id,
            'gender', i.gender,
            'order', i.order_num,
            'og_image', i.og_image,
            'original_video', i.original_video,
            'unbranded_video', i.unbranded_video,
            'branded_video', i.branded_video
          )) FILTER (WHERE i.id IS NOT NULL) as images
        FROM exercises e
        LEFT JOIN exercise_muscles em ON e.id = em.exercise_id
        LEFT JOIN muscles m ON em.muscle_id = m.id
        LEFT JOIN exercise_categories ec ON e.id = ec.exercise_id
        LEFT JOIN categories c ON ec.category_id = c.id
        LEFT JOIN exercise_details ed2 ON e.id = ed2.exercise_id -- Alias for details related to force/mechanic
        LEFT JOIN forces f ON ed2.force_id = f.id
        LEFT JOIN mechanics me ON ed2.mechanic_id = me.id
        LEFT JOIN exercise_steps es ON e.id = es.exercise_id
        LEFT JOIN steps s ON es.step_id = s.id
        LEFT JOIN exercise_images ei ON e.id = ei.exercise_id
        LEFT JOIN images i ON ei.image_id = i.id
        GROUP BY e.id, e.name, e.description, e.name_en_us, e.name_alternative, e.slug, e.description_en_us, e.need_warmup, e.advanced_weight, e.featured_weight, e.weight, e.impact, e.use_youtube_links, e.featured, e.sponsered_link, e.status, e.created_at, e.updated_at
        ORDER BY e.name;
      `);

      const exercises = result.rows.map(transformExercise);

      // Cache the results
      cache.set(cacheKey, exercises);

      res.json(exercises);
    } finally {
      client.release();
    }
  } catch (error) {
    console.error('Error fetching exercises:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Get exercises by muscle
router.get('/muscle/:muscleName', async (req, res) => {
  try {
    const { muscleName } = req.params;
    const result = await pool.query(`
      SELECT 
        e.*,
        json_agg(DISTINCT jsonb_build_object(
          'id', m.id,
          'name', m.name,
          'name_en_us', m.name_en_us,
          'is_primary', em.is_primary,
          'is_secondary', em.is_secondary,
          'is_tertiary', em.is_tertiary
        )) FILTER (WHERE m.id IS NOT NULL) as muscles,
        json_agg(DISTINCT jsonb_build_object(
          'id', c.id,
          'name', c.name,
          'name_en_us', c.name_en_us,
          'is_primary', ec.is_primary
        )) FILTER (WHERE c.id IS NOT NULL) as categories,
        json_agg(DISTINCT jsonb_build_object(
          'id', d.id,
          'name', d.name,
          'name_en_us', d.name_en_us
        )) FILTER (WHERE d.id IS NOT NULL) as difficulty,
        json_agg(DISTINCT jsonb_build_object(
          'id', f.id,
          'name', f.name,
          'name_en_us', f.name_en_us
        )) FILTER (WHERE f.id IS NOT NULL) as force,
        json_agg(DISTINCT jsonb_build_object(
          'id', me.id,
          'name', me.name,
          'name_en_us', me.name_en_us
        )) FILTER (WHERE me.id IS NOT NULL) as mechanic,
        json_agg(DISTINCT jsonb_build_object(
          'id', s.id,
          'order', s.order_num,
          'text', s.text,
          'text_en_us', s.text_en_us
        )) FILTER (WHERE s.id IS NOT NULL) as steps,
        json_agg(DISTINCT jsonb_build_object(
          'id', i.id,
          'gender', i.gender,
          'order', i.order_num,
          'og_image', i.og_image,
          'original_video', i.original_video,
          'unbranded_video', i.unbranded_video,
          'branded_video', i.branded_video
        )) FILTER (WHERE i.id IS NOT NULL) as images
      FROM exercises e
      LEFT JOIN exercise_muscles em ON e.id = em.exercise_id
      LEFT JOIN muscles m ON em.muscle_id = m.id
      LEFT JOIN exercise_categories ec ON e.id = ec.exercise_id
      LEFT JOIN categories c ON ec.category_id = c.id
      LEFT JOIN exercise_details ed ON e.id = ed.exercise_id
      LEFT JOIN difficulties d ON ed.difficulty_id = d.id
      LEFT JOIN forces f ON ed.force_id = f.id
      LEFT JOIN mechanics me ON ed.mechanic_id = me.id
      LEFT JOIN exercise_steps s ON e.id = s.exercise_id
      LEFT JOIN exercise_images i ON e.id = i.exercise_id
      WHERE m.name ILIKE $1 OR m.name_en_us ILIKE $1
      GROUP BY e.id
      ORDER BY e.name
    `, [`%${muscleName}%`]);

    // Transform the data to match the frontend's expected format
    const exercises = result.rows.map(transformExercise);

    res.json(exercises);
  } catch (error) {
    console.error('Error fetching exercises by muscle:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Get exercises by body part
router.get('/bodypart/:bodyPart', async (req, res) => {
  try {
    const { bodyPart } = req.params;
    const { category, page = 1, limit = 20, search = '', difficulty = '' } = req.query;
    const offset = (page - 1) * limit;

    const cacheKey = `bodypart_${bodyPart}${category ? `_${category}` : ''}${difficulty ? `_${difficulty}` : ''}_page${page}_limit${limit}_search${search}`;

    // Check cache first
    const cachedData = cache.get(cacheKey);
    if (cachedData) {
      return res.json(cachedData);
    }

    const client = await req.db.connect();
    try {
      // First, get total count with search
      let countQuery = `
        SELECT COUNT(DISTINCT e.id) as total
        FROM exercises e
        LEFT JOIN exercise_muscles em ON e.id = em.exercise_id
        LEFT JOIN muscles m ON em.muscle_id = m.id
        LEFT JOIN exercise_categories ec ON e.id = ec.exercise_id
        LEFT JOIN categories c ON ec.category_id = c.id
        LEFT JOIN exercise_details ed ON e.id = ed.exercise_id
        LEFT JOIN difficulties d ON ed.difficulty_id = d.id
        WHERE (m.name ILIKE $1 OR m.name_en_us ILIKE $1)
      `;

      const countParams = [`%${bodyPart}%`];

      if (category) {
        countQuery += ` AND (c.name ILIKE $${countParams.length + 1} OR c.name_en_us ILIKE $${countParams.length + 1})`;
        countParams.push(`%${category}%`);
      }

      if (difficulty) {
        countQuery += ` AND d.name ILIKE $${countParams.length + 1}`;
        countParams.push(`%${difficulty}%`);
      }

      if (search) {
        countQuery += ` AND e.name ILIKE $${countParams.length + 1}`;
        countParams.push(`%${search}%`);
      }

      const countResult = await client.query(countQuery, countParams);
      const total = parseInt(countResult.rows[0].total);

      if (total === 0) {
        return res.status(404).json({
          error: 'No exercises found',
          details: `No exercises found for body part: ${bodyPart}${category ? ` and category: ${category}` : ''}${difficulty ? ` and difficulty: ${difficulty}` : ''}${search ? ` and search: ${search}` : ''}`
        });
      }

      // Then get paginated data with search
      let query = `
        SELECT 
          e.*,
          ed_diff.difficulty_name,
          json_agg(DISTINCT jsonb_build_object(
            'id', m.id,
            'name', m.name,
            'name_en_us', m.name_en_us,
            'is_primary', em.is_primary,
            'is_secondary', em.is_secondary,
            'is_tertiary', em.is_tertiary
          )) FILTER (WHERE m.id IS NOT NULL) as muscles,
          json_agg(DISTINCT jsonb_build_object(
            'id', c.id,
            'name', c.name,
            'name_en_us', c.name_en_us,
            'is_primary', ec.is_primary
          )) FILTER (WHERE c.id IS NOT NULL) as categories,
          json_agg(DISTINCT jsonb_build_object(
            'id', f.id,
            'name', f.name,
            'name_en_us', f.name_en_us
          )) FILTER (WHERE f.id IS NOT NULL) as force,
          json_agg(DISTINCT jsonb_build_object(
            'id', me.id,
            'name', me.name,
            'name_en_us', me.name_en_us
          )) FILTER (WHERE me.id IS NOT NULL) as mechanic,
          json_agg(DISTINCT jsonb_build_object(
            'id', s.id,
            'order', s.order_num,
            'text', s.text,
            'text_en_us', s.text_en_us
          )) FILTER (WHERE s.id IS NOT NULL) as steps,
          json_agg(DISTINCT jsonb_build_object(
            'id', i.id,
            'gender', i.gender,
            'order', i.order_num,
            'og_image', i.og_image,
            'original_video', i.original_video,
            'unbranded_video', i.unbranded_video,
            'branded_video', i.branded_video
          )) FILTER (WHERE i.id IS NOT NULL) as images
        FROM exercises e
        LEFT JOIN exercise_muscles em ON e.id = em.exercise_id
        LEFT JOIN muscles m ON em.muscle_id = m.id
        LEFT JOIN exercise_categories ec ON e.id = ec.exercise_id
        LEFT JOIN categories c ON ec.category_id = c.id
        LEFT JOIN (
          SELECT ed_sub.exercise_id, d.name as difficulty_name
          FROM exercise_details ed_sub
          JOIN difficulties d ON ed_sub.difficulty_id = d.id
        ) ed_diff ON e.id = ed_diff.exercise_id
        LEFT JOIN exercise_details ed2 ON e.id = ed2.exercise_id -- Alias for details related to force/mechanic
        LEFT JOIN forces f ON ed2.force_id = f.id
        LEFT JOIN mechanics me ON ed2.mechanic_id = me.id
        LEFT JOIN exercise_steps s ON e.id = s.exercise_id
        LEFT JOIN exercise_images i ON e.id = i.exercise_id
        WHERE (m.name ILIKE $1 OR m.name_en_us ILIKE $1)
      `;

      const queryParams = [`%${bodyPart}%`];

      if (category) {
        query += ` AND (c.name ILIKE $${queryParams.length + 1} OR c.name_en_us ILIKE $${queryParams.length + 1})`;
        queryParams.push(`%${category}%`);
      }

      if (difficulty) {
        query += ` AND ed_diff.difficulty_name ILIKE $${queryParams.length + 1}`;
        queryParams.push(`%${difficulty}%`);
      }

      if (search) {
        query += ` AND e.name ILIKE $${queryParams.length + 1}`;
        queryParams.push(`%${search}%`);
      }

      query += `
        GROUP BY e.id, e.name, e.description, e.name_en_us, e.name_alternative, e.slug, e.description_en_us, e.need_warmup, e.advanced_weight, e.featured_weight, e.weight, e.impact, e.use_youtube_links, e.featured, e.sponsered_link, e.status, e.created_at, e.updated_at, ed_diff.difficulty_name
        ORDER BY e.name
        LIMIT $${queryParams.length + 1} OFFSET $${queryParams.length + 2}
      `;

      queryParams.push(limit, offset);

      const result = await client.query(query, queryParams);
      const exercises = result.rows.map(transformExercise);

      const response = {
        data: exercises,
        pagination: {
          total,
          page: parseInt(page),
          limit: parseInt(limit),
          totalPages: Math.ceil(total / limit)
        }
      };

      // Cache the results
      cache.set(cacheKey, response);

      res.json(response);
    } finally {
      client.release();
    }
  } catch (error) {
    console.error('Error fetching exercises:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

module.exports = router; 