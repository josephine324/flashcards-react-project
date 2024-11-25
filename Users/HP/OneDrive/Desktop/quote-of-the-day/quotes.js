// quotes.js

const quotes = [
    "The only limit to our realization of tomorrow is our doubts of today.",
    "In the middle of every difficulty lies opportunity.",
    "Do what you can, with what you have, where you are.",
    "Happiness is not something ready-made. It comes from your own actions.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "Believe you can and you're halfway there.",
    "Start where you are. Use what you have. Do what you can."
  ];
  
  // Function to get quote of the day
  function getQuoteOfTheDay() {
    const dayOfWeek = new Date().getDay(); // Sunday = 0, Monday = 1, ..., Saturday = 6
    return quotes[dayOfWeek];
  }
  
  module.exports = { getQuoteOfTheDay };
  