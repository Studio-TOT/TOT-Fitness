// Load environment variables from .env file
require("dotenv").config();

// Set NODE_ENV if not set
if (!process.env.NODE_ENV) {
  process.env.NODE_ENV = 'development';
}

const express = require('express');
const cors = require('cors');
const exercisesRouter = require('./src/routes/exercises');

// Log all environment variables (excluding sensitive ones)
console.log('Environment Variables:');
console.log('NODE_ENV:', process.env.NODE_ENV);
console.log('PORT:', process.env.PORT);
console.log('DATABASE_URL exists:', !!process.env.DATABASE_URL);
console.log('DATABASE_URL format:', process.env.DATABASE_URL ?
  process.env.DATABASE_URL.replace(/postgresql:\/\/[^:]+:[^@]+@/, 'postgresql://****:****@') :
  'Not set');
console.log('RAILWAY_DATABASE_URL exists:', !!process.env.RAILWAY_DATABASE_URL);
console.log('DB_HOST:', process.env.DB_HOST);
console.log('DB_NAME:', process.env.DB_NAME);
console.log('DB_USER:', process.env.DB_USER);
console.log('DB_PASSWORD exists:', !!process.env.DB_PASSWORD);
console.log('DB_PORT:', process.env.DB_PORT);

// Environment variables validation
if (process.env.NODE_ENV === 'production') {
  if (!process.env.DATABASE_URL) {
    console.error('WARNING: DATABASE_URL is not set in production environment');
    console.error('Please make sure to set DATABASE_URL in your Railway environment variables');
    console.error('You can do this by:');
    console.error('1. Going to your Railway project dashboard');
    console.error('2. Selecting your backend service');
    console.error('3. Going to the Variables tab');
    console.error('4. Adding DATABASE_URL with the value from your PostgreSQL service');
    console.error('Current environment variables:', Object.keys(process.env).join(', '));
  } else {
    console.log('Using DATABASE_URL for database connection');
  }
} else {
  // In development, we need either LOCAL_DATABASE_URL or all DB_* variables
  if (!process.env.LOCAL_DATABASE_URL && !(process.env.DB_HOST && process.env.DB_NAME && process.env.DB_USER)) {
    console.error('Missing database configuration in development. Please set either:');
    console.error('1. LOCAL_DATABASE_URL environment variable, or');
    console.error('2. All of these variables: DB_HOST, DB_NAME, DB_USER');
    process.exit(1);
  }
}

// Log environment info
console.log('Environment:', process.env.NODE_ENV);
console.log('Database configuration:', process.env.DATABASE_URL ? 'Using DATABASE_URL' : 'Not configured');

const app = express();
const port = process.env.PORT || 3000;

// CORS configuration
const corsOptions = {
  origin: process.env.NODE_ENV === 'production'
    ? ['https://totfitness.netlify.app', 'https://tot-fitness-production.up.railway.app']
    : process.env.FRONTEND_URL || 'http://localhost:5173',
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization'],
  credentials: true,
  preflightContinue: false,
  optionsSuccessStatus: 204
};

// Enable CORS for all routes
app.use(cors(corsOptions));

// Handle preflight requests
app.options('*', cors(corsOptions));

app.use(express.json());

// Exercise routes
app.use('/api/exercises', exercisesRouter);

// Health check endpoint
app.get('/health', (req, res) => {
  res.json({
    status: 'ok',
    environment: process.env.NODE_ENV,
    database: process.env.NODE_ENV === 'production' ? 'production' : 'local',
    timestamp: new Date().toISOString()
  });
});

// 404 handler
app.use((req, res) => {
  res.status(404).json({
    error: 'Not Found',
    details: `The requested resource ${req.originalUrl} was not found`
  });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error('Error:', {
    message: err.message,
    stack: err.stack,
    path: req.path,
    method: req.method,
    timestamp: new Date().toISOString()
  });

  // Handle specific error types
  if (err.name === 'ValidationError') {
    return res.status(400).json({
      error: 'Validation Error',
      details: err.message
    });
  }

  if (err.name === 'UnauthorizedError') {
    return res.status(401).json({
      error: 'Unauthorized',
      details: err.message
    });
  }

  // Default error response
  res.status(500).json({
    error: 'Internal server error',
    details: process.env.NODE_ENV === 'development' ? err.message : 'An unexpected error occurred',
    ...(process.env.NODE_ENV === 'development' && { stack: err.stack })
  });
});

// Start server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
  console.log(`Environment: ${process.env.NODE_ENV}`);
});
