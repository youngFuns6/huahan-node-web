const express = require('express')
const router = require('./router')
// const jwt = require('jsonwebtoken')
// const t_secret = require('./config/token.config')

const Tutorial = require('./model/user')

const bodyParser = require("body-parser")

const tutorial = new Tutorial()

const app = express()

app.use((req, res, next) => {
  if (req.path !== '/' && !req.path.includes('.')) {
    res.set({
      'Access-Control-Allow-Credentials': true,
      'Access-Control-Allow-Origin': req.headers.origin || '*',
      'Access-Control-Allow-Headers': 'X-Requested-With,Content-Type,Authorization',
      'Access-Control-Allow-Methods': 'PUT,POST,GET,DELETE,OPTIONS',
      // "Access-Control-Request-Headers": "Origin, X-Requested-With, content-Type, Accept, Authorization",
      'Content-Type': 'application/json; charset=utf-8',
    })
  }
  req.method === 'OPTIONS' ? res.status(204).end() : next()
})

// app.use((req, res, next) => {
//   // console.log('req: ', req)
//   let str = ''
//   req.on('data', chunk => {
//     str += chunk
//   })
//   req.on('end', () => {
//     // console.log('str: ', str)
//     // req = str
//     next(str)
//   })
// })

app.use('/api', (req, res, next) => {
  // console.log('str', str)
  // console.log(req.headers.authorization)
  // console.log(jwt.verify(token, t_secret.TOKEN_SECRET))
  if (req.url === '/login' || req.method === 'GET') {
    next()
    return
  }
  let token = req.headers.authorization
  // let secret = t_secret.TOKEN_SECRET;
  // const payload = jwt.verify(token, secret)
  tutorial.getToken(token, (err, data) => {
    console.log("token: ", data)
    if (err) {
      res.status(500).json({
        code: -1003,
        message: err.message || '系统错误'
      })
      return
    }
    if (data === undefined) {
      res.status(401).json({
        code: -3006,
        message: '登录已失效'
      })
      return
    }
    next()
  })
})

app.use(bodyParser.json())
app.use(express.urlencoded({ extended: true }));


app.use('/api', router)

app.listen(5003, () => {
  console.log('监听5003端口')
})