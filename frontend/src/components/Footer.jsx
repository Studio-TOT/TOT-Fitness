import React from "react";
import insta from "../assets/instagram.png";
import facebook from "../assets/facebook.png";
import youtube from "../assets/youtube.png";
import tiktok from "../assets/tik-tok.png";

function Footer() {
  return (
    <div className="footer">
      <div className="footerLogo">
        <h3>
          Wild <br /> fitness club
        </h3>
        <p>2023™</p>
      </div>
      <div className="linkFooter">
        <div className="linka">
          <a href="/">Mentions légales</a>
          <a href="/">Conditions générales</a>
        </div>
        <div className="linkb">
          <a href="/">Politique de confidentialité</a>
          <a href="/">Contacter le support</a>
        </div>
      </div>
      <div className="social">
        <a href="/">
          <img src={insta} alt="logo-Instagram" />
        </a>
        <a href="/">
          <img src={facebook} alt="logo-Facebook" />
        </a>
        <a href="/">
          <img src={youtube} alt="logo-Youtube" />
        </a>
        <a href="/">
          <img src={tiktok} alt="logo-Tiktok" />
        </a>
      </div>
    </div>
  );
}

export default Footer;
