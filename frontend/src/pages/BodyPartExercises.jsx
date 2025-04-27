import { Fragment, useEffect, useState } from "react";
import PropTypes from "prop-types";
import { Link, useParams, useNavigate } from "react-router-dom";
import { useExercises } from "../context/ExerciseContext";
import Exercise from "../components/Exercise";
import imgFilter from "../assets/settings-sliders.png";
import backarrow from "../assets/back-arrow.svg";

function BodyPartExercises() {
  const { exercises, isLoading, error, fetchExercisesByBodyPart } = useExercises();
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
    if (filter) {
      fetchExercisesByBodyPart(filter);
    }
  }, [filter, fetchExercisesByBodyPart]);

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

  return (
    <div className="body-part-exercises">
      <div className="arrow-title">
        <Link to="/" onClick={handleNav}>
          <img className="backarrow" src={backarrow} alt="backarrow" />
        </Link>
        <h2>{filter} exercises</h2>
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

      {exercises.length > 0 ? (
        exercises
          .filter((item) =>
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
          ))
      ) : (
        <div className="error-msg">
          {isLoading ? (
            "Loading exercises..."
          ) : error ? (
            `Error: ${error}`
          ) : (
            "No exercises found for this body part. Please try another selection."
          )}
        </div>
      )}
    </div>
  );
}

export default BodyPartExercises;
