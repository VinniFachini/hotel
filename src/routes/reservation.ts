const express = require('express');
const router = express.Router();
import { verifyToken, getUserIdMiddleware } from "../middleware/authentication";
import { authorizeEmployee } from "../middleware/authorization";
import {createReservation, getAllReservations, checkInGuest, checkOutGuest, completeTransaction} from '../controllers/reservationController'

router.get('/', verifyToken, getUserIdMiddleware, authorizeEmployee, getAllReservations)
router.post('/', getUserIdMiddleware, authorizeEmployee, createReservation)
router.put('/checkin', verifyToken, getUserIdMiddleware, authorizeEmployee, checkInGuest)
router.put('/checkout', verifyToken, getUserIdMiddleware, authorizeEmployee, checkOutGuest)
router.post('/conclude', verifyToken, getUserIdMiddleware, authorizeEmployee, completeTransaction)

module.exports = router;