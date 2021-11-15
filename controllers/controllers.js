const Tutorial = require('../model/model')
const tutorial = new Tutorial()

exports.create = (req, res) => {
  console.log(req)
  if(!req.body){
    res.status(400).json({
      message: '参数错误',
      code: -1002
    })
    return
  }
  // const tutorial = new Tutorial()

  tutorial.create(req.body, (err, data) => {
    if(err){
      res.status(500).json({
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
  // const tutorial = new Tutorial()
  // console.log(tutorial.getAll())
  // console.log(req.query)
  tutorial.getAll(req.query, (err, data) => {
    if(err){
      res.status(500).json({
        message: err.message || '系统错误'
      })
    }else {
      res.json(data)
    }
  })
}

exports.findId = (req, res) => {
  tutorial.findById(req.body, (err, data) => {
    if(err){
      res.status(500).json({
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