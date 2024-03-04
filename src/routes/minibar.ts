const express = require('express');
const router = express.Router();
import { verifyToken, getUserIdMiddleware } from "../middleware/authentication";
import { authorizeEmployee } from "../middleware/authorization";
import { createMinibarItem, getAllMinibarItems, getMinibarItemById, updateMinibarItem, deleteMinibarItem } from "../controllers/minibarController";

router.get('/', verifyToken, getUserIdMiddleware, authorizeEmployee, getAllMinibarItems)
router.get('/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, getMinibarItemById)
router.post('/', verifyToken, getUserIdMiddleware, authorizeEmployee, createMinibarItem)
router.put('/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, updateMinibarItem)
router.delete('/:id', verifyToken, getUserIdMiddleware, authorizeEmployee, deleteMinibarItem)


module.exports = router;