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
            DROP TABLE IF EXISTS user_exercise_completion CASCADE;
            DROP TABLE IF EXISTS program_likes CASCADE;
            DROP TABLE IF EXISTS user_program_progress CASCADE;
            DROP TABLE IF EXISTS program_exercises CASCADE;
            DROP TABLE IF EXISTS program_days CASCADE;
            DROP TABLE IF EXISTS program_weeks CASCADE;
            DROP TABLE IF EXISTS programs CASCADE;
            DROP TABLE IF EXISTS saved_programs CASCADE;
            DROP TABLE IF EXISTS subscriptions CASCADE;
            DROP TABLE IF EXISTS users CASCADE;
        `);

        // Create new tables
        console.log('Creating new tables...');
        await client.query(`
            -- Users table
            CREATE TABLE IF NOT EXISTS users (
                id SERIAL PRIMARY KEY,
                email VARCHAR(255) UNIQUE NOT NULL,
                stripe_customer_id VARCHAR(255) UNIQUE,
                is_premium BOOLEAN DEFAULT FALSE,
                created_at TIMESTAMP DEFAULT NOW()
            );

            -- Subscriptions table
            CREATE TABLE IF NOT EXISTS subscriptions (
                id SERIAL PRIMARY KEY,
                user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
                stripe_subscription_id VARCHAR(255) UNIQUE NOT NULL,
                status VARCHAR(50) NOT NULL,
                current_period_end TIMESTAMP,
                created_at TIMESTAMP DEFAULT NOW()
            );

            -- Saved programs table
            CREATE TABLE IF NOT EXISTS saved_programs (
                id SERIAL PRIMARY KEY,
                user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
                program_id VARCHAR(50) NOT NULL,
                program_data JSONB NOT NULL,
                program_info JSONB NOT NULL,
                created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                UNIQUE(user_id, program_id)
            );

            -- Programs table
            CREATE TABLE IF NOT EXISTS programs (
                id SERIAL PRIMARY KEY,
                name VARCHAR(255) NOT NULL,
                description TEXT,
                type VARCHAR(50) NOT NULL,
                created_by INTEGER REFERENCES users(id) ON DELETE SET NULL,
                is_public BOOLEAN DEFAULT false,
                difficulty VARCHAR(50),
                duration_weeks INTEGER,
                image_url VARCHAR(255),
                created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
            );

            -- Program weeks
            CREATE TABLE IF NOT EXISTS program_weeks (
                id SERIAL PRIMARY KEY,
                program_id INTEGER REFERENCES programs(id) ON DELETE CASCADE,
                week_number INTEGER NOT NULL,
                description TEXT,
                created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                UNIQUE(program_id, week_number)
            );

            -- Program days
            CREATE TABLE IF NOT EXISTS program_days (
                id SERIAL PRIMARY KEY,
                program_week_id INTEGER REFERENCES program_weeks(id) ON DELETE CASCADE,
                day_number INTEGER NOT NULL,
                description TEXT,
                created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                UNIQUE(program_week_id, day_number)
            );

            -- Program exercises
            CREATE TABLE IF NOT EXISTS program_exercises (
                id SERIAL PRIMARY KEY,
                program_day_id INTEGER REFERENCES program_days(id) ON DELETE CASCADE,
                exercise_id INTEGER REFERENCES exercises(id) ON DELETE CASCADE,
                sets INTEGER,
                reps INTEGER,
                rest_time INTEGER,
                order_index INTEGER NOT NULL,
                notes TEXT,
                created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
            );

            -- User program progress
            CREATE TABLE IF NOT EXISTS user_program_progress (
                id SERIAL PRIMARY KEY,
                user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
                program_id INTEGER REFERENCES programs(id) ON DELETE CASCADE,
                current_week INTEGER DEFAULT 1,
                current_day INTEGER DEFAULT 1,
                started_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                completed_at TIMESTAMP WITH TIME ZONE,
                status VARCHAR(50) DEFAULT 'in_progress',
                UNIQUE(user_id, program_id)
            );

            -- User exercise completion tracking
            CREATE TABLE IF NOT EXISTS user_exercise_completion (
                id SERIAL PRIMARY KEY,
                user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
                program_exercise_id INTEGER REFERENCES program_exercises(id) ON DELETE CASCADE,
                completed_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                completed_date DATE DEFAULT CURRENT_DATE,
                notes TEXT,
                rating INTEGER CHECK (rating >= 1 AND rating <= 5),
                UNIQUE(user_id, program_exercise_id, completed_date)
            );

            -- Program likes/favorites
            CREATE TABLE IF NOT EXISTS program_likes (
                id SERIAL PRIMARY KEY,
                user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
                program_id INTEGER REFERENCES programs(id) ON DELETE CASCADE,
                created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                UNIQUE(user_id, program_id)
            );

            -- Add indexes for better performance
            CREATE INDEX IF NOT EXISTS idx_user_program_progress_user_id ON user_program_progress(user_id);
            CREATE INDEX IF NOT EXISTS idx_user_program_progress_program_id ON user_program_progress(program_id);
            CREATE INDEX IF NOT EXISTS idx_user_exercise_completion_user_id ON user_exercise_completion(user_id);
            CREATE INDEX IF NOT EXISTS idx_program_likes_user_id ON program_likes(user_id);
            CREATE INDEX IF NOT EXISTS idx_program_likes_program_id ON program_likes(program_id);
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
        const users = await localClient.query('SELECT * FROM users');
        const subscriptions = await localClient.query('SELECT * FROM subscriptions');
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
        const programs = await localClient.query('SELECT * FROM programs');
        const programWeeks = await localClient.query('SELECT * FROM program_weeks');
        const programDays = await localClient.query('SELECT * FROM program_days');
        const programExercises = await localClient.query('SELECT * FROM program_exercises');
        const userProgramProgress = await localClient.query('SELECT * FROM user_program_progress');
        const userExerciseCompletion = await localClient.query('SELECT * FROM user_exercise_completion');
        const programLikes = await localClient.query('SELECT * FROM program_likes');

        // Log the number of records found
        console.log(`Found ${users.rows.length} users`);
        console.log(`Found ${subscriptions.rows.length} subscriptions`);
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
        console.log(`Found ${programs.rows.length} programs`);
        console.log(`Found ${programWeeks.rows.length} program weeks`);
        console.log(`Found ${programDays.rows.length} program days`);
        console.log(`Found ${programExercises.rows.length} program exercises`);
        console.log(`Found ${userProgramProgress.rows.length} user program progress records`);
        console.log(`Found ${userExerciseCompletion.rows.length} user exercise completion records`);
        console.log(`Found ${programLikes.rows.length} program likes`);

        // Copy users first
        console.log('Copying users...');
        for (const user of users.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO users (id, email, stripe_customer_id, is_premium, created_at)
                    VALUES ($1, $2, $3, $4, $5)
                    ON CONFLICT (id) DO UPDATE SET
                        email = EXCLUDED.email,
                        stripe_customer_id = EXCLUDED.stripe_customer_id,
                        is_premium = EXCLUDED.is_premium,
                        created_at = EXCLUDED.created_at`,
                    [
                        user.id,
                        user.email,
                        user.stripe_customer_id,
                        user.is_premium,
                        user.created_at
                    ]
                );
            } catch (error) {
                console.error('Error copying user:', user.id, error.message);
                throw error;
            }
        }

        // Copy subscriptions
        console.log('Copying subscriptions...');
        for (const sub of subscriptions.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO subscriptions (id, user_id, stripe_subscription_id, status, current_period_end, created_at)
                    VALUES ($1, $2, $3, $4, $5, $6)
                    ON CONFLICT (id) DO UPDATE SET
                        user_id = EXCLUDED.user_id,
                        stripe_subscription_id = EXCLUDED.stripe_subscription_id,
                        status = EXCLUDED.status,
                        current_period_end = EXCLUDED.current_period_end,
                        created_at = EXCLUDED.created_at`,
                    [
                        sub.id,
                        sub.user_id,
                        sub.stripe_subscription_id,
                        sub.status,
                        sub.current_period_end,
                        sub.created_at
                    ]
                );
            } catch (error) {
                console.error('Error copying subscription:', sub.id, error.message);
                throw error;
            }
        }

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

        // Copy program-related data
        console.log('Copying programs...');
        for (const program of programs.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO programs (
                        id, name, description, type, created_by, is_public,
                        difficulty, duration_weeks, image_url, created_at, updated_at
                    ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)
                    ON CONFLICT (id) DO UPDATE SET
                        name = EXCLUDED.name,
                        description = EXCLUDED.description,
                        type = EXCLUDED.type,
                        created_by = EXCLUDED.created_by,
                        is_public = EXCLUDED.is_public,
                        difficulty = EXCLUDED.difficulty,
                        duration_weeks = EXCLUDED.duration_weeks,
                        image_url = EXCLUDED.image_url,
                        updated_at = CURRENT_TIMESTAMP`,
                    [
                        program.id,
                        program.name,
                        program.description,
                        program.type,
                        program.created_by,
                        program.is_public,
                        program.difficulty,
                        program.duration_weeks,
                        program.image_url,
                        program.created_at,
                        program.updated_at
                    ]
                );
            } catch (error) {
                console.error('Error copying program:', program.id, error.message);
                throw error;
            }
        }

        console.log('Copying program weeks...');
        for (const week of programWeeks.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO program_weeks (id, program_id, week_number, description, created_at)
                    VALUES ($1, $2, $3, $4, $5)
                    ON CONFLICT (program_id, week_number) DO UPDATE SET
                        description = EXCLUDED.description`,
                    [
                        week.id,
                        week.program_id,
                        week.week_number,
                        week.description,
                        week.created_at
                    ]
                );
            } catch (error) {
                console.error('Error copying program week:', week.id, error.message);
                throw error;
            }
        }

        console.log('Copying program days...');
        for (const day of programDays.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO program_days (id, program_week_id, day_number, description, created_at)
                    VALUES ($1, $2, $3, $4, $5)
                    ON CONFLICT (program_week_id, day_number) DO UPDATE SET
                        description = EXCLUDED.description`,
                    [
                        day.id,
                        day.program_week_id,
                        day.day_number,
                        day.description,
                        day.created_at
                    ]
                );
            } catch (error) {
                console.error('Error copying program day:', day.id, error.message);
                throw error;
            }
        }

        console.log('Copying program exercises...');
        for (const exercise of programExercises.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO program_exercises (
                        id, program_day_id, exercise_id, sets, reps,
                        rest_time, order_index, notes, created_at
                    ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
                    ON CONFLICT (id) DO UPDATE SET
                        sets = EXCLUDED.sets,
                        reps = EXCLUDED.reps,
                        rest_time = EXCLUDED.rest_time,
                        order_index = EXCLUDED.order_index,
                        notes = EXCLUDED.notes`,
                    [
                        exercise.id,
                        exercise.program_day_id,
                        exercise.exercise_id,
                        exercise.sets,
                        exercise.reps,
                        exercise.rest_time,
                        exercise.order_index,
                        exercise.notes,
                        exercise.created_at
                    ]
                );
            } catch (error) {
                console.error('Error copying program exercise:', exercise.id, error.message);
                throw error;
            }
        }

        console.log('Copying user program progress...');
        for (const progress of userProgramProgress.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO user_program_progress (
                        id, user_id, program_id, current_week, current_day,
                        started_at, completed_at, status
                    ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
                    ON CONFLICT (user_id, program_id) DO UPDATE SET
                        current_week = EXCLUDED.current_week,
                        current_day = EXCLUDED.current_day,
                        completed_at = EXCLUDED.completed_at,
                        status = EXCLUDED.status`,
                    [
                        progress.id,
                        progress.user_id,
                        progress.program_id,
                        progress.current_week,
                        progress.current_day,
                        progress.started_at,
                        progress.completed_at,
                        progress.status
                    ]
                );
            } catch (error) {
                console.error('Error copying user program progress:', progress.id, error.message);
                throw error;
            }
        }

        console.log('Copying user exercise completion...');
        for (const completion of userExerciseCompletion.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO user_exercise_completion (
                        id, user_id, program_exercise_id, completed_at, completed_date, notes, rating
                    ) VALUES ($1, $2, $3, $4, $5, $6, $7)
                    ON CONFLICT (user_id, program_exercise_id, completed_date) DO UPDATE SET
                        notes = EXCLUDED.notes,
                        rating = EXCLUDED.rating`,
                    [
                        completion.id,
                        completion.user_id,
                        completion.program_exercise_id,
                        completion.completed_at,
                        completion.completed_date || (completion.completed_at ? completion.completed_at.toISOString().slice(0, 10) : null),
                        completion.notes,
                        completion.rating
                    ]
                );
            } catch (error) {
                console.error('Error copying user exercise completion:', completion.id, error.message);
                throw error;
            }
        }

        console.log('Copying program likes...');
        for (const like of programLikes.rows) {
            try {
                await railwayClient.query(
                    `INSERT INTO program_likes (id, user_id, program_id, created_at)
                    VALUES ($1, $2, $3, $4)
                    ON CONFLICT (user_id, program_id) DO NOTHING`,
                    [
                        like.id,
                        like.user_id,
                        like.program_id,
                        like.created_at
                    ]
                );
            } catch (error) {
                console.error('Error copying program like:', like.id, error.message);
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