// Load environment variables from .env file
require("dotenv").config();

// Set NODE_ENV if not set
if (!process.env.NODE_ENV) {
  process.env.NODE_ENV = 'development';
}

// Start the server
require('./src/server');
