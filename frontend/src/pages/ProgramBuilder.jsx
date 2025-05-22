import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { useAuth } from "../context/AuthContext";
import { useExercises } from "../context/ExerciseContext";
import { Button } from "../components/ui/button";
import { Input } from "../components/ui/input";
import { Textarea } from "../components/ui/textarea";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "../components/ui/select";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "../components/ui/tabs";
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "../components/ui/accordion";
import { Card, CardContent, CardHeader, CardTitle } from "../components/ui/card";
import { toast } from "../components/ui/use-toast";

const ProgramBuilder = () => {
    const navigate = useNavigate();
    const { user, token } = useAuth();
    const { exercises, fetchExercises } = useExercises();
    const [searchTerm, setSearchTerm] = useState("");
    const [currentPage, setCurrentPage] = useState(1);
    const [isLoading, setIsLoading] = useState(false);
    const [program, setProgram] = useState({
        name: "",
        description: "",
        difficulty: "beginner",
        duration_weeks: 4,
        is_public: false,
        weeks: Array(4).fill().map((_, weekIndex) => ({
            week_number: weekIndex + 1,
            description: "",
            days: Array(5).fill().map((_, dayIndex) => ({
                day_number: dayIndex + 1,
                description: "",
                exercises: []
            }))
        }))
    });

    const [activeWeek, setActiveWeek] = useState(0);
    const [activeDay, setActiveDay] = useState(0);

    useEffect(() => {
        if (!exercises || exercises.length === 0) {
            setIsLoading(true);
            fetchExercises().finally(() => setIsLoading(false));
        }
    }, [exercises, fetchExercises]);

    // Helper function to get exercises for the select dropdown
    const getExercisesForSelect = () => {
        if (!exercises) return [];
        // Handle both array and paginated response formats
        const exerciseList = Array.isArray(exercises) ? exercises : exercises.data || [];
        return exerciseList
            .filter(ex =>
                ex.name?.toLowerCase().includes(searchTerm.toLowerCase()) ||
                ex.exercise_name?.toLowerCase().includes(searchTerm.toLowerCase())
            )
            .map(ex => ({
                id: ex.id.toString(),
                name: ex.name || ex.exercise_name
            }));
    };

    const handleProgramChange = (field, value) => {
        setProgram(prev => ({
            ...prev,
            [field]: value
        }));
    };

    const handleWeekChange = (weekIndex, field, value) => {
        setProgram(prev => ({
            ...prev,
            weeks: prev.weeks.map((week, index) =>
                index === weekIndex ? { ...week, [field]: value } : week
            )
        }));
    };

    const handleDayChange = (weekIndex, dayIndex, field, value) => {
        setProgram(prev => ({
            ...prev,
            weeks: prev.weeks.map((week, wIndex) =>
                wIndex === weekIndex ? {
                    ...week,
                    days: week.days.map((day, dIndex) =>
                        dIndex === dayIndex ? { ...day, [field]: value } : day
                    )
                } : week
            )
        }));
    };

    const addExercise = (weekIndex, dayIndex) => {
        setProgram(prev => ({
            ...prev,
            weeks: prev.weeks.map((week, wIndex) =>
                wIndex === weekIndex ? {
                    ...week,
                    days: week.days.map((day, dIndex) =>
                        dIndex === dayIndex ? {
                            ...day,
                            exercises: [...day.exercises, {
                                exercise_id: "",
                                sets: 3,
                                reps: 12,
                                rest_time: 60,
                                notes: ""
                            }]
                        } : day
                    )
                } : week
            )
        }));
    };

    const removeExercise = (weekIndex, dayIndex, exerciseIndex) => {
        setProgram(prev => ({
            ...prev,
            weeks: prev.weeks.map((week, wIndex) =>
                wIndex === weekIndex ? {
                    ...week,
                    days: week.days.map((day, dIndex) =>
                        dIndex === dayIndex ? {
                            ...day,
                            exercises: day.exercises.filter((_, eIndex) => eIndex !== exerciseIndex)
                        } : day
                    )
                } : week
            )
        }));
    };

    const handleExerciseChange = (weekIndex, dayIndex, exerciseIndex, field, value) => {
        setProgram(prev => ({
            ...prev,
            weeks: prev.weeks.map((week, wIndex) =>
                wIndex === weekIndex ? {
                    ...week,
                    days: week.days.map((day, dIndex) =>
                        dIndex === dayIndex ? {
                            ...day,
                            exercises: day.exercises.map((exercise, eIndex) =>
                                eIndex === exerciseIndex ? { ...exercise, [field]: value } : exercise
                            )
                        } : day
                    )
                } : week
            )
        }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();

        // Check if we have a valid token
        if (!token) {
            toast({
                title: "Authentication Error",
                description: "Please log in again to create a program",
                variant: "destructive"
            });
            navigate('/login');
            return;
        }

        try {
            const response = await fetch(`${import.meta.env.VITE_API_URL}/api/programs`, {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    Authorization: `Bearer ${token}`
                },
                body: JSON.stringify(program)
            });

            if (!response.ok) {
                const errorData = await response.json();
                if (response.status === 403) {
                    // Token is invalid or expired
                    toast({
                        title: "Session Expired",
                        description: "Please log in again to continue",
                        variant: "destructive"
                    });
                    navigate('/login');
                    return;
                }
                throw new Error(errorData.error || "Failed to create program");
            }

            const data = await response.json();
            toast({
                title: "Success",
                description: "Program created successfully"
            });
            navigate(`/programs/${data.slug}`);
        } catch (error) {
            console.error("Error creating program:", error);
            toast({
                title: "Error",
                description: error.message || "Failed to create program",
                variant: "destructive"
            });
        }
    };

    return (
        <div className="container mx-auto py-8 mt-12">
            <h1 className="text-3xl font-bold mb-8">Create New Program</h1>

            <form onSubmit={handleSubmit} className="space-y-8">
                <Card>
                    <CardHeader>
                        <CardTitle>Program Details</CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-4">
                        <div>
                            <label className="block text-sm font-medium mb-2">Program Name</label>
                            <Input
                                value={program.name}
                                onChange={(e) => handleProgramChange("name", e.target.value)}
                                placeholder="Enter program name"
                                required
                            />
                        </div>

                        <div>
                            <label className="block text-sm font-medium mb-2">Description</label>
                            <Textarea
                                value={program.description}
                                onChange={(e) => handleProgramChange("description", e.target.value)}
                                placeholder="Enter program description"
                                required
                            />
                        </div>

                        <div className="grid grid-cols-2 gap-4">
                            <div>
                                <label className="block text-sm font-medium mb-2">Difficulty</label>
                                <Select
                                    value={program.difficulty}
                                    onValueChange={(value) => handleProgramChange("difficulty", value)}
                                >
                                    <SelectTrigger>
                                        <SelectValue placeholder="Select difficulty" />
                                    </SelectTrigger>
                                    <SelectContent>
                                        <SelectItem value="beginner">Beginner</SelectItem>
                                        <SelectItem value="intermediate">Intermediate</SelectItem>
                                        <SelectItem value="advanced">Advanced</SelectItem>
                                    </SelectContent>
                                </Select>
                            </div>

                            <div>
                                <label className="block text-sm font-medium mb-2">Duration (weeks)</label>
                                <Input
                                    type="number"
                                    value={program.duration_weeks}
                                    onChange={(e) => handleProgramChange("duration_weeks", parseInt(e.target.value))}
                                    min="1"
                                    max="12"
                                    required
                                />
                            </div>
                        </div>
                    </CardContent>
                </Card>

                <Card>
                    <CardHeader>
                        <CardTitle>Program Structure</CardTitle>
                    </CardHeader>
                    <CardContent>
                        <Tabs value={activeWeek.toString()} onValueChange={(value) => setActiveWeek(parseInt(value))}>
                            <TabsList className="grid grid-cols-4 gap-4">
                                {program.weeks.map((week, index) => (
                                    <TabsTrigger key={index} value={index.toString()}>
                                        Week {index + 1}
                                    </TabsTrigger>
                                ))}
                            </TabsList>

                            {program.weeks.map((week, weekIndex) => (
                                <TabsContent key={weekIndex} value={weekIndex.toString()}>
                                    <div className="space-y-4">
                                        <div>
                                            <label className="block text-sm font-medium mb-2">Week Description</label>
                                            <Textarea
                                                value={week.description}
                                                onChange={(e) => handleWeekChange(weekIndex, "description", e.target.value)}
                                                placeholder="Enter week description"
                                            />
                                        </div>

                                        <Accordion type="single" collapsible>
                                            {week.days.map((day, dayIndex) => (
                                                <AccordionItem key={dayIndex} value={`day-${dayIndex}`}>
                                                    <AccordionTrigger>Day {dayIndex + 1}</AccordionTrigger>
                                                    <AccordionContent>
                                                        <div className="space-y-4">
                                                            <div>
                                                                <label className="block text-sm font-medium mb-2">Day Description</label>
                                                                <Textarea
                                                                    value={day.description}
                                                                    onChange={(e) => handleDayChange(weekIndex, dayIndex, "description", e.target.value)}
                                                                    placeholder="Enter day description"
                                                                />
                                                            </div>

                                                            <div className="space-y-4">
                                                                <div className="flex justify-between items-center">
                                                                    <h4 className="text-lg font-medium">Exercises</h4>
                                                                    <Button
                                                                        type="button"
                                                                        onClick={() => addExercise(weekIndex, dayIndex)}
                                                                    >
                                                                        Add Exercise
                                                                    </Button>
                                                                </div>

                                                                {day.exercises.map((exercise, exerciseIndex) => (
                                                                    <Card key={exerciseIndex}>
                                                                        <CardContent className="pt-6">
                                                                            <div className="grid grid-cols-2 gap-4">
                                                                                <div>
                                                                                    <label className="block text-sm font-medium mb-2">Exercise</label>
                                                                                    <Select
                                                                                        value={exercise.exercise_id}
                                                                                        onValueChange={(value) => handleExerciseChange(weekIndex, dayIndex, exerciseIndex, "exercise_id", value)}
                                                                                    >
                                                                                        <SelectTrigger>
                                                                                            <SelectValue placeholder="Select exercise" />
                                                                                        </SelectTrigger>
                                                                                        <SelectContent className="max-h-[300px] overflow-y-auto">
                                                                                            <div className="sticky top-0 z-10 p-2 bg-background border-b">
                                                                                                <Input
                                                                                                    placeholder="Search exercises..."
                                                                                                    value={searchTerm}
                                                                                                    onChange={(e) => setSearchTerm(e.target.value)}
                                                                                                    className="w-full"
                                                                                                />
                                                                                            </div>
                                                                                            {isLoading ? (
                                                                                                <div className="p-4 text-center">Loading exercises...</div>
                                                                                            ) : getExercisesForSelect().length === 0 ? (
                                                                                                <div className="p-4 text-center">No exercises found</div>
                                                                                            ) : (
                                                                                                getExercisesForSelect().map((ex) => (
                                                                                                    <SelectItem key={ex.id} value={ex.id}>
                                                                                                        {ex.name}
                                                                                                    </SelectItem>
                                                                                                ))
                                                                                            )}
                                                                                        </SelectContent>
                                                                                    </Select>
                                                                                </div>

                                                                                <div className="grid grid-cols-3 gap-2">
                                                                                    <div>
                                                                                        <label className="block text-sm font-medium mb-2">Sets</label>
                                                                                        <Input
                                                                                            type="number"
                                                                                            value={exercise.sets}
                                                                                            onChange={(e) => handleExerciseChange(weekIndex, dayIndex, exerciseIndex, "sets", parseInt(e.target.value))}
                                                                                            min="1"
                                                                                        />
                                                                                    </div>

                                                                                    <div>
                                                                                        <label className="block text-sm font-medium mb-2">Reps</label>
                                                                                        <Input
                                                                                            type="number"
                                                                                            value={exercise.reps}
                                                                                            onChange={(e) => handleExerciseChange(weekIndex, dayIndex, exerciseIndex, "reps", parseInt(e.target.value))}
                                                                                            min="1"
                                                                                        />
                                                                                    </div>

                                                                                    <div>
                                                                                        <label className="block text-sm font-medium mb-2">Rest (sec)</label>
                                                                                        <Input
                                                                                            type="number"
                                                                                            value={exercise.rest_time}
                                                                                            onChange={(e) => handleExerciseChange(weekIndex, dayIndex, exerciseIndex, "rest_time", parseInt(e.target.value))}
                                                                                            min="0"
                                                                                            step="15"
                                                                                        />
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                            <div className="mt-4">
                                                                                <label className="block text-sm font-medium mb-2">Notes</label>
                                                                                <Textarea
                                                                                    value={exercise.notes}
                                                                                    onChange={(e) => handleExerciseChange(weekIndex, dayIndex, exerciseIndex, "notes", e.target.value)}
                                                                                    placeholder="Enter exercise notes"
                                                                                />
                                                                            </div>

                                                                            <Button
                                                                                type="button"
                                                                                variant="destructive"
                                                                                className="mt-4"
                                                                                onClick={() => removeExercise(weekIndex, dayIndex, exerciseIndex)}
                                                                            >
                                                                                Remove Exercise
                                                                            </Button>
                                                                        </CardContent>
                                                                    </Card>
                                                                ))}
                                                            </div>
                                                        </div>
                                                    </AccordionContent>
                                                </AccordionItem>
                                            ))}
                                        </Accordion>
                                    </div>
                                </TabsContent>
                            ))}
                        </Tabs>
                    </CardContent>
                </Card>

                <div className="flex justify-end space-x-4">
                    <Button
                        type="button"
                        variant="outline"
                        onClick={() => navigate(-1)}
                    >
                        Cancel
                    </Button>
                    <Button type="submit">
                        Create Program
                    </Button>
                </div>
            </form>
        </div>
    );
};

export default ProgramBuilder; 