import React from 'react';
import PropTypes from 'prop-types';
import loginLogoDark from '../assets/login-logo-dark.svg';
import loginLogoLight from '../assets/login-logo-light.svg';

function NavAuthButton({ user, logout, setAuthOpen, iconColor }) {
    // Choose logo based on iconColor
    const isMobile = iconColor === 'text-black';
    const logoSrc = isMobile ? loginLogoDark : loginLogoLight;
    const imgClass = isMobile ? 'border border-gray-300 rounded-full' : '';
    return user ? (
        <div className="flex items-center gap-2">
            <span className="text-sm text-gray-700">{user.email}</span>
            <button
                onClick={logout}
                className="px-4 py-1.5 text-[20px] leading-[36px] font-medium text-white bg-black rounded-md hover:bg-gray-800 transition-colors"
            >
                Logout
            </button>
        </div>
    ) : (
        <button
            onClick={() => setAuthOpen(true)}
            className="flex items-center justify-center p-0 bg-transparent hover:bg-gray-200 rounded-full transition-colors align-middle"
            aria-label="Login"
            style={{ marginTop: '-2px' }}
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