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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_cate`
--

LOCK TABLES `huahan_web_cate` WRITE;
/*!40000 ALTER TABLE `huahan_web_cate` DISABLE KEYS */;
INSERT INTO `huahan_web_cate` VALUES (1,'RS 防锈型','2021-12-19 13:59:38','2021-12-19 14:01:07'),(2,'RS防水型','2021-12-19 13:59:38','2021-12-19 14:01:07'),(7,'三生三世存储','2021-12-19 16:13:46','2021-12-19 16:13:46');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_condition`
--

LOCK TABLES `huahan_web_condition` WRITE;
/*!40000 ALTER TABLE `huahan_web_condition` DISABLE KEYS */;
INSERT INTO `huahan_web_condition` VALUES (2,1,'少时诵诗书所','http://localhost:5003/img/huahan_1639845113618.png','<p>大上的那是的难打卡上打快了速度来看</p>','2021-12-19 00:32:07','2021-12-19 00:32:07'),(5,1,'科技蓝精灵','http://localhost:5003/img/huahan_1639846071927.png','<p>极乐空间拉开距离开卡礼迪卡龙</p>','2021-12-19 00:47:59','2021-12-19 00:47:59'),(6,1,'砂浆和大家啊是是是等等','http://localhost:5003/img/huahan_1639849576291.png','<p>阿斯加德辣鸡对对对</p>','2021-12-19 01:46:21','2021-12-19 01:46:21'),(7,2,'和大家的哈建行到家吞吞吐吐等等','http://localhost:5003/img/huahan_1639891540221.png','<p>安徽大家德哈卡建设大街奥斯卡德哈卡是的哈快点哈萨克三等奖是是是按实际单声道</p>','2021-12-19 01:52:23','2021-12-19 01:52:23'),(9,2,'对对对','http://localhost:5003/img/huahan_1639892664830.png','<p>暗杀很大对对对</p>','2021-12-19 13:44:30','2021-12-19 13:44:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_feedback`
--

LOCK TABLES `huahan_web_feedback` WRITE;
/*!40000 ALTER TABLE `huahan_web_feedback` DISABLE KEYS */;
INSERT INTO `huahan_web_feedback` VALUES (3,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah'),(4,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah'),(5,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah'),(6,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah'),(7,NULL,NULL,'18855399966',NULL,'dahdahdkjahdah');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_goods`
--

LOCK TABLES `huahan_web_goods` WRITE;
/*!40000 ALTER TABLE `huahan_web_goods` DISABLE KEYS */;
INSERT INTO `huahan_web_goods` VALUES (1,1,'极大决定啦','http://localhost:5003/img/huahan_1639887967762.png','<p>阿加大了空间打开垃圾堆里</p>','2021-12-19 12:26:16','2021-12-19 12:26:16'),(2,1,'家具大多靠打扑克','http://localhost:5003/img/huahan_1639888068050.png','<p>吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生吉林省经费到时跑得快破啊机司机发生<img src=\"http://localhost:5003/img/huahan_1639888093963.png\"></p>','2021-12-19 12:28:18','2021-12-19 12:28:18'),(3,2,'的哈里回答对对对','http://localhost:5003/img/huahan_1639888346997.png','<p>贾老师觉得666电放费</p>','2021-12-19 12:32:32','2021-12-19 12:32:32');
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
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `emailNum` varchar(10) DEFAULT NULL,
  `compImg` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huahan_web_info`
--

LOCK TABLES `huahan_web_info` WRITE;
/*!40000 ALTER TABLE `huahan_web_info` DISABLE KEYS */;
INSERT INTO `huahan_web_info` VALUES ('华翰官网','华翰官网','华翰官网','常州 市武进区','0519-86230933','czhhhb_2013@163.com','0519-86230933','2393000','http://localhost:5003/img/huahan_1639911326644.png'),('华翰官网','华翰官网','华翰官网','常州 市武进区','0519-86230933','czhhhb_2013@163.com','0519-86230933','2393000','http://localhost:5003/img/huahan_1639911326644.png');
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
INSERT INTO `huahan_web_user` VALUES ('admin','huahan2021','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwYXNzd29yZCI6Imh1YWhhbjIwMjEiLCJpYXQiOjE2Mzk5MjQ2ODB9.0xrcUfPgIjZbrfwpIZEVk9lkC5A6hP44BSiG_lfcwwY','2021-12-18 21:22:43');
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

-- Dump completed on 2021-12-19 22:50:39
