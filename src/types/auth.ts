/**
 * Interface representing Request Body for User Registration.
 */
export interface RegisterRequest {
  name: string;
  email: string;
  password: string;
  username: string;
  role: string;
  wage: number,
  shift: number,
  post: string,
  address?: string,
  phone?: string,
}

/**
 * Interface representing Response Message after User Registration.
 */
export interface RegisterResponse {
  message: string;
}

/**
 * Interface representing Request Body for User Login.
 */
export interface LoginRequest {
  username: string;
  password: string;
  email? :string;
}

/**
 * Interface representing User Data returned after successful login.
 */

export interface EmployeeData {
  id: number,
  email: string;
  name: string;
  username: string;
  role: string,
  shift: number,
  post: string
}

export interface GuestData {
  id: number,
  email: string;
  name: string;
  address: string
  phone: string
}

/**
 * Interface representing Response after User Login.
 */
export interface LoginResponse {
  token: string;
  userData: GuestData | EmployeeData;
  expiresIn: number;
}

/**
 * Interface representing Error Response for Authentication.
 */
export interface AuthErrorResponse {
  error: string;
}
