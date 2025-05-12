import { useState } from 'react';
import { useNavigate, useLocation, Link } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';

function Login() {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');
    const [loading, setLoading] = useState(false);
    const [socialLoading, setSocialLoading] = useState(null);

    const { login, socialLogin } = useAuth();
    const navigate = useNavigate();
    const location = useLocation();

    // Get the redirect path from state or default to homepage
    const from = location.state?.from || '/';

    const handleSubmit = async (e) => {
        e.preventDefault();
        setError('');
        setLoading(true);

        try {
            await login(email, password);
            // Navigate to the page they were trying to access
            navigate(from);
        } catch (err) {
            setError(err.message);
        } finally {
            setLoading(false);
        }
    };

    const handleSocialLogin = async (provider) => {
        try {
            setSocialLoading(provider);
            setError('');

            // This is a placeholder for actual OAuth implementation
            // In a real implementation, you would:
            // 1. Redirect to provider's OAuth page
            // 2. Get the access token from the redirect
            // 3. Call the socialLogin function with the token

            // Mock implementation for now:
            if (import.meta.env.VITE_ENABLE_MOCK_OAUTH === 'true') {
                // Simulating OAuth flow for development purposes
                await new Promise(resolve => setTimeout(resolve, 1000));
                await socialLogin(provider, 'mock_token');
                navigate(from);
            } else {
                // In production, we'd set up proper OAuth
                setError(`${provider} login not yet implemented. Coming soon!`);
            }
        } catch (err) {
            setError(err.message || `${provider} login failed. Please try again.`);
        } finally {
            setSocialLoading(null);
        }
    };

    return (
        <div className="min-h-screen flex items-center justify-center bg-gray-100 px-4">
            <div className="max-w-md w-full p-6 bg-white rounded-lg shadow-lg">
                <h2 className="text-center text-3xl font-extrabold text-gray-900 mb-8">
                    Sign in to your account
                </h2>

                {error && (
                    <div className="mb-6 p-3 bg-red-100 border border-red-400 text-red-700 rounded">
                        {error}
                    </div>
                )}

                {/* Social Login Buttons */}
                <div className="space-y-4 mb-8">
                    <button
                        type="button"
                        onClick={() => handleSocialLogin('Apple')}
                        disabled={socialLoading !== null}
                        className="w-full flex items-center justify-center py-3 px-4 border border-gray-300 rounded-lg shadow-sm bg-white text-base font-medium text-gray-700 hover:bg-gray-50 transition-colors disabled:opacity-50"
                    >
                        <svg className="w-6 h-6 mr-3" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12.152 6.896c-.948 0-2.415-1.078-3.96-1.04-2.04.027-3.91 1.183-4.961 3.014-2.117 3.675-.546 9.103 1.519 12.09 1.013 1.454 2.208 3.09 3.792 3.039 1.52-.065 2.09-.987 3.935-.987 1.831 0 2.35.987 3.96.948 1.637-.026 2.676-1.48 3.676-2.948 1.156-1.688 1.636-3.325 1.662-3.415-.039-.013-3.182-1.221-3.22-4.857-.026-3.04 2.48-4.494 2.597-4.559-1.429-2.09-3.623-2.324-4.39-2.376-2-.156-3.675 1.09-4.61 1.09zM15.53 3.83c.843-1.012 1.4-2.427 1.245-3.83-1.207.052-2.662.805-3.532 1.818-.78.896-1.454 2.338-1.273 3.714 1.338.104 2.715-.688 3.559-1.701z" />
                        </svg>
                        {socialLoading === 'Apple' ? 'Signing in...' : 'Continue with Apple'}
                    </button>
                    <button
                        type="button"
                        onClick={() => handleSocialLogin('Google')}
                        disabled={socialLoading !== null}
                        className="w-full flex items-center justify-center py-3 px-4 border border-gray-300 rounded-lg shadow-sm bg-white text-base font-medium text-gray-700 hover:bg-gray-50 transition-colors disabled:opacity-50"
                    >
                        <svg className="w-6 h-6 mr-3" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                            <path d="M12.48 10.92v3.28h7.84c-.24 1.84-.853 3.187-1.787 4.133-1.147 1.147-2.933 2.4-6.053 2.4-4.827 0-8.6-3.893-8.6-8.72s3.773-8.72 8.6-8.72c2.6 0 4.507 1.027 5.907 2.347l2.307-2.307C18.747 1.44 16.133 0 12.48 0 5.867 0 .307 5.387.307 12s5.56 12 12.173 12c3.573 0 6.267-1.173 8.373-3.36 2.16-2.16 2.84-5.213 2.84-7.667 0-.76-.053-1.467-.173-2.053H12.48z" />
                        </svg>
                        {socialLoading === 'Google' ? 'Signing in...' : 'Continue with Google'}
                    </button>
                    <button
                        type="button"
                        onClick={() => handleSocialLogin('Facebook')}
                        disabled={socialLoading !== null}
                        className="w-full flex items-center justify-center py-3 px-4 border border-gray-300 rounded-lg shadow-sm bg-white text-base font-medium text-gray-700 hover:bg-gray-50 transition-colors disabled:opacity-50"
                    >
                        <svg className="w-6 h-6 mr-3" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                            <path fillRule="evenodd" d="M20 10c0-5.523-4.477-10-10-10S0 4.477 0 10c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V10h2.54V7.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V10h2.773l-.443 2.89h-2.33v6.988C16.343 19.128 20 14.991 20 10z" clipRule="evenodd" />
                        </svg>
                        {socialLoading === 'Facebook' ? 'Signing in...' : 'Continue with Facebook'}
                    </button>
                </div>

                {/* Email Login Form */}
                <form onSubmit={handleSubmit} className="space-y-4 mt-8">
                    <div className="text-center mb-2 text-lg font-medium text-gray-700">
                        Or sign in with email
                    </div>
                    <div>
                        <label htmlFor="email" className="block text-sm font-medium text-gray-700">
                            Email address
                        </label>
                        <input
                            id="email"
                            name="email"
                            type="email"
                            autoComplete="email"
                            required
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                            className="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500"
                        />
                    </div>

                    <div>
                        <label htmlFor="password" className="block text-sm font-medium text-gray-700">
                            Password
                        </label>
                        <input
                            id="password"
                            name="password"
                            type="password"
                            autoComplete="current-password"
                            required
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                            className="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500"
                        />
                    </div>

                    <div>
                        <button
                            type="submit"
                            disabled={loading || socialLoading !== null}
                            className="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 disabled:opacity-50"
                        >
                            {loading ? 'Signing in...' : 'Sign In'}
                        </button>
                    </div>
                </form>

                <div className="mt-8 text-center">
                    <p className="text-base text-gray-600">
                        Don't have an account?
                    </p>
                    <Link
                        to="/signup"
                        className="mt-2 inline-block font-medium text-lg text-indigo-600 hover:text-indigo-500 hover:underline"
                    >
                        Create an account
                    </Link>
                </div>
            </div>
        </div>
    );
}

export default Login; 