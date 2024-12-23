CREATE DATABASE  IF NOT EXISTS `web` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `web`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '使用者id',
  `username` varchar(50) NOT NULL COMMENT '使用者名稱',
  `password_hash` varchar(255) NOT NULL COMMENT '使用者Hash密碼',
  `salt` varchar(255) NOT NULL COMMENT '隨機鹽',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT '電子郵件',
  `ACTIVE` tinyint(1) DEFAULT '0' COMMENT '帳號啟動',
  `ROLE` varchar(50) NOT NULL DEFAULT 'ROLE_USER' COMMENT '角色權限',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin','+m3xT0jBpZuRdfRWJ1EWfrrJsYCAAa6TFKrI4h0mzn4=','LLz7o+LHKkFa3L6n6sRPmw==','snak2300@gmail.com',1,'ROLE_ADMIN'),(3,'user','oGU4lJxLPIjQroNE305WgyPjE7MPaxjNroScZKupSqU=','/4vvq/rLwuMIAJHtUATb/Q==','snak2300@yahoo.com.tw',0,'ROLE_USER'),(4,'mary','9U7+bCzODdHtT3XvsbLI40Sq15E4A3e8Sb9ndVKejwU=','fiBov+KFcSr7GrBVNW+wHw==','mary@gmail.com',0,'ROLE_USER'),(7,'john','DEU6ScmXpMsGcRlglFMHt+FwfUsgEjycSLvWwmndaEU=','+N+1DEKH74+Mpl2M30QPig==','john@gmail.com',0,'ROLE_USER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06  9:39:18
