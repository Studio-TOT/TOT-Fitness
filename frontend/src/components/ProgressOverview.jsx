import React from 'react';
import { Card, CardContent, CardHeader, CardTitle } from "./ui/card";
import { Progress } from "./ui/progress";
import { Button } from "./ui/button";
import { FiShare2, FiTrendingUp, FiCalendar, FiAward } from 'react-icons/fi';
import {
    LineChart,
    Line,
    XAxis,
    YAxis,
    CartesianGrid,
    Tooltip,
    ResponsiveContainer
} from 'recharts';

const ProgressOverview = ({ activePrograms, savedPrograms }) => {
    // Calculate overall progress
    const totalPrograms = activePrograms.length + savedPrograms.length;
    const completedExercises = activePrograms.reduce((acc, program) => acc + (program.completed_exercises || 0), 0);
    const totalExercises = activePrograms.reduce((acc, program) => acc + program.total_exercises, 0);
    const overallProgress = totalExercises > 0 ? Math.round((completedExercises / totalExercises) * 100) : 0;

    // Generate sample data for the chart (you can replace this with real data)
    const progressData = [
        { week: 'Week 1', progress: 20 },
        { week: 'Week 2', progress: 35 },
        { week: 'Week 3', progress: 45 },
        { week: 'Week 4', progress: 60 },
        { week: 'Week 5', progress: 75 },
        { week: 'Week 6', progress: 85 },
    ];

    const handleShareProgress = () => {
        // Implement sharing functionality
        const shareText = `I've completed ${completedExercises} exercises across ${activePrograms.length} programs! Join me on TOT Fitness to start your fitness journey.`;
        if (navigator.share) {
            navigator.share({
                title: 'My Fitness Progress',
                text: shareText,
                url: window.location.origin
            });
        } else {
            // Fallback for browsers that don't support the Web Share API
            navigator.clipboard.writeText(shareText);
            alert('Progress copied to clipboard!');
        }
    };

    return (
        <div className="space-y-6">
            {/* Progress Stats */}
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                <Card className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
                    <CardContent className="p-6">
                        <div className="flex items-center gap-4">
                            <div className="p-2.5 bg-gray-100/50 rounded-lg">
                                <FiTrendingUp className="w-5 h-5 text-gray-600" />
                            </div>
                            <div>
                                <p className="text-sm text-gray-500">Overall Progress</p>
                                <h3 className="text-2xl font-medium text-gray-800">{overallProgress}%</h3>
                            </div>
                        </div>
                    </CardContent>
                </Card>

                <Card className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
                    <CardContent className="p-6">
                        <div className="flex items-center gap-4">
                            <div className="p-2.5 bg-gray-100/50 rounded-lg">
                                <FiCalendar className="w-5 h-5 text-gray-600" />
                            </div>
                            <div>
                                <p className="text-sm text-gray-500">Active Programs</p>
                                <h3 className="text-2xl font-medium text-gray-800">{activePrograms.length}</h3>
                            </div>
                        </div>
                    </CardContent>
                </Card>

                <Card className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
                    <CardContent className="p-6">
                        <div className="flex items-center gap-4">
                            <div className="p-2.5 bg-gray-100/50 rounded-lg">
                                <FiAward className="w-5 h-5 text-gray-600" />
                            </div>
                            <div>
                                <p className="text-sm text-gray-500">Completed Exercises</p>
                                <h3 className="text-2xl font-medium text-gray-800">{completedExercises}</h3>
                            </div>
                        </div>
                    </CardContent>
                </Card>
            </div>

            {/* Progress Chart */}
            <Card className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
                <CardHeader className="border-b border-gray-100/50 pb-4">
                    <div className="flex justify-between items-center">
                        <CardTitle className="text-lg font-medium text-gray-800">Progress Trend</CardTitle>
                        <Button
                            variant="ghost"
                            size="sm"
                            onClick={handleShareProgress}
                            className="text-gray-500 hover:text-gray-800 hover:bg-gray-100/50 px-3 py-1.5 rounded-md transition-all duration-200"
                        >
                            <FiShare2 className="w-4 h-4 mr-2" />
                            Share Progress
                        </Button>
                    </div>
                </CardHeader>
                <CardContent className="p-6">
                    <div className="h-[300px]">
                        <ResponsiveContainer width="100%" height="100%">
                            <LineChart data={progressData}>
                                <CartesianGrid strokeDasharray="3 3" className="stroke-gray-100" />
                                <XAxis
                                    dataKey="week"
                                    className="text-sm text-gray-500"
                                    stroke="#6B7280"
                                />
                                <YAxis
                                    className="text-sm text-gray-500"
                                    stroke="#6B7280"
                                    tickFormatter={(value) => `${value}%`}
                                />
                                <Tooltip
                                    contentStyle={{
                                        backgroundColor: 'rgba(255, 255, 255, 0.8)',
                                        backdropFilter: 'blur(8px)',
                                        border: '1px solid rgba(229, 231, 235, 0.5)',
                                        borderRadius: '0.5rem',
                                        boxShadow: '0 4px 6px -1px rgba(0, 0, 0, 0.05)',
                                    }}
                                />
                                <Line
                                    type="monotone"
                                    dataKey="progress"
                                    stroke="#1F2937"
                                    strokeWidth={2}
                                    dot={{ fill: '#1F2937', strokeWidth: 2 }}
                                    activeDot={{ r: 6, fill: '#1F2937' }}
                                />
                            </LineChart>
                        </ResponsiveContainer>
                    </div>
                </CardContent>
            </Card>

            {/* Program Progress Cards */}
            <div className="grid gap-6 md:grid-cols-2">
                {activePrograms.map((program) => (
                    <Card key={program.id} className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
                        <CardHeader className="border-b border-gray-100/50 pb-4">
                            <CardTitle className="text-lg font-medium text-gray-800">{program.title}</CardTitle>
                        </CardHeader>
                        <CardContent className="p-6">
                            <div className="space-y-4">
                                <div className="flex justify-between text-sm">
                                    <span className="text-gray-500">Progress</span>
                                    <span className="font-medium text-gray-800">
                                        {Math.round((program.completed_exercises / program.total_exercises) * 100)}%
                                    </span>
                                </div>
                                <Progress
                                    value={(program.completed_exercises / program.total_exercises) * 100}
                                    className="h-1.5 bg-gray-100/50"
                                />
                                <div className="flex justify-between text-sm text-gray-500">
                                    <span>{program.completed_exercises} exercises completed</span>
                                    <span>{program.total_exercises} total exercises</span>
                                </div>
                            </div>
                        </CardContent>
                    </Card>
                ))}
            </div>
        </div>
    );
};

export default ProgressOverview; 