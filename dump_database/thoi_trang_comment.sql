-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: thoi_trang
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,2,16,'hàng chất lượng','2020-07-31 11:53:09','2020-07-31 11:53:09'),(2,1,16,'hàng đẹp','2020-07-31 12:14:40','2020-07-31 12:14:40'),(3,1,16,'sẽ mua lần sau','2020-07-31 12:18:46','2020-07-31 12:18:46'),(4,4,4,'ao dep','2020-07-31 18:32:15','2020-07-31 18:32:15'),(5,1,3,'sgfsfdg','2020-08-03 06:11:38','2020-08-03 06:11:38'),(6,1,3,'hàng đẹp','2020-08-03 06:11:48','2020-08-03 06:11:48'),(7,1,3,'aa','2020-08-03 07:00:41','2020-08-03 07:00:41'),(8,1,1,'abc','2020-08-03 07:03:49','2020-08-03 07:03:49'),(9,1,1,'aa','2020-08-03 07:07:36','2020-08-03 07:07:36'),(10,1,15,'hàng đẹp','2020-08-03 07:08:10','2020-08-03 07:08:10'),(11,2,9,'hàng dẹp','2020-08-03 11:53:31','2020-08-03 11:53:31'),(12,2,1,'a','2020-08-03 17:27:29','2020-08-03 17:27:29'),(13,2,1,'abc','2020-08-03 17:27:38','2020-08-03 17:27:38'),(14,2,3,'hàng ok','2020-08-04 14:47:04','2020-08-04 14:47:04'),(15,1,1,'hàng đẹp','2020-08-24 10:56:45','2020-08-24 10:56:45'),(16,1,8,'hàng ok','2020-08-24 10:59:18','2020-08-24 10:59:18'),(17,3,6,'a','2020-08-24 11:00:51','2020-08-24 11:00:51'),(18,3,15,'sfs','2020-08-24 11:03:26','2020-08-24 11:03:26'),(19,5,16,'sdf','2020-08-24 11:08:26','2020-08-24 11:08:26'),(20,5,8,'dfsdf','2020-08-27 06:09:56','2020-08-27 06:09:56');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-27 20:42:56
