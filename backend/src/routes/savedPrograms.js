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

module.exports = router; 