const Tutorial = require('./model')
const tutorial = new Tutorial()


exports.create = (req, res) => {
  console.log('rrrrr',req.body)
  if (!req.body.phone || !req.body.service || req.body.phone === undefined || req.body.service === undefined){
    res.status(400).json({
      code: -1002,
      message: '手机号和需求内容必填',
    })
    return
  }
  // const tutorial = new Tutorial()

  tutorial.create(req.body, (err, data) => {
    if(err){
      res.status(500).json({
        code: -1003,
        message: err.message || '系统错误'
      })
    }else {
      res.json({
        code: 200,
        message: 'success',
        data
      })
    }
  })
}

exports.findAll = (req, res) => {
  tutorial.getAll(req.query, (err, data) => {
    if(err){
      res.status(500).json({
        code: -1003,
        message: err.message || '系统错误'
      })
    }else {
      res.json({
        code: 200,
        message: 'success',
        data: data.res,
        total: data.total
      })
    }
  })
}

exports.delete = (req, res) => {
  tutorial.deleteById(req.body.id, (err, data) => {
    if(err){
      res.status(500).json({
        code: -1003,
        message: err.message || '系统错误'
      })
    }else {
      res.json({
        code: 200,
        message: 'success',
        data
      })
    }
  })
}