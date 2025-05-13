class TransformService {
    transformExercise(exercise) {
        const muscles = exercise.muscles || [];
        const categories = exercise.categories || [];
        const steps = exercise.steps || [];
        const images = exercise.images || [];

        const primaryMuscles = muscles
            .filter(m => m && m.is_primary)
            .map(m => m.name);

        const secondaryMuscles = muscles
            .filter(m => m && m.is_secondary)
            .map(m => m.name);

        const tertiaryMuscles = muscles
            .filter(m => m && m.is_tertiary)
            .map(m => m.name);

        const primaryCategory = categories
            .filter(c => c && c.is_primary)
            .map(c => c.name)[0];

        const equipment = categories
            .filter(c => c && !c.is_primary)
            .map(c => c.name);

        const difficulty = exercise.difficulty_name ? exercise.difficulty_name.toLowerCase() : null;

        const validSteps = steps
            .filter(s => s && s.text)
            .sort((a, b) => a.order - b.order)
            .map(s => s.text);

        const maleImages = images
            .filter(i => i && i.gender === 'male' && i.branded_video)
            .sort((a, b) => a.order - b.order);

        const femaleImages = images
            .filter(i => i && i.gender === 'female' && i.branded_video)
            .sort((a, b) => a.order - b.order);

        return {
            id: exercise.id,
            exercise_name: exercise.name,
            target: {
                Primary: primaryMuscles,
                Secondary: secondaryMuscles,
                Tertiary: tertiaryMuscles
            },
            category: primaryCategory,
            equipment,
            difficulty,
            force: exercise.force?.[0]?.name,
            mechanic: exercise.mechanic?.[0]?.name,
            steps: validSteps.length > 0 ? validSteps : [null],
            images: {
                male: maleImages,
                female: femaleImages
            }
        };
    }

    transformExerciseList(exercises) {
        return exercises.map(exercise => this.transformExercise(exercise));
    }

    transformPaginatedResponse(data, pagination) {
        return {
            data: this.transformExerciseList(data),
            pagination
        };
    }
}

module.exports = new TransformService(); 