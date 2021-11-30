const express = require('express')
const router = express.Router()
const condition_pr = require('./controllers/condition/contr_con_pr')
const condition_qx = require('./controllers/condition/contr_con_qx')
const condition_qk = require('./controllers/condition/contr_con_qk')


const information = require('./controllers/controllers_inf')
const login = require('./controllers/controllers_usr')




router.get('/product/condition', condition_pr.findAll)

router.post('/product/condition', condition_pr.create)

router.put('/product/condition', condition_pr.update)

router.delete('/product/condition', condition_pr.delete)


router.get('/qunxiang/condition', condition_qx.findAll)

router.post('/qunxiang/condition', condition_qx.create)

router.put('/qunxiang/condition', condition_qx.update)

router.delete('/qunxiang/condition', condition_qx.delete)


router.get('/qunkong/condition', condition_qk.findAll)

router.post('/qunkong/condition', condition_qk.create)

router.put('/qunkong/condition', condition_qk.update)

router.delete('/qunkong/condition', condition_qk.delete)




router.get('/information', information.findInfo)

router.post('/information', information.create)

router.put('/information', information.update)

router.post('/login', login.findUsr)

router.post('/qntoken', login.genQnToken)

module.exports = router
