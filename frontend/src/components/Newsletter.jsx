import React from "react";

function Newsletter() {
  return (
    <div className="sectionNews">
      <div className="newsletter">
        <h2>
          Subscribe to the <br /> newsletter
        </h2>
        <p>
          Be the first to know about the release of our upcoming fitness
          programs.
        </p>
        <input type="email" placeholder="Email Adress" /> <br />
        <button type="submit">Subscribe</button>
      </div>
    </div>
  );
}

export default Newsletter;
