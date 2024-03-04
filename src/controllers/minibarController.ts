import { Request, Response } from 'express';
import { queryAsync } from '../db';

export const createMinibarItem = async (req: Request<any, any, any>, res: Response) => {
    try {
        const { id, name, type, price, stock, unit } = req.body;
        const result = await queryAsync('INSERT INTO minibar_items (id, name, type, price, stock, unit) VALUES (?, ?, ?, ?, ?, ?)', [id, name, type, price, stock, unit]);
        res.status(201).json({ message: 'Minibar item created successfully', id: result.insertId });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const updateMinibarItem = async (req: Request<any, any, any>, res: Response) => {
    try {
        const { id } = req.params
        const { name, type, price, stock, unit } = req.body;
        await queryAsync('UPDATE minibar_items SET name = ?, type = ?, price = ?, stock = ?, unit = ? WHERE id = ?', [name, type, price, stock, unit, id]);
        res.status(200).json({ message: 'Minibar item updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const deleteMinibarItem = async (req: Request<{ id: string }>, res: Response) => {
    try {
        const { id } = req.params;
        await queryAsync('DELETE FROM minibar_items WHERE id = ?', [id]);
        res.status(200).json({ message: 'Minibar item deleted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getMinibarItemById = async (req: Request<{ id: string }>, res: Response) => {
    try {
        const { id } = req.params;
        const minibarItem = await queryAsync('SELECT * FROM minibar_items WHERE id = ?', [id]);
        if (minibarItem.length === 0) {
            res.status(404).json({ error: 'Minibar item not found' });
        } else {
            res.status(200).json(minibarItem[0]);
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getAllMinibarItems = async (req: Request<any, any, any>, res: Response) => {
    try {
        const minibarItems = await queryAsync('SELECT * FROM minibar_items');
        res.status(200).json(minibarItems);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
