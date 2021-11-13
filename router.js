const express = require('express')
const router = express.Router()
const db = require('./main')





router.use((req, res) => {
  db.queryAll()
  res.send('路由分离')
})

module.exports = router
