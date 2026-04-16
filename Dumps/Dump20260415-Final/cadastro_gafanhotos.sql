CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `cursopreferido` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gafanhotos_cursos` (`cursopreferido`),
  CONSTRAINT `fk_gafanhotos_cursos` FOREIGN KEY (`cursopreferido`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhotos`
--

LOCK TABLES `gafanhotos` WRITE;
/*!40000 ALTER TABLE `gafanhotos` DISABLE KEYS */;
INSERT INTO `gafanhotos` VALUES (1,'Godofredo','','1984-01-02','M',78.50,1.83,'Brasil',4),(2,'Maria','','1989-03-30','F',55.20,1.65,'Portugal',22),(3,'Creuza','','1920-12-15','F',50.20,1.65,'Brasil',1),(4,'Adalgiza','','1930-11-03','F',65.20,1.75,'Irlanda',2),(5,'Ana','','1975-12-22','F',52.50,1.65,'Brasil',9),(6,'Claudio','','1975-04-22','M',99.50,2.15,'Brasil',30),(7,'Pedro','','1999-12-03','M',87.00,2.00,'Brasil',21),(8,'Janaína','','1987-11-12','F',75.40,1.66,'EUA',44),(9,'Adauto Silva','Programador','1998-05-12','M',78.50,1.75,'Brasil',32),(10,'Beatriz Souza','Designer','2001-10-20','F',62.30,1.68,'Portugal',NULL),(11,'Carlos André','Analista','1995-03-15','M',85.00,1.82,'Brasil',51),(12,'Daniela Lima','Engenheira','1992-07-28','F',58.90,1.60,'Espanha',60),(13,'Eduardo Melo','Estudante','2004-12-01','M',70.20,1.77,'Brasil',55),(14,'Fernanda Dias','Médica','1988-01-30','F',65.00,1.65,'Brasil',46),(15,'Gabriel Costa','Técnico','1999-06-14','M',92.40,1.80,'Angola',49),(16,'Helena Roza','Professora','1990-09-22','F',55.70,1.58,'Brasil',44),(17,'Ítalo Bento','Gerente','1985-04-10','M',88.00,1.85,'Itália',17),(18,'Julia Paiva','Arquiteta','1997-11-05','F',60.00,1.70,'Brasil',16),(19,'Kleber João','Motorista','1982-08-18','M',82.50,1.73,'Brasil',13),(20,'Lara Campos','Nutricionista','1994-02-12','F',54.20,1.62,'Brasil',21),(21,'Márcio Paz','Cientista','1991-03-03','M',76.00,1.78,'Brasil',12),(22,'Nívea Maria','Vendedora','2000-05-25','F',68.40,1.66,'Brasil',3),(23,'Otávio Luiz','Mecânico','1987-12-12','M',95.00,1.88,'Alemanha',21),(24,'Paula Reis','Contadora','1993-06-07','F',59.80,1.63,'Brasil',9),(25,'Quirino J.','Policial','1980-10-31','M',102.00,1.90,'Brasil',50),(26,'Renata Sol','Publicitária','1996-08-14','F',61.20,1.69,'Brasil',NULL),(27,'Samuel Noé','Fotógrafo','2002-01-01','M',69.50,1.74,'Canadá',NULL),(28,'Tatiana Fé','Enfermeira','1989-04-20','F',64.00,1.67,'Brasil',NULL),(29,'Ubirajara C.','Escritor','1975-05-05','M',80.00,1.75,'Brasil',NULL),(30,'Vanessa G.','Atriz','1998-09-09','F',57.00,1.64,'Brasil',NULL),(31,'Wagner Rei','Cozinheiro','1994-02-28','M',89.00,1.81,'França',NULL),(32,'Xuxa Maria','Empresária','1980-03-27','F',63.00,1.72,'Brasil',NULL),(33,'Yago Alves','Veterinário','1995-07-07','M',74.00,1.76,'Brasil',NULL),(34,'Zilda Pires','Advogada','1988-12-25','F',66.00,1.71,'Brasil',NULL),(35,'Arthur L.','Bancário','1993-01-15','M',81.00,1.79,'EUA',NULL),(36,'Bruna M.','Social Media','2001-02-02','F',55.00,1.61,'Brasil',NULL),(37,'Caio J.','Desenvolvedor','2003-03-13','M',68.00,1.80,'Brasil',NULL),(38,'Dora E.','Estilista','1992-04-14','F',60.50,1.65,'França',NULL),(39,'Erick K.','Piloto','1985-05-25','M',75.00,1.78,'Brasil',NULL),(40,'Flora Q.','Bióloga','1997-06-06','F',58.00,1.64,'Brasil',NULL),(41,'Guto P.','Dançarino','1999-07-07','M',72.00,1.82,'Brasil',NULL),(42,'Hilda V.','Escultora','1984-08-08','F',64.00,1.67,'Brasil',NULL),(43,'Igor X.','Serralheiro','1990-09-19','M',90.00,1.85,'Brasil',NULL),(44,'Janaína Z.','Secretária','1996-10-10','F',62.00,1.68,'Brasil',NULL),(45,'Kevin O.','Eletricista','1991-11-11','M',79.00,1.77,'Irlanda',NULL),(46,'Luan S.','Barbeiro','2000-12-12','M',73.00,1.75,'Brasil',NULL),(47,'Maitê F.','Modelo','2002-01-21','F',52.00,1.74,'Brasil',NULL),(48,'Nuno R.','Garçom','1995-02-22','M',85.00,1.79,'Portugal',NULL),(49,'Olívia T.','Psicóloga','1987-03-23','F',61.00,1.63,'Brasil',NULL),(50,'Pietro U.','Jogador','2004-04-24','M',77.00,1.83,'Itália',NULL),(51,'Queila I.','Jornalista','1993-05-25','F',59.00,1.62,'Brasil',NULL),(52,'Ruan P.','Soldador','1988-06-26','M',98.00,1.86,'Brasil',NULL),(53,'Soraia L.','Padeira','1990-07-27','F',70.00,1.60,'Brasil',NULL),(54,'Tiago M.','Web Designer','1998-08-28','M',66.00,1.70,'Brasil',NULL),(55,'Úrsula N.','Tradutora','1992-09-29','F',56.00,1.59,'Brasil',NULL),(56,'Vitor K.','Estagiário','2005-10-30','M',65.00,1.72,'Brasil',NULL),(57,'Wanda J.','Florista','1983-11-01','F',63.00,1.64,'Holanda',NULL),(58,'Xavier B.','Segurança','1986-12-02','M',110.00,1.92,'Brasil',NULL),(59,'Yara D.','Podóloga','1994-01-03','F',58.00,1.61,'Brasil',NULL),(60,'Zeca S.','Músico','1978-02-04','M',76.00,1.74,'Brasil',NULL),(61,'Aline F.','Personal Trainer','1996-03-05','F',62.00,1.70,'Brasil',NULL),(62,'Bruno T.','Consultor','1991-04-06','M',84.00,1.81,'Brasil',NULL),(63,'Célia R.','Artesã','1982-05-07','F',67.00,1.65,'Brasil',NULL),(64,'Diego V.','Sommelier','1989-06-08','M',79.00,1.78,'Chile',NULL),(65,'Ester G.','Farmacêutica','1995-07-09','F',54.00,1.60,'Brasil',NULL),(66,'Fabio L.','Agrônomo','1987-08-10','M',88.00,1.84,'Paraguai',NULL),(67,'Gisele B.','Atendente','2001-09-11','F',56.00,1.63,'Brasil',NULL),(68,'Hugo P.','Funileiro','1990-10-12','M',91.00,1.76,'Brasil',NULL),(69,'Silvana Albuquerque','Progrmadaor','1999-05-22','F',56.00,1.50,'Irlandesa',NULL);
/*!40000 ALTER TABLE `gafanhotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-15 21:15:56
