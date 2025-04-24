import { useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";
import backarrow from "../assets/back-arrow.svg";
import SubscriptionCard from "../components/SubscriptionCard";

function Subscription() {
  const nav = useNavigate();
  const handleNav = () => {
    nav(-1);
  };

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  return (
    <div className="subscription-cards">
      <div>
        <div className="arrow-title">
          <Link to="/" onClick={handleNav}>
            <img className="backarrow" src={backarrow} alt="backarrow" />
          </Link>{" "}
          <h2>Chose your subscription</h2>
        </div>

        <p>
          Get access to all our workout programs and an endless list of healthy
          recipes to get in the shape of your life.
        </p>
      </div>
      <div>
        <SubscriptionCard rythm="Monthly" price="$4.99 / month" />
        <SubscriptionCard
          rythm="Annual"
          price="$49.99 / year"
          save="save $9.89"
        />
      </div>
    </div>
  );
}

export default Subscription;
