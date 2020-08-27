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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) unsigned DEFAULT NULL,
  `id_category` int(10) unsigned DEFAULT NULL,
  `id_supplier` int(11) unsigned DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Parameter` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'thông số',
  `origin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'xuất xứ',
  `material` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'chất liệu',
  `unit_price` float DEFAULT NULL COMMENT 'giá gốc',
  `promotion_price` float DEFAULT NULL COMMENT 'giá sale',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'đơn vị',
  `new` tinyint(4) DEFAULT '0',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_remain` int(10) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_id_type_foreign` (`id_type`),
  KEY `id_category` (`id_category`),
  KEY `id_supplier` (`id_supplier`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Áo Sơ Mi Burberry Check Cotton Poplin Shirt',1,12,4,'Áo sơ mi Burberry Check Stretch Cotton Shirt sở hữu một thiết kế đơn giản, nhẹ nhàng Cổ áo có khuy cài (button down) khiến chiếc áo càng thêm phù hợp với những hoạt động đời thường, lịch sự nhưng không quá trang nghiêm. Chất liệu cotton cao cấp khiến người mặc cảm thấy dễ chịu. Sọc caro màu xanh trắng thanh lịch chắc chắn sẽ mang đến sự hài lòng tuyệt đối cho các Quý Ông.','Màu sắc: Vàng caro xám, Size : S','Anh','Cotton',6800000,0,'sp1.jpg','đồng',1,'đã hủy',100,'2020-07-24 11:12:06','2020-08-04 08:19:50'),(3,'Áo Phông Polo Burberry Motif Cotton PiQue',1,12,4,'Chắc hẳn trong tủ quần áo của bạn không thể thiếu được những thiết kế của Burberry như chiếc áo phông Polo  này. Chiếc áo với thiết kế đơn giản với 3 cúc cài ở cổ, chi tiết kẻ ở phần cúc làm chiếc áo có thêm điểm nhấn. Sử dụng chất liệu vải cotton cao cấp, dày dặn lại vô cùng thoáng mát, với form áo tôn dáng vừa vặn. Họa tiết kẻ sọc mang đặc trưng thương hiệu ẩn hiện phía sau cổ áo, trở thành điểm nhấn quen thuộc đối với các thiết kế của nhà mốt hàng đầu Anh Quốc.','Size L (dài : 71 cm; Ngực: 50 cm; Vai:44cm)\r\nPhù hợp nam < 60kg , 1m68 -> 1m75','Anh','100% cotton',7500000,0,'sp2.jpg','VNĐ',1,'đã hủy',100,'2020-07-26 11:10:07','2020-08-04 16:21:07'),(4,'Áo Balenciaga Logo Print',1,13,4,'<p>Mẫu sơ mi logo print c&oacute; thiết kế ph&oacute;ng kho&aacute;ng với phom relaxed thoải m&aacute;i, tay cộc, cổ button down v&agrave; logo Balenciaga m&agrave;u trắng trở th&agrave;nh hoạ tiết nổi bật tr&ecirc;n nền &aacute;o đen, ph&ugrave; hợp với phong c&aacute;ch của c&aacute;c ch&agrave;ng trai th&agrave;nh thị.</p>','Size S,M,L theo yêu cầu người đặt','Anh','Cottton',11500000,0,'sp3.jpg','VNĐ',0,'dang ban',99,'2020-07-31 04:19:43','2020-08-01 01:40:40'),(5,'Áo Versace Medusa',1,12,4,'Versace Gold-tone Medusa pool slides là mẫu dép bệt, được thiết kế một quai ngang to bản, phần đế được làm uốn lượn theo khuôn hình bàn chân nhằm tạo sự thoải mái tối đa cho người mang. Thiết kế mang trên mình những biểu tượng và dấu ấn đặc trưng nhất của thương hiệu đến từ Italy: Logo đầu nữ quỷ Medusa ấn tượng, bao quanh là họa tiết zic zac “hình khóa Hy Lạp” (Greca). Phần quai ngang màu vàng kim càng tạo nên ấn tượng “royal” vương giả và thời thượng.','Size S,M,L theo yêu cầu người đặt','Anh','Conton',7000000,0,'sp4.jpg','VNĐ',1,'dang ban',0,'2020-07-31 04:29:28','2020-08-27 06:21:03'),(6,'Áo Phông MarceloBurlon Wings T-shirt',1,12,4,'Đơn giản, cool ngầu và đem lại hiệu quả thị giác mạnh mẽ từ ấn tượng đầu tiên, mẫu áo phông in hình đôi cánh, biểu đạt sự tự do, thể hiện cá tính riêng của bản thân của thương hiệu thời trang Marcelo Burlon County of Milan đang trở thành “đồng phục” của cánh mày râu thành thị trẻ tuổi.\r\nSau những mẫu graphic T-shirt in hình đôi cánh trải rộng ở đường vai với nhiều màu sắc khác nhau, thì mẫu Wings T-shirt 2019 có phần khác biệt: đôi cánh “gấp” lại sau lưng phủ màu trắng xanh kì lạ nhưng hút mắt trên nền áo màu đen. ','Size S,M,L theo yêu cầu người đặt','Pháp','Cottton',4500000,0,'sp5.jpg','VNĐ',1,'dang ban',89,'2020-07-31 04:34:00','2020-07-31 04:34:30'),(7,'Áo Phông Moschino Roman Teddy T – Shirt Black',1,12,4,'Chú Lính Teddy vui nhộn và đáng yêu, mẫu áo cho các cô nàng ưu chuộng phong cách năng động, trẻ trung đầy cá tính. Chiếc áo phông Teddy Gladiator cotton trắng và đen này của Moschino có cổ tròn, logo in phía trước, tay áo ngắn và gấu áo tà thẳng.','Size S,M,L theo yêu cầu người đặt','Anh','Cotton',7500000,6000000,'sp6.jpg','VNĐ',0,'dang ban',96,'2020-07-31 04:38:27','2020-07-31 04:40:21'),(8,'Áo Balmain Logo Print sweater',1,14,4,'Balmain mang đến những mẫu thiết kế hiện đại, tinh tế cho các quý ông, kể cả đó là đồ casual-wear như áo nỉ. Mẫu áo nỉ Balmain Logo Print sweater có thiết kế tương đối đơn giản với phần cổ tròn, bo nhẹ ở gấu và cổ tay áo, phom thoải mái, không ôm sát. Logo Balmain Paris màu trắng nổi bật trên nền áo đen. Chiếc áo phù hợp với hầu hết mọi dịp, dễ dàng phối hợp với trang phục hàng ngày. Bạn có thể lựa chọn phong cách dark-wear với set đồ all-black lạnh lùng hoặc kết hợp cùng quần jeans, sneaker năng động.','Size S,M,L theo yêu cầu người đặt','Pháp','Cottton',7500000,0,'sp7.jpg','VNĐ',1,'dang ban',77,'2020-07-31 05:21:23','2020-08-27 05:34:40'),(9,'Áo khoác Gucci Technical Jersey Jacket',1,14,4,'<p>Lấy cảm hứng từ thời trang thập ni&ecirc;n 90, thời k&igrave; ho&agrave;ng kim của thời trang sportwear, &aacute;o kho&aacute;c Gucci Technical Jersey Jacket c&oacute; thiết kế như một chiếc &aacute;o kho&aacute;c thể thao với phần cổ cao, hai dải băng trắng &ndash; xanh lam chạy dọc hai b&ecirc;n c&aacute;nh tay, nổi bật t&ecirc;n thương hiệu m&agrave;u đỏ. Phần cổ tay bo chun trang tr&iacute; bằng sọc xanh &ndash; đỏ đặc trưng của h&atilde;ng.</p>','Size S,M,L theo yêu cầu người đặt','Anh','Cottton',21000000,19000000,'sp8.jpg','VNĐ',1,'dang ban',98,'2020-07-31 05:27:39','2020-08-27 05:13:18'),(10,'Áo Phông Moschino Bear T – Shirt Red',1,12,4,'Sự kết hợp hài hòa giữa sự vui tươi trong văn hóa nhạc Pop và các công trình kiến trúc nổi bật tại Ý. Chiếc áo thun gấu bông màu trắng này của Moschino có cổ tròn, tay ngắn, hình bóng được trang bị và logo gấu Teddy rực rỡ tại trung tâm áo.','Size S,M,L theo yêu cầu người đặt','Anh','Cotton',6500000,0,'sp9.jpg','VNĐ',1,'dang ban',97,'2020-07-31 05:35:40','2020-08-27 05:30:54'),(11,'Áo Phông Moschino Graphic Print T-shirt White',1,12,4,'<p>Đ&aacute;ng y&ecirc;u v&agrave; thanh lịch c&ugrave;ng logo ch&uacute; heo xinh, mẫu &aacute;o thun với cổ tr&ograve;n, tay ngắn, gấu &aacute;o thẳng v&agrave; họa tiết in nổi ở phần trung t&acirc;m. Những qu&yacute; c&ocirc; s&agrave;nh điệu, ưu chuộng xu hướng thời trang khỏe khoắn, tối giản, kh&ocirc;ng thể bỏ lỡ những chiếc &aacute;o n&agrave;y.</p>','Size S,M,L theo yêu cầu người đặt','Anh','Cotton',7500000,0,'sp10.jpg','VNĐ',0,'dang ban',100,'2020-07-31 05:38:25','2020-07-31 10:36:04'),(12,'Áo Thun Moschino Teddy Bear',1,12,4,'Moschino là một trong những tên tuổi nổi tiếng nhất của thời trang Ý và thế giới với hơn 150 boutique trên toàn cầu. Moschino thành lập năm 1983 bởi nhà thiết kế Franco Moschino với định dạng là thời trang cao cấp nhưng gần gũi, dễ ứng dụng.','Size S,M,L theo yêu cầu người đặt','Anh','Cottton',7500000,7000000,'sp11.jpg','VNĐ',0,'dang ban',98,'2020-07-31 05:43:50','2020-08-27 05:25:22'),(13,'Áo Sơ Mi Thom Browne Grosgrain Armbands',1,12,4,'Nổi tiếng với những bộ suits được may đo tuyệt hảo, Thom Browne là thương hiệu thời trang nam mà mọi quý ông đều biết tới. Với cuộc cách mạng về âu phục của Thom Browne, những bộ suit không chỉ giới hạn trong một sắc thái nghiêm cẩn, đứng đắn và đôi phần cứng nhắc mà trở nên gần gũi, quyến rũ và hiện đại hơn bao giờ hết.\r\n\r\nÁo sơ mi Thom Browne Grosgrain Armbands là một trong những mẫu trang phục bán chạy nhất của hãng. Bên cạnh thiết kế dài tay, cổ cài khuy (button down), túi ngực chuẩn mực của dòng sơ mi nam, chiếc áo nổi bật với dải băng gồm ba màu đặc trưng của Thom Browne: đỏ, trắng, xanh navy nằm ở hai bên cánh tay. Áo sử dụng chất liệu cotton 100%.','Size S,M,L theo yêu cầu người đặt','Anh','Cottton',8200000,0,'sp12.jpg','VNĐ',1,'dang ban',99,'2020-07-31 05:52:23','2020-07-31 05:52:23'),(14,'Túi Louis Vuitton Pochette Voyage MM Monogram',2,2,4,'Túi Louis Vuitton Pochette Voyage MM Monogram năm 2020 với sự kết hợp khung vẽ Eclipse Monogram tối tạo nên sự mới mẻ, tinh tế cho mẫu túi đã quá quen thuộc với các tín đồ của LV. Mẫu túi có thiết kế nhỏ gọn, lịch lãm nhưng cực kì tiện ích với một khoá kéo bên ngoài, bên trong ngăn chính có 6 ngăn thẻ nên bạn có thể sử dụng như một chiếc clutch hoặc ví cầm tay. Bên cạnh chất liệu chính là da Monogram canvas độc quyền của hãng thì phần viền và trang trí nơi khoá túi cũng được làm từ da bò tự nhiên (cowhide). Khoá và các chi tiết kim loại được xử lý khéo léo, có độ bóng vừa phải, tạo hiệu ứng sang trọng nhưng không phô trương, phù hợp với các doanh nhân trẻ thành đạt.','Kích thước: 27 x 21 x 3, Màu sắc:  Xám','Anh','Da bò tự nhiên (cowhide)',25000000,23500000,'sp13.jpg','VNĐ',0,'dang ban',96,'2020-07-31 08:19:04','2020-07-31 08:20:28'),(15,'Túi Louis Vuitton New Wave Zipped Pochette',2,2,4,'Bên cạnh các mẫu túi xách từ dáng tote bag và shoulder bag thì phiên bản Zipped Pochette mỏng nhẹ cũng thời trang không kém. Quai đeo cổ tay thêu chữ Louis Vuitton nhiều màu kết hợp với logo LV ánh bạc ở thân trước mang đến nguồn năng lượng sôi nổi, trẻ trung. New Wave Zipped Pochette làm từ da bê từ lớp ngoài, lót trong cho tới viền túi. Kích thước 24.0 x 16.0 x 0.5 cm, bên trong thiết kế các ngăn đựng thẻ, vừa đủ để mang theo những vật thiết yếu như điện thoại, đồ makeup nhẹ nhàng khi cần xuống phố nhẹ nhàng.','Kích thước 24.0 x 16.0 x 0.5 cm','Mỹ','Da bê',30500000,29900000,'sp14.jpg','VNĐ',0,'dang ban',100,'2020-07-31 08:24:58','2020-08-27 05:25:22'),(16,'Túi Xách Chanel 19 Maxi Flap Bag',2,2,4,'hanel vẫn luôn khẳng định dấu ấn riêng của mình trong ngành công nghiệp sản xuất túi xách với chất liệu dê cao cấp, vô cùng mềm mịn, thiết kế ô chần chỉ quả trám trứ danh, khóa xoay cùng logo hai chữ C lồng đã thành cộp mác, được trang trí thêm là những hạt ngọc trai tinh xảo trên logo, sự tinh tế lành nghề của người thợ thủ công đầy kinh nghiệm qua chiếc dây xích kim loại, bản dày vô cùng chắc chắn.','Kích thước: 23 × 15 × 6 cm','Mỹ','Da Dê cao cấp, Ngọc trai',142000000,125000000,'sp15.jpg','VNĐ',0,'dang ban',84,'2020-07-31 08:36:49','2020-07-31 08:36:49'),(17,'Túi Xách Chanel Camera Case',2,2,4,'Chanel là một trong những thương hiệu thời trang uy tín nhất thế giới với các dòng sản phẩm như thời trang cao cấp, quần áo may sẵn, phụ kiện, nữ trang và nước hoa. Những thiết kế đơn giản mà tinh tế, cổ điển mà hiện đại, sang trọng mà tiện dụng của Chanel luôn được các ngôi sao Hollywood ưa chuộng và đầy hấp lực với các tín đồ thời trang.','Kích thước	: 15 × 21 × 6 cm','Mỹ','Da bê cao cấp',95000000,89000000,'sp16.jpg','VNĐ',0,'dang ban',98,'2020-07-31 10:31:50','2020-07-31 10:31:50'),(18,'Túi Xách Louis Vuitton Trio Pochette',2,2,4,'Với thiết kế hiện đại, năng động 3-trong-1, Trio Pochette đích thực là phiên bản nam của mẫu LV Multi Accessoires đã gây sốt trong thời gian trước. Tất nhiên, đây là thiết kế dành cho cánh mày râu nên sẽ mạnh mẽ, nam tính hơn. Tổng thể Trio Pochette trông tương tự như những chiếc Messenger bag, tuy nhiên gồm ba chiếc túi gắn với nhau, có thể tách rời mang riêng, làm từ chất liệu Monogram Eclipse màu ghi xám.','Kích thước: 25 × 18.5 × 7 cm','Mỹ','Da tự nhiên',59000000,55000000,'sp17.jpg','VNĐ',0,'dang ban',98,'2020-07-31 11:21:54','2020-08-27 05:34:06'),(19,'Giày Alexander McQueen Oversized sneaker',3,16,4,'<p>dsfd</p>','sdfds','Anh','Cottton',1100000,10000000,'sp18.jpg','VNĐ',0,'dang ban',99,'2020-07-31 23:06:16','2020-08-27 05:26:16'),(63,'congdanh',1,1,4,'<p>dgdfgdf</p>','Size S,M,L theo yêu cầu người đặt','Anh','Cottton',1100000,0,'111.png','VNĐ',0,'đã hủy',0,'2020-08-25 04:50:19','2020-08-25 04:50:30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-27 20:43:02
