import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { Card, CardContent, CardHeader, CardTitle } from '../components/ui/card';
import { Button } from '../components/ui/button';
import { useAuth } from '../context/AuthContext';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import { ArrowLeft } from 'lucide-react';

const ExerciseDetails = () => {
    const { exerciseId } = useParams();
    const navigate = useNavigate();
    const [exercise, setExercise] = useState(null);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    const { token } = useAuth();

    useEffect(() => {
        const fetchExercise = async () => {
            try {
                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/exercises/${exerciseId}`, {
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                });
                if (!response.ok) {
                    throw new Error('Failed to fetch exercise details');
                }
                const data = await response.json();
                setExercise(data);
            } catch (err) {
                setError(err.message);
            } finally {
                setLoading(false);
            }
        };

        fetchExercise();
    }, [exerciseId, token]);

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error}</div>;
    if (!exercise) return <div>Exercise not found</div>;

    // Defensive checks
    const primaryMuscles = exercise.target?.Primary || [];
    const secondaryMuscles = exercise.target?.Secondary || [];
    const tertiaryMuscles = exercise.target?.Tertiary || [];
    const equipment = exercise.equipment || [];
    const steps = exercise.steps || [];
    const images = exercise.images || {};
    // Prefer branded_video, fallback to original_video, then unbranded_video
    const videoUrl = images.male?.[0]?.branded_video || images.male?.[0]?.original_video || images.male?.[0]?.unbranded_video || images.female?.[0]?.branded_video || images.female?.[0]?.original_video || images.female?.[0]?.unbranded_video || null;
    const ogImage = images.male?.[0]?.og_image || images.female?.[0]?.og_image || null;

    return (
        <>
            <Navbar />
            <div className="max-w-2xl mx-auto mt-20 mb-10">
                <button
                    className="flex items-center gap-2 text-blue-600 hover:text-blue-800 mb-4 font-semibold"
                    onClick={() => navigate('/dashboard')}
                >
                    <ArrowLeft size={20} />
                    Back to Dashboard
                </button>
                <Card className="shadow-lg border-2 border-gray-200">
                    <CardHeader className="flex flex-col items-center bg-gradient-to-r from-blue-500 to-purple-500 rounded-t-lg p-6">
                        <CardTitle className="text-3xl font-bold text-white mb-2 text-center">{exercise.exercise_name || exercise.name}</CardTitle>
                        <div className="flex flex-wrap gap-2 justify-center mt-2">
                            {primaryMuscles.map((muscle, i) => (
                                <span key={i} className="bg-green-200 text-green-800 px-3 py-1 rounded-full text-xs font-semibold">{muscle}</span>
                            ))}
                            {secondaryMuscles.map((muscle, i) => (
                                <span key={i} className="bg-yellow-200 text-yellow-800 px-3 py-1 rounded-full text-xs font-semibold">{muscle}</span>
                            ))}
                            {tertiaryMuscles.map((muscle, i) => (
                                <span key={i} className="bg-pink-200 text-pink-800 px-3 py-1 rounded-full text-xs font-semibold">{muscle}</span>
                            ))}
                        </div>
                    </CardHeader>
                    <CardContent className="p-6">
                        {videoUrl ? (
                            <div className="mb-6 flex justify-center">
                                <video controls className="rounded-lg shadow-md max-h-80 w-full bg-black">
                                    <source src={videoUrl} type="video/mp4" />
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        ) : ogImage ? (
                            <div className="mb-6 flex justify-center">
                                <img src={ogImage} alt="Exercise" className="rounded-lg shadow-md max-h-80 w-full object-contain" />
                            </div>
                        ) : null}
                        <p className="mb-6 text-lg text-gray-700 text-center">{exercise.description}</p>
                        <div className="mb-4 flex flex-wrap gap-4 justify-center">
                            <div>
                                <h3 className="font-bold text-gray-800">Equipment</h3>
                                <ul className="list-disc list-inside text-gray-600">
                                    {equipment.length > 0 ? equipment.map((item, index) => (
                                        <li key={index}>{item}</li>
                                    )) : <li>Bodyweight</li>}
                                </ul>
                            </div>
                            <div>
                                <h3 className="font-bold text-gray-800">Difficulty</h3>
                                <p className="text-gray-600 capitalize">{exercise.difficulty || 'N/A'}</p>
                            </div>
                        </div>
                        <div className="mb-4">
                            <h3 className="font-bold text-gray-800 mb-2">How to do it</h3>
                            <ol className="list-decimal list-inside space-y-1 text-gray-700">
                                {steps.map((step, index) => (
                                    <li key={index}>{step}</li>
                                ))}
                            </ol>
                        </div>
                        <Button className="w-full mt-6">Start Exercise</Button>
                    </CardContent>
                </Card>
            </div>
            <Footer />
        </>
    );
};

export default ExerciseDetails; 