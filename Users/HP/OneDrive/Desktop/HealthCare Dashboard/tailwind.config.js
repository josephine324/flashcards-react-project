/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./*.{html,js}"],
  theme: {
    extend: {
      colors:{
        pagecolor: "#F6F7F8",
        textColor: "#DDDDDD",
        anotherPurple: "#E66FD2",
        section2: "#F4F0FE",
        skyBlue: "#E0F3FA",
        babyPink: "#FFE6E9",
        anotherPink: "#FFE6F1",
        shadeGreen: "#01F0D0",
        friday: "#8C6FE6"
      },
      fontFamily:{
        navbarFont:"adobe-clean,sans-serif"
      }
    },
  },
  plugins: [],
}

