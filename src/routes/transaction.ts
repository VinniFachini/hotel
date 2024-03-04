const express = require('express');
const router = express.Router();
import { getUserIdMiddleware, verifyToken } from "../middleware/authentication";
import { authorizeEmployee } from "../middleware/authorization";

import { createLaundryService, deleteLaundryService, getAllLaundryServices, insertTransaction, updateLaundryServicePrice } from "../controllers/servicesController";
import { getAllBeverages, updateBeveragePrice, deleteBeverage, createBeverage } from "../controllers/servicesController";
import { getAllMeals, createMeal, updateMealPrice, deleteMeal } from "../controllers/servicesController";
import { getAllSpaServices, createSpaService, updateSpaServicePrice, deleteSpaService } from '../controllers/servicesController'
import { getAllGymServices, createGymService, updateGymServicePrice, deleteGymService } from '../controllers/servicesController'

// Transactions
router.post('/transaction', verifyToken, getUserIdMiddleware, authorizeEmployee, insertTransaction)

// Beverages
router.get('/beverages', verifyToken, getUserIdMiddleware, authorizeEmployee, getAllBeverages)
router.post('/beverages', verifyToken, getUserIdMiddleware, authorizeEmployee, createBeverage)
router.put('/beverages/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, updateBeveragePrice)
router.delete('/beverages/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, deleteBeverage)

// Food
router.get('/restaurant', verifyToken, getUserIdMiddleware, authorizeEmployee, getAllMeals)
router.post('/restaurant', verifyToken, getUserIdMiddleware, authorizeEmployee, createMeal)
router.put('/restaurant/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, updateMealPrice)
router.delete('/restaurant/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, deleteMeal)

// Spa
router.get('/spa', verifyToken, getUserIdMiddleware, authorizeEmployee, getAllSpaServices)
router.post('/spa', verifyToken, getUserIdMiddleware, authorizeEmployee, createSpaService)
router.put('/spa/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, updateSpaServicePrice)
router.delete('/spa/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, deleteSpaService)

// Gym
router.get('/gym', verifyToken, getUserIdMiddleware, authorizeEmployee, getAllGymServices)
router.post('/gym', verifyToken, getUserIdMiddleware, authorizeEmployee, createGymService)
router.put('/gym/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, updateGymServicePrice)
router.delete('/gym/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, deleteGymService)

// Laundry
router.get('/laundry', verifyToken, getUserIdMiddleware, authorizeEmployee, getAllLaundryServices)
router.post('/laundry', verifyToken, getUserIdMiddleware, authorizeEmployee, createLaundryService)
router.put('/laundry/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, updateLaundryServicePrice)
router.delete('/laundry/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, deleteLaundryService)

module.exports = router;