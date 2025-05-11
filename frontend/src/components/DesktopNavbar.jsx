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
                            <Link to={item.href}>{item.label}</Link>
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