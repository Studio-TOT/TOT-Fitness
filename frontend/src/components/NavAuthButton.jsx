import React, { useState, useRef, useEffect } from 'react';
import PropTypes from 'prop-types';
import { Link } from 'react-router-dom';
import loginLogoDark from '../assets/login-logo-dark.svg';
import loginLogoLight from '../assets/login-logo-light.svg';
import { FiLogOut, FiUser, FiChevronDown } from 'react-icons/fi';

function NavAuthButton({ user, logout, setAuthOpen, iconColor }) {
    const [dropdownOpen, setDropdownOpen] = useState(false);
    const dropdownRef = useRef(null);

    // Mobile: iconColor === 'text-black' (navbar always white)
    const isMobile = iconColor === 'text-black' && window.innerWidth < 1024;
    const logoSrc = iconColor === 'text-black' ? loginLogoDark : loginLogoLight;
    const imgClass = iconColor === 'text-black'
        ? 'border border-gray-300 rounded-full bg-white'
        : 'rounded-full bg-white/20';

    // Is transparent navbar at top of page
    const isTransparentNav = iconColor === 'text-white';

    useEffect(() => {
        const handleClickOutside = (event) => {
            if (dropdownRef.current && !dropdownRef.current.contains(event.target)) {
                setDropdownOpen(false);
            }
        };

        document.addEventListener("mousedown", handleClickOutside);
        return () => {
            document.removeEventListener("mousedown", handleClickOutside);
        };
    }, []);

    if (user) {
        if (isMobile) {
            // Mobile: simple menu
            return (
                <div className="flex flex-col items-center justify-center">
                    <Link to="/dashboard" className="w-9 h-9 flex items-center justify-center border border-gray-300 rounded-full bg-white">
                        <img src={logoSrc} alt="User" width={28} height={28} className="rounded-full" />
                    </Link>
                </div>
            );
        }

        // Desktop: dropdown menu
        return (
            <div className="relative" ref={dropdownRef}>
                <button
                    onClick={() => setDropdownOpen(!dropdownOpen)}
                    className={`flex items-center gap-2 py-1 px-2 rounded-md ${isTransparentNav
                        ? 'hover:bg-white/20 text-white'
                        : 'hover:bg-gray-100 text-gray-800'
                        }`}
                >
                    <div className={`w-8 h-8 flex items-center justify-center ${isTransparentNav ? 'bg-white/20' : 'bg-indigo-100'} rounded-full shadow-sm`}>
                        <span className={`text-lg font-bold ${isTransparentNav ? 'text-white' : 'text-indigo-600'}`}>
                            {user.email.charAt(0).toUpperCase()}
                        </span>
                    </div>
                    <span className={
                        isTransparentNav
                            ? 'text-sm text-white font-medium max-w-[120px] truncate'
                            : 'text-sm text-gray-600 font-medium max-w-[120px] truncate'
                    }>
                        {user.email}
                    </span>
                    <FiChevronDown size={16} className={iconColor} />
                </button>

                {dropdownOpen && (
                    <div className="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg py-1 z-50">
                        <Link
                            to="/dashboard"
                            className="flex items-center px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                            onClick={() => setDropdownOpen(false)}
                        >
                            <FiUser className="mr-2 text-gray-500" size={16} />
                            <span className="text-gray-700">Dashboard</span>
                        </Link>
                        <button
                            onClick={() => {
                                logout();
                                setDropdownOpen(false);
                            }}
                            className="flex items-center w-full text-left px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                        >
                            <FiLogOut className="mr-2 text-gray-500" size={16} />
                            <span className="text-gray-700">Sign out</span>
                        </button>
                    </div>
                )}
            </div>
        );
    }

    // Not logged in: just the icon, both desktop and mobile
    return (
        <button
            onClick={() => setAuthOpen(true)}
            className={iconColor === 'text-black' && window.innerWidth < 1024
                ? 'flex items-center justify-center w-9 h-9 border border-gray-300 rounded-full bg-white p-0 transition-colors align-middle'
                : 'flex items-center justify-center p-0 bg-transparent hover:bg-gray-200 rounded-full transition-colors align-middle'}
            aria-label="Login"
            style={iconColor === 'text-black' && window.innerWidth < 1024 ? {} : { marginTop: '-2px' }}
        >
            <img src={logoSrc} alt="Login" width={28} height={28} className={imgClass} />
        </button>
    );
}

NavAuthButton.propTypes = {
    user: PropTypes.object,
    logout: PropTypes.func.isRequired,
    setAuthOpen: PropTypes.func.isRequired,
    iconColor: PropTypes.string.isRequired,
};

export default NavAuthButton; 