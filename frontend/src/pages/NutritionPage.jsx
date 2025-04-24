import React, { useEffect } from "react";
import PropTypes from "prop-types";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";

import { Pagination } from "swiper";
import { Link, useNavigate } from "react-router-dom";
import backarrow from "../assets/back-arrow.svg";

function NutritionPage({ data }) {
  const nav = useNavigate();
  const handleNav = () => {
    nav(-1);
  };
  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);
  return (
    <div key={data.idMeal}>
      <section className="NutritionPage">
        <div className="arrow-title">
          <Link to="/" onClick={handleNav}>
            <img className="backarrow" src={backarrow} alt="backarrow" />
          </Link>{" "}
          <h2>Nutrition</h2>
        </div>
        <div className="Nutrition-banner">
          <p>Eat clean.</p>
          <p>Reach your goals.</p>
        </div>
        <div className="NutritionGalery">
          <h3>Starter</h3>
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
            className="NutritionSlide"
            slidesPerView={window.innerWidth > 800 ? 4 : 1}
          >
            {data &&
              data
                .slice(0, 200)
                .filter((e) => e.strCategory === "Starter")
                .map((e) => {
                  return (
                    <SwiperSlide key={e.idMeal}>
                      <Link to={`/Nutritionpage/${e.idMeal}`}>
                        <img src={e.strMealThumb} alt={e.strMeal} />
                      </Link>
                      <h4>{e.strMeal}</h4>
                    </SwiperSlide>
                  );
                })}
          </Swiper>
          <h3>Chicken</h3>
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
            className="NutritionSlide"
            slidesPerView={window.innerWidth > 800 ? 4 : 1}
          >
            {data &&
              data
                .slice(30, 200)
                .filter((e) => e.strCategory === "Chicken")
                .map((e) => {
                  return (
                    <SwiperSlide key={e.idMeal}>
                      <Link to={`/Nutritionpage/${e.idMeal}`}>
                        <img src={e.strMealThumb} alt={e.strMeal} />
                      </Link>
                      <h4>{e.strMeal}</h4>
                    </SwiperSlide>
                  );
                })}
          </Swiper>
          <h3>Vegetarian</h3>
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
            className="NutritionSlide"
            slidesPerView={window.innerWidth > 800 ? 4 : 1}
          >
            {data &&
              data
                .slice(40, 200)
                .filter((e) => e.strCategory === "Vegetarian")
                .map((e) => {
                  return (
                    <SwiperSlide key={e.idMeal}>
                      <Link to={`/Nutritionpage/${e.idMeal}`}>
                        <img src={e.strMealThumb} alt={e.strMeal} />
                      </Link>
                      <h4>{e.strMeal}</h4>
                    </SwiperSlide>
                  );
                })}
          </Swiper>
          <h3>Beef</h3>
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
            className="NutritionSlide"
            slidesPerView={window.innerWidth > 800 ? 4 : 1}
          >
            {data &&
              data
                .slice(20, 200)
                .filter((e) => e.strCategory === "Beef")
                .map((e) => {
                  return (
                    <SwiperSlide key={e.idMeal}>
                      <Link to={`/Nutritionpage/${e.idMeal}`}>
                        <img src={e.strMealThumb} alt={e.strMeal} />
                      </Link>
                      <h4>{e.strMeal}</h4>
                    </SwiperSlide>
                  );
                })}
          </Swiper>
          <h3>Sea Food</h3>
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
            className="NutritionSlide"
            slidesPerView={window.innerWidth > 800 ? 4 : 1}
          >
            {data &&
              data
                .slice(0, 200)
                .filter((e) => e.strCategory === "Seafood")
                .map((e) => {
                  return (
                    <SwiperSlide key={e.idMeal}>
                      <Link to={`/Nutritionpage/${e.idMeal}`}>
                        <img src={e.strMealThumb} alt={e.strMeal} />
                      </Link>
                      <h4>{e.strMeal}</h4>
                    </SwiperSlide>
                  );
                })}
          </Swiper>
          <h3>Dessert</h3>
          <Swiper
            spaceBetween={30}
            pagination={{
              dynamicBullets: true,
            }}
            modules={[Pagination]}
            className="NutritionSlide"
            slidesPerView={window.innerWidth > 800 ? 4 : 1}
          >
            {data &&
              data
                .slice(1, 200)
                .filter((e) => e.strCategory === "Dessert")
                .map((e) => {
                  return (
                    <SwiperSlide key={e.idMeal}>
                      <Link to={`/Nutritionpage/${e.idMeal}`}>
                        <img src={e.strMealThumb} alt={e.strMeal} />
                      </Link>
                      <h4>{e.strMeal}</h4>
                    </SwiperSlide>
                  );
                })}
          </Swiper>
        </div>
      </section>
    </div>
  );
}

NutritionPage.propTypes = {
  data: PropTypes.arrayOf(PropTypes.shape).isRequired,
};

export default NutritionPage;
