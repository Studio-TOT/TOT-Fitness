import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { useAuth } from "../context/AuthContext";
import { Card, CardContent, CardHeader, CardTitle } from "./ui/card";
import { Progress } from "./ui/progress";
import { Button } from "./ui/button";
import {
    Dialog,
    DialogContent,
    DialogDescription,
    DialogFooter,
    DialogHeader,
    DialogTitle,
    DialogTrigger,
} from "../components/ui/dialog";
import {
    HoverCard,
    HoverCardContent,
    HoverCardTrigger,
} from "../components/ui/hover-card";

const ProgramProgress = ({ programId, status, title, description, total_exercises, completed_exercises = 0, image_url, type, created_by, user_email }) => {
    const navigate = useNavigate();
    const { user } = useAuth();
    const [progress, setProgress] = useState(null);
    const [loading, setLoading] = useState(true);
    const [isQuitting, setIsQuitting] = useState(false);

    useEffect(() => {
        const fetchProgress = async () => {
            if (status === "saved") {
                setProgress({
                    current_week: 1,
                    current_day: 1,
                    total_exercises,
                    completed_exercises: 0,
                    total_days: 36, // 12 weeks * 3 days
                    completed_days: 0
                });
                setLoading(false);
                return;
            }

            if (status !== "in_progress") {
                setProgress({
                    current_week: 1,
                    current_day: 1,
                    total_exercises,
                    completed_exercises: 0,
                    total_days: 36,
                    completed_days: 0
                });
                setLoading(false);
                return;
            }

            try {
                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/programs/${programId}/progress`, {
                    headers: {
                        Authorization: `Bearer ${localStorage.getItem("jwt")}`,
                    },
                });
                if (!response.ok) {
                    throw new Error('Failed to fetch progress');
                }
                const data = await response.json();
                // Calculate completed days based on current week and day
                // If we're on week 2 day 1, it means we completed week 1 (3 days)
                const completed_days = ((data.current_week - 1) * 3) + (data.current_day - 1);
                setProgress({
                    ...data,
                    total_days: 36, // 12 weeks * 3 days
                    completed_days
                });
            } catch (error) {
                console.error("Error fetching progress:", error);
                setProgress({
                    current_week: 1,
                    current_day: 1,
                    total_exercises,
                    completed_exercises: 0,
                    total_days: 36,
                    completed_days: 0
                });
            } finally {
                setLoading(false);
            }
        };

        fetchProgress();
    }, [programId, status, total_exercises]);

    const handleStartProgram = async () => {
        try {
            if (status === "saved") {
                // Start a new program
                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/programs/${programId}/start`, {
                    method: 'POST',
                    headers: {
                        Authorization: `Bearer ${localStorage.getItem("jwt")}`,
                    },
                });

                if (!response.ok) {
                    throw new Error('Failed to start program');
                }
            }

            // Navigate to the workout page with the current week and day
            navigate(`/programs/${programId}/workout/${progress.current_week}/${progress.current_day}`);
        } catch (error) {
            console.error("Error starting program:", error);
            // You might want to show an error message to the user here
        }
    };

    const handleQuitProgram = async () => {
        try {
            setIsQuitting(true);
            const response = await fetch(`${import.meta.env.VITE_API_URL}/api/programs/${programId}/quit`, {
                method: 'POST',
                headers: {
                    Authorization: `Bearer ${localStorage.getItem("jwt")}`,
                },
            });

            if (!response.ok) {
                throw new Error('Failed to quit program');
            }

            // Refresh the page to update the program list
            window.location.reload();
        } catch (error) {
            console.error("Error quitting program:", error);
        } finally {
            setIsQuitting(false);
        }
    };

    if (loading) {
        return <div>Loading...</div>;
    }

    if (!progress) {
        return null;
    }

    // Determine the label to show
    const getLabel = () => {
        if (type === 'predefined' || (typeof programId === 'number' && programId <= 5)) {
            return { text: 'Official', style: 'bg-gradient-to-r from-blue-500 to-purple-500 text-white shadow-sm' };
        } else if (type === 'user_created' || type === 'saved') {
            const username = user_email ? user_email.split('@')[0] : (user?.email ? user.email.split('@')[0] : 'User');
            return { text: `by ${username}`, style: 'bg-gray-100 text-gray-700 border border-gray-200' };
        }
        return null;
    };

    const label = getLabel();

    // For saved programs, show a simplified card without progress
    if (status === "saved") {
        return (
            <Card className="relative bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300 overflow-hidden">
                {/* Background Image */}
                {image_url && (
                    <div
                        className="absolute inset-0 bg-cover bg-center opacity-20"
                        style={{ backgroundImage: `url(${image_url})` }}
                    />
                )}
                <div className="absolute inset-0 bg-white/30 backdrop-blur-[2px]" />

                <div className="relative z-10">
                    <CardHeader className="pb-2">
                        <div className="flex items-center justify-between">
                            <CardTitle className="text-lg font-medium text-gray-800">{title || "Program Progress"}</CardTitle>
                            {label && (
                                <span className={`px-2 py-1 text-xs font-medium rounded-full ${label.style}`}>
                                    {label.text}
                                </span>
                            )}
                        </div>
                    </CardHeader>
                    <CardContent>
                        <div className="space-y-4">
                            <div className="flex justify-between items-center">
                                <span className="text-sm text-gray-500">Ready to Start</span>
                                <span className="text-sm font-medium text-gray-600">
                                    {progress.total_exercises} exercises • 12 weeks
                                </span>
                            </div>

                            <div className="text-sm text-gray-500 text-center py-2">
                                Click "Start Program" to begin your fitness journey!
                            </div>

                            <div className="flex justify-center">
                                <Button
                                    variant="ghost"
                                    size="sm"
                                    onClick={handleStartProgram}
                                    className="bg-gray-900 hover:bg-gray-200 text-white px-6 py-2 rounded-md transition-all duration-200"
                                >
                                    Start Program
                                </Button>
                            </div>
                        </div>
                    </CardContent>
                </div>
            </Card>
        );
    }

    // For active/in-progress programs, show full progress
    const completionPercentage = progress.total_days > 0
        ? Math.round((progress.completed_days / progress.total_days) * 100)
        : 0;

    return (
        <Card className="relative bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300 overflow-hidden">
            {/* Background Image */}
            {image_url && (
                <div
                    className="absolute inset-0 bg-cover bg-center opacity-20"
                    style={{ backgroundImage: `url(${image_url})` }}
                />
            )}
            <div className="absolute inset-0 bg-white/30 backdrop-blur-[2px]" />

            <div className="relative z-10">
                <CardHeader className="pb-2">
                    <div className="flex items-center justify-between">
                        <CardTitle className="text-lg font-medium text-gray-800">{title || "Program Progress"}</CardTitle>
                        {label && (
                            <span className={`px-2 py-1 text-xs font-medium rounded-full ${label.style}`}>
                                {label.text}
                            </span>
                        )}
                    </div>
                </CardHeader>
                <CardContent>
                    <div className="space-y-4">
                        <div className="flex justify-between items-center">
                            <span className="text-sm text-gray-500">
                                {status === "saved" ? "Not Started" : `Week ${progress.current_week}, Day ${progress.current_day}`}
                            </span>
                            <HoverCard>
                                <HoverCardTrigger asChild>
                                    <span className="text-sm font-medium text-gray-600 cursor-help hover:text-gray-700 transition-colors">
                                        {progress.completed_days} / {progress.total_days} days
                                    </span>
                                </HoverCardTrigger>
                                <HoverCardContent className="w-80 bg-white/80 backdrop-blur-sm border border-gray-100/50">
                                    <div className="space-y-2">
                                        <h4 className="text-sm font-medium text-gray-800">Program Progress Details</h4>
                                        <div className="text-sm space-y-1 text-gray-600">
                                            <p>Days: {progress.completed_days} / {progress.total_days}</p>
                                            <p>Exercises: {progress.completed_exercises} / {progress.total_exercises}</p>
                                            <p>Current Week: {progress.current_week} / 12</p>
                                            <p>Current Day: {progress.current_day} / 3</p>
                                        </div>
                                    </div>
                                </HoverCardContent>
                            </HoverCard>
                        </div>

                        <Progress
                            value={completionPercentage}
                            className="h-1.5 bg-gray-100/50"
                        />

                        <div className="flex justify-between items-center">
                            <span className="text-sm text-gray-500">
                                {completionPercentage}% Complete
                            </span>
                            <div className="flex gap-3">
                                <Dialog>
                                    <DialogTrigger asChild>
                                        <Button
                                            variant="ghost"
                                            size="sm"
                                            disabled={isQuitting}
                                            className="text-gray-600 hover:text-red-700 hover:bg-red-100/50 px-3 py-1.5 rounded-md transition-all duration-200"
                                        >
                                            {isQuitting ? "Quitting..." : "Quit"}
                                        </Button>
                                    </DialogTrigger>
                                    <DialogContent className="bg-white/80 backdrop-blur-sm border border-gray-100/50">
                                        <DialogHeader>
                                            <DialogTitle className="text-gray-800">Quit Program</DialogTitle>
                                            <DialogDescription className="text-gray-500">
                                                Are you sure you want to quit this program? Your progress will be lost.
                                            </DialogDescription>
                                        </DialogHeader>
                                        <DialogFooter>
                                            <Button
                                                variant="ghost"
                                                onClick={() => document.querySelector('[role="dialog"] button[aria-label="Close"]').click()}
                                                className="text-gray-600 hover:text-gray-700 hover:bg-gray-100/50"
                                            >
                                                Cancel
                                            </Button>
                                            <Button
                                                variant="ghost"
                                                onClick={handleQuitProgram}
                                                disabled={isQuitting}
                                                className="text-red-600 hover:text-red-700 hover:bg-red-50/50"
                                            >
                                                {isQuitting ? "Quitting..." : "Yes, Quit Program"}
                                            </Button>
                                        </DialogFooter>
                                    </DialogContent>
                                </Dialog>
                                <Button
                                    variant="ghost"
                                    size="sm"
                                    onClick={handleStartProgram}
                                    className="bg-gray-900 hover:bg-gray-200 text-white px-4 py-1.5 rounded-md transition-all duration-200"
                                >
                                    {status === "saved" ? "Start Program" : "Continue"}
                                </Button>
                            </div>
                        </div>
                    </div>
                </CardContent>
            </div>
        </Card>
    );
};

export default ProgramProgress; 