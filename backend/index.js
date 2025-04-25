require("dotenv").config();

const express = require('express');
const cors = require('cors');
const exercisesRouter = require('./src/routes/exercises');

const app = express();
const port = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

// Exercise routes
app.use('/api/exercises', exercisesRouter);

// Health check endpoint
app.get('/health', (req, res) => {
  res.json({ status: 'ok' });
});

// Error handling middleware
app.use((err, req, res) => {
  console.error("Unhandled error:", err);
  res.status(500).json({
    error: "Internal server error",
    details: err.message,
    stack: process.env.NODE_ENV === "development" ? err.stack : undefined,
  });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
