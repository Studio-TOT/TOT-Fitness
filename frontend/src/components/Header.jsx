import React from "react";
import { Link } from "react-router-dom";

function Header() {
  return (
    <div>
      <header>
        <h1>Wild Fitness Club</h1>
        <div>
          <h2>
            Get into the <br /> fitness journey
          </h2>
          <button type="button">
            <Link to="/subscription">Join the team</Link>
          </button>
        </div>
      </header>
    </div>
  );
}

export default Header;
