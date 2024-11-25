// app.js

const express = require('express');
const path = require('path');
const quoteRoutes = require('./routes/quoteRoutes');
const logger = require('./middleware/logger');

const app = express();

// Middleware
app.use(logger); // Log each request
app.use(express.static(path.join(__dirname, 'public'))); // Serve static files

// Set the view engine to EJS
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Use the quote routes
app.use('/', quoteRoutes);

// Start the server
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
