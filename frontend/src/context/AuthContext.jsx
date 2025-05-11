import React, { createContext, useContext, useState, useEffect } from 'react';

const AuthContext = createContext();

export function useAuth() {
    return useContext(AuthContext);
}

export function AuthProvider({ children }) {
    const [user, setUser] = useState(null);
    const [token, setToken] = useState(() => localStorage.getItem('jwt') || null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        if (token) {
            fetch(`${import.meta.env.VITE_API_URL}/api/auth/me`, {
                headers: { Authorization: `Bearer ${token}` },
            })
                .then(res => res.ok ? res.json() : Promise.reject())
                .then(data => setUser(data))
                .catch(() => setUser(null));
        } else {
            setUser(null);
        }
        setLoading(false);
    }, [token]);

    const login = async (email, password) => {
        const res = await fetch(`${import.meta.env.VITE_API_URL}/api/auth/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ email, password }),
        });
        if (!res.ok) throw new Error('Invalid credentials');
        const data = await res.json();
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
        if (!res.ok) throw new Error('Registration failed');
        const data = await res.json();
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
        <AuthContext.Provider value={{ user, token, loading, login, register, logout, isPremium }}>
            {children}
        </AuthContext.Provider>
    );
} 