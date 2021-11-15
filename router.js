const express = require('express')
const router = express.Router()
const tutorials = require('./controllers/controllers')





router.get('/', tutorials.findAll)

router.post('/information', tutorials.create)

router.put('/information', tutorials.update)

module.exports = router
