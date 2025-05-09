import { useEffect, useState } from "react";
import PropTypes from "prop-types";
import { useParams, Link, useNavigate } from "react-router-dom";
import Accordion from "@mui/material/Accordion";
import AccordionSummary from "@mui/material/AccordionSummary";
import AccordionDetails from "@mui/material/AccordionDetails";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import { useExercises } from "../context/ExerciseContext";
import {
  generateBootyPumpProgram,
  generateMuscleBuildingProgram,
  generateFullBodyProgram,
  generateBodyweightProgram,
} from "../utils/programGenerator";
import Start from "../components/Start";
import Day from "../components/Day";
import bp1 from "../assets/bp1.png";
import bw1 from "../assets/bw1.png";
import mb1 from "../assets/mb1.png";
import fb1 from "../assets/fb1.png";
import backarrow from "../assets/back-arrow.svg";

export default function Programs() {
  const { programType } = useParams();
  const { exercises, isLoading, error, fetchExercises } = useExercises();
  const [program, setProgram] = useState([]);
  const [expandedWeek, setExpandedWeek] = useState(null);
  const nav = useNavigate();

  useEffect(() => {
    // Only fetch exercises if we don't have them yet
    if (!exercises || exercises.length === 0) {
      fetchExercises();
    }
  }, [exercises, fetchExercises]);

  useEffect(() => {
    if (!exercises) return;

    let generatedProgram;
    switch (programType) {
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
  }, [programType, exercises]);

  const dayArr = Array.from({ length: 3 }, (v, k) => k + 1);
  const weekArr = Array.from({ length: 12 }, (v, k) => k + 1);

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  const handleNav = () => {
    nav(-1);
  };

  const handleWeekChange = (index) => {
    setExpandedWeek(expandedWeek === index ? null : index);
  };

  const progdesc = () => {
    if (programType === "bodyweight") {
      return (
        <div className="programdesc">
          <h2>Bodyweight Program: Get Fit Anywhere Without Equipment</h2>
          <p>
            Looking for a simple and effective way to get fit without the need
            for any equipment? Consider a bodyweight program. Bodyweight
            exercises require no equipment and can be done anywhere, making them
            perfect for home workouts or when traveling. They're also great for
            people of all fitness levels, from beginners to experienced
            athletes.
          </p>
          <p>
            Popular exercises in a bodyweight program include push-ups, squats,
            lunges, planks, and burpees. These exercises can be varied in
            intensity and combination to target different muscle groups and
            prevent boredom. With a little creativity and consistency, you can
            improve your strength, flexibility, and overall fitness with a
            bodyweight program.
          </p>
          <Start content="Start this program" />
        </div>
      );
    }
    if (programType === "bootypump") {
      return (
        <div className="programdesc">
          <h2>Booty Pump: Build Your Best Butt</h2>
          <p>
            Booty Pump is a 12-week program designed to strengthen and tone your
            glutes. The program includes a variety of exercises targeting the
            different muscles in your butt, suitable for all fitness levels.
          </p>
          <p>
            The program combines muscle-building exercises with advanced
            training techniques for maximum results. It also includes exercises
            to strengthen your lower back, legs, and core. A customized
            nutrition plan is provided to support muscle growth and fat loss.
          </p>
          <p>
            Try Booty Pump for firmer, toned, and sculpted glutes in just 12
            weeks.
          </p>
          <Start content="Start this program" />
        </div>
      );
    }
    if (programType === "fullbody") {
      return (
        <div className="programdesc">
          <h2>Full Body: Achieve Fullbody Fitness</h2>
          <p>
            Full Body is a 12-week program designed to improve overall strength
            and conditioning. The program includes a variety of free weight
            exercises, such as dumbbell and barbell movements, to target all
            major muscle groups.
          </p>
          <p>
            The program is suitable for all fitness levels and is designed to
            progressively increase in difficulty to ensure maximum results. The
            exercises are combined with traditional training techniques for
            optimal muscle growth and strength gains.
          </p>
          <p>
            Full Body also includes exercises to improve endurance and overall
            fitness. A customized nutrition plan is provided to support muscle
            growth and fat loss.
          </p>
          <p>
            Try Full Body for improved strength, conditioning, and overall
            fitness in just 12 weeks.
          </p>
          <Start content="Start this program" />
        </div>
      );
    }
    if (programType === "musclebuilding") {
      return (
        <div className="programdesc">
          <h2>Muscle Building: Sculpt Your Ideal Physique</h2>
          <p>
            Muscle Building is a 12-week program designed to increase muscle
            mass and definition. The program includes a variety of exercises
            targeting all major muscle groups, suitable for all fitness levels.
          </p>
          <p>
            The program combines muscle-building exercises with traditional
            training techniques for maximum results. It also includes exercises
            to strengthen your lower back, legs, and core. A customized
            nutrition plan is provided to support muscle growth and fat loss.
          </p>
          <p>
            Each week of the program is designed to progressively increase in
            difficulty to ensure maximum results. The program also includes a
            variety of rep ranges and sets for optimal muscle growth and
            definition.
          </p>
          <p>
            Try Muscle Building for increased muscle mass and definition in just
            12 weeks.
          </p>
          <Start content="Start this program" />
        </div>
      );
    }
    return null;
  };

  const svg = () => {
    if (programType === "bootypump") {
      return window.innerWidth < 800 ? (
        <>
          <img src={bp1} alt="bootypump" />
          <div className="programdescmobile">
            <h3>Booty Pump: Build Your Best Butt</h3>
            <p>
              Booty Pump is a 12-week glute-strengthening program for all
              fitness levels. It combines muscle-building exercises with
              advanced training techniques and includes a customized nutrition
              plan for optimal results. Achieve firmer, toned, and sculpted
              glutes with Booty Pump.
            </p>
            <Start content="Start this program" />
          </div>
        </>
      ) : (
        <>
          <img src={bp1} alt="bootypump" />
          {progdesc()}{" "}
        </>
      );
    }
    if (programType === "bodyweight") {
      return window.innerWidth < 800 ? (
        <>
          <img src={bw1} alt="bodyweight" />{" "}
          <div className="programdescmobile">
            <h3>Bodyweight Program: Get Fit Anywhere Without Equipment</h3>
            <p>
              The Bodyweight Program is a simple and effective way to get fit
              without equipment. Popular exercises like push-ups, squats,
              lunges, planks, and burpees can be done anywhere and are suitable
              for all fitness levels. With consistency, a Bodyweight Program can
              improve strength, flexibility, and overall fitness.
            </p>
            <Start content="Start this program" />
          </div>
        </>
      ) : (
        <>
          <img src={bw1} alt="bodyweight" /> {progdesc()}
        </>
      );
    }
    if (programType === "fullbody") {
      return window.innerWidth < 800 ? (
        <>
          <img src={fb1} alt="fullbody" />{" "}
          <div className="programdescmobile">
            <h3>Full Body: Achieve Fullbody Fitness</h3>
            <p>
              A 12-week program designed to improve overall strength and
              conditioning with free weight exercises targeting all major muscle
              groups. Suitable for all fitness levels with traditional training
              techniques for optimal muscle growth and strength gains. Includes
              exercises for endurance and a customized nutrition plan.
            </p>
            <Start content="Start this program" />
          </div>
        </>
      ) : (
        <>
          <img src={fb1} alt="fullbody" />
          {progdesc()}
        </>
      );
    }
    if (programType === "musclebuilding") {
      return window.innerWidth < 800 ? (
        <>
          {" "}
          <img src={mb1} alt="musclebuilding" />{" "}
          <div className="programdescmobile">
            <h3>Muscle Building: Sculpt Your Ideal Physique</h3>
            <p>
              Muscle Building is a 12-week program designed to increase muscle
              mass and definition through a variety of exercises suitable for
              all fitness levels. With traditional training techniques and a
              customized nutrition plan, you can achieve optimal results and
              progressively increase difficulty each week. Try Muscle Building
              for a more sculpted physique in just 12 weeks.
            </p>
            <Start content="Start this program" />
          </div>
        </>
      ) : (
        <>
          <img src={mb1} alt="musclebuilding" />
          {progdesc()}
        </>
      );
    }
    return null;
  };

  if (isLoading) {
    return <div className="loading">Loading program...</div>;
  }

  if (error) {
    return <div className="error">Error loading program: {error}</div>;
  }

  return (
    <div className="programs-page">
      <div className="program">
        <div className="headerprog">
          {" "}
          <div className="arrow-title">
            <Link to="/" onClick={handleNav}>
              <img className="backarrow" src={backarrow} alt="backarrow" />
            </Link>
            <h2 className="prog-title">Our programs</h2>
          </div>
        </div>
        <div className="programimage">
          <div className="progpic">{svg()}</div>
        </div>
        <div className="programcontainer">
          {weekArr.map((week, index) => (
            <div className="accordionweek" key={`week-${week}`}>
              <Accordion
                expanded={expandedWeek === index}
                onChange={() => handleWeekChange(index)}
                sx={{
                  backgroundColor: "white !important",
                  borderRadius: "12px !important",
                  border: "none",
                  color: "black",
                  margin: "4px 0 !important",
                  width: "100%",
                  fontFamily: "Arial !important",
                  boxShadow: "0 2px 4px -1px rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1)",
                  transition: "all 0.3s ease-in-out",
                  "&:hover": {
                    transform: "translateY(-2px)",
                    boxShadow: "0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1)",
                  },
                  "@media (min-width: 768px)": {
                    width: "95%",
                    margin: "8px auto !important",
                    borderRadius: "16px !important",
                    boxShadow: "0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)",
                  }
                }}
              >
                <AccordionSummary
                  expandIcon={<ExpandMoreIcon />}
                  aria-controls="panel1a-content"
                  id="panel1a-header"
                  className="bg-white hover:bg-gray-50 transition-colors duration-200"
                  sx={{
                    padding: '8px 12px',
                    '@media (min-width: 768px)': {
                      padding: '12px 16px'
                    }
                  }}
                >
                  <div className="flex items-center w-full">
                    <div className="flex items-center justify-center w-6 h-6 md:w-8 md:h-8 bg-blue-500 text-white rounded-full mr-2 md:mr-3">
                      <span className="text-xs md:text-sm font-semibold">{index + 1}</span>
                    </div>
                    <div>
                      <p className="text-base md:text-lg font-semibold text-gray-800">Week {index + 1}</p>
                      <p className="text-xs md:text-sm text-gray-500">3 days of training</p>
                    </div>
                  </div>
                </AccordionSummary>
                <AccordionDetails className="p-0">
                  <div className="p-2 md:p-4 bg-gray-50">
                    {dayArr.map((day, dayIndex) => (
                      <div 
                        key={`day-${day}`}
                        className="mb-2 md:mb-4 last:mb-0"
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
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}

Programs.propTypes = {
  exercises: PropTypes.arrayOf(
    PropTypes.shape({
      name: PropTypes.string.isRequired,
      muscle: PropTypes.string.isRequired,
      equipment: PropTypes.string.isRequired,
    })
  ),
};
