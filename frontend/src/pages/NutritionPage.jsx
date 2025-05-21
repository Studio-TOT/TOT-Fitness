import React, { useEffect, useState } from "react";
import PropTypes from "prop-types";
import { useNavigate } from "react-router-dom";
import { Button } from "../components/ui/button";
import { ArrowLeft, ChevronDown } from "lucide-react";
import Masonry from '../components/Masonry';

function NutritionPage({ data }) {
  const nav = useNavigate();
  const handleNav = () => {
    nav(-1);
  };

  const [expandedCategories, setExpandedCategories] = useState({});
  const [activeCategory, setActiveCategory] = useState("Starter");
  const ITEMS_PER_CATEGORY = 6;

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  // Validate and filter data
  const validData = Array.isArray(data) ? data.filter(recipe =>
    recipe &&
    typeof recipe === 'object' &&
    recipe.strCategory &&
    recipe.strMealThumb &&
    recipe.strMeal &&
    recipe.idMeal
  ) : [];

  // Define the order of categories
  const categoryOrder = [
    "Starter",
    "Chicken",
    "Vegetarian",
    "Beef",
    "Seafood",
    "Dessert"
  ];

  // Group recipes by category
  const recipesByCategory = validData.reduce((acc, recipe) => {
    const category = recipe.strCategory;
    if (!acc[category]) {
      acc[category] = [];
    }
    acc[category].push({
      id: recipe.idMeal,
      image: recipe.strMealThumb,
      text: recipe.strMeal,
      height: Math.random() * 400 + 400
    });
    return acc;
  }, {});

  const toggleCategory = (category) => {
    setExpandedCategories(prev => ({
      ...prev,
      [category]: !prev[category]
    }));
  };

  // If no valid data, show a message
  if (validData.length === 0) {
    return (
      <div className="min-h-screen bg-background">
        <div className="container mx-auto px-4 py-8">
          <Button
            variant="ghost"
            className="mb-6"
            onClick={handleNav}
          >
            <ArrowLeft className="mr-2 h-4 w-4" />
            Back
          </Button>
          <div className="text-center py-12">
            <h2 className="text-2xl font-bold mb-4">No Recipes Available</h2>
            <p className="text-muted-foreground">Please check back later for new recipes.</p>
          </div>
        </div>
      </div>
    );
  }

  const currentRecipes = recipesByCategory[activeCategory] || [];

  return (
    <div className="min-h-screen bg-background">
      {/* Full-width banner with image and scroll effect */}
      <div className="Nutrition-banner flex items-center w-full">
        <div className="container mx-auto px-4 relative flex items-center justify-center">
          <div className="max-w-2xl absolute z-10">
            <p className="text-5xl font-bold text-white mb-2 md:mb-4">Eat clean.</p>
            <p className="text-4xl text-white/90">Reach your goals.</p>
          </div>
        </div>
      </div>

      <div className="container mx-auto px-4 py-8">
        <Button
          variant="ghost"
          className="mb-6"
          onClick={handleNav}
        >
          <ArrowLeft className="mr-2 h-4 w-4" />
          Back
        </Button>

        {/* Category Menu */}
        <div className="sticky top-0 z-50 bg-background/80 backdrop-blur-sm py-4 mb-8 border-b">
          <div className="flex items-center justify-start space-x-2 md:space-x-4 overflow-x-auto pb-2 scrollbar-hide">
            {categoryOrder.map((category) => (
              <Button
                key={category}
                variant={activeCategory === category ? "default" : "ghost"}
                onClick={() => setActiveCategory(category)}
                className={`whitespace-nowrap text-sm md:text-base ${activeCategory === category
                  ? "bg-teal-500 text-white hover:bg-teal-600"
                  : "hover:bg-teal-50"
                  }`}
              >
                {category}
              </Button>
            ))}
          </div>
        </div>

        {/* Selected Category Content */}
        <div className="space-y-6">
          <h3 className="text-xl md:text-2xl font-bold">{activeCategory}</h3>
          <div className={`w-full transition-all duration-300 ${expandedCategories[activeCategory] ? 'min-h-[600px]' : 'h-[600px]'} overflow-hidden`}>
            <Masonry
              data={expandedCategories[activeCategory]
                ? currentRecipes
                : currentRecipes.slice(0, ITEMS_PER_CATEGORY)
              }
              onItemClick={(item) => nav(`/Nutritionpage/${item.id}`)}
            />
          </div>
          {currentRecipes.length > ITEMS_PER_CATEGORY && (
            <div className="flex justify-center pt-4">
              <Button
                variant="ghost"
                onClick={() => toggleCategory(activeCategory)}
                className="text-teal-500 hover:text-teal-600"
              >
                {expandedCategories[activeCategory] ? 'Show Less' : 'Show More'}
                <ChevronDown
                  className={`ml-2 h-4 w-4 transition-transform ${expandedCategories[activeCategory] ? 'rotate-180' : ''
                    }`}
                />
              </Button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

NutritionPage.propTypes = {
  data: PropTypes.arrayOf(PropTypes.shape({
    strCategory: PropTypes.string,
    strMealThumb: PropTypes.string,
    strMeal: PropTypes.string,
    idMeal: PropTypes.string
  })).isRequired,
};

export default NutritionPage;
