import { Swiper, SwiperSlide } from "swiper/react";
import { Link } from "react-router-dom";
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
  const { isPremium } = useAuth();
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
              to="/subscription"
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
        <div className="cardbp1 relative">
          <Link className="linkcard" to={isPremium() ? "/programs/bootypump" : "/subscription"}>
            <img src={bp1} alt="bp1" width="225" height="225" />
            {!isPremium() && (
              <div className="absolute inset-0 bg-black bg-opacity-40 flex items-center justify-center text-white text-lg font-bold rounded">
                Premium
              </div>
            )}
          </Link>
        </div>
        <div className="cardfb1">
          {" "}
          <Link className="linkcard" to="/programs/fullbody">
            <img src={fb1} alt="fb1" width="225" height="225" />
          </Link>
        </div>
        <div className="cardmb1 relative">
          <Link className="linkcard" to={isPremium() ? "/programs/musclebuilding" : "/subscription"}>
            <img src={mb1} alt="mb1" width="225" height="225" />
            {!isPremium() && (
              <div className="absolute inset-0 bg-black bg-opacity-40 flex items-center justify-center text-white text-lg font-bold rounded">
                Premium
              </div>
            )}
          </Link>
        </div>
        <div className="cardct1 relative">
          <Link className="linkcard" to="/subscription">
            <img src={ct1lock} alt="ct1lock" width="225" height="225" />
          </Link>
        </div>
        <div className="cardsm1 relative">
          <Link className="linkcard" to="/subscription">
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
          <Link className="linkcard" to="/subscription" />
        </SwiperSlide>
        <SwiperSlide className="Card6">
          <Link className="linkcard" to="/subscription" />
        </SwiperSlide>
      </Swiper>
      <div className="Description" id="descriptiondesk">
        Want to get full access to our programs ? {"\n"} {"\n"} Click below to
        get a look at our subscription page and chose the plan that fits you the
        best !{" "}
      </div>
      <Link className="linkcard" to="/subscription" id="suscriptionprogsec">
        <Start content="Click Here" />
      </Link>
    </div>
  );
}

export default ProgramsSec;
