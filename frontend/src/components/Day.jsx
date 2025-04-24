import PropTypes from "prop-types";
import Exercise from "./Exercise";

function Day({ prog, exercises, index }) {
  if (!prog || !exercises) {
    return null;
  }

  return (
    <div className="day">
      <h3>Day {index + 1}</h3>
      <div className="exercises">
        {prog.map((exercise) => (
          <Exercise
            key={exercise.id}
            name={exercise.exercise_name}
            video={
              exercise.images?.male?.[0]?.branded_video ||
              exercise.images?.female?.[0]?.branded_video
            }
            description={exercise.steps}
            category={exercise.category}
          />
        ))}
      </div>
    </div>
  );
}

Day.propTypes = {
  prog: PropTypes.arrayOf(
    PropTypes.shape({
      id: PropTypes.number.isRequired,
      exercise_name: PropTypes.string.isRequired,
      images: PropTypes.shape({
        male: PropTypes.arrayOf(
          PropTypes.shape({
            branded_video: PropTypes.string,
          })
        ),
        female: PropTypes.arrayOf(
          PropTypes.shape({
            branded_video: PropTypes.string,
          })
        ),
      }),
      steps: PropTypes.arrayOf(PropTypes.string),
      category: PropTypes.string,
    })
  ),
  exercises: PropTypes.arrayOf(PropTypes.shape).isRequired,
  index: PropTypes.number.isRequired,
};

Day.defaultProps = {
  prog: [],
};

export default Day;
