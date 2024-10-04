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
-- Table structure for table `avisos`
--

DROP TABLE IF EXISTS `avisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avisos` (
  `AvisoID` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) DEFAULT NULL,
  `Conteudo` text DEFAULT NULL,
  `DataHora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ProfessorID` int(11) DEFAULT NULL,
  `TurmaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AvisoID`),
  KEY `ProfessorID` (`ProfessorID`),
  KEY `TurmaID` (`TurmaID`),
  CONSTRAINT `avisos_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professor` (`ProfessorID`),
  CONSTRAINT `avisos_ibfk_2` FOREIGN KEY (`TurmaID`) REFERENCES `turma` (`TurmaID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avisos`
--

LOCK TABLES `avisos` WRITE;
/*!40000 ALTER TABLE `avisos` DISABLE KEYS */;
INSERT INTO `avisos` VALUES (1,'Prova de Matemática','A prova de Matemática será realizada no dia 22/02/2024.','2024-02-15 13:00:00',1,1),(2,'Entrega de Trabalho de Matemática','O trabalho de Matemática deve ser entregue até o dia 28/02/2024.','2024-02-15 13:00:00',1,1),(3,'Prova de Matemática','A prova de Matemática será realizada no dia 23/02/2024.','2024-02-15 13:00:00',1,2),(4,'Entrega de Trabalho de Matemática','O trabalho de Matemática deve ser entregue até o dia 28/02/2024.','2024-02-15 13:00:00',1,2),(5,'Prova de Matemática','A prova de Matemática será realizada no dia 24/02/2024.','2024-02-15 13:00:00',1,3),(6,'Entrega de Trabalho de Matemática','O trabalho de Matemática deve ser entregue até o dia 28/02/2024.','2024-02-15 13:00:00',1,3),(7,'Prova de História','A prova de História será realizada no dia 24/02/2024.','2024-02-17 12:00:00',2,1),(8,'Entrega de Trabalho de História','O trabalho de História deve ser entregue até o dia 29/02/2024.','2024-03-01 16:59:00',2,1),(9,'Prova de História','A prova de História será realizada no dia 24/02/2024.','2024-02-17 12:00:00',2,2),(10,'Entrega de Trabalho de História','O trabalho de História deve ser entregue até o dia 29/02/2024.','2024-03-20 16:59:00',2,2),(11,'Prova de História','A prova de História será realizada no dia 25/02/2024.','2024-02-17 12:00:00',2,3),(12,'Entrega de Trabalho de História','O trabalho de História deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',2,3),(13,'Prova de Português','A prova de Português será realizada no dia 25/02/2024.','2024-02-17 12:00:00',3,1),(14,'Entrega de Trabalho de Português','O trabalho de Português deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',3,1),(15,'Prova de Português','A prova de Português será realizada no dia 25/02/2024.','2024-02-17 12:00:00',3,2),(16,'Entrega de Trabalho de Português','O trabalho de Português deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',3,2),(17,'Prova de Português','A prova de Português será realizada no dia 25/02/2024.','2024-02-17 12:00:00',3,3),(18,'Entrega de Trabalho de Português','O trabalho de Português deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',3,3),(19,'Prova de Ciências','A prova de Ciências será realizada no dia 25/02/2024.','2024-02-17 12:00:00',4,1),(20,'Entrega de Trabalho de Ciências','O trabalho de Ciências deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',4,1),(21,'Prova de Ciências','A prova de Ciências será realizada no dia 25/02/2024.','2024-02-17 12:00:00',4,2),(22,'Entrega de Trabalho de Ciências','O trabalho de Ciências deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',4,2),(23,'Prova de Ciências','A prova de Ciências será realizada no dia 25/02/2024.','2024-02-17 12:00:00',4,3),(24,'Entrega de Trabalho de Ciências','O trabalho de Ciências deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',4,3),(25,'Prova de Geografia','A prova de Geografia será realizada no dia 25/02/2024.','2024-02-17 12:00:00',5,1),(26,'Entrega de Trabalho de Geografia','O trabalho de Geografia deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',5,1),(27,'Prova de Geografia','A prova de Geografia será realizada no dia 25/02/2024.','2024-02-17 12:00:00',5,2),(28,'Entrega de Trabalho de Geografia','O trabalho de Geografia deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',5,2),(29,'Prova de Geografia','A prova de Geografia será realizada no dia 25/02/2024.','2024-02-17 12:00:00',5,3),(30,'Entrega de Trabalho de Geografia','O trabalho de Geografia deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',5,3),(31,'Prova de Inglês','A prova de Inglês será realizada no dia 25/02/2024.','2024-02-17 12:00:00',6,1),(32,'Entrega de Trabalho de Inglês','O trabalho de Inglês deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',6,1),(33,'Prova de Inglês','A prova de Inglês será realizada no dia 25/02/2024.','2024-02-17 12:00:00',6,2),(34,'Entrega de Trabalho de Inglês','O trabalho de Inglês deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',6,2),(35,'Prova de Inglês','A prova de Inglês será realizada no dia 25/02/2024.','2024-02-17 12:00:00',6,3),(36,'Entrega de Trabalho de Inglês','O trabalho de Inglês deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',6,3),(37,'Prova de Educação Física','A prova de Educação Física será realizada no dia 29/02/2024.','2024-02-17 12:00:00',7,1),(38,'Entrega de Trabalho de Educação Física','O trabalho de Educação Física deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',7,1),(39,'Prova de Educação Física','A prova de Educação Física será realizada no dia 25/02/2024.','2024-02-17 12:00:00',7,2),(40,'Entrega de Trabalho de Educação Física','O trabalho de Educação Física deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',7,2),(41,'Prova de Educação Física','A prova de Educação Física será realizada no dia 25/02/2024.','2024-02-17 12:00:00',7,3),(42,'Entrega de Trabalho de Educação Física','O trabalho de Educação Física deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',7,3),(43,'Prova de Artes','A prova de Artes será realizada no dia 29/02/2024.','2024-02-17 12:00:00',8,1),(44,'Entrega de Trabalho de Artes','O trabalho de Artes deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',8,1),(45,'Prova de Artes','A prova de Artes será realizada no dia 29/02/2024.','2024-02-17 12:00:00',8,2),(46,'Entrega de Trabalho de Artes','O trabalho de Artes deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',8,2),(47,'Prova de Artes','A prova de Artes será realizada no dia 29/02/2024.','2024-02-17 12:00:00',8,3),(48,'Entrega de Trabalho de Artes','O trabalho de Artes deve ser entregue até o dia 29/02/2024.','2024-03-30 16:59:00',8,3);
/*!40000 ALTER TABLE `avisos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 23:19:11
