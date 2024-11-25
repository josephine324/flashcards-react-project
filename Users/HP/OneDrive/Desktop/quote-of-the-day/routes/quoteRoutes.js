// routes/quoteRoutes.js

const express = require('express');
const { serveQuotePage } = require('../controllers/quoteController');

const router = express.Router();

// Route to serve the homepage with the quote of the day
router.get('/', serveQuotePage);

module.exports = router;
