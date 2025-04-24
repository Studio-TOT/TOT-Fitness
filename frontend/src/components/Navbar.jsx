import { useEffect, useState } from "react";
import PropTypes from "prop-types";
import { Link, useNavigate } from "react-router-dom";
import dash from "../assets/dashboard.png";
import prog from "../assets/ecrire.png";
import exo from "../assets/haltere.png";
import nut from "../assets/plaque.png";

function Navbar({ isTransparent }) {
  const [navBackground, setNavBackground] = useState("navbar-desktop-scrolled");
  const handleScroll = () => {
    const currentScrollY = window.scrollY || 0;
    if (window.location.pathname === "/" && currentScrollY < 100) {
      setNavBackground("navbar-desktop");
    } else {
      setNavBackground("navbar-desktop navbar-desktop-scrolled");
    }
  };
  useEffect(() => {
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
  const navigate = useNavigate();
  const handleScrollToSectionProg = (e) => {
    e.preventDefault();
    navigate("/");
    setTimeout(() => {
      if (window.innerWidth > 800) {
        window.scrollTo({
          top: document.getElementById("prog").offsetTop - 60,
          behavior: "smooth",
        });
      } else {
        window.scrollTo({
          top: document.getElementById("prog").offsetTop,
          behavior: "smooth",
        });
      }
    }, 100);
  };
  const handleScrollToSectionEx = (e) => {
    e.preventDefault();
    navigate("/");
    setTimeout(() => {
      if (window.innerWidth > 800) {
        window.scrollTo({
          top: document.getElementById("ex").offsetTop - 80,
          behavior: "smooth",
        });
      } else {
        window.scrollTo({
          top: document.getElementById("ex").offsetTop,
          behavior: "smooth",
        });
      }
    }, 100);
  };
  return (
    <div>
      <nav className="navbar-mobile">
        <ul>
          <li>
            <Link to="/dashboard">
              <img src={dash} alt="" width="30px" className="nav-icon" />
              Dashboard
            </Link>
          </li>
          <li>
            <a href="/" onClick={handleScrollToSectionProg}>
              <img src={prog} alt="" width="30px" />
              Programs
            </a>
          </li>
          <li>
            <a href="/" onClick={handleScrollToSectionEx}>
              <img src={exo} alt="" width="30px" />
              Exercices
            </a>
          </li>
          <li>
            <Link to="/Nutritionpage">
              <img src={nut} alt="" width="30px" />
              Nutrition
            </Link>
          </li>
        </ul>
      </nav>
      <nav className={navBackground}>
        <Link to="/">
          <p>WILD FITNESS CLUB</p>
        </Link>
        <ul>
          <li>
            <Link to="/dashboard">Dashboard</Link>
          </li>
          <li>
            <a href="/" onClick={handleScrollToSectionProg}>
              Programs
            </a>
          </li>
          <li>
            <a href="/" onClick={handleScrollToSectionEx}>
              Exercises
            </a>
          </li>
          <li>
            <Link to="/Nutritionpage">Nutrition</Link>
          </li>
        </ul>
      </nav>
    </div>
  );
}
export default Navbar;
Navbar.propTypes = {
  isTransparent: PropTypes.bool,
};
Navbar.defaultProps = {
  isTransparent: false,
};
