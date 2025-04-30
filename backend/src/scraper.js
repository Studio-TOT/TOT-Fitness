const axios = require('axios');
const { Pool } = require('pg');

const BASE_URL = 'https://musclewiki.com/newapi/exercise/exercises/';

// Database configuration
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
            user: process.env.DB_USER || "omci",
            host: process.env.DB_HOST || "localhost",
            database: process.env.DB_NAME || "exercises_db",
            password: process.env.DB_PASSWORD || "",
            port: process.env.DB_PORT || 5432,
        }
);

// Function to introduce delay between requests
function delay(ms) {
    return new Promise((resolve) => {
        setTimeout(resolve, ms);
    });
}

async function fetchExerciseData(url) {
    try {
        console.log(`Fetching URL: ${url}`);
        const response = await axios.get(url, {
            headers: {
                accept: '*/*',
                'accept-language': 'en-us',
                'cache-control': 'no-cache',
                pragma: 'no-cache',
                'sec-ch-ua': '"Not A(Brand";v="8", "Chromium";v="132", "Google Chrome";v="132"',
                'sec-ch-ua-mobile': '?0',
                'sec-ch-ua-platform': '"macOS"',
                'sec-fetch-dest': 'empty',
                'sec-fetch-mode': 'cors',
                'sec-fetch-site': 'same-origin',
            },
        });
        console.log(`Successfully fetched URL: ${url}`);
        return response.data;
    } catch (error) {
        console.error(`Error fetching URL ${url}:`, error.message);
        return null;
    }
}

async function saveExerciseToDatabase(exercise) {
    const client = await pool.connect();
    try {
        await client.query('BEGIN');

        // Insert main exercise data
        await client.query(
            `INSERT INTO exercises (
                id, name, name_en_us, name_alternative, slug, description, description_en_us,
                need_warmup, advanced_weight, featured_weight, weight, impact,
                use_youtube_links, featured, sponsered_link, status
            ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16)
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
                status = EXCLUDED.status`,
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
            ]
        );

        // Import muscles
        if (exercise.muscles) {
            for (const muscle of exercise.muscles) {
                // Insert muscle if it doesn't exist
                await client.query(
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
                        muscle.parent,
                    ]
                );

                // Link muscle to exercise
                await client.query(
                    `INSERT INTO exercise_muscles (exercise_id, muscle_id, is_primary, is_secondary, is_tertiary)
                    VALUES ($1, $2, $3, $4, $5)
                    ON CONFLICT (exercise_id, muscle_id) DO UPDATE SET
                        is_primary = EXCLUDED.is_primary,
                        is_secondary = EXCLUDED.is_secondary,
                        is_tertiary = EXCLUDED.is_tertiary`,
                    [
                        exercise.id,
                        muscle.id,
                        exercise.muscles_primary?.some((m) => m.id === muscle.id) || false,
                        exercise.muscles_secondary?.some((m) => m.id === muscle.id) || false,
                        exercise.muscles_tertiary?.some((m) => m.id === muscle.id) || false,
                    ]
                );
            }
        }

        // Import categories
        if (exercise.category) {
            // Insert category if it doesn't exist
            await client.query(
                `INSERT INTO categories (
                    id, name, name_en_us, include_in_api, include_in_workout_generator,
                    display_order, enable, featured, image, mobile_icon, description
                ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)
                ON CONFLICT (id) DO NOTHING`,
                [
                    exercise.category.id,
                    exercise.category.name,
                    exercise.category.name_en_us,
                    exercise.category.include_in_api,
                    exercise.category.include_in_workout_generator,
                    exercise.category.display_order,
                    exercise.category.enable,
                    exercise.category.featured,
                    exercise.category.image,
                    exercise.category.mobile_icon,
                    exercise.category.description,
                ]
            );

            // Link category to exercise
            await client.query(
                `INSERT INTO exercise_categories (exercise_id, category_id, is_primary)
                VALUES ($1, $2, true)
                ON CONFLICT (exercise_id, category_id) DO UPDATE SET
                    is_primary = EXCLUDED.is_primary`,
                [exercise.id, exercise.category.id]
            );
        }

        // Import additional categories
        if (exercise.additional_categories) {
            for (const category of exercise.additional_categories) {
                await client.query(
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
                        category.description,
                    ]
                );

                await client.query(
                    `INSERT INTO exercise_categories (exercise_id, category_id, is_primary)
                    VALUES ($1, $2, false)
                    ON CONFLICT (exercise_id, category_id) DO UPDATE SET
                        is_primary = EXCLUDED.is_primary`,
                    [exercise.id, category.id]
                );
            }
        }

        // Import difficulty
        if (exercise.difficulty) {
            await client.query(
                `INSERT INTO difficulties (id, name, name_en_us)
                VALUES ($1, $2, $3)
                ON CONFLICT (id) DO NOTHING`,
                [
                    exercise.difficulty.id,
                    exercise.difficulty.name,
                    exercise.difficulty.name_en_us,
                ]
            );
        }

        // Import force
        if (exercise.force) {
            await client.query(
                `INSERT INTO forces (id, name, url_name, name_en_us, description, description_en_us)
                VALUES ($1, $2, $3, $4, $5, $6)
                ON CONFLICT (id) DO NOTHING`,
                [
                    exercise.force.id,
                    exercise.force.name,
                    exercise.force.url_name,
                    exercise.force.name_en_us,
                    exercise.force.description,
                    exercise.force.description_en_us,
                ]
            );
        }

        // Import mechanic
        if (exercise.mechanic) {
            await client.query(
                `INSERT INTO mechanics (id, name, url_name, name_en_us, description, description_en_us)
                VALUES ($1, $2, $3, $4, $5, $6)
                ON CONFLICT (id) DO NOTHING`,
                [
                    exercise.mechanic.id,
                    exercise.mechanic.name,
                    exercise.mechanic.url_name,
                    exercise.mechanic.name_en_us,
                    exercise.mechanic.description,
                    exercise.mechanic.description_en_us,
                ]
            );
        }

        // Import steps
        if (exercise.correct_steps) {
            for (const step of exercise.correct_steps) {
                await client.query(
                    `INSERT INTO exercise_steps (exercise_id, order_num, text, text_en_us)
                    VALUES ($1, $2, $3, $4)
                    ON CONFLICT (exercise_id, order_num) DO UPDATE SET
                        text = EXCLUDED.text,
                        text_en_us = EXCLUDED.text_en_us`,
                    [
                        exercise.id,
                        step.order,
                        step.text,
                        step.text_en_us,
                    ]
                );
            }
        }

        // Import images
        if (exercise.images || exercise.male_images || exercise.female_images) {
            // Handle male images/videos
            const maleImages = exercise.male_images || exercise.images?.male || [];
            for (const image of maleImages) {
                await client.query(
                    `INSERT INTO exercise_images (
                        id, exercise_id, gender, order_num, og_image,
                        original_video, unbranded_video, branded_video
                    ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
                    ON CONFLICT (exercise_id, gender, order_num) DO UPDATE SET
                        og_image = EXCLUDED.og_image,
                        original_video = EXCLUDED.original_video,
                        unbranded_video = EXCLUDED.unbranded_video,
                        branded_video = EXCLUDED.branded_video`,
                    [
                        image.id,
                        exercise.id,
                        "male",
                        image.order,
                        image.og_image,
                        image.original_video,
                        image.unbranded_video,
                        image.branded_video,
                    ]
                );
            }

            // Handle female images/videos
            const femaleImages = exercise.female_images || exercise.images?.female || [];
            for (const image of femaleImages) {
                await client.query(
                    `INSERT INTO exercise_images (
                        id, exercise_id, gender, order_num, og_image,
                        original_video, unbranded_video, branded_video
                    ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
                    ON CONFLICT (exercise_id, gender, order_num) DO UPDATE SET
                        og_image = EXCLUDED.og_image,
                        original_video = EXCLUDED.original_video,
                        unbranded_video = EXCLUDED.unbranded_video,
                        branded_video = EXCLUDED.branded_video`,
                    [
                        image.id,
                        exercise.id,
                        "female",
                        image.order,
                        image.og_image,
                        image.original_video,
                        image.unbranded_video,
                        image.branded_video,
                    ]
                );
            }
        }

        await client.query('COMMIT');
        console.log(`Successfully saved exercise: ${exercise.name}`);
    } catch (error) {
        await client.query('ROLLBACK');
        console.error(`Error saving exercise ${exercise.name}:`, error);
        throw error;
    } finally {
        client.release();
    }
}

async function getAllExercises() {
    const allExercises = [];
    let nextPage = BASE_URL;
    let pageCount = 1;

    while (nextPage) {
        console.log(`Fetching page ${pageCount}...`);
        const data = await fetchExerciseData(nextPage);

        if (!data || !data.results || data.results.length === 0) {
            break;
        }

        // Add exercises from this page
        allExercises.push(...data.results);
        console.log(`Found ${data.results.length} exercises on page ${pageCount}`);

        // Check if there's a next page
        nextPage = data.next;
        pageCount++;

        // Add a small delay between page requests
        if (nextPage) {
            await delay(1000);
        }
    }

    console.log(`Total exercises found across all pages: ${allExercises.length}`);
    return allExercises;
}

async function scrapeExercises() {
    try {
        console.log('Starting scraping process...');

        // Get all exercises from all pages
        const exercises = await getAllExercises();
        if (exercises.length === 0) {
            console.error('No exercises found');
            return [];
        }

        // Save exercises directly to database
        for (const exercise of exercises) {
            await saveExerciseToDatabase(exercise);
        }

        console.log(`Successfully scraped and imported ${exercises.length} exercises`);
        return exercises;
    } catch (error) {
        console.error('Error in scrapeExercises:', error);
        return [];
    }
}

// If this file is run directly (not imported as a module)
if (require.main === module) {
    scrapeExercises()
        .then(() => {
            console.log('Scraping and importing completed successfully');
            process.exit(0);
        })
        .catch((error) => {
            console.error('Scraping and importing failed:', error);
            process.exit(1);
        });
}

module.exports = {
    scrapeExercises
};