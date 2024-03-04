import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import bodyParser from 'body-parser';
import { registerEmployee, loginEmployee, loginGuest, registerGuest } from './controllers/authController';
const reservations = require('./routes/reservation')
const services = require('./routes/transaction')
const minibar = require('./routes/minibar')
const rooms = require('./routes/room')

dotenv.config();

// Initialize Express application
const app = express();
const PORT = process.env.PORT || 3001;


// Middleware
app.use(cors()); // Enable CORS
app.use(bodyParser.json()); // Parse JSON bodies

app.use('/login', loginEmployee);
app.use('/register', registerEmployee);
app.use('/guest/register', registerGuest)
app.use('/guest/login', loginGuest)
app.use('/reservation', reservations)
app.use('/services', services)
app.use('/minibar', minibar)
app.use('/room', rooms)

app.get('*', (req, res) => {
  res.status(404).json({error: {type: "Not Found!", message: "The content you are looking for was not found!"}})
})

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
