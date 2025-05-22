/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
import { Link, useNavigate } from "react-router-dom";
import React, { useEffect, useState } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";
import { Pagination } from "swiper";
import { FiUser, FiLogOut, FiAward, FiActivity, FiCalendar, FiLock } from "react-icons/fi";
import { useExercises } from "../context/ExerciseContext";
import {
  generateBootyPumpProgram,
  generateMuscleBuildingProgram,
  generateFullBodyProgram,
  generateBodyweightProgram,
} from "../utils/programGenerator";
import { useAuth } from "../context/AuthContext";
import { Card, CardContent, CardHeader, CardTitle } from "../components/ui/card";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "../components/ui/tabs";
import ProgramProgress from "../components/ProgramProgress";
import mb1 from "../assets/mb1.png";
import bw1 from "../assets/bw1.png";
import ProgressOverview from "../components/ProgressOverview";

export default function Dashboard() {
  const { exercises, isLoading, error, fetchExercises } = useExercises();
  const [programs, setPrograms] = useState({
    bootypump: [],
    musclebuilding: [],
    fullbody: [],
    bodyweight: [],
  });
  const [activeIndex, setActiveIndex] = useState(0);
  const [weekLeft, setWeekLeft] = useState(12);
  const [openPopUp, setOpenPopUp] = useState(false);
  const nav = useNavigate();
  const { user, logout, isPremium } = useAuth();
  const [activePrograms, setActivePrograms] = useState([]);
  const [savedPrograms, setSavedPrograms] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!exercises || exercises.length === 0) {
      fetchExercises();
    }
  }, [exercises, fetchExercises]);

  useEffect(() => {
    if (exercises && exercises.length > 0) {
      const generatedPrograms = {
        bootypump: generateBootyPumpProgram(exercises),
        musclebuilding: generateMuscleBuildingProgram(exercises),
        fullbody: generateFullBodyProgram(exercises),
        bodyweight: generateBodyweightProgram(exercises),
      };
      setPrograms(generatedPrograms);
    } else {
      const emptyProgram = Array(12).fill().map(() => Array(3).fill().map(() => []));
      setPrograms({
        bootypump: emptyProgram,
        musclebuilding: emptyProgram,
        fullbody: emptyProgram,
        bodyweight: emptyProgram,
      });
    }
  }, [exercises]);

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  useEffect(() => {
    const fetchActivePrograms = async () => {
      try {
        const response = await fetch(`${import.meta.env.VITE_API_URL}/api/programs`, {
          headers: {
            Authorization: `Bearer ${localStorage.getItem("jwt")}`,
            "Content-Type": "application/json",
          },
        });

        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }

        const data = await response.json();
        // Handle saved programs
        const savedPrograms = data.savedPrograms.map(program => ({
          id: program.id,
          program_id: program.program_id,
          title: program.program_info.title,
          description: program.program_info.description,
          status: "saved",
          total_exercises: program.program_data.weeks.reduce((acc, week) =>
            acc + week.days.reduce((dayAcc, day) => dayAcc + day.exercises.length, 0), 0),
          completed_exercises: 0 // Since it's saved but not started
        }));

        // Handle predefined programs
        const predefinedPrograms = data.predefinedPrograms || [];

        // Combine and filter active programs
        const allPrograms = [...savedPrograms, ...predefinedPrograms];
        setActivePrograms(allPrograms.filter(program => program.status === "in_progress"));
        setSavedPrograms(savedPrograms);
      } catch (error) {
        console.error("Error fetching active programs:", error);
        setActivePrograms([]);
        setSavedPrograms([]);
      } finally {
        setLoading(false);
      }
    };

    fetchActivePrograms();
  }, []);

  const handleNav = () => {
    nav(-1);
  };

  const handleCheck = (e) => {
    e.stopPropagation();
    if (e.target.checked) {
      setOpenPopUp(true);
      setTimeout(() => {
        setOpenPopUp(false);
      }, "3000");
    }
  };

  const dayArr = Array.from({ length: 3 }, (v, k) => k + 1);
  const weekArr = Array.from({ length: 12 }, (v, k) => k + 1);

  const handleLogout = () => {
    logout();
    nav("/");
  };

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-teal-600"></div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="text-center">
          <h2 className="text-2xl font-semibold text-red-600 mb-4">Error Loading Dashboard</h2>
          <p className="text-gray-600">{error}</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-b from-gray-50 to-gray-100 pt-6 pb-12 mt-12">
      <div className="container mx-auto px-4 sm:px-6 lg:px-8">
        {/* Header Section */}
        <div className="mb-8">
          <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
            <div>
              <h1 className="text-3xl md:text-4xl font-bold text-gray-900 bg-clip-text text-transparent bg-gradient-to-r from-teal-500 to-emerald-600">Dashboard</h1>
              <p className="text-gray-600 mt-1">Welcome back, {user?.email ? user.email.split('@')[0] : 'Athlete'}</p>
            </div>
            <div className="flex items-center gap-4">
              {!user?.is_premium && (
                <Link
                  to="/subscription"
                  className="inline-flex items-center px-4 py-2 bg-gradient-to-r from-teal-500 to-emerald-500 text-white rounded-lg hover:from-teal-600 hover:to-emerald-600 transition-all shadow-md hover:shadow-lg"
                >
                  <FiAward className="mr-2" />
                  Upgrade to Premium
                </Link>
              )}
            </div>
          </div>
        </div>

        {/* Stats Cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
          <Card className="bg-white shadow-md hover:shadow-lg transition-all border-none overflow-hidden">
            <div className="absolute top-0 right-0 w-20 h-20 bg-teal-100 rounded-bl-full opacity-50"></div>
            <CardContent className="p-6">
              <div className="flex items-center gap-4">
                <div className="p-3 bg-teal-100 rounded-full">
                  <FiActivity className="w-6 h-6 text-teal-600" />
                </div>
                <div>
                  <p className="text-sm text-gray-600">Active Programs</p>
                  <h3 className="text-2xl font-bold text-gray-900">{activePrograms.length}</h3>
                </div>
              </div>
            </CardContent>
          </Card>

          <Card className="bg-white shadow-md hover:shadow-lg transition-all border-none overflow-hidden">
            <div className="absolute top-0 right-0 w-20 h-20 bg-emerald-100 rounded-bl-full opacity-50"></div>
            <CardContent className="p-6">
              <div className="flex items-center gap-4">
                <div className="p-3 bg-emerald-100 rounded-full">
                  <FiCalendar className="w-6 h-6 text-emerald-600" />
                </div>
                <div>
                  <p className="text-sm text-gray-600">Weeks Completed</p>
                  <h3 className="text-2xl font-bold text-gray-900">{12 - weekLeft}</h3>
                </div>
              </div>
            </CardContent>
          </Card>

          <Card className="bg-white shadow-md hover:shadow-lg transition-all border-none overflow-hidden">
            <div className="absolute top-0 right-0 w-20 h-20 bg-cyan-100 rounded-bl-full opacity-50"></div>
            <CardContent className="p-6">
              <div className="flex items-center gap-4">
                <div className="p-3 bg-cyan-100 rounded-full">
                  <FiUser className="w-6 h-6 text-cyan-600" />
                </div>
                <div>
                  <p className="text-sm text-gray-600">Membership</p>
                  <h3 className="text-2xl font-bold text-gray-900">
                    {user?.is_premium ? "Premium" : "Free"}
                  </h3>
                </div>
              </div>
            </CardContent>
          </Card>
        </div>

        {/* Tabs Navigation */}
        <Tabs defaultValue="programs" className="space-y-6">
          <div className="flex justify-center mb-4">
            <TabsList className="bg-white rounded-xl shadow-md flex space-x-1 w-auto border border-gray-100">
              <TabsTrigger
                value="programs"
                className="data-[state=active]:bg-gradient-to-r data-[state=active]:from-teal-500 data-[state=active]:to-emerald-500 data-[state=active]:text-white px-3 rounded-lg transition-all duration-200 hover:bg-gray-50 text-sm font-medium"
              >
                <FiActivity className="w-4 h-4 mr-2" />
                My Programs
              </TabsTrigger>
              <TabsTrigger
                value="progress"
                className="data-[state=active]:bg-gradient-to-r data-[state=active]:from-teal-500 data-[state=active]:to-emerald-500 data-[state=active]:text-white px-3 rounded-lg transition-all duration-200 hover:bg-gray-50 text-sm font-medium"
              >
                <FiCalendar className="w-4 h-4 mr-2" />
                Progress
              </TabsTrigger>
              <TabsTrigger
                value="profile"
                className="data-[state=active]:bg-gradient-to-r data-[state=active]:from-teal-500 data-[state=active]:to-emerald-500 data-[state=active]:text-white px-3 rounded-lg transition-all duration-200 hover:bg-gray-50 text-sm font-medium"
              >
                <FiUser className="w-4 h-4 mr-2" />
                Profile
              </TabsTrigger>
            </TabsList>
          </div>

          <TabsContent value="programs">
            <div className="grid gap-6">
              <Card className="bg-white shadow-md hover:shadow-lg transition-all border-none overflow-hidden">
                <CardHeader className="border-b border-gray-100 pb-4">
                  <CardTitle className="text-xl font-bold text-gray-900">Active Programs</CardTitle>
                </CardHeader>
                <CardContent className="p-6">
                  <div className="grid gap-6 md:grid-cols-2">
                    {activePrograms.map((program) => (
                      <ProgramProgress
                        key={program.id}
                        programId={program.id}
                        status={program.status}
                        title={program.title}
                        description={program.description}
                        total_exercises={program.total_exercises}
                        completed_exercises={program.completed_exercises}
                      />
                    ))}
                  </div>
                  {activePrograms.length === 0 && (
                    <div className="text-center py-12 bg-gray-50 rounded-lg">
                      <p className="text-gray-600 mb-4">You haven't started any programs yet.</p>
                      <Link
                        to="/programs"
                        className="inline-flex items-center px-5 py-2.5 bg-gradient-to-r from-teal-500 to-emerald-500 text-white rounded-lg hover:from-teal-600 hover:to-emerald-600 transition-all shadow-sm hover:shadow-md font-medium"
                      >
                        Browse Programs
                      </Link>
                    </div>
                  )}
                </CardContent>
              </Card>

              <Card className="bg-white shadow-md hover:shadow-lg transition-all border-none overflow-hidden">
                <CardHeader className="border-b border-gray-100 pb-4">
                  <CardTitle className="text-xl font-bold text-gray-900">Saved Programs</CardTitle>
                </CardHeader>
                <CardContent className="p-6">
                  <div className="grid gap-6 md:grid-cols-2">
                    {savedPrograms.map((program) => (
                      <ProgramProgress
                        key={program.id}
                        programId={program.program_id}
                        status="saved"
                        title={program.title}
                        description={program.description}
                        total_exercises={program.total_exercises}
                      />
                    ))}
                  </div>
                  {savedPrograms.length === 0 && (
                    <div className="text-center py-12 bg-gray-50 rounded-lg">
                      <p className="text-gray-600 mb-4">You haven't saved any programs yet.</p>
                      <Link
                        to="/programs"
                        className="inline-flex items-center px-5 py-2.5 bg-gradient-to-r from-teal-500 to-emerald-500 text-white rounded-lg hover:from-teal-600 hover:to-emerald-600 transition-all shadow-sm hover:shadow-md font-medium"
                      >
                        Browse Programs
                      </Link>
                    </div>
                  )}
                </CardContent>
              </Card>

              <Card className="bg-white shadow-md hover:shadow-lg transition-all border-none overflow-hidden">
                <CardHeader className="border-b border-gray-100 pb-4">
                  <CardTitle className="text-xl font-bold text-gray-900">Available Programs</CardTitle>
                </CardHeader>
                <CardContent className="p-6">
                  <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
                    <Link
                      to="/programs/musclebuilding"
                      className="group relative rounded-xl overflow-hidden shadow-md hover:shadow-xl transition-all transform hover:-translate-y-1"
                    >
                      <img src={mb1} alt="Muscle Building" className="w-full h-64 object-cover" />
                      <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/40 to-transparent p-6 flex flex-col justify-end">
                        <h3 className="text-2xl font-bold text-white mb-2">Muscle Building</h3>
                        <p className="text-gray-200">Build strength and muscle mass with our comprehensive program</p>
                      </div>
                    </Link>
                    <Link
                      to="/programs/bodyweight"
                      className="group relative rounded-xl overflow-hidden shadow-md hover:shadow-xl transition-all transform hover:-translate-y-1"
                    >
                      <img src={bw1} alt="Bodyweight" className="w-full h-64 object-cover" />
                      <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/40 to-transparent p-6 flex flex-col justify-end">
                        <h3 className="text-2xl font-bold text-white mb-2">Bodyweight</h3>
                        <p className="text-gray-200">Train anywhere, no equipment needed</p>
                      </div>
                    </Link>
                  </div>
                </CardContent>
              </Card>
            </div>
          </TabsContent>

          <TabsContent value="progress">
            <div className="space-y-6">
              <ProgressOverview
                activePrograms={activePrograms}
                savedPrograms={savedPrograms}
                          />
                        </div>
          </TabsContent>

          <TabsContent value="profile">
            <div className="grid gap-6 md:grid-cols-3">
              <Card className="md:col-span-2 bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
                <CardHeader className="border-b border-gray-100/50 pb-4">
                  <CardTitle className="text-lg font-medium text-gray-800">Profile Information</CardTitle>
                </CardHeader>
                <CardContent className="p-6 space-y-8">
                  <div className="flex items-center gap-6">
                    <div className="w-20 h-20 rounded-full bg-gray-100/70 flex items-center justify-center text-gray-700 text-2xl font-bold">
                      {user?.email?.charAt(0).toUpperCase()}
                    </div>
                    <div>
                      <h2 className="text-lg font-medium text-gray-800">{user?.email}</h2>
                      <div className="flex items-center gap-2 mt-1">
                        <span className={`px-3 py-1 rounded-full text-xs font-medium ${user?.is_premium
                          ? "bg-gray-100 text-gray-700"
                          : "bg-gray-50 text-gray-500"
                          }`}>
                          {user?.is_premium ? "Premium Member" : "Free Member"}
                        </span>
                        {user?.is_premium && (
                          <span className="text-xs text-gray-400">Member since {new Date().toLocaleDateString()}</span>
                        )}
                      </div>
                    </div>
                  </div>

                  <div className="grid gap-6 md:grid-cols-2">
                    <div className="space-y-4">
                      <h3 className="text-base font-medium text-gray-800">Account Details</h3>
                      <div className="space-y-3">
                        <div className="flex items-center gap-3 text-gray-600">
                          <FiUser className="w-5 h-5 text-gray-400" />
                          <span>Email: {user?.email}</span>
                        </div>
                        <div className="flex items-center gap-3 text-gray-600">
                          <FiCalendar className="w-5 h-5 text-gray-400" />
                          <span>Joined: {new Date().toLocaleDateString()}</span>
                        </div>
                        <div className="flex items-center gap-3 text-gray-600">
                          <FiActivity className="w-5 h-5 text-gray-400" />
                          <span>Active Programs: {activePrograms.length}</span>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div className="pt-6 border-t border-gray-100/50">
                    <h3 className="text-base font-medium text-gray-800 mb-4">Account Actions</h3>
                    <div className="flex flex-col sm:flex-row gap-4">
                      <button
                        onClick={handleLogout}
                        className="w-full sm:w-auto inline-flex items-center justify-center px-4 py-2 bg-gray-900 text-white rounded-md hover:bg-gray-800 transition-colors font-medium"
                      >
                        <FiLogOut className="mr-2" />
                        Sign Out
                      </button>
                      <button
                        onClick={() => {/* Add password change handler */ }}
                        className="w-full sm:w-auto inline-flex items-center justify-center px-4 py-2 bg-gray-100 text-gray-700 rounded-md hover:bg-gray-200 transition-colors font-medium"
                      >
                        <FiLock className="mr-2" />
                        Change Password
                      </button>
                    </div>
                  </div>
                </CardContent>
              </Card>

              <Card className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
                <CardHeader className="border-b border-gray-100/50 pb-4">
                  <CardTitle className="text-lg font-medium text-gray-800">Achievements</CardTitle>
                </CardHeader>
                <CardContent className="p-6 space-y-3">
                  <div className="flex items-center gap-3">
                    <div className="w-8 h-8 rounded-full bg-yellow-50 flex items-center justify-center">
                      <span className="text-yellow-500">🏆</span>
                    </div>
                    <div>
                      <p className="text-sm font-medium text-gray-800">First Program</p>
                      <p className="text-xs text-gray-500">Complete your first program</p>
                    </div>
                  </div>
                      <div className="flex items-center gap-3">
                    <div className="w-8 h-8 rounded-full bg-gray-50 flex items-center justify-center">
                          <span className="text-gray-400">🔒</span>
                        </div>
                        <div>
                      <p className="text-sm font-medium text-gray-800">Consistency King</p>
                          <p className="text-xs text-gray-500">Complete 4 weeks in a row</p>
                    </div>
                  </div>
                </CardContent>
              </Card>
            </div>
          </TabsContent>
        </Tabs>
      </div>
    </div>
  );
}
