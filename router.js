const express = require('express')
const router = express.Router()
const condition = require('./controllers/controllers_con')
const information = require('./controllers/controllers_inf')
const login = require('./controllers/controllers_usr')




router.get('/condition', condition.findAll)

router.post('/condition', condition.create)

router.put('/condition', condition.update)

router.delete('/condition', condition.delete)

router.get('/information', information.findInfo)

router.post('/information', information.create)

router.put('/information', information.update)

router.post('/login', login.findUsr)

module.exports = router
// CREATE TABLE web_condition(
// id INT NOT NULL AUTO_INCREMENT,
// title VARCHAR(100) NOT NULL,
// content MEDIUMTEXT,
// banner TEXT,
// type INT NOT NULL,
// created DATETIME DEFAULT CURRENT_TIMESTAMP,
// PRIMARY KEY ( id )
// );