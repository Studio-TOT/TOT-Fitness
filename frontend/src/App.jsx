import { useEffect, useState } from "react";
import "./App.scss";
import "./desktop.scss";
import { Route, Routes } from "react-router-dom";
import Footer from "./components/Footer";
import BodyPartExercises from "./pages/BodyPartExercises";
import Home from "./pages/Home";
import Navbar from "./components/Navbar";
import NutritionPage from "./pages/NutritionPage";
import HubertEats from "./pages/HubertEats";
import Programs from "./pages/Programs";
import Subscription from "./pages/Subscription";
import Dashboard from "./pages/Dashboard";
import nutrition from "./data";

const API_URL = import.meta.env.VITE_API_URL || "http://localhost:3000";

function App() {
  const [exercises, setExercises] = useState([]);
  const [filteredExercises, setFilteredExercises] = useState([]);
  const [filter, setFilter] = useState("");
  const [uniqueEx, setUniqueEx] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    setIsLoading(true);
    fetch(`${API_URL}/api/exercises`)
      .then((response) => response.json())
      .then((response) => {
        setExercises(response);
        setIsLoading(false);
      })
      .catch((err) => {
        console.error("Error fetching exercises:", err);
        setIsLoading(false);
      });
  }, []);

  useEffect(() => {
    setFilteredExercises(
      exercises.filter((exercise) => exercise.target.Primary?.includes(filter))
    );
  }, [exercises, filter]);

  useEffect(() => {
    setUniqueEx([
      ...new Map(filteredExercises.map((v) => [v.exercise_name, v])).values(),
    ]);
  }, [filteredExercises]);

  return (
    <Routes>
      <Route
        path="/"
        element={
          <>
            <Home data={nutrition} /> <Navbar isTransparent /> <Footer />
          </>
        }
      />
      <Route
        path="/Nutritionpage"
        element={
          <>
            <NutritionPage data={nutrition} />
            <Navbar />
            <Footer />
          </>
        }
      />
      <Route
        path="/Nutritionpage/:idMeal"
        element={
          <>
            <HubertEats data={nutrition} />
            <Navbar />
            <Footer />
          </>
        }
      />
      <Route
        path="/:exercise"
        element={
          <>
            <BodyPartExercises
              exercises={uniqueEx}
              handleExerciseChange={setFilter}
              isLoading={isLoading}
            />
            <Navbar />
            <Footer />
          </>
        }
      />
      <Route
        path="/subscription"
        element={
          <>
            <Subscription /> <Navbar /> <Footer />
          </>
        }
      />
      <Route
        path="/programs/:programType"
        element={
          <>
            <Programs exercises={exercises} />
            <Navbar />
            <Footer />
          </>
        }
      />
      <Route
        path="/dashboard"
        element={
          <>
            <Dashboard exercises={exercises} />
            <Navbar />
            <Footer />
          </>
        }
      />
    </Routes>
  );
}

export default App;
