import PropTypes from "prop-types";
import Exercise from "./Exercise";
import CalendarTodayIcon from '@mui/icons-material/CalendarToday';

function Day({ day, exercises = [] }) {
  if (!Array.isArray(exercises)) {
    return (
      <div className="bg-white rounded-lg p-4 shadow-sm">
        <div className="flex items-center mb-4">
          <CalendarTodayIcon className="text-blue-500 mr-2" />
          <h3 className="text-lg font-semibold text-gray-800">Day {day}</h3>
        </div>
        <div className="text-center text-gray-500 py-4">
          <p>No exercises available for this day</p>
        </div>
      </div>
    );
  }

  return (
    <div className="bg-white rounded-lg p-2 md:p-4 shadow-sm">
      <div className="flex items-center mb-3 md:mb-4">
        <CalendarTodayIcon className="text-blue-500 mr-2" />
        <h3 className="text-lg font-semibold text-gray-800">Day {day}</h3>
      </div>
      <div className="space-y-2 md:space-y-4 -mx-2 md:mx-0">
        {exercises.map((exercise) => (
          <div key={exercise?.id} className="px-2 md:px-0">
            <Exercise
              name={exercise?.exercise_name}
              video={exercise?.images?.male?.[0]?.branded_video || exercise?.images?.female?.[0]?.branded_video}
              description={exercise?.steps}
              category={exercise?.category}
              difficulty={exercise?.difficulty}
            />
          </div>
        ))}
      </div>
    </div>
  );
}

Day.propTypes = {
  day: PropTypes.number.isRequired,
  exercises: PropTypes.arrayOf(
    PropTypes.shape({
      id: PropTypes.number,
      exercise_name: PropTypes.string,
      category: PropTypes.string,
      difficulty: PropTypes.string,
      equipment: PropTypes.arrayOf(PropTypes.string),
      target: PropTypes.shape({
        Primary: PropTypes.arrayOf(PropTypes.string),
        Secondary: PropTypes.arrayOf(PropTypes.string),
        Tertiary: PropTypes.arrayOf(PropTypes.string),
      }),
      steps: PropTypes.arrayOf(PropTypes.string),
      images: PropTypes.shape({
        male: PropTypes.arrayOf(PropTypes.shape({
          branded_video: PropTypes.string,
        })),
        female: PropTypes.arrayOf(PropTypes.shape({
          branded_video: PropTypes.string,
        })),
      }),
    })
  ),
};

export default Day;
