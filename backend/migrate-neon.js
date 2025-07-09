// Force stdout to be blocking for real-time logs (Node.js workaround)
if (process.stdout._handle && process.stdout._handle.setBlocking) {
    process.stdout._handle.setBlocking(true);
}

console.log('🚀 Starting Neon migration...');

async function migrateToNeon() {
    try {
        console.log('📖 Loading dependencies...');
        require('dotenv').config();
        const { Pool } = require('pg');
        const fs = require('fs');
        const path = require('path');
        console.log('✅ Dependencies loaded');

        console.log('📍 Database URL:', process.env.DATABASE_URL?.substring(0, 50) + '...');

        // Database configuration for Neon
        const pool = new Pool({
            connectionString: process.env.DATABASE_URL,
            ssl: { rejectUnauthorized: false },
            max: 10,
            idleTimeoutMillis: 30000,
            connectionTimeoutMillis: 2000,
        });

        console.log('🔌 Connecting to database...');
        const client = await pool.connect();
        console.log('✅ Connected successfully!');

        // Test connection first
        console.log('🔌 Testing database connection...');
        const testResult = await client.query('SELECT NOW() as current_time');
        console.log('✅ Connection successful, current time:', testResult.rows[0].current_time);

        // Check if tables exist
        console.log('📊 Checking existing tables...');
        const tablesResult = await client.query(`
            SELECT table_name 
            FROM information_schema.tables 
            WHERE table_schema = 'public' 
            ORDER BY table_name
        `);
        console.log('📋 Existing tables:', tablesResult.rows.map(row => row.table_name).join(', '));

        // Check data counts
        console.log('🔍 Checking data counts...');
        const exercisesCount = await client.query('SELECT COUNT(*) as count FROM exercises');
        const categoriesCount = await client.query('SELECT COUNT(*) as count FROM categories');
        const musclesCount = await client.query('SELECT COUNT(*) as count FROM muscles');

        console.log(`📊 Current data:`);
        console.log(`   💪 Exercises: ${exercisesCount.rows[0].count}`);
        console.log(`   📂 Categories: ${categoriesCount.rows[0].count}`);
        console.log(`   🏋️  Muscles: ${musclesCount.rows[0].count}`);

        // Step 3: Import predefined programs
        console.log('\n📋 Step 3: Importing predefined programs...');
        await importPredefinedPrograms(client);

        console.log('\n🎉 Migration to Neon completed successfully!');

    } catch (error) {
        console.error('\n❌ Migration failed:', error);
        console.error('🔍 Error details:', error.message);
        if (error.stack) {
            console.error('📚 Stack trace:', error.stack.split('\n').slice(0, 5).join('\n'));
        }
        throw error;
    } finally {
        console.log('\n🔌 Closing database connection...');
        if (client) client.release();
        if (pool) await pool.end();
        console.log('✅ Connection closed');
    }
}

// Database configuration for Neon
const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false },
    max: 10,
    idleTimeoutMillis: 30000,
    connectionTimeoutMillis: 2000,
});

async function migrateToNeon() {
    const client = await pool.connect();

    try {
        console.log('🚀 Starting Neon migration...');
        console.log('📍 Database URL:', process.env.DATABASE_URL?.substring(0, 50) + '...');

        // Test connection first
        console.log('🔌 Testing database connection...');
        const testResult = await client.query('SELECT NOW() as current_time');
        console.log('✅ Connection successful, current time:', testResult.rows[0].current_time);

        // Step 1: Create tables from database.sql
        console.log('\n📋 Step 1: Creating database schema...');
        console.log('📖 Reading database.sql file...');
        const schemaSQL = fs.readFileSync(path.join(__dirname, 'database.sql'), 'utf8');
        console.log(`📄 Schema file size: ${(schemaSQL.length / 1024).toFixed(2)} KB`);

        console.log('🔨 Executing schema creation...');
        await client.query(schemaSQL);
        console.log('✅ Schema created successfully');

        // Check what tables were created
        console.log('📊 Checking created tables...');
        const tablesResult = await client.query(`
            SELECT table_name 
            FROM information_schema.tables 
            WHERE table_schema = 'public' 
            ORDER BY table_name
        `);
        console.log('📋 Created tables:', tablesResult.rows.map(row => row.table_name).join(', '));

        // Step 2: Import data from exercises_data.sql
        console.log('\n💪 Step 2: Importing exercises data...');
        console.log('📖 Reading exercises_data.sql file...');
        const dataSQL = fs.readFileSync(path.join(__dirname, '..', 'exercises_data.sql'), 'utf8');
        console.log(`📄 Data file size: ${(dataSQL.length / 1024).toFixed(2)} KB`);

        // Split the SQL into individual statements and execute them
        const statements = dataSQL
            .split(';')
            .map(stmt => stmt.trim())
            .filter(stmt => stmt.length > 0 && !stmt.startsWith('--'));

        console.log(`📦 Found ${statements.length} SQL statements to execute`);

        let successCount = 0;
        let errorCount = 0;
        let skippedCount = 0;

        for (let i = 0; i < statements.length; i++) {
            const statement = statements[i];
            if (statement.trim()) {
                try {
                    await client.query(statement);
                    successCount++;

                    // Log progress every 50 statements
                    if (i % 50 === 0) {
                        console.log(`🔄 Progress: ${i}/${statements.length} statements (${((i / statements.length) * 100).toFixed(1)}%)`);
                        console.log(`   ✅ Success: ${successCount}, ❌ Errors: ${errorCount}, ⏭️  Skipped: ${skippedCount}`);
                    }

                } catch (error) {
                    // Skip errors for duplicate data (ON CONFLICT should handle this)
                    if (error.message.includes('duplicate key') ||
                        error.message.includes('already exists') ||
                        error.message.includes('relation') && error.message.includes('already exists')) {
                        skippedCount++;
                    } else {
                        errorCount++;
                        console.warn(`⚠️  Statement ${i + 1} failed:`, error.message.substring(0, 100) + '...');
                    }
                }
            }
        }

        console.log(`\n📊 Data import summary:`);
        console.log(`   ✅ Successful: ${successCount}`);
        console.log(`   ❌ Errors: ${errorCount}`);
        console.log(`   ⏭️  Skipped (duplicates): ${skippedCount}`);
        console.log(`   📦 Total processed: ${successCount + errorCount + skippedCount}`);

        // Step 3: Import predefined programs
        console.log('\n📋 Step 3: Importing predefined programs...');
        await importPredefinedPrograms(client);

        // Final verification
        console.log('\n🔍 Final verification...');
        const exercisesCount = await client.query('SELECT COUNT(*) as count FROM exercises');
        const categoriesCount = await client.query('SELECT COUNT(*) as count FROM categories');
        const musclesCount = await client.query('SELECT COUNT(*) as count FROM muscles');

        console.log(`📊 Final counts:`);
        console.log(`   💪 Exercises: ${exercisesCount.rows[0].count}`);
        console.log(`   📂 Categories: ${categoriesCount.rows[0].count}`);
        console.log(`   🏋️  Muscles: ${musclesCount.rows[0].count}`);

        console.log('\n🎉 Migration to Neon completed successfully!');

    } catch (error) {
        console.error('\n❌ Migration failed:', error);
        console.error('🔍 Error details:', error.message);
        if (error.stack) {
            console.error('📚 Stack trace:', error.stack.split('\n').slice(0, 5).join('\n'));
        }
        throw error;
    } finally {
        console.log('\n🔌 Closing database connection...');
        client.release();
        await pool.end();
        console.log('✅ Connection closed');
    }
}

async function importPredefinedPrograms(client) {
    try {
        console.log('📖 Loading predefined programs script...');
        const { insertPredefinedPrograms } = require('./insert_predefined_programs');
        console.log('🔨 Inserting predefined programs...');
        await insertPredefinedPrograms(client);
        console.log('✅ Predefined programs imported successfully');

        // Verify programs were inserted
        const programsCount = await client.query('SELECT COUNT(*) as count FROM programs WHERE type = \'predefined\'');
        console.log(`📊 Predefined programs count: ${programsCount.rows[0].count}`);

    } catch (error) {
        console.warn('⚠️  Could not import predefined programs:', error.message);
        console.warn('📚 This is not critical - programs can be added manually later');
    }
}

// Run migration if called directly
if (require.main === module) {
    migrateToNeon().catch(console.error);
}

module.exports = { migrateToNeon }; 