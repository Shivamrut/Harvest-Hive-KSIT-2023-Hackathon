const express = require("express");
const router = express.Router();
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const mysql = require("mysql2/promise");
const config = require("config");
// const db = require("../db");
// Create a MySQL connection pool
const pool = mysql.createPool({
  host: config.get("db.host"),
  user: config.get("db.user"),
  password: config.get("db.password"),
  database: config.get("db.database"),
  timezone: config.get("db.timezone"),
  charset: config.get("db.charset"),
});


const coustomerrouter = express.Router();
coustomerrouter.use(express.json());
// Signup API
coustomerrouter.route("/signup")
.post( async (req, res) => {
  const { name, email, password } = req.body;

  try {
    // Check if email already exists
    const [rows, fields] = await pool.query(
      "SELECT COUNT(*) AS count FROM customers WHERE email = ?",
      [email]
    );
    const count = rows[0].count;

    if (count > 0) {
      return res.status(400).json({ message: "Email already exists" });
    }

    // Hash the password
    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);

    // Insert new user into the database
    const result = await pool.query(
      "INSERT INTO customers (customer_name, email, password) VALUES (?, ?, ?)",
      [name, email, hashedPassword]
    );

    res.json({ message: "Signup successful" });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Server error" });
  }
});

// Login API
coustomerrouter.post("/login", async (req, res) => {
  const { email, password } = req.body;

  try {
    // Get user from the database
    const [rows, fields] = await pool.query(
      "SELECT * FROM customers WHERE email = ?",
      [email]
    );
    const user = rows[0];

    // Check if user exists
    if (!user) {
      return res.status(400).json({ message: "Invalid email or password" });
    }

    // Check if password is correct
    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ message: "Invalid email or password" });
    }

    // Create and sign a JWT token
    const payload = { userId: user.customer_id };
    const token = jwt.sign(payload, config.get("jwtSecret"), {
      expiresIn: "1h",
    });

    res.json({ token });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Server error" });
  }
});

// CRUD APIs
// Get all customers
coustomerrouter.get("/", async (req, res) => {
  try {
    const [rows, fields] = await pool.query("SELECT * FROM customers");
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Server error" });
  }
});



// Create a new consumer
coustomerrouter.post("/", async (req, res) => {
  try {
    const { name, email, phone } = req.body;
    const [result] = await db.execute(
      "INSERT INTO consumers (name, email, phone) VALUES (?, ?, ?)",
      [name, email, phone]
    );
    res.status(201).json({ id: result.insertId });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal Server Error" });
  }
});

// Get all consumers
coustomerrouter.get("/", async (req, res) => {
  try {
    const [rows] = await db.query("SELECT * FROM consumers");
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal Server Error" });
  }
});

// Get a single consumer
coustomerrouter.get("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const [rows] = await db.execute(
      "SELECT * FROM consumers WHERE id = ?",
      [id]
    );
    if (rows.length === 0) {
      res.status(404).json({ message: "Consumer not found" });
    } else {
      res.json(rows[0]);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal Server Error" });
  }
});

// Update a consumer
coustomerrouter.put("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const { name, email, phone } = req.body;
    await db.execute(
      "UPDATE consumers SET name = ?, email = ?, phone = ? WHERE id = ?",
      [name, email, phone, id]
    );
    res.status(204).end();
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal Server Error" });
  }
});

// Delete a consumer
coustomerrouter.delete("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    await db.execute("DELETE FROM consumers WHERE id = ?", [id]);
    res.status(204).end();
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal Server Error" });
  }
});

module.exports = coustomerrouter;

