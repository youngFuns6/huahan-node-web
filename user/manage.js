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

// exports.genQnToken = (req, res) => {
//   const qiniu = require("qiniu");
// //客户端调用接口，生成token
// let accessKey = 'WI4iwFyCoa-F0Mv-XW1Yoo2F-nc_joq-EO_Hvzgv';
// let secretKey = '39syvi2jpeVMdJ9TCnGmK-_OCHNWSWggQqYCwETg';
// let mac = new qiniu.auth.digest.Mac(accessKey, secretKey);
// let options = {
//   scope: 'qunxiang-guanwang', //七牛资源目录
// };
// let putPolicy = new qiniu.rs.PutPolicy(options);
// let uploadToken = putPolicy.uploadToken(mac);
// console.log(uploadToken);
// res.json({
//   code: 200,
//   message: 'success',
//   data: uploadToken
// })
// }