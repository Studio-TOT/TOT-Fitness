import React, { useState } from "react";
import PropTypes from "prop-types";

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
      <div className="newsletter w-[75%] max-w-md backdrop-blur-[2px] rounded-2xl border border-white bg-[#908c8c86] shadow-lg p-6 text-center">
        <h2 className="text-2xl md:text-3xl uppercase font-semibold text-white mb-6 text-shadow">
          Subscribe to the<br />newsletter
        </h2>

        <p className="text-white text-left mx-auto mb-6 text-shadow w-[90%]">
          Be the first to know about the release of our upcoming fitness programs.
          {isPremium && (
            <span className="block mt-2 text-yellow-300 font-medium">
              Exclusive premium content for members!
            </span>
          )}
        </p>

        <form onSubmit={handleSubmit} className="w-full">
          <div className="mb-3">
            <input
              type="email"
              placeholder="Email Address"
              value={email}
              onChange={handleEmailChange}
              disabled={isSubmitting}
              className={`w-[80%] py-2 px-4 border border-gray-300 rounded-full text-center shadow-md focus:outline-none
                ${!isValid ? "border-red-500" : ""}`}
            />

            {message.type && (
              <div
                className={`mt-2 mx-auto w-[90%] px-3 py-1 rounded-md text-sm text-center ${message.type === "success"
                  ? "bg-green-100 text-green-800"
                  : "bg-red-100 text-red-800"
                  }`}
              >
                {message.text}
              </div>
            )}
          </div>

          <button
            type="submit"
            disabled={isSubmitting}
            className="mt-2 bg-white text-black font-semibold py-2 px-8 rounded-full shadow-md hover:bg-gray-50 transition-colors"
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
                Loading...
              </div>
            ) : (
              "Subscribe"
            )}
          </button>
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
