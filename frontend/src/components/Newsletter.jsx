import React, { useState } from "react";
import PropTypes from "prop-types";
import { Button } from "./ui/button";

function Newsletter({ isPremium }) {
  const [email, setEmail] = useState("");
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [message, setMessage] = useState({ type: null, text: null });
  const [isValid, setIsValid] = useState(true);

  const validateEmail = (email) => {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
  };

  const handleEmailChange = (e) => {
    const value = e.target.value;
    setEmail(value);

    if (value.length > 0) {
      setIsValid(validateEmail(value));
    } else {
      setIsValid(true);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    // Reset previous messages
    setMessage({ type: null, text: null });

    // Validate email
    if (!email || !validateEmail(email)) {
      setIsValid(false);
      setMessage({ type: "error", text: "Please enter a valid email address" });
      return;
    }

    setIsSubmitting(true);

    try {
      // Simulate API call
      await new Promise((resolve) => setTimeout(resolve, 1000));

      // Success message
      setMessage({
        type: "success",
        text: "Thank you for subscribing to our newsletter!"
      });
      setEmail("");
    } catch (error) {
      // Error message
      setMessage({
        type: "error",
        text: "Something went wrong. Please try again later."
      });
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div className="sectionNews h-screen flex items-center justify-center">
      <div className="py-12 px-4 md:px-12 bg-white/60 backdrop-blur-sm rounded-2xl shadow-sm border border-gray-100/50 max-w-6xl mx-auto mt-10 mb-16">
        <div className="mb-10 text-center">
          <h2 className="text-3xl md:text-4xl font-medium text-gray-900 mb-2">Subscribe to our Newsletter</h2>
          <p className="text-gray-600 max-w-2xl mx-auto text-base md:text-lg">
            Be the first to know about new programs, recipes, and exclusive content.
            {isPremium && (
              <span className="block mt-2 text-indigo-600 font-medium">
                Get exclusive premium content updates!
              </span>
            )}
          </p>
        </div>

        <form onSubmit={handleSubmit} className="max-w-md mx-auto">
          <div className="mb-4">
            <input
              type="email"
              placeholder="Enter your email"
              value={email}
              onChange={handleEmailChange}
              disabled={isSubmitting}
              className={`w-full py-3 px-4 rounded-lg border ${!isValid ? "border-red-500" : "border-gray-300"
                } focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all`}
            />

            {message.type && (
              <div
                className={`mt-2 px-3 py-2 rounded-lg text-sm text-center ${message.type === "success"
                  ? "bg-green-100 text-green-800"
                  : "bg-red-100 text-red-800"
                  }`}
              >
                {message.text}
              </div>
            )}
          </div>

          <Button
            type="submit"
            disabled={isSubmitting}
            className="w-full bg-gradient-to-r from-indigo-600 to-purple-600 text-white hover:from-indigo-700 hover:to-purple-700 transition-all transform hover:scale-105"
          >
            {isSubmitting ? (
              <div className="flex items-center justify-center">
                <svg className="animate-spin h-5 w-5 mr-2" viewBox="0 0 24 24">
                  <circle
                    className="opacity-25"
                    cx="12"
                    cy="12"
                    r="10"
                    stroke="currentColor"
                    strokeWidth="4"
                  ></circle>
                  <path
                    className="opacity-75"
                    fill="currentColor"
                    d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                  ></path>
                </svg>
                Subscribing...
              </div>
            ) : (
              "Subscribe Now"
            )}
          </Button>
        </form>
      </div>
    </div>
  );
}

Newsletter.propTypes = {
  isPremium: PropTypes.bool
};

Newsletter.defaultProps = {
  isPremium: false
};

export default Newsletter;
