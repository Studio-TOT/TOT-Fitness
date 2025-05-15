import { Link, useNavigate, useSearchParams } from "react-router-dom";
import backarrow from "../assets/back-arrow.svg";
import { useEffect, useState } from "react";
import Newsletter from "../components/Newsletter";
import { useAuth } from "../context/AuthContext";

function SubscriptionSuccess() {
    const [searchParams] = useSearchParams();
    const navigate = useNavigate();
    const { refreshUser, user } = useAuth();
    const [verificationStatus, setVerificationStatus] = useState('verifying');
    const [error, setError] = useState(null);

    useEffect(() => {
        const verifySession = async () => {
            const sessionId = searchParams.get('session_id');
            if (!sessionId) {
                setError('No session ID found');
                setVerificationStatus('error');
                return;
            }

            try {
                const storedToken = localStorage.getItem('jwt');
                if (!storedToken) {
                    setError('Authentication token not found');
                    setVerificationStatus('error');
                    return;
                }

                console.log('Verifying session with ID:', sessionId);
                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/subscription/verify-session`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${storedToken}`
                    },
                    body: JSON.stringify({ sessionId })
                });

                console.log('Verification response status:', response.status);
                const data = await response.json();
                console.log('Verification response:', data);

                if (response.ok) {
                    console.log('Session verified successfully');
                    setVerificationStatus('success');
                    // Refresh user data to get updated premium status
                    await refreshUser();
                    // Wait a moment before redirecting to ensure user data is updated
                    setTimeout(() => {
                        navigate('/dashboard');
                    }, 2000);
                } else {
                    console.error('Session verification failed:', data.error);
                    setError(data.error || 'Failed to verify subscription');
                    setVerificationStatus('error');
                }
            } catch (err) {
                console.error('Error verifying session:', err);
                setError('An error occurred while verifying your subscription');
                setVerificationStatus('error');
            }
        };

        // Only verify if we have a user
        if (user) {
            verifySession();
        } else {
            // If no user, try to refresh the user data first
            refreshUser().then(() => {
                if (user) {
                    verifySession();
                } else {
                    setError('Please log in to verify your subscription');
                    setVerificationStatus('error');
                }
            });
        }
    }, [searchParams, navigate, refreshUser, user]);

    const handleNav = () => {
        navigate(-1);
    };

    if (verificationStatus === 'verifying') {
        return (
            <div className="min-h-screen flex items-center justify-center bg-gray-100">
                <div className="text-center">
                    <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-indigo-600 mx-auto mb-4"></div>
                    <h2 className="text-2xl font-semibold text-gray-800">Verifying your subscription...</h2>
                    <p className="text-gray-600 mt-2">Please wait while we confirm your payment.</p>
                </div>
            </div>
        );
    }

    if (verificationStatus === 'error') {
        return (
            <div className="min-h-screen flex items-center justify-center bg-gray-100">
                <div className="max-w-md w-full p-6 bg-white rounded-lg shadow-lg text-center">
                    <div className="text-red-500 mb-4">
                        <svg className="h-12 w-12 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                        </svg>
                    </div>
                    <h2 className="text-2xl font-semibold text-gray-800 mb-4">Verification Failed</h2>
                    <p className="text-gray-600 mb-6">{error}</p>
                    <button
                        onClick={() => navigate('/subscription')}
                        className="bg-indigo-600 text-white px-6 py-2 rounded-lg hover:bg-indigo-700 transition-colors"
                    >
                        Return to Subscription
                    </button>
                </div>
            </div>
        );
    }

    return (
        <div className="min-h-screen flex items-center justify-center bg-gray-100">
            <div className="text-center">
                <div className="text-green-500 mb-4">
                    <svg className="h-12 w-12 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                    </svg>
                </div>
                <h2 className="text-2xl font-semibold text-gray-800">Subscription Successful!</h2>
                <p className="text-gray-600 mt-2">Thank you for subscribing. Redirecting to dashboard...</p>
            </div>
        </div>
    );
}

export default SubscriptionSuccess; 