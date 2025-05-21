import { Swiper, SwiperSlide } from "swiper/react";
import { Link, useNavigate } from "react-router-dom";

import Start from "./Start";
import bp1 from "../assets/bp1.png";
import bw1 from "../assets/bw1.png";
import fb1 from "../assets/fb1.png";
import mb1 from "../assets/mb1.png";
import ct1lock from "../assets/ct1lock.png";
import sm1lock from "../assets/sm1lock.png";
import { useAuth } from '../context/AuthContext';
import { motion } from "framer-motion";
import { Card, CardContent, CardHeader, CardTitle } from "./ui/card";
import { Progress } from "./ui/progress";
import { Button } from "./ui/button";
import { FiTrendingUp, FiCalendar, FiAward } from 'react-icons/fi';
import { Pagination } from "swiper";

function ProgramsSec() {
  const { user, isPremium } = useAuth();
  const navigate = useNavigate();

  // Function to handle subscription clicks
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

  // Premium user content
  if (isPremium()) {
    return (
      <section id="prog" className="py-12 px-4 md:px-12 bg-white/60 backdrop-blur-sm rounded-2xl shadow-sm border border-gray-100/50 max-w-6xl mx-auto mt-10 mb-16">
        <div className="mb-10 text-center">
          <h2 className="text-3xl md:text-4xl font-medium text-gray-900 mb-2">Your Programs</h2>
          <p className="text-gray-600 max-w-2xl mx-auto text-base md:text-lg">
            Track your progress and continue your fitness journey with our premium programs.
          </p>
        </div>

        {/* Progress Overview */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-10">
          <Card className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
            <CardContent className="p-6">
              <div className="flex items-center gap-4">
                <div className="p-2.5 bg-teal-100/50 rounded-lg">
                  <FiTrendingUp className="w-5 h-5 text-teal-600" />
                </div>
                <div>
                  <p className="text-sm text-gray-500">Overall Progress</p>
                  <h3 className="text-2xl font-medium text-gray-800">75%</h3>
                </div>
              </div>
            </CardContent>
          </Card>

          <Card className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
            <CardContent className="p-6">
              <div className="flex items-center gap-4">
                <div className="p-2.5 bg-purple-100/50 rounded-lg">
                  <FiCalendar className="w-5 h-5 text-purple-600" />
                </div>
                <div>
                  <p className="text-sm text-gray-500">Active Programs</p>
                  <h3 className="text-2xl font-medium text-gray-800">2</h3>
                </div>
              </div>
            </CardContent>
          </Card>

          <Card className="bg-white/50 backdrop-blur-sm border border-gray-100/50 shadow-sm hover:shadow-md transition-all duration-300">
            <CardContent className="p-6">
              <div className="flex items-center gap-4">
                <div className="p-2.5 bg-blue-100/50 rounded-lg">
                  <FiAward className="w-5 h-5 text-blue-600" />
                </div>
                <div>
                  <p className="text-sm text-gray-500">Completed Workouts</p>
                  <h3 className="text-2xl font-medium text-gray-800">24</h3>
                </div>
              </div>
            </CardContent>
          </Card>
        </div>

        {/* Mobile Swiper for Premium Users */}
        <div className="md:hidden mb-8">
          <Swiper
            spaceBetween={20}
            slidesPerView={1.2}
            centeredSlides={true}
            pagination={{
              clickable: true,
            }}
            modules={[Pagination]}
            className="w-full"
          >
            <SwiperSlide>
              <Link to="/programs/bodyweight" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
                <img src={bw1} alt="Bodyweight" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
                <h3 className="text-lg font-medium text-gray-800 mb-1">Bodyweight</h3>
                <p className="text-sm text-gray-500 text-center">Train anywhere, no equipment needed</p>
                <div className="w-full mt-4">
                  <Progress value={65} className="h-1.5 bg-gray-100/50" />
                  <p className="text-xs text-gray-500 mt-1">65% Complete</p>
                </div>
              </Link>
            </SwiperSlide>
            <SwiperSlide>
              <Link to="/programs/bootypump" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
                <img src={bp1} alt="Booty Pump" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
                <h3 className="text-lg font-medium text-gray-800 mb-1">Booty Pump</h3>
                <p className="text-sm text-gray-500 text-center">Sculpt and strengthen your glutes</p>
                <div className="w-full mt-4">
                  <Progress value={85} className="h-1.5 bg-gray-100/50" />
                  <p className="text-xs text-gray-500 mt-1">85% Complete</p>
                </div>
              </Link>
            </SwiperSlide>
            <SwiperSlide>
              <Link to="/programs/cardiotraining" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
                <img src={ct1lock} alt="Cardio Training" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
                <h3 className="text-lg font-medium text-gray-800 mb-1">Cardio Training</h3>
                <p className="text-sm text-gray-500 text-center">Boost your endurance and stamina</p>
                <Button className="mt-4 w-full bg-teal-500 hover:bg-teal-600 text-white">Start Program</Button>
              </Link>
            </SwiperSlide>
          </Swiper>
        </div>

        {/* Desktop Grid */}
        <div className="hidden md:grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8">
          <Link to="/programs/bodyweight" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
            <img src={bw1} alt="Bodyweight" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
            <h3 className="text-lg font-medium text-gray-800 mb-1">Bodyweight</h3>
            <p className="text-sm text-gray-500 text-center">Train anywhere, no equipment needed</p>
            <div className="w-full mt-4">
              <Progress value={65} className="h-1.5 bg-gray-100/50" />
              <p className="text-xs text-gray-500 mt-1">65% Complete</p>
            </div>
          </Link>

          <Link to="/programs/bootypump" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
            <img src={bp1} alt="Booty Pump" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
            <h3 className="text-lg font-medium text-gray-800 mb-1">Booty Pump</h3>
            <p className="text-sm text-gray-500 text-center">Sculpt and strengthen your glutes</p>
            <div className="w-full mt-4">
              <Progress value={85} className="h-1.5 bg-gray-100/50" />
              <p className="text-xs text-gray-500 mt-1">85% Complete</p>
            </div>
          </Link>

          <Link to="/programs/cardiotraining" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
            <img src={ct1lock} alt="Cardio Training" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
            <h3 className="text-lg font-medium text-gray-800 mb-1">Cardio Training</h3>
            <p className="text-sm text-gray-500 text-center">Boost your endurance and stamina</p>
            <Button className="mt-4 w-full bg-teal-500 hover:bg-teal-600 text-white">Start Program</Button>
          </Link>
        </div>

        <div className="mt-10 text-center">
          <Button
            onClick={() => navigate('/programs')}
            className="inline-flex items-center px-5 py-2.5 bg-gray-900 text-white rounded-md hover:bg-gray-800 transition-colors font-medium"
          >
            View All Programs
          </Button>
        </div>
      </section>
    );
  }

  // Non-premium user content (original content)
  return (
    <section id="prog" className="py-12 px-4 md:px-12 bg-white/60 backdrop-blur-sm rounded-2xl shadow-sm border border-gray-100/50 max-w-6xl mx-auto mt-10 mb-16">
      <div className="mb-10 text-center">
        <h2 className="text-3xl md:text-4xl font-medium text-gray-900 mb-2">Explore our programs</h2>
        <p className="text-gray-600 max-w-2xl mx-auto text-base md:text-lg">
          Do you want to reach your fitness goals? We have selected the best programs made by our coaches to bring you to the next level. Thousands of people have already changed their lives thanks to our application. Why not yours?
        </p>
      </div>

      {/* Mobile Swiper */}
      <div className="md:hidden mb-8">
        <Swiper
          spaceBetween={20}
          slidesPerView={1.2}
          centeredSlides={true}
          pagination={{
            clickable: true,
          }}
          modules={[Pagination]}
          className="w-full"
        >
          <SwiperSlide>
            <Link to="/programs/bodyweight" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
              <img src={bw1} alt="Bodyweight" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
              <h3 className="text-lg font-medium text-gray-800 mb-1">Bodyweight</h3>
              <p className="text-sm text-gray-500 text-center">Train anywhere, no equipment needed</p>
            </Link>
          </SwiperSlide>
          <SwiperSlide>
            <Link to="/programs/bootypump" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
              <img src={bp1} alt="Booty Pump" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
              <h3 className="text-lg font-medium text-gray-800 mb-1">Booty Pump</h3>
              <p className="text-sm text-gray-500 text-center">Sculpt and strengthen your glutes</p>
            </Link>
          </SwiperSlide>
          <SwiperSlide>
            <Link to="/programs/fullbody" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
              <img src={fb1} alt="Full Body" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
              <h3 className="text-lg font-medium text-gray-800 mb-1">Full Body</h3>
              <p className="text-sm text-gray-500 text-center">Balanced workouts for all muscle groups</p>
            </Link>
          </SwiperSlide>
          <SwiperSlide>
            <Link to="/programs/musclebuilding" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
              <img src={mb1} alt="Muscle Building" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
              <h3 className="text-lg font-medium text-gray-800 mb-1">Muscle Building</h3>
              <p className="text-sm text-gray-500 text-center">Build strength and muscle mass</p>
            </Link>
          </SwiperSlide>
          <SwiperSlide>
            <div className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50 cursor-pointer relative">
              <img src={ct1lock} alt="Premium Program" className="w-full h-48 object-cover rounded-lg mb-4 opacity-70 group-hover:scale-105 transition-transform duration-200" />
              <div className="absolute top-4 right-4 bg-gray-900/80 text-white text-xs px-2 py-1 rounded">Premium</div>
              <h3 className="text-lg font-medium text-gray-800 mb-1">Cardio Training</h3>
              <p className="text-sm text-gray-500 text-center">Unlock with Premium</p>
              <button onClick={handleSubscriptionClick} className="mt-2 text-xs font-medium text-gray-600 hover:text-gray-900 underline">Learn More</button>
            </div>
          </SwiperSlide>
          <SwiperSlide>
            <div className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50 cursor-pointer relative">
              <img src={sm1lock} alt="Premium Program" className="w-full h-48 object-cover rounded-lg mb-4 opacity-70 group-hover:scale-105 transition-transform duration-200" />
              <div className="absolute top-4 right-4 bg-gray-900/80 text-white text-xs px-2 py-1 rounded">Premium</div>
              <h3 className="text-lg font-medium text-gray-800 mb-1">Summer Shred</h3>
              <p className="text-sm text-gray-500 text-center">Unlock with Premium</p>
              <button onClick={handleSubscriptionClick} className="mt-2 text-xs font-medium text-gray-600 hover:text-gray-900 underline">Learn More</button>
            </div>
          </SwiperSlide>
        </Swiper>
      </div>

      {/* Desktop Grid */}
      <div className="hidden md:grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8 mb-10">
        <Link to="/programs/bodyweight" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
          <img src={bw1} alt="Bodyweight" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
          <h3 className="text-lg font-medium text-gray-800 mb-1">Bodyweight</h3>
          <p className="text-sm text-gray-500 text-center">Train anywhere, no equipment needed</p>
        </Link>
        <Link to="/programs/bootypump" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
          <img src={bp1} alt="Booty Pump" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
          <h3 className="text-lg font-medium text-gray-800 mb-1">Booty Pump</h3>
          <p className="text-sm text-gray-500 text-center">Sculpt and strengthen your glutes</p>
        </Link>
        <Link to="/programs/fullbody" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
          <img src={fb1} alt="Full Body" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
          <h3 className="text-lg font-medium text-gray-800 mb-1">Full Body</h3>
          <p className="text-sm text-gray-500 text-center">Balanced workouts for all muscle groups</p>
        </Link>
        <Link to="/programs/musclebuilding" className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50">
          <img src={mb1} alt="Muscle Building" className="w-full h-48 object-cover rounded-lg mb-4 transition-transform duration-200 group-hover:scale-105" />
          <h3 className="text-lg font-medium text-gray-800 mb-1">Muscle Building</h3>
          <p className="text-sm text-gray-500 text-center">Build strength and muscle mass</p>
        </Link>
        <div className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50 cursor-pointer relative">
          <img src={ct1lock} alt="Premium Program" className="w-full h-48 object-cover rounded-lg mb-4 opacity-70 group-hover:scale-105 transition-transform duration-200" />
          <div className="absolute top-4 right-4 bg-gray-900/80 text-white text-xs px-2 py-1 rounded">Premium</div>
          <h3 className="text-lg font-medium text-gray-800 mb-1">Cardio Training</h3>
          <p className="text-sm text-gray-500 text-center">Unlock with Premium</p>
          <button onClick={handleSubscriptionClick} className="mt-2 text-xs font-medium text-gray-600 hover:text-gray-900 underline">Learn More</button>
        </div>
        <div className="group rounded-xl bg-white/70 border border-gray-100/60 shadow-sm hover:shadow-md transition-all duration-200 overflow-hidden flex flex-col items-center p-4 hover:bg-gray-50 cursor-pointer relative">
          <img src={sm1lock} alt="Premium Program" className="w-full h-48 object-cover rounded-lg mb-4 opacity-70 group-hover:scale-105 transition-transform duration-200" />
          <div className="absolute top-4 right-4 bg-gray-900/80 text-white text-xs px-2 py-1 rounded">Premium</div>
          <h3 className="text-lg font-medium text-gray-800 mb-1">Summer Shred</h3>
          <p className="text-sm text-gray-500 text-center">Unlock with Premium</p>
          <button onClick={handleSubscriptionClick} className="mt-2 text-xs font-medium text-gray-600 hover:text-gray-900 underline">Learn More</button>
        </div>
      </div>
      <div className="mt-10 text-center">
        <p className="text-gray-600 mb-4">Want to get full access to all programs? <br /> Click below to see our subscription plans and choose the one that fits you best!</p>
        <button onClick={handleSubscriptionClick} className="inline-flex items-center px-5 py-2.5 bg-gray-900 text-white rounded-md hover:bg-gray-800 transition-colors font-medium">See Subscription Options</button>
      </div>
    </section>
  );
}

export default ProgramsSec;
