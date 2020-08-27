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
-- Table structure for table `history_order_action_bills`
--

DROP TABLE IF EXISTS `history_order_action_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `history_order_action_bills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_user` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_people_action` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_customer` int(11) unsigned NOT NULL,
  `id_bills` int(10) unsigned NOT NULL,
  `name_customer` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_1_bills` float DEFAULT NULL COMMENT 'giá gốc',
  `old_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'trạng thái cũ',
  `new_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'trạng thái mới',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_action` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_order_action_bills`
--

LOCK TABLES `history_order_action_bills` WRITE;
/*!40000 ALTER TABLE `history_order_action_bills` DISABLE KEYS */;
INSERT INTO `history_order_action_bills` VALUES (1,'2','danh','doi trang thai',3,3,'abv',100000,'trang thai cu','trang thai moi','anh','2020-06-19 03:16:59','2020-06-19 03:16:59','2020-06-19 03:16:59'),(2,'2','danh','doi trang thai',3,3,'abv',100000,'trang thai cu','trang thai moi','anh','2020-06-19 03:16:59','2020-06-19 03:16:59','2020-06-19 03:16:59'),(3,'2','danh','doi trang thai',3,3,'abv',100000,'trang thai cu','trang thai moi','anh','2020-06-19 03:16:59','2020-06-19 03:16:59','2020-06-19 03:16:59'),(4,'2','admin','doi trang thai',3,3,'abv',100000,'trang thai cu','trang thai moi','anh','2020-06-19 03:16:59','2020-06-19 03:16:59','2020-06-19 03:16:59'),(5,'2','admin','Thay đổi trạng thái đơn hàng',41,3,'abv',100000,'trang thai cu','trang thai moi','anh','2020-06-19 03:16:59','2020-06-19 03:16:59','2020-06-19 03:16:59'),(6,'2','admin','Thay đổi trạng thái đơn hàng',42,39,'admin',100000,'trang thai cu','trang thai moi','anh','2020-06-19 03:16:59','2020-06-19 03:16:59','2020-06-19 03:16:59'),(7,'2','admin','Thay đổi trạng thái đơn hàng',43,40,'admin',11500000,'Đang xử lý','đã xử lý','anh','2020-08-24 16:43:47','2020-08-24 16:43:47','2020-08-24 16:43:47'),(8,'2','admin','Thay đổi trạng thái đơn hàng',44,41,'admin',7000000,'Đang xử lý','đã hủy','anh','2020-08-24 16:51:27','2020-08-24 16:51:27','2020-08-24 16:51:27'),(9,'2','admin','Xóa sản phẩm',45,42,'admin',7500000,'Đang xử lý','đã hủy','anh','2020-08-24 16:52:21','2020-08-24 16:52:21','2020-08-24 16:52:21'),(10,'0','congdanh','Xóa sản phẩm',46,43,'congdanh',11500000,'Đang xử lý','đã xử lý','anh','2020-08-24 17:31:58','2020-08-24 17:31:58','2020-08-24 17:31:58'),(11,'admin','congdanh','Xóa sản phẩm',47,44,'congdanh',11500000,'Đang xử lý','đã hủy','anh','2020-08-24 17:35:22','2020-08-24 17:35:22','2020-08-24 17:35:22'),(12,'admin','congdanh','Xóa sản phẩm',48,45,'congdanh',11500000,'Đang xử lý','đã hủy','anh','2020-08-24 17:49:03','2020-08-24 17:49:03','2020-08-24 17:49:03'),(13,NULL,'congdanh','Xóa sản phẩm',51,48,'congdanh',375000000,'Đang xử lý','đã xử lý','anh','2020-08-24 18:16:57','2020-08-24 18:16:57','2020-08-24 18:16:57'),(14,'Nhân viên kinh doanh','congdanh','Xóa sản phẩm',50,47,'user',29900000,'Đang xử lý','đã xử lý','anh','2020-08-24 18:20:14','2020-08-24 18:20:14','2020-08-24 18:20:14'),(15,'Nhân viên kinh doanh','congdanh','Xóa sản phẩm',49,46,'congdanh',4500000,'Đang xử lý','đã hủy','anh','2020-08-24 18:22:16','2020-08-24 18:22:16','2020-08-24 18:22:16'),(16,'Nhân viên kinh doanh','congdanh','Xóa sản phẩm',52,49,'congdanh',89000000,'Đang xử lý','đã xử lý','anh','2020-08-24 18:22:56','2020-08-24 18:22:56','2020-08-24 18:22:56'),(17,'Nhân viên kinh doanh','congdanh','Thay đổi trạng thái đơn hàng',54,50,'congdanh',19000000,'Đang xử lý','đã xử lý','anh','2020-08-24 18:25:10','2020-08-24 18:25:10','2020-08-24 18:25:10'),(18,'admin','admin','Thay đổi trạng thái đơn hàng',55,51,'congdanh',35000000,'Đang xử lý','đã xử lý','anh','2020-08-24 21:26:30','2020-08-24 21:26:30','2020-08-24 21:26:30'),(19,'admin','admin','Xóa sản phẩm',56,52,'admin',55000000,'Đang xử lý','đã xác nhận','anh','2020-08-24 21:31:54','2020-08-24 21:31:54','2020-08-24 21:31:54'),(20,'admin','admin','Xác nhận đơn hàng của khách',57,53,'admin',19000000,'Đang xử lý','đã xác nhận','anh','2020-08-24 21:43:43','2020-08-24 21:43:43','2020-08-24 21:43:43'),(21,'admin','admin','Xác nhận đã giao hàng',56,52,'admin',55000000,'đã xác nhận','đã xử lý','anh','2020-08-24 21:43:58','2020-08-24 21:43:58','2020-08-24 21:43:58'),(22,'admin','admin','Xác nhận đơn hàng của khách',58,54,'admin',89000000,'Đang xử lý','đã xác nhận','anh','2020-08-24 22:22:43','2020-08-24 22:22:43','2020-08-24 22:22:43'),(23,'admin','admin','Xác nhận đơn hàng của khách',59,55,'admin',6800000,'Đang xử lý','đã xác nhận','anh','2020-08-24 22:24:15','2020-08-24 22:24:15','2020-08-24 22:24:15'),(24,'admin','admin','Xác nhận đơn hàng của khách',61,56,'admin',6800000,'Đang xử lý','đã xác nhận','anh','2020-08-24 22:24:42','2020-08-24 22:24:42','2020-08-24 22:24:42'),(25,'admin','admin','Xác nhận đơn hàng của khách',62,57,'admin',11500000,'Đang xử lý','đã xác nhận','anh','2020-08-24 22:26:06','2020-08-24 22:26:06','2020-08-24 22:26:06'),(26,'admin','admin','Xác nhận đơn hàng của khách',63,58,'admin',14300000,'Đang xử lý','đã xác nhận','anh','2020-08-24 22:29:02','2020-08-24 22:29:02','2020-08-24 22:29:02'),(27,'admin','admin','Xác nhận đơn hàng của khách',64,59,'admin',11500000,'Đang xử lý','đã xác nhận','anh','2020-08-24 22:32:21','2020-08-24 22:32:21','2020-08-24 22:32:21'),(28,'admin','admin','Xác nhận đơn hàng của khách',66,60,'admin',19000000,'Đang xử lý','đã xác nhận','anh','2020-08-24 22:33:31','2020-08-24 22:33:31','2020-08-24 22:33:31'),(29,'admin','admin','Xác nhận đã giao hàng',57,53,'admin',19000000,'đã xác nhận','đã xử lý','anh','2020-08-24 22:42:02','2020-08-24 22:42:02','2020-08-24 22:42:02'),(30,'admin','admin','Xác nhận đã giao hàng',58,54,'admin',89000000,'đã xác nhận','đã xử lý','anh','2020-08-24 22:43:22','2020-08-24 22:43:22','2020-08-24 22:43:22'),(31,'admin','admin','Xác nhận đã giao hàng',59,55,'admin',6800000,'đã xác nhận','đã xử lý','anh','2020-08-24 22:43:51','2020-08-24 22:43:51','2020-08-24 22:43:51'),(32,'admin','admin','Xác nhận đơn hàng của khách',68,61,'admin',18500000,'Đang xử lý','đã xác nhận','anh','2020-08-25 15:54:46','2020-08-25 15:54:46','2020-08-25 15:54:46'),(33,'admin','admin','Xác nhận đơn hàng của khách',69,62,'congdanh',17500000,'Đang xử lý','đã xác nhận','anh','2020-08-25 16:34:45','2020-08-25 16:34:45','2020-08-25 16:34:45'),(34,'admin','admin','Xác nhận đơn hàng của khách',70,63,'congdanh',17500000,'Đang xử lý','đã xác nhận','anh','2020-08-25 16:35:06','2020-08-25 16:35:06','2020-08-25 16:35:06'),(35,'admin','admin','Xác nhận đã giao hàng',61,56,'admin',6800000,'đã xác nhận','đã xử lý','anh','2020-08-25 16:35:13','2020-08-25 16:35:13','2020-08-25 16:35:13'),(36,'admin','admin','Xác nhận đơn hàng của khách',71,64,'congdanh',17500000,'Đang xử lý','đã xác nhận','anh','2020-08-25 18:49:28','2020-08-25 18:49:28','2020-08-25 18:49:28'),(37,'Nhân viên kinh doanh','congdanh','Xóa sản phẩm',72,65,'congdanh',17500000,'Đang xử lý','đã hủy','anh','2020-08-27 11:16:36','2020-08-27 11:16:36','2020-08-27 11:16:36'),(38,'Nhân viên kinh doanh','congdanh','Hủy đơn hàng',138,129,'congdanh',48000000,'Đang xử lý','đã hủy','anh','2020-08-27 11:25:54','2020-08-27 11:25:54','2020-08-27 11:25:54'),(39,'Nhân viên kinh doanh','congdanh','Hủy đơn hàng',74,66,'congdanh',7000000,'Đang xử lý','đã hủy','anh','2020-08-27 12:12:04','2020-08-27 12:12:04','2020-08-27 12:12:04'),(40,'Nhân viên kinh doanh','congdanh','Hủy đơn hàng',75,67,'congdanh',19000000,'Đang xử lý','đã hủy','anh','2020-08-27 12:13:17','2020-08-27 12:13:17','2020-08-27 12:13:17'),(41,'admin','admin','Xác nhận đơn hàng của khách',77,69,'congdanh',7000000,'Đang xử lý','đã xác nhận','anh','2020-08-27 12:14:24','2020-08-27 12:14:24','2020-08-27 12:14:24'),(42,'admin','admin','Xác nhận đã giao hàng',76,68,'congdanh',55000000,'Đang xử lý','đã xử lý','anh','2020-08-27 12:14:51','2020-08-27 12:14:51','2020-08-27 12:14:51'),(43,'Nhân viên kinh doanh','congdanh','Hủy đơn hàng',78,70,'congdanh',7000000,'Đang xử lý','đã hủy','anh','2020-08-27 12:15:16','2020-08-27 12:15:16','2020-08-27 12:15:16'),(44,'Nhân viên kinh doanh','congdanh','Hủy đơn hàng',79,71,'congdanh',6000000,'Đang xử lý','đã hủy','anh','2020-08-27 12:17:30','2020-08-27 12:17:30','2020-08-27 12:17:30'),(45,'Nhân viên kinh doanh','congdanh','Hủy đơn hàng1',80,72,'congdanh',23500000,'Đang xử lý','đã hủy','anh','2020-08-27 12:20:01','2020-08-27 12:20:01','2020-08-27 12:20:01'),(46,'admin','admin','Hủy đơn hàng12',156,145,'admin',17500000,'Đang xử lý','đã hủy','anh','2020-08-27 12:29:41','2020-08-27 12:29:41','2020-08-27 12:29:41'),(47,'admin','admin','Hủy đơn hàng12',160,149,'admin',14000000,'Đang xử lý','đã hủy','anh','2020-08-27 12:30:54','2020-08-27 12:30:54','2020-08-27 12:30:54'),(48,'admin','admin','Hủy đơn hàng12',161,150,'admin',14500000,'Đang xử lý','đã hủy','anh','2020-08-27 12:33:20','2020-08-27 12:33:20','2020-08-27 12:33:20'),(49,'Nhân viên kinh doanh','congdanh','Hủy đơn hàng',83,75,'congdanh',55000000,'Đang xử lý','đã hủy','anh','2020-08-27 12:34:06','2020-08-27 12:34:06','2020-08-27 12:34:06'),(50,'admin','admin','Hủy đơn hàng',162,151,'admin',7500000,'Đang xử lý','đã hủy','anh','2020-08-27 12:34:40','2020-08-27 12:34:40','2020-08-27 12:34:40'),(51,'Nhân viên kinh doanh','nhan vien 1','Xác nhận đơn hàng của khách',163,152,'nhan vien 1',35200000,'Đang xử lý','đã xác nhận','anh','2020-08-27 13:16:28','2020-08-27 13:16:28','2020-08-27 13:16:28'),(52,'Nhân viên kinh doanh','nhan vien 1','Xác nhận đã giao hàng',62,57,'admin',11500000,'đã xác nhận','đã xử lý','anh','2020-08-27 13:16:47','2020-08-27 13:16:47','2020-08-27 13:16:47'),(53,'Nhân viên kinh doanh','nhan vien 1','Xác nhận đơn hàng của khách',164,153,'nhan vien 1',21000000,'Đang xử lý','đã xác nhận','anh','2020-08-27 13:18:32','2020-08-27 13:18:32','2020-08-27 13:18:32'),(54,'Nhân viên kinh doanh','nhan vien 1','Hủy đơn hàng',164,153,'nhan vien 1',21000000,'đã xác nhận','đã hủy','anh','2020-08-27 13:21:03','2020-08-27 13:21:03','2020-08-27 13:21:03');
/*!40000 ALTER TABLE `history_order_action_bills` ENABLE KEYS */;
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
