-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: social_network_pro
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  KEY `comments_fk_posts` (`post_id`),
  KEY `comments_fk_users` (`user_id`),
  CONSTRAINT `comments_fk_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `comments_fk_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,2,'Ủng hộ bạn! Cố lên nhé.','2026-01-09 08:35:15'),(2,1,3,'Hay đó, mình cũng đang học.','2026-01-09 08:35:15'),(3,2,4,'Mình có tài liệu, bạn cần phần nào?','2026-01-09 08:35:15'),(4,2,5,'Bạn tìm “SQL basics + MySQL” là ra nhiều lắm.','2026-01-09 08:35:15'),(5,3,6,'JOIN đầu khó, sau quen sẽ dễ.','2026-01-09 08:35:15'),(6,3,7,'Bạn thử vẽ bảng ra giấy cho dễ hình dung.','2026-01-09 08:35:15'),(7,4,8,'ERD đúng là cứu cánh.','2026-01-09 08:35:15'),(8,5,9,'Chuẩn hoá giúp giảm lỗi cập nhật dữ liệu.','2026-01-09 08:35:15'),(9,6,10,'Index đặt đúng cột hay lọc/ join là ổn.','2026-01-09 08:35:15'),(10,7,11,'Mini mạng xã hội nghe thú vị đấy!','2026-01-09 08:35:15'),(11,8,12,'InnoDB hỗ trợ transaction và FK tốt hơn.','2026-01-09 08:35:15'),(12,9,13,'Cà phê là chân ái ☕','2026-01-09 08:35:15'),(13,10,14,'GROUP BY nhớ cẩn thận HAVING nhé.','2026-01-09 08:35:15'),(14,11,15,'Subquery dùng vừa đủ thôi kẻo chậm.','2026-01-09 08:35:15'),(15,12,16,'VIEW tiện để tái sử dụng truy vấn.','2026-01-09 08:35:15'),(16,13,17,'Trigger nhớ tránh loop vô hạn.','2026-01-09 08:35:15'),(17,14,18,'Transaction giúp rollback khi lỗi.','2026-01-09 08:35:15'),(18,15,19,'ACID rất quan trọng cho dữ liệu tiền bạc.','2026-01-09 08:35:15'),(19,16,20,'Top bài nhiều like: GROUP BY + ORDER BY.','2026-01-09 08:35:15'),(20,20,2,'Backup xong nhớ test restore nữa.','2026-01-09 08:35:15'),(21,21,3,'Tiếng Việt ok khi dùng utf8mb4.','2026-01-09 08:35:15'),(22,22,4,'Chuẩn rồi, mình từng bị lỗi mất dấu.','2026-01-09 08:35:15'),(23,23,5,'Collation ảnh hưởng sắp xếp và so sánh.','2026-01-09 08:35:15'),(24,24,6,'Chia nhỏ query là cách debug tốt.','2026-01-09 08:35:15'),(25,25,7,'EXPLAIN giúp hiểu vì sao query chậm.','2026-01-09 08:35:15'),(26,26,8,'Index dư thừa sẽ làm insert/update chậm.','2026-01-09 08:35:15'),(27,27,9,'Pending/accepted giống Facebook đó.','2026-01-09 08:35:15'),(28,28,10,'Messages thì nên index theo created_at.','2026-01-09 08:35:15'),(29,29,11,'Notification nhìn “pro” hẳn.','2026-01-09 08:35:15'),(30,30,12,'50 bài tập SQL nghe hấp dẫn!','2026-01-09 08:35:15'),(31,2,13,'Bạn thử dùng sách Murach cũng ổn.','2026-01-09 08:35:15'),(32,3,14,'JOIN nhiều bảng thì đặt alias cho gọn.','2026-01-09 08:35:15'),(33,4,15,'Ràng buộc FK giúp tránh dữ liệu mồ côi.','2026-01-09 08:35:15'),(34,5,16,'Bạn nhớ thêm UNIQUE cho like (post_id,user_id).','2026-01-09 08:35:15'),(35,6,17,'Đúng rồi, mình cũng làm vậy.','2026-01-09 08:35:15'),(36,7,18,'Khi cần hiệu năng, cân nhắc denormalize một chút.','2026-01-09 08:35:15'),(37,8,19,'MySQL 8 có nhiều cải tiến optimizer.','2026-01-09 08:35:15'),(38,9,20,'Chúc bạn học tốt!','2026-01-09 08:35:15'),(39,31,12,'Stored Procedure dùng tốt cho logic phức tạp.','2026-01-09 08:35:15'),(40,31,13,'Nhưng lạm dụng thì khó bảo trì lắm.','2026-01-09 08:35:15'),(41,32,14,'Phân quyền đúng giúp tăng bảo mật.','2026-01-09 08:35:15'),(42,33,15,'Workbench tiện cho người mới.','2026-01-09 08:35:15'),(43,34,16,'Import file lớn nhớ tắt index trước.','2026-01-09 08:35:15'),(44,35,17,'mysqldump kết hợp cron là ổn áp.','2026-01-09 08:35:15'),(45,36,18,'Replication dùng cho hệ thống lớn.','2026-01-09 08:35:15'),(46,37,19,'PostgreSQL mạnh về chuẩn SQL.','2026-01-09 08:35:15'),(47,38,20,'Query bảng lớn cần index hợp lý.','2026-01-09 08:35:15'),(48,39,1,'Partition phù hợp cho dữ liệu theo thời gian.','2026-01-09 08:35:15'),(49,41,5,'Nghe quen ghê, mình cũng từng vậy.','2026-01-09 08:35:15'),(50,41,8,'Debug SQL mệt nhất là logic sai.','2026-01-09 08:35:15'),(51,41,10,'Cố lên bạn ơi!','2026-01-09 08:35:15'),(52,42,3,'JOIN nhiều bảng nhớ đặt alias cho gọn.','2026-01-09 08:35:15'),(53,42,11,'Thiếu index là chậm liền.','2026-01-09 08:35:15'),(54,43,2,'Thiết kế sai từ đầu là sửa rất mệt.','2026-01-09 08:35:15'),(55,43,6,'Chuẩn luôn, mình từng làm lại cả schema.','2026-01-09 08:35:15'),(56,44,4,'EXPLAIN nhìn execution plan khá rõ.','2026-01-09 08:35:15'),(57,44,7,'MySQL 8 tối ưu tốt hơn bản cũ nhiều.','2026-01-09 08:35:15'),(58,44,9,'Xem rows estimate là biết có ổn không.','2026-01-09 08:35:15'),(59,46,12,'GROUP BY + HAVING dễ nhầm lắm.','2026-01-09 08:35:15'),(60,47,14,'Index quên tạo là query lag liền.','2026-01-09 08:35:15'),(61,48,16,'Feed mà có notification nhìn chuyên nghiệp hơn.','2026-01-09 08:35:15'),(62,48,17,'Làm xong phần này là demo được rồi.','2026-01-09 08:35:15'),(63,49,1,'Post test nhưng nhìn giống thật ghê.','2026-01-09 08:35:15'),(64,50,19,'Partition dùng cho dữ liệu theo thời gian là hợp lý.','2026-01-09 08:35:15'),(65,52,3,'FK tăng an toàn dữ liệu, chậm chút cũng đáng.','2026-01-09 08:35:15'),(66,53,5,'Index dư thừa làm insert/update chậm thật.','2026-01-09 08:35:15'),(67,54,7,'Database đúng là càng học càng sâu.','2026-01-09 08:35:15'),(68,55,2,'Bạn đăng nhiều ghê ?','2026-01-09 08:35:15'),(69,55,3,'Feed toàn thấy bài của bạn.','2026-01-09 08:35:15'),(70,55,4,'Spam nhẹ nhưng nội dung ổn.','2026-01-09 08:35:15'),(71,55,6,'Test dữ liệu mà nhìn giống thật ghê.','2026-01-09 08:35:15'),(72,56,7,'Bài này cũng thấy lúc nãy rồi.','2026-01-09 08:35:15'),(73,56,8,'Feed hoạt động ổn là được.','2026-01-09 08:35:15'),(74,57,9,'Lướt ngang qua ?','2026-01-09 08:35:15'),(75,59,10,'Composite index rất hay bị hiểu sai.','2026-01-09 08:35:15'),(76,59,11,'Đúng rồi, thứ tự cột rất quan trọng.','2026-01-09 08:35:15'),(77,59,12,'Sai thứ tự là optimizer không dùng.','2026-01-09 08:35:15'),(78,60,13,'Procedure khó debug thật.','2026-01-09 08:35:15'),(79,61,14,'Import file lớn hay bị timeout.','2026-01-09 08:35:15'),(80,61,15,'Nên tắt FK + index trước.','2026-01-09 08:35:15'),(81,61,16,'Import xong bật lại là ổn.','2026-01-09 08:35:15'),(82,63,17,'So sánh DBMS đọc rất mở mang.','2026-01-09 08:35:15'),(83,65,18,'Log mà không partition là query rất chậm.','2026-01-09 08:35:15'),(84,66,1,'Feed là phần quan trọng nhất luôn.','2026-01-09 08:35:15'),(85,66,3,'Load chậm là người dùng bỏ ngay.','2026-01-09 08:35:15'),(86,66,5,'Cần index theo created_at.','2026-01-09 08:35:15'),(87,67,6,'Chuẩn, UX kém là mất user.','2026-01-09 08:35:15'),(88,68,2,'Thiết kế tốt là nhàn cả team.','2026-01-09 08:35:15'),(89,68,7,'Làm đúng từ đầu đỡ refactor.','2026-01-09 08:35:15'),(90,69,8,'Lướt ngang qua thôi ?','2026-01-09 08:35:15'),(91,70,9,'Denormalize tăng hiệu năng nhưng dễ lỗi.','2026-01-09 08:35:15'),(92,70,11,'Chỉ nên dùng khi bottleneck rõ ràng.','2026-01-09 08:35:15'),(93,70,12,'Trade-off giữa performance và maintain.','2026-01-09 08:35:15'),(94,71,14,'Index sớm quá đôi khi phản tác dụng.','2026-01-09 08:35:15'),(95,72,15,'RANGE hợp dữ liệu theo thời gian.','2026-01-09 08:35:15'),(96,72,17,'HASH phân tán đều nhưng khó query.','2026-01-09 08:35:15'),(97,55,9,'Mình toàn vào đọc chứ ít đăng bài.','2026-01-09 08:35:15'),(98,59,9,'Comment vậy thôi chứ mình không hay post.','2026-01-09 08:35:15'),(99,66,9,'Feed nhìn khá ổn rồi.','2026-01-09 08:35:15'),(100,70,9,'Topic này tranh luận hoài không hết.','2026-01-09 08:35:15'),(101,73,1,'Mình vẫn đang vật vã với JOIN ?','2026-01-09 08:35:15'),(102,73,5,'Mình bắt đầu hiểu index hơn rồi.','2026-01-09 08:35:15'),(103,74,2,'Chuẩn, index sai là vô dụng.','2026-01-09 08:35:15'),(104,74,4,'EXPLAIN là công cụ không thể thiếu.','2026-01-09 08:35:15'),(105,75,6,'Index nhiều quá làm insert chậm đó.','2026-01-09 08:35:15'),(106,75,9,'Không phải cột nào cũng nên index.','2026-01-09 08:35:15'),(107,75,11,'Cần đo bằng thực tế, không đoán.','2026-01-09 08:35:15'),(108,76,3,'B-Tree dùng cho range query rất tốt.','2026-01-09 08:35:15'),(109,76,7,'Hash index thì equality nhanh hơn.','2026-01-09 08:35:15'),(110,77,10,'Lướt thấy nên comment cho đỡ trống.','2026-01-09 08:35:15'),(111,78,12,'Log theo thời gian dùng RANGE là hợp lý.','2026-01-09 08:35:15'),(112,79,13,'Không có WHERE thì partition không giúp gì mấy.','2026-01-09 08:35:15'),(113,80,14,'Ai cuối kỳ cũng vậy thôi ?','2026-01-09 08:35:15'),(114,80,16,'Ráng qua là nhẹ người liền.','2026-01-09 08:35:15'),(115,75,17,'Mình chỉ vào đọc tranh luận thôi.','2026-01-09 08:35:15'),(116,76,17,'Bài này đọc hơi nặng nhưng hay.','2026-01-09 08:35:15'),(117,80,17,'Cuối kỳ ai cũng khổ như nhau ?','2026-01-09 08:35:15'),(118,81,1,'Không đụng là quên liền ?','2026-01-09 08:35:15'),(119,81,3,'Mình cũng vậy, phải luyện lại từ đầu.','2026-01-09 08:35:15'),(120,82,4,'Data test tốt là debug nhàn hẳn.','2026-01-09 08:35:15'),(121,82,6,'Nhiều bug chỉ lộ ra khi data lớn.','2026-01-09 08:35:15'),(122,83,2,'Cảm giác này ai code cũng từng trải qua.','2026-01-09 08:35:15'),(123,83,5,'Miễn chạy đúng là ổn rồi.','2026-01-09 08:35:15'),(124,84,7,'Boolean thường ít giá trị, index không hiệu quả.','2026-01-09 08:35:15'),(125,84,10,'Index cho boolean hiếm khi có lợi.','2026-01-09 08:35:15'),(126,84,12,'Trừ khi kết hợp composite index.','2026-01-09 08:35:15'),(127,85,8,'Mình chưa dùng query cache bao giờ.','2026-01-09 08:35:15'),(128,86,11,'EXPLAIN là chân ái.','2026-01-09 08:35:15'),(129,87,14,'Tin số liệu hơn tin cảm giác.','2026-01-09 08:35:15'),(130,88,15,'Bug nối tiếp bug là chuyện thường ?','2026-01-09 08:35:15'),(131,88,17,'Cuối kỳ ai cũng như nhau thôi.','2026-01-09 08:35:15'),(132,84,18,'Mình vào đọc tranh luận là chính.','2026-01-09 08:35:15'),(133,87,18,'Bài này đọc là thấy đúng liền.','2026-01-09 08:35:15'),(134,88,18,'Cuối kỳ áp lực thật sự.','2026-01-09 08:35:15'),(135,89,2,'Thống kê user là phần thầy hay hỏi đó.','2026-01-09 08:35:15'),(136,89,3,'GROUP BY + HAVING là đủ demo rồi.','2026-01-09 08:35:15'),(137,90,5,'Nghĩ xa từ đầu đỡ vỡ hệ thống.','2026-01-09 08:35:15'),(138,91,7,'Không đâu, index nhiều quá còn hại.','2026-01-09 08:35:15'),(139,91,8,'Insert/update sẽ chậm hơn.','2026-01-09 08:35:15'),(140,92,9,'Boolean thường selectivity thấp.','2026-01-09 08:35:15'),(141,92,10,'Index boolean hiếm khi có lợi.','2026-01-09 08:35:15'),(142,93,12,'DB khó vì nhiều thứ phải đo đạc.','2026-01-09 08:35:15'),(143,93,13,'Code sai còn sửa nhanh hơn.','2026-01-09 08:35:15'),(144,94,1,'Ai cũng từng quên WHERE ?','2026-01-09 08:35:15'),(145,94,2,'UPDATE không WHERE là ác mộng.','2026-01-09 08:35:15'),(146,94,3,'Nên dùng transaction cho an toàn.','2026-01-09 08:35:15'),(147,95,6,'Mình cũng hay vào đọc thôi.','2026-01-09 08:35:15'),(148,96,7,'Topic này hơi nặng.','2026-01-09 08:35:15'),(149,97,8,'Cuối kỳ ai cũng vậy ?','2026-01-09 08:35:15'),(150,97,9,'Ráng lên là qua thôi.','2026-01-09 08:35:15'),(151,98,1,'Xem EXPLAIN trước tiên.','2026-01-09 08:35:15'),(152,98,4,'Kiểm tra index là bước bắt buộc.','2026-01-09 08:35:15'),(153,98,6,'Đừng quên đo bằng thời gian thực.','2026-01-09 08:35:15'),(154,99,2,'SELECT * lúc đầu ai cũng từng ?','2026-01-09 08:35:15'),(155,99,7,'Sau này toàn chọn cột cần thiết.','2026-01-09 08:35:15'),(156,100,8,'Normalization đọc hơi khô.','2026-01-09 08:35:15'),(157,101,3,'Data lớn mới lộ bug.','2026-01-09 08:35:15'),(158,101,9,'Test nhỏ chỉ mang tính tham khảo.','2026-01-09 08:35:15'),(159,102,11,'INNER chỉ lấy khớp hai bên.','2026-01-09 08:35:15'),(160,102,12,'LEFT lấy hết bảng trái.','2026-01-09 08:35:15'),(161,103,13,'Làm rõ logic trước rất quan trọng.','2026-01-09 08:35:15'),(162,104,14,'Comment cho đỡ trống.','2026-01-09 08:35:15'),(163,105,15,'WHERE không dùng index là query quét bảng.','2026-01-09 08:35:15'),(164,106,16,'Cuối kỳ dễ loạn thật ?','2026-01-09 08:35:15'),(165,106,17,'Cố lên là qua thôi.','2026-01-09 08:35:15'),(166,116,1,'Gặp rồi ?','2026-01-09 08:35:15'),(167,116,2,'Bị hỏi cái đứng hình luôn.','2026-01-09 08:35:15'),(168,116,3,'Nhìn query quen mà không nói được.','2026-01-09 08:35:15'),(169,116,5,'Ám ảnh thật sự.','2026-01-09 08:35:15'),(170,116,6,'Nhất là lúc bảo giải thích JOIN ?','2026-01-09 08:35:15'),(171,116,7,'Ai cũng từng trải qua.','2026-01-09 08:35:15'),(172,117,8,'Hai engine khác triết lý xử lý.','2026-01-09 08:35:15'),(173,118,10,'JOIN làm bài thi hay ra lắm.','2026-01-09 08:35:15'),(174,119,11,'Cách này học dễ hơn.','2026-01-09 08:35:15'),(175,120,13,'Comment cho có.','2026-01-09 08:35:15'),(176,121,14,'Chuẩn kiến thức.','2026-01-09 08:35:15'),(177,122,15,'Cuối kỳ ai cũng vậy ?','2026-01-09 08:35:15'),(178,122,16,'Ráng chút nữa là xong.','2026-01-09 08:35:15'),(179,116,17,'Bài này đúng nỗi ám ảnh.','2026-01-09 08:35:15');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `user_id` int NOT NULL,
  `friend_id` int NOT NULL,
  `status` enum('pending','accepted','blocked') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`friend_id`),
  KEY `friends_fk_user2` (`friend_id`),
  CONSTRAINT `friends_fk_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `friends_fk_user2` FOREIGN KEY (`friend_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (1,2,'accepted','2026-01-09 08:35:15'),(1,3,'accepted','2026-01-09 08:35:15'),(1,4,'accepted','2026-01-09 08:44:41'),(1,5,'accepted','2026-01-09 08:44:41'),(1,6,'accepted','2026-01-09 08:44:41'),(1,7,'accepted','2026-01-09 08:44:41'),(2,1,'accepted','2026-01-09 08:46:09'),(2,4,'accepted','2026-01-09 08:35:15'),(3,1,'accepted','2026-01-09 08:46:09'),(3,5,'pending','2026-01-09 08:35:15'),(4,1,'accepted','2026-01-09 08:46:09'),(4,6,'accepted','2026-01-09 08:35:15'),(5,2,'accepted','2026-01-09 08:46:09'),(5,7,'blocked','2026-01-09 08:35:15'),(6,2,'accepted','2026-01-09 08:46:09'),(6,7,'blocked','2026-01-09 08:46:27'),(6,8,'accepted','2026-01-09 08:35:15'),(7,3,'accepted','2026-01-09 08:46:09'),(7,9,'accepted','2026-01-09 08:35:15'),(8,4,'accepted','2026-01-09 08:46:09'),(8,9,'blocked','2026-01-09 08:46:27'),(8,10,'accepted','2026-01-09 08:35:15'),(9,5,'accepted','2026-01-09 08:46:09'),(9,11,'pending','2026-01-09 08:35:15'),(10,6,'accepted','2026-01-09 08:46:09'),(10,11,'blocked','2026-01-09 08:46:27'),(10,12,'accepted','2026-01-09 08:35:15'),(11,1,'pending','2026-01-09 08:46:18'),(11,13,'accepted','2026-01-09 08:35:15'),(12,1,'pending','2026-01-09 08:46:18'),(12,14,'pending','2026-01-09 08:35:15'),(13,2,'pending','2026-01-09 08:46:18'),(13,15,'accepted','2026-01-09 08:35:15'),(14,3,'pending','2026-01-09 08:46:18'),(14,16,'accepted','2026-01-09 08:35:15'),(15,4,'pending','2026-01-09 08:46:18'),(15,17,'blocked','2026-01-09 08:35:15'),(16,18,'accepted','2026-01-09 08:35:15'),(17,19,'accepted','2026-01-09 08:35:15'),(18,20,'pending','2026-01-09 08:35:15');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `likes_fk_users` (`user_id`),
  CONSTRAINT `likes_fk_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `likes_fk_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,2,'2026-01-09 08:35:15'),(1,3,'2026-01-09 08:35:15'),(1,4,'2026-01-09 08:35:15'),(2,1,'2026-01-09 08:35:15'),(2,5,'2026-01-09 08:35:15'),(2,6,'2026-01-09 08:35:15'),(3,7,'2026-01-09 08:35:15'),(3,8,'2026-01-09 08:35:15'),(4,9,'2026-01-09 08:35:15'),(4,10,'2026-01-09 08:35:15'),(5,11,'2026-01-09 08:35:15'),(5,12,'2026-01-09 08:35:15'),(6,13,'2026-01-09 08:35:15'),(6,14,'2026-01-09 08:35:15'),(7,15,'2026-01-09 08:35:15'),(7,16,'2026-01-09 08:35:15'),(8,17,'2026-01-09 08:35:15'),(8,18,'2026-01-09 08:35:15'),(9,19,'2026-01-09 08:35:15'),(9,20,'2026-01-09 08:35:15'),(10,2,'2026-01-09 08:35:15'),(11,3,'2026-01-09 08:35:15'),(12,4,'2026-01-09 08:35:15'),(13,5,'2026-01-09 08:35:15'),(14,6,'2026-01-09 08:35:15'),(31,1,'2026-01-09 08:35:15'),(31,2,'2026-01-09 08:35:15'),(31,3,'2026-01-09 08:35:15'),(32,4,'2026-01-09 08:35:15'),(32,5,'2026-01-09 08:35:15'),(33,6,'2026-01-09 08:35:15'),(33,7,'2026-01-09 08:35:15'),(33,8,'2026-01-09 08:35:15'),(34,9,'2026-01-09 08:35:15'),(34,10,'2026-01-09 08:35:15'),(35,11,'2026-01-09 08:35:15'),(35,12,'2026-01-09 08:35:15'),(36,13,'2026-01-09 08:35:15'),(36,14,'2026-01-09 08:35:15'),(37,15,'2026-01-09 08:35:15'),(37,16,'2026-01-09 08:35:15'),(38,17,'2026-01-09 08:35:15'),(38,18,'2026-01-09 08:35:15'),(39,19,'2026-01-09 08:35:15'),(39,20,'2026-01-09 08:35:15'),(40,1,'2026-01-09 08:35:15'),(40,2,'2026-01-09 08:35:15'),(40,3,'2026-01-09 08:35:15'),(41,2,'2026-01-09 08:35:15'),(41,4,'2026-01-09 08:35:15'),(41,7,'2026-01-09 08:35:15'),(41,9,'2026-01-09 08:35:15'),(42,1,'2026-01-09 08:35:15'),(43,5,'2026-01-09 08:35:15'),(43,8,'2026-01-09 08:35:15'),(44,6,'2026-01-09 08:35:15'),(44,10,'2026-01-09 08:35:15'),(44,11,'2026-01-09 08:35:15'),(44,12,'2026-01-09 08:35:15'),(46,3,'2026-01-09 08:35:15'),(47,15,'2026-01-09 08:35:15'),(47,16,'2026-01-09 08:35:15'),(48,18,'2026-01-09 08:35:15'),(48,19,'2026-01-09 08:35:15'),(48,20,'2026-01-09 08:35:15'),(49,2,'2026-01-09 08:35:15'),(50,4,'2026-01-09 08:35:15'),(50,6,'2026-01-09 08:35:15'),(52,7,'2026-01-09 08:35:15'),(53,8,'2026-01-09 08:35:15'),(53,9,'2026-01-09 08:35:15'),(53,10,'2026-01-09 08:35:15'),(55,2,'2026-01-09 08:35:15'),(55,3,'2026-01-09 08:35:15'),(55,4,'2026-01-09 08:35:15'),(55,5,'2026-01-09 08:35:15'),(55,6,'2026-01-09 08:35:15'),(55,7,'2026-01-09 08:35:15'),(55,8,'2026-01-09 08:35:15'),(56,1,'2026-01-09 08:35:15'),(56,9,'2026-01-09 08:35:15'),(56,10,'2026-01-09 08:35:15'),(57,11,'2026-01-09 08:35:15'),(59,12,'2026-01-09 08:35:15'),(59,13,'2026-01-09 08:35:15'),(59,14,'2026-01-09 08:35:15'),(59,15,'2026-01-09 08:35:15'),(61,16,'2026-01-09 08:35:15'),(63,17,'2026-01-09 08:35:15'),(65,18,'2026-01-09 08:35:15'),(65,19,'2026-01-09 08:35:15'),(66,2,'2026-01-09 08:35:15'),(66,4,'2026-01-09 08:35:15'),(66,6,'2026-01-09 08:35:15'),(66,7,'2026-01-09 08:35:15'),(66,8,'2026-01-09 08:35:15'),(67,1,'2026-01-09 08:35:15'),(67,3,'2026-01-09 08:35:15'),(68,5,'2026-01-09 08:35:15'),(68,9,'2026-01-09 08:35:15'),(68,10,'2026-01-09 08:35:15'),(68,11,'2026-01-09 08:35:15'),(69,12,'2026-01-09 08:35:15'),(70,13,'2026-01-09 08:35:15'),(70,14,'2026-01-09 08:35:15'),(70,15,'2026-01-09 08:35:15'),(70,16,'2026-01-09 08:35:15'),(70,17,'2026-01-09 08:35:15'),(71,18,'2026-01-09 08:35:15'),(72,19,'2026-01-09 08:35:15'),(72,20,'2026-01-09 08:35:15'),(73,2,'2026-01-09 08:35:15'),(73,3,'2026-01-09 08:35:15'),(74,5,'2026-01-09 08:35:15'),(74,6,'2026-01-09 08:35:15'),(74,7,'2026-01-09 08:35:15'),(74,8,'2026-01-09 08:35:15'),(75,9,'2026-01-09 08:35:15'),(75,10,'2026-01-09 08:35:15'),(75,11,'2026-01-09 08:35:15'),(75,12,'2026-01-09 08:35:15'),(75,13,'2026-01-09 08:35:15'),(76,14,'2026-01-09 08:35:15'),(76,15,'2026-01-09 08:35:15'),(76,16,'2026-01-09 08:35:15'),(77,17,'2026-01-09 08:35:15'),(78,18,'2026-01-09 08:35:15'),(78,19,'2026-01-09 08:35:15'),(78,20,'2026-01-09 08:35:15'),(79,1,'2026-01-09 08:35:15'),(80,2,'2026-01-09 08:35:15'),(80,3,'2026-01-09 08:35:15'),(80,4,'2026-01-09 08:35:15'),(80,5,'2026-01-09 08:35:15'),(81,2,'2026-01-09 08:35:15'),(81,4,'2026-01-09 08:35:15'),(82,5,'2026-01-09 08:35:15'),(82,6,'2026-01-09 08:35:15'),(82,7,'2026-01-09 08:35:15'),(82,8,'2026-01-09 08:35:15'),(83,1,'2026-01-09 08:35:15'),(83,9,'2026-01-09 08:35:15'),(84,10,'2026-01-09 08:35:15'),(84,11,'2026-01-09 08:35:15'),(84,12,'2026-01-09 08:35:15'),(84,13,'2026-01-09 08:35:15'),(84,14,'2026-01-09 08:35:15'),(85,15,'2026-01-09 08:35:15'),(86,16,'2026-01-09 08:35:15'),(87,17,'2026-01-09 08:35:15'),(87,18,'2026-01-09 08:35:15'),(87,19,'2026-01-09 08:35:15'),(88,2,'2026-01-09 08:35:15'),(88,3,'2026-01-09 08:35:15'),(88,4,'2026-01-09 08:35:15'),(88,5,'2026-01-09 08:35:15'),(88,6,'2026-01-09 08:35:15'),(89,4,'2026-01-09 08:35:15'),(89,5,'2026-01-09 08:35:15'),(90,6,'2026-01-09 08:35:15'),(91,7,'2026-01-09 08:35:15'),(91,8,'2026-01-09 08:35:15'),(91,9,'2026-01-09 08:35:15'),(92,10,'2026-01-09 08:35:15'),(92,11,'2026-01-09 08:35:15'),(93,12,'2026-01-09 08:35:15'),(93,13,'2026-01-09 08:35:15'),(93,14,'2026-01-09 08:35:15'),(93,18,'2026-01-09 08:35:15'),(94,1,'2026-01-09 08:35:15'),(94,2,'2026-01-09 08:35:15'),(94,3,'2026-01-09 08:35:15'),(94,4,'2026-01-09 08:35:15'),(94,5,'2026-01-09 08:35:15'),(94,6,'2026-01-09 08:35:15'),(94,7,'2026-01-09 08:35:15'),(94,18,'2026-01-09 08:35:15'),(95,8,'2026-01-09 08:35:15'),(96,9,'2026-01-09 08:35:15'),(97,10,'2026-01-09 08:35:15'),(97,11,'2026-01-09 08:35:15'),(97,12,'2026-01-09 08:35:15'),(97,13,'2026-01-09 08:35:15'),(97,18,'2026-01-09 08:35:15'),(98,2,'2026-01-09 08:35:15'),(98,3,'2026-01-09 08:35:15'),(98,4,'2026-01-09 08:35:15'),(98,5,'2026-01-09 08:35:15'),(98,6,'2026-01-09 08:35:15'),(98,19,'2026-01-09 08:35:15'),(99,1,'2026-01-09 08:35:15'),(99,7,'2026-01-09 08:35:15'),(100,9,'2026-01-09 08:35:15'),(101,10,'2026-01-09 08:35:15'),(101,11,'2026-01-09 08:35:15'),(101,12,'2026-01-09 08:35:15'),(101,13,'2026-01-09 08:35:15'),(101,19,'2026-01-09 08:35:15'),(102,14,'2026-01-09 08:35:15'),(102,15,'2026-01-09 08:35:15'),(103,16,'2026-01-09 08:35:15'),(103,17,'2026-01-09 08:35:15'),(103,18,'2026-01-09 08:35:15'),(104,19,'2026-01-09 08:35:15'),(105,1,'2026-01-09 08:35:15'),(105,2,'2026-01-09 08:35:15'),(105,20,'2026-01-09 08:35:15'),(106,3,'2026-01-09 08:35:15'),(106,4,'2026-01-09 08:35:15'),(106,5,'2026-01-09 08:35:15'),(106,6,'2026-01-09 08:35:15'),(106,19,'2026-01-09 08:35:15'),(107,3,'2026-01-09 08:35:15'),(107,6,'2026-01-09 08:35:15'),(107,10,'2026-01-09 08:35:15'),(108,8,'2026-01-09 08:35:15'),(108,9,'2026-01-09 08:35:15'),(108,10,'2026-01-09 08:35:15'),(108,11,'2026-01-09 08:35:15'),(109,12,'2026-01-09 08:35:15'),(109,13,'2026-01-09 08:35:15'),(110,10,'2026-01-09 08:35:15'),(110,14,'2026-01-09 08:35:15'),(110,15,'2026-01-09 08:35:15'),(110,16,'2026-01-09 08:35:15'),(110,17,'2026-01-09 08:35:15'),(110,18,'2026-01-09 08:35:15'),(111,1,'2026-01-09 08:35:15'),(111,2,'2026-01-09 08:35:15'),(111,3,'2026-01-09 08:35:15'),(111,4,'2026-01-09 08:35:15'),(112,5,'2026-01-09 08:35:15'),(112,6,'2026-01-09 08:35:15'),(112,7,'2026-01-09 08:35:15'),(113,8,'2026-01-09 08:35:15'),(114,9,'2026-01-09 08:35:15'),(114,10,'2026-01-09 08:35:15'),(114,11,'2026-01-09 08:35:15'),(114,12,'2026-01-09 08:35:15'),(115,10,'2026-01-09 08:35:15'),(115,13,'2026-01-09 08:35:15'),(115,14,'2026-01-09 08:35:15'),(115,15,'2026-01-09 08:35:15'),(115,16,'2026-01-09 08:35:15'),(115,17,'2026-01-09 08:35:15'),(116,1,'2026-01-09 08:35:15'),(116,2,'2026-01-09 08:35:15'),(116,3,'2026-01-09 08:35:15'),(116,4,'2026-01-09 08:35:15'),(116,5,'2026-01-09 08:35:15'),(116,6,'2026-01-09 08:35:15'),(116,7,'2026-01-09 08:35:15'),(116,8,'2026-01-09 08:35:15'),(116,9,'2026-01-09 08:35:15'),(116,10,'2026-01-09 08:35:15'),(116,11,'2026-01-09 08:35:15'),(116,12,'2026-01-09 08:35:15'),(116,17,'2026-01-09 08:35:15'),(116,18,'2026-01-09 08:35:15'),(117,13,'2026-01-09 08:35:15'),(117,14,'2026-01-09 08:35:15'),(118,15,'2026-01-09 08:35:15'),(118,16,'2026-01-09 08:35:15'),(119,17,'2026-01-09 08:35:15'),(119,18,'2026-01-09 08:35:15'),(119,19,'2026-01-09 08:35:15'),(120,20,'2026-01-09 08:35:15'),(121,1,'2026-01-09 08:35:15'),(121,2,'2026-01-09 08:35:15'),(121,3,'2026-01-09 08:35:15'),(122,4,'2026-01-09 08:35:15'),(122,5,'2026-01-09 08:35:15'),(122,6,'2026-01-09 08:35:15'),(122,7,'2026-01-09 08:35:15');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`),
  KEY `messages_fk_sender` (`sender_id`),
  KEY `messages_fk_receiver` (`receiver_id`),
  KEY `messages_created_at_ix` (`created_at` DESC),
  CONSTRAINT `messages_fk_receiver` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `messages_fk_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,2,'Chào Bình, hôm nay bạn học tới đâu rồi?','2026-01-09 08:35:15'),(2,2,1,'Mình đang luyện JOIN, hơi chóng mặt ?','2026-01-09 08:35:15'),(3,3,4,'Duy ơi, share mình tài liệu MySQL 8 nhé.','2026-01-09 08:35:15'),(4,4,3,'Ok Chi, để mình gửi link sau.','2026-01-09 08:35:15'),(5,5,6,'Hiếu ơi, tối nay học transaction không?','2026-01-09 08:35:15'),(6,6,5,'Ok Hà, 8h nhé!','2026-01-09 08:35:15'),(7,3,7,'Post của bạn nhìn giống dữ liệu thật ghê.','2026-01-09 08:35:15'),(8,7,3,'Ừ, mình cố tình thêm không đều đó.','2026-01-09 08:35:15'),(9,1,6,'Index nhiều quá có nên xoá bớt không?','2026-01-09 08:35:15'),(10,6,1,'Xem EXPLAIN rồi quyết định.','2026-01-09 08:35:15'),(11,12,9,'Feed chạy ổn chưa?','2026-01-09 08:35:15'),(12,9,12,'Ổn rồi, chuẩn bị demo.','2026-01-09 08:35:15'),(13,2,1,'Feed toàn thấy bài của bạn luôn ?','2026-01-09 08:35:15'),(14,1,2,'Spam để test dữ liệu thôi mà.','2026-01-09 08:35:15'),(15,11,14,'Import DB lớn có hay lỗi không?','2026-01-09 08:35:15'),(16,14,11,'Có, phải chia nhỏ file ra.','2026-01-09 08:35:15'),(17,19,20,'Cuối kỳ đồ án căng thật.','2026-01-09 08:35:15'),(18,20,19,'Ráng xong là nhẹ người liền.','2026-01-09 08:35:15');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `notifications_fk_users` (`user_id`),
  CONSTRAINT `notifications_fk_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,'like','Bình đã thích bài viết của bạn.',0,'2026-01-09 08:35:15'),(2,1,'comment','Chi đã bình luận bài viết của bạn.',0,'2026-01-09 08:35:15'),(3,2,'friend','An đã gửi lời mời kết bạn.',0,'2026-01-09 08:35:15'),(4,3,'message','Bạn có tin nhắn mới từ Duy.',0,'2026-01-09 08:35:15'),(5,4,'like','Hà đã thích bài viết của bạn.',0,'2026-01-09 08:35:15'),(6,5,'comment','Hiếu đã bình luận bài viết của bạn.',0,'2026-01-09 08:35:15'),(7,6,'friend','Hoa đã chấp nhận lời mời kết bạn.',0,'2026-01-09 08:35:15'),(8,7,'comment','Bạn có bình luận mới.',0,'2026-01-09 08:35:15'),(9,8,'like','Bài viết của bạn có lượt thích mới.',0,'2026-01-09 08:35:15'),(10,9,'message','Bạn có tin nhắn mới.',0,'2026-01-09 08:35:15'),(11,10,'friend','Bạn có lời mời kết bạn.',0,'2026-01-09 08:35:15'),(12,11,'like','Một người đã thích bài viết của bạn.',0,'2026-01-09 08:35:15'),(13,12,'comment','Có người vừa bình luận bài viết của bạn.',0,'2026-01-09 08:35:15');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`),
  KEY `posts_fk_users` (`user_id`),
  KEY `posts_created_at_ix` (`created_at` DESC),
  CONSTRAINT `posts_fk_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'Chào mọi người! Hôm nay mình bắt đầu học MySQL.','2026-01-09 08:35:15'),(2,2,'Ai có tài liệu SQL cơ bản cho người mới không?','2026-01-09 08:35:15'),(3,3,'Mình đang luyện JOIN, hơi rối nhưng vui.','2026-01-09 08:35:15'),(4,4,'Thiết kế ERD xong thấy dữ liệu rõ ràng hơn hẳn.','2026-01-09 08:35:15'),(5,5,'Học chuẩn hoá (normalization) giúp tránh trùng dữ liệu.','2026-01-09 08:35:15'),(6,6,'Tối ưu truy vấn: nhớ tạo index đúng chỗ.','2026-01-09 08:35:15'),(7,7,'Mình đang làm mini mạng xã hội bằng MySQL.','2026-01-09 08:35:15'),(8,8,'Bạn nào biết khác nhau giữa InnoDB và MyISAM không?','2026-01-09 08:35:15'),(9,9,'Uống cà phê rồi mới code tiếp thôi ☕','2026-01-09 08:35:15'),(10,10,'Hôm nay học GROUP BY và HAVING.','2026-01-09 08:35:15'),(11,11,'Subquery khó nhưng dùng quen sẽ “đã”.','2026-01-09 08:35:15'),(12,12,'Mình vừa tạo VIEW để xem thống kê bài viết.','2026-01-09 08:35:15'),(13,13,'Trigger dùng để tự tạo thông báo khi có comment.','2026-01-09 08:35:15'),(14,14,'Transaction quan trọng để tránh lỗi dữ liệu giữa chừng.','2026-01-09 08:35:15'),(15,15,'ACID là nền tảng của hệ quản trị CSDL.','2026-01-09 08:35:15'),(16,16,'Mình đang luyện câu truy vấn top bài nhiều like nhất.','2026-01-09 08:35:15'),(17,17,'Có ai muốn cùng luyện SQL mỗi ngày không?','2026-01-09 08:35:15'),(18,18,'Tạo bảng có khoá ngoại giúp dữ liệu “sạch” hơn.','2026-01-09 08:35:15'),(19,19,'Đang tìm cách sinh dữ liệu giả để test hiệu năng.','2026-01-09 08:35:15'),(20,20,'Backup database thường xuyên nhé mọi người!','2026-01-09 08:35:15'),(21,1,'Bài 2: hôm nay mình luyện insert dữ liệu tiếng Việt.','2026-01-09 08:35:15'),(22,2,'Lưu tiếng Việt nhớ dùng utf8mb4.','2026-01-09 08:35:15'),(23,3,'Đừng quên kiểm tra collation nữa.','2026-01-09 08:35:15'),(24,4,'Query phức tạp thì chia nhỏ ra debug dễ hơn.','2026-01-09 08:35:15'),(25,5,'Viết query xong nhớ EXPLAIN để xem plan.','2026-01-09 08:35:15'),(26,6,'Index nhiều quá cũng không tốt, phải cân bằng.','2026-01-09 08:35:15'),(27,7,'Mình thêm chức năng kết bạn: pending/accepted.','2026-01-09 08:35:15'),(28,8,'Nhắn tin (messages) cũng là quan hệ 2 user.','2026-01-09 08:35:15'),(29,9,'Notification giúp mô phỏng giống Facebook.','2026-01-09 08:35:15'),(30,10,'Cuối tuần mình tổng hợp 50 bài tập SQL.','2026-01-09 08:35:15'),(31,11,'Hôm nay mình tìm hiểu về Stored Procedure trong MySQL.','2026-01-09 08:35:15'),(32,12,'Phân quyền user trong MySQL cũng quan trọng không kém.','2026-01-09 08:35:15'),(33,13,'Ai đang dùng MySQL Workbench giống mình không?','2026-01-09 08:35:15'),(34,14,'Mình thử import database lớn thấy hơi chậm.','2026-01-09 08:35:15'),(35,15,'Backup bằng mysqldump khá tiện.','2026-01-09 08:35:15'),(36,16,'Replication giúp tăng khả năng chịu tải.','2026-01-09 08:35:15'),(37,17,'MySQL và PostgreSQL khác nhau khá nhiều đấy.','2026-01-09 08:35:15'),(38,18,'Mình đang học tối ưu query cho bảng lớn.','2026-01-09 08:35:15'),(39,19,'Partition table có ai dùng chưa?','2026-01-09 08:35:15'),(40,20,'Học database cần kiên nhẫn thật sự.','2026-01-09 08:35:15'),(41,3,'Hôm nay mình ngồi debug SQL gần 3 tiếng ?','2026-01-09 08:35:15'),(42,7,'JOIN nhiều bảng quá nhìn hoa cả mắt.','2026-01-09 08:35:15'),(43,7,'Làm project CSDL mới thấy thiết kế ban đầu quan trọng thế nào.','2026-01-09 08:35:15'),(44,12,'Mình vừa thử dùng EXPLAIN, thấy query chạy khác hẳn.','2026-01-09 08:35:15'),(45,1,'Tối nay mình luyện thêm GROUP BY + HAVING.','2026-01-09 08:35:15'),(46,1,'Có ai từng quên index rồi query chậm kinh khủng chưa?','2026-01-09 08:35:15'),(47,15,'Backup dữ liệu mà quên test restore là toang ?','2026-01-09 08:35:15'),(48,9,'Mình đang test feed bài viết giống Facebook.','2026-01-09 08:35:15'),(49,9,'Post này chỉ để test notification.','2026-01-09 08:35:15'),(50,18,'Partition table có vẻ hợp với log hệ thống.','2026-01-09 08:35:15'),(51,4,'FK giúp dữ liệu sạch hơn nhưng insert hơi chậm.','2026-01-09 08:35:15'),(52,6,'Index nhiều quá cũng không hẳn là tốt.','2026-01-09 08:35:15'),(53,6,'Mình vừa xoá bớt index thấy insert nhanh hơn.','2026-01-09 08:35:15'),(54,20,'Học database cần kiên nhẫn thật sự.','2026-01-09 08:35:15'),(55,1,'Spam nhẹ bài thứ 3 trong ngày ?','2026-01-09 08:35:15'),(56,1,'Lại là mình, test feed xem sao.','2026-01-09 08:35:15'),(57,1,'Ai bảo làm mạng xã hội là dễ đâu.','2026-01-09 08:35:15'),(58,5,'Hôm nay mình chỉ ngồi đọc tài liệu DB.','2026-01-09 08:35:15'),(59,8,'Index composite dùng sai thứ tự là coi như bỏ.','2026-01-09 08:35:15'),(60,11,'Stored Procedure đôi khi khó debug thật.','2026-01-09 08:35:15'),(61,11,'Nhưng dùng quen thì khá tiện.','2026-01-09 08:35:15'),(62,14,'Import database lớn nên chia nhỏ file.','2026-01-09 08:35:15'),(63,17,'PostgreSQL và MySQL mỗi thằng mạnh một kiểu.','2026-01-09 08:35:15'),(64,19,'Log table mà không partition là rất mệt.','2026-01-09 08:35:15'),(65,20,'Cuối kỳ ai cũng vật vã với đồ án ?','2026-01-09 08:35:15'),(66,2,'Hôm nay mình test truy vấn feed người dùng.','2026-01-09 08:35:15'),(67,2,'Feed mà load chậm là user thoát liền.','2026-01-09 08:35:15'),(68,4,'Thiết kế CSDL tốt giúp code backend nhàn hơn.','2026-01-09 08:35:15'),(69,10,'Post này đăng thử xem có ai đọc không.','2026-01-09 08:35:15'),(70,13,'Có nên dùng denormalization để tăng hiệu năng?','2026-01-09 08:35:15'),(71,16,'Index nên tạo sau khi đã có dữ liệu mẫu.','2026-01-09 08:35:15'),(72,18,'Partition theo RANGE vs HASH, mọi người hay dùng cái nào?','2026-01-09 08:35:15'),(73,3,'Lâu rồi mới đăng bài, mọi người học SQL tới đâu rồi?','2026-01-09 08:35:15'),(74,6,'Index chỉ hiệu quả khi WHERE/JOIN đúng cột.','2026-01-09 08:35:15'),(75,8,'Mình nghĩ dùng index càng nhiều càng tốt ?','2026-01-09 08:35:15'),(76,12,'So sánh B-Tree index và Hash index trong MySQL.','2026-01-09 08:35:15'),(77,15,'Post này chỉ để test dữ liệu thôi.','2026-01-09 08:35:15'),(78,18,'Partition theo RANGE rất hợp cho bảng log.','2026-01-09 08:35:15'),(79,18,'Partition mà không có where theo key thì cũng vô nghĩa.','2026-01-09 08:35:15'),(80,20,'Deadline đồ án CSDL dí quá rồi ?','2026-01-09 08:35:15'),(81,5,'Lâu quá không đụng SQL, hôm nay mở lại thấy quên nhiều thứ ghê.','2026-01-09 08:35:15'),(82,7,'Làm project thật mới thấy dữ liệu test quan trọng cỡ nào.','2026-01-09 08:35:15'),(83,9,'Code chạy đúng nhưng vẫn thấy lo lo ?','2026-01-09 08:35:15'),(84,13,'Theo mọi người có nên đánh index cho cột boolean không?','2026-01-09 08:35:15'),(85,16,'Mình vừa đọc xong tài liệu về query cache.','2026-01-09 08:35:15'),(86,18,'Index không dùng thì optimizer cũng bỏ qua thôi.','2026-01-09 08:35:15'),(87,18,'Đừng tin cảm giác, hãy tin EXPLAIN.','2026-01-09 08:35:15'),(88,20,'Mới sửa xong bug lại phát sinh bug khác ?','2026-01-09 08:35:15'),(89,1,'Test tiếp dữ liệu cho phần thống kê user hoạt động.','2026-01-09 08:35:15'),(90,4,'Làm CSDL nhớ nghĩ tới dữ liệu 1–2 năm sau.','2026-01-09 08:35:15'),(91,6,'Mọi người ơi, có phải index càng nhiều càng tốt không?','2026-01-09 08:35:15'),(92,8,'Mình thấy boolean cũng nên index cho chắc ?','2026-01-09 08:35:15'),(93,11,'Có ai cảm thấy học DB khó hơn học code không?','2026-01-09 08:35:15'),(94,14,'Mình từng quên WHERE trong câu UPDATE ?','2026-01-09 08:35:15'),(95,17,'Mình toàn vào đọc chứ ít khi comment.','2026-01-09 08:35:15'),(96,19,'Clustered index và non-clustered index khác nhau thế nào?','2026-01-09 08:35:15'),(97,20,'Deadline càng gần bug càng nhiều ?','2026-01-09 08:35:15'),(98,2,'Mọi người thường debug query chậm theo thứ tự nào?','2026-01-09 08:35:15'),(99,3,'Ngày xưa mình từng SELECT * và trả giá ?','2026-01-09 08:35:15'),(100,5,'Mình đang đọc lại tài liệu normalization.','2026-01-09 08:35:15'),(101,7,'Test dữ liệu nhỏ chạy nhanh, lên dữ liệu lớn là khác liền.','2026-01-09 08:35:15'),(102,10,'INNER JOIN và LEFT JOIN khác nhau dễ nhớ không?','2026-01-09 08:35:15'),(103,12,'Nên viết query rõ ràng trước rồi mới tối ưu.','2026-01-09 08:35:15'),(104,15,'Post này để test thống kê thôi.','2026-01-09 08:35:15'),(105,18,'Index không dùng trong WHERE thì vô nghĩa.','2026-01-09 08:35:15'),(106,20,'Càng gần deadline càng dễ commit lỗi ?','2026-01-09 08:35:15'),(107,1,'Test thêm dữ liệu cho biểu đồ thống kê like/comment.','2026-01-09 08:35:15'),(108,3,'Tối ưu query không phải lúc nào cũng là thêm index.','2026-01-09 08:35:15'),(109,6,'Mọi người thường đặt index trước hay sau khi có dữ liệu?','2026-01-09 08:35:15'),(110,8,'Theo mình thấy optimizer đôi khi chọn plan không tốt.','2026-01-09 08:35:15'),(111,11,'Học DB nhiều lúc thấy nản thật ?','2026-01-09 08:35:15'),(112,13,'Composite index nên sắp xếp cột theo selectivity.','2026-01-09 08:35:15'),(113,16,'Mình đang đọc về isolation level.','2026-01-09 08:35:15'),(114,18,'Index chỉ giúp khi query dùng đúng cột.','2026-01-09 08:35:15'),(115,20,'Hy vọng đồ án này qua môn là mừng rồi ?','2026-01-09 08:35:15'),(116,4,'Có ai từng bị thầy hỏi truy vấn mà não trống rỗng chưa? ?','2026-01-09 08:35:15'),(117,7,'So sánh execution plan giữa MySQL và PostgreSQL.','2026-01-09 08:35:15'),(118,9,'Mình đang ôn lại các dạng JOIN.','2026-01-09 08:35:15'),(119,12,'Luôn viết SELECT trước rồi mới nghĩ tới index.','2026-01-09 08:35:15'),(120,15,'Post thêm để test thống kê.','2026-01-09 08:35:15'),(121,18,'Index không dùng trong JOIN thì cũng vô ích.','2026-01-09 08:35:15'),(122,20,'Qua đồ án này chắc bạc tóc ?','2026-01-09 08:35:15');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Nam','Nữ') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Nam',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'an','Nguyễn Văn An','Nam','an@gmail.com','123','1990-01-01','Hà Nội','2026-01-09 08:35:15'),(2,'binh','Trần Thị Bình','Nữ','binh@gmail.com','123','1992-02-15','TP.HCM','2026-01-09 08:35:15'),(3,'chi','Lê Minh Chi','Nữ','chi@gmail.com','123','1991-03-10','Đà Nẵng','2026-01-09 08:35:15'),(4,'duy','Phạm Quốc Duy','Nam','duy@gmail.com','123','1990-05-20','Hải Phòng','2026-01-09 08:35:15'),(5,'ha','Vũ Thu Hà','Nữ','ha@gmail.com','123','1994-07-25','Hà Nội','2026-01-09 08:35:15'),(6,'hieu','Đặng Hữu Hiếu','Nam','hieu@gmail.com','123','1993-11-30','TP.HCM','2026-01-09 08:35:15'),(7,'hoa','Ngô Mai Hoa','Nữ','hoa@gmail.com','123','1995-04-18','Đà Nẵng','2026-01-09 08:35:15'),(8,'khanh','Bùi Khánh Linh','Nữ','khanh@gmail.com','123','1992-09-12','TP.HCM','2026-01-09 08:35:15'),(9,'lam','Hoàng Đức Lâm','Nam','lam@gmail.com','123','1991-10-05','Hà Nội','2026-01-09 08:35:15'),(10,'linh','Phan Mỹ Linh','Nữ','linh@gmail.com','123','1994-06-22','Đà Nẵng','2026-01-09 08:35:15'),(11,'minh','Nguyễn Minh','Nam','minh@gmail.com','123','1990-12-01','Hà Nội','2026-01-09 08:35:15'),(12,'nam','Trần Quốc Nam','Nam','nam@gmail.com','123','1992-02-05','TP.HCM','2026-01-09 08:35:15'),(13,'nga','Lý Thúy Nga','Nữ','nga@gmail.com','123','1993-08-16','Hà Nội','2026-01-09 08:35:15'),(14,'nhan','Đỗ Hoàng Nhân','Nam','nhan@gmail.com','123','1991-04-20','TP.HCM','2026-01-09 08:35:15'),(15,'phuong','Tạ Kim Phương','Nữ','phuong@gmail.com','123','1990-05-14','Đà Nẵng','2026-01-09 08:35:15'),(16,'quang','Lê Quang','Nam','quang@gmail.com','123','1992-09-25','Hà Nội','2026-01-09 08:35:15'),(17,'son','Nguyễn Thành Sơn','Nam','son@gmail.com','123','1994-03-19','TP.HCM','2026-01-09 08:35:15'),(18,'thao','Trần Thảo','Nữ','thao@gmail.com','123','1993-11-07','Đà Nẵng','2026-01-09 08:35:15'),(19,'trang','Phạm Thu Trang','Nữ','trang@gmail.com','123','1995-06-02','Hà Nội','2026-01-09 08:35:15'),(20,'tuan','Đinh Minh Tuấn','Nam','tuan@gmail.com','123','1990-07-30','TP.HCM','2026-01-09 08:35:15'),(21,'dung','Hoàng Tuấn Dũng','Nam','dung@gmail.com','123','1993-05-10','Hải Phòng','2026-01-09 08:35:15'),(22,'yen','Phạm Hải Yến','Nữ','yen@gmail.com','123','1995-08-22','Hà Nội','2026-01-09 08:35:15'),(23,'thanh','Lê Văn Thành','Nam','thanh@gmail.com','123','1991-12-15','Cần Thơ','2026-01-09 08:35:15'),(24,'mai','Nguyễn Tuyết Mai','Nữ','mai@gmail.com','123','1994-02-28','TP.HCM','2026-01-09 08:35:15'),(25,'vinh','Trần Quang Vinh','Nam','vinh@gmail.com','123','1992-09-05','Đà Nẵng','2026-01-09 08:35:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_user_activity_2`
--

DROP TABLE IF EXISTS `view_user_activity_2`;
/*!50001 DROP VIEW IF EXISTS `view_user_activity_2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_user_activity_2` AS SELECT 
 1 AS `user_id`,
 1 AS `full_name`,
 1 AS `total_posts`,
 1 AS `total_friends`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_user_activity_2`
--

/*!50001 DROP VIEW IF EXISTS `view_user_activity_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_user_activity_2` AS select `u`.`user_id` AS `user_id`,`u`.`full_name` AS `full_name`,(select count(0) from `posts` `p` where (`p`.`user_id` = `u`.`user_id`)) AS `total_posts`,(select count(0) from `friends` `f` where ((`f`.`user_id` = `u`.`user_id`) and (`f`.`status` = 'accepted'))) AS `total_friends` from `users` `u` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-09  8:56:42
