import React, { useState } from "react";
import PropTypes from "prop-types";

function Start({ content }) {
  const [openPopUp, setOpenPopUp] = useState(false);
  const handleClick = () => {
    if (content === "Start this program") {
      setOpenPopUp(true);
      setTimeout(() => {
        setOpenPopUp(false);
      }, "3000");
    }
  };
  return (
    <>
      <button type="button" className="black-button" onClick={handleClick}>
        {content}
      </button>
      <div className={openPopUp ? "popup-week alert" : "popup-week"}>
        <p>Program added to dashboard</p>
      </div>
    </>
  );
}

export default Start;

Start.propTypes = {
  content: PropTypes.string.isRequired,
};
