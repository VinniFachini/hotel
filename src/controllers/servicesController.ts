import { Request, Response, query } from 'express';
import { queryAsync } from '../db';

interface RequestBody {
    reservation_id: number;
    bar_id?: number;
    restaurant_id?: number;
    laundry_id?: number;
    spa_id?: number;
    gym_id?: number;
    service_type: string;
}

export const insertTransaction = async (req: Request<any, any, RequestBody>, res: Response<any>) => {
    try {
        const { reservation_id, bar_id, restaurant_id, laundry_id, spa_id, gym_id, service_type } = req.body;

        // Retrieve the prices of the selected items
        const bar_price = await queryAsync(`SELECT price FROM bar WHERE id = ?`, [bar_id]);
        const gym_price = await queryAsync(`SELECT price FROM gym WHERE id = ?`, [gym_id]);
        const restaurant_price = await queryAsync(`SELECT price FROM restaurant WHERE id = ?`, [restaurant_id]);
        const laundry_price = await queryAsync(`SELECT price FROM laundry WHERE id = ?`, [laundry_id]);
        const spa_price = await queryAsync(`SELECT price FROM spa WHERE id = ?`, [spa_id]);

        // Calculate total value of the transaction
        const prices = [bar_id ? bar_price[0].price : 0,
        gym_id ? gym_price[0].price : 0,
        restaurant_id ? restaurant_price[0].price : 0,
        laundry_id ? laundry_price[0].price : 0,
        spa_id ? spa_price[0].price : 0];

        const priceSum = prices.reduce((accumulator, currentValue) => accumulator + currentValue, 0);

        // Insert into the transaction table
        await queryAsync('INSERT INTO transaction (reservation_id, bar_id, restaurant_id, laundry_id, spa_id, gym_id, service_type, value) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', [reservation_id, bar_id, restaurant_id, laundry_id, spa_id, gym_id, service_type, priceSum]);

        // Update total_value in the invoice table
        const currentTotalValue = await queryAsync('SELECT total_value FROM invoice WHERE reservation_id = ?', [reservation_id]);
        const newTotalValue = currentTotalValue[0].total_value + priceSum;

        await queryAsync('UPDATE invoice SET total_value = ? WHERE reservation_id = ?', [newTotalValue, reservation_id]);

        res.status(201).json({ message: 'Transaction inserted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const createBeverage = async (req: Request<any, any, { name: string; price: number }>, res: Response<any>) => {
    try {
        const { name, price } = req.body;

        // Insert the new beverage into the bar table
        await queryAsync('INSERT INTO bar (beverage, price) VALUES (?, ?)', [name, price]);

        res.status(201).json({ message: 'Beverage created successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getAllBeverages = async (req: Request<any, any, any>, res: Response<any>) => {
    try {
        const beverages = await queryAsync('SELECT * FROM bar');
        res.status(200).json(beverages);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const updateBeveragePrice = async (req: Request<{ id: string }, any, { price: number }>, res: Response<any>) => {
    try {
        const { id } = req.params;
        const { price } = req.body;

        await queryAsync('UPDATE bar SET price = ? WHERE id = ?', [price, id]);

        res.status(200).json({ message: 'Beverage price updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const deleteBeverage = async (req: Request<{ id: string }>, res: Response<any>) => {
    try {
        const { id } = req.params;

        await queryAsync('DELETE FROM bar WHERE id = ?', [id]);

        res.status(200).json({ message: 'Beverage deleted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const createMeal = async (req: Request<any, any, { name: string; price: number }>, res: Response<any>) => {
    try {
        const { name, price } = req.body;

        // Insert the new beverage into the bar table
        await queryAsync('INSERT INTO restaurant (meal, price) VALUES (?, ?)', [name, price]);

        res.status(201).json({ message: 'Dish created successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getAllMeals = async (req: Request<any, any, any>, res: Response<any>) => {
    try {
        const beverages = await queryAsync('SELECT * FROM restaurant');
        res.status(200).json(beverages);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const updateMealPrice = async (req: Request<{ id: string }, any, { price: number }>, res: Response<any>) => {
    try {
        const { id } = req.params;
        const { price } = req.body;

        await queryAsync('UPDATE restaurant SET price = ? WHERE id = ?', [price, id]);

        res.status(200).json({ message: 'Meal price updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const deleteMeal = async (req: Request<{ id: string }>, res: Response<any>) => {
    try {
        const { id } = req.params;

        await queryAsync('DELETE FROM restaurant WHERE id = ?', [id]);

        res.status(200).json({ message: 'Beverage deleted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
export const createSpaService = async (req: Request<any, any, { name: string; price: number }>, res: Response<any>) => {
    try {
        const { name, price } = req.body;

        // Insert the new beverage into the bar table
        await queryAsync('INSERT INTO spa (service, price) VALUES (?, ?)', [name, price]);

        res.status(201).json({ message: 'Spa service created successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getAllSpaServices = async (req: Request<any, any, any>, res: Response<any>) => {
    try {
        const beverages = await queryAsync('SELECT * FROM spa');
        res.status(200).json(beverages);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const updateSpaServicePrice = async (req: Request<{ id: string }, any, { price: number }>, res: Response<any>) => {
    try {
        const { id } = req.params;
        const { price } = req.body;

        await queryAsync('UPDATE spa SET price = ? WHERE id = ?', [price, id]);

        res.status(200).json({ message: 'Spa Service price updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const deleteSpaService = async (req: Request<{ id: string }>, res: Response<any>) => {
    try {
        const { id } = req.params;

        await queryAsync('DELETE FROM spa WHERE id = ?', [id]);

        res.status(200).json({ message: 'Spa Service deleted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
export const createGymService = async (req: Request<any, any, { name: string; price: number }>, res: Response<any>) => {
    try {
        const { name, price } = req.body;

        // Insert the new beverage into the bar table
        await queryAsync('INSERT INTO gym (service, price) VALUES (?, ?)', [name, price]);

        res.status(201).json({ message: 'gym service created successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getAllGymServices = async (req: Request<any, any, any>, res: Response<any>) => {
    try {
        const beverages = await queryAsync('SELECT * FROM gym');
        res.status(200).json(beverages);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const updateGymServicePrice = async (req: Request<{ id: string }, any, { price: number }>, res: Response<any>) => {
    try {
        const { id } = req.params;
        const { price } = req.body;

        await queryAsync('UPDATE gym SET price = ? WHERE id = ?', [price, id]);

        res.status(200).json({ message: 'Gym Service price updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const deleteGymService = async (req: Request<{ id: string }>, res: Response<any>) => {
    try {
        const { id } = req.params;

        await queryAsync('DELETE FROM gym WHERE id = ?', [id]);

        res.status(200).json({ message: 'Gym Service deleted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const createLaundryService = async (req: Request<any, any, { name: string; price: number }>, res: Response<any>) => {
    try {
        const { name, price } = req.body;

        // Insert the new beverage into the bar table
        await queryAsync('INSERT INTO laundry (service, price) VALUES (?, ?)', [name, price]);

        res.status(201).json({ message: 'Laundry service created successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const getAllLaundryServices = async (req: Request<any, any, any>, res: Response<any>) => {
    try {
        const beverages = await queryAsync('SELECT * FROM laundry');
        res.status(200).json(beverages);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const updateLaundryServicePrice = async (req: Request<{ id: string }, any, { price: number }>, res: Response<any>) => {
    try {
        const { id } = req.params;
        const { price } = req.body;

        await queryAsync('UPDATE laundry SET price = ? WHERE id = ?', [price, id]);

        res.status(200).json({ message: 'Laundry Service price updated successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

export const deleteLaundryService = async (req: Request<{ id: string }>, res: Response<any>) => {
    try {
        const { id } = req.params;

        await queryAsync('DELETE FROM laundry WHERE id = ?', [id]);

        res.status(200).json({ message: 'Laundry Service deleted successfully' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
};