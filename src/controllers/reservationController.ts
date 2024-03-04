import { Request, Response } from 'express';
import { queryAsync } from '../db';
import { Reservation } from '../types/reservation';

// CRUD operations for reservation

// Create reservation
interface AuthenticatedRequest extends Request {
  userId: number;
}

// Controller function to create a reservation
export const createReservation = async (req: AuthenticatedRequest, res: Response<any>) => {
  try {
    // Access userId from the request
    const userId: number = req.userId;

    // Destructure reservation details from the request body
    const { date_checkin, date_checkout, persons, room_id, guest_id }: Reservation = req.body;

    // Check if the room is available
    const roomAvailability = await queryAsync('SELECT available FROM room WHERE id = ?', [room_id]);
    if (roomAvailability.length === 0 || roomAvailability[0].available === 0) {
      return res.status(400).json({ error: 'The room is not available for reservation' });
    }

    // Insert reservation into the database
    await queryAsync('INSERT INTO reservation (date_checkin, date_checkout, persons, status, employee_id, room_id, guest_id) VALUES (?, ?, ?, ?, ?, ?, ?)', [date_checkin, date_checkout, persons, "Pendente", userId, room_id, guest_id]);

    // Update room availability to 0 (not available)
    await queryAsync('UPDATE room SET available = 0 WHERE id = ?', [room_id]);

    res.status(201).json({ message: 'Reservation created successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Read all reservation
export const getAllReservations = async (req: Request, res: Response) => {
  try {
    const reservation = await queryAsync('SELECT * FROM reservation');
    res.status(200).json(reservation);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Check-in guest by email
export const checkInGuest = async (req: Request<{ email: string, id: number }>, res: Response<any>) => {
  try {
  
    const { email, reservation_id } = req.body;

    // Find the reservation associated with the guest's email that is not checked in
    const reservation = await queryAsync('SELECT * FROM reservation WHERE guest_id = (SELECT id FROM guests WHERE email = ?) AND status = "Pendente"', [email]);

    if (reservation.length === 0) {
      return res.status(404).json({ error: 'No pending reservation found for the guest' });
    }

    // Validate current date against check-in and check-out dates
    const currentDate = new Date();
    const checkinDate = new Date(reservation[0].date_checkin);
    const checkoutDate = new Date(reservation[0].date_checkout);

    if (currentDate < checkoutDate) {
      return res.status(400).json({ error: 'Current date is outside the reservation period' });
    }

    // Perform check-in (update status to checked in)
    await queryAsync('UPDATE reservation SET status = "Confirmado" WHERE id = ?', [reservation_id]);

    // Calculate total value for invoice
    const differenceInDays = Math.ceil((checkoutDate.getTime() - checkinDate.getTime()) / (1000 * 60 * 60 * 24)); // Calculate difference in days
    const roomInfo = await queryAsync('SELECT daily_rate FROM room WHERE id = ?', [reservation[0].room_id]);
    const totalValue = differenceInDays * roomInfo[0].daily_rate;

    // Insert into the invoice table
    await queryAsync('INSERT INTO invoice (date, total_value, reservation_id) VALUES (CURRENT_DATE(), ?, ?)', [totalValue, reservation_id]);
    console.log(email, reservation_id, checkoutDate, currentDate, totalValue)
    res.status(200).json({ message: 'Guest checked in successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


export const completeTransaction = async (req: Request<any>, res: Response<any>) => {
  try {
    const { reservation_id } = req.body;
    const reservation = await queryAsync('SELECT * FROM invoice WHERE reservation_id = ? AND status = "Pendente"', [reservation_id]);

    if (reservation.length === 0) {
      return res.status(404).json({ error: 'Reservation not found' });
    }

    await queryAsync('UPDATE invoice SET status = "Pago" WHERE reservation_id = ?', [reservation_id]);

    res.status(200).json({ message: 'Transaction completed successfully' });
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Check-out guest by email
export const checkOutGuest = async (req: Request<{ email: string, id: number }>, res: Response<any>) => {
  try {
    const { email, reservation_id } = req.body;

    // Find the reservation associated with the guest's email that is checked in
    const reservation = await queryAsync('SELECT * FROM reservation WHERE guest_id = (SELECT id FROM guests WHERE email = ?) AND status = "Confirmado"', [email]);

    if (reservation.length === 0) {
      return res.status(404).json({ error: 'No confirmed reservation found for the guest' });
    }

    const roomId = reservation[0].room_id;
    const checkoutDate = new Date(reservation[0].date_checkout);
    const currentDate = new Date();

    const [totalValue] = await queryAsync('SELECT total_value FROM invoice WHERE reservation_id = ?', [reservation_id]);

    let totalCharge;
    if (currentDate <= checkoutDate) {
      totalCharge = totalValue;
    } else {
      const differenceInDays = Math.ceil((currentDate.getTime() - checkoutDate.getTime()) / (1000 * 60 * 60 * 24));
      const roomInfo = await queryAsync('SELECT daily_rate FROM room WHERE id = ?', [roomId]);
      const dailyRate = roomInfo[0].daily_rate;
      totalCharge = totalValue + (differenceInDays * dailyRate);
    }

    await queryAsync('UPDATE invoice SET total_value = ? WHERE reservation_id = ?', [totalValue.total_value, reservation_id]);

    // Update reservation status to "checked-out"
    await queryAsync('UPDATE reservation SET status = "Checked Out" WHERE id = ?', [reservation_id]);
    
    // Update reservation status to "checked-out"
    await queryAsync('UPDATE invoice SET status = "Pendente" WHERE id = ?', [reservation_id]);

    // Set the room status back to "available"
    await queryAsync('UPDATE room SET available = 1 WHERE id = ?', [roomId]);

    console.log(email, reservation_id, roomId, checkoutDate, currentDate, totalValue.total_value, totalCharge.total_value)

    res.status(200).json({ message: 'Guest checked out successfully and room vacated' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal server error' });
  }
};
