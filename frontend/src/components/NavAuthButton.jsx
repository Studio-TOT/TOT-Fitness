import React from 'react';
import PropTypes from 'prop-types';
import loginLogoDark from '../assets/login-logo-dark.svg';
import loginLogoLight from '../assets/login-logo-light.svg';
import { FiLogOut } from 'react-icons/fi';

function NavAuthButton({ user, logout, setAuthOpen, iconColor }) {
    // Mobile: iconColor === 'text-black' (navbar always white)
    const isMobile = iconColor === 'text-black' && window.innerWidth < 1024;
    const logoSrc = iconColor === 'text-black' ? loginLogoDark : loginLogoLight;
    const imgClass = iconColor === 'text-black'
        ? 'border border-gray-300 rounded-full bg-white'
        : 'rounded-full bg-transparent';

    if (user) {
        if (isMobile) {
            // Mobile: only show the icon, no username or logout
            return (
                <div className="flex flex-col items-center justify-center">
                    <div className="w-9 h-9 flex items-center justify-center border border-gray-300 rounded-full bg-white">
                        <img src={logoSrc} alt="User" width={28} height={28} className="rounded-full" />
                    </div>
                </div>
            );
        }
        // Desktop: always show icon, username, and logout, only color changes
        return (
            <div className="flex items-center gap-2">
                <div className={`w-8 h-8 flex items-center justify-center ${imgClass} shadow-sm`}>
                    <img src={logoSrc} alt="User" width={28} height={28} className="rounded-full" />
                </div>
                <span className={iconColor === 'text-black'
                    ? 'text-sm text-gray-600 font-medium max-w-[120px] truncate'
                    : 'text-sm text-white font-medium max-w-[120px] truncate'}>{user.email}</span>
                <button
                    onClick={logout}
                    className={iconColor === 'text-black'
                        ? 'ml-1 p-2 rounded-full hover:bg-gray-100 transition-colors text-gray-500 hover:text-red-500 focus:outline-none'
                        : 'ml-1 p-2 rounded-full hover:bg-white/20 transition-colors text-white focus:outline-none'}
                    title="Logout"
                    aria-label="Logout"
                >
                    <FiLogOut size={20} color={iconColor === 'text-black' ? '#6B7280' : '#fff'} />
                </button>
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