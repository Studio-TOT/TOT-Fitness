import React from "react";
import PropTypes from "prop-types";
import { Link } from "react-router-dom";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";
import { Pagination } from "swiper";

function NutritionSlide({ data }) {
  return (
    <div key={data?.idMeal}>
      <section className="NutritionSection">
        <h2>Nutrition</h2>
        <div className="swipper">
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
            className="NutritionSlide"
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
                    <SwiperSlide key={e?.idMeal}>
                      <Link to={`/Nutritionpage/${e.idMeal}`}>
                        <img src={e?.strMealThumb} alt="food" />
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
                  <div key={e?.idMeal}>
                    <Link to={`/Nutritionpage/${e.idMeal}`}>
                      <img src={e?.strMealThumb} alt="food" />
                    </Link>
                    <h3>{e?.strMeal}</h3>
                  </div>
                );
              })}
        </div>
        <div className="buttoncenter">
          <Link to="/Nutritionpage">
            <button type="button">More healthy recipes</button>
          </Link>
        </div>
      </section>
    </div>
  );
}
NutritionSlide.propTypes = {
  data: PropTypes.arrayOf(PropTypes.shape).isRequired,
};
export default NutritionSlide;
