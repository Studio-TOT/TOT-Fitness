import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import PropTypes from 'prop-types';
import NavAuthButton from './NavAuthButton';
import dash from '../assets/dashboard.png';
import prog from '../assets/ecrire.png';
import exo from '../assets/haltere.png';
import nut from '../assets/plaque.png';
import { FiUser } from 'react-icons/fi';

const iconMap = {
    Dashboard: dash,
    Programs: prog,
    Exercises: exo,
    Nutrition: nut,
};

function MobileNavbar({ navItems, user, logout, setAuthOpen, iconColor }) {
    const navigate = useNavigate();
    const handleScroll = (e, scrollId) => {
        e.preventDefault();
        navigate('/');
        setTimeout(() => {
            const el = document.getElementById(scrollId);
            if (el) {
                window.scrollTo({
                    top: el.offsetTop,
                    behavior: 'smooth',
                });
            }
        }, 100);
    };

    // Mobile toolbar items
    const toolbarItems = [...navItems];

    return (
        <nav className="navbar-mobile">
            <ul className="flex justify-evenly items-center">
                {toolbarItems.map(item => (
                    <li key={item.label} className="flex flex-col items-center">
                        {item.type === 'link' ? (
                            <Link to={item.href} className="flex flex-col items-center text-xs">
                                <div className="relative">
                                    {iconMap[item.label] && <img src={iconMap[item.label]} alt="" width="30px" className="nav-icon mb-1" />}
                                    {item.isPremium && (
                                        <span className="absolute -top-1 -right-1 bg-gradient-to-r from-indigo-600 to-purple-600 text-white text-[8px] font-bold px-1 py-0.5 rounded-full">
                                            PRO
                                        </span>
                                    )}
                                </div>
                                <div className="flex items-center">
                                    <span>{item.label}</span>
                                </div>
                            </Link>
                        ) : (
                            <a href={item.href} onClick={e => handleScroll(e, item.scrollId)} className="flex flex-col items-center text-xs">
                                {iconMap[item.label] && <img src={iconMap[item.label]} alt="" width="30px" className="mb-1" />}
                                <span>{item.label}</span>
                            </a>
                        )}
                    </li>
                ))}
                <li className="flex flex-col items-center">
                    <NavAuthButton user={user} logout={logout} setAuthOpen={setAuthOpen} iconColor="text-black" />
                    <span className="text-xs mt-1">{user ? 'Profile' : 'Sign In'}</span>
                </li>
            </ul>
        </nav>
    );
}

MobileNavbar.propTypes = {
    navItems: PropTypes.array.isRequired,
    user: PropTypes.object,
    logout: PropTypes.func.isRequired,
    setAuthOpen: PropTypes.func.isRequired,
    iconColor: PropTypes.string.isRequired,
};

export default MobileNavbar; 