import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import PropTypes from 'prop-types';
import NavAuthButton from './NavAuthButton';

function DesktopNavbar({ navItems, navBackground, user, logout, setAuthOpen, iconColor }) {
    const navigate = useNavigate();
    const handleScroll = (e, scrollId) => {
        e.preventDefault();
        navigate('/');
        setTimeout(() => {
            const el = document.getElementById(scrollId);
            if (el) {
                window.scrollTo({
                    top: el.offsetTop - 60,
                    behavior: 'smooth',
                });
            }
        }, 100);
    };
    return (
        <nav className={navBackground}>
            <Link to="/">
                <p>TOT FITNESS CLUB</p>
            </Link>
            <ul className="flex items-center">
                {navItems.map(item => (
                    <li key={item.label}>
                        {item.type === 'link' ? (
                            <Link to={item.href} className="relative flex items-center group">
                                {item.label}
                                {item.isPremium && (
                                    <span className="ml-2 inline-flex items-center px-1.5 py-0.5 rounded-full text-xs font-medium bg-gradient-to-r from-indigo-600 to-purple-600 text-white">
                                        PRO
                                    </span>
                                )}
                                {item.isPremium && (
                                    <div className="absolute left-1/2 transform -translate-x-1/2 bottom-full mb-1 hidden group-hover:block">
                                        <div className="bg-gray-900 text-white text-xs px-2 py-1 rounded whitespace-nowrap">
                                            Premium feature
                                            <svg className="absolute text-gray-900 h-2 w-full left-0 top-full" x="0px" y="0px" viewBox="0 0 255 255">
                                                <polygon className="fill-current" points="0,0 127.5,127.5 255,0" />
                                            </svg>
                                        </div>
                                    </div>
                                )}
                            </Link>
                        ) : (
                            <a href={item.href} onClick={e => handleScroll(e, item.scrollId)}>{item.label}</a>
                        )}
                    </li>
                ))}
                <li>
                    <NavAuthButton user={user} logout={logout} setAuthOpen={setAuthOpen} iconColor={iconColor} />
                </li>
            </ul>
        </nav>
    );
}

DesktopNavbar.propTypes = {
    navItems: PropTypes.array.isRequired,
    navBackground: PropTypes.string.isRequired,
    user: PropTypes.object,
    logout: PropTypes.func.isRequired,
    setAuthOpen: PropTypes.func.isRequired,
    iconColor: PropTypes.string.isRequired,
};

export default DesktopNavbar; 