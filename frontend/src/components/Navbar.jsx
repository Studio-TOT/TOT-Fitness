import { useEffect, useState } from "react";
import PropTypes from "prop-types";
import { useAuth } from '../context/AuthContext';
import AuthModal from './AuthModal';
import navItems from './navItems';
import DesktopNavbar from './DesktopNavbar';
import MobileNavbar from './MobileNavbar';

function Navbar({ isTransparent = false }) {
  const { user, logout } = useAuth();
  const [authOpen, setAuthOpen] = useState(false);
  const [navBackground, setNavBackground] = useState("navbar-desktop-scrolled");

  useEffect(() => {
    const handleScroll = () => {
      const currentScrollY = window.scrollY || 0;
      if (window.location.pathname === "/" && currentScrollY < 100) {
        setNavBackground("navbar-desktop");
      } else {
        setNavBackground("navbar-desktop navbar-desktop-scrolled");
      }
    };
    window.addEventListener("scroll", handleScroll);
    handleScroll();
    return () => {
      window.removeEventListener("scroll", handleScroll);
    };
  }, []);

  useEffect(() => {
    if (isTransparent) {
      setNavBackground("navbar-desktop");
      return;
    }
    setNavBackground("navbar-desktop navbar-desktop-scrolled");
  }, [isTransparent]);

  // Determine icon color based on navbar background
  const iconColor = navBackground.includes('navbar-desktop-scrolled') ? 'text-black' : 'text-white';

  return (
    <div>
      <AuthModal open={authOpen} onClose={() => setAuthOpen(false)} />
      <MobileNavbar
        navItems={navItems}
        user={user}
        logout={logout}
        setAuthOpen={setAuthOpen}
        iconColor={iconColor}
      />
      <DesktopNavbar
        navItems={navItems}
        navBackground={navBackground}
        user={user}
        logout={logout}
        setAuthOpen={setAuthOpen}
        iconColor={iconColor}
      />
    </div>
  );
}

export default Navbar;

Navbar.propTypes = {
  isTransparent: PropTypes.bool,
};