CREATE DATABASE  IF NOT EXISTS `appmascotas_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `appmascotas_2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: appmascotas_2
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `adopcion`
--

DROP TABLE IF EXISTS `adopcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adopcion` (
  `id_adopcion` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_animal` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_adopcion`),
  KEY `id_animal_idx` (`id_animal`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_animal` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id_animal`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adopcion`
--

LOCK TABLES `adopcion` WRITE;
/*!40000 ALTER TABLE `adopcion` DISABLE KEYS */;
INSERT INTO `adopcion` VALUES (1,3,8,'2021-01-15'),(2,1,2,'2020-02-20'),(3,5,7,'2022-03-10'),(4,10,4,'2023-04-05'),(5,6,9,'2023-05-12'),(6,2,1,'2023-06-08'),(7,8,5,'2019-07-19'),(8,9,6,'2023-08-25'),(9,4,3,'2023-09-30'),(10,7,10,'2023-10-15'),(11,42,30,'2021-01-21'),(12,35,14,'2020-02-27'),(13,16,49,'2022-03-15'),(14,29,20,'2023-04-10'),(15,47,36,'2023-05-18'),(16,25,43,'2023-06-14'),(17,14,18,'2019-07-25'),(18,19,49,'2023-08-31'),(19,24,24,'2023-10-05'),(20,12,45,'2023-11-20'),(21,15,25,'2021-01-27'),(22,13,26,'2020-03-05'),(23,46,46,'2022-04-20'),(24,50,47,'2023-05-26'),(25,33,38,'2023-07-02'),(26,45,14,'2019-08-06'),(27,26,33,'2023-09-11'),(28,48,37,'2023-10-17'),(29,34,36,'2023-11-22'),(30,37,48,'2021-02-02'),(31,39,12,'2020-03-12'),(32,28,16,'2022-04-25'),(33,44,22,'2023-06-01'),(34,27,31,'2023-07-07'),(35,40,23,'2019-08-12'),(36,38,11,'2023-09-17'),(37,17,39,'2023-10-23'),(38,11,13,'2023-11-28'),(39,49,41,'2021-02-08'),(40,23,50,'2020-03-19'),(41,36,17,'2022-05-05'),(42,31,29,'2023-06-11'),(43,18,26,'2023-07-17'),(44,30,40,'2019-08-23'),(45,22,38,'2023-09-28'),(46,41,16,'2023-11-03'),(47,20,26,'2021-02-14'),(48,43,20,'2020-04-02'),(49,21,29,'2022-05-15'),(50,32,25,'2023-06-21');
/*!40000 ALTER TABLE `adopcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animales`
--

DROP TABLE IF EXISTS `animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animales` (
  `id_animal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo_animal` varchar(50) NOT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `raza_o_genero` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`id_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animales`
--

LOCK TABLES `animales` WRITE;
/*!40000 ALTER TABLE `animales` DISABLE KEYS */;
INSERT INTO `animales` VALUES (1,'Max','Perro','Macho','Labrador',3),(2,'Luna','Gato','Hembra','Siames',2),(3,'Rocky','Iguana','Macho','Cyclura',4),(4,'Nala','Gato','Hembra','Maine Coon',1),(5,'Bella','Perro','Hembra','Poodle',5),(6,'Milo','Canario','Macho','Gibber italico',2),(7,'Coco','Perro','Macho','Chihuahua',3),(8,'Olivia','Raton','Hembra','Manx',4),(9,'Toby','Perro','Macho','Golden Retriever',2),(10,'Sophie','Gato','Hembra',NULL,1),(11,'Buddy','Perro','Macho','Beagle',3),(12,'Lola','Gato','Hembra','Persa',2),(13,'Rex','Iguana','Macho','Green Iguana',5),(14,'Mia','Gato','Hembra','Bengala',1),(15,'Charlie','Perro','Macho',NULL,4),(16,'Sam','Canario','Macho',NULL,2),(17,'Daisy','Perro','Hembra','Dalmata',3),(18,'Smokey','Gato','Macho','British Shorthair',4),(19,'Bella','Perro','Hembra',NULL,2),(20,'Milo','Gato','Macho','Ragdoll',1),(21,'Lola','Iguana','Hembra','Rhino Iguana',3),(22,'Teddy','Perro','Macho','Pomerania',2),(23,'Lucy','Canario','Hembra','Gloster Fancy',2),(24,'Max','Gato','Macho',NULL,1),(25,'Cleo','Perro','Hembra','Labradoodle',5),(26,'Sammy','Perro','Macho','Husky Siberiano',3),(27,'Chloe','Gato','Hembra','Siberiano',2),(28,'Bailey','Perro','Macho','Boston Terrier',4),(29,'Zoe','Gato','Hembra','Ragamuffin',1),(30,'Rocky','Iguana','Macho',NULL,2),(31,'Lulu','Gato','Hembra','Angora Turco',3),(32,'Milo','Perro','Macho',NULL,2),(33,'Sophie','Canario','Hembra','Red Factor',1),(34,'Leo','Gato','Macho','Ocicat',4),(35,'Stella','Perro','Hembra','Puddle',3),(36,'Oscar','Gato','Macho','Exotico de pelo corto',2),(37,'Bella','Perro','Hembra',NULL,1),(38,'Leo','Gato','Macho','Siames Moderno',3),(39,'Lily','Canario','Hembra',NULL,2),(40,'Cooper','Perro','Macho','Shiba Inu',4),(41,'Zara','Gato','Hembra',NULL,1),(42,'Milo','Iguana','Macho','Amblyrhynchus cristatus',3),(43,'Daisy','Perro','Hembra','Boxer',2),(44,'Leo','Gato','Macho','Abyssinian',1),(45,'Molly','Raton','Hembra',NULL,4),(46,'Oliver','Canario','Macho','Satinette',3),(47,'Mia','Gato','Hembra','Balines',2),(48,'Tucker','Perro','Macho','Doberman',2),(49,'Sophie','Perro','Hembra',NULL,5),(50,'Ruby','Gato','Hembra',NULL,1);
/*!40000 ALTER TABLE `animales` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_add_animal` AFTER INSERT ON `animales` FOR EACH ROW INSERT INTO auditoria_animales 
VALUES (DEFAULT, new.Id_animal, new.Nombre, new.Tipo_animal, new.Sexo, new.Raza_o_genero, new.Edad, USER(), NOW(), "Se agrega nuevo animal") */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_animal` BEFORE DELETE ON `animales` FOR EACH ROW INSERT INTO auditoria_animales
VALUES (DEFAULT, OLD.id_animal, OLD.nombre, OLD.tipo_animal, OLD.sexo, OLD.raza_o_genero, OLD.edad, USER(), NOW(), "Se elimina animal") */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `auditoria_animales`
--

DROP TABLE IF EXISTS `auditoria_animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_animales` (
  `id_auditoria_animales` int NOT NULL AUTO_INCREMENT,
  `id_animal` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo_animal` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `raza_o_genero` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria_animales`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_animales`
--

LOCK TABLES `auditoria_animales` WRITE;
/*!40000 ALTER TABLE `auditoria_animales` DISABLE KEYS */;
INSERT INTO `auditoria_animales` VALUES (1,51,'Toby','Perro','Macho','Gran Danes',9,'root@localhost','2024-01-26 14:20:55','Se agrega nuevo animal'),(2,51,'Toby','Perro','Macho','Gran Danes',9,'root@localhost','2024-01-26 14:23:13','Se elimina animal');
/*!40000 ALTER TABLE `auditoria_animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_donaciones`
--

DROP TABLE IF EXISTS `auditoria_donaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_donaciones` (
  `id_auditoria_donaciones` int NOT NULL AUTO_INCREMENT,
  `id_donacion` int NOT NULL,
  `id_usuario` int NOT NULL,
  `monto` decimal(8,2) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `medio_pago` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `fecha_accion` datetime DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria_donaciones`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_donaciones`
--

LOCK TABLES `auditoria_donaciones` WRITE;
/*!40000 ALTER TABLE `auditoria_donaciones` DISABLE KEYS */;
INSERT INTO `auditoria_donaciones` VALUES (1,51,12,500.00,'2021-07-23 00:00:00','Pay Pal','root@localhost','2024-01-26 14:29:00','Ingresa nueva donacion'),(2,51,12,500.00,'2021-07-23 00:00:00','Pay Pal','root@localhost','2024-01-26 14:33:55','Se elimina donacion');
/*!40000 ALTER TABLE `auditoria_donaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_update_producto`
--

DROP TABLE IF EXISTS `auditoria_update_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_update_producto` (
  `id_auditoria_producto` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `viejo_precio` decimal(8,2) DEFAULT NULL,
  `nuevo_precio` decimal(8,2) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `fecha_accion` datetime DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_update_producto`
--

LOCK TABLES `auditoria_update_producto` WRITE;
/*!40000 ALTER TABLE `auditoria_update_producto` DISABLE KEYS */;
INSERT INTO `auditoria_update_producto` VALUES (1,4,'Shampoo Antipulgas',1200.00,1000.00,'root@localhost','2024-01-26 15:48:21','Precio actualizado');
/*!40000 ALTER TABLE `auditoria_update_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donaciones`
--

DROP TABLE IF EXISTS `donaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donaciones` (
  `id_donacion` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `monto` decimal(8,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  `medio_pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_donacion`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_usuario_FK` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donaciones`
--

LOCK TABLES `donaciones` WRITE;
/*!40000 ALTER TABLE `donaciones` DISABLE KEYS */;
INSERT INTO `donaciones` VALUES (1,5,500.00,'2022-01-15','Tarjeta de Credito'),(2,2,2500.50,'2023-02-20','PayPal'),(3,9,100.00,'2023-03-10','Transferencia Bancaria'),(4,7,7500.25,'2023-04-05','PayPal'),(5,1,300.00,'2020-05-12','Efectivo'),(6,8,4560.75,'2019-06-08','Tarjeta de Debito'),(7,3,6050.50,'2021-07-19','Transferencia Bancaria'),(8,4,200.00,'2023-08-25','PayPal'),(9,10,1500.25,'2023-09-30','Tarjeta de Credito'),(10,6,900.00,'2023-10-15','Efectivo'),(11,18,1200.75,'2022-01-21','Tarjeta de Debito'),(12,42,320.50,'2020-02-27','Transferencia Bancaria'),(13,27,8000.00,'2022-03-15','PayPal'),(14,36,950.25,'2023-04-10','Efectivo'),(15,23,654.50,'2023-05-18','Tarjeta de Credito'),(16,47,2200.75,'2023-06-14','PayPal'),(17,29,1800.50,'2019-07-25','Transferencia Bancaria'),(18,39,500.00,'2023-08-31','Tarjeta de Debito'),(19,20,230.25,'2023-10-05','PayPal'),(20,48,760.00,'2023-11-20','Efectivo'),(21,16,120.75,'2022-01-27','Tarjeta de Credito'),(22,25,3200.50,'2020-03-05','Transferencia Bancaria'),(23,46,550.00,'2022-04-20','Efectivo'),(24,32,9000.25,'2023-05-26','Tarjeta de Debito'),(25,49,3800.50,'2023-07-02','PayPal'),(26,15,150.25,'2019-08-06','Transferencia Bancaria'),(27,11,120.00,'2023-09-11','PayPal'),(28,35,750.25,'2023-10-17','Tarjeta de Credito'),(29,43,3000.00,'2023-11-22','Efectivo'),(30,17,400.75,'2022-02-02','PayPal'),(31,28,650.50,'2020-03-12','Tarjeta de Debito'),(32,45,1200.00,'2022-04-25','Transferencia Bancaria'),(33,37,8000.25,'2023-06-01','Efectivo'),(34,21,250.50,'2023-07-07','Tarjeta de Credito'),(35,38,650.00,'2019-08-12','Transferencia Bancaria'),(36,44,900.25,'2023-09-17','PayPal'),(37,30,3500.50,'2023-10-23','Tarjeta de Credito'),(38,19,470.00,'2023-11-28','Efectivo'),(39,24,1900.75,'2022-02-08','Tarjeta de Debito'),(40,31,800.50,'2020-03-19','Transferencia Bancaria'),(41,50,220.00,'2022-05-05','PayPal'),(42,22,3200.25,'2023-06-11','Efectivo'),(43,13,550.50,'2023-07-17','Tarjeta de Credito'),(44,33,790.00,'2019-08-23','Transferencia Bancaria'),(45,12,220.25,'2023-09-28','PayPal'),(46,41,4500.50,'2023-11-03','Tarjeta de Credito'),(47,26,650.75,'2022-02-14','Transferencia Bancaria'),(48,40,120.50,'2020-04-02','Efectivo'),(49,23,1100.00,'2022-05-15','PayPal'),(50,34,320.25,'2023-06-21','Tarjeta de CreditoÃ§');
/*!40000 ALTER TABLE `donaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_new_donacion` AFTER INSERT ON `donaciones` FOR EACH ROW INSERT INTO auditoria_donaciones
VALUES (DEFAULT, new.Id_donacion, new.Id_usuario, new.monto, new.fecha_pago, new.medio_pago, USER(), NOW(), "Ingresa nueva donacion") */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_delete_donacion` BEFORE DELETE ON `donaciones` FOR EACH ROW INSERT INTO auditoria_donaciones
VALUES (DEFAULT, OLD.id_donacion, OLD.id_usuario, OLD.monto, OLD.fecha_pago, OLD.medio_pago, USER(), NOW(), "Se elimina donacion") */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `id_medicamento` int NOT NULL AUTO_INCREMENT,
  `id_veterinaria` int NOT NULL,
  `nombre_comercial` varchar(50) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `nombre_farmaceutico` varchar(50) NOT NULL,
  `presentacion` varchar(50) NOT NULL,
  `tipo_medicamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_medicamento`),
  KEY `id_veterinaria_idxxx` (`id_veterinaria`),
  CONSTRAINT `id_veterinaria_fkk` FOREIGN KEY (`id_veterinaria`) REFERENCES `veterinaria` (`id_veterinaria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,3,'AntibioticoVet',2500.00,'Amoxicilina','Tabletas','Antibiotico'),(2,7,'DesparasitantePlus',1200.50,'Praziquantel','Suspension oral','Desparasitante'),(3,10,'AnalgesicoPet',800.25,'Carprofeno','Capsulas','Analgesico'),(4,5,'AntiinflamatorioCan',1500.00,'Meloxicam','Solucion inyectable','Antiinflamatorio'),(5,8,'ColirioOcularPet',600.00,'Ciprofloxacino','Gotas oftalmicas','Oftalmologico'),(6,1,'SuplementoVitaminicoGato',450.75,'Vitamina E','Polvo','Suplemento Vitaminico'),(7,4,'LocionDermatologica',900.50,'Clotrimazol','Locion topica','Dermatologico'),(8,6,'CardioProtectorPet',2000.00,'Enalapril','Comprimidos','Cardiologia'),(9,2,'RehidratanteOral',300.25,'Electrolitos','Polvos','Rehidratante'),(10,9,'AntihipertensivoCanino',1800.00,'Amlodipino','Tabletas','Antihipertensivo'),(11,12,'AntipulgasSpotOn',300.75,'Fipronil','Solucion topica','Antipulgas'),(12,15,'TranquilizanteGato',1200.00,'Diazepam','Tabletas','Tranquilizante'),(13,18,'AntiacidoCanino',500.50,'Ranitidina','Suspension oral','Gastrointestinal'),(14,20,'ShampooAntialergico',1800.25,'Clorhexidina','Shampoo','Antialergico'),(15,22,'AntiinflamatorioOcular',3500.00,'Dexametasona','Gotas oftalmicas','Oftalmologico'),(16,25,'SuplementoMineralPerro',800.50,'Calcio y Fosforo','Polvo','Suplemento Mineral'),(17,28,'AnalgesicoDentalGato',1200.75,'Ketoprofeno','Gel dental','Analgesico'),(18,31,'AntihipertensivoFelino',2500.50,'Atenolol','Comprimidos','Antihipertensivo'),(19,35,'GotasOticaspCan',300.25,'Neomicina y Polimixina','Gotas oticas','Otico'),(20,40,'DiureticoPet',900.00,'Furosemida','Tabletas','Diuretico'),(21,45,'AntidiarreicoPerro',600.75,'Loperamida','Suspension oral','Gastrointestinal'),(22,48,'SuplementoOmega3Gato',1200.00,'Acidos Grasos Omega-3','Capsulas','Suplemento Nutricional'),(23,13,'CremaDermatologicaCan',1500.25,'Betametasona y Clotrimazol','Crema topica','Dermatologico'),(24,16,'ExpectoranteFelino',700.50,'Ambroxol','Jarabe','Respiratorio'),(25,19,'AntiinflamatorioDental',400.25,'Flunixin','Solucion inyectable','Analgesico'),(26,24,'SuplementoProbioticoGato',1000.75,'Lactobacillus','Polvo','Suplemento Nutricional'),(27,27,'AntiparasitarioInterno',2000.00,'Pamoato de Pirantel','Tabletas','Desparasitante'),(28,30,'AnalgesicoMuscularPet',1200.50,'Metocarbamol','Tabletas','Analgesico'),(29,33,'AntiulcerosoCanino',800.25,'Omeprazol','Suspension oral','Gastrointestinal'),(30,38,'DesodoranteGato',500.00,'Fragancia suave','Spray','Accesorio de cuidado'),(31,42,'CardioProtectorFelino',1600.50,'Diltiazem','Comprimidos','Cardiologia'),(32,46,'ReconstituyenteArticular',3500.25,'Condroitina y Glucosamina','Capsulas','Suplemento Nutricional'),(33,14,'AntiinflamatorioIntestinal',1800.75,'Budesonida','Suspension oral','Gastrointestinal'),(34,17,'ColirioLubricanteGato',200.50,'Hialuronato de Sodio','Gotas oftalmicas','Oftalmologico'),(35,21,'AntihistamÃ­nicoCanino',1000.00,'Loratadina','Tabletas','Antialergico'),(36,26,'AntiinflamatorioArticularPet',2500.75,'Carprofeno','Solucion inyectable','Analgesico'),(37,29,'GotasOftalmicasCan',600.50,'Tobramicina','Gotas oftalmicas','Oftalmologico'),(38,32,'ReconstituyenteHepaticoGato',1200.00,'S-Adenosilmetionina','Comprimidos','Hepatico'),(39,36,'AntihipertensivoOcular',700.25,'Timolol','Gotas oftalmicas','Antihipertensivo'),(40,41,'ExpectoranteCanino',1800.00,'Ambroxol','Jarabe','Respiratorio'),(41,44,'AntisepticoDentalPet',400.50,'Clorhexidina','Gel dental','Oral'),(42,47,'DesparasitanteInternoGato',2200.25,'Praziquantel y Pirantel','Tabletas','Desparasitante'),(43,50,'SuplementoCalcioPerro',1200.00,'Calcio y Vitamina D3','Polvo','Suplemento Mineral'),(44,19,'AntiinflamatorioGastricoCan',1500.50,'Misoprostol','Suspension oral','Gastrointestinal'),(45,23,'AnalgesicoArticularGato',3000.25,'Ketoprofeno','Solucion inyectable','Analgesico'),(46,28,'AntihipertensivoRenal',1800.75,'Enalapril','Tabletas','Antihipertensivo'),(47,31,'LubricanteArticularCanino',600.50,'Acido Hialuronico','Gotas orales','Suplemento Nutricional'),(48,34,'AntiinflamatorioRenalPet',1200.00,'Meloxicam','Suspension oral','Analgesico'),(49,39,'AntiulcerosoFelino',3500.50,'Ranitidina','Suspension oral','Gastrointestinal'),(50,43,'AntiinflamatorioRespiratorio',1600.00,'Fluticasona','Suspension oral','Respiratorio');
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_veterinaria` int NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_veterinaria_fk_idxx` (`id_veterinaria`),
  CONSTRAINT `id_veterinaria_fk` FOREIGN KEY (`id_veterinaria`) REFERENCES `veterinaria` (`id_veterinaria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,4,'Alimento Balanceado Gato',35000.00,'Alimentos'),(2,2,'Juguete para Perro',15000.50,'Juguetes'),(3,8,'Collares para Gato',750.25,'Accesorios'),(4,7,'Shampoo Antipulgas',1000.00,'Cuidado e Higiene'),(5,1,'Cama para Perro',45000.00,'Muebles y Camas'),(6,6,'Snacks Naturales para Perro',800.00,'Snacks'),(7,10,'Arena para Gato',400.50,'Areneros'),(8,5,'Transportadora Chica',20000.00,'Transporte'),(9,3,'Correa de Paseo',3000.25,'Accesorios'),(10,9,'Comedero Automatico',65000.00,'Alimentos'),(11,12,'Cepillo para Gato',12000.75,'Cuidado e Higiene'),(12,15,'Bolso de Transporte para Gato',55000.00,'Transporte'),(13,18,'Pelota de Goma para Perro',5000.50,'Juguetes'),(14,20,'Comida Humeda para Gato',28000.00,'Alimentos'),(15,22,'Arnes Reflectante para Perro',18000.25,'Accesorios'),(16,25,'Peine Deslanador',9000.75,'Cuidado e Higiene'),(17,28,'Cama Calefactable para Gato',60000.00,'Muebles y Camas'),(18,31,'Panales para Perro',3500.50,'Cuidado e Higiene'),(19,35,'Porta Snacks para Paseo',2500.25,'Accesorios'),(20,40,'Filtro para Bebedero Automatico',1200.00,'Accesorios'),(21,45,'Laberinto para Gatos',42000.00,'Juguetes'),(22,48,'Peluche con Sonido para Perro',10000.75,'Juguetes'),(23,13,'Escalera Plegable para Gatos',32000.00,'Accesorios'),(24,16,'Chaleco Salvavidas para Perro',35000.50,'Seguridad'),(25,19,'Cepillo de Dientes para Perro',6000.25,'Cuidado e Higiene'),(26,24,'Juguete Interactivo para Gatos',18000.00,'Juguetes'),(27,27,'Snacks Dentales para Perro',8500.75,'Snacks'),(28,30,'Bol para Comida Lenta',2500.50,'Alimentos'),(29,33,'Guantes Removedores de Pelo',4000.25,'Cuidado e Higiene'),(30,38,'Collar Luminoso para Perro',12000.00,'Seguridad'),(31,42,'Fuente de Agua Automatica para Aves',48000.50,'Accesorios'),(32,46,'Botas Impermeables para Perro',22000.25,'Accesorios'),(33,14,'Bebedero Portatil para Mascotas',1800.00,'Accesorios'),(34,17,'Rascador de Carton para Gato',15000.75,'Muebles y Camas'),(35,21,'Bolso Refrigerante para Perro',28000.00,'Transporte'),(36,26,'Dispensador de Bolsas para Excremento',3000.50,'Cuidado e Higiene'),(37,29,'Comida Dietetica para Gato',42000.25,'Alimentos'),(38,32,'Corral Plegable para Perro',65000.00,'Accesorios'),(39,36,'Juguete para Masticar para Perro',5000.75,'Juguetes'),(40,41,'Arnes Ajustable para Gatos',22000.00,'Accesorios'),(41,44,'Colchon Ortopedico para Perro',75000.50,'Muebles y Camas'),(42,47,'Caja de Arena con Filtro',32000.25,'Areneros'),(43,50,'Lampara UV para Acuario',12000.00,'Accesorios'),(44,19,'Chaqueta Reflectante para Perro',3500.50,'Seguridad'),(45,23,'Tunel de Juego para Gatos',18000.25,'Juguetes'),(46,28,'Comida Organica para Perro',12000.75,'Alimentos'),(47,31,'Esquinero para Gatos',45000.00,'Muebles y Camas'),(48,34,'Botas Antideslizantes para Perro',25000.50,'Accesorios'),(49,39,'Bascula Digital para Mascotas',3000.25,'Accesorios'),(50,43,'Juguete Dispensador de Comida para Gatos',16000.00,'Juguetes');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_aumento_precio_producto` AFTER UPDATE ON `productos` FOR EACH ROW INSERT INTO auditoria_update_producto
VALUES (DEFAULT, OLD.id_producto, OLD.descripcion, OLD.precio, NEW.precio, USER(), NOW(), "Precio actualizado") */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `localidad` varchar(50) DEFAULT NULL,
  `barrio` varchar(50) DEFAULT NULL,
  `nombre_refugio` varchar(50) DEFAULT NULL,
  `es_veterinaria` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,12345678,'Ana Lopez','01111234567','ana@email.com','Calle 123','Buenos Aires','Capital Federal','Recoleta','El Campito','N'),(2,98765432,'Juan Perez','01129876543','juan@email.com','Avenida 456','Cordoba','Cordoba','Nueva Cordoba',NULL,'Y'),(3,45678901,'Marta Garcia','01135555555','marta@email.com','Plaza 789','Santa Fe','Rosario','Fisherton','Refugio Animalitos','N'),(4,78901234,'Carlos Rodriguez','01147777777','carlos@email.com','Calles del Sur','Mendoza','Mendoza','Maipu',NULL,'N'),(5,56789012,'Laura Gonzalez','01159999999','laura@email.com','Esquina 345','Entre Rios','Parana','Barrio Sur',NULL,'Y'),(6,23456789,'Diego Fernandez','01163333333','diego@email.com','Calle 678','Salta','Salta','Salta Centro',NULL,'N'),(7,89012345,'Valeria Martinez','01175555555','valeria@email.com','Avenida 901','Neuquen','Neuquen','Confluencia','Animalia','N'),(8,34567890,'Miguel Sanchez','01187777777','miguel@email.com','Plaza 234','Tucuman','San Miguel de Tucuman','Yerba Buena',NULL,'N'),(9,90123456,'Carolina Herrera','01199999999','carolina@email.com','Esquina 567','Jujuy',' San Salvador de Jujuy','Talleres',NULL,'Y'),(10,4567890,'Pablo Lopez','01108888888','pablo@email.com','Calle 890','Chaco','Resistencia','Villa Centenario','Huellitas','N'),(11,11111111,'Sofia Rodriguez','01111111111','sofia@email.com','Calle 111','Buenos Aires','La Plata','Centro','Amor Animal','N'),(12,22222222,'Pedro Gomez','01122222222','pedro@email.com','Avenida 222','Cordoba','Villa Maria','Barrio Norte',NULL,'Y'),(13,33333333,'Luisa Martinez','01133333333','luisa@email.com','Plaza 333','Santa Fe','Santa Fe','Candioti','Refugio Patitas','N'),(14,44444444,'Jorge Fernandez','01144444444','jorge@email.com','Calles 444','Mendoza','Godoy Cruz','Lourdes',NULL,'N'),(15,55555555,'Elena Perez','01155555555','elena@email.com','Esquina 555','Entre Rios','Gualeguaychu','Centro',NULL,'Y'),(16,66666666,'Gabriel Gutierrez','01166666666','gabriel@email.com','Calle 666','Salta','Salta','San Lorenzo',NULL,'Y'),(17,77777777,'Camila Gonzalez','01177777777','camila@email.com','Avenida 777','Neuquen','Centenario','Centro','Amigos Peludos','N'),(18,88888888,'Federico Rodriguez','01188888888','federico@email.com','Plaza 888','Tucuman','Yerba Buena','Barrio Norte',NULL,'Y'),(19,99999999,'Marina Herrera','01199999999','marina@email.com','Esquina 999','Jujuy','San Salvador de Jujuy','La Canada',NULL,'Y'),(20,10101010,'Raul Lopez','01110101010','raul@email.com','Calle 1010','Chaco','Resistencia','Villa del Carmen',NULL,'Y'),(21,12121212,'Pedro Louteau','1158387990','usuario@usuario1.com.ar','Callao 111','Buenos Aires','Vicente Lopez','Olivos',NULL,'N'),(22,13131313,'Laura Rodriguez','01177778888','laura_rodriguez@email.com','Calle 1313','Buenos Aires','Lomas de Zamora','Centro','Hogar Animal','N'),(23,14141414,'Gabriel Gomez','01188889999','gabriel_gomez@email.com','Avenida 1414','Cordoba','Cordoba','Nueva Cordoba',NULL,'Y'),(24,15151515,'Cecilia Fernandez','01199999999','cecilia@email.com','Esquina 1515','Mendoza','Godoy Cruz','Lourdes',NULL,'N'),(25,16161616,'Martin Rodriguez','01111111111','martin@email.com','Calle 1616','Neuquen','Centenario','Centro','Amigos Peludos','Y'),(26,17171717,'Silvia Gutierrez','01122222222','silvia@email.com','Avenida 1717','Tucuman','Yerba Buena','Barrio Norte',NULL,'N'),(27,18181818,'Luciano Herrera','01133333333','luciano@email.com','Plaza 1818','Jujuy','San Salvador de Jujuy','La Canada',NULL,'Y'),(28,19191919,'Rocio Lopez','01144444444','rocio@email.com','Esquina 1919','Chaco','Resistencia','Villa del Carmen',NULL,'N'),(29,20202020,'Diego Sanchez','01155555555','diego@email.com','Calle 2020','Buenos Aires','La Plata','Centro','Amor Animal','Y'),(30,21212121,'Julia Sanchez','01110111222','julia_sanchez@email.com','Esquina 2121','Chaco','Resistencia','Villa del Sol','Amigos de los Animales','N'),(31,22222222,'Jorge Hernandez','01112121212','jorge@email.com','Avenida 222','Cordoba','Villa Maria','Barrio Norte',NULL,'Y'),(32,23232323,'Carolina Gutierrez','01113131313','carolina@email.com','Plaza 2323','Santa Fe','Santa Fe','Candioti','Refugio Patitas','N'),(33,24242424,'Santiago Rodriguez','01114141414','santiago@email.com','Calles 2424','Mendoza','Godoy Cruz','Lourdes',NULL,'N'),(34,25252525,'Mariana Gomez','01115151515','mariana@email.com','Esquina 2525','Entre Rios','Gualeguaychu','Centro',NULL,'Y'),(35,26262626,'Carlos Gonzalez','01116161616','carlos@email.com','Calle 2626','Salta','Salta','San Lorenzo',NULL,'Y'),(36,27272727,'Ana Maria Rodriguez','01117171717','ana_maria@email.com','Avenida 2727','Neuquen','Centenario','Centro','Amigos Peludos','N'),(37,28282828,'Federico Gutierrez','01118181818','federico@email.com','Plaza 2828','Tucuman','Yerba Buena','Barrio Norte',NULL,'Y'),(38,29292929,'Valentina Lopez','01119191919','valentina@email.com','Esquina 2929','Jujuy','San Salvador de Jujuy','La Canada',NULL,'Y'),(39,30303030,'Lucas Rodriguez','01120202020','lucas@email.com','Calle 3030','Chaco','Resistencia','Villa del Carmen',NULL,'Y'),(40,31313131,'Sofia Fernandez','01121212121','sofia@email.com','Avenida 3131','Buenos Aires','La Plata','Centro','Amor Animal','Y'),(41,32323232,'Matias Gomez','01122222222','matias@email.com','Esquina 3232','Cordoba','Villa Maria','Barrio Norte',NULL,'Y'),(42,33333333,'Isabella Rodriguez','01123232323','isabella@email.com','Plaza 3333','Santa Fe','Santa Fe','Candioti','Refugio Patitas','N'),(43,34343434,'Alejandro Herrera','01124242424','alejandro@email.com','Calles 3434','Mendoza','Godoy Cruz','Lourdes',NULL,'N'),(44,35353535,'Maria Gonzalez','01125252525','maria@email.com','Esquina 3535','Entre Rios','Gualeguaychu','Centro',NULL,'Y'),(45,36363636,'Javier Rodriguez','01126262626','javier@email.com','Calle 3636','Salta','Salta','San Lorenzo',NULL,'Y'),(46,37373737,'Lorena Gutierrez','01127272727','lorena@email.com','Avenida 3737','Neuquen','Centenario','Centro','Amigos Peludos','N'),(47,38383838,'Pablo Fernandez','01128282828','pablo@email.com','Plaza 3838','Tucuman','Yerba Buena','Barrio Norte',NULL,'Y'),(48,39393939,'Victoria Lopez','01129292929','victoria@email.com','Esquina 3939','Jujuy','San Salvador de Jujuy','La Canada',NULL,'Y'),(49,40404040,'Rodrigo Rodriguez','01130303030','rodrigo@email.com','Calle 4040','Chaco','Resistencia','Villa del Carmen',NULL,'Y'),(50,41414141,'Juliana Gomez','01131313131','juliana@email.com','Avenida 4141','Buenos Aires','La Plata','Centro','Amor Animal','Y'),(51,38389670,'Franco Colapinto','129389710','franco@colapinto.com.ar','Cochabamba 45','Buenos Aires','Capital Federal','San Telmo',NULL,'N');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_adopciones`
--

DROP TABLE IF EXISTS `v_adopciones`;
/*!50001 DROP VIEW IF EXISTS `v_adopciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_adopciones` AS SELECT 
 1 AS `id_adopcion`,
 1 AS `fecha`,
 1 AS `nombre_usuario`,
 1 AS `telefono_usuario`,
 1 AS `nombre_animal`,
 1 AS `tipo_animal`,
 1 AS `sexo`,
 1 AS `raza_o_genero`,
 1 AS `edad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_direcciones`
--

DROP TABLE IF EXISTS `v_direcciones`;
/*!50001 DROP VIEW IF EXISTS `v_direcciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_direcciones` AS SELECT 
 1 AS `id_usuario`,
 1 AS `direccion_usuario`,
 1 AS `provincia_usuario`,
 1 AS `localidad_usuario`,
 1 AS `barrio_usuario`,
 1 AS `id_veterinaria`,
 1 AS `direccion_veterinaria`,
 1 AS `provincia_veterinaria`,
 1 AS `localidad_veterinaria`,
 1 AS `barrio_veterinaria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_donaciones`
--

DROP TABLE IF EXISTS `v_donaciones`;
/*!50001 DROP VIEW IF EXISTS `v_donaciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_donaciones` AS SELECT 
 1 AS `id_donacion`,
 1 AS `medio_pago`,
 1 AS `monto`,
 1 AS `fecha_pago`,
 1 AS `nombre_usuario`,
 1 AS `dni_usuario`,
 1 AS `telefono_usuario`,
 1 AS `nombre_refugio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_medicamentos`
--

DROP TABLE IF EXISTS `v_medicamentos`;
/*!50001 DROP VIEW IF EXISTS `v_medicamentos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_medicamentos` AS SELECT 
 1 AS `id_medicamento`,
 1 AS `nombre_comercial`,
 1 AS `nombre_farmaceutico`,
 1 AS `presentacion`,
 1 AS `precio`,
 1 AS `nombre_veterinaria`,
 1 AS `telefono_veterinaria`,
 1 AS `e_mail_veterinaria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_productos`
--

DROP TABLE IF EXISTS `v_productos`;
/*!50001 DROP VIEW IF EXISTS `v_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_productos` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre_producto`,
 1 AS `categoria`,
 1 AS `precio`,
 1 AS `nombre_veterinaria`,
 1 AS `telefono_veterinaria`,
 1 AS `e_mail_veterinaria`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `veterinaria`
--

DROP TABLE IF EXISTS `veterinaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinaria` (
  `id_veterinaria` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `castraciones` char(1) DEFAULT NULL,
  `internaciones` char(1) DEFAULT NULL,
  `horario_apertura` time NOT NULL,
  `horario_cierre` time NOT NULL,
  `abierto_24hs` char(1) DEFAULT NULL,
  `emergencias` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_veterinaria`),
  KEY `id_usuario_fk_idx` (`id_usuario`),
  KEY `id_usuario_fk_idxx` (`id_usuario`),
  CONSTRAINT `id_usuario_fkey` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinaria`
--

LOCK TABLES `veterinaria` WRITE;
/*!40000 ALTER TABLE `veterinaria` DISABLE KEYS */;
INSERT INTO `veterinaria` VALUES (1,8,'VetCare','Buenos Aires','Capital Federal','San Telmo','Calle 123','2233445566','vetcare@gmail.com','Y','N','09:00:00','18:00:00','N','Y'),(2,20,'PawsPalace','Chaco','Resistencia','Villa del Carmen','Avenida Colon','1122334455','pawspalace@hotmail.com','N','Y','08:30:00','17:30:00','Y','N'),(3,2,'HappyPaws','Cordoba','Cordoba','Rafaela','Calle Principal','3344556677','happypaws@gmail.com','Y','Y','10:00:00','19:00:00','N','Y'),(4,19,'PetHeaven','Jujuy','San Salvador de Jujuy','La Perla','Avenida Costanera','1122334455','petheaven@yahoo.com','Y','N','08:00:00','20:00:00','N','N'),(5,16,'AngelVets','Salta','Salta','San Lorenzo','Calles del Centro','3344556677','angelvets@hotmail.com','N','N','09:30:00','18:30:00',NULL,NULL),(6,15,'Purrfection','Entre Rios','Gualeguay','Centro','Avenida San Martin','2233445566','purrfection@gmail.com','Y','Y','10:00:00','17:00:00','Y','N'),(7,9,'GoldenPaws','Jujuy','San Salvador de Jujuy','Talleres','Calle 45','1122334455','goldenpaws@yahoo.com','Y','N','08:30:00','19:30:00','Y','Y'),(8,18,'VetExpress','Tucuman','San Miguel de Tucuman','Barrio Norte','Avenida 9 de Julio','3344556677','vetexpress@gmail.com','N','Y','09:00:00','20:00:00','Y','N'),(9,5,'DoggieCare','Entre Rios','Parana','Barrio Sur','Calle 10','2233445566','doggiecare@hotmail.com',NULL,NULL,'10:30:00','17:30:00',NULL,NULL),(10,12,'FurryFriends','Codoba',' Villa Maria','Barrio Norte','Calle 25 de Mayo','1122334455','furryfriends@yahoo.com','Y','N','09:30:00','18:30:00','Y','Y'),(11,43,'Care4Pets','Chaco','Resistencia','Villa del Carmen','Avenida Belgrano','2233445566','care4pets@gmail.com','Y','Y','08:00:00','19:00:00','N','N'),(12,28,'VetWorld','Salta','Salta','San Lorenzo','Calle 15 de Abril','1122334455','vetworld@hotmail.com','N','Y','09:30:00','18:30:00','N','Y'),(13,38,'PetGuard','Tucuman','San Miguel de Tucuman','Barrio Norte','Avenida Alem','3344556677','petguard@yahoo.com','Y','Y','09:00:00','20:00:00','Y','Y'),(14,29,'AnimalHeal','Jujuy','San Salvador de Jujuy','La Canada','Calle 67','1122334455','animalheal@gmail.com','Y','N','08:30:00','19:30:00','Y','N'),(15,13,'PawSolutions','Entre Rios','Gualeguaychu','Centro','Avenida 25 de Mayo','3344556677','pawsolutions@hotmail.com','Y','Y','10:00:00','17:00:00','Y','N'),(16,46,'HappyTails','Salta','Salta','San Lorenzo','Calles del Sur','2233445566','happytails@yahoo.com','N','N','09:30:00','18:30:00','N','Y'),(17,32,'AngelCare','Tucuman','San Miguel de Tucuman','Tafi del Valle','Calle 8','1122334455','angelcare@gmail.com',NULL,'N','08:00:00','20:00:00','N',NULL),(18,47,'VetInMotion','Chaco','Resistencia','Villa del Carmen','Avenida Alberdi','3344556677','vetinmotion@hotmail.com','Y','N','08:30:00','17:30:00','Y','N'),(19,50,'PurrfectHealth','Entre Rios','Parana','Barrio Sur','Calle 12','2233445566','purrfecthealth@yahoo.com','Y','Y','10:30:00','17:30:00','N','Y'),(20,24,'DoggyDaycare','Codoba','Villa Maria','Barrio Norte','Calle 30 de Septiembre','1122334455','doggydaycare@yahoo.com','Y','N','09:30:00','18:30:00','Y','N'),(21,44,'CuddleCare','Jujuy','San Salvador de Jujuy','Talleres','Calle 56','2233445566','cuddlecare@hotmail.com','Y','Y','09:00:00','19:00:00','N','N'),(22,37,'CozyCritters','Tucuman','San Miguel de Tucuman','Barrio Norte','Avenida San Martin','3344556677','cozycritters@gmail.com','Y','N','09:30:00','20:00:00','Y','Y'),(23,14,'PetFriendly','Chaco','Resistencia','Villa del Carmen','Calle 18 de Julio','1122334455','petfriendly@yahoo.com','N',NULL,'08:00:00','19:00:00',NULL,'Y'),(24,40,'VetCarePlus','Salta','Salta','San Lorenzo','Avenida Italia','3344556677','vetcareplus@hotmail.com','Y','Y','09:30:00','18:30:00','N','Y'),(25,21,'HappyPawsClinic','Entre Rios','Gualeguay','Centro','Avenida 9 de Julio','2233445566','happypawsclinic@gmail.com','Y','N','10:00:00','17:00:00','Y','N'),(26,36,'PawPrints','Jujuy','San Salvador de Jujuy','La Canada','Calle 34','1122334455','pawprints@yahoo.com','Y','N','08:30:00','19:30:00','Y','Y'),(27,19,'PetPalace','Tucuman','San Miguel de Tucuman','Tafi del Valle','Avenida San Martin','3344556677','petpalace@gmail.com','Y','Y','08:00:00','20:00:00','N','N'),(28,26,'AnimalHouse','Chaco','Resistencia','Villa del Carmen','Calle 9 de Julio','1122334455','animalhouse@hotmail.com',NULL,NULL,'09:30:00','17:30:00',NULL,NULL),(29,45,'CarefulCritters','Entre Rios','Parana','Barrio Sur','Calle 6','2233445566','carefulcritters@yahoo.com','Y','N','10:30:00','17:30:00','N','Y'),(30,1,'FurryFriendsVet','Codoba','Villa Maria','Barrio Norte','Avenida San Martin','3344556677','furryfriendsvet@hotmail.com','N','N','09:30:00','18:30:00','Y','Y'),(31,49,'HappyPawsVet','Jujuy','San Salvador de Jujuy','Talleres','Calle 23','1122334455','happypawsvet@gmail.com',NULL,'Y','09:00:00','19:00:00','N',NULL),(32,22,'PetParadise','Tucuman','San Miguel de Tucuman','Barrio Norte','Avenida Alberdi','3344556677','petparadise@hotmail.com','Y','N','08:30:00','20:00:00','Y','Y'),(33,3,'CatCare','Chaco','Resistencia','Villa del Carmen','Calle 11 de Septiembre','2233445566','catcare@gmail.com','Y','N','08:00:00','19:00:00','N','N'),(34,30,'DoggyDelight','Salta','Salta','San Lorenzo','Avenida Rivadavia','1122334455','doggydelight@hotmail.com','Y','N','09:30:00','18:30:00','N','Y'),(35,11,'VetVibes','Entre Rios','Gualeguaychu','Centro','Calle 3','3344556677','vetvibes@yahoo.com','N','Y','10:00:00','17:00:00','Y','N'),(36,35,'HappyPawsVet','Jujuy','San Salvador de Jujuy','La Canada','Calle 54','1122334455','happypawsvet@hotmail.com','Y','Y','09:30:00','19:30:00','N','N'),(37,48,'AngelWings','Tucuman','San Miguel de Tucuman','Tafi del Valle','Avenida Belgrano','3344556677','angelwings@yahoo.com','N','Y','09:30:00','19:30:00',NULL,NULL),(38,33,'PawParadise','Chaco','Resistencia','Villa del Carmen','Calle 22 de Julio','1122334455','pawparadise@hotmail.com','Y','N','08:30:00','19:30:00','Y','Y'),(39,27,'CritterCare','Jujuy','San Salvador de Jujuy','Talleres','Calle 78','3344556677','crittercare@gmail.com','Y','N','08:00:00','20:00:00','N','N'),(40,50,'VetOnTheGo','Tucuman','San Miguel de Tucuman','Barrio Norte','Avenida Alem','2233445566','vetonthego@yahoo.com','N','Y','09:30:00','18:30:00','N','Y'),(41,14,'CozyCats','Entre Rios','Parana','Barrio Sur','Calle 15 de Mayo','1122334455','cozycats@hotmail.com','Y','N','09:00:00','18:00:00','N','N'),(42,26,'FurCare','Chaco','Resistencia','Villa del Carmen','Avenida Rivadavia','3344556677','furcare@gmail.com','N','Y','08:30:00','19:30:00','N','Y'),(43,21,'PetHaven','Codoba','Villa Maria','Barrio Norte','Calle 7 de Septiembre','2233445566','pethaven@yahoo.com','Y','Y','10:00:00','17:00:00','Y','N'),(44,4,'WhiskerWatch','Tucuman','San Miguel de Tucuman','Tafi del Valle','Avenida San Martin','1122334455','whiskerwatch@gmail.com','Y','N','08:00:00','20:00:00','N','N'),(45,46,'HeavenlyPets','Jujuy','San Salvador de Jujuy','La Canada','Calle 20','3344556677','heavenlypets@hotmail.com','N','N','09:30:00','18:30:00','N','Y'),(46,6,'PawsAndClaws','Salta','Salta','San Lorenzo','Avenida Alberdi','2233445566','pawsandclaws@yahoo.com','N','Y','10:30:00','17:30:00','N','Y'),(47,23,'EliteVets','Chaco','Resistencia','Villa del Carmen','Calle 5 de Mayo','1122334455','elitevets@gmail.com','Y','N','08:30:00','19:30:00','N','Y'),(48,7,'CatCraze','Entre Rios','Parana','Barrio Sur','Avenida 9 de Julio','3344556677','catcraze@hotmail.com','Y','Y','10:00:00','17:00:00','Y','N'),(49,44,'DoggyDoctors','Jujuy','San Salvador de Jujuy','Talleres','Calle 30','2233445566','doggydoctors@yahoo.com','Y','N','08:30:00','19:30:00','Y','Y'),(50,17,'PetParlor','Tucuman','San Miguel de Tucuman','Barrio Norte','Calle 12','1122334455','petparlor@gmail.com','Y','Y','09:00:00','20:00:00','N','N');
/*!40000 ALTER TABLE `veterinaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'appmascotas_2'
--

--
-- Dumping routines for database 'appmascotas_2'
--
/*!50003 DROP FUNCTION IF EXISTS `fx_contador_animal_sexo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fx_contador_animal_sexo`(var_tipo_animal VARCHAR(50), var_sexo_animal VARCHAR(50)) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE cantidad VARCHAR(50);
    SET cantidad = 
		(SELECT count(*) from appmascotas_2.animales
		where sexo = var_sexo_animal
        and tipo_animal = var_tipo_animal);

RETURN cantidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fx_encontrar_veterinaria_por_medicamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fx_encontrar_veterinaria_por_medicamento`(medicamento varchar(50)) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE veterinaria VARCHAR (50);
    SET veterinaria = (
    SELECT GROUP_CONCAT(veterinaria.nombre) AS nombre_veterinaria
FROM veterinaria
JOIN medicamentos ON medicamentos.id_veterinaria = veterinaria.id_veterinaria
WHERE medicamentos.nombre_farmaceutico = medicamento);

RETURN veterinaria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_datos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_datos`(IN numero_id INT, IN numero_dni VARCHAR(50), IN nombre VARCHAR(50), IN num_telefono VARCHAR(50), IN email VARCHAR(50), 
IN adress VARCHAR(50), IN province VARCHAR(50), IN nom_localidad VARCHAR(50), IN nom_barrio VARCHAR(50), 
IN nom_refugio VARCHAR(50), IN es__veterinaria CHAR(1))
BEGIN
	INSERT INTO usuario (id_usuario, dni, full_name, telefono, e_mail, direccion, provincia, localidad, barrio, nombre_refugio, es_veterinaria)
    VALUES (numero_id, numero_dni, nombre, num_telefono, email, adress, province, nom_localidad, nom_barrio, nom_refugio, es__veterinaria);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_orden_tabla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_orden_tabla`(IN tabla VARCHAR(20), IN campo VARCHAR(50), IN orden VARCHAR(4))
BEGIN
	SET @ordenar = CONCAT('SELECT * FROM',' ', tabla,' ','ORDER BY',' ', campo, ' ', orden);
    
    PREPARE consulta FROM @ordenar;
    EXECUTE consulta;
    DEALLOCATE PREPARE consulta;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_adopciones`
--

/*!50001 DROP VIEW IF EXISTS `v_adopciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_adopciones` AS select `adopcion`.`id_adopcion` AS `id_adopcion`,`adopcion`.`fecha` AS `fecha`,`usuario`.`full_name` AS `nombre_usuario`,`usuario`.`telefono` AS `telefono_usuario`,`animales`.`nombre` AS `nombre_animal`,`animales`.`tipo_animal` AS `tipo_animal`,`animales`.`sexo` AS `sexo`,`animales`.`raza_o_genero` AS `raza_o_genero`,`animales`.`edad` AS `edad` from ((`adopcion` join `usuario` on((`adopcion`.`id_usuario` = `usuario`.`id_usuario`))) join `animales` on((`adopcion`.`id_animal` = `animales`.`id_animal`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_direcciones`
--

/*!50001 DROP VIEW IF EXISTS `v_direcciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_direcciones` AS select `usuario`.`id_usuario` AS `id_usuario`,`usuario`.`direccion` AS `direccion_usuario`,`usuario`.`provincia` AS `provincia_usuario`,`usuario`.`localidad` AS `localidad_usuario`,`usuario`.`barrio` AS `barrio_usuario`,`veterinaria`.`id_veterinaria` AS `id_veterinaria`,`veterinaria`.`direccion` AS `direccion_veterinaria`,`veterinaria`.`provincia` AS `provincia_veterinaria`,`veterinaria`.`localidad` AS `localidad_veterinaria`,`veterinaria`.`barrio` AS `barrio_veterinaria` from (`usuario` join `veterinaria` on((`usuario`.`id_usuario` = `veterinaria`.`id_usuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_donaciones`
--

/*!50001 DROP VIEW IF EXISTS `v_donaciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_donaciones` AS select `d`.`id_donacion` AS `id_donacion`,`d`.`medio_pago` AS `medio_pago`,`d`.`monto` AS `monto`,`d`.`fecha_pago` AS `fecha_pago`,`u`.`full_name` AS `nombre_usuario`,`u`.`dni` AS `dni_usuario`,`u`.`telefono` AS `telefono_usuario`,`u`.`nombre_refugio` AS `nombre_refugio` from (`donaciones` `d` join `usuario` `u` on((`d`.`id_usuario` = `u`.`id_usuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_medicamentos`
--

/*!50001 DROP VIEW IF EXISTS `v_medicamentos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_medicamentos` AS select `medicamentos`.`id_medicamento` AS `id_medicamento`,`medicamentos`.`nombre_comercial` AS `nombre_comercial`,`medicamentos`.`nombre_farmaceutico` AS `nombre_farmaceutico`,`medicamentos`.`presentacion` AS `presentacion`,`medicamentos`.`precio` AS `precio`,`veterinaria`.`nombre` AS `nombre_veterinaria`,`veterinaria`.`telefono` AS `telefono_veterinaria`,`veterinaria`.`e_mail` AS `e_mail_veterinaria` from (`medicamentos` join `veterinaria` on((`medicamentos`.`id_veterinaria` = `veterinaria`.`id_veterinaria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_productos`
--

/*!50001 DROP VIEW IF EXISTS `v_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_productos` AS select `p`.`id_producto` AS `id_producto`,`p`.`descripcion` AS `nombre_producto`,`p`.`categoria` AS `categoria`,`p`.`precio` AS `precio`,`v`.`nombre` AS `nombre_veterinaria`,`v`.`telefono` AS `telefono_veterinaria`,`v`.`e_mail` AS `e_mail_veterinaria` from (`productos` `p` join `veterinaria` `v` on((`p`.`id_veterinaria` = `v`.`id_veterinaria`))) */;
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

-- Dump completed on 2024-01-26 18:02:48
