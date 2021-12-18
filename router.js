

const express = require('express')
const router = express.Router()
const condition = require('./condition/condition')


const information = require('./information/information')
const user = require('./user/manage')

const upload = require('./upload/upload')
// const { path } = require('express/lib/application')




router.get('/condition', condition.findAll)

router.post('/condition', condition.create)

router.put('/condition', condition.update)

router.delete('/condition', condition.delete)





router.get('/information', information.findInfo)

router.post('/information', information.create)

router.put('/information', information.update)



router.post('/login', user.findUsr)


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
  destination: path.resolve(__dirname, "./img"),
  //设置 上传文件保存的文件名
  filename: function (req, file, cb) {
  // 获取后缀扩展
    let extName = file.originalname.slice(file.originalname.lastIndexOf("."));  //.jpg
 // 获取名称
    let fileName = 'huahan' + '_' + Date.now(); 
    console.log(fileName + extName); //12423543465.jpg
    cb(null, fileName + extName);
  },
});

var limits = {
  fileSize:  "2MB", //设置限制（可选）
}

//单张上传

const imageUploader = multer({
  fileFilter,
  storage,
  limits
}).single("file"); //文件上传预定 name 或者 字段

router.post('/upload', imageUploader, upload.uploadFiles)

module.exports = router
