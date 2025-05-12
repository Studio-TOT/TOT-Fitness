require("dotenv").config();

const pool = require('../db');

// Re-export the pool for other models to use
module.exports = pool;
