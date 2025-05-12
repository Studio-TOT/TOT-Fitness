import React from 'react';
import { Link, useLocation } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import Newsletter from './Newsletter';
import foodBanner from '../assets/FoodRecipes.png';

function NutritionPreview() {
    const { user, isPremium } = useAuth();
    const location = useLocation();

    return (
        <div className="py-12 px-4 md:px-8 max-w-6xl mx-auto">
            <div
                className="w-full h-64 bg-cover bg-center rounded-xl mb-8 relative overflow-hidden flex items-center justify-center"
                style={{ backgroundImage: `url(${foodBanner})` }}
            >
                <div className="absolute inset-0 bg-black bg-opacity-40"></div>
                <div className="relative z-10 text-center text-white p-6">
                    <h1 className="text-4xl md:text-5xl font-bold mb-4">Nutrition Guide</h1>
                    <p className="text-xl md:text-2xl">Premium content for healthy eating</p>
                </div>
            </div>

            <div className="bg-white rounded-lg shadow-lg p-6 md:p-8 mb-8">
                <h2 className="text-2xl font-semibold mb-4">Premium Nutrition Content</h2>
                <p className="text-gray-700 mb-6">
                    Our nutrition section provides exclusive meal plans, recipes, and nutrition guidance to help you reach your fitness goals.
                </p>

                <div className="border-t border-b border-gray-200 py-6 my-6">
                    <h3 className="font-semibold text-lg mb-4">What's included in Premium:</h3>
                    <ul className="space-y-3">
                        <li className="flex items-start">
                            <svg className="w-5 h-5 text-green-500 mt-1 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Complete access to all healthy recipes</span>
                        </li>
                        <li className="flex items-start">
                            <svg className="w-5 h-5 text-green-500 mt-1 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Personalized meal planning guidance</span>
                        </li>
                        <li className="flex items-start">
                            <svg className="w-5 h-5 text-green-500 mt-1 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Nutritional information for all recipes</span>
                        </li>
                        <li className="flex items-start">
                            <svg className="w-5 h-5 text-green-500 mt-1 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Weekly new recipe additions</span>
                        </li>
                    </ul>
                </div>

                {user ? (
                    <Link
                        to="/subscription"
                        state={{ from: location.pathname }}
                        className="block w-full md:w-auto md:inline-block text-center bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 px-8 rounded-lg transition-colors"
                    >
                        Upgrade to Premium
                    </Link>
                ) : (
                    <div className="space-y-4 md:space-y-0 md:flex md:space-x-4">
                        <Link
                            to="/login"
                            state={{ from: location.pathname }}
                            className="block w-full md:w-auto md:inline-block text-center bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 px-8 rounded-lg transition-colors"
                        >
                            Sign In
                        </Link>
                        <Link
                            to="/signup"
                            state={{ from: location.pathname }}
                            className="block w-full md:w-auto md:inline-block text-center bg-green-600 hover:bg-green-700 text-white font-bold py-3 px-8 rounded-lg transition-colors"
                        >
                            Create Account
                        </Link>
                    </div>
                )}
            </div>

            {/* Preview Content */}
            <div className="bg-white rounded-lg shadow-lg p-6 md:p-8">
                <h2 className="text-2xl font-semibold mb-6">Preview Our Nutrition Content</h2>

                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
                    {/* Preview recipe cards - limited to 3 */}
                    <div className="bg-gray-100 rounded-lg overflow-hidden shadow-md opacity-75">
                        <div className="h-48 bg-gray-300 animate-pulse"></div>
                        <div className="p-4">
                            <h3 className="font-medium text-lg mb-2">Healthy Breakfast Bowl</h3>
                            <p className="text-gray-600 text-sm">Premium content locked</p>
                        </div>
                    </div>

                    <div className="bg-gray-100 rounded-lg overflow-hidden shadow-md opacity-75">
                        <div className="h-48 bg-gray-300 animate-pulse"></div>
                        <div className="p-4">
                            <h3 className="font-medium text-lg mb-2">Protein-Packed Lunch</h3>
                            <p className="text-gray-600 text-sm">Premium content locked</p>
                        </div>
                    </div>

                    <div className="bg-gray-100 rounded-lg overflow-hidden shadow-md opacity-75">
                        <div className="h-48 bg-gray-300 animate-pulse"></div>
                        <div className="p-4">
                            <h3 className="font-medium text-lg mb-2">Light Dinner Options</h3>
                            <p className="text-gray-600 text-sm">Premium content locked</p>
                        </div>
                    </div>
                </div>

                <div className="text-center">
                    <p className="text-gray-600 mb-6">Unlock full access to our nutrition section with a premium subscription</p>

                    {user ? (
                        <Link
                            to="/subscription"
                            className="inline-block bg-gradient-to-r from-indigo-600 to-purple-600 text-white font-bold py-3 px-8 rounded-lg hover:from-indigo-700 hover:to-purple-700 transition-all transform hover:scale-105"
                        >
                            Get Premium Access Now
                        </Link>
                    ) : (
                        <Link
                            to="/login"
                            state={{ from: "/subscription" }}
                            className="inline-block bg-gradient-to-r from-indigo-600 to-purple-600 text-white font-bold py-3 px-8 rounded-lg hover:from-indigo-700 hover:to-purple-700 transition-all transform hover:scale-105"
                        >
                            Sign In to Upgrade
                        </Link>
                    )}
                </div>
            </div>

            {/* Add Newsletter with premium-specific content */}
            <div className="mt-16">
                <Newsletter isPremium={isPremium ? isPremium() : false} />
            </div>
        </div>
    );
}

export default NutritionPreview; 