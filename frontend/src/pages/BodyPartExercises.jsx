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
      fetchExercisesByBodyPart(bodyPart, category, currentPage, 10, search)
        .finally(() => {
          setLocalLoading(false);
        });
    }
  }, [bodyPart, category, currentPage, search, fetchExercisesByBodyPart]);

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
    <div className="min-h-screen bg-gray-50 pt-16">
      <div className="sticky top-16 z-10 bg-white shadow-sm">
        <div className="flex items-center justify-between p-4">
          <div className="flex items-center gap-4">
            <Link to="/" onClick={handleNav} className="flex items-center">
              <img className="w-6 h-6" src={backarrow} alt="backarrow" />
            </Link>
            <h2 className="text-2xl font-semibold text-gray-800">{bodyPart} exercises</h2>
          </div>
          <div className="flex items-center gap-4">
            <button
              type="button"
              className="flex items-center gap-2 px-4 py-2 text-gray-700 bg-gray-100 rounded-lg hover:bg-gray-200"
              onClick={openFilter}
            >
              <img src={imgFilter} alt="" className="w-5 h-5" />
              <span>Filters</span>
            </button>
            <input
              className="w-64 px-4 py-2 text-gray-700 bg-gray-100 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              type="text"
              onChange={(e) => handleSearch(e.target.value)}
              value={search}
              placeholder="Search your exercise"
            />
          </div>
        </div>

        <div className={`p-4 bg-white border-t ${filterOpen ? 'block' : 'hidden'}`}>
          <div className="flex flex-wrap gap-4">
            {categories.map((cat) => (
              <Fragment key={cat}>
                <input
                  type="checkbox"
                  id={cat}
                  checked={category === cat}
                  onChange={(e) => {
                    if (e.target.checked) {
                      setCategory(cat);
                      setCurrentPage(1); // Reset to first page when changing category
                    } else {
                      setCategory("");
                      setCurrentPage(1); // Reset to first page when clearing category
                    }
                  }}
                  className="hidden"
                />
                <label
                  htmlFor={cat}
                  className={`px-4 py-2 rounded-lg cursor-pointer ${
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
      </div>

      <div className="p-4">
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
                />
              ))}
            </div>

            {/* Pagination */}
            {pagination.totalPages > 1 && (
              <div className="flex justify-center items-center gap-2 mt-8">
                <button
                  onClick={() => handlePageChange(currentPage - 1)}
                  disabled={currentPage === 1}
                  className={`px-4 py-2 rounded-lg ${
                    currentPage === 1
                      ? 'bg-gray-100 text-gray-400 cursor-not-allowed'
                      : 'bg-blue-500 text-white hover:bg-blue-600'
                  }`}
                >
                  Previous
                </button>
                <span className="text-gray-600">
                  Page {currentPage} of {pagination.totalPages}
                </span>
                <button
                  onClick={() => handlePageChange(currentPage + 1)}
                  disabled={currentPage === pagination.totalPages}
                  className={`px-4 py-2 rounded-lg ${
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
              <h3 className="text-xl font-semibold text-gray-800 mb-2">No Exercises Found</h3>
              <p className="text-gray-600 mb-1">We couldn't find any exercises for {bodyPart}.</p>
              <p className="text-gray-600">Try selecting a different body part or category.</p>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

export default BodyPartExercises;
