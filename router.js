

const express = require('express')
const router = express.Router()

const condition = require('./condition/condition')

const goods = require('./goods/goods')

const goodsCate = require('./goodsCate/cate')

const info = require('./info/info')

const user = require('./user/manage')

const upload = require('./upload/upload')

const feedback = require('./feedback/feedback')
// const { path } = require('express/lib/application')




router.get('/condition', condition.findAll)

router.post('/condition', condition.create)

router.put('/condition', condition.update)

router.delete('/condition', condition.delete)





router.get('/goods', goods.findAll)

router.post('/goods', goods.create)

router.put('/goods', goods.update)

router.delete('/goods', goods.delete)

router.post('/goods/top', goods.top)


router.get('/goods/cate', goodsCate.findAll)

router.post('/goods/cate', goodsCate.create)

router.put('/goods/cate', goodsCate.update)

router.delete('/goods/cate', goodsCate.delete)





router.get('/info', info.findInfo)

// router.post('/info', info.create)

router.put('/info', info.update)



router.get('/feedback', feedback.findAll)

router.delete('/feedback', feedback.delete)

router.post('/feedback', feedback.create)




router.post('/login', user.findUsr)

router.put('/login', user.updateUsr)



// 上传图片
var path = require("path");
var multer = require("multer");

var fileFilter = function (req, file, cb) {
  var acceptableMime = ["image/jpeg", "image/png", "image/jpg", "image/gif"];
  // 限制类型
  // null是固定写法
  if (acceptableMime.indexOf(file.mimetype) !== -1) {
    cb(null, true); // 通过上传
  } else {
    cb(null, false); // 禁止上传
  }
}

var storage = multer.diskStorage({
  //设置 上传图片服务器位置
  destination: path.resolve(__dirname, "./public/img"),
  //设置 上传文件保存的文件名
  filename: function (req, file, cb) {
    // console.log('666666',req)
  // 获取后缀扩展
    let extName = file.originalname.slice(file.originalname.lastIndexOf("."));  //.jpg
 // 获取名称
    let fileName = 'huahan' + '_' + Date.now(); 
    console.log(fileName + extName); //12423543465.jpg
    cb(null, fileName + extName);
  },
});

var limits = {
  fileSize:  "5MB", //设置限制（可选）
}

//单张上传

const imageUploader = multer({
  fileFilter,
  storage,
  limits
}).array("file", 20); //文件上传预定 name 或者 字段

router.post('/upload', imageUploader, upload.uploadFiles)

module.exports = router
