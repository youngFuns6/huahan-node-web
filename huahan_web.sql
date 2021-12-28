-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: huahan_web
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `huahan_web_cate`
--

DROP TABLE IF EXISTS `huahan_web_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huahan_web_cate` (
  `type` int NOT NULL AUTO_INCREMENT,
  `cateName` varchar(250) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_cate`
--

LOCK TABLES `huahan_web_cate` WRITE;
/*!40000 ALTER TABLE `huahan_web_cate` DISABLE KEYS */;
INSERT INTO `huahan_web_cate` VALUES (1,'RS 闃查攬鍨?,'2021-12-19 13:59:38','2021-12-19 14:01:07'),(2,'RS闃叉按鍨?,'2021-12-19 13:59:38','2021-12-19 14:01:07'),(8,'灏戞椂璇佃瘲涔?,'2021-12-21 20:31:56','2021-12-21 20:31:56');
/*!40000 ALTER TABLE `huahan_web_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huahan_web_condition`
--

DROP TABLE IF EXISTS `huahan_web_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huahan_web_condition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `banner` text NOT NULL,
  `content` mediumtext,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_condition`
--

LOCK TABLES `huahan_web_condition` WRITE;
/*!40000 ALTER TABLE `huahan_web_condition` DISABLE KEYS */;
INSERT INTO `huahan_web_condition` VALUES (6,1,'鐮傛祮鍜屽ぇ瀹跺晩鏄槸鏄瓑绛?,'http://localhost:5003/img/huahan_1639849576291.png','<p>闃挎柉鍔犲痉杈ｉ浮瀵瑰瀵?/p>','2021-12-19 01:46:21','2021-12-19 01:46:21'),(7,2,'鍜屽ぇ瀹剁殑鍝堝缓琛屽埌瀹跺悶鍚炲悙鍚愮瓑绛?,'http://localhost:5003/img/huahan_1639891540221.png','<p>瀹夊窘澶у寰峰搱鍗″缓璁惧ぇ琛楀ゥ鏂崱寰峰搱鍗℃槸鐨勫搱蹇偣鍝堣惃鍏嬩笁绛夊鏄槸鏄寜瀹為檯鍗曞０閬?/p>','2021-12-19 01:52:23','2021-12-19 01:52:23'),(9,2,'瀵瑰瀵?,'http://localhost:5003/img/huahan_1639892664830.png','<p>鏆楁潃寰堝ぇ瀵瑰瀵?/p>','2021-12-19 13:44:30','2021-12-19 13:44:30'),(10,1,'鍝掑搾鍝掑搾鍝掑搾澶氬澶?,'http://localhost:5003/img/huahan_1639927171832.jpg','<p><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:5003/img/huahan_1639927179967.jpg\"></p>','2021-12-19 23:19:48','2021-12-19 23:19:48'),(11,1,'瀛樺偍瀛樺偍閿欓敊閿欓敊閿欓敊閿欓敊閿?,'http://localhost:5003/img/huahan_1639927216559.jpg','<p class=\"ql-align-center\">鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁鑸掓湇鑸掓湇娉曡鏄惁<img src=\"http://localhost:5003/img/huahan_1639927246396.jpg\"></p>','2021-12-19 23:20:58','2021-12-19 23:20:58'),(12,2,'闀囨斂搴滄矙鍙戞柉钂傝姮鏂拏鑺?,'http://localhost:5003/img/huahan_1639927272378.jpg','<p>鍙戠敓绾犵悍鍨冨溇鍫嗛噷鐨?/p><p class=\"ql-align-center\"><img src=\"http://localhost:5003/img/huahan_1639927283481.jpg\"></p>','2021-12-19 23:21:27','2021-12-19 23:21:27'),(13,1,'AHDADHASDHAS ','http://localhost:5003/img/huahan_1639927326479.jpg','<p>DALHDADHSDHAUSIDHAS </p><p><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:5003/img/huahan_1639927342881.jpg\"></p>','2021-12-19 23:22:24','2021-12-19 23:22:24');
/*!40000 ALTER TABLE `huahan_web_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huahan_web_feedback`
--

DROP TABLE IF EXISTS `huahan_web_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huahan_web_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `service` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_feedback`
--

LOCK TABLES `huahan_web_feedback` WRITE;
/*!40000 ALTER TABLE `huahan_web_feedback` DISABLE KEYS */;
INSERT INTO `huahan_web_feedback` VALUES (3,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah'),(4,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah'),(5,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah'),(6,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah'),(10,NULL,NULL,'18855333112',NULL,'闃挎柉鍔犲痉鍝堟椂闂寸殑璇?),(11,NULL,NULL,'18855333112',NULL,'鐖辩鐨勭鏆楁潃寰堝ぇ'),(12,NULL,NULL,'18855333112',NULL,'绛夌瓑'),(13,NULL,NULL,'18855333112',NULL,'鐨?);
/*!40000 ALTER TABLE `huahan_web_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huahan_web_goods`
--

DROP TABLE IF EXISTS `huahan_web_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huahan_web_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `banner` text NOT NULL,
  `content` mediumtext,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  CONSTRAINT `huahan_web_goods_ibfk_1` FOREIGN KEY (`type`) REFERENCES `huahan_web_cate` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_goods`
--

LOCK TABLES `huahan_web_goods` WRITE;
/*!40000 ALTER TABLE `huahan_web_goods` DISABLE KEYS */;
INSERT INTO `huahan_web_goods` VALUES (1,1,'鏋佸ぇ鍐冲畾鍟?,'http://localhost:5003/img/huahan_1639887967762.png','<p>闃垮姞澶т簡绌洪棿鎵撳紑鍨冨溇鍫嗛噷</p>','2021-12-19 12:26:16','2021-12-19 12:26:16'),(2,1,'瀹跺叿澶у闈犳墦鎵戝厠','http://localhost:5003/img/huahan_1639888068050.png','<p>鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓鍚夋灄鐪佺粡璐瑰埌鏃惰窇寰楀揩鐮村晩鏈哄徃鏈哄彂鐢熷悏鏋楃渷缁忚垂鍒版椂璺戝緱蹇牬鍟婃満鍙告満鍙戠敓<img src=\"http://localhost:5003/img/huahan_1639888093963.png\"></p>','2021-12-19 12:28:18','2021-12-19 12:28:18'),(3,2,'鐨勫搱閲屽洖绛斿瀵瑰','http://localhost:5003/img/huahan_1639888346997.png','<p>璐捐€佸笀瑙夊緱666鐢垫斁璐?/p>','2021-12-19 12:32:32','2021-12-19 12:32:32'),(4,2,'澶ц惃杈炬拻澶ф墍澶氬','http://localhost:5003/img/huahan_1639927305060.jpg','<p>鐖辨惌鎼墍澶ф墍澶欼鐞嗗彂搴梙ADJAHL</p>','2021-12-19 23:21:52','2021-12-19 23:21:52'),(5,8,'鍝堝搱鐨勫搱姝讳簡鍔犲ぇ浜嗗涔呭晩鍥炲鍥炲鐨勫洖澶嶅ぇ瀹堕兘鍗′簡涓夌骇jadj','http://localhost:5003/img/huahan_1640101116244.jpg','<p class=\"ql-align-center\">鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻鍟婂搱鍝堟柉澶ф灄 绗笁鏂归樋鎵撶畻<img src=\"http://localhost:5003/img/huahan_1640101138394.jpg\"></p><p class=\"ql-align-center\"><img src=\"http://localhost:5003/img/huahan_1640101154270.jpg\"></p>','2021-12-21 23:39:18','2021-12-21 23:39:18'),(6,8,'鐭鍠濇按娈垫墜鏈哄彿鐨勮繕鎵撶畻鎺ョ數璇濋樋鍗庣數鐒?,'http://localhost:5003/img/huahan_1640101382100.jpg','<p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:5003/img/huahan_1640101391868.jpg\"></p><p class=\"ql-align-center\"><img src=\"http://localhost:5003/img/huahan_1640101401954.jpg\"></p>','2021-12-21 23:43:30','2021-12-21 23:43:30'),(7,8,'灏戞椂璇佃瘲涔︽墍鎵€鎵€鎵€','http://localhost:5003/img/huahan_1640101435327.jpg','<p><br></p><p class=\"ql-align-center\"><img src=\"http://localhost:5003/img/huahan_1640101442224.jpg\"></p><p>鏄殑鍝堣惃鍏嬪拰绗笁鍗曞彿鏄墦绠楀ぇ娲诲姩鍟ュぇ浜?/p>','2021-12-21 23:44:21','2021-12-21 23:44:21'),(8,8,'杈炬媺甯備笢鍗?,'http://localhost:5003/img/huahan_1640101476308.png','<p>鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟鐖卞痉鍗庡氨鐪嬪埌鏉€蹇偣閾炬帴鍦ｈ癁鑺傞樋鎷変竵澶х瑙ｇ瓟</p>','2021-12-21 23:44:56','2021-12-21 23:44:56'),(9,1,'鎾掕皫鐨勪笁鍗佸娌欓緳浼氱涓夊瀮鍦剧埍涓婂ぇ鎷彿鍟ラ兘鍝堟皑鍩洪吀鑰冭檻鍒板ソ瀵瑰瀵瑰搾鍝掑搾鍝掑搾鍝掑','http://localhost:5003/img/huahan_1640272560486.jpg','<p>椤堕《椤堕《椤?/p>','2021-12-23 23:16:05','2021-12-23 23:16:05'),(10,1,'澶уぇ澶ф拻鎵€澶氭拻','http://localhost:5003/img/huahan_1640272579802.jpg',NULL,'2021-12-23 23:16:22','2021-12-23 23:16:22'),(11,1,'瀵瑰瀵?,'http://localhost:5003/img/huahan_1640272592978.jpg','<p>瀵瑰瀵?/p>','2021-12-23 23:16:36','2021-12-23 23:16:36'),(12,1,'鍝掑搾鍝掑搾鍝掑搾','http://localhost:5003/img/huahan_1640272609079.jpg',NULL,'2021-12-23 23:16:50','2021-12-23 23:16:50'),(13,1,'瀵瑰瀵?,'http://localhost:5003/img/huahan_1640272620912.jpg',NULL,'2021-12-23 23:17:03','2021-12-23 23:17:03'),(14,1,'浜嬫晠鍙戠敓鐨勬柟娉曟拻鏃︽墦鎾掓墍aDA澶ad鏄痙aDS鍙屾柟鐨勬劅鍙楀埌鎴夸笢鍛婅瘔瀵规柟','http://localhost:5003/img/huahan_1640272643398.png',NULL,'2021-12-23 23:17:25','2021-12-23 23:17:25'),(15,1,'鐨勬⒌钂傚唸姊佃拏鍐堝湴鏂?,'http://localhost:5003/img/huahan_1640272654293.jpg',NULL,'2021-12-23 23:17:35','2021-12-23 23:17:35');
/*!40000 ALTER TABLE `huahan_web_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huahan_web_info`
--

DROP TABLE IF EXISTS `huahan_web_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huahan_web_info` (
  `webTitle` text NOT NULL,
  `webDesc` text NOT NULL,
  `webKeyWords` text NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `emailNum` varchar(10) DEFAULT NULL,
  `compImg` text,
  `message` varchar(200) DEFAULT NULL,
  `qrCode` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_info`
--

LOCK TABLES `huahan_web_info` WRITE;
/*!40000 ALTER TABLE `huahan_web_info` DISABLE KEYS */;
INSERT INTO `huahan_web_info` VALUES ('鍗庣堪瀹樼綉','鍗庣堪瀹樼綉','鍗庣堪瀹樼綉','甯稿窞 甯傛杩涘尯','0519-86230933','czhhhb_2013@163.com','0519-86230933','2393000','http://localhost:5003/img/huahan_1639927457833.jpg','15995073668','http://localhost:5003/img/huahan_1640509931963.jpg'),('鍗庣堪瀹樼綉','鍗庣堪瀹樼綉','鍗庣堪瀹樼綉','甯稿窞 甯傛杩涘尯','0519-86230933','czhhhb_2013@163.com','0519-86230933','2393000','http://localhost:5003/img/huahan_1639927457833.jpg','15995073668','http://localhost:5003/img/huahan_1640509931963.jpg');
/*!40000 ALTER TABLE `huahan_web_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huahan_web_user`
--

DROP TABLE IF EXISTS `huahan_web_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huahan_web_user` (
  `username` varchar(15) NOT NULL,
  `password` varchar(16) NOT NULL,
  `token` text,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_user`
--

LOCK TABLES `huahan_web_user` WRITE;
/*!40000 ALTER TABLE `huahan_web_user` DISABLE KEYS */;
INSERT INTO `huahan_web_user` VALUES ('admin','huahan2021','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwYXNzd29yZCI6Imh1YWhhbjIwMjEiLCJpYXQiOjE2NDA2OTUyNDZ9.li2I7G-2h9fVNDMvfoVVd6scX2gwYU7ZJqWGZT9OwwQ','2021-12-18 21:22:43');
/*!40000 ALTER TABLE `huahan_web_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-28 21:10:27
