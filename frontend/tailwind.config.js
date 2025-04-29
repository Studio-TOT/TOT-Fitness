/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./index.html",
        "./src/**/*.{js,ts,jsx,tsx}",
    ],
    theme: {
        extend: {
            fontFamily: {
                'poppins': ['Poppins', 'sans-serif'],
            },
            colors: {
                'primary': '#3498db',
                'secondary': '#f3f3f3',
                'accent': '#c8e1bf',
            },
        },
    },
    plugins: [],
} 