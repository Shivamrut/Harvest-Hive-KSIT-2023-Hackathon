const express = require("express");
const router = express.Router();
const config = require('config');

const ordersrouter = express.Router();
ordersrouter.use(express.json());

ordersrouter.post('/orders', async (req, res) => {
    try {
      const { customer_id, crop_id, quantity, total_price, latitude, longitude } = req.body;
      const order_date = new Date().toISOString().slice(0, 19).replace('T', ' ');
  
      const [result] = await db.query('INSERT INTO orders (customer_id, crop_id, order_date, quantity, total_price, latitude, longitude) VALUES (?, ?, ?, ?, ?, ?, ?)',
        [customer_id, crop_id, order_date, quantity, total_price, latitude, longitude]);
  
      const newOrderId = result.insertId;
      res.status(201).json({ message: 'Order created successfully!', order_id: newOrderId });
    } catch (error) {
      console.error(error);
      res.status(500).json({ message: 'Error creating order' });
    }
  });

  ordersrouter.get('/orders', async (req, res) => {
    try {
      const [rows] = await db.query('SELECT * FROM orders');
      res.status(200).json(rows);
    } catch (error) {
      console.error(error);
      res.status(500).json({ message: 'Error getting orders' });
    }
  });
  
  ordersrouter.get('/orders/:id', async (req, res) => {
  try {
    const orderId = req.params.id;
    const [rows] = await db.query('SELECT * FROM orders WHERE order_id = ?', [orderId]);

    if (rows.length === 0) {
      res.status(404).json({ message: `Order ${orderId} not found` });
    } else {
      res.status(200).json(rows[0]);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Error getting order' });
  }
});
ordersrouter.get('/orders/:id', async (req, res) => {
    try {
      const orderId = req.params.id;
      const [rows] = await db.query('SELECT * FROM orders WHERE order_id = ?', [orderId]);
  
      if (rows.length === 0) {
        res.status(404).json({ message: `Order ${orderId} not found` });
      } else {
        res.status(200).json(rows[0]);
      }
    } catch (error) {
      console.error(error);
      res.status(500).json({ message: 'Error getting order' });
    }
  });
  ordersrouter.put('/orders/:id', async (req, res) => {
    try {
      const orderId = req.params.id;
      const { customer_id, crop_id, quantity, total_price, latitude, longitude } = req.body;
  
      const [result] = await db.query('UPDATE orders SET customer_id = ?, crop_id = ?, quantity = ?, total_price = ?, latitude = ?, longitude = ? WHERE order_id = ?',
        [customer_id, crop_id, quantity, total_price, latitude, longitude, orderId]);
  
      if (result.affectedRows === 0) {
        res.status(404).json({ message: `Order ${orderId} not found` });
      } else {
        res.status(200).json({ message: `Order ${orderId} updated successfully!` });
      }
    } catch (error) {
      console.error(error);
      res.status(500).json({ message: 'Error updating order' });
    }
  });
  ordersrouter.delete('/orders/:id', async (req, res) => {
    try {
      const orderId = req.params.id;
      const [result] = await db.query('DELETE FROM orders WHERE order_id = ?', [orderId]);
  
      if (result.affectedRows === 0) {
        res.status(404).json({ message: `Order ${orderId} not found` });
      } else {
        res.status(200).json({ message: `Order ${orderId} deleted successfully!` });
      }
    } catch (error)
    {
      console.error(error);
      res.status(500).json({ message: 'Error deleting order' });
    }
    });
  
module.exports = ordersrouter;