import { Swiper, SwiperSlide } from "swiper/react";

import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";

import { Pagination } from "swiper";

import MannequinBack from "./MannequinBack";
import MannequinFront from "./MannequinFront";

function MannequinWrapper() {
  return (
    <>
      <div className="mx-6 md:mx-12 my-8 text-[1.6rem] md:text-[2.8rem] mb-[30px]">
        <h2>Choose a </h2>
        <h2>muscle group</h2>
      </div>
      <div className="mySwiper">
        <Swiper
          spaceBetween={30}
          pagination
          modules={[Pagination]}
          className="mySwiper"
        >
          <SwiperSlide>
            <MannequinFront className="mannequin" />
          </SwiperSlide>
          <SwiperSlide>
            <MannequinBack className="mannequin" />
          </SwiperSlide>
        </Swiper>
      </div>

      <div className="DesktopSwiper">
        <MannequinFront className="mannequin-front" />
        <MannequinBack className="mannequin-back" />
      </div>
    </>
  );
}

export default MannequinWrapper;
