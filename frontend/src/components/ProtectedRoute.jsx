import { Navigate, useLocation } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';

function ProtectedRoute({ children }) {
    const { user, loading } = useAuth();
    const location = useLocation();

    // If still loading authentication status, show nothing
    if (loading) {
        return <div>Loading...</div>;
    }

    // If not authenticated, redirect to login with current location for redirect after login
    if (!user) {
        return <Navigate to="/login" state={{ from: location.pathname }} replace />;
    }

    // If authenticated, render the children
    return children;
}

export default ProtectedRoute; 