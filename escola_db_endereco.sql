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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `EnderecoID` int(11) NOT NULL AUTO_INCREMENT,
  `NomeRua` varchar(255) DEFAULT NULL,
  `Numero` varchar(10) DEFAULT NULL,
  `Complemento` varchar(255) DEFAULT NULL,
  `Bairro` varchar(100) DEFAULT NULL,
  `CidadeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EnderecoID`),
  KEY `CidadeID` (`CidadeID`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`CidadeID`) REFERENCES `cidade` (`CidadeID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua do Umbará','101','Apto 201','Umbará',1),(2,'Rua Vitória Régia','202','','Sítio Cercado',1),(3,'Rua Rio Iguaçu','303','Bloco A','Ganchinho',1),(4,'Rua Dom Pedro II','404','','Umbará',1),(5,'Rua dos Tuiuiús','505','Casa 5','Sítio Cercado',1),(6,'Rua São Marcos','606','','Ganchinho',1),(7,'Rua das Amoreiras','707','Casa','Umbará',1),(8,'Rua Afonso Camargo','808','','Sítio Cercado',1),(9,'Rua João M. de Almeida','909','Apto 304','Ganchinho',1),(10,'Rua das Magnólias','100','','Umbará',1),(11,'Rua Figueira','200','','Sítio Cercado',1),(12,'Rua das Acácias','300','','Ganchinho',1),(13,'Rua Nova Aurora','717','','Sitio Cercado',1);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
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
