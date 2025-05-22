const express = require("express");
const router = express.Router();
const pool = require("../db");
const { authenticateToken } = require('../middleware/auth');

// Helper function to create URL-friendly slug
const createSlug = (title) => {
    return title
        .toLowerCase()
        .replace(/[^a-z0-9]+/g, '-')
        .replace(/(^-|-$)/g, '');
};

// Program ID mapping
const PROGRAM_ID_MAP = {
    'bodyweight': 1,
    'bootypump': 2,
    'fullbody': 3,
    'musclebuilding': 4,
    'cardio': 5
};

// Helper function to get program by ID or slug
const getProgram = async (idOrSlug, userId) => {
    let id = null;
    try {
        id = parseInt(idOrSlug);
    } catch (e) {
        id = 0;
    }

    console.log('Searching for program with:', { idOrSlug, id, userId });

    // First try to find by slug in programs table
    const programResult = await pool.query(
        `SELECT p.*, 
        (SELECT COUNT(*) FROM program_likes WHERE program_id = p.id) as likes_count,
        (SELECT COUNT(*) FROM user_program_progress WHERE program_id = p.id) as active_users
        FROM programs p
        WHERE (p.slug = $1 OR p.id = $2) AND (p.is_public = true OR p.created_by = $3)`,
        [idOrSlug, id || 0, userId]
    );

    console.log('Program table result:', programResult.rows);

    if (programResult.rows.length > 0) {
        const program = programResult.rows[0];

        // Get weeks for this program
        const weeksResult = await pool.query(
            `SELECT pw.*, 
            (SELECT json_agg(
                json_build_object(
                    'id', pd.id,
                    'day_number', pd.day_number,
                    'description', pd.description,
                    'exercises', (
                        SELECT json_agg(
                            json_build_object(
                                'id', pe.id,
                                'exercise_id', pe.exercise_id,
                                'exercise_name', e.name,
                                'description', e.description,
                                'difficulty', d.name,
                                'sets', pe.sets,
                                'reps', pe.reps,
                                'rest_time', pe.rest_time,
                                'notes', pe.notes
                            )
                        )
                        FROM program_exercises pe
                        JOIN exercises e ON pe.exercise_id = e.id
                        LEFT JOIN exercise_details ed ON e.id = ed.exercise_id
                        LEFT JOIN difficulties d ON ed.difficulty_id = d.id
                        WHERE pe.program_day_id = pd.id
                        ORDER BY pe.order_index
                    )
                )
            )
            FROM program_days pd
            WHERE pd.program_week_id = pw.id
            ORDER BY pd.day_number) as days
            FROM program_weeks pw
            WHERE pw.program_id = $1
            ORDER BY pw.week_number`,
            [program.id]
        );

        program.weeks = weeksResult.rows;
        return { type: 'program', data: program };
    }

    // Then try to find in saved_programs
    const savedProgramResult = await pool.query(
        `SELECT sp.*, u.email as user_email 
         FROM saved_programs sp
         JOIN users u ON sp.user_id = u.id
         WHERE (sp.program_id = $1 OR sp.program_data->>'slug' = $2)`,
        [id || 0, idOrSlug]
    );

    console.log('Saved programs result:', savedProgramResult.rows);

    if (savedProgramResult.rows.length > 0) {
        return { type: 'saved_program', data: savedProgramResult.rows[0] };
    }

    // Finally, check if it's a predefined program ID
    if (PROGRAM_ID_MAP[idOrSlug]) {
        const predefinedId = PROGRAM_ID_MAP[idOrSlug];
        const predefinedResult = await pool.query(
            `SELECT p.*, 
            (SELECT COUNT(*) FROM program_likes WHERE program_id = p.id) as likes_count,
            (SELECT COUNT(*) FROM user_program_progress WHERE program_id = p.id) as active_users
            FROM programs p
            WHERE p.id = $1`,
            [predefinedId]
        );

        console.log('Predefined program result:', predefinedResult.rows);

        if (predefinedResult.rows.length > 0) {
            const program = predefinedResult.rows[0];

            // Get weeks for this program
            const weeksResult = await pool.query(
                `SELECT pw.*, 
                (SELECT json_agg(
                    json_build_object(
                        'id', pd.id,
                        'day_number', pd.day_number,
                        'description', pd.description,
                        'exercises', (
                            SELECT json_agg(
                                json_build_object(
                                    'id', pe.id,
                                    'exercise_id', pe.exercise_id,
                                    'exercise_name', e.name,
                                    'description', e.description,
                                    'difficulty', d.name,
                                    'sets', pe.sets,
                                    'reps', pe.reps,
                                    'rest_time', pe.rest_time,
                                    'notes', pe.notes
                                )
                            )
                            FROM program_exercises pe
                            JOIN exercises e ON pe.exercise_id = e.id
                            LEFT JOIN exercise_details ed ON e.id = ed.exercise_id
                            LEFT JOIN difficulties d ON ed.difficulty_id = d.id
                            WHERE pe.program_day_id = pd.id
                            ORDER BY pe.order_index
                        )
                    )
                )
                FROM program_days pd
                WHERE pd.program_week_id = pw.id
                ORDER BY pd.day_number) as days
                FROM program_weeks pw
                WHERE pw.program_id = $1
                ORDER BY pw.week_number`,
                [program.id]
            );

            program.weeks = weeksResult.rows;
            return { type: 'program', data: program };
        }
    }

    return null;
};

// Get all programs (both predefined and user's saved programs)
router.get('/', authenticateToken, async (req, res) => {
    try {
        const userId = req.user.id;

        // Get user's saved programs
        const savedProgramsQuery = `
            SELECT sp.*, u.email as user_email
            FROM saved_programs sp
            JOIN users u ON sp.user_id = u.id
            WHERE sp.user_id = $1
        `;
        const savedPrograms = await pool.query(savedProgramsQuery, [userId]);

        // Get predefined programs with progress
        const predefinedProgramsQuery = `
            SELECT p.*, 
            (SELECT COUNT(*) FROM program_exercises pe 
             JOIN program_days pd ON pe.program_day_id = pd.id
             JOIN program_weeks pw ON pd.program_week_id = pw.id
             WHERE pw.program_id = p.id) as total_exercises,
            (SELECT COUNT(*) FROM user_exercise_completion uec 
             JOIN program_exercises pe ON uec.program_exercise_id = pe.id
             JOIN program_days pd ON pe.program_day_id = pd.id
             JOIN program_weeks pw ON pd.program_week_id = pw.id
             WHERE pw.program_id = p.id AND uec.user_id = $1) as completed_exercises,
            COALESCE(upp.status, 'not_started') as status
            FROM programs p
            LEFT JOIN user_program_progress upp ON p.id = upp.program_id AND upp.user_id = $1
            WHERE p.type = 'predefined'
            ORDER BY p.id
        `;
        const predefinedPrograms = await pool.query(predefinedProgramsQuery, [userId]);

        const programs = predefinedPrograms.rows.map(program => ({
            ...program,
            progress: program.total_exercises > 0
                ? Math.round((program.completed_exercises / program.total_exercises) * 100)
                : 0
        }));

        res.json({
            savedPrograms: savedPrograms.rows,
            predefinedPrograms: programs
        });
    } catch (error) {
        console.error('Error fetching programs:', error);
        res.status(500).json({ error: 'Failed to fetch programs' });
    }
});

// Get a specific program with its structure
router.get("/:idOrSlug", authenticateToken, async (req, res) => {
    try {
        console.log('Fetching program:', req.params.idOrSlug, 'for user:', req.user.id);
        const program = await getProgram(req.params.idOrSlug, req.user.id);
        console.log('Program found:', program);

        if (!program) {
            console.log('Program not found');
            return res.status(404).json({ error: "Program not found" });
        }

        if (program.type === 'saved_program') {
            console.log('Returning saved program:', program.data);
            return res.json(program.data);
        }

        // Handle predefined program...
        // Rest of the code for predefined programs remains unchanged...
    } catch (err) {
        console.error('Error fetching program:', err);
        res.status(500).json({ error: "Server error" });
    }
});

// Create a new program
router.post("/", authenticateToken, async (req, res) => {
    const client = await pool.connect();
    try {
        // Validate required fields
        if (!req.body.name || !req.body.name.trim()) {
            return res.status(400).json({ error: "Program name is required" });
        }

        if (!req.body.weeks || !Array.isArray(req.body.weeks) || req.body.weeks.length === 0) {
            return res.status(400).json({ error: "Program must have at least one week" });
        }

        await client.query("BEGIN");

        const slug = createSlug(req.body.name.trim());

        // Check if slug already exists
        const existingProgram = await client.query(
            "SELECT id FROM programs WHERE slug = $1",
            [slug]
        );

        if (existingProgram.rows.length > 0) {
            return res.status(400).json({ error: "A program with this name already exists" });
        }

        // Get the next available ID considering ALL programs
        const nextIdResult = await client.query(
            "SELECT COALESCE(MAX(id), 0) + 1 as next_id FROM programs"
        );
        const nextId = nextIdResult.rows[0].next_id;

        // Ensure all numeric values are properly converted to integers with defaults
        const duration_weeks = parseInt(req.body.duration_weeks) || 4;
        const is_public = req.body.is_public === true;
        const difficulty = (req.body.difficulty || 'beginner').toLowerCase();

        // Insert program
        const programResult = await client.query(
            `INSERT INTO programs (id, name, description, type, created_by, is_public, difficulty, duration_weeks, slug)
            VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
            RETURNING id, name, description, slug`,
            [
                nextId,
                req.body.name.trim(),
                req.body.description || '',
                "user_created",
                req.user.id,
                is_public,
                difficulty,
                duration_weeks,
                slug
            ]
        );

        const programId = programResult.rows[0].id;
        const program = programResult.rows[0];

        // Create weeks array to store all program structure
        const weeks = [];

        // Insert weeks
        for (const week of req.body.weeks) {
            const weekNumber = parseInt(week.week_number) || weeks.length + 1;
            const weekResult = await client.query(
                `INSERT INTO program_weeks (program_id, week_number, description)
                VALUES ($1, $2, $3)
                RETURNING id`,
                [programId, weekNumber, week.description || '']
            );

            const weekId = weekResult.rows[0].id;
            const weekData = {
                id: weekId,
                week_number: weekNumber,
                description: week.description || '',
                days: []
            };

            // Insert days
            const days = Array.isArray(week.days) ? week.days : [];
            for (let dayIndex = 0; dayIndex < days.length; dayIndex++) {
                const day = days[dayIndex];
                const dayNumber = parseInt(day.day_number) || dayIndex + 1;

                const dayResult = await client.query(
                    `INSERT INTO program_days (program_week_id, day_number, description)
                    VALUES ($1, $2, $3)
                    RETURNING id`,
                    [weekId, dayNumber, day.description || '']
                );

                const dayId = dayResult.rows[0].id;
                const dayData = {
                    id: dayId,
                    day_number: dayNumber,
                    description: day.description || '',
                    exercises: []
                };

                // Insert exercises
                const exercises = Array.isArray(day.exercises) ? day.exercises : [];
                for (let i = 0; i < exercises.length; i++) {
                    const exercise = exercises[i];
                    if (!exercise.exercise_id) {
                        console.warn(`Skipping exercise at index ${i} due to missing exercise_id`);
                        continue;
                    }

                    const exerciseId = parseInt(exercise.exercise_id);
                    if (isNaN(exerciseId)) {
                        console.warn(`Invalid exercise_id: ${exercise.exercise_id}`);
                        continue;
                    }

                    const sets = parseInt(exercise.sets) || 3;
                    const reps = parseInt(exercise.reps) || 12;
                    const rest_time = parseInt(exercise.rest_time) || 60;

                    const exerciseResult = await client.query(
                        `INSERT INTO program_exercises 
                        (program_day_id, exercise_id, sets, reps, rest_time, order_index, notes)
                        VALUES ($1, $2, $3, $4, $5, $6, $7)
                        RETURNING id`,
                        [
                            dayId,
                            exerciseId,
                            sets,
                            reps,
                            rest_time,
                            i,
                            exercise.notes || '',
                        ]
                    );

                    // Get exercise details
                    const exerciseDetails = await client.query(
                        `SELECT e.name, e.description, ed.difficulty_id, d.name as difficulty_name
                         FROM exercises e
                         LEFT JOIN exercise_details ed ON e.id = ed.exercise_id
                         LEFT JOIN difficulties d ON ed.difficulty_id = d.id
                         WHERE e.id = $1`,
                        [exerciseId]
                    );

                    if (exerciseDetails.rows.length > 0) {
                        const exerciseData = {
                            id: exerciseResult.rows[0].id,
                            exercise_id: exerciseId,
                            exercise_name: exerciseDetails.rows[0].name,
                            description: exerciseDetails.rows[0].description || '',
                            difficulty: exerciseDetails.rows[0].difficulty_name || 'Beginner',
                            sets: sets,
                            reps: reps,
                            rest_time: rest_time,
                            notes: exercise.notes || ''
                        };

                        dayData.exercises.push(exerciseData);
                    }
                }

                weekData.days.push(dayData);
            }

            weeks.push(weekData);
        }

        // Save the program in saved_programs table
        const programData = {
            id: programId,
            name: program.name,
            description: program.description || '',
            type: 'user_created',
            slug: program.slug,
            weeks: weeks
        };

        await client.query(
            `INSERT INTO saved_programs (user_id, program_id, program_data, program_info)
            VALUES ($1, $2, $3, $4)`,
            [
                req.user.id,
                programId,
                programData,
                {
                    title: program.name,
                    description: program.description || '',
                    longDescription: program.description || ''
                }
            ]
        );

        await client.query("COMMIT");
        res.json({
            id: programId,
            slug: program.slug,
            name: program.name,
            description: program.description,
            type: 'user_created',
            weeks: weeks.length,
            days_per_week: weeks[0]?.days.length || 0,
            total_exercises: weeks.reduce((acc, week) =>
                acc + week.days.reduce((dayAcc, day) =>
                    dayAcc + day.exercises.length, 0), 0)
        });
    } catch (err) {
        await client.query("ROLLBACK");
        console.error('Error creating program:', err);
        res.status(500).json({ error: "Failed to create program", details: err.message });
    } finally {
        client.release();
    }
});

// Update a program
router.put("/:id", authenticateToken, async (req, res) => {
    const client = await pool.connect();
    try {
        // Check if user owns the program
        const programResult = await client.query(
            "SELECT * FROM programs WHERE id = $1 AND created_by = $2",
            [req.params.id, req.user.id]
        );

        if (programResult.rows.length === 0) {
            return res.status(404).json({ error: "Program not found" });
        }

        await client.query("BEGIN");

        // Update program details
        await client.query(
            `UPDATE programs 
      SET name = $1, description = $2, is_public = $3, difficulty = $4, duration_weeks = $5
      WHERE id = $6`,
            [
                req.body.name,
                req.body.description,
                req.body.is_public,
                req.body.difficulty,
                req.body.duration_weeks,
                req.params.id,
            ]
        );

        // Delete existing structure
        await client.query(
            `DELETE FROM program_exercises 
      WHERE program_day_id IN (
        SELECT id FROM program_days 
        WHERE program_week_id IN (
          SELECT id FROM program_weeks 
          WHERE program_id = $1
        )
      )`,
            [req.params.id]
        );
        await client.query(
            "DELETE FROM program_days WHERE program_week_id IN (SELECT id FROM program_weeks WHERE program_id = $1)",
            [req.params.id]
        );
        await client.query("DELETE FROM program_weeks WHERE program_id = $1", [req.params.id]);

        // Insert new structure
        for (const week of req.body.weeks) {
            const weekResult = await client.query(
                `INSERT INTO program_weeks (program_id, week_number, description)
        VALUES ($1, $2, $3)
        RETURNING id`,
                [req.params.id, week.week_number, week.description]
            );

            const weekId = weekResult.rows[0].id;

            for (const day of week.days) {
                const dayResult = await client.query(
                    `INSERT INTO program_days (program_week_id, day_number, description)
          VALUES ($1, $2, $3)
          RETURNING id`,
                    [weekId, day.day_number, day.description]
                );

                const dayId = dayResult.rows[0].id;

                for (let i = 0; i < day.exercises.length; i++) {
                    const exercise = day.exercises[i];
                    await client.query(
                        `INSERT INTO program_exercises 
            (program_day_id, exercise_id, sets, reps, rest_time, order_index, notes)
            VALUES ($1, $2, $3, $4, $5, $6, $7)`,
                        [
                            dayId,
                            exercise.exercise_id,
                            exercise.sets,
                            exercise.reps,
                            exercise.rest_time,
                            i,
                            exercise.notes,
                        ]
                    );
                }
            }
        }

        await client.query("COMMIT");
        res.json({ message: "Program updated successfully" });
    } catch (err) {
        await client.query("ROLLBACK");
        console.error(err);
        res.status(500).json({ error: "Server error" });
    } finally {
        client.release();
    }
});

// Delete a program
router.delete("/:id", authenticateToken, async (req, res) => {
    const client = await pool.connect();
    try {
        // Check if user owns the program
        const programResult = await client.query(
            "SELECT * FROM programs WHERE id = $1 AND created_by = $2",
            [req.params.id, req.user.id]
        );

        if (programResult.rows.length === 0) {
            return res.status(404).json({ error: "Program not found" });
        }

        await client.query("BEGIN");

        // Delete program and all related data (cascade will handle the rest)
        await client.query("DELETE FROM programs WHERE id = $1", [req.params.id]);

        await client.query("COMMIT");
        res.json({ message: "Program deleted successfully" });
    } catch (err) {
        await client.query("ROLLBACK");
        console.error(err);
        res.status(500).json({ error: "Server error" });
    } finally {
        client.release();
    }
});

// Like/Unlike a program
router.post("/:id/like", authenticateToken, async (req, res) => {
    try {
        const { rows } = await pool.query(
            "SELECT * FROM program_likes WHERE program_id = $1 AND user_id = $2",
            [req.params.id, req.user.id]
        );

        if (rows.length > 0) {
            // Unlike
            await pool.query(
                "DELETE FROM program_likes WHERE program_id = $1 AND user_id = $2",
                [req.params.id, req.user.id]
            );
            res.json({ liked: false });
        } else {
            // Like
            await pool.query(
                "INSERT INTO program_likes (program_id, user_id) VALUES ($1, $2)",
                [req.params.id, req.user.id]
            );
            res.json({ liked: true });
        }
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: "Server error" });
    }
});

// Start a program
router.post("/:id/start", authenticateToken, async (req, res) => {
    try {
        const programId = getProgramId(req.params.id);
        const { rows } = await pool.query(
            "SELECT * FROM user_program_progress WHERE program_id = $1 AND user_id = $2",
            [programId, req.user.id]
        );

        if (rows.length > 0) {
            // If program is already in progress, just return success
            res.json({ message: "Program already in progress" });
        } else {
            // Create new progress
            await pool.query(
                `INSERT INTO user_program_progress 
        (user_id, program_id, current_week, current_day, started_at, status)
        VALUES ($1, $2, 1, 1, NOW(), 'in_progress')`,
                [req.user.id, programId]
            );
            res.json({ message: "Program started successfully" });
        }
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: "Server error" });
    }
});

// Update program progress
router.put("/:id/progress", authenticateToken, async (req, res) => {
    try {
        const { current_week, current_day, completed_exercises } = req.body;

        await pool.query(
            `UPDATE user_program_progress 
      SET current_week = $1, current_day = $2
      WHERE program_id = $3 AND user_id = $4`,
            [current_week, current_day, req.params.id, req.user.id]
        );

        // Record completed exercises
        if (completed_exercises && completed_exercises.length > 0) {
            for (const exercise of completed_exercises) {
                await pool.query(
                    `INSERT INTO user_exercise_completion 
          (user_id, program_exercise_id, completed_at, notes, rating)
          VALUES ($1, $2, NOW(), $3, $4)`,
                    [req.user.id, exercise.id, exercise.notes, exercise.rating]
                );
            }
        }

        res.json({ message: "Progress updated successfully" });
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: "Server error" });
    }
});

// Get program progress
router.get("/:programId/progress", authenticateToken, async (req, res) => {
    try {
        const programId = getProgramId(req.params.programId);
        const userId = req.user.id;

        const result = await pool.query(
            `SELECT 
        upp.current_week,
        upp.current_day,
        (SELECT COUNT(*) FROM program_exercises pe 
         JOIN program_days pd ON pe.program_day_id = pd.id
         JOIN program_weeks pw ON pd.program_week_id = pw.id
         WHERE pw.program_id = $1) as total_exercises,
        (SELECT COUNT(*) FROM user_exercise_completion uec 
         JOIN program_exercises pe ON uec.program_exercise_id = pe.id
         JOIN program_days pd ON pe.program_day_id = pd.id
         JOIN program_weeks pw ON pd.program_week_id = pw.id
         WHERE pw.program_id = $1 AND uec.user_id = $2) as completed_exercises
       FROM user_program_progress upp
       WHERE upp.program_id = $1 AND upp.user_id = $2`,
            [programId, userId]
        );

        if (result.rows.length === 0) {
            return res.status(404).json({ error: "Program progress not found" });
        }

        const progress = result.rows[0];
        progress.completion_percentage = progress.total_exercises > 0
            ? Math.round((progress.completed_exercises / progress.total_exercises) * 100)
            : 0;

        res.json(progress);
    } catch (error) {
        console.error("Error fetching program progress:", error);
        res.status(500).json({ error: "Internal server error" });
    }
});

// Get completed exercises for a specific workout (week/day)
router.get("/:programId/workout/:week/:day/completed", authenticateToken, async (req, res) => {
    try {
        const programId = getProgramId(req.params.programId);
        const { week, day } = req.params;
        const userId = req.user.id;

        // Find the program_week_id
        const weekResult = await pool.query(
            "SELECT id FROM program_weeks WHERE program_id = $1 AND week_number = $2",
            [programId, week]
        );
        if (weekResult.rows.length === 0) {
            return res.status(404).json({ error: "Week not found" });
        }
        const programWeekId = weekResult.rows[0].id;

        // Find the program_day_id
        const dayResult = await pool.query(
            "SELECT id FROM program_days WHERE program_week_id = $1 AND day_number = $2",
            [programWeekId, day]
        );
        if (dayResult.rows.length === 0) {
            return res.status(404).json({ error: "Day not found" });
        }
        const programDayId = dayResult.rows[0].id;

        // Find completed exercises for this day
        const completedResult = await pool.query(
            `SELECT uec.program_exercise_id
             FROM user_exercise_completion uec
             JOIN program_exercises pe ON uec.program_exercise_id = pe.id
             WHERE pe.program_day_id = $1 AND uec.user_id = $2`,
            [programDayId, userId]
        );

        const completedExercises = completedResult.rows.map(row => row.program_exercise_id);

        res.json({ completed_exercises: completedExercises });
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: "Server error" });
    }
});

// Complete an exercise in a workout
router.post("/:programId/workout/:week/:day/complete/:exerciseId", authenticateToken, async (req, res) => {
    try {
        const programId = getProgramId(req.params.programId);
        const { week, day, exerciseId } = req.params;
        const userId = req.user.id;

        console.log('Completing exercise with params:', {
            programId,
            week,
            day,
            exerciseId,
            userId
        });

        // Find the program_week_id
        const weekResult = await pool.query(
            "SELECT id FROM program_weeks WHERE program_id = $1 AND week_number = $2",
            [programId, week]
        );
        if (weekResult.rows.length === 0) {
            console.log('Week not found:', { programId, week });
            return res.status(404).json({ error: "Week not found" });
        }
        const programWeekId = weekResult.rows[0].id;
        console.log('Found program week:', programWeekId);

        // Find the program_day_id
        const dayResult = await pool.query(
            "SELECT id FROM program_days WHERE program_week_id = $1 AND day_number = $2",
            [programWeekId, day]
        );
        if (dayResult.rows.length === 0) {
            console.log('Day not found:', { programWeekId, day });
            return res.status(404).json({ error: "Day not found" });
        }
        const programDayId = dayResult.rows[0].id;
        console.log('Found program day:', programDayId);

        // Find the program_exercise_id - now matching against the program exercise's ID
        const exerciseResult = await pool.query(
            "SELECT id FROM program_exercises WHERE program_day_id = $1 AND id = $2",
            [programDayId, exerciseId]
        );
        console.log('Exercise query result:', {
            programDayId,
            exerciseId,
            found: exerciseResult.rows.length > 0,
            rows: exerciseResult.rows
        });

        if (exerciseResult.rows.length === 0) {
            // Let's check what exercises are actually in this day
            const allExercises = await pool.query(
                "SELECT pe.id, pe.exercise_id, e.name FROM program_exercises pe JOIN exercises e ON pe.exercise_id = e.id WHERE pe.program_day_id = $1",
                [programDayId]
            );
            console.log('All exercises in this day:', allExercises.rows);
            return res.status(404).json({ error: "Exercise not found in this workout" });
        }
        const programExerciseId = exerciseResult.rows[0].id;

        // Check if exercise is already completed
        const existingCompletion = await pool.query(
            "SELECT * FROM user_exercise_completion WHERE user_id = $1 AND program_exercise_id = $2",
            [userId, programExerciseId]
        );

        if (existingCompletion.rows.length > 0) {
            // Exercise is already completed, so we'll uncomplete it
            await pool.query(
                "DELETE FROM user_exercise_completion WHERE user_id = $1 AND program_exercise_id = $2",
                [userId, programExerciseId]
            );
            return res.json({ message: "Exercise uncompleted successfully", completed: false });
        }

        // Record the completion
        await pool.query(
            `INSERT INTO user_exercise_completion 
            (user_id, program_exercise_id, completed_at)
            VALUES ($1, $2, NOW())`,
            [userId, programExerciseId]
        );

        res.json({ message: "Exercise completed successfully", completed: true });
    } catch (error) {
        console.error("Error completing exercise:", error);
        res.status(500).json({ error: "Failed to complete exercise" });
    }
});

// Complete an entire workout (week/day)
router.post("/:programId/workout/:week/:day/complete", authenticateToken, async (req, res) => {
    try {
        const programId = getProgramId(req.params.programId);
        const { week, day } = req.params;
        const userId = req.user.id;

        console.log('Completing workout with params:', {
            programId,
            week,
            day,
            userId
        });

        // Find the program_week_id
        const weekResult = await pool.query(
            "SELECT id FROM program_weeks WHERE program_id = $1 AND week_number = $2",
            [programId, week]
        );
        if (weekResult.rows.length === 0) {
            return res.status(404).json({ error: "Week not found" });
        }
        const programWeekId = weekResult.rows[0].id;

        // Find the program_day_id
        const dayResult = await pool.query(
            "SELECT id FROM program_days WHERE program_week_id = $1 AND day_number = $2",
            [programWeekId, day]
        );
        if (dayResult.rows.length === 0) {
            return res.status(404).json({ error: "Day not found" });
        }
        const programDayId = dayResult.rows[0].id;

        // Get all exercises for this day
        const exercisesResult = await pool.query(
            "SELECT id FROM program_exercises WHERE program_day_id = $1",
            [programDayId]
        );

        // Check if all exercises are completed
        const completedExercisesResult = await pool.query(
            `SELECT pe.id 
             FROM program_exercises pe
             JOIN user_exercise_completion uec ON pe.id = uec.program_exercise_id
             WHERE pe.program_day_id = $1 AND uec.user_id = $2`,
            [programDayId, userId]
        );

        if (completedExercisesResult.rows.length !== exercisesResult.rows.length) {
            return res.status(400).json({ error: "Not all exercises are completed" });
        }

        // Update program progress
        const nextDay = parseInt(day) + 1;
        const nextWeek = parseInt(week);
        let newWeek = nextWeek;
        let newDay = nextDay;

        // Check if we need to move to the next week
        const daysInWeekResult = await pool.query(
            "SELECT COUNT(*) as count FROM program_days WHERE program_week_id = $1",
            [programWeekId]
        );
        const daysInWeek = parseInt(daysInWeekResult.rows[0].count);

        if (nextDay > daysInWeek) {
            newDay = 1;
            newWeek = nextWeek + 1;

            // Check if we've completed the program
            const weeksInProgramResult = await pool.query(
                "SELECT COUNT(*) as count FROM program_weeks WHERE program_id = $1",
                [programId]
            );
            const weeksInProgram = parseInt(weeksInProgramResult.rows[0].count);

            if (newWeek > weeksInProgram) {
                // Program is completed
                await pool.query(
                    `UPDATE user_program_progress 
                    SET current_week = $1, current_day = $2, completed_at = NOW(), status = 'completed'
                    WHERE program_id = $3 AND user_id = $4`,
                    [newWeek - 1, daysInWeek, programId, userId]
                );
                return res.json({
                    message: "Program completed successfully",
                    completed: true,
                    programCompleted: true
                });
            }
        }

        // Update progress to next day/week
        await pool.query(
            `UPDATE user_program_progress 
            SET current_week = $1, current_day = $2
            WHERE program_id = $3 AND user_id = $4`,
            [newWeek, newDay, programId, userId]
        );

        res.json({
            message: "Workout completed successfully",
            completed: true,
            nextWeek: newWeek,
            nextDay: newDay
        });
    } catch (error) {
        console.error("Error completing workout:", error);
        res.status(500).json({ error: "Failed to complete workout" });
    }
});

module.exports = router; 