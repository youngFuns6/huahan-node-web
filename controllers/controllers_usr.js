const Tutorial = require('../model/user')

const jwt = require('jsonwebtoken')

const t_secret = require('../config/token.config')

const tutorial = new Tutorial()

exports.findUsr = (req, res) => {
  console.log(req.body)
  if (!req.body.usrname || !req.body.password) {
    res.status(400).json({
      code: -1002,
      message: '参数错误'
    })
  }
  tutorial.getUser(req.body, (err, data) => {
    if (err) {
      res.status(500).json({
        code: -1003,
        message: err.message || '系统错误'
      })
    }
    if (data === undefined || req.body.password !== data.password) {
      res.status(400).json({
        code: -1005,
        message: '用户名或密码错误'
      })
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
    // tutorial.setToken(token, req.body, (err, data) => {
    //   if (err) {
    //     res.status(500).json({
    //       code: -1003,
    //       message: err.message || '系统错误'
    //     })
    //   } else {
    //     res.json({
    //       code: 200,
    //       message: 'success',
    //       data
    //     })
    //   }
    // })
    res.json({
      code: 200,
      message: 'success',
      data,
      token
    })
  })
  // res.send('ok')
}