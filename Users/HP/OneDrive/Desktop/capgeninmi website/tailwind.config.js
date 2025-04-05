/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./*.{html,js}"],
  theme: {
    extend: {
      colors:{
        darkgrey: "#ACACAC",
        imagecolor: "#0070AD",
        notwhite: "#FCFCFC",
        bgcolor: "#FBFBFB",
      },
      fontFamily:{
        newfont: ["Roboto", "sans-serif"],
      }
    },
  },
  plugins: [],
}

