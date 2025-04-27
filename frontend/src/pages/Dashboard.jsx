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
    <>
      <div className="dashboard-container">
        <div className="arrow-title">
          <Link to="/" onClick={handleNav}>
            <img className="backarrow" src={backarrow} alt="backarrow" />
          </Link>
          <h2>Dashboard</h2>
        </div>
        <p id="dash-title">My programs</p>
        <div id="swiper-dash">
          <Swiper
            spaceBetween={30}
            pagination
            modules={[Pagination]}
            onSlideChange={(swiper) =>
              setTimeout(() => {
                setActiveIndex(swiper.activeIndex);
              }, "100")
            }
            className="mySwiper"
          >
            <SwiperSlide>
              <img className="imgprog" src={mb1} alt="musclebuilding" />
            </SwiperSlide>
            <SwiperSlide>
              <img className="imgprog" src={bw1} alt="bodyweight" />
            </SwiperSlide>
          </Swiper>
        </div>

        <div className="gallery-dash">
          <img
            src={mb1}
            alt=""
            className={imgSelect === 1 ? "imgprog selected" : "imgprog"}
            onClick={() => {
              setImgSelect(1);
              setTimeout(() => {
                setActiveIndex(0);
              }, "100");
            }}
          />
          <img
            src={bw1}
            alt=""
            className={imgSelect === 2 ? "imgprog selected" : "imgprog"}
            onClick={() => {
              setImgSelect(2);
              setTimeout(() => {
                setActiveIndex(1);
              }, "100");
            }}
          />
          <div className="emptyprog" />
          <div className="emptyprog" />
        </div>
        <div className="dashboard1">
          {activeIndex === 0 && progMuscleBuilding}
        </div>
        <div className="dashboard2">{activeIndex !== 0 && progBodyweight}</div>
      </div>
      <div className={openPopUp ? "popup-week alert" : "popup-week"}>
        <p>
          {weekLeft > 0
            ? `Keep going ! ${weekLeft} ${
                weekLeft === 1 ? "week" : "weeks"
              } to go !`
            : `Congratulations ! You did it !`}
        </p>
      </div>
    </>
  );
}
