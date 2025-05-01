const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '.env') });

const { Pool } = require('pg');

// Local database connection
const localPool = new Pool({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: 'exercises_db',
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
});

// Railway database connection
const railwayPool = new Pool({
    connectionString: process.env.RAILWAY_DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
});

async function copyData() {
    const localClient = await localPool.connect();
    const railwayClient = await railwayPool.connect();

    try {
        // Start transactions
        await localClient.query('BEGIN');
        await railwayClient.query('BEGIN');

        // Get all data from local database
        const exercises = await localClient.query('SELECT * FROM exercises');
        const muscles = await localClient.query('SELECT * FROM muscles');
        const categories = await localClient.query('SELECT * FROM categories');
        const exerciseMuscles = await localClient.query('SELECT * FROM exercise_muscles');
        const exerciseCategories = await localClient.query('SELECT * FROM exercise_categories');
        const difficulties = await localClient.query('SELECT * FROM difficulties');
        const forces = await localClient.query('SELECT * FROM forces');
        const mechanics = await localClient.query('SELECT * FROM mechanics');
        const exerciseDetails = await localClient.query('SELECT * FROM exercise_details');
        const exerciseSteps = await localClient.query('SELECT * FROM exercise_steps');
        const exerciseImages = await localClient.query('SELECT * FROM exercise_images');

        // Copy data to Railway
        for (const exercise of exercises.rows) {
            await railwayClient.query(
                `INSERT INTO exercises (
                    id, name, name_en_us, name_alternative, slug, description, description_en_us,
                    need_warmup, advanced_weight, featured_weight, weight, impact,
                    use_youtube_links, featured, sponsered_link, status, created_at, updated_at
                ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18)
                ON CONFLICT (id) DO UPDATE SET
                    name = EXCLUDED.name,
                    name_en_us = EXCLUDED.name_en_us,
                    name_alternative = EXCLUDED.name_alternative,
                    slug = EXCLUDED.slug,
                    description = EXCLUDED.description,
                    description_en_us = EXCLUDED.description_en_us,
                    need_warmup = EXCLUDED.need_warmup,
                    advanced_weight = EXCLUDED.advanced_weight,
                    featured_weight = EXCLUDED.featured_weight,
                    weight = EXCLUDED.weight,
                    impact = EXCLUDED.impact,
                    use_youtube_links = EXCLUDED.use_youtube_links,
                    featured = EXCLUDED.featured,
                    sponsered_link = EXCLUDED.sponsered_link,
                    status = EXCLUDED.status,
                    updated_at = CURRENT_TIMESTAMP`,
                [
                    exercise.id,
                    exercise.name,
                    exercise.name_en_us,
                    exercise.name_alternative,
                    exercise.slug,
                    exercise.description,
                    exercise.description_en_us,
                    exercise.need_warmup,
                    exercise.advanced_weight,
                    exercise.featured_weight,
                    exercise.weight,
                    exercise.impact,
                    exercise.use_youtube_links,
                    exercise.featured,
                    exercise.sponsered_link,
                    exercise.status,
                    exercise.created_at,
                    exercise.updated_at
                ]
            );
        }

        for (const muscle of muscles.rows) {
            try {
            await railwayClient.query(
                `INSERT INTO muscles (
                    id, name, name_en_us, scientific_name, url_name,
                    description, description_en_us, lft, rght, tree_id, level, parent
                ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
                ON CONFLICT (id) DO NOTHING`,
                [
                    muscle.id,
                    muscle.name,
                    muscle.name_en_us,
                    muscle.scientific_name,
                    muscle.url_name,
                    muscle.description,
                    muscle.description_en_us,
                    muscle.lft,
                    muscle.rght,
                    muscle.tree_id,
                    muscle.level,
                        muscle.parent
                ]
            );
            } catch (error) {
                console.error('Error copying muscle:', muscle.id, error.message);
                throw error;
            }
        }

        for (const category of categories.rows) {
            await railwayClient.query(
                `INSERT INTO categories (
                    id, name, name_en_us, include_in_api, include_in_workout_generator,
                    display_order, enable, featured, image, mobile_icon, description
                ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)
                ON CONFLICT (id) DO NOTHING`,
                [
                    category.id,
                    category.name,
                    category.name_en_us,
                    category.include_in_api,
                    category.include_in_workout_generator,
                    category.display_order,
                    category.enable,
                    category.featured,
                    category.image,
                    category.mobile_icon,
                    category.description
                ]
            );
        }

        for (const em of exerciseMuscles.rows) {
            await railwayClient.query(
                `INSERT INTO exercise_muscles (exercise_id, muscle_id, is_primary, is_secondary, is_tertiary)
                VALUES ($1, $2, $3, $4, $5)
                ON CONFLICT (exercise_id, muscle_id) DO UPDATE SET
                    is_primary = EXCLUDED.is_primary,
                    is_secondary = EXCLUDED.is_secondary,
                    is_tertiary = EXCLUDED.is_tertiary`,
                [
                    em.exercise_id,
                    em.muscle_id,
                    em.is_primary,
                    em.is_secondary,
                    em.is_tertiary
                ]
            );
        }

        for (const ec of exerciseCategories.rows) {
            await railwayClient.query(
                `INSERT INTO exercise_categories (exercise_id, category_id, is_primary)
                VALUES ($1, $2, $3)
                ON CONFLICT (exercise_id, category_id) DO UPDATE SET
                    is_primary = EXCLUDED.is_primary`,
                [
                    ec.exercise_id,
                    ec.category_id,
                    ec.is_primary
                ]
            );
        }

        for (const difficulty of difficulties.rows) {
            await railwayClient.query(
                `INSERT INTO difficulties (id, name, name_en_us)
                VALUES ($1, $2, $3)
                ON CONFLICT (id) DO NOTHING`,
                [
                    difficulty.id,
                    difficulty.name,
                    difficulty.name_en_us
                ]
            );
        }

        for (const force of forces.rows) {
            await railwayClient.query(
                `INSERT INTO forces (id, name, url_name, name_en_us, description, description_en_us)
                VALUES ($1, $2, $3, $4, $5, $6)
                ON CONFLICT (id) DO NOTHING`,
                [
                    force.id,
                    force.name,
                    force.url_name,
                    force.name_en_us,
                    force.description,
                    force.description_en_us
                ]
            );
        }

        for (const mechanic of mechanics.rows) {
            await railwayClient.query(
                `INSERT INTO mechanics (id, name, url_name, name_en_us, description, description_en_us)
                VALUES ($1, $2, $3, $4, $5, $6)
                ON CONFLICT (id) DO NOTHING`,
                [
                    mechanic.id,
                    mechanic.name,
                    mechanic.url_name,
                    mechanic.name_en_us,
                    mechanic.description,
                    mechanic.description_en_us
                ]
            );
        }

        for (const detail of exerciseDetails.rows) {
            await railwayClient.query(
                `INSERT INTO exercise_details (exercise_id, difficulty_id, force_id, mechanic_id)
                VALUES ($1, $2, $3, $4)
                ON CONFLICT (exercise_id) DO UPDATE SET
                    difficulty_id = EXCLUDED.difficulty_id,
                    force_id = EXCLUDED.force_id,
                    mechanic_id = EXCLUDED.mechanic_id`,
                [
                    detail.exercise_id,
                    detail.difficulty_id,
                    detail.force_id,
                    detail.mechanic_id
                ]
            );
        }

        for (const step of exerciseSteps.rows) {
            await railwayClient.query(
                `INSERT INTO exercise_steps (id, exercise_id, order_num, text, text_en_us)
                VALUES ($1, $2, $3, $4, $5)
                ON CONFLICT (exercise_id, order_num) DO UPDATE SET
                    text = EXCLUDED.text,
                    text_en_us = EXCLUDED.text_en_us`,
                [
                    step.id,
                    step.exercise_id,
                    step.order_num,
                    step.text,
                    step.text_en_us
                ]
            );
        }

        for (const image of exerciseImages.rows) {
            await railwayClient.query(
                `INSERT INTO exercise_images (
                    id, exercise_id, gender, order_num, og_image, original_video,
                    unbranded_video, branded_video
                ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
                ON CONFLICT (exercise_id, gender, order_num) DO UPDATE SET
                    og_image = EXCLUDED.og_image,
                    original_video = EXCLUDED.original_video,
                    unbranded_video = EXCLUDED.unbranded_video,
                    branded_video = EXCLUDED.branded_video`,
                [
                    image.id,
                    image.exercise_id,
                    image.gender,
                    image.order_num,
                    image.og_image,
                    image.original_video,
                    image.unbranded_video,
                    image.branded_video
                ]
            );
        }

        // Commit transactions
        await localClient.query('COMMIT');
        await railwayClient.query('COMMIT');

    } catch (error) {
        // Rollback transactions on error
        await localClient.query('ROLLBACK');
        await railwayClient.query('ROLLBACK');
        console.error('Error copying data:', error);
        throw error;
    } finally {
        // Release clients
        localClient.release();
        railwayClient.release();
    }
}

// Run the copy function
copyData()
    .then(() => {
        process.exit(0);
    })
    .catch((error) => {
        console.error('Process failed:', error);
        process.exit(1);
    }); 