import React from "react";
import { Link } from "react-router-dom";
import insta from "../assets/instagram.png";
import facebook from "../assets/facebook.png";
import youtube from "../assets/youtube.png";
import tiktok from "../assets/tik-tok.png";

function Footer() {
  const currentYear = new Date().getFullYear();

  return (
    <footer className="bg-gray-50 border-t border-gray-200">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {/* Logo and copyright */}
          <div className="text-center md:text-left">
            <div className="flex flex-col items-center md:items-start">
              <h3 className="text-xl font-bold text-gray-800 uppercase tracking-wide">
                TOT <br /> Fitness Club
              </h3>
              <p className="mt-2 text-sm text-gray-500">
                © {currentYear} All rights reserved
              </p>
            </div>
          </div>

          {/* Links */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div className="space-y-3">
              <Link to="/" className="block text-sm text-gray-600 hover:text-gray-900 hover:underline">
                Terms & Conditions
              </Link>
              <Link to="/" className="block text-sm text-gray-600 hover:text-gray-900 hover:underline">
                Privacy Policy
              </Link>
            </div>
            <div className="space-y-3">
              <Link to="/" className="block text-sm text-gray-600 hover:text-gray-900 hover:underline">
                Contact Support
              </Link>
              <Link to="/" className="block text-sm text-gray-600 hover:text-gray-900 hover:underline">
                Legal Notice
              </Link>
            </div>
          </div>

          {/* Social icons */}
          <div className="flex justify-center md:justify-end space-x-6">
            <a
              href="https://instagram.com"
              target="_blank"
              rel="noopener noreferrer"
              className="text-gray-400 hover:text-gray-600 transition-colors"
            >
              <img src={insta} alt="Instagram" className="h-4 w-4 object-contain hover:scale-110 transition-transform" />
            </a>
            <a
              href="https://facebook.com"
              target="_blank"
              rel="noopener noreferrer"
              className="text-gray-400 hover:text-gray-600 transition-colors"
            >
              <img src={facebook} alt="Facebook" className="h-4 w-4 object-contain hover:scale-110 transition-transform" />
            </a>
            <a
              href="https://youtube.com"
              target="_blank"
              rel="noopener noreferrer"
              className="text-gray-400 hover:text-gray-600 transition-colors"
            >
              <img src={youtube} alt="YouTube" className="h-4 w-4 object-contain hover:scale-110 transition-transform" />
            </a>
            <a
              href="https://tiktok.com"
              target="_blank"
              rel="noopener noreferrer"
              className="text-gray-400 hover:text-gray-600 transition-colors"
            >
              <img src={tiktok} alt="TikTok" className="h-4 w-4 object-contain hover:scale-110 transition-transform" />
            </a>
          </div>
        </div>
      </div>
    </footer>
  );
}

export default Footer;
