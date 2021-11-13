const express = require('express')
const router = express.Router()
const db = require('./main')





router.get('/', (req, res) => {
  const data = db.queryAll()
  res.send('hello')
  console.log('999')
})

router.post('/add', (req, res) => {
  console.log('000')
  db.addInfo({id: 0, type: 2, title: '666', content: '999'})
})

module.exports = router
