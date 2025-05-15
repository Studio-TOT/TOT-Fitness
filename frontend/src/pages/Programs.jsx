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

  return (
    <div className="min-h-screen bg-gradient-to-b from-gray-50 to-gray-100 pt-20">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        {/* Header */}
        <div className="flex items-center mb-12">
          <Link to="/" onClick={handleNav} className="mr-4 hover:opacity-80 transition-opacity">
            <img className="w-6 h-6" src={backarrow} alt="back" />
          </Link>
          <h1 className="text-4xl font-bold text-gray-900">Our Programs</h1>
        </div>

        {/* Programs Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {programs.map((program) => (
            <div
              key={program.id}
              className="group relative rounded-2xl shadow-lg overflow-hidden transition-all duration-300 hover:shadow-xl"
            >
              <div
                className="relative h-80 bg-cover bg-center"
                style={{ backgroundImage: `url(${program.image})` }}
              >
                <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/40 to-transparent"></div>
                <div className="absolute inset-0 flex flex-col justify-end p-6">
                  <h3 className="text-2xl font-bold text-white mb-3">{program.title}</h3>
                  <p className="text-gray-200 text-lg mb-6">{program.description}</p>
                  {program.isPremium && !isPremium() ? (
                    <div className="text-center">
                      <p className="text-white text-xl font-semibold mb-3">Premium Program</p>
                      <button
                        onClick={handleSubscriptionClick}
                        className="bg-indigo-600 text-white px-6 py-3 rounded-full hover:bg-indigo-700 transition-colors font-medium"
                      >
                        Upgrade to Access
                      </button>
                    </div>
                  ) : (
                    <Link
                      to={`/programs/${program.id}`}
                      className="inline-block bg-white text-indigo-600 px-8 py-3 rounded-full hover:bg-gray-100 transition-colors font-medium"
                    >
                      View Program
                    </Link>
                  )}
                </div>
              </div>
            </div>
          ))}
        </div>

        {/* Premium Programs Notice */}
        {!isPremium() && (
          <div className="mt-16 bg-gradient-to-r from-indigo-500 to-purple-600 rounded-2xl p-8 text-center">
            <h2 className="text-3xl font-bold text-white mb-4">
              Unlock All Programs
            </h2>
            <p className="text-white text-lg mb-8 max-w-2xl mx-auto">
              Get access to all our premium programs and take your fitness journey to the next level.
            </p>
            <button
              onClick={handleSubscriptionClick}
              className="bg-white text-indigo-600 px-10 py-4 rounded-full text-lg font-bold hover:bg-gray-100 transition-colors"
            >
              Upgrade to Premium
            </button>
          </div>
        )}
      </div>
    </div>
  );
}

export default Programs;
