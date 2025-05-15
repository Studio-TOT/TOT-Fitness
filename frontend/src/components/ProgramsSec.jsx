import { Swiper, SwiperSlide } from "swiper/react";
import { Link, useNavigate } from "react-router-dom";
import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";
import { Pagination } from "swiper";
import Start from "./Start";
import bp1 from "../assets/bp1.png";
import bw1 from "../assets/bw1.png";
import fb1 from "../assets/fb1.png";
import mb1 from "../assets/mb1.png";
import ct1lock from "../assets/ct1lock.png";
import sm1lock from "../assets/sm1lock.png";
import { useAuth } from '../context/AuthContext';

function ProgramsSec() {
  const { user, isPremium } = useAuth();
  const navigate = useNavigate();

  // Function to handle subscription clicks
  const handleSubscriptionClick = (e) => {
    e.preventDefault();
    // If user not logged in, redirect to login with subscription as redirect target
    if (!user) {
      navigate('/login', { state: { from: '/subscription' } });
    } else if (isPremium()) {
      // If user is already premium, redirect to dashboard
      navigate('/dashboard');
    } else {
      // If user is logged in but not premium, redirect to subscription page
      navigate('/subscription');
    }
  };

  return (
    <div className="m-2.5 p-4 md:m-10 md:flex md:flex-row md:flex-wrap md:justify-between" id="prog">
      <div className="programtext">
        <h2 className="my-8 text-[1.6rem] md:text-[2.8rem] mb-[30px]">Explore our programs</h2>
        <div className="Description">
          {" "}
          Do you want to reach your fitness goals ? {"\n"} {"\n"} We have
          selected the best programs made by our coaches to bring you to the
          next level ! Thousands of people have already changed their lives
          thanks to our application. Why not yours ?
          <div className="descriptiondesk">
            {" "}
            Want to get full access to our programs ? {"\n"} {"\n"} Click below
            to get a look at our subscription page and chose the plan that fits
            you the best !{" "}
            <Link
              className="linkcard"
              onClick={handleSubscriptionClick}
              to={user ? (isPremium() ? "/dashboard" : "/subscription") : "#"}
              id="suscriptionprogsec2"
            >
              <Start content="Click Here" />
            </Link>
          </div>
        </div>
      </div>
      <div className="imagegalery">
        <div className="cardbw1">
          {" "}
          <Link className="linkcard" to="/programs/bodyweight">
            <img src={bw1} alt="bw1" width="225" height="225" />
          </Link>
        </div>
        <div className="cardbp1">
          <Link className="linkcard" to="/programs/bootypump">
            <img src={bp1} alt="bp1" width="225" height="225" />
          </Link>
        </div>
        <div className="cardfb1">
          {" "}
          <Link className="linkcard" to="/programs/fullbody">
            <img src={fb1} alt="fb1" width="225" height="225" />
          </Link>
        </div>
        <div className="cardmb1">
          <Link className="linkcard" to="/programs/musclebuilding">
            <img src={mb1} alt="mb1" width="225" height="225" />
          </Link>
        </div>
        <div className="cardct1 relative">
          <Link
            className="linkcard"
            onClick={handleSubscriptionClick}
            to={user ? (isPremium() ? "/dashboard" : "/subscription") : "#"}
          >
            <img src={ct1lock} alt="ct1lock" width="225" height="225" />
          </Link>
        </div>
        <div className="cardsm1 relative">
          <Link
            className="linkcard"
            onClick={handleSubscriptionClick}
            to={user ? (isPremium() ? "/dashboard" : "/subscription") : "#"}
          >
            <img src={sm1lock} alt="sm1lock" width="225" height="225" />
          </Link>
        </div>
      </div>
      <Swiper
        spaceBetween={30}
        pagination
        modules={[Pagination]}
        className="ProgramsSec"
      >
        <SwiperSlide className="Card1">
          <Link className="linkcard" to="/programs/bootypump" />
        </SwiperSlide>
        <SwiperSlide className="Card2">
          <Link className="linkcard" to="/programs/musclebuilding" />
        </SwiperSlide>
        <SwiperSlide className="Card3">
          {" "}
          <Link className="linkcard" to="/programs/fullbody" />
        </SwiperSlide>{" "}
        <SwiperSlide className="Card4">
          <Link className="linkcard" to="/programs/bodyweight" />
        </SwiperSlide>{" "}
        <SwiperSlide className="Card5">
          <Link className="linkcard" onClick={handleSubscriptionClick} to={user ? (isPremium() ? "/dashboard" : "/subscription") : "#"} />
        </SwiperSlide>
        <SwiperSlide className="Card6">
          <Link className="linkcard" onClick={handleSubscriptionClick} to={user ? (isPremium() ? "/dashboard" : "/subscription") : "#"} />
        </SwiperSlide>
      </Swiper>
      {/* {!user && (
        <div className="w-full mt-8 mb-6 p-6 bg-gray-100 rounded-lg text-center">
          <p className="mb-6 text-lg text-gray-700 font-medium">You need to sign in to access premium content</p>
          <div className="flex flex-col md:flex-row justify-center md:space-x-6 space-y-4 md:space-y-0">
            <Link to="/login" className="bg-indigo-600 text-white px-6 py-3 rounded-lg text-lg font-medium hover:bg-indigo-700 transition-colors">
              Sign In
            </Link>
            <Link to="/signup" className="bg-green-600 text-white px-6 py-3 rounded-lg text-lg font-medium hover:bg-green-700 transition-colors">
              Create Account
            </Link>
          </div>
        </div>
      )} */}
      <div className="Description" id="descriptiondesk">
        Want to get full access to our programs ? {"\n"} {"\n"} Click below to
        get a look at our subscription page and chose the plan that fits you the
        best !{" "}
      </div>
      <Link className="linkcard" onClick={handleSubscriptionClick} to={user ? (isPremium() ? "/dashboard" : "/subscription") : "#"} id="suscriptionprogsec">
        <Start content="Click Here" />
      </Link>
    </div>
  );
}

export default ProgramsSec;
