const fs = require('fs')
// const pathLib = require('path')

exports.uploadAdrApk = (req, res) => {
  // console.log(req.headers.referer)
  // let ext = pathLib.parse(req.files[0].originalname).ext
  const filename = req.files[0].destination + req.files[0].originalname
  console.log(req.files[0])
  fs.rename(req.files[0].path, filename, function(err){
    if(err){
      res.json({
        code: '-20000',
        message: err.message || '上传失败'
      })
    }else {
      res.json({
        code: 200,
        message: '上传成功',
        data: req.files[0].originalname
      })
    }
  })
}