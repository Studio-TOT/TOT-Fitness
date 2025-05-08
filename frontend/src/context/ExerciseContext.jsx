import React, { createContext, useContext, useState, useCallback } from 'react';
import PropTypes from 'prop-types';

const ExerciseContext = createContext();

// Get API URL from runtime config
const getApiUrl = () => {
  const apiUrl = import.meta.env.VITE_API_URL;
  if (!apiUrl) {
    console.error('API URL is not set in environment variables');
    return '';
  }
  return apiUrl;
};

export function ExerciseProvider({ children }) {
  const [exercises, setExercises] = useState([]);
  const [pagination, setPagination] = useState({
    total: 0,
    page: 1,
    limit: 10,
    totalPages: 0
  });
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState(null);
  const apiUrl = getApiUrl();

  const fetchExercises = useCallback(async () => {
    if (!apiUrl) {
      setError('API URL is not configured. Please check your environment variables.');
      return;
    }

    setIsLoading(true);
    setError(null);
    try {
      const response = await fetch(`${apiUrl}/api/exercises`, {
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
  }, [apiUrl]);

  const fetchExercisesByBodyPart = useCallback(async (bodyPart, category, page = 1, limit = 10, search = '', difficulty = '') => {
    if (!apiUrl) {
      setError('API URL is not configured. Please check your environment variables.');
      return;
    }

    setIsLoading(true);
    setError(null);
    try {
      const queryParams = new URLSearchParams({
        page,
        limit
      });
      if (category) {
        queryParams.append('category', category);
      }
      if (search) {
        queryParams.append('search', search);
      }
      if (difficulty) {
        queryParams.append('difficulty', difficulty);
      }

      const response = await fetch(
        `${apiUrl}/api/exercises/bodypart/${bodyPart}?${queryParams.toString()}`,
        {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
          }
        }
      );
      
      if (!response.ok) {
        const errorData = await response.json().catch(() => ({}));
        if (response.status === 404) {
          setExercises([]);
          setPagination({
            total: 0,
            page: 1,
            limit,
            totalPages: 0
          });
          return;
        }
        throw new Error(
          errorData.details || `HTTP error! status: ${response.status}`
        );
      }
      
      const data = await response.json();
      setExercises(data.data || []);
      setPagination(data.pagination || {
        total: 0,
        page: 1,
        limit,
        totalPages: 0
      });
    } catch (err) {
      setError(
        err.message.includes("ECONNREFUSED")
          ? "Unable to connect to the database. Please try again later."
          : err.message
      );
      setExercises([]);
      setPagination({
        total: 0,
        page: 1,
        limit,
        totalPages: 0
      });
    } finally {
      setIsLoading(false);
    }
  }, [apiUrl]);

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
    pagination,
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
    throw new Error('useExercises must be used within an ExerciseProvider');
  }
  return context;
} 