import { Fragment, useEffect, useState } from "react";
import PropTypes from "prop-types";
import { Link, useParams, useNavigate } from "react-router-dom";
import { useExercises } from "../context/ExerciseContext";
import Exercise from "../components/Exercise";
import Spinner from "../components/Spinner";
import imgFilter from "../assets/settings-sliders.png";
import backarrow from "../assets/back-arrow.svg";

function BodyPartExercises() {
  const { exercises, pagination, isLoading, fetchExercisesByBodyPart } = useExercises();
  const [bodyPart, setBodyPart] = useState("");
  const [category, setCategory] = useState("");
  const [search, setSearch] = useState("");
  const [filterOpen, setFilterOpen] = useState(false);
  const [localLoading, setLocalLoading] = useState(false);
  const [currentPage, setCurrentPage] = useState(1);
  const [difficulty, setDifficulty] = useState("");

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

  const difficulties = [
    "Beginner",
    "Novice",
    "Intermediate",
    "Advanced"
  ];

  const nav = useNavigate();
  const { exercise } = useParams();

  useEffect(() => {
    if (exercise === "Lowerback") {
      setBodyPart("Lower back");
    } else if (exercise === "Midback") {
      setBodyPart("Mid back");
    } else {
      setBodyPart(exercise);
    }
  }, [exercise]);

  useEffect(() => {
    if (bodyPart) {
      setLocalLoading(true);
      fetchExercisesByBodyPart(bodyPart, category, currentPage, 10, search, difficulty)
        .finally(() => {
          setLocalLoading(false);
        });
    }
  }, [bodyPart, category, currentPage, search, difficulty, fetchExercisesByBodyPart]);

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  const handleNav = () => {
    nav(-1);
  };

  const openFilter = () => {
    setFilterOpen(!filterOpen);
  };

  const handlePageChange = (newPage) => {
    setCurrentPage(newPage);
    window.scrollTo(0, 0);
  };

  const handleSearch = (value) => {
    setSearch(value);
    setCurrentPage(1); // Reset to first page when searching
  };

  return (
    <div className="min-h-screen bg-gray-50 pt-0 md:pt-16">
      <div className="sticky top-0 md:top-16 z-10 bg-white shadow-sm">
        <div className="flex flex-col md:flex-row md:items-center justify-between p-4 gap-4">
          <div className="flex items-center gap-4">
            <Link to="/" onClick={handleNav} className="flex items-center">
              <img className="w-6 h-6" src={backarrow} alt="backarrow" />
            </Link>
            <h2 className="text-xl md:text-2xl font-semibold text-gray-800">{bodyPart} exercises</h2>
          </div>
          <div className="flex flex-col md:flex-row items-stretch md:items-center gap-4 w-full md:w-auto">
            <div className="flex items-center gap-2">
              <button
                type="button"
                className="flex items-center gap-2 px-4 py-2 text-gray-700 bg-gray-100 rounded-lg hover:bg-gray-200 flex-1 md:flex-none justify-center"
                onClick={openFilter}
              >
                <img src={imgFilter} alt="" className="w-5 h-5" />
                <span>Filters</span>
              </button>
            </div>
            <input
              className="w-full md:w-64 px-4 py-2 text-gray-700 bg-gray-100 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              type="text"
              onChange={(e) => handleSearch(e.target.value)}
              value={search}
              placeholder="Search your exercise"
            />
          </div>
        </div>

        <div className={`p-4 bg-white border-t ${filterOpen ? 'block' : 'hidden'}`}>
          <div className="space-y-4">
            {/* Category Filters */}
            <div>
              <h3 className="text-sm font-medium text-gray-700 mb-2">Categories</h3>
              <div className="flex flex-wrap gap-2 md:gap-4">
                {categories.map((cat) => (
                  <Fragment key={cat}>
                    <input
                      type="checkbox"
                      id={cat}
                      checked={category === cat}
                      onChange={(e) => {
                        if (e.target.checked) {
                          setCategory(cat);
                          setCurrentPage(1);
                        } else {
                          setCategory("");
                          setCurrentPage(1);
                        }
                      }}
                      className="hidden"
                    />
                    <label
                      htmlFor={cat}
                      className={`px-3 py-1.5 md:px-4 md:py-2 text-sm md:text-base rounded-lg cursor-pointer ${
                        category === cat
                          ? 'bg-blue-500 text-white'
                          : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                      }`}
                    >
                      {cat}
                    </label>
                  </Fragment>
                ))}
              </div>
            </div>

            {/* Difficulty Filters */}
            <div>
              <h3 className="text-sm font-medium text-gray-700 mb-2">Difficulty</h3>
              <div className="flex flex-wrap gap-2 md:gap-4">
                {difficulties.map((diff) => (
                  <Fragment key={diff}>
                    <input
                      type="checkbox"
                      id={`diff-${diff}`}
                      checked={difficulty === diff}
                      onChange={(e) => {
                        if (e.target.checked) {
                          setDifficulty(diff);
                          setCurrentPage(1);
                        } else {
                          setDifficulty("");
                          setCurrentPage(1);
                        }
                      }}
                      className="hidden"
                    />
                    <label
                      htmlFor={`diff-${diff}`}
                      className={`px-3 py-1.5 md:px-4 md:py-2 text-sm md:text-base rounded-lg cursor-pointer ${
                        difficulty === diff
                          ? 'bg-blue-500 text-white'
                          : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                      }`}
                    >
                      {diff}
                    </label>
                  </Fragment>
                ))}
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="p-4 pb-24 md:pb-4">
        {localLoading ? (
          <div className="flex justify-center items-center min-h-[300px]">
            <Spinner />
          </div>
        ) : exercises.length > 0 ? (
          <>
            <div className="space-y-4">
              {exercises.map((e) => (
                <Exercise
                  key={e.id}
                  name={e.exercise_name}
                  video={
                    e.images?.male?.[0]?.branded_video ||
                    e.images?.female?.[0]?.branded_video
                  }
                  description={e.steps}
                  category={e.category}
                  difficulty={e.difficulty}
                />
              ))}
            </div>

            {/* Pagination */}
            {pagination.totalPages > 1 && (
              <div className="flex justify-center items-center gap-2 mt-8">
                <button
                  onClick={() => handlePageChange(currentPage - 1)}
                  disabled={currentPage === 1}
                  className={`px-3 py-1.5 md:px-4 md:py-2 text-sm md:text-base rounded-lg ${
                    currentPage === 1
                      ? 'bg-gray-100 text-gray-400 cursor-not-allowed'
                      : 'bg-blue-500 text-white hover:bg-blue-600'
                  }`}
                >
                  Previous
                </button>
                <span className="text-sm md:text-base text-gray-600">
                  Page {currentPage} of {pagination.totalPages}
                </span>
                <button
                  onClick={() => handlePageChange(currentPage + 1)}
                  disabled={currentPage === pagination.totalPages}
                  className={`px-3 py-1.5 md:px-4 md:py-2 text-sm md:text-base rounded-lg ${
                    currentPage === pagination.totalPages
                      ? 'bg-gray-100 text-gray-400 cursor-not-allowed'
                      : 'bg-blue-500 text-white hover:bg-blue-600'
                  }`}
                >
                  Next
                </button>
              </div>
            )}
          </>
        ) : (
          <div className="flex justify-center items-center min-h-[300px] p-8 bg-white rounded-lg shadow-sm">
            <div className="text-center">
              <h3 className="text-lg md:text-xl font-semibold text-gray-800 mb-2">No Exercises Found</h3>
              <p className="text-sm md:text-base text-gray-600 mb-1">We couldn't find any exercises for {bodyPart}.</p>
              <p className="text-sm md:text-base text-gray-600">Try selecting a different body part or category.</p>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

export default BodyPartExercises;
