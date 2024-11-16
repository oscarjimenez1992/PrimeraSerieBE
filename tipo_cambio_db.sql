CREATE DATABASE  IF NOT EXISTS `tipo_cambio_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tipo_cambio_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tipo_cambio_db
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
-- Table structure for table `tipocambio`
--

DROP TABLE IF EXISTS `tipocambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocambio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(150) DEFAULT NULL,
  `tipo_cambio` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocambio`
--

LOCK TABLES `tipocambio` WRITE;
/*!40000 ALTER TABLE `tipocambio` DISABLE KEYS */;
INSERT INTO `tipocambio` VALUES (1,'11/11/2024',7.72037),(2,'11/11/2024',7.72037),(3,'11/11/2024',7.72037),(4,'11/11/2024',7.72037),(5,'11/11/2024',7.72037),(6,'11/11/2024',7.72037),(7,'11/11/2024',7.72037),(8,'12/11/2024',7.72304),(9,'12/11/2024',7.72304),(10,'12/11/2024',7.72304),(11,'12/11/2024',7.72304),(12,'12/11/2024',7.72304),(16,'12/11/2024',7.72304),(20,'2024-11-12 18:51:01',8.2),(21,'2024-11-12 18:51:13',7.72304),(22,'2024-11-13 20:51:16',7.71791),(23,'2024-11-13 20:54:09',7.71791),(24,'2024-11-13 20:54:19',7.71791),(25,'2024-11-13 20:54:23',7.71791),(26,'2024-11-13 20:54:26',7.71791),(27,'2024-11-13 20:56:38',7.71791),(28,'2024-11-13 20:58:50',7.71791),(29,'2024-11-13 20:59:01',7.71791),(30,'2024-11-13 20:59:09',7.71791),(31,'2024-11-13 20:59:18',7.71791),(32,'2024-11-13 21:02:22',7.71791),(33,'2024-11-13 21:02:31',7.71791),(34,'2024-11-13 21:02:36',7.71791),(35,'2024-11-13 21:08:53',7.71791),(36,'2024-11-13 21:09:41',7.71791),(37,'2024-11-13 21:10:39',7.71791);
/*!40000 ALTER TABLE `tipocambio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER set_fecha_before_insert
BEFORE INSERT ON tipocambio
FOR EACH ROW
BEGIN
    SET NEW.fecha = DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'tipo_cambio_db'
--

--
-- Dumping routines for database 'tipo_cambio_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-13 21:30:52
