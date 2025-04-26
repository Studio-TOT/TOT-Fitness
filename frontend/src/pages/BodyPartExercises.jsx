import { Fragment, useEffect, useState } from "react";
import PropTypes from "prop-types";
import { Link, useParams, useNavigate } from "react-router-dom";
import { useExercises } from "../context/ExerciseContext";
import Exercise from "../components/Exercise";
import imgFilter from "../assets/settings-sliders.png";
import backarrow from "../assets/back-arrow.svg";

function BodyPartExercises() {
  const { exercises, isLoading, error, fetchExercises, getExercisesByMuscle } = useExercises();
  const [filter, setFilter] = useState("");
  const [search, setSearch] = useState("");
  const [filterOpen, setFilterOpen] = useState(false);

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

  useEffect(() => {
    if (exercise === "Lowerback") {
      setFilter("Lower back");
    } else if (exercise === "Midback") {
      setFilter("Mid back");
    } else {
      setFilter(exercise);
    }
  }, [exercise]);

  useEffect(() => {
    fetchExercises();
  }, [fetchExercises]);

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

  if (error) {
    return <div className="error">Error loading exercises: {error}</div>;
  }

  const filteredExercises = getExercisesByMuscle(exercises, filter);

  return (
    <div className="bodypart-exercises">
      <div className="header">
        <button type="button" onClick={handleNav} className="back-button">
          <img src={backarrow} alt="back" />
        </button>
        <h1>{filter}</h1>
        <button type="button" onClick={openFilter} className="filter-button">
          <img src={imgFilter} alt="filter" />
        </button>
      </div>

      <div className="search-bar">
        <input
          type="text"
          placeholder="Search exercises..."
          value={search}
          onChange={(e) => setSearch(e.target.value)}
        />
      </div>

      {filterOpen && (
        <div className="filter-options">
          {categories.map((category) => (
            <button
              key={category}
              type="button"
              onClick={() => setFilter(category)}
              className={filter === category ? "active" : ""}
            >
              {category}
            </button>
          ))}
        </div>
      )}

      {filteredExercises
        ?.filter((item) =>
          item?.exercise_name?.toLowerCase().includes(search.toLowerCase())
        )
        .map((e) => (
          <Exercise
            key={e.id}
            name={e.exercise_name}
            video={
              e.images?.male?.[0]?.branded_video ||
              e.images?.female?.[0]?.branded_video
            }
            description={e.steps}
            category={e.category}
          />
        ))}
      <div className="error-msg">
        {filteredExercises?.filter((item) =>
          item?.exercise_name?.toLowerCase().includes(search.toLowerCase())
        ).length === 0 && "Sorry, nothing to see here."}
      </div>
    </div>
  );
}

export default BodyPartExercises;
