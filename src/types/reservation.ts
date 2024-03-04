export type Reservation = {
    id?: number;
    date_checkin: string; // Assuming date format as string, adjust as per your database schema
    date_checkout: string; // Assuming date format as string, adjust as per your database schema
    persons: number;
    status: 'Confirmado' | 'Pendente' | 'Cancelada'; // Assuming these are the only possible status values
    employee_id: number;
    room_id: number;
    guest_id: number;
};