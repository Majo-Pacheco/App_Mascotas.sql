CREATE DATABASE  IF NOT EXISTS `appmascotas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `appmascotas`;

/*
Se utiizaron todas las tablas para generar el backup:
usuario, animales, adopcion, donaciones, veterinaria, medicamentos y productos
*/


-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: appmascotas
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
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_adopcion`),
  KEY `id_usuario` (`id_usuario`),
  KEY `adopcion_ibfk_2` (`id_animal`),
  CONSTRAINT `adopcion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `adopcion_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id_animal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adopcion`
--

LOCK TABLES `adopcion` WRITE;
/*!40000 ALTER TABLE `adopcion` DISABLE KEYS */;
INSERT INTO `adopcion` VALUES (1,3,8,'2021-01-15'),(2,1,2,'2020-02-20'),(3,5,7,'2022-03-10'),(4,10,4,'2023-04-05'),(5,6,9,'2023-05-12'),(6,2,1,'2023-06-08'),(7,8,5,'2019-07-19'),(8,9,6,'2023-08-25'),(9,4,3,'2023-09-30'),(10,7,10,'2023-10-15');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animales`
--

LOCK TABLES `animales` WRITE;
/*!40000 ALTER TABLE `animales` DISABLE KEYS */;
INSERT INTO `animales` VALUES (1,'Max','Perro','Macho','Labrador',3),(2,'Luna','Gato','Hembra','Siames',2),(3,'Rocky','Iguana','Macho','Cyclura',4),(4,'Nala','Gato','Hembra','Maine Coon',1),(5,'Bella','Perro','Hembra','Poodle',5),(6,'Milo','Canario','Macho','Gibber italico',2),(7,'Coco','Perro','Macho','Chihuahua',3),(8,'Olivia','Raton','Hembra','Manx',4),(9,'Toby','Perro','Macho','Golden Retriever',2),(10,'Sophie','Gato','Hembra','Sphynx',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_animales`
--

LOCK TABLES `auditoria_animales` WRITE;
/*!40000 ALTER TABLE `auditoria_animales` DISABLE KEYS */;
INSERT INTO `auditoria_animales` VALUES (1,11,'Toby','Perro','Macho','Gran Danes',9,'root@localhost','2023-12-19 13:15:57','Se agrega nuevo animal'),(2,11,'Toby','Perro','Macho','Gran Danes',9,'root@localhost','2023-12-19 13:16:33','Se elimina animal');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_donaciones`
--

LOCK TABLES `auditoria_donaciones` WRITE;
/*!40000 ALTER TABLE `auditoria_donaciones` DISABLE KEYS */;
INSERT INTO `auditoria_donaciones` VALUES (1,11,12,500.00,'2021-07-23 00:00:00','Pay Pal','root@localhost','2023-12-19 13:39:34','Ingresa nueva donacion'),(2,11,12,500.00,'2021-07-23 00:00:00','Pay Pal','root@localhost','2023-12-19 13:43:33','Se elimina animal'),(3,11,12,500.00,'2021-07-23 00:00:00','Pay Pal','root@localhost','2023-12-19 13:44:39','Ingresa nueva donacion'),(4,11,12,500.00,'2021-07-23 00:00:00','Pay Pal','root@localhost','2023-12-19 13:44:49','Se elimina donacion');
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
INSERT INTO `auditoria_update_producto` VALUES (1,3,'Collares para Gato',750.25,1000.00,'root@localhost','2023-12-19 14:36:19','Precio actualizado');
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
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `donaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donaciones`
--

LOCK TABLES `donaciones` WRITE;
/*!40000 ALTER TABLE `donaciones` DISABLE KEYS */;
INSERT INTO `donaciones` VALUES (1,5,500.00,'2022-01-15','Tarjeta de Credito'),(2,2,2500.50,'2023-02-20','PayPal'),(3,9,100.00,'2023-03-10','Transferencia Bancaria'),(4,7,7500.25,'2023-04-05','PayPal'),(5,1,300.00,'2020-05-12','Efectivo'),(6,8,4560.75,'2019-06-08','Tarjeta de Debito'),(7,3,6050.50,'2021-07-19','Transferencia Bancaria'),(8,4,200.00,'2023-08-25','PayPal'),(9,10,1500.25,'2023-09-30','Tarjeta de Credito'),(10,6,900.00,'2023-10-15','Efectivo');
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
  KEY `id_veterinaria` (`id_veterinaria`),
  CONSTRAINT `medicamentos_ibfk_1` FOREIGN KEY (`id_veterinaria`) REFERENCES `veterinaria` (`id_veterinaria`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,3,'AntibioticoVet',2500.00,'Amoxicilina','Tabletas','Antibiotico'),(2,7,'DesparasitantePlus',1200.50,'Praziquantel','Suspension oral','Desparasitante'),(3,10,'AnalgesicoPet',800.25,'Carprofeno','Capsulas','Analgesico'),(4,5,'AntiinflamatorioCan',1500.00,'Meloxicam','Solucion inyectable','Antiinflamatorio'),(5,8,'ColirioOcularPet',600.00,'Ciprofloxacino','Gotas oftalmicas','Oftalmologico'),(6,1,'SuplementoVitaminicoGato',450.75,'Vitamina E','Polvo','Suplemento Vitaminico'),(7,4,'LocionDermatologica',900.50,'Clotrimazol','Locion topica','Dermatologico'),(8,6,'CardioProtectorPet',2000.00,'Enalapril','Comprimidos','Cardiologia'),(9,2,'RehidratanteOral',300.25,'Electrolitos','Polvos','Rehidratante'),(10,9,'AntihipertensivoCanino',1800.00,'Amlodipino','Tabletas','Antihipertensivo');
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
  `descripcion` varchar(50) DEFAULT NULL,
  `precio` decimal(8,2) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_veterinaria` (`id_veterinaria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_veterinaria`) REFERENCES `veterinaria` (`id_veterinaria`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,4,'Alimento Balanceado Gato',35000.00,'Alimentos'),(2,2,'Juguete para Perro',15000.50,'Juguetes'),(3,8,'Collares para Gato',1000.00,'Accesorios'),(4,7,'Shampoo Antipulgas',1200.00,'Cuidado e Higiene'),(5,1,'Cama para Perro',45000.00,'Muebles y Camas'),(6,6,'Snacks Naturales para Perro',800.00,'Snacks'),(7,10,'Arena para Gato',400.50,'Areneros'),(8,5,'Transportadora Chica',20000.00,'Transporte'),(9,3,'Correa de Paseo',3000.25,'Accesorios'),(10,9,'Comedero Automatico',65000.00,'Alimentos');
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
  `dni` varchar(50) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'12345678','Ana Lopez','01111234567','ana@email.com','Calle 123','Buenos Aires','Capital Federal','Recoleta','El Campito','N'),(2,'98765432','Juan Perez','01129876543','juan@email.com','Avenida 456','Cordoba','Cordoba','Nueva Cordoba',NULL,'Y'),(3,'45678901','Marta Garcia','01135555555','marta@email.com','Plaza 789','Santa Fe','Rosario','Fisherton','Refugio Animalitos','N'),(4,'78901234','Carlos Rodriguez','01147777777','carlos@email.com','Calles del Sur','Mendoza','Mendoza','Maipu',NULL,'N'),(5,'56789012','Laura Gonzalez','01159999999','laura@email.com','Esquina 345','Entre Rios','Parana','Barrio Sur',NULL,'Y'),(6,'23456789','Diego Fernandez','01163333333','diego@email.com','Calle 678','Salta','Salta','Salta Centro',NULL,'N'),(7,'89012345','Valeria Martinez','01175555555','valeria@email.com','Avenida 901','Neuquen','Neuquen','Confluencia','Animalia','N'),(8,'34567890','Miguel Sanchez','01187777777','miguel@email.com','Plaza 234','Tucuman','San Miguel de Tucuman','Yerba Buena',NULL,'Y'),(9,'90123456','Carolina Herrera','01199999999','carolina@email.com','Esquina 567','Jujuy',' San Salvador de Jujuy','Talleres',NULL,'Y'),(10,'4567890','Pablo Lopez','01108888888','pablo@email.com','Calle 890','Chaco','Resistencia','Villa Centenario','Huellitas','N'),(11,'11111111','Sofia Rodriguez','01111111111','sofia@email.com','Calle 111','Buenos Aires','La Plata','Centro','Amor Animal','N'),(12,'22222222','Pedro Gomez','01122222222','pedro@email.com','Avenida 222','Cordoba','Villa Maria','Barrio Norte',NULL,'Y'),(13,'33333333','Luisa Martinez','01133333333','luisa@email.com','Plaza 333','Santa Fe','Santa Fe','Candioti','Refugio Patitas','N'),(14,'44444444','Jorge Fernandez','01144444444','jorge@email.com','Calles 444','Mendoza','Godoy Cruz','Lourdes',NULL,'N'),(15,'55555555','Elena Perez','01155555555','elena@email.com','Esquina 555','Entre Rios','Gualeguaychu','Centro',NULL,'Y'),(16,'66666666','Gabriel Gutierrez','01166666666','gabriel@email.com','Calle 666','Salta','Salta','San Lorenzo',NULL,'Y'),(17,'77777777','Camila Gonzalez','01177777777','camila@email.com','Avenida 777','Neuquen','Centenario','Centro','Amigos Peludos','N'),(18,'88888888','Federico Rodriguez','01188888888','federico@email.com','Plaza 888','Tucuman','Yerba Buena','Barrio Norte',NULL,'Y'),(19,'99999999','Marina Herrera','01199999999','marina@email.com','Esquina 999','Jujuy','San Salvador de Jujuy','La Canada',NULL,'Y'),(20,'10101010','Raul Lopez','01110101010','raul@email.com','Calle 1010','Chaco','Resistencia','Villa del Carmen',NULL,'Y'),(21,'12121212','Pedro Louteau','1158387990','usuario@usuario1.com.ar','Callao 111','Buenos Aires','Vicente Lopez','Olivos','null','N');
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
  `localidad` varchar(50) DEFAULT NULL,
  `barrio` varchar(50) DEFAULT NULL,
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
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `veterinaria_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinaria`
--

LOCK TABLES `veterinaria` WRITE;
/*!40000 ALTER TABLE `veterinaria` DISABLE KEYS */;
INSERT INTO `veterinaria` VALUES (1,8,'VetCare','Tucuman','San Miguel de Tucuman','Tafi del Valle','Calle 123','2233445566','vetcare@gmail.com','Y','N','09:00:00','18:00:00','N','Y'),(2,20,'PawsPalace','Chaco','Resistencia','Villa del Carmen','Avenida Colon','1122334455','pawspalace@hotmail.com','N','Y','08:30:00','17:30:00','Y','N'),(3,2,'HappyPaws','Cordoba','Cordoba','Rafaela','Calle Principal','3344556677','happypaws@gmail.com','Y','Y','10:00:00','19:00:00','N','Y'),(4,19,'PetHeaven','Jujuy','San Salvador de Jujuy','La Perla','Avenida Costanera','1122334455','petheaven@yahoo.com','Y','N','08:00:00','20:00:00','N','N'),(5,16,'AngelVets','Salta','Salta','San Lorenzo','Calles del Centro','3344556677','angelvets@hotmail.com','N','N','09:30:00','18:30:00','Y','Y'),(6,15,'Purrfection','Entre Rios','Gualeguay','Centro','Avenida San Martin','2233445566','purrfection@gmail.com','Y','Y','10:00:00','17:00:00','Y','N'),(7,9,'GoldenPaws','Jujuy','San Salvador de Jujuy','Talleres','Calle 45','1122334455','goldenpaws@yahoo.com','Y','N','08:30:00','19:30:00','Y','Y'),(8,18,'VetExpress','Tucuman','San Miguel de Tucuman','Barrio Norte','Avenida 9 de Julio','3344556677','vetexpress@gmail.com','N','Y','09:00:00','20:00:00','Y','N'),(9,5,'DoggieCare','Entre Rios','Parana','Barrio Sur','Calle 10','2233445566','doggiecare@hotmail.com','Y','N','10:30:00','17:30:00','N','Y'),(10,12,'FurryFriends','Cordoba','Villa Maria','Barrio Norte','Calle 25 de Mayo','1122334455','furryfriends@yahoo.com','Y','N','09:30:00','18:30:00','Y','Y');
/*!40000 ALTER TABLE `veterinaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'appmascotas'
--

--
-- Dumping routines for database 'appmascotas'
--
/*!50003 DROP FUNCTION IF EXISTS `f_contador_animal_sexo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_contador_animal_sexo`(var_tipo_animal VARCHAR(50), var_sexo_animal VARCHAR(50)) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE cantidad VARCHAR(50);
    SET cantidad = 
		(SELECT count(*) from appmascotas.animales
		where sexo = var_sexo_animal
        and tipo_animal = var_tipo_animal);

RETURN cantidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f_encontrar_veterinaria_por_medicamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_encontrar_veterinaria_por_medicamento`(medicamento varchar(50)) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE veterinaria VARCHAR (50);
    SET veterinaria = (select 
	veterinaria.nombre AS nombre_veterinaria
from veterinaria
join medicamentos ON medicamentos.id_veterinaria = veterinaria.id_veterinaria
where medicamentos.nombre_farmaceutico = medicamento);

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

-- Dump completed on 2024-01-09 17:58:09
