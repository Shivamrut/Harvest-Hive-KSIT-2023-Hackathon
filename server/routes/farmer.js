const express = require("express");
const router = express.Router();
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

const config = require('config');
// const db = require('../db');


const farmerrouter = express.Router();
farmerrouter.use(express.json());

// Signup API
farmerrouter.post('/signup', async (req, res) => {
  try {
    const { name, email, password } = req.body;

    // Check if farmer with email already exists
    const [rows, fields] = await db.query("SELECT * FROM farmers WHERE email = ?", [email]);

    if (rows.length > 0) {
      return res.status(400).json({ error: 'Farmer with this email already exists' });
    }

    // Hash the password
    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);

    // Insert farmer record
    const result = await db.query("INSERT INTO farmers (name, email, password) VALUES (?, ?, ?)", [name, email, hashedPassword]);

    // Generate JWT token
    const token = jwt.sign(
      { farmer_id: result[0].insertId, name, email },
      config.get('jwtSecret')
    );

    return res.json({ token });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: 'Internal server error' });
  }
});

// Login API
farmerrouter.post('/login', async (req, res) => {
  try {
    const { email, password } = req.body;

    // Check if farmer with email exists
    const [rows, fields] = await db.query("SELECT * FROM farmers WHERE email = ?", [email]);

    if (rows.length == 0) {
      return res.status(400).json({ error: 'Invalid credentials' });
    }

    // Compare password
    const match = await bcrypt.compare(password, rows[0].password);

    if (!match) {
      return res.status(400).json({ error: 'Invalid credentials' });
    }

    // Generate JWT token
    const token = jwt.sign(
      { farmer_id: rows[0].farmer_id, name: rows[0].name, email: rows[0].email },
      config.get('jwtSecret')
    );

    return res.json({ token });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: 'Internal server error' });
  }
});


// CREATE operation
farmerrouter.post('/', async (req, res) => {
    const { name, email, password } = req.body;
    try {
      const [result] = await db.execute('INSERT INTO farmers (name, email, password) VALUES (?, ?, ?)', [name, email, password]);
      const newFarmerId = result.insertId;
      res.status(201).json({ id: newFarmerId, name, email });
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal server error');
    }
  });
  
  // READ operation
  farmerrouter.get('/:id', async (req, res) => {
    const farmerId = req.params.id;
    try {
      const [rows] = await db.execute('SELECT * FROM farmers WHERE farmer_id = ?', [farmerId]);
      if (rows.length === 0) {
        res.status(404).send(`Farmer with id ${farmerId} not found`);
      } else {
        const farmer = rows[0];
        res.json(farmer);
      }
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal server error');
    }
  });
  
  // UPDATE operation
  farmerrouter.put('/:id', async (req, res) => {
    const farmerId = req.params.id;
    const { name, email, password } = req.body;
    try {
      const [result] = await db.execute('UPDATE farmers SET name = ?, email = ?, password = ? WHERE id = ?', [name, email, password, farmerId]);
      if (result.affectedRows === 0) {
        res.status(404).send(`Farmer with id ${farmerId} not found`);
      } else {
        res.sendStatus(204);
      }
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal server error');
    }
  });
  
  // DELETE operation
  farmerrouter.delete('/:id', async (req, res) => {
    const farmerId = req.params.id;
    try {
      const [result] = await db.execute('DELETE FROM farmers WHERE id = ?', [farmerId]);
      if (result.affectedRows === 0) {
        res.status(404).send(`Farmer with id ${farmerId} not found`);
      } else {
        res.sendStatus(204);
      }
    } catch (error) {
      console.error(error);
      res.status(500).send('Internal server error');
    }
  });


module.exports = farmerrouter;
