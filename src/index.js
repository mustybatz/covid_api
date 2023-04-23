const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const db = require("./db");


const app = express();

// Middleware
app.use(bodyParser.json());
app.use(cors());

// Routes
app.get("/", (req, res) => {
  res.send("COVID-19 API");
});

app.get("/api/deaths", async (req, res) => {
  try {
    const [rows] = await db.query("SELECT * FROM covid_deaths");
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("Server error");
  }
});

app.get("/api/vaccination", async (req, res) => {
    try {
      const [rows] = await db.query("SELECT * FROM covid_deaths");
      res.json(rows);
    } catch (err) {
      console.error(err);
      res.status(500).send("Server error");
    }
  });

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
