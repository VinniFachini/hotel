import express from 'express';
import { createRoom, updateRoom, deleteRoom, getRoomById, getAllRooms, getMinibarItemsByRoomId, addItemToMinibar, updateMinibarItem, deleteMinibarItem } from '../controllers/roomController';
import { verifyToken, getUserIdMiddleware } from "../middleware/authentication";
import { authorizeEmployee } from "../middleware/authorization";

const router = express.Router();

router.get('/', getAllRooms); // Route to get all rooms
router.get('/:id', getRoomById);
router.post('/', verifyToken, getUserIdMiddleware, authorizeEmployee, createRoom);
router.put('/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, updateRoom);
router.delete('/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, deleteRoom);

router.get('/:id/minibar', verifyToken, getUserIdMiddleware, authorizeEmployee, getMinibarItemsByRoomId);
router.post('/:id/minibar', verifyToken, getUserIdMiddleware, authorizeEmployee, addItemToMinibar);
router.put('/:id/minibar', verifyToken, getUserIdMiddleware, authorizeEmployee, updateMinibarItem);
router.delete('/:id/minibar', verifyToken, getUserIdMiddleware, authorizeEmployee, deleteMinibarItem);

module.exports = router;
