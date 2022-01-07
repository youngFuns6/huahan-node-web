exports.uploadFiles = (req, res) => {
  // console.log('多文件', req.files)

  if (req.files.length === 0) {
    return res.json({
      code: -1002,
      message: '参数错误',
    })
  }
  if (req.files.length === 1) {
    let imgSrc = 'http://localhost:5003/img/' + req.files[0].filename
    res.json({
      code: 200,
      message: '上传成功',
      data: imgSrc
    })
  } else {
    let arr = []
    req.files.forEach(item => {
      arr.push('http://localhost:5003/img/' + item.filename)
    });
    res.json({
      code: 200,
      message: '上传成功',
      data: arr
    })
  }
  // arr.push({
  //   name: req.file.filename,
  //   url: 'http://localhost:5003/img/' + req.file.filename
  // })


}