const Tutorial = require('../model/information')

const tutorial = new Tutorial;

exports.create = (req, res) => {
  if(req.body.type === undefined) return res.status(400).json({
    message: '参数错误'
  })
  tutorial.create(req.body, (err, data) => {
    if(err){
      res.status(500).json({
        message: err.message || '系统错误'
      })
      return
    }
    res.json({
      message: 'success',
      data
    })
  })
}

exports.findInfo = (req, res) => {
  if(req.query.type === undefined) return res.status(400).json({
    message: '参数错误'
  })
  tutorial.getAll(req.query.type, (err, data) => {
    if(err){
      res.status(500).json({
        message: err.message || '系统错误'
      })
      return
    }
    res.json({
      message: 'success',
      data
    })
  })
}

exports.update = (req, res) => {
  if(req.body.type === undefined) return res.status(400).json({
    message: '参数错误'
  })
  tutorial.updateInfo(req.body, (err, data) => {
    if(err){
      res.status(500).json({
        message: err.message || '系统错误'
      })
      return
    }
    res.json({
      message: 'success',
      data
    })
  })
}