const express = require('express')

const pathLib = require('path')

const router = require('./router')
// const jwt = require('jsonwebtoken')
// const t_secret = require('./config/token.config')

const Tutorial = require('./model/user')

const bodyParser = require("body-parser")

const multer = require('multer')

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
  // get 请求或登录时无需验证
  if (req.url === '/login' || req.method === 'GET') {
    next()
    return
  }

  // post 请求从总后台上传文件时无需验证
  if (req.headers.referer === 'https://api.quinxiang.com/' && req.method === 'POST') {
    // console.log(req.file)
    // let ext = pathLib.parse(req.files[0].originalname).ext
    // if(ext !== '.apk') return res.json({
    //   code: '500',
    //   data: '只支持上传 apk 文件'
    // })
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

app.use(multer({
  dest: '/www/wwwroot/res.yunxint.com/APP/android',
  limits: { fileSize: 104857600, files: 1 },
  fileFilter: (req, file, cb) => {
    // console.log(file)
    // 非安卓 apk 禁止上传
    if(file.mimetype !== 'application/vnd.android.package-archive'){
      cb(null, false)
    }else {
      cb(null, true)
    }
  }
}).any())
app.use(bodyParser.json())
app.use(express.urlencoded({ extended: true }));


app.use('/api', router)

app.listen(5003, () => {
  console.log('监听5003端口')
})