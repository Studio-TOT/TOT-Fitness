import { Link, useNavigate, useSearchParams } from "react-router-dom";
import backarrow from "../assets/back-arrow.svg";
import { useEffect } from "react";

function SubscriptionSuccess() {
    const nav = useNavigate();
    const [searchParams] = useSearchParams();
    const sessionId = searchParams.get("session_id");

    useEffect(() => {
        window.scrollTo(0, 0);
    }, []);

    const handleNav = () => {
        nav(-1);
    };

    return (
        <div className="subscription-cards">
            <div>
                <div className="arrow-title">
                    <Link to="/" onClick={handleNav}>
                        <img className="backarrow" src={backarrow} alt="backarrow" />
                    </Link>{" "}
                    <h2>Subscription Successful</h2>
                </div>
                <p>
                    Thank you for subscribing! 🎉<br />
                    You now have access to all our premium workout programs and healthy recipes.
                </p>
                <p className="subscription-save" style={{ color: '#4caf50', marginTop: 16 }}>
                    Your payment was successful.
                </p>
                <p className="subscription-save" style={{ fontSize: 12, color: '#888' }}>
                    (Session ID: {sessionId})
                </p>
                <Link to="/dashboard">
                    <button className="black-button" style={{ marginTop: 24 }}>Go to Dashboard</button>
                </Link>
            </div>
        </div>
    );
}

export default SubscriptionSuccess; 