// routes/productRoutes.js
const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');
const { authMiddleware, adminMiddleware } = require('../middleware/auth');

// Public routes (no auth required)
router.get('/', productController.getProducts);
router.get('/search', productController.searchProducts);
router.get('/low-stock', productController.getLowStock);
router.get('/:id', productController.getProductById);

// Protected routes (require authentication and admin role)
router.post('/', authMiddleware, adminMiddleware, productController.createProduct);
router.put('/:id', authMiddleware, adminMiddleware, productController.updateProduct);
router.delete('/:id', authMiddleware, adminMiddleware, productController.deleteProduct);
router.patch('/:id/inventory', authMiddleware, adminMiddleware, productController.updateInventory);

module.exports = router;