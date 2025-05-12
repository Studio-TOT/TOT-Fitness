import React from "react";
import PropTypes from "prop-types";
import { Link, useNavigate } from "react-router-dom";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";
import { Pagination } from "swiper";
import { useAuth } from '../context/AuthContext';

function NutritionSlide({ data }) {
  const { user, isPremium } = useAuth();
  const navigate = useNavigate();

  // Function to handle subscription clicks
  const handleSubscriptionClick = (e) => {
    e.preventDefault();
    // If user not logged in, redirect to login with subscription as redirect target
    if (!user) {
      navigate('/login', { state: { from: '/subscription' } });
    } else {
      navigate('/subscription');
    }
  };

  return (
    <div key={data?.idMeal}>
      <section className="NutritionSection py-24 px-6 md:px-12 relative">
        {/* Premium Badge */}
        <div className="absolute top-8 right-6 md:right-12 bg-gradient-to-r from-indigo-600 to-purple-600 text-white text-sm font-bold px-3 py-1 rounded-full shadow-md">
          Premium Feature
        </div>

        <div className="my-8 text-[1.6rem] md:text-[2.8rem] mb-[30px] ">
          <h2>Explore our</h2>
          <h2>nutrition guide</h2>
        </div>
        <div className="swipper">
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
          >
            {data &&
              data
                .slice(0, 115)
                .filter((e) =>
                  [
                    "52855",
                    "52959",
                    "52870",
                    "52951",
                    "53033",
                    "52823",
                  ].includes(e.idMeal)
                )
                .map((e) => {
                  return (
                    <SwiperSlide key={e?.idMeal} className="relative group">
                      <Link
                        to={isPremium() ? `/Nutritionpage/${e.idMeal}` : "/Nutritionpage"}
                        className="block relative"
                      >
                        <img src={e?.strMealThumb} alt="food" className="w-full h-auto" />
                        {!isPremium() && (
                          <div className="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity">
                            <div className="text-white text-center p-4">
                              <span className="bg-indigo-600 text-white text-xs px-2 py-1 rounded-full">Premium</span>
                              <p className="mt-2">Upgrade for full access</p>
                            </div>
                          </div>
                        )}
                      </Link>
                      <h3>{e?.strMeal}</h3>
                    </SwiperSlide>
                  );
                })}
          </Swiper>
        </div>
        <div className="desk">
          {data &&
            data
              .slice(0, 115)
              .filter((e) =>
                ["52855", "52959", "52870", "52951", "53033", "52823"].includes(
                  e.idMeal
                )
              )
              .map((e) => {
                return (
                  <div key={e?.idMeal} className="relative group">
                    <Link
                      to={isPremium() ? `/Nutritionpage/${e.idMeal}` : "/Nutritionpage"}
                      className="block relative"
                    >
                      <img src={e?.strMealThumb} alt="food" />
                      {!isPremium() && (
                        <div className="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity">
                          <div className="text-white text-center p-4">
                            <span className="bg-indigo-600 text-white text-xs px-2 py-1 rounded-full">Premium</span>
                            <p className="mt-2">Upgrade for full access</p>
                          </div>
                        </div>
                      )}
                    </Link>
                    <h3>{e?.strMeal}</h3>
                  </div>
                );
              })}
        </div>
        <div className="buttoncenter mt-6">
          <button
            type="button"
            onClick={handleSubscriptionClick}
            className="bg-black hover:bg-gray-800 hover:text-white text-black font-bold py-2 px-6 rounded-lg transition-colors"
          >
            {isPremium() ? "View All Recipes" : "Upgrade for Full Access"}
          </button>
        </div>
      </section>
    </div>
  );
}
NutritionSlide.propTypes = {
  data: PropTypes.arrayOf(PropTypes.shape).isRequired,
};
export default NutritionSlide;
