const Tutorial = require('./model')

const jwt = require('jsonwebtoken')

const t_secret = require('../config/token.config')

const tutorial = new Tutorial()

exports.findUsr = (req, res) => {
  // console.log('000: ', req.body)

  if (!req.body.username || !req.body.password) {
    res.status(400).json({
      code: -1002,
      message: '参数错误'
    })
    return
  }
  tutorial.getUser(req.body, (err, data) => {

    if (err) {
      res.status(500).json({
        code: -1003,
        message: err.message || '系统错误'
      })
      return
    }
    if (data === undefined || req.body.password !== data.password) {
      // console.log(data.password)
      res.status(400).json({
        code: -1005,
        message: '用户名或密码错误'
      })
      // res.send('999')
      return
    }
    let payload = { usrname: req.body.usrname, password: req.body.password };
    let secret = t_secret.TOKEN_SECRET;
    let token = jwt.sign(payload, secret)
    // res.json({
    //   code: 200,
    //   message: 'success',
    //   token
    // })
    tutorial.setToken(token, req.body, (err, token) => {
      if (err) {
        res.status(500).json({
          code: -1003,
          message: err.message || '系统错误'
        })
      } else {
        res.json({
          code: 200,
          message: 'success',
          data: {
            username: req.body.username,
            password: req.body.password,
            token
          }
        })
      }
    })
  })
}

exports.updateUsr = (req, res) => {
  if (req.body.username === undefined || req.body.password === undefined || req.body.newPassword === undefined) {
    res.status(400).json(
      {
        code: -1002,
        message: '参数错误'
      }
    )
  } else {
    tutorial.setPassword(req.body, (err, data) => {
      if (err) {
        res.status(500).json({
          code: -1003,
          message: err.message || '系统错误'
        })
      } else {
        if (data === undefined || req.body.password !== data.password) {
          // console.log(data.password)
          res.status(400).json({
            code: -1005,
            message: '用户名或密码错误'
          })
          // res.send('999')
          return
        }
        if (req.body.newPassword === data.password) {
          res.status(400).json({
            code: -1005,
            message: '旧密码与新密码相同'
          })
          // res.send('999')
          return
        }
        res.status(200).json({
          code: 200,
          message: "success",
          data: {
            username: data.username,
            password: data.newPassword
          }
        })
      }
    })
  }
}