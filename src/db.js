const mysql = require('mysql2');
const dotenv = require("dotenv");

dotenv.config();

const pool = mysql.createPool({
  host: process.env.RDS_HOSTNAME || 'localhost',
  user: 'admin',
  password: 'motomami',
  database: 'covid_db',
});

module.exports = pool.promise();
