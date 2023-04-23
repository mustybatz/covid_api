const mysql = require('mysql2');

const pool = mysql.createPool({
  host: 'localhost',
  user: 'admin',
  password: 'motomami',
  database: 'covid_db',
});

module.exports = pool.promise();
