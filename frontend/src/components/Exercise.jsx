import { useEffect, useRef, useState } from "react";
import PropTypes from "prop-types";
import Accordion from "@mui/material/Accordion";
import AccordionSummary from "@mui/material/AccordionSummary";
import AccordionDetails from "@mui/material/AccordionDetails";
import Typography from "@mui/material/Typography";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import PlayCircleOutlineIcon from '@mui/icons-material/PlayCircleOutline';
import InfoOutlinedIcon from '@mui/icons-material/InfoOutlined';
import FitnessCenterIcon from '@mui/icons-material/FitnessCenter';
import StarIcon from '@mui/icons-material/Star';
import StarBorderIcon from '@mui/icons-material/StarBorder';
import StarHalfIcon from '@mui/icons-material/StarHalf';
import StarOutlineIcon from '@mui/icons-material/StarOutline';

function Exercise({ 
  name, 
  video = null, 
  description = [], 
  category = null,
  difficulty = null 
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

  const getDifficultyColor = (diff) => {
    switch (diff?.toLowerCase()) {
      case 'beginner':
        return {
          bg: 'bg-green-50',
          text: 'text-green-700',
          border: 'border-green-200',
          icon: <StarOutlineIcon className="text-green-500" />
        };
      case 'novice':
        return {
          bg: 'bg-blue-50',
          text: 'text-blue-700',
          border: 'border-blue-200',
          icon: <StarBorderIcon className="text-blue-500" />
        };
      case 'intermediate':
        return {
          bg: 'bg-yellow-50',
          text: 'text-yellow-700',
          border: 'border-yellow-200',
          icon: <StarHalfIcon className="text-yellow-500" />
        };
      case 'advanced':
        return {
          bg: 'bg-red-50',
          text: 'text-red-700',
          border: 'border-red-200',
          icon: <StarIcon className="text-red-500" />
        };
      default:
        return {
          bg: 'bg-gray-50',
          text: 'text-gray-700',
          border: 'border-gray-200',
          icon: <FitnessCenterIcon className="text-gray-500" />
        };
    }
  };

  const difficultyStyles = getDifficultyColor(difficulty);

  return (
    <div className="w-full my-1 md:my-2">
      <Accordion
        sx={{
          borderRadius: "12px !important",
          border: "none",
          boxShadow: "0 2px 4px -1px rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1)",
          overflow: "hidden",
        }}
      >
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel1a-content"
          id="panel1a-header"
          className="bg-white hover:bg-gray-50 transition-colors duration-200"
          sx={{
            padding: '6px 12px',
            '& .MuiAccordionSummary-content': {
              margin: 0,
              minWidth: 0
            }
          }}
        >
          <div className="flex items-center w-full min-w-0">
            <div className="flex-1 min-w-0 mr-1.5">
              <Typography className="text-sm md:text-base font-semibold text-gray-800 truncate">
                {name}
              </Typography>
            </div>
            <div className="flex items-center gap-1 flex-shrink-0">
              {category && (
                <span className="px-1 py-0.5 text-[10px] bg-blue-100 text-blue-800 rounded-full whitespace-nowrap">
                  {category}
                </span>
              )}
              {difficulty && (
                <span className={`flex items-center gap-0.5 px-1 py-0.5 text-[10px] rounded-md ${difficultyStyles.bg} ${difficultyStyles.text} ${difficultyStyles.border} whitespace-nowrap`}>
                  {difficultyStyles.icon}
                  <span className="font-normal">{difficulty}</span>
                </span>
              )}
            </div>
          </div>
        </AccordionSummary>
        <AccordionDetails className="p-0">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-2 md:gap-4 p-2 md:p-4">
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
                <div className="flex flex-col items-center justify-center h-24 md:h-32 text-gray-500">
                  <PlayCircleOutlineIcon className="text-2xl md:text-3xl mb-1" />
                  <p className="text-xs md:text-sm">No video available</p>
                </div>
              )}
            </div>

            {/* Instructions Section */}
            <div className="bg-white rounded-lg p-2 md:p-3">
              <div className="flex items-center mb-2 md:mb-3">
                <InfoOutlinedIcon className="text-blue-500 mr-1.5 text-base md:text-lg" />
                <h3 className="text-sm md:text-base font-semibold text-gray-800">Instructions</h3>
              </div>
              <div className="space-y-1.5 md:space-y-2">
                {description && description.length > 0 ? (
                  description.map((step, index) => (
                    <div 
                      key={`${name}-step-${index}`}
                      className="flex items-start p-1.5 md:p-2 bg-gray-50 rounded-lg hover:bg-gray-100 transition-colors duration-200"
                    >
                      <span className="flex-shrink-0 w-4 h-4 md:w-5 md:h-5 flex items-center justify-center bg-blue-500 text-white rounded-full text-xs font-medium mr-1.5 md:mr-2">
                        {index + 1}
                      </span>
                      <p className="text-xs md:text-sm text-gray-700">{step}</p>
                    </div>
                  ))
                ) : (
                  <div className="text-center text-gray-500 py-2 md:py-3">
                    <p className="text-xs md:text-sm">No instructions available</p>
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
  difficulty: PropTypes.string,
};

export default Exercise;
