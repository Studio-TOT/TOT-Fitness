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

// Create a week of exercises
const createWeekExercises = (exercises, count = 5) => {
  if (!Array.isArray(exercises)) return [];
  const shuffled = [...exercises].sort(() => 0.5 - Math.random());
  const selectedExercises = shuffled.slice(0, count);
  return selectedExercises;
};

// Generate a program with exercises for each day
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

  // Create 12 weeks of exercises
  const program = [];
  for (let week = 0; week < 12; week++) {
    const weekExercises = [];
    // Create 3 days for each week
    for (let day = 0; day < 3; day++) {
      const dayExercises = createWeekExercises(exercises, count);
      weekExercises.push(dayExercises);
    }
    program.push(weekExercises);
  }

  return program;
};

// Generate booty pump program
export const generateBootyPumpProgram = (exercises) => {
  if (!Array.isArray(exercises)) return [];
  const gluteExercises = getExercisesByMuscle(exercises, "glutes");
  const quadExercises = getExercisesByMuscle(exercises, "quadriceps");
  const hamstringExercises = getExercisesByMuscle(exercises, "hamstrings");

  const allExercises = [...gluteExercises, ...quadExercises, ...hamstringExercises];
  return generateProgram(allExercises);
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
