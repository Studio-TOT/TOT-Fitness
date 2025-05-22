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
import ProgramDetails from "./pages/ProgramDetails";
import Subscription from "./pages/Subscription";
import Dashboard from "./pages/Dashboard";
import SubscriptionSuccess from "./pages/SubscriptionSuccess";
import Login from "./pages/Login";
import Signup from "./pages/Signup";
import ProtectedRoute from "./components/ProtectedRoute";
import PremiumRoute from "./components/PremiumRoute";
import NutritionPreview from "./components/NutritionPreview";
import nutrition from "./data";
import { ExerciseProvider } from "./context/ExerciseContext";
import { AuthProvider } from "./context/AuthContext";
import ProgramWorkout from "./components/ProgramWorkout";
import ExerciseDetails from './pages/ExerciseDetails';
import ProgramBuilder from "./pages/ProgramBuilder";

// Layout component to wrap pages with Navbar and Footer
function Layout({ children, isTransparentNav }) {
  return (
    <>
      {isTransparentNav ? <Navbar isTransparent /> : <Navbar />}
      <main className="min-h-screen">
        {children}
      </main>
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
    <AuthProvider>
      <ExerciseProvider>
        <Routes>
          {/* Public Routes */}
          <Route
            path="/"
            element={
              <Layout isTransparentNav>
                <Home data={nutrition} />
              </Layout>
            }
          />
          <Route
            path="/login"
            element={
              <Layout>
                <Login />
              </Layout>
            }
          />
          <Route
            path="/signup"
            element={
              <Layout>
                <Signup />
              </Layout>
            }
          />

          {/* Nutrition Pages - Premium Content */}
          <Route
            path="/Nutritionpage"
            element={
              <Layout>
                <PremiumRoute preview={<NutritionPreview />}>
                  <NutritionPage data={nutrition} />
                </PremiumRoute>
              </Layout>
            }
          />
          <Route
            path="/Nutritionpage/:idMeal"
            element={
              <Layout>
                <PremiumRoute preview={<NutritionPreview />}>
                  <HubertEats data={nutrition} />
                </PremiumRoute>
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

          {/* Program routes are accessible to everyone but have premium content restrictions applied inside */}
          <Route
            path="/programs"
            element={
              <Layout>
                <ProtectedRoute>
                  <Programs />
                </ProtectedRoute>
              </Layout>
            }
          />
          <Route
            path="/programs/:programId"
            element={
              <Layout>
                <ProtectedRoute>
                  <ProgramDetails />
                </ProtectedRoute>
              </Layout>
            }
          />
          <Route
            path="/programs/:programId/workout/:week/:day"
            element={
              <Layout>
                <ProtectedRoute>
                  <ProgramWorkout />
                </ProtectedRoute>
              </Layout>
            }
          />

          <Route
            path="/program-builder"
            element={
              <Layout>
                <ProtectedRoute>
                  <ProgramBuilder />
                </ProtectedRoute>
              </Layout>
            }
          />

          {/* Protected Routes - Authentication Required */}
          <Route
            path="/dashboard"
            element={
              <Layout>
                <ProtectedRoute>
                  <Dashboard />
                </ProtectedRoute>
              </Layout>
            }
          />

          {/* Protected Routes - Authentication Required */}
          <Route
            path="/subscription"
            element={
              <Layout>
                <ProtectedRoute>
                  <Subscription />
                </ProtectedRoute>
              </Layout>
            }
          />
          <Route
            path="/subscription/success"
            element={
              <Layout>
                <ProtectedRoute>
                  <SubscriptionSuccess />
                </ProtectedRoute>
              </Layout>
            }
          />

          <Route path="/exercises/:exerciseId" element={<ExerciseDetails />} />
        </Routes>
      </ExerciseProvider>
    </AuthProvider>
  );
}

export default App;
