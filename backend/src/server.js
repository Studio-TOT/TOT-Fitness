const app = require('./app');
const exercisesRouter = require('./routes/exercises');
const userRouter = require('./routes/user');
const authRouter = require('./routes/auth').router;
const subscriptionRouter = require('./routes/subscription');
const usersRouter = require('./routes/users');
const programsRouter = require('./routes/programs');
const savedProgramsRouter = require('./routes/savedPrograms');

// Mount routes
app.use('/api/exercises', exercisesRouter);
app.use('/api/user', userRouter);
app.use('/api/users', usersRouter);
app.use('/api/programs', programsRouter);
app.use('/api/auth', authRouter);
app.use('/api/subscription', subscriptionRouter);
app.use('/api/users/saved-programs', savedProgramsRouter);

const port = process.env.PORT || 3000;

// Start server
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
    console.log(`Environment: ${process.env.NODE_ENV}`);
}); 