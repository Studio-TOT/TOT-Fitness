import React, { useEffect, useState } from "react";
import { useLocation } from "react-router-dom";

function Loader() {
  const [loaded, setLoaded] = useState(false);
  const [shouldRender, setShouldRender] = useState(true);
  const location = useLocation();

  useEffect(() => {
    if (loaded) {
      const loader = document.querySelector(".loader");
      if (loader) {
        loader.classList.add("loader-hidden");
        loader.addEventListener("transitionend", () => {
          setShouldRender(false);
        });
      }
    }
  }, [loaded, location]);

  useEffect(() => {
    if (document.readyState === "complete") {
      setLoaded(true);
    } else {
      window.addEventListener("load", () => {
        setLoaded(true);
      });
    }
  }, []);

  if (!shouldRender) {
    return null;
  }

  return (
    <div className="loader">
      <div className="dot-container">
        <div className="dot" />
        <div className="dot" />
        <div className="dot" />
      </div>
    </div>
  );
}

export default Loader;
