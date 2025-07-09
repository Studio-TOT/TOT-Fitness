import { useEffect, useState } from "react";
import { useParams, Link, useNavigate } from "react-router-dom";
import { useAuth } from "../context/AuthContext";
import { useExercises } from "../context/ExerciseContext";
import backarrow from "../assets/back-arrow.svg";
import bp1 from "../assets/bp1.png";
import bw1 from "../assets/bw1.png";
import fb1 from "../assets/fb1.png";
import mb1 from "../assets/mb1.png";
import ct1lock from "../assets/ct1lock.png";
import sm1lock from "../assets/sm1lock.png";
import Accordion from "@mui/material/Accordion";
import AccordionSummary from "@mui/material/AccordionSummary";
import AccordionDetails from "@mui/material/AccordionDetails";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import Day from "../components/Day";
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "../components/ui/select";
import {
    generateBootyPumpProgram,
    generateMuscleBuildingProgram,
    generateFullBodyProgram,
    generateBodyweightProgram,
} from "../utils/programGenerator";

function ProgramDetails() {
    const { programId } = useParams();
    const navigate = useNavigate();
    const { isPremium, user, token } = useAuth();
    const { exercises, isLoading, error, fetchExercises } = useExercises();
    const [program, setProgram] = useState([]);
    const [userProgram, setUserProgram] = useState(null);
    const [expandedWeek, setExpandedWeek] = useState(null);
    const [isSaving, setIsSaving] = useState(false);
    const [isSaved, setIsSaved] = useState(false);
    const [errorMessage, setError] = useState(null);

    const programs = [
        {
            id: 'bodyweight',
            title: 'Bodyweight Program',
            description: 'Get fit anywhere without equipment. Perfect for beginners and those who prefer home workouts.',
            image: bw1,
            isPremium: false
        },
        {
            id: 'bootypump',
            title: 'Booty Pump Program',
            description: 'Build your best butt with this targeted program. Includes exercises for glutes, legs, and core.',
            image: bp1,
            isPremium: false
        },
        {
            id: 'fullbody',
            title: 'Full Body Program',
            description: 'Comprehensive full-body workouts for overall strength and fitness. Suitable for all levels.',
            image: fb1,
            isPremium: false
        },
        {
            id: 'musclebuilding',
            title: 'Muscle Building Program',
            description: 'Gain muscle mass and strength with this progressive overload program.',
            image: mb1,
            isPremium: false
        },
        {
            id: 'cardio',
            title: 'Cardio Training Program',
            description: 'Improve your cardiovascular health and endurance with our specialized cardio program.',
            image: ct1lock,
            isPremium: true
        },
        {
            id: 'strength',
            title: 'Strength Mastery Program',
            description: 'Master advanced strength training techniques and reach your peak performance.',
            image: sm1lock,
            isPremium: true
        }
    ];

    useEffect(() => {
        window.scrollTo(0, 0);
    }, []);

    useEffect(() => {
        if (!exercises || exercises.length === 0) {
            fetchExercises();
        }
    }, [exercises, fetchExercises]);

    useEffect(() => {
        if (!exercises) return;

        let generatedProgram;
        switch (programId) {
            case "bootypump":
                generatedProgram = generateBootyPumpProgram(exercises);
                break;
            case "musclebuilding":
                generatedProgram = generateMuscleBuildingProgram(exercises);
                break;
            case "fullbody":
                generatedProgram = generateFullBodyProgram(exercises);
                break;
            case "bodyweight":
                generatedProgram = generateBodyweightProgram(exercises);
                break;
            default:
                generatedProgram = [];
        }
        setProgram(generatedProgram || []);
    }, [programId, exercises]);

    useEffect(() => {
        const checkIfProgramSaved = async () => {
            if (!user || !token) return;

            try {
                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/users/saved-programs`, {
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                });

                if (response.ok) {
                    const data = await response.json();
                    const isProgramSaved = Array.isArray(data) && data.some(program => program.program_id === programId);
                    setIsSaved(isProgramSaved);
                }
            } catch (error) {
                console.error("Error checking saved programs:", error);
                setIsSaved(false);
            }
        };

        checkIfProgramSaved();
    }, [user, token, programId]);

    useEffect(() => {
        const fetchUserProgram = async () => {
            console.log('Token:', token);
            console.log('User:', user);
            if (!token) {
                console.log('No token available');
                return;
            }

            try {
                console.log('Fetching program:', programId);
                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/programs/${programId}`, {
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                });

                console.log('Response status:', response.status);
                if (response.ok) {
                    const data = await response.json();
                    console.log('Program data:', data);
                    // Handle both direct program data and nested program_data
                    const programData = data.program_data || data;
                    setUserProgram(programData);
                    // If it's a user program, set the program state with the weeks data
                    if (programData.weeks) {
                        setProgram(programData.weeks);
                    }
                } else {
                    const errorData = await response.json();
                    console.error('Error response:', errorData);
                }
            } catch (error) {
                console.error("Error fetching user program:", error);
            }
        };

        // Only fetch user program if it's not a predefined program ID
        if (!['bodyweight', 'bootypump', 'fullbody', 'musclebuilding', 'cardio', 'strength'].includes(programId)) {
            fetchUserProgram();
        }
    }, [programId, token, user]);

    const handleNav = () => {
        navigate(-1);
    };

    const handleWeekChange = (index) => {
        setExpandedWeek(expandedWeek === index ? null : index);
    };

    const dayArr = userProgram
        ? Array.from({ length: userProgram.weeks?.[0]?.days?.length || 0 }, (v, k) => k + 1)
        : Array.from({ length: 3 }, (v, k) => k + 1);
    const weekArr = userProgram
        ? Array.from({ length: userProgram.weeks?.length || 0 }, (v, k) => k + 1)
        : Array.from({ length: 12 }, (v, k) => k + 1);

    const getProgramInfo = () => {
        // If we have a user program, return its info
        if (userProgram) {
            return {
                title: userProgram.name || "Untitled Program",
                description: userProgram.description || "No description available",
                longDescription: userProgram.description || "No description available",
                weeks: userProgram.weeks?.length || 0,
                daysPerWeek: userProgram.weeks?.[0]?.days?.length || 0
            };
        }

        // Otherwise, handle predefined programs
        switch (programId) {
            case "bodyweight":
                return {
                    title: "Bodyweight Program",
                    description: "Get fit anywhere without equipment. Perfect for beginners and those who prefer home workouts.",
                    longDescription: "Looking for a simple and effective way to get fit without the need for any equipment? Consider a bodyweight program. Bodyweight exercises require no equipment and can be done anywhere, making them perfect for home workouts or when traveling. They're also great for people of all fitness levels, from beginners to experienced athletes."
                };
            case "bootypump":
                return {
                    title: "Booty Pump Program",
                    description: "Build your best butt with this targeted program. Includes exercises for glutes, legs, and core.",
                    longDescription: "Booty Pump is a 12-week program designed to strengthen and tone your glutes. The program includes a variety of exercises targeting the different muscles in your butt, suitable for all fitness levels. The program combines muscle-building exercises with advanced training techniques for maximum results."
                };
            case "fullbody":
                return {
                    title: "Full Body Program",
                    description: "Comprehensive full-body workouts for overall strength and fitness. Suitable for all levels.",
                    longDescription: "Full Body is a 12-week program designed to improve overall strength and conditioning. The program includes a variety of free weight exercises, such as dumbbell and barbell movements, to target all major muscle groups. The program is suitable for all fitness levels and is designed to progressively increase in difficulty."
                };
            case "musclebuilding":
                return {
                    title: "Muscle Building Program",
                    description: "Gain muscle mass and strength with this progressive overload program.",
                    longDescription: "Muscle Building is a 12-week program designed to increase muscle mass and definition. The program includes a variety of exercises targeting all major muscle groups, suitable for all fitness levels. The program combines muscle-building exercises with traditional training techniques for maximum results."
                };
            default:
                return {
                    title: "Program Not Found",
                    description: "The requested program could not be found.",
                    longDescription: "Please check the URL and try again."
                };
        }
    };

    const programInfo = getProgramInfo();

    const handleSaveProgram = async () => {
        if (!user) {
            setError("Please log in to save programs");
            return;
        }

        if (!token) {
            setError("Authentication token not found. Please log in again.");
            return;
        }

        setIsSaving(true);
        setError(null);

        try {
            if (isSaved) {
                // Unsave the program
                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/users/saved-programs/${programId}`, {
                    method: "DELETE",
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                });

                if (!response.ok) {
                    throw new Error("Failed to unsave program");
                }

                setIsSaved(false);
            } else {
                // Create a simplified program data structure
                const simplifiedProgramData = {
                    programId: programId,
                    programData: {
                        id: programId,
                        title: programInfo.title,
                        description: programInfo.description,
                        longDescription: programInfo.longDescription,
                        weeks: program.map((week, weekIndex) => ({
                            weekNumber: weekIndex + 1,
                            days: week.map((day, dayIndex) => ({
                                dayNumber: dayIndex + 1,
                                exercises: day.map(exercise => ({
                                    id: exercise.id,
                                    name: exercise.name,
                                    sets: exercise.sets,
                                    reps: exercise.reps,
                                    restTime: exercise.restTime
                                }))
                            }))
                        }))
                    },
                    programInfo: {
                        title: programInfo.title,
                        description: programInfo.description,
                        longDescription: programInfo.longDescription
                    }
                };

                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/users/save-program`, {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                        Authorization: `Bearer ${token}`,
                    },
                    body: JSON.stringify(simplifiedProgramData),
                });

                if (!response.ok) {
                    const errorData = await response.json().catch(() => ({}));
                    console.error("Error response:", errorData);
                    throw new Error(errorData.error || `HTTP error! status: ${response.status}`);
                }

                const data = await response.json();
                setIsSaved(true);
            }
        } catch (error) {
            console.error("Error saving/unsaving program:", error);
            setError(error.message || "Failed to save/unsave program. Please try again.");
        } finally {
            setIsSaving(false);
        }
    };

    if (isLoading) {
        return (
            <div className="min-h-screen flex items-center justify-center bg-gray-50">
                <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-gray-600"></div>
            </div>
        );
    }

    if (error) {
        return (
            <div className="min-h-screen flex items-center justify-center bg-gray-50">
                <div className="text-center">
                    <h2 className="text-2xl font-semibold text-red-600 mb-4">Error Loading Program</h2>
                    <p className="text-gray-600">{error}</p>
                    <button
                        onClick={handleNav}
                        className="mt-4 bg-gray-600 text-white px-6 py-2 rounded-md hover:bg-gray-700 transition-colors"
                    >
                        Go Back
                    </button>
                </div>
            </div>
        );
    }

    return (
        <div className="min-h-screen bg-white sm:mt-16">
            {/* Hero Section with Parallax Effect */}
            <div className="relative h-[50vh] md:h-[70vh] overflow-hidden">
                <div
                    className="absolute inset-0 bg-cover bg-center bg-fixed transform scale-105"
                    style={{
                        backgroundImage: `url(${programs.find(p => p.id === programId)?.image})`,
                        transform: 'translateZ(0)'
                    }}
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/50 to-transparent" />

                {/* Floating Action Buttons */}
                <div className="absolute top-4 left-4 right-4 flex justify-between items-center z-10">
                    <button
                        onClick={handleNav}
                        className="w-10 h-10 flex items-center justify-center bg-black/30 backdrop-blur-md rounded-full text-white hover:bg-black/40 transition-all"
                    >
                        <img className="w-5 h-5 invert" src={backarrow} alt="back" />
                    </button>
                    <button
                        onClick={handleSaveProgram}
                        disabled={isSaving}
                        className={`flex items-center gap-2 px-4 py-2 rounded-lg transition-colors ${isSaved
                            ? 'bg-red-500 hover:bg-red-600 text-white'
                            : 'bg-black/30 backdrop-blur-md text-white hover:bg-black/40'
                            }`}
                    >
                        {isSaving ? (
                            <svg className="animate-spin h-5 w-5" viewBox="0 0 24 24">
                                <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" fill="none" />
                                <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z" />
                            </svg>
                        ) : isSaved ? (
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" className="w-5 h-5">
                                <path d="M11.645 20.91l-.007-.003-.022-.012a15.247 15.247 0 01-.383-.218 25.18 25.18 0 01-4.244-3.17C4.688 15.36 2.25 12.174 2.25 8.25 2.25 5.322 4.714 3 7.688 3A5.5 5.5 0 0112 5.052 5.5 5.5 0 0116.313 3c2.973 0 5.437 2.322 5.437 5.25 0 3.925-2.438 7.111-4.739 9.256a25.175 25.175 0 01-4.244 3.17 15.247 15.247 0 01-.383.219l-.022.012-.007.004-.003.001a.752.752 0 01-.704 0l-.003-.001z" />
                            </svg>
                        ) : (
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor" className="w-5 h-5">
                                <path strokeLinecap="round" strokeLinejoin="round" d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12z" />
                            </svg>
                        )}
                        {isSaving ? 'Saving...' : isSaved ? 'Saved' : 'Save Program'}
                    </button>
                </div>

                {/* Program Info Overlay */}
                <div className="absolute bottom-0 left-0 right-0 p-6 md:p-12">
                    <div className="max-w-7xl mx-auto">
                        <div className="flex items-center gap-2 mb-3">
                            <span className="px-3 py-1 bg-white/10 backdrop-blur-md rounded-full text-white text-sm">
                                {userProgram ? 'Custom' : (programId === 'cardio' || programId === 'strength' ? 'Premium' : 'Free')}
                            </span>
                            <span className="px-3 py-1 bg-white/10 backdrop-blur-md rounded-full text-white text-sm">
                                {userProgram ? `${userProgram.weeks?.length || 0} Weeks` : '12 Weeks'}
                            </span>
                        </div>
                        <h1 className="text-3xl md:text-5xl font-bold text-white mb-3">{programInfo.title}</h1>
                        <p className="text-gray-200 text-base md:text-lg max-w-2xl opacity-90 mb-12">{programInfo.description}</p>
                    </div>
                </div>
            </div>

            {/* Program Content */}
            <div className="relative -mt-6 md:-mt-12 rounded-t-3xl bg-white">
                <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
                    {/* Quick Stats */}
                    <div className="grid grid-cols-3 gap-4 mb-8">
                        <div className="bg-gray-50 rounded-2xl p-4 text-center">
                            <div className="text-2xl font-bold text-gray-900">
                                {userProgram ? userProgram.weeks?.length || 0 : 12}
                            </div>
                            <div className="text-sm text-gray-500">Weeks</div>
                        </div>
                        <div className="bg-gray-50 rounded-2xl p-4 text-center">
                            <div className="text-2xl font-bold text-gray-900">
                                {userProgram ?
                                    userProgram.weeks?.reduce((total, week) =>
                                        total + week.days.filter(day => day.exercises.length > 0).length, 0) || 0
                                    : 36}
                            </div>
                            <div className="text-sm text-gray-500">Workouts</div>
                        </div>
                        <div className="bg-gray-50 rounded-2xl p-4 text-center">
                            <div className="text-2xl font-bold text-gray-900">
                                {userProgram ? userProgram.weeks?.[0]?.days?.length || 0 : 3}
                            </div>
                            <div className="text-sm text-gray-500">Days/Week</div>
                        </div>
                    </div>

                    {/* Program Description */}
                    <div className="mb-8">
                        <h2 className="text-xl font-bold text-gray-900 mb-4">About This Program</h2>
                        <p className="text-gray-600 leading-relaxed">{programInfo.longDescription}</p>
                    </div>

                    {/* Week Selector */}
                    <div className="mb-6">
                        <div className="flex items-center justify-between mb-4">
                            <h2 className="text-xl font-bold text-gray-900">Program Schedule</h2>
                        </div>
                        <div className="mb-4">
                            <Select
                                value={expandedWeek !== null ? expandedWeek.toString() : ''}
                                onValueChange={(value) => handleWeekChange(value === '' ? null : parseInt(value))}
                            >
                                <SelectTrigger className="w-[160px] bg-gray-50 rounded-2xl p-4">
                                    <SelectValue placeholder="Select a week" />
                                </SelectTrigger>
                                <SelectContent>
                                    {weekArr.map((week, index) => (
                                        <SelectItem key={week} value={index.toString()}>
                                            Week {week}
                                        </SelectItem>
                                    ))}
                                </SelectContent>
                            </Select>
                        </div>
                    </div>

                    {/* Week Content */}
                    {expandedWeek !== null && (
                        <div className="space-y-4">
                            {dayArr.map((day, dayIndex) => {
                                // Get the current week and day data
                                const weekData = userProgram
                                    ? userProgram.weeks[expandedWeek]
                                    : program[expandedWeek];
                                const dayData = userProgram
                                    ? weekData?.days[dayIndex]
                                    : { exercises: program[expandedWeek]?.[dayIndex] || [] };

                                return (
                                    <Day
                                        key={`day-${day}`}
                                        day={day}
                                        description={dayData?.description}
                                        exercises={dayData?.exercises || []}
                                    />
                                );
                            })}
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
}

export default ProgramDetails; 