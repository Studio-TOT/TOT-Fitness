import PropTypes from "prop-types";
import Exercise from "./Exercise";

function Day({ day, exercises = [] }) {
  if (!Array.isArray(exercises)) {
    return (
      <div className="day">
        <h3>Day {day}</h3>
        <div className="exercises">
          <p>No exercises available for this day</p>
        </div>
      </div>
    );
  }

  return (
    <div className="day">
      <h3>Day {day}</h3>
      <div className="exercises">
        {exercises.map((exercise) => (
          <Exercise
            key={exercise?.id}
            name={exercise?.exercise_name}
            video={exercise?.images?.male?.[0]?.branded_video || exercise?.images?.female?.[0]?.branded_video}
            description={exercise?.steps}
            category={exercise?.category}
          />
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
