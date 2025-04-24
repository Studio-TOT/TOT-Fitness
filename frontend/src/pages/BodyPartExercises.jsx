import { Fragment, useEffect, useState } from "react";
import PropTypes from "prop-types";
import { Link, useParams, useNavigate } from "react-router-dom";

import Exercise from "../components/Exercise";
import imgFilter from "../assets/settings-sliders.png";
import backarrow from "../assets/back-arrow.svg";

function BodyPartExercises({ exercises, handleExerciseChange, isLoading }) {
  const categories = [
    "Barbell",
    "Dumbbells",
    "Bodyweight",
    "Kettlebells",
    "Stretches",
    "Yoga",
    "Plate",
    "TRX",
    "Band",
    "Cables",
  ];

  const nav = useNavigate();
  const { exercise } = useParams();

  const [filter, setFilter] = useState([]);
  const [filteredExercises, setFilteredExercises] = useState(exercises);
  const [search, setSearch] = useState("");
  const [filterOpen, setFilterOpen] = useState(false);

  useEffect(() => {
    if (exercise === "Lowerback") {
      handleExerciseChange("Lower back");
    } else if (exercise === "Midback") {
      handleExerciseChange("Mid back");
    } else {
      handleExerciseChange(exercise);
    }
  }, [exercise, handleExerciseChange]);

  useEffect(() => {
    if (filter.length === 0) {
      setFilteredExercises(exercises);
      return;
    }
    if (filter && filter !== "false") {
      setFilteredExercises(
        exercises.filter((exo) => filter.some((str) => str === exo.category))
      );
      return;
    }
    if (exercises.length) {
      setFilteredExercises(exercises);
    }
  }, [filter, exercises]);

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  const handleNav = () => {
    nav(-1);
  };

  const openFilter = () => {
    setFilterOpen(!filterOpen);
  };

  if (isLoading) {
    return <div className="loading">Loading exercises...</div>;
  }

  return (
    <div className="body-part-exercises">
      <div className="arrow-title">
        <Link to="/" onClick={handleNav}>
          <img className="backarrow" src={backarrow} alt="backarrow" />
        </Link>
        <h2>{exercise} exercises</h2>
      </div>
      <div className="filter-search">
        <button type="button" className="btn-filter" onClick={openFilter}>
          <img src={imgFilter} alt="" /> <span>Filters</span>
        </button>
        <input
          className="searchbar"
          type="text"
          onChange={(e) => setSearch(e.target.value)}
          value={search}
          placeholder="Search your exercise"
        />
      </div>
      <div className={filterOpen ? "filters filters-open" : "filters"}>
        {categories.map((c) => (
          <Fragment key={categories.indexOf(c)}>
            <input
              type="checkbox"
              name=""
              id=""
              value={c}
              onChange={(e) => {
                if (e.target.checked) {
                  setFilter((prevState) => {
                    if (!prevState.includes(c)) {
                      return [...prevState, c];
                    }
                    return prevState;
                  });
                } else {
                  setFilter((prevState) => {
                    const prevStateCopy = [...prevState];
                    const indexOf = prevState.indexOf(c);
                    prevStateCopy.splice(indexOf, 1);
                    return prevStateCopy;
                  });
                }
              }}
            />
            <label htmlFor={c}>{c}</label>
          </Fragment>
        ))}
      </div>

      {filteredExercises
        ?.filter((item) =>
          item.exercise_name.toLowerCase().includes(search.toLowerCase())
        )
        .map((e) => (
          <Exercise
            key={e.id}
            name={e.exercise_name}
            video={e.images?.male?.[0]?.branded_video || e.images?.female?.[0]?.branded_video}
            description={e.steps}
            category={e.category}
          />
        ))}
      <div className="error-msg">
        {filteredExercises?.filter((item) =>
          item.exercise_name.toLowerCase().includes(search.toLowerCase())
        ).length === 0 && "Sorry, nothing to see here."}
      </div>
    </div>
  );
}

BodyPartExercises.propTypes = {
  exercises: PropTypes.arrayOf(PropTypes.shape).isRequired,
  handleExerciseChange: PropTypes.func.isRequired,
  isLoading: PropTypes.bool.isRequired,
};

export default BodyPartExercises;
