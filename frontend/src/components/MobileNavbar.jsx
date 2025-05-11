import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import PropTypes from 'prop-types';
import NavAuthButton from './NavAuthButton';
import dash from '../assets/dashboard.png';
import prog from '../assets/ecrire.png';
import exo from '../assets/haltere.png';
import nut from '../assets/plaque.png';

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
    return (
        <nav className="navbar-mobile">
            <ul className="flex justify-evenly items-center">
                {navItems.map(item => (
                    <li key={item.label} className="flex flex-col items-center">
                        {item.type === 'link' ? (
                            <Link to={item.href}>
                                {iconMap[item.label] && <img src={iconMap[item.label]} alt="" width="30px" className="nav-icon" />} {item.label}
                            </Link>
                        ) : (
                            <a href={item.href} onClick={e => handleScroll(e, item.scrollId)}>
                                {iconMap[item.label] && <img src={iconMap[item.label]} alt="" width="30px" />} {item.label}
                            </a>
                        )}
                    </li>
                ))}
                <li className="flex flex-col items-center">
                    <NavAuthButton user={user} logout={logout} setAuthOpen={setAuthOpen} iconColor="text-black" />
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