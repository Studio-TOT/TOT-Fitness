const express = require('express');
const router = express.Router();
const { Pool } = require('pg');

// Use DATABASE_URL if available, otherwise use individual connection parameters
const pool = new Pool(
  process.env.DATABASE_URL
    ? {
      connectionString: process.env.DATABASE_URL,
      ssl: {
        rejectUnauthorized: false,
        sslmode: 'require'
      }
    }
    : {
      user: process.env.DB_USER,
      host: process.env.DB_HOST,
      database: process.env.DB_NAME,
      password: process.env.DB_PASSWORD,
      port: process.env.DB_PORT || 5432,
    }
);

// Get all exercises with their related data
router.get('/', async (req, res) => {
  try {
    console.log('Attempting to fetch exercises from database...');
    console.log('Using database connection:', process.env.DATABASE_URL ? 'DATABASE_URL' : 'Individual parameters');

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

    console.log(`Successfully fetched ${result.rows.length} exercises from database`);

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
    console.error('Error fetching exercises:', error);
    res.status(500).json({
      error: 'Internal server error',
      details: error.message,
      stack: process.env.NODE_ENV === 'development' ? error.stack : undefined
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

module.exports = router; 