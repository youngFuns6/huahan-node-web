const mysql = require('mysql')
const dbConfig = require('../config/db.config')

const connection = mysql.createPool({
  host: dbConfig.HOST,
  user: dbConfig.USER,
  password: dbConfig.PASSWORD,
  port: dbConfig.PORT,
  database: dbConfig.DB
})

module.exports = connection
