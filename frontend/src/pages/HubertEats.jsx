/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
import React, { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import PropTypes from "prop-types";
import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";
import backarrow from "../assets/back-arrow.svg";

function HubertEats({ data }) {
  const nav = useNavigate();
  const handleNav = () => {
    nav(-1);
  };
  const [singleMeal, setSingleMeal] = useState({});
  const { idMeal } = useParams();

  useEffect(() => {
    const meal = data.filter((e) => e?.idMeal === idMeal);
    setSingleMeal(meal[0]);
  }, [idMeal, data]);
  return (
    <div>
      {Boolean(data.length) && (
        <section className="NutritionID">
          <div className="arrow-title">
            <img
              className="backarrow"
              src={backarrow}
              alt="backarrow"
              onClick={handleNav}
            />
            <h2>{singleMeal?.strMeal}</h2>
          </div>
          <div key={singleMeal?.idMeal} className="flex">
            <img src={singleMeal?.strMealThumb} alt="food" />
            <article className="Ingredient">
              <h3>Ingrédients</h3>
              <ul>
                {singleMeal?.strIngredient1 && (
                  <li>
                    {singleMeal?.strMeasure1} {singleMeal?.strIngredient1}
                  </li>
                )}

                {Array.from({ length: 20 }, (_, i) => i + 2).map((index) => {
                  const measure = singleMeal?.[`strMeasure${index}`];
                  const ingredient = singleMeal?.[`strIngredient${index}`];
                  if (measure && ingredient) {
                    return (
                      <li key={index}>
                        {measure} {ingredient}
                      </li>
                    );
                  }
                  return null;
                })}
              </ul>
            </article>{" "}
          </div>
          <article className="Instruction">
            <h3>Instructions</h3>
            {singleMeal?.strInstructions?.split("\r\n").map((a) => {
              return (
                <>
                  <p>{a}</p>
                  <br />
                </>
              );
            })}
          </article>
        </section>
      )}
    </div>
  );
}

HubertEats.propTypes = {
  data: PropTypes.arrayOf(PropTypes.shape).isRequired,
};

export default HubertEats;
