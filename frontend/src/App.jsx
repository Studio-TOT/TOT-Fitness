import { useEffect } from "react";
import "./App.scss";
import "./desktop.scss";
import { Route, Routes } from "react-router-dom";
import Footer from "./components/Footer";
import Navbar from "./components/Navbar";
import BodyPartExercises from "./pages/BodyPartExercises";
import Home from "./pages/Home";
import NutritionPage from "./pages/NutritionPage";
import HubertEats from "./pages/HubertEats";
import Programs from "./pages/Programs";
import Subscription from "./pages/Subscription";
import Dashboard from "./pages/Dashboard";
import SubscriptionSuccess from "./pages/SubscriptionSuccess";
import nutrition from "./data";
import { ExerciseProvider } from "./context/ExerciseContext";

// Layout component to wrap pages with Navbar and Footer
function Layout({ children, isTransparentNav }) {
  return (
    <>
      {isTransparentNav ? <Navbar isTransparent /> : <Navbar />}
      {children}
      <Footer />
    </>
  );
}

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
            <Layout isTransparentNav>
              <Home data={nutrition} />
            </Layout>
          }
        />
        <Route
          path="/Nutritionpage"
          element={
            <Layout>
              <NutritionPage data={nutrition} />
            </Layout>
          }
        />
        <Route
          path="/Nutritionpage/:idMeal"
          element={
            <Layout>
              <HubertEats data={nutrition} />
            </Layout>
          }
        />
        <Route
          path="/:exercise"
          element={
            <Layout>
              <BodyPartExercises />
            </Layout>
          }
        />
        <Route
          path="/subscription"
          element={
            <Layout>
              <Subscription />
            </Layout>
          }
        />
        <Route
          path="/subscription/success"
          element={
            <Layout>
              <SubscriptionSuccess />
            </Layout>
          }
        />
        <Route
          path="/programs/:programType"
          element={
            <Layout>
              <Programs />
            </Layout>
          }
        />
        <Route
          path="/dashboard"
          element={
            <Layout>
              <Dashboard />
            </Layout>
          }
        />
      </Routes>
    </ExerciseProvider>
  );
}

export default App;
