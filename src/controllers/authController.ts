import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import { Request, Response } from 'express';
import { queryAsync } from '../db';
import { RegisterRequest, RegisterResponse, LoginRequest, LoginResponse, AuthErrorResponse, EmployeeData, GuestData } from '../types/auth';

/**
 * Controller function for user registration.
 */

export const registerGuest = async (req: Request<{}, {}, RegisterRequest>, res: Response<RegisterResponse | AuthErrorResponse>) => {
  try {
    const { name, email, password, address, phone } = req.body;

    const emailExists = await queryAsync('SELECT * FROM guests WHERE email = ?', [email]);

    if (emailExists.length > 0) {
      return res.status(400).json({ error: 'E-mail já em uso' });
    }

    const hashedPassword = await bcrypt.hash(password, 10);

    await queryAsync('INSERT INTO guests (name, address, email, phone, password) VALUES (?, ?, ?, ?, ?)', [name, address, email, phone, hashedPassword]);

    res.status(201).json({ message: 'Hóspede registrado com sucesso' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro interno no servidor' });
  }
};

export const registerEmployee = async (req: Request<{}, {}, RegisterRequest>, res: Response<RegisterResponse | AuthErrorResponse>) => {
  try {
    const { name, email, password, username, role, wage, shift, post } = req.body;

    const userExists = await queryAsync('SELECT * FROM users WHERE username = ?', [username]);
    const emailExists = await queryAsync('SELECT * FROM users WHERE email = ?', [email]);

    if (userExists.length > 0) {
      return res.status(400).json({ error: 'Nome de usuário já em uso' });
    }

    if (emailExists.length > 0) {
      return res.status(400).json({ error: 'E-mail já em uso' });
    }

    const hashedPassword = await bcrypt.hash(password, 10);

    await queryAsync('INSERT INTO users (name, email, password, username, role, wage, shift, post) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', [name, email, hashedPassword, username, role, wage, shift, post]);

    res.status(201).json({ message: 'Usuário registrado com sucesso' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro interno no servidor' });
  }
};

/**
 * Controller function for user login.
 */
export const loginEmployee = async (req: Request<{}, {}, LoginRequest>, res: Response<LoginResponse | AuthErrorResponse>) => {
  try {
    const { username, password } = req.body;

    const results = await queryAsync('SELECT * FROM users WHERE username = ?', [username]);

    if (results.length > 0) {
      const match = await bcrypt.compare(password, results[0].password);

      if (match) {
        const expirationTime = 3600 * 8; // 1 hour in seconds
        const token = jwt.sign(
          { username: results[0].username, id: results[0].id },
          process.env.JWT_SECRET as string,
          { expiresIn: expirationTime }
        );

        const userData: EmployeeData = {
          id: results[0].id,
          email: results[0].email,
          name: results[0].name,
          username: results[0].username,
          role: results[0].role,
          shift: results[0].shift,
          post: results[0].post
        };

        res.status(200).json({ token, userData, expiresIn: expirationTime });
      } else {
        res.status(401).json({ error: 'Credenciais inválidas' });
      }
    } else {
      res.status(401).json({ error: 'Credenciais inválidas' });
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro interno no servidor' });
  }
};

export const loginGuest = async (req: Request<{}, {}, LoginRequest>, res: Response<LoginResponse | AuthErrorResponse>) => {
  try {
    const { email, password } = req.body;

    const results = await queryAsync('SELECT * FROM guests WHERE email = ?', [email]);

    if (results.length > 0) {
      const match = await bcrypt.compare(password, results[0].password);

      if (match) {
        const expirationTime = 3600 * 8; // 1 hour in seconds
        const token = jwt.sign(
          { email: results[0].email, id: results[0].id },
          process.env.JWT_SECRET as string,
          { expiresIn: expirationTime }
        );

        const userData: GuestData = {
          id: results[0].id,
          email: results[0].email,
          name: results[0].name,
          address: results[0].address,
          phone: results[0].phone
        };

        res.status(200).json({ token, userData, expiresIn: expirationTime });
      } else {
        res.status(401).json({ error: 'Credenciais inválidas' });
      }
    } else {
      res.status(401).json({ error: 'Credenciais inválidas' });
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro interno no servidor' });
  }
};