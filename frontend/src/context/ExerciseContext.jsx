import React, { createContext, useContext, useState, useCallback } from 'react';
import PropTypes from 'prop-types';

const ExerciseContext = createContext();

export function ExerciseProvider({ children }) {
  const [exercises, setExercises] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState(null);

  const fetchExercises = useCallback(async () => {
    setIsLoading(true);
    setError(null);
    try {
      const apiUrl = `${import.meta.env.VITE_API_URL}/api/exercises`;
      const response = await fetch(apiUrl, {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        }
      });
      
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      
      const data = await response.json();
      setExercises(data || []);
    } catch (err) {
      setError(err.message.includes("ECONNREFUSED") 
        ? "Unable to connect to the database. Please try again later."
        : err.message
      );
      setExercises([]);
    } finally {
      setIsLoading(false);
    }
  }, []);

  const fetchExercisesByBodyPart = useCallback(async (bodyPart) => {
    setIsLoading(true);
    setError(null);
    try {
      const apiUrl = `${import.meta.env.VITE_API_URL}/api/exercises/bodypart/${bodyPart}`;
      const response = await fetch(apiUrl, {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        }
      });
      
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      
      const data = await response.json();
      setExercises(data || []);
    } catch (err) {
      setError(err.message.includes("ECONNREFUSED")
        ? "Unable to connect to the database. Please try again later."
        : err.message
      );
      setExercises([]);
    } finally {
      setIsLoading(false);
    }
  }, []);

  const getExercisesByMuscle = useCallback((exercises, muscleName) => {
    if (!Array.isArray(exercises)) return [];
    return exercises.filter(exercise => {
      const primary = exercise.target?.Primary || [];
      const secondary = exercise.target?.Secondary || [];
      const tertiary = exercise.target?.Tertiary || [];
      
      return primary.some(muscle => muscle.toLowerCase() === muscleName.toLowerCase()) ||
             secondary.some(muscle => muscle.toLowerCase() === muscleName.toLowerCase()) ||
             tertiary.some(muscle => muscle.toLowerCase() === muscleName.toLowerCase());
    });
  }, []);

  const value = {
    exercises,
    isLoading,
    error,
    fetchExercises,
    fetchExercisesByBodyPart,
    getExercisesByMuscle
  };

  return (
    <ExerciseContext.Provider value={value}>
      {children}
    </ExerciseContext.Provider>
  );
}

ExerciseProvider.propTypes = {
  children: PropTypes.node.isRequired,
};

export function useExercises() {
  const context = useContext(ExerciseContext);
  if (context === undefined) {
    throw new Error("useExercises must be used within an ExerciseProvider");
  }
  return context;
} 