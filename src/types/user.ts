import { Request } from 'express';
// User Interface
interface User {
    id: string;
    name: string;
    email: string;
    username: string;
    role: UserRole;
}

// User Role Enum
enum UserRole {
    Admin = 'Admin',
    Employee = 'Employee'
}

interface JwtPayload {
    username: string;
    id: string;
}

interface CustomRequest extends Request {
    user?: JwtPayload;
    userId?: string;
}

export { User, UserRole, JwtPayload, CustomRequest };
