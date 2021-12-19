const express = require('express')

const path = require('path')


const router = require('./router')
// const jwt = require('jsonwebtoken')
// const t_secret = require('./config/token.config')

const Tutorial = require('./user/model')

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
      'Content-Type': 'application/json; charset=utf-8',
    })
  }
  req.method === 'OPTIONS' ? res.status(204).end() : next()
})

// 开放静态资源目录
app.use(express.static(path.join(__dirname, 'public')));


app.use('/api', (req, res, next) => {
  // get 请求或登录时无需验证
  if (req.url === '/login' || req.method === 'GET') {
    next()
    return
  }
  if (req.url === '/feedback' && req.method === 'POST') {
    next()
    return
  }

  let token = req.headers.authorization
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

// app.use(multer({
//   dest: './www/wwwroot/res.yunxint.com/APP/android/',
//   limits: { fileSize: 5120, files: 1 },
//   fileFilter: (req, file, cb) => {
//     console.log(file)
//     if(!/image/.test(file.mimetype) || !/video/.test(file.mimetype)){
//       cb(null, false)
//     }else {
//       cb(null, true)
//     }
//   }
// }).any())

app.use(bodyParser.json())
app.use(express.urlencoded({ extended: true }));


app.use('/api', router)

app.listen(5003, () => {
  console.log('监听5003端口')
})