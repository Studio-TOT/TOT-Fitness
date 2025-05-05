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
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
});

async function setupRailwayDatabase(client) {
    try {
        console.log('Setting up Railway database...');

        // Start transaction
        await client.query('BEGIN');

        // Drop existing tables if they exist
        console.log('Dropping existing tables...');
        await client.query(`
            DROP TABLE IF EXISTS exercise_images CASCADE;
            DROP TABLE IF EXISTS exercise_steps CASCADE;
            DROP TABLE IF EXISTS exercise_details CASCADE;
            DROP TABLE IF EXISTS exercise_muscles CASCADE;
            DROP TABLE IF EXISTS exercise_categories CASCADE;
            DROP TABLE IF EXISTS exercises CASCADE;
            DROP TABLE IF EXISTS muscles CASCADE;
            DROP TABLE IF EXISTS categories CASCADE;
            DROP TABLE IF EXISTS difficulties CASCADE;
            DROP TABLE IF EXISTS forces CASCADE;
            DROP TABLE IF EXISTS mechanics CASCADE;
        `);

        // Create tables
        console.log('Creating tables...');
        await client.query(`
            CREATE TABLE exercises (
                id SERIAL PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
                name_en_us VARCHAR(255),
                name_alternative VARCHAR(255),
                slug VARCHAR(255),
                description TEXT,
                description_en_us TEXT,
                need_warmup BOOLEAN DEFAULT false,
                advanced_weight INTEGER,
                featured_weight INTEGER,
                weight INTEGER,
                impact INTEGER,
                use_youtube_links BOOLEAN DEFAULT false,
                featured BOOLEAN DEFAULT false,
                sponsered_link BOOLEAN DEFAULT false,
                status VARCHAR(50),
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
            );

            CREATE TABLE muscles (
                id SERIAL PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
                name_en_us VARCHAR(255),
                scientific_name VARCHAR(255),
                url_name VARCHAR(255),
                description TEXT,
                description_en_us TEXT,
                lft INTEGER,
                rght INTEGER,
                tree_id INTEGER,
                level INTEGER,
                parent INTEGER
            );

            CREATE TABLE exercise_muscles (
                exercise_id INTEGER REFERENCES exercises(id),
                muscle_id INTEGER REFERENCES muscles(id),
                is_primary BOOLEAN DEFAULT false,
                is_secondary BOOLEAN DEFAULT false,
                is_tertiary BOOLEAN DEFAULT false,
                PRIMARY KEY (exercise_id, muscle_id)
            );

            CREATE TABLE categories (
                id SERIAL PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
                name_en_us VARCHAR(255),
                include_in_api BOOLEAN DEFAULT true,
                include_in_workout_generator BOOLEAN DEFAULT true,
                display_order INTEGER,
                enable BOOLEAN DEFAULT true,
                featured BOOLEAN DEFAULT false,
                image VARCHAR(255),
                mobile_icon VARCHAR(255),
                description TEXT
            );

            CREATE TABLE exercise_categories (
                exercise_id INTEGER REFERENCES exercises(id),
                category_id INTEGER REFERENCES categories(id),
                is_primary BOOLEAN DEFAULT false,
                PRIMARY KEY (exercise_id, category_id)
            );

            CREATE TABLE difficulties (
                id SERIAL PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
                name_en_us VARCHAR(255)
            );

            CREATE TABLE forces (
                id SERIAL PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
                url_name VARCHAR(255),
                name_en_us VARCHAR(255),
                description TEXT,
                description_en_us TEXT
            );

            CREATE TABLE mechanics (
                id SERIAL PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
                url_name VARCHAR(255),
                name_en_us VARCHAR(255),
                description TEXT,
                description_en_us TEXT
            );

            CREATE TABLE exercise_details (
                exercise_id INTEGER REFERENCES exercises(id),
                difficulty_id INTEGER REFERENCES difficulties(id),
                force_id INTEGER REFERENCES forces(id),
                mechanic_id INTEGER REFERENCES mechanics(id),
                PRIMARY KEY (exercise_id)
            );

            CREATE TABLE exercise_steps (
                id SERIAL PRIMARY KEY,
                exercise_id INTEGER REFERENCES exercises(id),
                order_num INTEGER NOT NULL,
                text TEXT,
                text_en_us TEXT,
                UNIQUE (exercise_id, order_num)
            );

            CREATE TABLE exercise_images (
                id SERIAL PRIMARY KEY,
                exercise_id INTEGER REFERENCES exercises(id),
                gender VARCHAR(50),
                order_num INTEGER,
                og_image VARCHAR(255),
                original_video VARCHAR(255),
                unbranded_video VARCHAR(255),
                branded_video VARCHAR(255),
                UNIQUE (exercise_id, gender, order_num)
            );

            -- Add indexes for better performance
            CREATE INDEX idx_exercise_muscles_exercise_id ON exercise_muscles(exercise_id);
            CREATE INDEX idx_exercise_muscles_muscle_id ON exercise_muscles(muscle_id);
            CREATE INDEX idx_exercise_categories_exercise_id ON exercise_categories(exercise_id);
            CREATE INDEX idx_exercise_categories_category_id ON exercise_categories(category_id);
            CREATE INDEX idx_exercise_steps_exercise_id ON exercise_steps(exercise_id);
            CREATE INDEX idx_exercise_images_exercise_id ON exercise_images(exercise_id);
        `);

        // Commit transaction
        await client.query('COMMIT');
        console.log('Database setup completed successfully!');
        return true;
    } catch (error) {
        // Rollback transaction on error
        await client.query('ROLLBACK');
        console.error('Error setting up database:', error);
        throw error;
    }
}

async function copyData() {
    const localClient = await localPool.connect();
    const railwayClient = await railwayPool.connect();

    try {
        console.log('Starting data copy...');
        console.log('Local database connected');
        console.log('Railway database connected');

        // Setup Railway database first
        await setupRailwayDatabase(railwayClient);

        // Start transactions
        await localClient.query('BEGIN');
        await railwayClient.query('BEGIN');

        // Get all data from local database
        console.log('Fetching data from local database...');
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

        console.log(`Found ${exercises.rows.length} exercises`);
        console.log(`Found ${muscles.rows.length} muscles`);
        console.log(`Found ${categories.rows.length} categories`);
        console.log(`Found ${exerciseMuscles.rows.length} exercise-muscle relationships`);
        console.log(`Found ${exerciseCategories.rows.length} exercise-category relationships`);
        console.log(`Found ${difficulties.rows.length} difficulties`);
        console.log(`Found ${forces.rows.length} forces`);
        console.log(`Found ${mechanics.rows.length} mechanics`);
        console.log(`Found ${exerciseDetails.rows.length} exercise details`);
        console.log(`Found ${exerciseSteps.rows.length} exercise steps`);
        console.log(`Found ${exerciseImages.rows.length} exercise images`);

        // Copy data to Railway
        console.log('Copying data to Railway...');

        // First, copy all the base tables
        console.log('Copying exercises...');
        for (const exercise of exercises.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying exercise:', exercise.id, error.message);
                throw error;
            }
        }

        console.log('Copying muscles...');
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

        console.log('Copying categories...');
        for (const category of categories.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying category:', category.id, error.message);
                throw error;
            }
        }

        console.log('Copying exercise-muscle relationships...');
        for (const em of exerciseMuscles.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying exercise-muscle relationship:', em.exercise_id, em.muscle_id, error.message);
                throw error;
            }
        }

        console.log('Copying exercise-category relationships...');
        for (const ec of exerciseCategories.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying exercise-category relationship:', ec.exercise_id, ec.category_id, error.message);
                throw error;
            }
        }

        console.log('Copying difficulties...');
        for (const difficulty of difficulties.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying difficulty:', difficulty.id, error.message);
                throw error;
            }
        }

        console.log('Copying forces...');
        for (const force of forces.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying force:', force.id, error.message);
                throw error;
            }
        }

        console.log('Copying mechanics...');
        for (const mechanic of mechanics.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying mechanic:', mechanic.id, error.message);
                throw error;
            }
        }

        console.log('Copying exercise details...');
        for (const detail of exerciseDetails.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying exercise detail:', detail.exercise_id, error.message);
                throw error;
            }
        }

        console.log('Copying exercise steps...');
        for (const step of exerciseSteps.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying exercise step:', step.id, error.message);
                throw error;
            }
        }

        console.log('Copying exercise images...');
        for (const image of exerciseImages.rows) {
            try {
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
            } catch (error) {
                console.error('Error copying exercise image:', image.id, error.message);
                throw error;
            }
        }

        // Commit transactions
        await localClient.query('COMMIT');
        await railwayClient.query('COMMIT');
        console.log('Data copy completed successfully!');

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
        console.log('Process completed successfully!');
        process.exit(0);
    })
    .catch((error) => {
        console.error('Process failed:', error);
        process.exit(1);
    }); 