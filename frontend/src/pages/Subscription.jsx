import { useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";
import { useAuth } from "../context/AuthContext";
import backarrow from "../assets/back-arrow.svg";
import Newsletter from "../components/Newsletter";
import SubscriptionCard from "../components/SubscriptionCard";

function Subscription() {
  const nav = useNavigate();
  const { isPremium } = useAuth();

  const handleNav = () => {
    nav(-1);
  };

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  return (
    <div>
      <div className="subscription-cards">
        <div>
          <div className="arrow-title">
            <Link to="/" onClick={handleNav}>
              <img className="backarrow" src={backarrow} alt="backarrow" />
            </Link>{" "}
            <h2>Choose your subscription</h2>
          </div>

          <p>
            Get access to all our workout programs and an endless list of healthy
            recipes to get in the shape of your life.
          </p>
        </div>
        <div>
          <SubscriptionCard
            rythm="Monthly"
            price="$4.99 / month"
            priceId={import.meta.env.VITE_STRIPE_MONTHLY_PRICE_ID}
          />
          <SubscriptionCard
            rythm="Annual"
            price="$49.99 / year"
            save="save $9.89"
            priceId={import.meta.env.VITE_STRIPE_ANNUAL_PRICE_ID}
          />
        </div>
      </div>

      <div className="mt-16">
        <Newsletter isPremium={isPremium ? isPremium() : false} />
      </div>
    </div>
  );
}

export default Subscription;
