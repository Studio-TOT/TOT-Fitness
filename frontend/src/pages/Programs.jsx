import { useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";
import { useAuth } from "../context/AuthContext";
import backarrow from "../assets/back-arrow.svg";
import bp1 from "../assets/bp1.png";
import bw1 from "../assets/bw1.png";
import fb1 from "../assets/fb1.png";
import mb1 from "../assets/mb1.png";
import ct1lock from "../assets/ct1lock.png";
import sm1lock from "../assets/sm1lock.png";
import { Button } from "../components/ui/button";
import { Card, CardContent } from "../components/ui/card";
import { FiLock, FiPlus, FiAward, FiTarget, FiZap, FiCheckCircle } from 'react-icons/fi';
import { motion } from "framer-motion";

function Programs() {
  const navigate = useNavigate();
  const { user, isPremium } = useAuth();

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  const handleNav = () => {
    navigate(-1);
  };

  const handleSubscriptionClick = (e) => {
    e.preventDefault();
    if (!user) {
      navigate('/login', { state: { from: '/subscription' } });
    } else if (isPremium()) {
      navigate('/dashboard');
    } else {
      navigate('/subscription');
    }
  };

  // Mock data for completed programs (this would come from your backend)
  const completedPrograms = 1; // Example: user has completed 1 program

  const programs = [
    {
      id: 'bodyweight',
      title: 'Bodyweight Program',
      description: 'Get fit anywhere without equipment. Perfect for beginners and those who prefer home workouts.',
      image: bw1,
      isPremium: false,
      isLocked: false
    },
    {
      id: 'bootypump',
      title: 'Booty Pump Program',
      description: 'Build your best butt with this targeted program. Includes exercises for glutes, legs, and core.',
      image: bp1,
      isPremium: false,
      isLocked: false
    },
    {
      id: 'fullbody',
      title: 'Full Body Program',
      description: 'Comprehensive full-body workouts for overall strength and fitness. Suitable for all levels.',
      image: fb1,
      isPremium: false,
      isLocked: false
    },
    {
      id: 'musclebuilding',
      title: 'Muscle Building Program',
      description: 'Gain muscle mass and strength with this progressive overload program.',
      image: mb1,
      isPremium: false,
      isLocked: false
    },
    {
      id: 'cardio',
      title: 'Cardio Training Program',
      description: 'Improve your cardiovascular health and endurance with our specialized cardio program.',
      image: ct1lock,
      isPremium: true,
      isLocked: completedPrograms < 2,
      lockedReason: isPremium() ? 'Complete 2 programs to unlock' : 'Premium Program',
      goal: 'Complete 2 programs',
      progress: isPremium() ? `${completedPrograms}/2 programs completed` : null
    },
    {
      id: 'strength',
      title: 'Strength Mastery Program',
      description: 'Master advanced strength training techniques and reach your peak performance.',
      image: sm1lock,
      isPremium: true,
      isLocked: completedPrograms < 2,
      lockedReason: isPremium() ? 'Complete 2 programs to unlock' : 'Premium Program',
      goal: 'Complete 2 programs',
      progress: isPremium() ? `${completedPrograms}/2 programs completed` : null
    },
    {
      id: 'olympic',
      title: 'Olympic Lifting Program',
      description: 'Master the art of Olympic weightlifting with our comprehensive program.',
      image: ct1lock,
      isPremium: true,
      isLocked: completedPrograms < 3,
      lockedReason: isPremium() ? 'Complete 3 programs to unlock' : 'Premium Program',
      goal: 'Complete 3 programs',
      progress: isPremium() ? `${completedPrograms}/3 programs completed` : null
    },
    {
      id: 'crossfit',
      title: 'CrossFit Challenge',
      description: 'Push your limits with our intense CrossFit-style workouts.',
      image: sm1lock,
      isPremium: true,
      isLocked: completedPrograms < 3,
      lockedReason: isPremium() ? 'Complete 3 programs to unlock' : 'Premium Program',
      goal: 'Complete 3 programs',
      progress: isPremium() ? `${completedPrograms}/3 programs completed` : null
    }
  ];

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1
      }
    }
  };

  const cardVariants = {
    hidden: { y: 20, opacity: 0 },
    visible: {
      y: 0,
      opacity: 1,
      transition: {
        duration: 0.5,
        ease: "easeOut"
      }
    }
  };

  const renderProgramCard = (program) => {
    const isLocked = program.isLocked;
    const isPremiumLocked = program.isPremium && !isPremium();

    return (
      <motion.div
        key={program.id}
        variants={cardVariants}
        className="group relative rounded-2xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-xl bg-white"
      >
        <div
          className="relative h-80 bg-cover bg-center transition-transform duration-500 group-hover:scale-105"
          style={{ backgroundImage: `url(${program.image})` }}
        >
          <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/50 to-transparent transition-opacity duration-300 group-hover:from-black/95 group-hover:via-black/60"></div>
          <div className="absolute inset-0 flex flex-col justify-end p-6">
            <h3 className="text-2xl font-bold text-white mb-3 transform transition-transform duration-300 group-hover:translate-y-[-4px]">{program.title}</h3>
            <p className="text-gray-200 text-lg mb-6 transform transition-transform duration-300 group-hover:translate-y-[-4px]">{program.description}</p>

            {isLocked || isPremiumLocked ? (
              <div className="text-center transform transition-transform duration-300 group-hover:translate-y-[-4px]">
                <div className="flex items-center justify-center mb-3">
                  <FiLock className="w-5 h-5 text-yellow-400 mr-2" />
                  <p className="text-yellow-400 font-medium">
                    {isPremiumLocked ? 'Premium Program' : program.lockedReason}
                  </p>
                </div>
                {isLocked && program.progress && (
                  <div className="flex items-center justify-center mb-4">
                    <FiTarget className="w-4 h-4 text-gray-300 mr-2" />
                    <p className="text-gray-300 text-sm">{program.progress}</p>
                  </div>
                )}
                {isPremiumLocked ? (
                  <button
                    onClick={handleSubscriptionClick}
                    className="bg-indigo-600 text-white px-6 py-3 rounded-full hover:bg-indigo-700 transition-colors font-medium"
                  >
                    Upgrade to Access
                  </button>
                ) : (
                  <div className="flex items-center justify-center text-gray-300">
                    <FiCheckCircle className="w-4 h-4 mr-2" />
                    <p className="text-sm">Complete more programs to unlock</p>
                  </div>
                )}
              </div>
            ) : (
              <Link
                to={`/programs/${program.id}`}
                className="inline-block bg-white text-indigo-600 px-8 py-3 rounded-full hover:bg-gray-100 transition-colors font-medium transform transition-transform duration-300 group-hover:translate-y-[-4px]"
              >
                View Program
              </Link>
            )}
          </div>
        </div>
      </motion.div>
    );
  };

  return (
    <div className="min-h-screen bg-gradient-to-b from-gray-50 to-gray-100 pt-20">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        {/* Header */}
        <motion.div
          initial={{ opacity: 0, y: -20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5 }}
          className="flex items-center justify-between mb-12"
        >
          <div className="flex items-center">
            <Link to="/" onClick={handleNav} className="mr-4 hover:opacity-80 transition-opacity">
              <img className="w-6 h-6" src={backarrow} alt="back" />
            </Link>
            <h1 className="text-4xl font-bold text-gray-900">Our Programs</h1>
          </div>
          <Button
            onClick={() => navigate('/program-builder')}
            className="bg-gradient-to-r from-indigo-600 to-purple-600 text-white hover:from-indigo-700 hover:to-purple-700"
          >
            <FiPlus className="mr-2" />
            Create Your Program
          </Button>
        </motion.div>

        {/* Programs Grid */}
        <motion.div
          variants={containerVariants}
          initial="hidden"
          animate="visible"
          className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8"
        >
          {programs.map(renderProgramCard)}

          {/* Program Builder Card */}
          <motion.div
            variants={cardVariants}
            className="group relative rounded-2xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-xl"
          >
            <div className="relative h-80 bg-gradient-to-br from-indigo-600 via-purple-600 to-pink-500">
              <div className="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNjAiIGhlaWdodD0iNjAiIHZpZXdCb3g9IjAgMCA2MCA2MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPjxwYXRoIGQ9Ik0zNiAzNGMwIDIuMjA5LTEuNzkxIDQtNCA0cy00LTEuNzkxLTQtNCAxLjc5MS00IDQtNCA0IDEuNzkxIDQgNHoiIGZpbGw9IiNmZmYiIGZpbGwtb3BhY2l0eT0iLjEiLz48L2c+PC9zdmc+')] opacity-10"></div>
              <div className="relative h-full flex flex-col items-center justify-center p-6 text-center">
                <motion.div
                  whileHover={{ rotate: 5 }}
                  className="mb-6"
                >
                  <FiZap className="w-16 h-16 text-white" />
                </motion.div>
                <h3 className="text-2xl font-bold text-white mb-3 transform transition-transform duration-300 group-hover:translate-y-[-4px]">Create Your Own Program</h3>
                <p className="text-gray-100 text-lg mb-6 transform transition-transform duration-300 group-hover:translate-y-[-4px]">
                  Design a custom workout program tailored to your specific goals and preferences.
                </p>
                <Button
                  onClick={() => navigate('/program-builder')}
                  className="bg-white text-indigo-600 hover:bg-gray-100 px-8 py-3 rounded-full transition-colors font-medium transform transition-transform duration-300 group-hover:translate-y-[-4px]"
                >
                  Start Building
                </Button>
              </div>
            </div>
          </motion.div>
        </motion.div>

        {/* Premium Programs Notice */}
        {!isPremium() && (
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.5 }}
            className="mt-16 text-center"
          >
            <Card className="bg-gradient-to-r from-indigo-50 to-purple-50 border-none">
              <CardContent className="p-8">
                <div className="flex items-center justify-center mb-4">
                  <FiAward className="w-8 h-8 text-indigo-600" />
                </div>
                <h3 className="text-2xl font-bold text-gray-900 mb-2">Unlock Premium Programs</h3>
                <p className="text-gray-600 mb-6">
                  Get access to all premium programs and unlock new ones as you progress in your fitness journey.
                </p>
                <Button
                  onClick={handleSubscriptionClick}
                  className="bg-gradient-to-r from-indigo-600 to-purple-600 text-white hover:from-indigo-700 hover:to-purple-700"
                >
                  View Subscription Plans
                </Button>
              </CardContent>
            </Card>
          </motion.div>
        )}
      </div>
    </div>
  );
}

export default Programs;
