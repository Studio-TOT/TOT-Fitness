import { useEffect, useRef, useState } from "react";
import PropTypes from "prop-types";
import Accordion from "@mui/material/Accordion";
import AccordionSummary from "@mui/material/AccordionSummary";
import AccordionDetails from "@mui/material/AccordionDetails";
import Typography from "@mui/material/Typography";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";

function Exercise({ 
  name, 
  video = null, 
  description = [], 
  category = null 
}) {
  const videoRef = useRef(null);
  const [isVisible, setIsVisible] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            setIsVisible(true);
            observer.unobserve(entry.target);
          }
        });
      },
      { threshold: 0.5 }
    );

    if (videoRef.current) {
      observer.observe(videoRef.current);
    }

    return () => {
      if (videoRef.current) {
        observer.unobserve(videoRef.current);
      }
    };
  }, []);

  return (
    <div className="accordion">
      <Accordion
        sx={{
          borderRadius: "16px !important",
          border: "none",
          color: "black",
          margin: "4px auto",
          width: "100%",
          fontFamily: "Arial !important",
        }}
      >
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel1a-content"
          id="panel1a-header"
        >
          <Typography id="exercise-title">{name}</Typography>
          {category && (
            <Typography id="exercise-category" sx={{ ml: 2, color: "gray" }}>
              {category}
            </Typography>
          )}
        </AccordionSummary>
        <AccordionDetails id="exercise-content">
          {video ? (
            <video controls ref={videoRef} autoPlay playsInline muted>
              <track default kind="captions" />
              {isVisible && <source src={video} type="video/mp4" />}
            </video>
          ) : (
            <div className="no-video">No video available for this exercise</div>
          )}
          <div id="exercise-description">
            {description && description.length > 0 ? (
              description.map((e, index) => (
                <div id="steps" key={`${name}-step-${index}`}>
                  <span>{index + 1} :</span> <p>{e}</p>
                </div>
              ))
            ) : (
              <div className="no-description">
                No description available for this exercise
              </div>
            )}
          </div>
        </AccordionDetails>
      </Accordion>
    </div>
  );
}

Exercise.propTypes = {
  name: PropTypes.string.isRequired,
  video: PropTypes.string,
  description: PropTypes.arrayOf(PropTypes.string),
  category: PropTypes.string,
};

export default Exercise;
