require("dotenv").config();

const express = require('express');
const cors = require('cors');
const path = require('path');
const fs = require('fs').promises;
const { scrapeExercises } = require('./src/scraper');
const exercisesRouter = require('./src/routes/exercises');

const app = express();
const port = process.env.PORT || 3000;
const EXERCISES_FILE = path.join(__dirname, 'data/exercises.json');

app.use(cors());
app.use(express.json());

// Exercise routes
app.use('/api/exercises', exercisesRouter);

// Scraping endpoint
app.get('/api/exercises', async (req, res) => {
  try {
    // Check if we need to scrape new data
    let exercises;
    try {
      const fileContent = await fs.readFile(EXERCISES_FILE, 'utf8');
      exercises = JSON.parse(fileContent);
      console.log(`Loaded ${exercises.length} exercises from file`);
    } catch (error) {
      console.log('No exercises file found, scraping new data...');
      exercises = await scrapeExercises();
    }

    if (!exercises || exercises.length === 0) {
      console.error('No exercises found');
      return res.status(404).json({
        error: 'No exercises found',
        details: 'No exercises available'
      });
    }

    console.log(`Serving ${exercises.length} exercises`);
    res.json(exercises);
  } catch (error) {
    console.error('Error in /api/exercises endpoint:', error);
    res.status(500).json({
      error: 'Failed to get exercises',
      details: error.message,
      stack: process.env.NODE_ENV === 'development' ? error.stack : undefined
    });
  }
});

// Health check endpoint
app.get('/health', (req, res) => {
  res.json({ status: 'ok' });
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error('Unhandled error:', err);
  res.status(500).json({
    error: 'Internal server error',
    details: err.message,
    stack: process.env.NODE_ENV === 'development' ? err.stack : undefined
  });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
