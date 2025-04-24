// Helper function to get random exercises from a category
const getRandomExercises = (exercises, category, count) => {
    const categoryExercises = exercises.filter(ex => ex.category === category);
    const shuffled = [...categoryExercises].sort(() => 0.5 - Math.random());
    return shuffled.slice(0, count);
};

// Helper function to get exercises by muscle group
const getExercisesByMuscle = (exercises, muscleName) => {
    return exercises.filter(ex =>
        ex.target.Primary?.includes(muscleName) ||
        ex.target.Secondary?.includes(muscleName)
    );
};

// Generate a booty pump program (focus on glutes and legs)
export const generateBootyPumpProgram = (exercises) => {
    const program = [];

    // Day 1: Glute Focus
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Glutes'), 'Barbell', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Glutes'), 'Dumbbells', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Glutes'), 'Bodyweight', 1),
    ]);

    // Day 2: Leg Focus
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Quadriceps'), 'Barbell', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Hamstrings'), 'Dumbbells', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Calves'), 'Bodyweight', 1),
    ]);

    // Day 3: Full Lower Body
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Glutes'), 'Barbell', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Quadriceps'), 'Dumbbells', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Hamstrings'), 'Bodyweight', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Calves'), 'Bodyweight', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Glutes'), 'Dumbbells', 1),
    ]);

    return program;
};

// Generate a muscle building program (focus on major muscle groups)
export const generateMuscleBuildingProgram = (exercises) => {
    const program = [];

    // Day 1: Push (Chest, Shoulders, Triceps)
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Chest'), 'Barbell', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Shoulders'), 'Dumbbells', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Triceps'), 'Bodyweight', 1),
    ]);

    // Day 2: Pull (Back, Biceps)
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Back'), 'Barbell', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Biceps'), 'Dumbbells', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Back'), 'Bodyweight', 1),
    ]);

    // Day 3: Legs
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Quadriceps'), 'Barbell', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Hamstrings'), 'Dumbbells', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Calves'), 'Bodyweight', 1),
    ]);

    return program;
};

// Generate a full body program
export const generateFullBodyProgram = (exercises) => {
    const program = [];

    // All days are full body workouts with different exercises
    for (let i = 0; i < 3; i++) {
        program.push([
            ...getRandomExercises(getExercisesByMuscle(exercises, 'Chest'), 'Barbell', 1),
            ...getRandomExercises(getExercisesByMuscle(exercises, 'Back'), 'Dumbbells', 1),
            ...getRandomExercises(getExercisesByMuscle(exercises, 'Shoulders'), 'Bodyweight', 1),
            ...getRandomExercises(getExercisesByMuscle(exercises, 'Quadriceps'), 'Barbell', 1),
            ...getRandomExercises(getExercisesByMuscle(exercises, 'Hamstrings'), 'Dumbbells', 1),
        ]);
    }

    return program;
};

// Generate a bodyweight program
export const generateBodyweightProgram = (exercises) => {
    const program = [];

    // Day 1: Upper Body
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Chest'), 'Bodyweight', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Back'), 'Bodyweight', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Shoulders'), 'Bodyweight', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Arms'), 'Bodyweight', 1),
    ]);

    // Day 2: Lower Body
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Quadriceps'), 'Bodyweight', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Hamstrings'), 'Bodyweight', 2),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Calves'), 'Bodyweight', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Glutes'), 'Bodyweight', 1),
    ]);

    // Day 3: Full Body
    program.push([
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Chest'), 'Bodyweight', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Back'), 'Bodyweight', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Quadriceps'), 'Bodyweight', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Hamstrings'), 'Bodyweight', 1),
        ...getRandomExercises(getExercisesByMuscle(exercises, 'Core'), 'Bodyweight', 1),
    ]);

    return program;
}; 