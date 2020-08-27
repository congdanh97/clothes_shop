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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_type` int(10) unsigned NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_type` (`id_type`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,2,'Đồng Hồ','<p>Đồng hồ hiệu, đẹp, ch&iacute;nh h&atilde;ng</p>','2020-07-21 23:40:37','2020-07-21 23:40:37'),(2,2,'Túi Xách','<p>Cung cấp t&uacute;i x&aacute;ch&nbsp;h&agrave;ng hiệu chất tượng bền&nbsp;đẹp.</p>','2020-07-21 23:54:12','2020-07-21 23:54:12'),(3,2,'Thắt Lưng','<p>Cung cấp thắt lưng&nbsp;h&agrave;ng hiệu chất tượng bền&nbsp;đẹp.</p>','2020-07-21 23:54:49','2020-07-21 23:54:49'),(4,2,'Kính Mắt','<p>Cung cấp k&iacute;nh mắt h&agrave;ng hiệu chất tượng bền&nbsp;đẹp.</p>','2020-07-21 23:55:12','2020-07-21 23:55:12'),(5,2,'Vòng Tay','<p>Cung cấp&nbsp;h&agrave;ng hiệu chất tượng bền&nbsp;đẹp.</p>','2020-07-21 23:56:14','2020-07-21 23:56:14'),(6,1,'Quần Công Sở','<p>B&aacute;n c&aacute;c mẫu quần c&ocirc;ng sở chất lượng hợp thời trang</p>','2020-07-23 07:52:46','2020-07-23 07:52:46'),(7,1,'Quần Thể Thao','<p>B&aacute;n quần thể thao thời trang chất lượng</p>','2020-07-23 08:07:14','2020-07-23 08:07:14'),(8,1,'Quần Short','<p>B&aacute;n quần short năng động hợp thời trang</p>','2020-07-23 08:08:10','2020-07-23 08:08:10'),(12,1,'Áo T-Shirt','<p>B&aacute;n &aacute;o T-Shirt ph&ugrave; hợp nhiều phong c&aacute;ch</p>','2020-07-23 08:26:45','2020-07-23 08:26:45'),(13,1,'Áo Sơ Mi','<p>B&aacute;n &aacute;o sơ mi chất lượng hợp thời trang</p>','2020-07-23 08:28:40','2020-07-23 08:28:40'),(14,1,'Áo Hoddies','<p>B&aacute;n &aacute;o Hoddies hot</p>','2020-07-23 08:29:02','2020-07-23 08:29:02'),(15,1,'Váy, Đầm','<p>B&aacute;n đầm nữ ph&ugrave; hợp với nhiều phong c&aacute;ch</p>','2020-07-23 08:29:33','2020-07-23 08:29:33'),(16,3,'Giầy Sneaker','<p>B&aacute;n giầy sneaker hot</p>','2020-07-23 08:33:28','2020-07-23 08:35:23'),(17,3,'Giầy Công Sở','<p>B&aacute;n gi&agrave;y c&ocirc;ng sở chất lượng</p>','2020-07-23 08:37:07','2020-07-23 08:37:07'),(18,3,'GIầy Cao Gót','<p>B&aacute;n gi&agrave;y cao g&oacute;t đẹp lung linh</p>','2020-07-23 08:37:39','2020-07-23 08:37:39'),(19,3,'Giầy Boot','<p>B&aacute;n boot hợp thời trang</p>','2020-07-23 08:38:01','2020-07-23 08:38:01'),(20,3,'Dép Hiệu','<p>B&aacute;n d&eacute;p</p>','2020-07-23 08:38:15','2020-07-23 08:38:35'),(21,4,'Son','<p>B&aacute;n son của c&aacute;c thương hiệu nổi tiếng</p>','2020-07-23 09:21:37','2020-07-23 09:21:37'),(22,4,'Nước Hoa','<p>B&aacute;n nước hoa ch&iacute;nh h&atilde;ng</p>','2020-07-23 09:21:59','2020-07-23 09:21:59'),(23,4,'Kem Dưỡng','<p>B&aacute;n kem dưỡng ph&ugrave; hợp nhiều loại da</p>','2020-07-23 09:22:29','2020-07-23 09:22:29');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-27 20:42:59
