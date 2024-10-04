-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: escola_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `GradeID` int(11) NOT NULL AUTO_INCREMENT,
  `TurmaID` int(11) DEFAULT NULL,
  `DisciplinaID` int(11) DEFAULT NULL,
  `DiaSemana` varchar(15) DEFAULT NULL,
  `HorarioInicio` time DEFAULT NULL,
  `HorarioFim` time DEFAULT NULL,
  PRIMARY KEY (`GradeID`),
  KEY `TurmaID` (`TurmaID`),
  KEY `DisciplinaID` (`DisciplinaID`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`TurmaID`) REFERENCES `turma` (`TurmaID`),
  CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`DisciplinaID`) REFERENCES `disciplina` (`DisciplinaID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,2,2,'Segunda-feira','07:30:00','08:15:00'),(2,2,3,'Segunda-feira','08:20:00','09:05:00'),(3,2,4,'Segunda-feira','09:10:00','09:55:00'),(4,2,5,'Segunda-feira','10:00:00','10:45:00'),(5,2,6,'Segunda-feira','10:50:00','11:00:00'),(6,2,7,'Terça-feira','07:30:00','08:15:00'),(7,2,1,'Terça-feira','08:20:00','09:05:00'),(8,2,2,'Terça-feira','09:10:00','09:55:00'),(9,2,3,'Terça-feira','10:00:00','10:45:00'),(10,2,4,'Terça-feira','10:50:00','11:00:00'),(11,2,5,'Quarta-feira','07:30:00','08:15:00'),(12,2,6,'Quarta-feira','08:20:00','09:05:00'),(13,2,7,'Quarta-feira','09:10:00','09:55:00'),(14,2,1,'Quarta-feira','10:00:00','10:45:00'),(15,2,2,'Quarta-feira','10:50:00','11:00:00'),(16,2,2,'Segunda-feira','07:30:00','08:15:00'),(17,2,3,'Segunda-feira','08:20:00','09:05:00'),(18,2,4,'Segunda-feira','09:10:00','09:55:00'),(19,2,5,'Segunda-feira','10:00:00','10:45:00'),(20,2,6,'Segunda-feira','10:50:00','11:00:00'),(21,2,7,'Terça-feira','07:30:00','08:15:00'),(22,2,1,'Terça-feira','08:20:00','09:05:00'),(23,2,2,'Terça-feira','09:10:00','09:55:00'),(24,2,3,'Terça-feira','10:00:00','10:45:00'),(25,2,4,'Terça-feira','10:50:00','11:00:00'),(26,2,5,'Quarta-feira','07:30:00','08:15:00'),(27,2,6,'Quarta-feira','08:20:00','09:05:00'),(28,2,7,'Quarta-feira','09:10:00','09:55:00'),(29,2,1,'Quarta-feira','10:00:00','10:45:00'),(30,2,2,'Quarta-feira','10:50:00','11:00:00'),(31,2,3,'Quinta-feira','07:30:00','08:15:00'),(32,2,4,'Quinta-feira','08:20:00','09:05:00'),(33,2,5,'Quinta-feira','09:10:00','09:55:00'),(34,2,6,'Quinta-feira','10:00:00','10:45:00'),(35,2,7,'Quinta-feira','10:50:00','11:00:00'),(36,2,1,'Sexta-feira','07:30:00','08:15:00'),(37,2,2,'Sexta-feira','08:20:00','09:05:00'),(38,2,3,'Sexta-feira','09:10:00','09:55:00'),(39,2,4,'Sexta-feira','10:00:00','10:45:00'),(40,2,5,'Sexta-feira','10:50:00','11:00:00'),(41,1,1,'Segunda-feira','07:30:00','08:15:00'),(42,1,2,'Segunda-feira','08:20:00','09:05:00'),(43,1,3,'Segunda-feira','09:10:00','09:55:00'),(44,1,4,'Segunda-feira','10:00:00','10:45:00'),(45,1,5,'Segunda-feira','10:50:00','11:00:00'),(46,1,6,'Terça-feira','07:30:00','08:15:00'),(47,1,7,'Terça-feira','08:20:00','09:05:00'),(48,1,1,'Terça-feira','09:10:00','09:55:00'),(49,1,2,'Terça-feira','10:00:00','10:45:00'),(50,1,3,'Terça-feira','10:50:00','11:00:00'),(51,1,4,'Quarta-feira','07:30:00','08:15:00'),(52,1,5,'Quarta-feira','08:20:00','09:05:00'),(53,1,6,'Quarta-feira','09:10:00','09:55:00'),(54,1,7,'Quarta-feira','10:00:00','10:45:00'),(55,1,1,'Quarta-feira','10:50:00','11:00:00'),(56,1,2,'Quinta-feira','07:30:00','08:15:00'),(57,1,3,'Quinta-feira','08:20:00','09:05:00'),(58,1,4,'Quinta-feira','09:10:00','09:55:00'),(59,1,5,'Quinta-feira','10:00:00','10:45:00'),(60,1,6,'Quinta-feira','10:50:00','11:00:00'),(61,1,7,'Sexta-feira','07:30:00','08:15:00'),(62,1,1,'Sexta-feira','08:20:00','09:05:00'),(63,1,2,'Sexta-feira','09:10:00','09:55:00'),(64,1,3,'Sexta-feira','10:00:00','10:45:00'),(65,1,4,'Sexta-feira','10:50:00','11:00:00'),(66,3,3,'Segunda-feira','07:30:00','08:15:00'),(67,3,4,'Segunda-feira','08:20:00','09:05:00'),(68,3,5,'Segunda-feira','09:10:00','09:55:00'),(69,3,6,'Segunda-feira','10:00:00','10:45:00'),(70,3,7,'Segunda-feira','10:50:00','11:00:00'),(71,3,1,'Terça-feira','07:30:00','08:15:00'),(72,3,2,'Terça-feira','08:20:00','09:05:00'),(73,3,3,'Terça-feira','09:10:00','09:55:00'),(74,3,4,'Terça-feira','10:00:00','10:45:00'),(75,3,5,'Terça-feira','10:50:00','11:00:00'),(76,3,6,'Quarta-feira','07:30:00','08:15:00'),(77,3,7,'Quarta-feira','08:20:00','09:05:00'),(78,3,1,'Quarta-feira','09:10:00','09:55:00'),(79,3,2,'Quarta-feira','10:00:00','10:45:00'),(80,3,3,'Quarta-feira','10:50:00','11:00:00');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 23:19:10
