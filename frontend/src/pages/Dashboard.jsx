/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
import { Link, useNavigate } from "react-router-dom";
import React, { useEffect, useState } from "react";
import { Swiper, SwiperSlide } from "swiper/react";

import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";

import { Pagination } from "swiper";
import Accordion from "@mui/material/Accordion";
import AccordionSummary from "@mui/material/AccordionSummary";
import AccordionDetails from "@mui/material/AccordionDetails";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import Day from "../components/Day";
import mb1 from "../assets/mb1.png";
import bw1 from "../assets/bw1.png";
import backarrow from "../assets/back-arrow.svg";
import { useExercises } from "../context/ExerciseContext";
import {
  generateBootyPumpProgram,
  generateMuscleBuildingProgram,
  generateFullBodyProgram,
  generateBodyweightProgram,
} from "../utils/programGenerator";
import { useAuth } from "../context/AuthContext";

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
  const [imgSelect, setImgSelect] = useState(1);
  const nav = useNavigate();
  const [activeTab, setActiveTab] = useState("profile");
  const { user, logout, isPremium } = useAuth();

  useEffect(() => {
    // Only fetch exercises if we don't have them yet
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
      // Create empty program structure for all program types
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
    return <div className="loading">Loading dashboard...</div>;
  }

  if (error) {
    return <div className="error">Error loading dashboard: {error}</div>;
  }

  const progMuscleBuilding = weekArr.map((week, weekIndex) => {
    const weekExercises = programs.musclebuilding[weekIndex] || [];
    return (
      <div key={`week-${week}`}>
        <Accordion
          sx={{
            backgroundColor: "white !important",
            borderRadius: "16px !important",
            border: "none",
            color: "black",
            margin: "4px auto 4px auto",
            width: "100%",
            fontFamily: "Arial !important",
          }}
        >
          <AccordionSummary
            expandIcon={<ExpandMoreIcon />}
            aria-controls="panel1a-content"
            id="panel1a-header"
          >
            <input
              type="checkbox"
              className="validate"
              onClick={(e) => {
                handleCheck(e);
                setWeekLeft(11 - weekIndex);
              }}
            />
            <p>Week {weekIndex + 1}</p>
          </AccordionSummary>
          <AccordionDetails>
            {dayArr.map((day, dayIndex) => {
              const dayExercises = weekExercises[dayIndex] || [];
              return (
                <Day
                  key={`day-${day}`}
                  day={day}
                  exercises={dayExercises}
                />
              );
            })}
          </AccordionDetails>
        </Accordion>
      </div>
    );
  });

  const progBodyweight = weekArr.map((week, weekIndex) => {
    const weekExercises = programs.bodyweight[weekIndex] || [];
    return (
      <div key={`week-${week}`}>
        <Accordion
          sx={{
            backgroundColor: "white !important",
            borderRadius: "16px !important",
            border: "none",
            color: "black",
            margin: "4px auto 4px auto",
            width: "100%",
            fontFamily: "Arial !important",
          }}
        >
          <AccordionSummary
            expandIcon={<ExpandMoreIcon />}
            aria-controls="panel1a-content"
            id="panel1a-header"
          >
            <input
              type="checkbox"
              className="validate"
              onClick={(e) => {
                handleCheck(e);
                setWeekLeft(11 - weekIndex);
              }}
            />
            <p>Week {weekIndex + 1}</p>
          </AccordionSummary>
          <AccordionDetails>
            {dayArr.map((day, dayIndex) => {
              const dayExercises = weekExercises[dayIndex] || [];
              return (
                <Day
                  key={`day-${day}`}
                  day={day}
                  exercises={dayExercises}
                />
              );
            })}
          </AccordionDetails>
        </Accordion>
      </div>
    );
  });

  return (
    <div className="container mx-auto px-4 py-8 max-w-5xl">
      <h1 className="text-3xl font-bold mb-8 text-center">Dashboard</h1>

      {/* Tabs */}
      <div className="flex border-b border-gray-200 mb-8">
        <button
          className={`py-3 px-6 font-medium text-lg ${activeTab === "profile"
              ? "border-b-2 border-indigo-600 text-indigo-600"
              : "text-gray-500 hover:text-gray-700"
            }`}
          onClick={() => setActiveTab("profile")}
        >
          Profile
        </button>
        <button
          className={`py-3 px-6 font-medium text-lg ${activeTab === "subscription"
              ? "border-b-2 border-indigo-600 text-indigo-600"
              : "text-gray-500 hover:text-gray-700"
            }`}
          onClick={() => setActiveTab("subscription")}
        >
          Subscription
        </button>
        <button
          className={`py-3 px-6 font-medium text-lg ${activeTab === "saved"
              ? "border-b-2 border-indigo-600 text-indigo-600"
              : "text-gray-500 hover:text-gray-700"
            }`}
          onClick={() => setActiveTab("saved")}
        >
          Saved Workouts
        </button>
      </div>

      {/* Profile Tab */}
      {activeTab === "profile" && (
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-xl font-semibold mb-4">Your Profile</h2>
          <div className="mb-6">
            <div className="flex items-center justify-center mb-6">
              <div className="w-24 h-24 bg-indigo-100 rounded-full flex items-center justify-center">
                <span className="text-3xl font-bold text-indigo-600">
                  {user?.email.charAt(0).toUpperCase()}
                </span>
              </div>
            </div>

            <div className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  Email
                </label>
                <div className="px-4 py-2 bg-gray-100 rounded-md">{user?.email}</div>
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  Account Type
                </label>
                <div className="px-4 py-2 bg-gray-100 rounded-md flex items-center">
                  {isPremium() ? (
                    <>
                      <span className="bg-green-100 text-green-800 px-2 py-1 rounded text-sm font-medium mr-2">
                        Premium
                      </span>
                      <span>You have access to all content</span>
                    </>
                  ) : (
                    <>
                      <span className="bg-gray-100 text-gray-800 px-2 py-1 rounded text-sm font-medium mr-2">
                        Standard
                      </span>
                      <span>
                        <a href="/subscription" className="text-indigo-600 hover:text-indigo-500 hover:underline">
                          Upgrade to Premium
                        </a> for full access
                      </span>
                    </>
                  )}
                </div>
              </div>
            </div>
          </div>

          <div className="pt-4 border-t border-gray-200">
            <button
              onClick={handleLogout}
              className="px-4 py-2 bg-red-100 text-red-700 rounded-md hover:bg-red-200 transition-colors"
            >
              Logout
            </button>
          </div>
        </div>
      )}

      {/* Subscription Tab */}
      {activeTab === "subscription" && (
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-xl font-semibold mb-4">Your Subscription</h2>

          {isPremium() ? (
            <div className="mb-6">
              <div className="p-4 mb-6 bg-green-50 border border-green-200 rounded-md">
                <h3 className="text-lg font-medium text-green-800 mb-2">Active Subscription</h3>
                <p className="text-green-700">
                  You have an active premium subscription with access to all content and features.
                </p>
              </div>

              <div className="bg-white border border-gray-200 rounded-md p-4">
                <h4 className="font-medium mb-2">Premium Benefits</h4>
                <ul className="space-y-2 text-gray-600">
                  <li className="flex items-center">
                    <svg className="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
                    </svg>
                    Access to all workout programs
                  </li>
                  <li className="flex items-center">
                    <svg className="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
                    </svg>
                    Nutrition meal plans and recipes
                  </li>
                  <li className="flex items-center">
                    <svg className="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
                    </svg>
                    Save and customize workouts
                  </li>
                </ul>
              </div>
            </div>
          ) : (
            <div className="mb-6">
              <div className="p-4 mb-6 bg-yellow-50 border border-yellow-200 rounded-md">
                <h3 className="text-lg font-medium text-yellow-800 mb-2">No Active Subscription</h3>
                <p className="text-yellow-700">
                  You're currently on the free plan with limited access to content.
                </p>
              </div>

              <div className="bg-white border border-gray-200 rounded-md p-4 mb-6">
                <h4 className="font-medium mb-2">Premium Benefits</h4>
                <ul className="space-y-2 text-gray-600">
                  <li className="flex items-center">
                    <svg className="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
                    </svg>
                    Access to all workout programs
                  </li>
                  <li className="flex items-center">
                    <svg className="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
                    </svg>
                    Nutrition meal plans and recipes
                  </li>
                  <li className="flex items-center">
                    <svg className="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
                    </svg>
                    Save and customize workouts
                  </li>
                </ul>
              </div>

              <a
                href="/subscription"
                className="block w-full py-3 px-4 bg-indigo-600 text-white font-medium text-center rounded-md hover:bg-indigo-700 transition-colors"
              >
                Upgrade to Premium
              </a>
            </div>
          )}
        </div>
      )}

      {/* Saved Workouts Tab */}
      {activeTab === "saved" && (
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-xl font-semibold mb-4">Saved Workouts</h2>

          {!isPremium() ? (
            <div className="bg-yellow-50 border border-yellow-200 rounded-md p-4">
              <h3 className="text-lg font-medium text-yellow-800 mb-2">Premium Feature</h3>
              <p className="text-yellow-700 mb-4">
                Saving workouts is a premium feature. Upgrade to access this functionality.
              </p>
              <a
                href="/subscription"
                className="inline-block py-2 px-4 bg-indigo-600 text-white font-medium rounded-md hover:bg-indigo-700 transition-colors"
              >
                Upgrade to Premium
              </a>
            </div>
          ) : (
            <div className="space-y-4">
              <p className="text-gray-600">You haven't saved any workouts yet.</p>
              <a
                href="/programs/all"
                className="inline-block py-2 px-4 border border-indigo-600 text-indigo-600 font-medium rounded-md hover:bg-indigo-50 transition-colors"
              >
                Browse Programs
              </a>
            </div>
          )}
        </div>
      )}
    </div>
  );
}
