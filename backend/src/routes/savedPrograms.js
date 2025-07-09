const express = require("express");
const router = express.Router();
const pool = require("../db");
const { authenticateToken } = require('../middleware/auth');

// GET /api/users/saved-programs
router.get("/", authenticateToken, async (req, res) => {
    try {
        const userId = req.user.id;
        const savedProgramsQuery = `
            SELECT sp.*, u.email as user_email
            FROM saved_programs sp
            JOIN users u ON sp.user_id = u.id
            WHERE sp.user_id = $1
        `;
        const savedPrograms = await pool.query(savedProgramsQuery, [userId]);
        res.json(savedPrograms.rows);
    } catch (error) {
        console.error('Error fetching saved programs:', error);
        res.status(500).json({ error: 'Failed to fetch saved programs' });
    }
});

// DELETE /api/users/saved-programs/:programId
router.delete("/:programId", authenticateToken, async (req, res) => {
    try {
        const userId = req.user.id;
        const programId = req.params.programId;

        // First check if the program exists and belongs to the user
        const checkQuery = `
            SELECT id FROM saved_programs 
            WHERE user_id = $1 AND program_id = $2
        `;
        const checkResult = await pool.query(checkQuery, [userId, programId]);

        if (checkResult.rows.length === 0) {
            return res.status(404).json({ error: 'Saved program not found' });
        }

        // Delete the saved program
        const deleteQuery = `
            DELETE FROM saved_programs 
            WHERE user_id = $1 AND program_id = $2
        `;
        await pool.query(deleteQuery, [userId, programId]);

        res.json({ message: 'Program unsaved successfully' });
    } catch (error) {
        console.error('Error unsaving program:', error);
        res.status(500).json({ error: 'Failed to unsave program' });
    }
});

module.exports = router; 