import { useEffect, useRef, useState } from "react";
import PropTypes from "prop-types";
import Accordion from "@mui/material/Accordion";
import AccordionSummary from "@mui/material/AccordionSummary";
import AccordionDetails from "@mui/material/AccordionDetails";
import Typography from "@mui/material/Typography";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import PlayCircleOutlineIcon from '@mui/icons-material/PlayCircleOutline';
import InfoOutlinedIcon from '@mui/icons-material/InfoOutlined';

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
    <div className="w-full max-w-4xl mx-auto my-4">
      <Accordion
        sx={{
          borderRadius: "16px !important",
          border: "none",
          boxShadow: "0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)",
          overflow: "hidden",
        }}
      >
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel1a-content"
          id="panel1a-header"
          className="bg-white hover:bg-gray-50 transition-colors duration-200"
        >
          <div className="flex items-center w-full">
            <Typography className="text-lg font-semibold text-gray-800">
              {name}
            </Typography>
            {category && (
              <span className="ml-3 px-3 py-1 text-sm bg-blue-100 text-blue-800 rounded-full">
                {category}
              </span>
          )}
          </div>
        </AccordionSummary>
        <AccordionDetails className="p-0">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6 p-6">
            {/* Video Section */}
            <div className="relative rounded-lg overflow-hidden bg-gray-100">
          {video ? (
                <div className="relative aspect-video">
                  <video 
                    controls 
                    ref={videoRef} 
                    autoPlay 
                    playsInline 
                    muted
                    className="w-full h-full object-cover"
                  >
              <track default kind="captions" />
              {isVisible && <source src={video} type="video/mp4" />}
            </video>
                </div>
          ) : (
                <div className="flex flex-col items-center justify-center h-48 text-gray-500">
                  <PlayCircleOutlineIcon className="text-4xl mb-2" />
                  <p>No video available</p>
                </div>
              )}
            </div>

            {/* Instructions Section */}
            <div className="bg-white rounded-lg p-4">
              <div className="flex items-center mb-4">
                <InfoOutlinedIcon className="text-blue-500 mr-2" />
                <h3 className="text-lg font-semibold text-gray-800">Instructions</h3>
              </div>
              <div className="space-y-3">
            {description && description.length > 0 ? (
                  description.map((step, index) => (
                    <div 
                      key={`${name}-step-${index}`}
                      className="flex items-start p-3 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors duration-200"
                    >
                      <span className="flex-shrink-0 w-6 h-6 flex items-center justify-center bg-blue-500 text-white rounded-full text-sm font-medium mr-3">
                        {index + 1}
                      </span>
                      <p className="text-gray-700">{step}</p>
                </div>
              ))
            ) : (
                  <div className="text-center text-gray-500 py-4">
                    No instructions available
                  </div>
                )}
              </div>
            </div>
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
