import { Request, Response } from 'express';
import { queryAsync } from '../db';

export const createRoom = async (req: Request<any, any, any>, res: Response) => {
    try {
        const { type, max_cap, available, daily_rate } = req.body;
        const result = await queryAsync('INSERT INTO room (type, max_cap, available, daily_rate) VALUES (?, ?, ?, ?)', [type, max_cap, available, daily_rate]);
        res.status(201).json({ message: 'Room created successfully', id: result.insertId });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const updateRoom = async (req: Request<any, any, any>, res: Response) => {
    try {
        const { id } = req.params
        const { type, max_cap, available, daily_rate } = req.body;
        await queryAsync('UPDATE room SET type = ?, max_cap = ?, available = ?, daily_rate = ? WHERE id = ?', [type, max_cap, available, daily_rate, id]);
        res.status(200).json({ message: 'Room updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const deleteRoom = async (req: Request<{ id: string }>, res: Response) => {
    try {
        const { id } = req.params;
        await queryAsync('DELETE FROM room WHERE id = ?', [id]);
        res.status(200).json({ message: 'Room deleted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getRoomById = async (req: Request<{ id: string }>, res: Response) => {
    try {
        const { id } = req.params;
        const room = await queryAsync('SELECT * FROM room WHERE id = ?', [id]);
        if (room.length === 0) {
            res.status(404).json({ error: 'Room not found' });
        } else {
            res.status(200).json(room[0]);
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getAllRooms = async (req: Request, res: Response) => {
    try {
        const rooms = await queryAsync('SELECT * FROM room');
        res.status(200).json(rooms);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getMinibarItemsByRoomId = async (req: Request<{ id: string }>, res: Response) => {
    try {
        const { id } = req.params;
        const minibarItems = await queryAsync(`
          SELECT minibar_items.name, minibar_items.price, minibar.amount
          FROM minibar
          INNER JOIN minibar_items ON minibar.item_id = minibar_items.id
          WHERE minibar.room_id = ?
        `, [id]);
        res.status(200).json(minibarItems);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const addItemToMinibar = async (req: Request<any, any, any>, res: Response) => {
    try {
        const { room_id, item_id, amount } = req.body;
        await queryAsync('INSERT INTO minibar (room_id, item_id, amount) VALUES (?, ?, ?)', [room_id, item_id, amount]);

        res.status(201).json({ message: 'Minibar item added successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const updateMinibarItem = async (req: Request<any, any, any>, res: Response) => {
    try {
        const { room_id, item_id, amount } = req.body;
        await queryAsync('UPDATE minibar SET amount = ? WHERE room_id = ? AND item_id = ?', [amount, room_id, item_id]);
        res.status(200).json({ message: 'Minibar item updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const deleteMinibarItem = async (req: Request<{ room_id: string; item_id: string }>, res: Response) => {
    try {
        const { item_id } = req.body
        const { room_id } = req.params;
        await queryAsync('DELETE FROM minibar WHERE room_id = ? AND item_id = ?', [room_id, item_id]);
        res.status(200).json({ message: 'Minibar item deleted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};