import { useEffect } from "react";
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
import { ExerciseProvider } from "./context/ExerciseContext";

// Check if API URL is set
if (!import.meta.env.VITE_API_URL) {
  console.error("API URL is not set in environment variables");
}

function App() {
  return (
    <ExerciseProvider>
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
              <BodyPartExercises />
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
              <Programs />
              <Navbar />
              <Footer />
            </>
          }
        />
        <Route
          path="/dashboard"
          element={
            <>
              <Dashboard />
              <Navbar />
              <Footer />
            </>
          }
        />
      </Routes>
    </ExerciseProvider>
  );
}

export default App;
