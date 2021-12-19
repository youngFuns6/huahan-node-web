const Tutorial = require('./model')

const tutorial = new Tutorial;

// exports.create = (req, res) => {
//   if(req.body.type === undefined) return res.status(400).json({
//     code: -1002,
//     message: '参数错误'
//   })
//   tutorial.create(req.body, (err, data) => {
//     if(err){
//       res.status(500).json({
//         code: -1003,
//         message: err.message || '系统错误'
//       })
//       return
//     }
//     res.json({
//       code: 200,
//       message: 'success',
//       data
//     })
//   })
// }

exports.findInfo = (req, res) => {
  tutorial.getAll((err, data) => {
    if(err){
      res.status(500).json({
        code: -1003,
        message: err.message || '系统错误'
      })
      return
    }
    res.json({
      code: 200,
      message: 'success',
      data
    })
  })
}

exports.update = (req, res) => {
  tutorial.updateInfo(req.body, (err, data) => {
    if(err){
      res.status(500).json({
        message: err.message || '系统错误'
      })
      return
    }
    res.json({
      code: 200,
      message: 'success',
      data
    })
  })
}