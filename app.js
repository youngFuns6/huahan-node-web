const express = require('express')
const router = require('./router')

const app = express()

app.use(router)

app.listen(5003, () => {
  console.log('监听5003端口')
})