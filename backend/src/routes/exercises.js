const express = require('express');
const router = express.Router();
const { Pool } = require('pg');

// Get the appropriate database URL based on environment
const getDatabaseUrl = () => {
  if (process.env.NODE_ENV === 'production') {
    return process.env.RAILWAY_DATABASE_URL;
  }
  return process.env.LOCAL_DATABASE_URL;
};

// Log the database URL (without the password)
console.log('Database URL:', getDatabaseUrl() ?
  getDatabaseUrl().replace(/:[^:@]+@/, ':****@') :
  'Not set');

// Use DATABASE_URL if available, otherwise use individual connection parameters
const pool = new Pool(
  getDatabaseUrl()
    ? {
      connectionString: getDatabaseUrl(),
      ssl: process.env.NODE_ENV === 'production' ? {
        rejectUnauthorized: false,
        sslmode: 'require'
      } : false
    }
    : {
      user: process.env.DB_USER,
      host: process.env.DB_HOST,
      database: process.env.DB_NAME,
      password: process.env.DB_PASSWORD,
      port: process.env.DB_PORT || 5432,
    }
);

// Test the database connection
pool.connect()
  .then(() => console.log('Successfully connected to the database'))
  .catch(err => console.error('Error connecting to the database:', err));

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
    difficulty: exercise.difficulty?.[0]?.name,
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
    console.log('Attempting to fetch exercises from database...');
    console.log('Using database connection:', getDatabaseUrl() ? 'DATABASE_URL' : 'Individual parameters');

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
        )) as muscles,
        json_agg(DISTINCT jsonb_build_object(
          'id', c.id,
          'name', c.name,
          'name_en_us', c.name_en_us,
          'is_primary', ec.is_primary
        )) as categories,
        json_agg(DISTINCT jsonb_build_object(
          'id', d.id,
          'name', d.name,
          'name_en_us', d.name_en_us
        )) as difficulty,
        json_agg(DISTINCT jsonb_build_object(
          'id', f.id,
          'name', f.name,
          'name_en_us', f.name_en_us
        )) as force,
        json_agg(DISTINCT jsonb_build_object(
          'id', me.id,
          'name', me.name,
          'name_en_us', me.name_en_us
        )) as mechanic,
        json_agg(DISTINCT jsonb_build_object(
          'id', s.id,
          'order', s.order_num,
          'text', s.text,
          'text_en_us', s.text_en_us
        )) as steps,
        json_agg(DISTINCT jsonb_build_object(
          'id', i.id,
          'gender', i.gender,
          'order', i.order_num,
          'og_image', i.og_image,
          'original_video', i.original_video,
          'unbranded_video', i.unbranded_video,
          'branded_video', i.branded_video
        )) as images
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
      GROUP BY e.id
    `);

    console.log(`Successfully fetched ${result.rows.length} exercises`);

    // Transform the data to match the frontend's expected format
    const transformedExercises = result.rows.map(transformExercise);

    res.json(transformedExercises);
  } catch (error) {
    console.error('Error fetching exercises:', error);
    res.status(500).json({
      error: 'Internal server error',
      details: error.message
    });
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
        )) as muscles,
        json_agg(DISTINCT jsonb_build_object(
          'id', c.id,
          'name', c.name,
          'name_en_us', c.name_en_us,
          'is_primary', ec.is_primary
        )) as categories,
        json_agg(DISTINCT jsonb_build_object(
          'id', d.id,
          'name', d.name,
          'name_en_us', d.name_en_us
        )) as difficulty,
        json_agg(DISTINCT jsonb_build_object(
          'id', f.id,
          'name', f.name,
          'name_en_us', f.name_en_us
        )) as force,
        json_agg(DISTINCT jsonb_build_object(
          'id', me.id,
          'name', me.name,
          'name_en_us', me.name_en_us
        )) as mechanic,
        json_agg(DISTINCT jsonb_build_object(
          'id', s.id,
          'order', s.order_num,
          'text', s.text,
          'text_en_us', s.text_en_us
        )) as steps,
        json_agg(DISTINCT jsonb_build_object(
          'id', i.id,
          'gender', i.gender,
          'order', i.order_num,
          'og_image', i.og_image,
          'original_video', i.original_video,
          'unbranded_video', i.unbranded_video,
          'branded_video', i.branded_video
        )) as images
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
    `, [`%${muscleName}%`]);

    // Transform the data to match the frontend's expected format
    const exercises = result.rows.map(exercise => ({
      id: exercise.id,
      exercise_name: exercise.name,
      target: {
        Primary: exercise.muscles
          .filter(m => m.is_primary)
          .map(m => m.name),
        Secondary: exercise.muscles
          .filter(m => m.is_secondary)
          .map(m => m.name),
        Tertiary: exercise.muscles
          .filter(m => m.is_tertiary)
          .map(m => m.name)
      },
      category: exercise.categories
        .filter(c => c.is_primary)
        .map(c => c.name)[0],
      equipment: exercise.categories
        .filter(c => !c.is_primary)
        .map(c => c.name),
      difficulty: exercise.difficulty?.[0]?.name,
      force: exercise.force?.[0]?.name,
      mechanic: exercise.mechanic?.[0]?.name,
      steps: exercise.steps
        .sort((a, b) => a.order - b.order)
        .map(s => s.text),
      images: {
        male: exercise.images
          .filter(i => i.gender === 'male')
          .sort((a, b) => a.order - b.order),
        female: exercise.images
          .filter(i => i.gender === 'female')
          .sort((a, b) => a.order - b.order)
      }
    }));

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
    const { category } = req.query;

    console.log(`Fetching exercises for body part: ${bodyPart}${category ? ` and category: ${category}` : ''}`);

    let query = `
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
      WHERE (m.name ILIKE $1 OR m.name_en_us ILIKE $1)
    `;

    const queryParams = [`%${bodyPart}%`];

    if (category) {
      query += ` AND (c.name ILIKE $2 OR c.name_en_us ILIKE $2)`;
      queryParams.push(`%${category}%`);
    }

    query += ` GROUP BY e.id`;

    console.log('Executing query with params:', queryParams);
    const result = await pool.query(query, queryParams);
    console.log(`Found ${result.rows.length} exercises`);

    if (result.rows.length === 0) {
      return res.status(404).json({
        error: 'No exercises found',
        details: `No exercises found for body part: ${bodyPart}${category ? ` and category: ${category}` : ''}`
      });
    }

    // Transform the data to match the frontend's expected format
    const exercises = result.rows.map(transformExercise);
    res.json(exercises);
  } catch (error) {
    console.error('Error fetching exercises by body part:', error);
    res.status(500).json({
      error: 'Internal server error',
      details: error.message,
      stack: process.env.NODE_ENV === 'development' ? error.stack : undefined
    });
  }
});

module.exports = router; 