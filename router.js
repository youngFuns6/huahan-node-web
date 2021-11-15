const express = require('express')
const router = express.Router()
const tutorials = require('./controllers/controllers')





router.get('/', tutorials.findAll)

router.post('/add', tutorials.create)


module.exports = router
