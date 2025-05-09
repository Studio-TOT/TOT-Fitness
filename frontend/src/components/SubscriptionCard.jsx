import PropTypes from "prop-types";
import { useState } from "react";
import { loadStripe } from "@stripe/stripe-js";
import Start from "./Start";

function SubscriptionCard({ rythm, price, save, priceId }) {
  const [loading, setLoading] = useState(false);

  const handleSubscribe = async () => {
    try {
      setLoading(true);
      const response = await fetch(`${import.meta.env.VITE_API_URL}/create-checkout-session`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          priceId,
          userId: 'user_id', // Replace with actual user ID from your auth system
        }),
      });

      const { sessionId } = await response.json();

      // Redirect to Stripe Checkout
      const stripe = await loadStripe(import.meta.env.VITE_STRIPE_PUBLIC_KEY);
      await stripe.redirectToCheckout({ sessionId });
    } catch (error) {
      console.error('Error:', error);
      // Handle error (show error message to user)
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="subscription-card">
      <p className="subscription-price">{rythm}</p>
      <p className="subscription-price">{price}</p>
      <p className="subscription-save">{save && save}</p>
      <button
        onClick={handleSubscribe}
        disabled={loading}
        className="black-button"
      >
        {loading ? 'Loading...' : 'Subscribe'}
      </button>
    </div>
  );
}

export default SubscriptionCard;

SubscriptionCard.propTypes = {
  rythm: PropTypes.string.isRequired,
  price: PropTypes.string.isRequired,
  save: PropTypes.string,
  priceId: PropTypes.string.isRequired,
};

SubscriptionCard.defaultProps = {
  save: null,
};
