import { Link, useNavigate, useSearchParams } from "react-router-dom";
import backarrow from "../assets/back-arrow.svg";
import { useEffect, useState } from "react";
import Newsletter from "../components/Newsletter";
import { useAuth } from "../context/AuthContext";

function SubscriptionSuccess() {
    const nav = useNavigate();
    const [searchParams] = useSearchParams();
    const sessionId = searchParams.get("session_id");
    const [verificationStatus, setVerificationStatus] = useState('verifying');
    const { token, refreshUser } = useAuth();

    useEffect(() => {
        window.scrollTo(0, 0);
    }, []);

    useEffect(() => {
        const verifySession = async () => {
            try {
                if (!token) {
                    console.error('[SUBSCRIPTION_SUCCESS] No authentication token found');
                    setVerificationStatus('error');
                    return;
                }

                const response = await fetch(`${import.meta.env.VITE_API_URL}/api/subscription/verify-session`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${token}`
                    },
                    body: JSON.stringify({ sessionId }),
                });

                if (!response.ok) {
                    console.error('[SUBSCRIPTION_SUCCESS] Verification failed:', response.status);
                    throw new Error('Failed to verify session');
                }

                const data = await response.json();

                if (data.success) {
                    setVerificationStatus('success');
                    // Refresh user data to update premium status
                    await refreshUser();
                    // Redirect to dashboard after a short delay
                    setTimeout(() => {
                        nav('/dashboard');
                    }, 2000);
                } else {
                    console.error('[SUBSCRIPTION_SUCCESS] Verification unsuccessful:', data);
                    setVerificationStatus('error');
                }
            } catch (error) {
                console.error('[SUBSCRIPTION_SUCCESS] Error verifying session:', error);
                setVerificationStatus('error');
            }
        };

        if (sessionId) {
            verifySession();
        } else {
            console.error('[SUBSCRIPTION_SUCCESS] No session ID found in URL');
            setVerificationStatus('error');
        }
    }, [sessionId, token, refreshUser, nav]);

    const handleNav = () => {
        nav(-1);
    };

    if (verificationStatus === 'verifying') {
        return (
            <div className="subscription-cards">
                <div>
                    <div className="arrow-title">
                        <Link to="/" onClick={handleNav}>
                            <img className="backarrow" src={backarrow} alt="backarrow" />
                        </Link>{" "}
                        <h2>Verifying Subscription</h2>
                    </div>
                    <p>Please wait while we verify your subscription...</p>
                </div>
            </div>
        );
    }

    if (verificationStatus === 'error') {
        return (
            <div className="subscription-cards">
                <div>
                    <div className="arrow-title">
                        <Link to="/" onClick={handleNav}>
                            <img className="backarrow" src={backarrow} alt="backarrow" />
                        </Link>{" "}
                        <h2>Verification Error</h2>
                    </div>
                    <p>There was an error verifying your subscription. Please contact support.</p>
                    <Link to="/dashboard">
                        <button className="black-button">Go to Dashboard</button>
                    </Link>
                </div>
            </div>
        );
    }

    return (
        <div>
            <div className="subscription-cards">
                <div>
                    <div className="arrow-title">
                        <Link to="/" onClick={handleNav}>
                            <img className="backarrow" src={backarrow} alt="backarrow" />
                        </Link>{" "}
                        <h2>Subscription Successful</h2>
                    </div>
                    <p>
                        Thank you for subscribing! 🎉<br />
                        You now have access to all our premium workout programs and healthy recipes.
                    </p>
                    <p className="subscription-save" style={{ color: '#4caf50', marginTop: 16 }}>
                        Your payment was successful.
                    </p>
                    <p className="subscription-save" style={{ fontSize: 12, color: '#888' }}>
                        (Session ID: {sessionId})
                    </p>
                    <p className="subscription-save" style={{ color: '#666', marginTop: 16 }}>
                        Redirecting to dashboard...
                    </p>
                </div>
            </div>

            <div className="my-16">
                <div className="max-w-3xl mx-auto px-4 text-center mb-12">
                    <h2 className="text-2xl font-bold mb-6">Your Premium Benefits</h2>
                    <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
                        <div className="bg-white rounded-lg shadow-md p-6">
                            <div className="w-16 h-16 mx-auto mb-4 bg-indigo-100 rounded-full flex items-center justify-center">
                                <svg className="w-8 h-8 text-indigo-600" fill="currentColor" viewBox="0 0 20 20">
                                    <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clipRule="evenodd" />
                                </svg>
                            </div>
                            <h3 className="text-lg font-semibold mb-2">Premium Workouts</h3>
                            <p className="text-gray-600">Access all workout programs and custom training plans</p>
                        </div>
                        <div className="bg-white rounded-lg shadow-md p-6">
                            <div className="w-16 h-16 mx-auto mb-4 bg-indigo-100 rounded-full flex items-center justify-center">
                                <svg className="w-8 h-8 text-indigo-600" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                                </svg>
                            </div>
                            <h3 className="text-lg font-semibold mb-2">Nutrition Guide</h3>
                            <p className="text-gray-600">Full access to all recipes and meal planning tools</p>
                        </div>
                        <div className="bg-white rounded-lg shadow-md p-6">
                            <div className="w-16 h-16 mx-auto mb-4 bg-indigo-100 rounded-full flex items-center justify-center">
                                <svg className="w-8 h-8 text-indigo-600" fill="currentColor" viewBox="0 0 20 20">
                                    <path fillRule="evenodd" d="M18 13V5a2 2 0 00-2-2H4a2 2 0 00-2 2v8a2 2 0 002 2h3l3 3 3-3h3a2 2 0 002-2zM5 7a1 1 0 011-1h8a1 1 0 110 2H6a1 1 0 01-1-1zm1 3a1 1 0 100 2h3a1 1 0 100-2H6z" clipRule="evenodd" />
                                </svg>
                            </div>
                            <h3 className="text-lg font-semibold mb-2">Exclusive Content</h3>
                            <p className="text-gray-600">First access to new programs and features</p>
                        </div>
                    </div>
                </div>

                <Newsletter isPremium={true} />
            </div>
        </div>
    );
}

export default SubscriptionSuccess; 