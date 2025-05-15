import React, { createContext, useContext, useState, useEffect } from 'react';

const AuthContext = createContext();

export function useAuth() {
    return useContext(AuthContext);
}

export function AuthProvider({ children }) {
    const [user, setUser] = useState(null);
    const [token, setToken] = useState(() => localStorage.getItem('jwt') || null);
    const [loading, setLoading] = useState(true);

    const refreshUser = async () => {
        const storedToken = localStorage.getItem('jwt');
        if (!storedToken) {
            setUser(null);
            setToken(null);
            return;
        }

        try {
            const response = await fetch(`${import.meta.env.VITE_API_URL}/api/auth/me`, {
                headers: { Authorization: `Bearer ${storedToken}` },
            });
            if (response.ok) {
                const data = await response.json();
                setUser(data);
                setToken(storedToken);
            } else {
                // If the token is invalid, clear everything
                setUser(null);
                setToken(null);
                localStorage.removeItem('jwt');
            }
        } catch (error) {
            console.error('Error refreshing user:', error);
            // On error, clear everything
            setUser(null);
            setToken(null);
            localStorage.removeItem('jwt');
        }
    };

    // Initial auth check and token restoration
    useEffect(() => {
        const initializeAuth = async () => {
            const storedToken = localStorage.getItem('jwt');
            if (storedToken) {
                try {
                    const response = await fetch(`${import.meta.env.VITE_API_URL}/api/auth/me`, {
                        headers: { Authorization: `Bearer ${storedToken}` },
                    });
                    if (response.ok) {
                        const data = await response.json();
                        setUser(data);
                        setToken(storedToken);
                    } else {
                        // If the token is invalid, clear everything
                        setUser(null);
                        setToken(null);
                        localStorage.removeItem('jwt');
                    }
                } catch (error) {
                    console.error('Error initializing auth:', error);
                    setUser(null);
                    setToken(null);
                    localStorage.removeItem('jwt');
                }
            }
            setLoading(false);
        };

        initializeAuth();
    }, []);

    const login = async (email, password) => {
        const res = await fetch(`${import.meta.env.VITE_API_URL}/api/auth/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ email, password }),
        });
        let data;
        try {
            data = await res.json();
        } catch {
            data = {};
        }
        if (!res.ok) {
            if (res.status === 400) throw new Error('Please enter both email and password.');
            if (res.status === 401) throw new Error('Incorrect email or password.');
            throw new Error(data.error || 'Login failed. Please try again.');
        }
        setToken(data.token);
        localStorage.setItem('jwt', data.token);
        setUser(data.user);
        return data.user;
    };

    const register = async (email, password) => {
        const res = await fetch(`${import.meta.env.VITE_API_URL}/api/auth/register`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ email, password }),
        });
        let data;
        try {
            data = await res.json();
        } catch {
            data = {};
        }
        if (!res.ok) {
            if (res.status === 400) throw new Error('Please enter both email and password.');
            if (res.status === 409) throw new Error('An account with this email already exists.');
            throw new Error(data.error || 'Registration failed. Please try again.');
        }
        setToken(data.token);
        localStorage.setItem('jwt', data.token);
        setUser(data.user);
        return data.user;
    };

    const socialLogin = async (provider, accessToken) => {
        const res = await fetch(`${import.meta.env.VITE_API_URL}/api/auth/${provider.toLowerCase()}`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ access_token: accessToken }),
        });

        let data;
        try {
            data = await res.json();
        } catch {
            data = {};
        }

        if (!res.ok) {
            throw new Error(data.error || `${provider} login failed. Please try again.`);
        }

        setToken(data.token);
        localStorage.setItem('jwt', data.token);
        setUser(data.user);
        return data.user;
    };

    const logout = () => {
        setToken(null);
        setUser(null);
        localStorage.removeItem('jwt');
    };

    const isPremium = () => user?.is_premium;

    return (
        <AuthContext.Provider value={{
            user,
            token,
            loading,
            login,
            register,
            socialLogin,
            logout,
            isPremium,
            refreshUser
        }}>
            {children}
        </AuthContext.Provider>
    );
} 