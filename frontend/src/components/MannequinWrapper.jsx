import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/swiper-bundle.min.css";
import "swiper/swiper.min.css";
import { Pagination } from "swiper";
import MannequinBack from "./MannequinBack";
import MannequinFront from "./MannequinFront";
import { motion } from "framer-motion";

function MannequinWrapper() {
  return (
    <section id="ex" className="py-12 px-4 md:px-12 bg-white/60 backdrop-blur-sm rounded-2xl shadow-sm border border-gray-100/50 max-w-6xl mx-auto mt-10 mb-16">
      <div className="mb-10 text-center">
        <h2 className="text-3xl md:text-4xl font-medium text-gray-900 mb-2">Interactive Muscle Guide</h2>
        <p className="text-gray-600 max-w-2xl mx-auto text-base md:text-lg">
          Click on any muscle group to discover targeted exercises and workouts. Our interactive guide helps you understand your body better and train smarter.
        </p>
      </div>

      {/* Mobile View */}
      <div className="md:hidden">
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
      </div>

      {/* Desktop View */}
      <div className="hidden md:block">
        <div className="container mx-auto px-4 py-8">
      <div className="DesktopSwiper">
        <MannequinFront className="mannequin-front" />
        <MannequinBack className="mannequin-back" />
      </div>
    </div>
      </div>

      {/* Quick Info */}
      <div className="mt-10 text-center">
        <p className="text-gray-600 max-w-2xl mx-auto">
          Explore our comprehensive exercise library by selecting a muscle group. Each section includes detailed workouts, proper form guidance, and progress tracking.
        </p>
      </div>
    </section>
  );
}

export default MannequinWrapper;
