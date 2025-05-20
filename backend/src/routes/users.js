const express = require('express');
const pool = require('../db');
const { authenticateToken } = require('../middleware/auth');

const router = express.Router();

router.post('/save-program', authenticateToken, async (req, res) => {
    try {
        const { programId, programData, programInfo } = req.body;
        const userId = req.user.id;

        // First, check if the program is already saved
        const existingProgram = await pool.query(
            'SELECT * FROM saved_programs WHERE user_id = $1 AND program_id = $2',
            [userId, programId]
        );

        if (existingProgram.rows.length > 0) {
            // Update existing program
            await pool.query(
                'UPDATE saved_programs SET program_data = $1, program_info = $2, updated_at = NOW() WHERE user_id = $3 AND program_id = $4',
                [JSON.stringify(programData), JSON.stringify(programInfo), userId, programId]
            );
        } else {
            // Insert new program
            await pool.query(
                'INSERT INTO saved_programs (user_id, program_id, program_data, program_info) VALUES ($1, $2, $3, $4)',
                [userId, programId, JSON.stringify(programData), JSON.stringify(programInfo)]
            );
        }

        res.json({ message: 'Program saved successfully' });
    } catch (error) {
        console.error('Error saving program:', error);
        res.status(500).json({ error: 'Failed to save program' });
    }
});

// Add a route to get saved programs
router.get('/saved-programs', authenticateToken, async (req, res) => {
    try {
        const userId = req.user.id;
        const result = await pool.query(
            'SELECT * FROM saved_programs WHERE user_id = $1 ORDER BY updated_at DESC',
            [userId]
        );

        const programs = result.rows.map(row => {
            let programData = row.program_data;
            let programInfo = row.program_info;

            // Only parse if the data is a string
            if (typeof programData === 'string') {
                try {
                    programData = JSON.parse(programData);
                } catch (e) {
                    console.error('Error parsing program_data:', e);
                    programData = null;
                }
            }

            if (typeof programInfo === 'string') {
                try {
                    programInfo = JSON.parse(programInfo);
                } catch (e) {
                    console.error('Error parsing program_info:', e);
                    programInfo = null;
                }
            }

            return {
                ...row,
                program_data: programData,
                program_info: programInfo
            };
        });

        res.json(programs);
    } catch (error) {
        console.error('Error fetching saved programs:', error);
        res.status(500).json({ error: 'Failed to fetch saved programs' });
    }
});

module.exports = router; 