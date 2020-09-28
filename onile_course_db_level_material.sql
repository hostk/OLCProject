-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: onile_course_db
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `level_material`
--

DROP TABLE IF EXISTS `level_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level_material` (
  `level_material_id` bigint NOT NULL,
  `level_material_name` varchar(255) DEFAULT NULL,
  `photopath` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `level_id` bigint DEFAULT NULL,
  `questions_question_id` bigint DEFAULT NULL,
  `question_id` bigint DEFAULT NULL,
  PRIMARY KEY (`level_material_id`),
  KEY `FK3ulnpiejfmh10dykgdln2v2qq` (`level_id`),
  KEY `FKj5tx5qol51h4au61qtk7leyhj` (`questions_question_id`),
  KEY `FKbi4vcmhd1k1nxpqdjbet0g1gm` (`question_id`),
  CONSTRAINT `FK3ulnpiejfmh10dykgdln2v2qq` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`),
  CONSTRAINT `FKbi4vcmhd1k1nxpqdjbet0g1gm` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`),
  CONSTRAINT `FKj5tx5qol51h4au61qtk7leyhj` FOREIGN KEY (`questions_question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_material`
--

LOCK TABLES `level_material` WRITE;
/*!40000 ALTER TABLE `level_material` DISABLE KEYS */;
INSERT INTO `level_material` VALUES (3,'sfsbv','viv4.jpg','pdf',NULL,NULL,NULL),(4,'oopbasic','SE1-01_Java_Basic_Overview(720p).mp4','vedio',NULL,NULL,NULL);
/*!40000 ALTER TABLE `level_material` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-28 21:55:05
