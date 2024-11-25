// middleware/logger.js

function logger(req, res, next) {
    console.log(`${req.method} ${req.url} - ${new Date().toISOString()}`);
    next(); // Call the next middleware or route handler
  }
  
  module.exports = logger;
  