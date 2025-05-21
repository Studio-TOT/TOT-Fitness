import React from "react";
import PropTypes from "prop-types";
import { Link, useNavigate } from "react-router-dom";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";
import { Pagination } from "swiper";
import { useAuth } from '../context/AuthContext';
import { Button } from "./ui/button";

function NutritionSlide({ data }) {
  const { user, isPremium } = useAuth();
  const navigate = useNavigate();

  // Function to handle subscription clicks
  const handleSubscriptionClick = (e) => {
    e.preventDefault();
    if (!user) {
      navigate('/login', { state: { from: '/subscription' } });
    } else if (!isPremium()) {
      navigate('/subscription');
    } else {
      navigate('/Nutritionpage');
    }
  };

  return (
    <section id="nutrition" className="py-12 px-4 md:px-12 bg-white/60 backdrop-blur-sm rounded-2xl shadow-sm border border-gray-100/50 max-w-6xl mx-auto mt-10 mb-16">
        {/* Premium Badge */}
        <div className="absolute top-8 right-6 md:right-12 bg-gradient-to-r from-indigo-600 to-purple-600 text-white text-sm font-bold px-3 py-1 rounded-full shadow-md">
          Premium Feature
        </div>

      <div className="mb-10 text-center">
        <h2 className="text-3xl md:text-4xl font-medium text-gray-900 mb-2">Explore our Nutrition Guide</h2>
        <p className="text-gray-600 max-w-2xl mx-auto text-base md:text-lg">
          Discover healthy recipes and meal plans to support your fitness journey. Our nutrition guide helps you make informed choices for better results.
        </p>
        </div>

      {/* Mobile View */}
      <div className="md:hidden">
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
          className="w-full"
          >
            {data &&
              data
                .slice(0, 115)
                .filter((e) =>
                ["52855", "52959", "52870", "52951", "53033", "52823"].includes(e.idMeal)
                )
              .map((e) => (
                    <SwiperSlide key={e?.idMeal} className="relative group">
                      <Link
                        to={isPremium() ? `/Nutritionpage/${e.idMeal}` : "/Nutritionpage"}
                        className="block relative"
                      >
                    <img
                      src={e?.strMealThumb}
                      alt={e?.strMeal}
                      className="w-full h-[300px] object-cover rounded-lg shadow-md"
                    />
                        {!isPremium() && (
                      <div className="absolute inset-0 bg-black/50 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity rounded-lg">
                            <div className="text-white text-center p-4">
                              <span className="bg-indigo-600 text-white text-xs px-2 py-1 rounded-full">Premium</span>
                              <p className="mt-2">Upgrade for full access</p>
                            </div>
                          </div>
                        )}
                      </Link>
                  <h3 className="mt-4 text-lg font-medium text-gray-900">{e?.strMeal}</h3>
                    </SwiperSlide>
              ))}
          </Swiper>
        </div>

      {/* Desktop View */}
      <div className="hidden md:block">
        <div className="grid grid-cols-3 gap-6">
          {data &&
            data
              .slice(0, 115)
              .filter((e) =>
                ["52855", "52959", "52870", "52951", "53033", "52823"].includes(e.idMeal)
              )
              .map((e) => (
                  <div key={e?.idMeal} className="relative group">
                    <Link
                      to={isPremium() ? `/Nutritionpage/${e.idMeal}` : "/Nutritionpage"}
                      className="block relative"
                    >
                    <img
                      src={e?.strMealThumb}
                      alt={e?.strMeal}
                      className="w-full h-[300px] object-cover rounded-lg shadow-md"
                    />
                      {!isPremium() && (
                      <div className="absolute inset-0 bg-black/50 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity rounded-lg">
                          <div className="text-white text-center p-4">
                            <span className="bg-indigo-600 text-white text-xs px-2 py-1 rounded-full">Premium</span>
                            <p className="mt-2">Upgrade for full access</p>
                          </div>
                        </div>
                      )}
                    </Link>
                  <h3 className="mt-4 text-lg font-medium text-gray-900">{e?.strMeal}</h3>
                  </div>
              ))}
        </div>
      </div>

      {/* Action Button */}
      <div className="mt-10 text-center">
        <Button
            onClick={handleSubscriptionClick}
          className="bg-gradient-to-r from-indigo-600 to-purple-600 text-white hover:from-indigo-700 hover:to-purple-700 transition-all transform hover:scale-105"
          >
            {isPremium() ? "View All Recipes" : "Upgrade for Full Access"}
        </Button>
        </div>
      </section>
  );
}

NutritionSlide.propTypes = {
  data: PropTypes.arrayOf(PropTypes.shape).isRequired,
};

export default NutritionSlide;
