import { useState, useEffect } from "react";
import { useParams, useNavigate, Link } from "react-router-dom";
import { Card, CardContent, CardHeader, CardTitle } from "./ui/card";
import { Button } from "./ui/button";
import { Progress } from "./ui/progress";
import { Checkbox } from "../assets/components/ui/checkbox";

const ProgramWorkout = () => {
    const { programId, week, day } = useParams();
    const navigate = useNavigate();
    const [program, setProgram] = useState(null);
    const [currentWorkout, setCurrentWorkout] = useState(null);
    const [loading, setLoading] = useState(true);
    const [completedExercises, setCompletedExercises] = useState([]);
    const [error, setError] = useState(null);

    useEffect(() => {
        const fetchProgram = async () => {
            try {
                // First fetch the program structure
                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/programs/${programId}`, {
                    headers: {
                        Authorization: `Bearer ${localStorage.getItem("jwt")}`,
                    },
                });

                if (!response.ok) {
                    throw new Error('Failed to fetch program');
                }

                const data = await response.json();
                console.log('Program data:', data); // Debug log
                setProgram(data);

                // Find the current week and day in the program structure
                const currentWeek = parseInt(week);
                const currentDay = parseInt(day);

                const weekData = data.weeks.find(w => w.week_number === currentWeek);
                if (!weekData) {
                    console.error('Week not found. Available weeks:', data.weeks); // Debug log
                    throw new Error(`Week ${currentWeek} not found in program structure`);
                }

                const dayData = weekData.days.find(d => d.day_number === currentDay);
                if (!dayData) {
                    console.error('Day not found. Available days:', weekData.days); // Debug log
                    throw new Error(`Day ${currentDay} not found in week ${currentWeek}`);
                }

                setCurrentWorkout({
                    ...dayData,
                    week: currentWeek,
                    day: currentDay
                });

                // Get completed exercises for this workout
                const completedResponse = await fetch(
                    `${import.meta.env.VITE_API_URL}/api/programs/${programId}/workout/${currentWeek}/${currentDay}/completed`,
                    {
                        headers: {
                            Authorization: `Bearer ${localStorage.getItem("jwt")}`,
                        },
                    }
                );

                if (!completedResponse.ok) {
                    throw new Error('Failed to fetch completed exercises');
                }

                const completedData = await completedResponse.json();
                setCompletedExercises(completedData.completed_exercises || []);
            } catch (error) {
                console.error("Error fetching program:", error);
                setError(error.message);
            } finally {
                setLoading(false);
            }
        };

        fetchProgram();
    }, [programId, week, day]);

    const handleExerciseComplete = async (exerciseId) => {
        try {
            const response = await fetch(
                `${import.meta.env.VITE_API_URL}/api/programs/${programId}/workout/${currentWorkout.week}/${currentWorkout.day}/complete/${exerciseId}`,
                {
                    method: "POST",
                    headers: {
                        Authorization: `Bearer ${localStorage.getItem("jwt")}`,
                        "Content-Type": "application/json",
                    },
                }
            );

            if (!response.ok) {
                throw new Error('Failed to complete exercise');
            }

            const data = await response.json();

            // Update completed exercises based on the response
            if (data.completed) {
            setCompletedExercises([...completedExercises, exerciseId]);
            } else {
                setCompletedExercises(completedExercises.filter(id => id !== exerciseId));
            }
        } catch (error) {
            console.error("Error completing exercise:", error);
            setError(error.message);
        }
    };

    const handleWorkoutComplete = async () => {
        try {
            const response = await fetch(
                `${import.meta.env.VITE_API_URL}/api/programs/${programId}/workout/${currentWorkout.week}/${currentWorkout.day}/complete`,
                {
                    method: "POST",
                    headers: {
                        Authorization: `Bearer ${localStorage.getItem("jwt")}`,
                        "Content-Type": "application/json",
                    },
                }
            );

            if (!response.ok) {
                throw new Error('Failed to complete workout');
            }

            const data = await response.json();

            // Navigate to dashboard after completing workout
            navigate('/dashboard');
        } catch (error) {
            console.error("Error completing workout:", error);
            setError(error.message);
        }
    };

    if (loading) {
        return <div>Loading...</div>;
    }

    if (error) {
        return (
            <div className="container mx-auto p-4 mt-16">
                <Card>
                    <CardContent className="p-4">
                        <div className="text-red-500">Error: {error}</div>
                        <Button onClick={() => navigate(`/programs/${programId}`)} className="mt-4">
                            Back to Program
                        </Button>
                    </CardContent>
                </Card>
            </div>
        );
    }

    if (!program || !currentWorkout) {
        return (
            <div className="container mx-auto p-4 mt-16">
                <Card>
                    <CardContent className="p-4">
                        <div>Program not found</div>
                        <Button onClick={() => navigate(`/programs/${programId}`)} className="mt-4">
                            Back to Program
                        </Button>
                    </CardContent>
                </Card>
            </div>
        );
    }

    const workoutProgress = (completedExercises.length / currentWorkout.exercises.length) * 100;

    return (
        <div className="container mx-auto p-4 mt-16">
            <Card>
                <CardHeader>
                    <CardTitle>
                        Week {currentWorkout.week}, Day {currentWorkout.day}
                    </CardTitle>
                </CardHeader>
                <CardContent>
                    <div className="space-y-6">
                        <div className="space-y-2">
                            <div className="flex justify-between text-sm">
                                <span>Progress</span>
                                <span>{Math.round(workoutProgress)}%</span>
                            </div>
                            <Progress value={workoutProgress} className="h-2" />
                        </div>

                        <div className="space-y-4">
                            {currentWorkout.exercises.map((exercise) => (
                                <Card key={exercise.id}>
                                    <CardContent className="p-4">
                                        <div className="flex items-center justify-between">
                                            <div className="space-y-1">
                                                <Link to={`/exercises/${exercise.exercise_id}`} className="font-medium hover:underline">
                                                    {exercise.exercise_name}
                                                </Link>
                                                <p className="text-sm text-muted-foreground">
                                                    {exercise.sets} sets × {exercise.reps} reps
                                                </p>
                                            </div>
                                            <Checkbox
                                                checked={completedExercises.includes(exercise.id)}
                                                onCheckedChange={() => handleExerciseComplete(exercise.id)}
                                            />
                                        </div>
                                    </CardContent>
                                </Card>
                            ))}
                        </div>

                        <Button
                            className="w-full"
                            onClick={handleWorkoutComplete}
                            disabled={completedExercises.length !== currentWorkout.exercises.length}
                        >
                            Complete Workout
                        </Button>
                    </div>
                </CardContent>
            </Card>
        </div>
    );
};

export default ProgramWorkout; 