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

    const handleNav = () => {
        navigate(-1);
    };

    const handleWeekChange = (index) => {
        setExpandedWeek(expandedWeek === index ? null : index);
    };

    const dayArr = Array.from({ length: 3 }, (v, k) => k + 1);
    const weekArr = Array.from({ length: 12 }, (v, k) => k + 1);

    const getProgramInfo = () => {
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
        } catch (error) {
            console.error("Error saving program:", error);
            setError(error.message || "Failed to save program. Please try again.");
            setIsSaved(false);
        } finally {
            setIsSaving(false);
        }
    };

    if (isLoading) {
        return (
            <div className="min-h-screen flex items-center justify-center bg-gray-50">
                <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-indigo-600"></div>
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
                        className="mt-4 bg-indigo-600 text-white px-6 py-2 rounded-md hover:bg-indigo-700 transition-colors"
                    >
                        Go Back
                    </button>
                </div>
            </div>
        );
    }

    return (
        <div className="min-h-screen bg-white">
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
                        disabled={isSaving || isSaved}
                        className={`w-10 h-10 flex items-center justify-center rounded-full transition-all ${isSaved
                                ? 'bg-green-500 text-white'
                                : 'bg-black/30 backdrop-blur-md text-white hover:bg-black/40'
                            }`}
                    >
                        {isSaving ? (
                            <div className="w-5 h-5 border-2 border-white border-t-transparent rounded-full animate-spin" />
                        ) : isSaved ? (
                            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                            </svg>
                        ) : (
                            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                            </svg>
                        )}
                    </button>
                </div>

                {/* Program Info Overlay */}
                <div className="absolute bottom-0 left-0 right-0 p-6 md:p-12">
                    <div className="max-w-7xl mx-auto">
                        <div className="flex items-center gap-2 mb-3">
                            <span className="px-3 py-1 bg-white/10 backdrop-blur-md rounded-full text-white text-sm">
                                {programId === 'cardio' || programId === 'strength' ? 'Premium' : 'Free'}
                            </span>
                            <span className="px-3 py-1 bg-white/10 backdrop-blur-md rounded-full text-white text-sm">
                                12 Weeks
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
                            <div className="text-2xl font-bold text-gray-900">12</div>
                            <div className="text-sm text-gray-500">Weeks</div>
                        </div>
                        <div className="bg-gray-50 rounded-2xl p-4 text-center">
                            <div className="text-2xl font-bold text-gray-900">36</div>
                            <div className="text-sm text-gray-500">Workouts</div>
                        </div>
                        <div className="bg-gray-50 rounded-2xl p-4 text-center">
                            <div className="text-2xl font-bold text-gray-900">3</div>
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
                            <div className="text-sm text-gray-500 md:hidden">
                                {expandedWeek !== null ? `Week ${expandedWeek + 1}` : 'Select a week'}
                            </div>
                        </div>
                        <div className="flex gap-2 overflow-x-auto pb-4 -mx-4 px-4 scrollbar-hide">
                            {weekArr.map((week, index) => (
                                <button
                                    key={week}
                                    onClick={() => handleWeekChange(index)}
                                    className={`flex-shrink-0 w-16 h-16 rounded-2xl flex flex-col items-center justify-center transition-all ${expandedWeek === index
                                            ? 'bg-indigo-600 text-white'
                                            : 'bg-gray-50 text-gray-600 hover:bg-gray-100'
                                        }`}
                                >
                                    <span className="text-lg font-bold">Week</span>
                                    <span className="text-2xl font-bold">{week}</span>
                                </button>
                            ))}
                        </div>
                    </div>

                    {/* Week Content */}
                    {expandedWeek !== null && (
                        <div className="space-y-4">
                            {dayArr.map((day, dayIndex) => (
                                <div
                                    key={`day-${day}`}
                                    className="bg-gray-50 rounded-2xl p-4"
                                >
                                    <div className="flex items-center gap-3 mb-4">
                                        <div className="w-10 h-10 bg-indigo-600 rounded-full flex items-center justify-center text-white font-bold">
                                            {day}
                                        </div>
                                        <div>
                                            <h3 className="font-bold text-gray-900">Day {day}</h3>
                                            <p className="text-sm text-gray-500">
                                                {program[expandedWeek]?.[dayIndex]?.length || 0} exercises
                                            </p>
                                        </div>
                                    </div>
                                    <Day
                                        day={day}
                                        exercises={program[expandedWeek]?.[dayIndex] || []}
                                    />
                                </div>
                            ))}
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
}

export default ProgramDetails; 