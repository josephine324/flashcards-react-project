/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {
     colors:{
      customGreen: "#006242",
      lightGreen: "#d6ddc7",
      shaken: "#32472f",
      chocolate: "#5f4633",
      variable: " var(--colorTextBlackSoft)"
     },
    },
  },
  plugins: [],
}