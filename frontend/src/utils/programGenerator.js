// Helper function to get exercises by muscle group
export const getExercisesByMuscle = (exercises, muscleName) => {
  if (!Array.isArray(exercises)) return [];

  const muscleNameLower = muscleName.toLowerCase();
  const filteredExercises = exercises.filter((exercise) => {
    const primary = exercise.target?.Primary?.map(m => m.toLowerCase()) || [];
    const secondary = exercise.target?.Secondary?.map(m => m.toLowerCase()) || [];
    const tertiary = exercise.target?.Tertiary?.map(m => m.toLowerCase()) || [];

    return primary.includes(muscleNameLower) ||
      secondary.includes(muscleNameLower) ||
      tertiary.includes(muscleNameLower);
  });

  return filteredExercises;
};

// Helper function to get exercises by difficulty
const getExercisesByDifficulty = (exercises, difficulty) => {
  if (!Array.isArray(exercises)) return [];
  return exercises.filter(exercise =>
    exercise.difficulty?.toLowerCase() === difficulty.toLowerCase()
  );
};

// Create a week of exercises with specific difficulty
const createWeekExercises = (exercises, count = 5, difficulty = null) => {
  if (!Array.isArray(exercises)) return [];

  // If difficulty is specified, filter exercises by difficulty
  const filteredExercises = difficulty
    ? getExercisesByDifficulty(exercises, difficulty)
    : exercises;

  // If we don't have enough exercises for the specified difficulty, fall back to all exercises
  const exercisesToUse = filteredExercises.length >= count ? filteredExercises : exercises;

  const shuffled = [...exercisesToUse].sort(() => 0.5 - Math.random());
  const selectedExercises = shuffled.slice(0, count);
  return selectedExercises.map(exercise => ({
    ...exercise,
    exercise_name: exercise.exercise_name || exercise.name,
    difficulty: exercise.difficulty || null
  }));
};

// Generate a program with progressive difficulty
const generateProgram = (exercises, count = 5) => {
  if (!Array.isArray(exercises) || exercises.length === 0) {
    // Create empty program structure
    const emptyProgram = [];
    for (let week = 0; week < 12; week++) {
      const weekExercises = [];
      for (let day = 0; day < 3; day++) {
        weekExercises.push([]);
      }
      emptyProgram.push(weekExercises);
    }
    return emptyProgram;
  }

  // Define difficulty progression
  const difficultyProgression = [
    { weeks: [1, 2], difficulty: 'Beginner' },
    { weeks: [3, 4, 5], difficulty: 'Novice' },
    { weeks: [6, 7, 8, 9], difficulty: 'Intermediate' },
    { weeks: [10, 11, 12], difficulty: 'Advanced' }
  ];

  // Create 12 weeks of exercises with progressive difficulty
  const program = [];
  for (let week = 0; week < 12; week++) {
    const weekExercises = [];
    // Find the current difficulty level for this week
    const currentDifficulty = difficultyProgression.find(d =>
      d.weeks.includes(week + 1)
    )?.difficulty || 'Beginner';

    // Create 3 days for each week with the appropriate difficulty
    for (let day = 0; day < 3; day++) {
      const dayExercises = createWeekExercises(exercises, count, currentDifficulty);
      weekExercises.push(dayExercises);
    }
    program.push(weekExercises);
  }

  return program;
};

// Generate booty pump program
export const generateBootyPumpProgram = (exercises) => {
  if (!Array.isArray(exercises)) {
    console.log('No exercises array provided');
    return [];
  }

  const gluteExercises = getExercisesByMuscle(exercises, "Glutes");
  const quadExercises = getExercisesByMuscle(exercises, "Quadriceps");
  const hamstringExercises = getExercisesByMuscle(exercises, "Hamstrings");

  // Remove duplicates by exercise ID
  const allExercises = [...gluteExercises, ...quadExercises, ...hamstringExercises];
  const uniqueExercises = allExercises.filter((exercise, index, self) =>
    index === self.findIndex((e) => e.id === exercise.id)
  );

  if (uniqueExercises.length === 0) {
    console.log('No exercises found for booty pump program. Available muscles:',
      exercises.map(e => ({
        name: e.exercise_name,
        muscles: {
          primary: e.target?.Primary,
          secondary: e.target?.Secondary,
          tertiary: e.target?.Tertiary
        }
      }))
    );
  }

  return generateProgram(uniqueExercises);
};

// Generate muscle building program
export const generateMuscleBuildingProgram = (exercises) => {
  if (!Array.isArray(exercises)) return [];

  // Use muscle names that match the data capitalization
  const chestExercises = getExercisesByMuscle(exercises, "Chest");
  const backExercises = getExercisesByMuscle(exercises, "Back");
  const shoulderExercises = getExercisesByMuscle(exercises, "Shoulders");
  const bicepExercises = getExercisesByMuscle(exercises, "Biceps");
  const tricepExercises = getExercisesByMuscle(exercises, "Triceps");

  const allExercises = [
    ...chestExercises,
    ...backExercises,
    ...shoulderExercises,
    ...bicepExercises,
    ...tricepExercises
  ];

  return generateProgram(allExercises);
};

// Generate full body program
export const generateFullBodyProgram = (exercises) => {
  if (!Array.isArray(exercises)) return [];
  return generateProgram(exercises);
};

// Generate bodyweight program
export const generateBodyweightProgram = (exercises) => {
  if (!Array.isArray(exercises)) return [];
  const bodyweightExercises = exercises.filter((exercise) =>
    exercise.category === "Bodyweight"
  );
  return generateProgram(bodyweightExercises);
};
