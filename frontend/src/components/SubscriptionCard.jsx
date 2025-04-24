import PropTypes from "prop-types";
import Start from "./Start";

function SubscriptionCard({ rythm, price, save }) {
  return (
    <div className="subscription-card">
      <p className="subscription-price">{rythm}</p>
      <p className="subscription-price">{price}</p>
      <p className="subscription-save">{save && save}</p>
      <Start content="Subscribe" />
    </div>
  );
}

export default SubscriptionCard;

SubscriptionCard.propTypes = {
  rythm: PropTypes.string.isRequired,
  price: PropTypes.string.isRequired,
  save: PropTypes.string,
};
SubscriptionCard.defaultProps = {
  save: null,
};
