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
    const { isPremium, user } = useAuth();
    const { exercises, isLoading, error, fetchExercises } = useExercises();
    const [program, setProgram] = useState([]);
    const [expandedWeek, setExpandedWeek] = useState(null);
    const [isSaving, setIsSaving] = useState(false);
    const [isSaved, setIsSaved] = useState(false);

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
            navigate('/login', { state: { from: `/programs/${programId}` } });
            return;
        }

        setIsSaving(true);
        try {
            const response = await fetch(`${import.meta.env.VITE_API_URL}/api/users/save-program`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${localStorage.getItem('token')}`
                },
                body: JSON.stringify({
                    programId,
                    programData: program,
                    programInfo: getProgramInfo()
                })
            });

            if (response.ok) {
                setIsSaved(true);
            } else {
                throw new Error('Failed to save program');
            }
        } catch (error) {
            console.error('Error saving program:', error);
            // You might want to show an error message to the user here
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
        <div className="min-h-screen bg-gradient-to-b from-gray-50 to-gray-100">
            {/* Hero Section */}
            <div
                className="relative h-screen bg-cover bg-center bg-fixed"
                style={{ backgroundImage: `url(${programs.find(p => p.id === programId)?.image})` }}
            >
                <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/50 to-transparent"></div>
                <div className="absolute inset-0 flex flex-col justify-end p-12">
                    <div className="max-w-7xl mx-auto w-full">
                        <div className="flex items-center justify-between mb-6">
                            <Link
                                to="/programs"
                                onClick={handleNav}
                                className="inline-flex items-center bg-white/10 backdrop-blur-sm text-white px-4 py-2 rounded-full hover:bg-white/20 transition-all"
                            >
                                <img className="w-5 h-5 mr-2 invert" src={backarrow} alt="back" />
                                <span className="font-medium">Back to Programs</span>
                            </Link>
                            <button
                                onClick={handleSaveProgram}
                                disabled={isSaving || isSaved}
                                className={`px-6 py-2 rounded-full font-medium transition-all ${isSaved
                                        ? 'bg-green-500 text-white cursor-default'
                                        : 'bg-white text-indigo-600 hover:bg-gray-100'
                                    }`}
                            >
                                {isSaving ? 'Saving...' : isSaved ? 'Saved to Dashboard' : 'Save to Dashboard'}
                            </button>
                        </div>
                        <h1 className="text-5xl font-bold text-white mb-6">{programInfo.title}</h1>
                        <p className="text-gray-200 text-xl max-w-3xl">{programInfo.longDescription}</p>
                    </div>
                </div>
            </div>

            {/* Program Schedule */}
            <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
                <div className="space-y-6">
                    <h2 className="text-3xl font-bold text-gray-900 mb-8">12-Week Program Schedule</h2>
                    {weekArr.map((week, index) => (
                        <Accordion
                            key={`week-${week}`}
                            expanded={expandedWeek === index}
                            onChange={() => handleWeekChange(index)}
                            sx={{
                                backgroundColor: "white !important",
                                borderRadius: "16px !important",
                                border: "none",
                                color: "black",
                                margin: "8px auto !important",
                                width: "100%",
                                fontFamily: "Arial !important",
                                boxShadow: "0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)",
                                transition: "all 0.3s ease-in-out",
                                "&:hover": {
                                    transform: "translateY(-2px)",
                                    boxShadow: "0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1)",
                                },
                            }}
                        >
                            <AccordionSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1a-content"
                                id="panel1a-header"
                                className="bg-white hover:bg-gray-50 transition-colors duration-200"
                            >
                                <div className="flex items-center w-full">
                                    <div className="flex items-center justify-center w-10 h-10 bg-gradient-to-r from-indigo-500 to-purple-600 text-white rounded-full mr-4">
                                        <span className="text-lg font-bold">{index + 1}</span>
                                    </div>
                                    <div>
                                        <p className="text-xl font-bold text-gray-800">Week {index + 1}</p>
                                        <p className="text-sm text-gray-500">3 days of training</p>
                                    </div>
                                </div>
                            </AccordionSummary>
                            <AccordionDetails className="p-0">
                                <div className="p-6 bg-gray-50">
                                    {dayArr.map((day, dayIndex) => (
                                        <div
                                            key={`day-${day}`}
                                            className="mb-6 last:mb-0"
                                        >
                                            <Day
                                                day={day}
                                                exercises={program[index]?.[dayIndex] || []}
                                            />
                                        </div>
                                    ))}
                                </div>
                            </AccordionDetails>
                        </Accordion>
                    ))}
                </div>
            </div>
        </div>
    );
}

export default ProgramDetails; 