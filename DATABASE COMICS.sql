-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: comic
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `comics`
--

DROP TABLE IF EXISTS `comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comics` (
  `id` int NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics`
--

LOCK TABLES `comics` WRITE;
/*!40000 ALTER TABLE `comics` DISABLE KEYS */;
INSERT INTO `comics` VALUES (1,'Como ocultar al hijo del emperador','manhwa','Emisión'),(3,'Katekyo hitman reborn','manga','Finalizado'),(4,'Solo soy una madrasta pero mi hija es tan linda','manhwa','Emisión'),(5,'Como hacer que mi marido este de mi lado','manhwa','Emisión'),(5,'Seré la matriarca en esta vida','manhwa','Emisión'),(6,'Megane, Tokidoki, Yankee-kun','manga','Finalizado'),(7,'Padre, no quiero casarme','manhwa','Emisión'),(8,'Me Haré Responsable del Bienestar de mi Esposo ','manhwa','Emisión'),(9,'Una forma de protegerte, cariño','manhwa','Emisión'),(10,'Es inútil aferrarse','manhwa','Emisión'),(11,'Estoy en problemas , mi esposo es lindo','manhwa','Hiatus'),(12,'Domé al marqués loco','manhwa','Emisión'),(13,'Cariño, hoy voy hacer huelga','manhwa','Emisión'),(14,'No seré más una cenicienta','manhwa','Emisión'),(15,'¡Los personajes más fuertes del mundo están obsesionados conmigo!','manhwa','Emisión'),(16,'Crie a un Sirviente Obsesivo','manhwa','Emisión'),(17,'Me converti en la familia del villano','manhwa','Emisión'),(18,'Encontré Esposo Cuando Recogí Al Protagonista ','manhwa','Emisión'),(19,'La princesa esta aburrida hoy','manhwa','Emisión'),(20,'Cuando la hija ilegítima del conde se casa','manhwa','Emisión'),(21,'La doncella del duque','manhwa','Finalizado'),(22,'¿Mi Esposo Esta Enfermo? Soy Su Esposa Por Contrato.','manhwa','Emisión'),(23,'LA EX NOVIA DEL PROTAGONISTA MASCULINO','manhwa','Hiatus'),(24,'El guardián del tirano es una bruja malvada','manhwa','Hiatus'),(25,'Mi segundo esposo está deprimido y desesperado','manhwa','Emisión'),(26,'¡Esposo por favor ,cásate conmigo otra vez !','manhwa','Emisión'),(27,'DE TODAS FORMAS, ES ROFAN','manhwa','Emisión'),(28,'La princesa controla al traidor','manhwa','Emisión'),(29,'Cuidado con la Villana !','manhwa','Finalizado');
/*!40000 ALTER TABLE `comics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20220218172356-create-comics.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-14 21:01:26
