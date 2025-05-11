require('dotenv').config();
const { Pool } = require('pg');

let dbConfig = {};
if (process.env.NODE_ENV === 'development' && process.env.LOCAL_DATABASE_URL) {
    dbConfig = {
        connectionString: process.env.LOCAL_DATABASE_URL,
        ssl: false,
    };
} else if (process.env.DATABASE_URL) {
    dbConfig = {
        connectionString: process.env.DATABASE_URL,
        ssl: process.env.NODE_ENV === 'production' ? { rejectUnauthorized: false } : false,
    };
} else {
    dbConfig = {
        user: process.env.DB_USER,
        host: process.env.DB_HOST,
        database: process.env.DB_NAME,
        password: process.env.DB_PASSWORD,
        port: process.env.DB_PORT || 5432,
        ssl: false,
    };
}

// Add pool configuration
Object.assign(dbConfig, {
    max: 20, // Maximum number of clients in the pool
    idleTimeoutMillis: 30000, // How long a client is allowed to remain idle before being closed
    connectionTimeoutMillis: 2000, // How long to wait for a connection
    maxUses: 7500, // Close a connection after it has been used this many times
});

const pool = new Pool(dbConfig);

pool.on('connect', () => {
    console.log('Connected to database');
});

pool.on('error', (err) => {
    console.error('Unexpected error on idle client', err);
    process.exit(-1);
});

module.exports = pool; 