import PropTypes from "prop-types";
import { useState } from "react";
import { loadStripe } from "@stripe/stripe-js";
import Start from "./Start";
import { useAuth } from '../context/AuthContext';

function SubscriptionCard({ rythm, price, save, priceId }) {
  const [loading, setLoading] = useState(false);
  const { token, user } = useAuth();

  const handleSubscribe = async () => {
    try {
      setLoading(true);
      if (!token) {
        console.error('No authentication token found');
        return;
      }

      // Store token in localStorage before redirecting
      localStorage.setItem('jwt', token);

      const response = await fetch(`${import.meta.env.VITE_API_URL}/api/subscription/create-checkout-session`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({
          priceId,
          successUrl: `${window.location.origin}/subscription/success?session_id={CHECKOUT_SESSION_ID}`,
          cancelUrl: `${window.location.origin}/subscription`
        }),
      });

      if (!response.ok) {
        throw new Error('Failed to create checkout session');
      }

      const { url } = await response.json();

      // Redirect to Stripe Checkout
      window.location.href = url;
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
