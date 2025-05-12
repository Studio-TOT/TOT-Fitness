import React from 'react';
import PropTypes from 'prop-types';
import { useAuth } from '../context/AuthContext';
import { Navigate } from 'react-router-dom';
import NutritionPage from '../pages/NutritionPage';
import NutritionPreview from './NutritionPreview';

function NutritionPageWrapper({ data }) {
    const { user, isPremium } = useAuth();

    // If user is not logged in, redirect to login
    if (!user) {
        return <Navigate to="/login" state={{ from: '/Nutritionpage' }} replace />;
    }

    // If user is logged in but not premium, show preview
    if (!isPremium()) {
        return <NutritionPreview />;
    }

    // User is premium, show the full content
    return <NutritionPage data={data} />;
}

NutritionPageWrapper.propTypes = {
    data: PropTypes.arrayOf(PropTypes.shape).isRequired,
};

export default NutritionPageWrapper; 