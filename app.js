const express = require("express");
const cors = require("cors");
const app = express();
const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "root",
  database: "shabushop",
  port: "3306",
});

app.use(cors());
app.use(express.json());
const port = 3001;

//-----get----
app.get("/food", function (req, res) {
  const sql = "SELECT * FROM FOOD";
  connection.query(sql, (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error retrieving reservations" });
    }
    res.status(200).json(data);
  });
});

app.get("/drink", function (req, res) {
  const sql = "SELECT * FROM drink";
  connection.query(sql, (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error retrieving reservations" });
    }
    res.status(200).json(data);
  });
});

app.get("/dessert", function (req, res) {
  const sql = "SELECT * FROM `dessert`";
  connection.query(sql, (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error retrieving dessert" });
    }
    res.status(200).json(data);
  });
});

app.get("/order", function (req, res) {
  const sql = "SELECT * FROM `ORDER`";
  connection.query(sql, (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error retrieving orders" });
    }
    res.status(200).json(data);
  });
});

app.get("/table", function (req, res) {
  const sql = "SELECT * FROM `table`";
  connection.query(sql, (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error retrieving tables" });
    }
    res.status(200).json(data);
  });
});

app.get("/payment", function (req, res) {
  const sql = "SELECT * FROM `payment`";
  connection.query(sql, (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error retrieving payment" });
    }
    res.status(200).json(data);
  });
});

//---POST----
app.post("/drink", function (req, res) {
  const { name, price, img_url } = req.body;
  const sql = "INSERT INTO drink (name, price, img_url) VALUES ( ?, ?, ?)";

  connection.query(sql, [name, price, img_url], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error inserting Drink" });
    }
    res.status(201).json({ message: "Drink inserted successfully" });
  });
});

app.post("/payment", function (req, res) {
  const { order_id, table_id, date, total } = req.body;
  const sql =
    "INSERT INTO payment (order_id, table_id, date, total) VALUES (?, ?, ?, ?)";

  connection.query(sql, [order_id, table_id, date, total], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error inserting payment" });
    }
    res.status(201).json({ message: "Payment inserted successfully" });
  });
});

app.post("/food", function (req, res) {
  const { name, price, img_url } = req.body;
  const sql = "INSERT INTO food (name, price, img_url) VALUES (?, ?, ?)";
  connection.query(sql, [name, price, img_url], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error inserting food" });
    }
    res.status(201).json(data);
  });
});

app.post("/order", function (req, res) {
  const { table_id, food_id, amount, total, drink_id, dessert_id } = req.body;
  const sql =
    "INSERT INTO `order` (table_id, food_id,amount, total,drink_id,dessert_id) VALUES (?, ?, ?,?,?,?)";

  connection.query(
    sql,
    [table_id, food_id, amount, total, drink_id, dessert_id],
    (err, data) => {
      if (err) {
        console.error("Error executing the SQL query:", err);
        return res.status(500).json({ error: "Error inserting orders" });
      }
      res.status(201).json({ message: "Orders inserted successfully" });
    }
  );
});

app.post("/tables", function (req, res) {
  const name = req.body.name;
  const sql = "INSERT INTO `table` (name) VALUES (?)";

  connection.query(sql, [name], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error inserting table" });
    }
    res.status(201).json({ message: "Table inserted successfully" });
  });
});

app.post("/dessert", function (req, res) {
  const { name, price, img_url } = req.body;
  const sql = "INSERT INTO `dessert` (name, price, img_url) VALUES (?, ?, ?)";

  connection.query(sql, [name, price, img_url], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error inserting Dessert" });
    }
    res.status(201).json({ message: "Dessert inserted successfully" });
  });
});

//---DELETE----
app.delete("/drink/:id", function (req, res) {
  const drinkId = req.params.id;
  const sql = "DELETE FROM drink WHERE id = ?";

  connection.query(sql, [drinkId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error deleting Drink" });
    }
    res.status(200).json({ message: "Drink deleted successfully" });
  });
});

app.delete("/food/:id", function (req, res) {
  const foodId = req.params.id;
  const sql = "DELETE FROM food WHERE id = ?";

  connection.query(sql, [foodId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error deleting Food" });
    }
    res.status(200).json({ message: "Food deleted successfully" });
  });
});

app.delete("/order/:id", function (req, res) {
  const orderId = req.params.id;
  const sql = "DELETE FROM `order` WHERE id = ?";

  connection.query(sql, [orderId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error deleting Order" });
    }
    res.status(200).json({ message: "Order deleted successfully" });
  });
});

app.delete("/table/:id", function (req, res) {
  const tableId = req.params.id;
  const sql = "DELETE FROM `table` WHERE id = ?";

  connection.query(sql, [tableId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error deleting Table" });
    }
    res.status(200).json({ message: "Table deleted successfully" });
  });
});

app.delete("/payment/:id", function (req, res) {
  const paymentId = req.params.id;
  const sql = "DELETE FROM payment WHERE id = ?";

  connection.query(sql, [paymentId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error deleting Payment" });
    }
    res.status(200).json({ message: "Payment deleted successfully" });
  });
});

app.delete("/dessert/:id", function (req, res) {
  const dessertId = req.params.id;
  const sql = "DELETE FROM dessert WHERE id = ?";

  connection.query(sql, [dessertId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error deleting Dessert" });
    }
    res.status(200).json({ message: "Dessert deleted successfully" });
  });
});

//---UPDATE----
app.put("/dessert/:id", function (req, res) {
  const dessertId = req.params.id;
  const { name, price, img_url } = req.body;
  const sql =
    "UPDATE dessert SET name = ?, price = ?, img_url = ? WHERE id = ?";

  connection.query(sql, [name, price, img_url, dessertId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error updating Dessert" });
    }
    res.status(200).json({ message: "Dessert updated successfully" });
  });
});

app.put("/drink/:id", function (req, res) {
  const drinkId = req.params.id;
  const { name, price, img_url } = req.body;
  const sql = "UPDATE drink SET name = ?, price = ?, img_url = ? WHERE id = ?";

  connection.query(sql, [name, price, img_url, drinkId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error updating Drink" });
    }
    res.status(200).json({ message: "Drink updated successfully" });
  });
});

app.put("/food/:id", function (req, res) {
  const foodId = req.params.id;
  const { name, price, img_url } = req.body;
  const sql = "UPDATE food SET name = ?, price = ?, img_url = ? WHERE id = ?";

  connection.query(sql, [name, price, img_url, foodId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error updating Food" });
    }
    res.status(200).json({ message: "Food updated successfully" });
  });
});

app.put("/order/:id", function (req, res) {
  const orderId = req.params.id;
  const { table_id, food_id, total } = req.body;
  const sql =
    "UPDATE `order` SET table_id = ?, food_id = ?, total = ? WHERE id = ?";

  connection.query(sql, [table_id, food_id, total, orderId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error updating Order" });
    }
    res.status(200).json({ message: "Order updated successfully" });
  });
});

app.put("/table/:id", function (req, res) {
  const tableId = req.params.id;
  const { name } = req.body;
  const sql = "UPDATE `table` SET name = ? WHERE id = ?";

  connection.query(sql, [name, tableId], (err, data) => {
    if (err) {
      console.error("Error executing the SQL query:", err);
      return res.status(500).json({ error: "Error updating Table" });
    }
    res.status(200).json({ message: "Table updated successfully" });
  });
});

//---update----
app.put("/payment/:id", function (req, res) {
  const paymentId = req.params.id;
  const { order_id, table_id, date, total } = req.body;
  const sql =
    "UPDATE payment SET order_id = ?, table_id = ?, date = ?, total = ? WHERE id = ?";

  connection.query(
    sql,
    [order_id, table_id, date, total, paymentId],
    (err, data) => {
      if (err) {
        console.error("Error executing the SQL query:", err);
        return res.status(500).json({ error: "Error updating Payment" });
      }
      res.status(200).json({ message: "Payment updated successfully" });
    }
  );
});

app.listen(port, () => {
  console.log("Server running on port ", port);
});
