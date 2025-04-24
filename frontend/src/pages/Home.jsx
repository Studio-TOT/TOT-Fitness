import { useEffect, useState } from "react";
import PropTypes from "prop-types";
import Loader from "../components/Loader";
import ProgramsSec from "../components/ProgramsSec";
import MannequinWrapper from "../components/MannequinWrapper";
import Header from "../components/Header";
import Newsletter from "../components/Newsletter";
import NutritionSlide from "../components/NutritionSlide";

function Home({ data }) {
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    setIsLoading(true);
    return () => {
      setIsLoading(false);
    };
  }, []);
  return (
    <div className="App">
      <Loader isLoading={isLoading} />
      <Header />
      <ProgramsSec />
      <MannequinWrapper />
      <NutritionSlide data={data} />
      <Newsletter />
    </div>
  );
}

Home.propTypes = {
  data: PropTypes.arrayOf(PropTypes.shape).isRequired,
};

export default Home;
