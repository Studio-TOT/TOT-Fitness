const { Pool } = require('pg');

const pool = new Pool({
    user: 'omci',
    host: 'localhost',
    database: 'exercises_db',
    password: '',
    port: 5432,
});

const predefinedPrograms = [
    {
        id: 1,
        name: 'Bodyweight Basics',
        description: 'A comprehensive bodyweight training program focusing on fundamental movements and progressive overload.',
        type: 'predefined',
        difficulty: 'beginner',
        duration_weeks: 12,
        is_public: true
    },
    {
        id: 2,
        name: 'Booty Pump',
        description: 'Target your glutes and lower body with this specialized program designed for maximum booty gains.',
        type: 'predefined',
        difficulty: 'intermediate',
        duration_weeks: 12,
        is_public: true
    },
    {
        id: 3,
        name: 'Full Body Strength',
        description: 'Build total body strength with this balanced program targeting all major muscle groups.',
        type: 'predefined',
        difficulty: 'intermediate',
        duration_weeks: 12,
        is_public: true
    },
    {
        id: 4,
        name: 'Muscle Building',
        description: 'Maximize muscle growth with this hypertrophy-focused program.',
        type: 'predefined',
        difficulty: 'advanced',
        duration_weeks: 12,
        is_public: true
    },
    {
        id: 5,
        name: 'Cardio Blast',
        description: 'Improve your cardiovascular fitness with this high-intensity cardio program.',
        type: 'predefined',
        difficulty: 'intermediate',
        duration_weeks: 12,
        is_public: true
    }
];

async function insertPredefinedPrograms() {
    const client = await pool.connect();
    try {
        await client.query('BEGIN');

        // Insert programs
        for (const program of predefinedPrograms) {
            await client.query(
                `INSERT INTO programs (id, name, description, type, difficulty, duration_weeks, is_public)
                VALUES ($1, $2, $3, $4, $5, $6, $7)
                ON CONFLICT (id) DO UPDATE
                SET name = EXCLUDED.name,
                    description = EXCLUDED.description,
                    type = EXCLUDED.type,
                    difficulty = EXCLUDED.difficulty,
                    duration_weeks = EXCLUDED.duration_weeks,
                    is_public = EXCLUDED.is_public`,
                [
                    program.id,
                    program.name,
                    program.description,
                    program.type,
                    program.difficulty,
                    program.duration_weeks,
                    program.is_public
                ]
            );

            // Insert weeks
            for (let weekNumber = 1; weekNumber <= program.duration_weeks; weekNumber++) {
                const weekResult = await client.query(
                    `INSERT INTO program_weeks (program_id, week_number, description)
                    VALUES ($1, $2, $3)
                    ON CONFLICT (program_id, week_number) DO UPDATE
                    SET description = EXCLUDED.description
                    RETURNING id`,
                    [program.id, weekNumber, `Week ${weekNumber} of ${program.name}`]
                );

                const weekId = weekResult.rows[0].id;

                // Insert days for each week
                for (let dayNumber = 1; dayNumber <= 3; dayNumber++) {
                    const dayResult = await client.query(
                        `INSERT INTO program_days (program_week_id, day_number, description)
                        VALUES ($1, $2, $3)
                        ON CONFLICT (program_week_id, day_number) DO UPDATE
                        SET description = EXCLUDED.description
                        RETURNING id`,
                        [weekId, dayNumber, `Day ${dayNumber} of Week ${weekNumber}`]
                    );

                    const dayId = dayResult.rows[0].id;

                    // Get exercises based on program type
                    let exercises;
                    switch (program.id) {
                        case 1: // Bodyweight Basics
                            exercises = await client.query(
                                `SELECT e.id FROM exercises e
                                JOIN exercise_categories ec ON e.id = ec.exercise_id
                                JOIN categories c ON ec.category_id = c.id
                                WHERE c.name = 'Bodyweight'
                                ORDER BY RANDOM()
                                LIMIT 5`
                            );
                            break;
                        case 2: // Booty Pump
                            exercises = await client.query(
                                `SELECT e.id FROM exercises e
                                JOIN exercise_muscles em ON e.id = em.exercise_id
                                JOIN muscles m ON em.muscle_id = m.id
                                WHERE m.name = 'Glutes'
                                ORDER BY RANDOM()
                                LIMIT 5`
                            );
                            break;
                        case 3: // Full Body Strength
                            exercises = await client.query(
                                `SELECT e.id FROM exercises e
                                JOIN exercise_categories ec ON e.id = ec.exercise_id
                                JOIN categories c ON ec.category_id = c.id
                                WHERE c.name IN ('Strength', 'Compound')
                                ORDER BY RANDOM()
                                LIMIT 5`
                            );
                            break;
                        case 4: // Muscle Building
                            exercises = await client.query(
                                `SELECT e.id FROM exercises e
                                JOIN exercise_categories ec ON e.id = ec.exercise_id
                                JOIN categories c ON ec.category_id = c.id
                                WHERE c.name IN ('Strength', 'Hypertrophy')
                                ORDER BY RANDOM()
                                LIMIT 5`
                            );
                            break;
                        case 5: // Cardio Blast
                            exercises = await client.query(
                                `SELECT e.id FROM exercises e
                                JOIN exercise_categories ec ON e.id = ec.exercise_id
                                JOIN categories c ON ec.category_id = c.id
                                WHERE c.name = 'Cardio'
                                ORDER BY RANDOM()
                                LIMIT 5`
                            );
                            break;
                    }

                    // Insert exercises for each day
                    for (let i = 0; i < exercises.rows.length; i++) {
                        const exercise = exercises.rows[i];
                        await client.query(
                            `INSERT INTO program_exercises 
                            (program_day_id, exercise_id, sets, reps, rest_time, order_index, notes)
                            VALUES ($1, $2, $3, $4, $5, $6, $7)
                            ON CONFLICT (program_day_id, exercise_id) DO UPDATE
                            SET sets = EXCLUDED.sets,
                                reps = EXCLUDED.reps,
                                rest_time = EXCLUDED.rest_time,
                                order_index = EXCLUDED.order_index,
                                notes = EXCLUDED.notes`,
                            [
                                dayId,
                                exercise.id,
                                3, // sets
                                12, // reps
                                60, // rest_time in seconds
                                i, // order_index
                                '' // notes
                            ]
                        );
                    }
                }
            }
        }

        await client.query('COMMIT');
        console.log('Successfully inserted predefined programs with structure');
    } catch (error) {
        await client.query('ROLLBACK');
        console.error('Error inserting predefined programs:', error);
        throw error;
    } finally {
        client.release();
    }
}

// Run the script
insertPredefinedPrograms()
    .then(() => {
        console.log('Script completed successfully');
        process.exit(0);
    })
    .catch((error) => {
        console.error('Script failed:', error);
        process.exit(1);
    }); 