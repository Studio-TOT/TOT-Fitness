require("dotenv").config();

const fs = require("fs");
const { Pool } = require("pg");

const migrate = async () => {
  if (!process.env.DATABASE_URL) {
    console.error('DATABASE_URL environment variable is not set');
    process.exit(1);
  }

  const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false // Required for Railway
    }
  });

  try {
    // Read and execute SQL file
    const sql = fs.readFileSync("./database.sql", "utf8");
    await pool.query(sql);

    console.log('Migration completed successfully');
    await pool.end();
  } catch (error) {
    console.error('Migration failed:', error);
    process.exit(1);
  }
};

migrate();
