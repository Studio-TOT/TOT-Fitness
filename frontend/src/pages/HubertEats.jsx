/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
import React, { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import PropTypes from "prop-types";
import { Button } from "../components/ui/button";
import { Card, CardContent } from "../components/ui/card";
import { ArrowLeft, Clock, Users, ChefHat, Scale, Timer } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

function HubertEats({ data }) {
  const nav = useNavigate();
  const handleNav = () => {
    nav(-1);
  };
  const [singleMeal, setSingleMeal] = useState({});
  const { idMeal } = useParams();
  const [activeTab, setActiveTab] = useState("ingredients");

  useEffect(() => {
    const meal = data.filter((e) => e?.idMeal === idMeal);
    setSingleMeal(meal[0]);
  }, [idMeal, data]);

  const getIngredients = () => {
    const ingredients = [];
    for (let i = 1; i <= 20; i++) {
      const measure = singleMeal?.[`strMeasure${i}`];
      const ingredient = singleMeal?.[`strIngredient${i}`];
      if (measure && ingredient) {
        ingredients.push({ measure, ingredient });
      }
    }
    return ingredients;
  };

  const getInstructions = () => {
    return singleMeal?.strInstructions?.split("\r\n").filter(Boolean) || [];
  };

  const renderTabContent = () => {
    switch (activeTab) {
      case "ingredients":
        return (
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -20 }}
            className="space-y-4"
          >
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {getIngredients().map((item, index) => (
                <motion.div
                  key={index}
                  initial={{ opacity: 0, x: -20 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ delay: index * 0.1 }}
                  className="flex items-center space-x-3 p-3 rounded-lg bg-white/5 backdrop-blur-sm border border-white/10"
                >
                  <Scale className="w-5 h-5 text-teal-400" />
                  <span className="text-sm">
                    <span className="font-medium text-teal-400">{item.measure}</span>{" "}
                    {item.ingredient}
                  </span>
                </motion.div>
              ))}
            </div>
          </motion.div>
        );
      case "instructions":
        return (
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -20 }}
            className="space-y-6"
          >
            {getInstructions().map((instruction, index) => (
              <motion.div
                key={index}
                initial={{ opacity: 0, x: -20 }}
                animate={{ opacity: 1, x: 0 }}
                transition={{ delay: index * 0.1 }}
                className="flex items-start space-x-4 p-4 rounded-lg bg-white/5 backdrop-blur-sm border border-white/10"
              >
                <div className="flex-shrink-0 w-8 h-8 rounded-full bg-teal-400/20 flex items-center justify-center">
                  <span className="text-teal-400 font-medium">{index + 1}</span>
                </div>
                <p className="text-sm leading-relaxed">{instruction}</p>
              </motion.div>
            ))}
          </motion.div>
        );
      default:
        return null;
    }
  };

  if (!data.length) return null;

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-background/95">
      <div className="container mx-auto px-4 py-8">
        <Button
          variant="ghost"
          className="mb-6 hover:bg-teal-50"
              onClick={handleNav}
        >
          <ArrowLeft className="mr-2 h-4 w-4" />
          Back
        </Button>

        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          className="space-y-8"
        >
          {/* Hero Section */}
          <div className="relative h-[400px] rounded-2xl overflow-hidden">
            <motion.img
              initial={{ scale: 1.2 }}
              animate={{ scale: 1 }}
              transition={{ duration: 0.8 }}
              src={singleMeal?.strMealThumb}
              alt={singleMeal?.strMeal}
              className="w-full h-full object-cover"
            />
            <div className="absolute inset-0 bg-gradient-to-t from-background via-background/50 to-transparent" />
            <div className="absolute bottom-0 left-0 right-0 p-8">
              <motion.h1
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: 0.2 }}
                className="text-4xl font-bold text-white mb-4"
              >
                {singleMeal?.strMeal}
              </motion.h1>
              <div className="flex flex-wrap gap-4">
                <div className="flex items-center space-x-2 text-white/80">
                  <Clock className="w-4 h-4" />
                  <span>30 mins</span>
                </div>
                <div className="flex items-center space-x-2 text-white/80">
                  <Users className="w-4 h-4" />
                  <span>4 servings</span>
                </div>
                <div className="flex items-center space-x-2 text-white/80">
                  <ChefHat className="w-4 h-4" />
                  <span>{singleMeal?.strCategory}</span>
                </div>
              </div>
            </div>
          </div>

          {/* Content Tabs */}
          <Card className="border-none bg-white/5 backdrop-blur-sm">
            <CardContent className="p-6">
              <div className="flex space-x-4 mb-6">
                <Button
                  variant={activeTab === "ingredients" ? "default" : "ghost"}
                  onClick={() => setActiveTab("ingredients")}
                  className="relative"
                >
                  Ingredients
                  {activeTab === "ingredients" && (
                    <motion.div
                      layoutId="activeTab"
                      className="absolute bottom-0 left-0 right-0 h-0.5 bg-teal-400"
                    />
                )}
                </Button>
                <Button
                  variant={activeTab === "instructions" ? "default" : "ghost"}
                  onClick={() => setActiveTab("instructions")}
                  className="relative"
                >
                  Instructions
                  {activeTab === "instructions" && (
                    <motion.div
                      layoutId="activeTab"
                      className="absolute bottom-0 left-0 right-0 h-0.5 bg-teal-400"
                    />
                  )}
                </Button>
              </div>

              <AnimatePresence mode="wait">
                {renderTabContent()}
              </AnimatePresence>
            </CardContent>
          </Card>

          {/* Quick Actions */}
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            <Button className="h-auto py-4 flex flex-col items-center space-y-2 bg-teal-500/10 hover:bg-teal-500/20 text-teal-400">
              <Timer className="w-6 h-6" />
              <span>Start Timer</span>
            </Button>
            <Button className="h-auto py-4 flex flex-col items-center space-y-2 bg-purple-500/10 hover:bg-purple-500/20 text-purple-400">
              <ChefHat className="w-6 h-6" />
              <span>Save Recipe</span>
            </Button>
            <Button className="h-auto py-4 flex flex-col items-center space-y-2 bg-blue-500/10 hover:bg-blue-500/20 text-blue-400">
              <Users className="w-6 h-6" />
              <span>Share</span>
            </Button>
          </div>
        </motion.div>
      </div>
    </div>
  );
}

HubertEats.propTypes = {
  data: PropTypes.arrayOf(PropTypes.shape).isRequired,
};

export default HubertEats;
