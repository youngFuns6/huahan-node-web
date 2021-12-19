const Tutorial = require('./model')
const tutorial = new Tutorial()


exports.create = (req, res) => {
  // console.log(req)
  if(!req.body){
    res.status(400).json({
      code: -1002,
      message: '参数错误',
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
  // const tutorial = new Tutorial()
  // console.log(tutorial.getAll())
  // console.log(req)
  
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

exports.update = (req, res) => {
  if(req.body.id === undefined){
    res.status(400).json({code: -1002,message: '参数错误'})
  }else {
    tutorial.updateById(req.body, (err, data) => {
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