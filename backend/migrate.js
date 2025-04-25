require("dotenv").config();

const fs = require("fs");
const { Pool } = require("pg");

const migrate = async () => {
  const { DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME } = process.env;

  const pool = new Pool({
    host: DB_HOST,
    port: DB_PORT || 5432,
    user: DB_USER,
    password: DB_PASSWORD,
    database: 'postgres' // Connect to default postgres database first
  });

  try {
    // Drop database if exists
    await pool.query(`DROP DATABASE IF EXISTS ${DB_NAME}`);

    // Create database
    await pool.query(`CREATE DATABASE ${DB_NAME}`);

    // Close connection to postgres database
    await pool.end();

    // Connect to the new database
    const newPool = new Pool({
      host: DB_HOST,
      port: DB_PORT || 5432,
      user: DB_USER,
      password: DB_PASSWORD,
      database: DB_NAME
    });

    // Read and execute SQL file
    const sql = fs.readFileSync("./database.sql", "utf8");
    await newPool.query(sql);

    console.log('Migration completed successfully');
    await newPool.end();
  } catch (error) {
    console.error('Migration failed:', error);
    process.exit(1);
  }
};

migrate();
