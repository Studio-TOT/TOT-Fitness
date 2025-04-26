// Helper function to get random exercises from a category
const getRandomExercises = (exercises, category, count) => {
  const categoryExercises = exercises.filter((ex) => ex.category === category);
  const shuffled = [...categoryExercises].sort(() => 0.5 - Math.random());
  return shuffled.slice(0, count);
};

// Helper function to get exercises by muscle group
export const getExercisesByMuscle = (exercises, muscleName) => {
  if (!Array.isArray(exercises)) return [];
  return exercises.filter((exercise) =>
    exercise.target?.Primary?.includes(muscleName) ||
    exercise.target?.Secondary?.includes(muscleName) ||
    exercise.target?.Tertiary?.includes(muscleName)
  );
};

// Generate a booty pump program (focus on glutes and legs)
export const generateBootyPumpProgram = (exercises) => {
  if (!Array.isArray(exercises)) return [];
  const gluteExercises = getExercisesByMuscle(exercises, "glutes");
  const quadExercises = getExercisesByMuscle(exercises, "quadriceps");
  const hamstringExercises = getExercisesByMuscle(exercises, "hamstrings");

  return [...gluteExercises, ...quadExercises, ...hamstringExercises];
};

// Generate a muscle building program (focus on major muscle groups)
export const generateMuscleBuildingProgram = (exercises) => {
  if (!Array.isArray(exercises)) return [];
  const chestExercises = getExercisesByMuscle(exercises, "chest");
  const backExercises = getExercisesByMuscle(exercises, "back");
  const shoulderExercises = getExercisesByMuscle(exercises, "shoulders");
  const armExercises = getExercisesByMuscle(exercises, "biceps").concat(
    getExercisesByMuscle(exercises, "triceps")
  );

  return [
    ...chestExercises,
    ...backExercises,
    ...shoulderExercises,
    ...armExercises,
  ];
};

// Generate a full body program
export const generateFullBodyProgram = (exercises) => {
  if (!Array.isArray(exercises)) return [];
  const allExercises = [...exercises];
  return allExercises.sort(() => Math.random() - 0.5).slice(0, 10);
};

// Generate a bodyweight program
export const generateBodyweightProgram = (exercises) => {
  if (!Array.isArray(exercises)) return [];
  return exercises.filter((exercise) => exercise.equipment?.includes("body weight"));
};
