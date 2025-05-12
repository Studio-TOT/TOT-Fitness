import React from 'react';
import PropTypes from 'prop-types';
import { Navigate, useLocation } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';

function PremiumRoute({ children, preview }) {
    const { user, isPremium, loading } = useAuth();
    const location = useLocation();

    // If still loading authentication status, show loading indicator
    if (loading) {
        return <div>Loading...</div>;
    }

    // If user is not logged in, redirect to login with the current location for redirect after login
    if (!user) {
        return <Navigate to="/login" state={{ from: location.pathname }} replace />;
    }

    // If user is logged in but not premium, show the preview component if provided
    if (!isPremium()) {
        return preview || (
            <Navigate to="/subscription" state={{ from: location.pathname }} replace />
        );
    }

    // If user is premium, render the protected content
    return children;
}

PremiumRoute.propTypes = {
    children: PropTypes.node.isRequired,
    preview: PropTypes.node
};

export default PremiumRoute; 