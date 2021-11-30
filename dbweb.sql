-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (arm64)
--
-- Host: localhost    Database: WEB
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
-- Table structure for table `web_condition_product`
--

DROP TABLE IF EXISTS `web_condition_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `web_condition_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` mediumtext,
  `banner` text,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_condition_product`
--

LOCK TABLES `web_condition_product` WRITE;
/*!40000 ALTER TABLE `web_condition_product` DISABLE KEYS */;
INSERT INTO `web_condition_product` VALUES (1,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:02','3'),(2,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:04','3'),(3,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:04','3'),(4,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:05','3'),(5,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:06','3'),(6,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:06','3'),(7,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:07','3'),(8,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:07','3'),(9,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:08','3');
/*!40000 ALTER TABLE `web_condition_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_condition_qunkong`
--

DROP TABLE IF EXISTS `web_condition_qunkong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `web_condition_qunkong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` mediumtext,
  `banner` text,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_condition_qunkong`
--

LOCK TABLES `web_condition_qunkong` WRITE;
/*!40000 ALTER TABLE `web_condition_qunkong` DISABLE KEYS */;
INSERT INTO `web_condition_qunkong` VALUES (1,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:02','3'),(2,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:04','3'),(3,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:04','3'),(4,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:05','3'),(5,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:06','3'),(6,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:06','3'),(7,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:07','3'),(8,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:07','3'),(9,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:08','3');
/*!40000 ALTER TABLE `web_condition_qunkong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_condition_qunxiang`
--

DROP TABLE IF EXISTS `web_condition_qunxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `web_condition_qunxiang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` mediumtext,
  `banner` text,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_condition_qunxiang`
--

LOCK TABLES `web_condition_qunxiang` WRITE;
/*!40000 ALTER TABLE `web_condition_qunxiang` DISABLE KEYS */;
INSERT INTO `web_condition_qunxiang` VALUES (1,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:02','3'),(2,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:04','3'),(3,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:04','3'),(4,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:05','3'),(5,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:06','3'),(6,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:06','3'),(7,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:07','3'),(8,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:07','3'),(9,'群翔官网','群翔官网','https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F5%2F5%2F9%2F8%2F5598180%2F20103%2F18%2F1268868932679_mthumb.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1640327591&t=09f587c7d7bef1ffde68c4ca923cca72','2021-11-24 14:55:08','3');
/*!40000 ALTER TABLE `web_condition_qunxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_info`
--

DROP TABLE IF EXISTS `web_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `web_info` (
  `type` int NOT NULL,
  `QQqun` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `weChat` varchar(50) DEFAULT NULL,
  `contactPhone` varchar(50) DEFAULT NULL,
  `contactQQ` varchar(50) DEFAULT NULL,
  `webDesc` text,
  `webKeywords` text,
  `webTitle` text,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_info`
--

LOCK TABLES `web_info` WRITE;
/*!40000 ALTER TABLE `web_info` DISABLE KEYS */;
INSERT INTO `web_info` VALUES (1,'11','11',NULL,NULL,NULL,'555','11','产品官网',NULL),(2,NULL,NULL,NULL,NULL,NULL,'111','11','555',NULL),(3,'111',NULL,NULL,NULL,NULL,'111','11','群翔官网',NULL);
/*!40000 ALTER TABLE `web_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_usr`
--

DROP TABLE IF EXISTS `web_usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `web_usr` (
  `usrname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `token` text,
  PRIMARY KEY (`usrname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_usr`
--

LOCK TABLES `web_usr` WRITE;
/*!40000 ALTER TABLE `web_usr` DISABLE KEYS */;
INSERT INTO `web_usr` VALUES ('admin','12345678a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c3JuYW1lIjoiYWRtaW4iLCJwYXNzd29yZCI6IjEyMzQ1Njc4YSIsImlhdCI6MTYzNzc0NTA5M30.TBwC7Rn-WOOTluoZxz5nwxLEfgLFdoy2CyB4Tj_Y-ns');
/*!40000 ALTER TABLE `web_usr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-25  9:48:26
