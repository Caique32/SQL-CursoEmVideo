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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int unsigned DEFAULT NULL,
  `totaulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Algoritmos','Lógica de Programação Básica',40,15,2024),(2,'Algoritmos 1','Lógica de Programação Básica',40,15,2024),(3,'SQL Avançado','Manipulação de Dados e Joins Complexos',60,20,2025),(4,'BPMN 2.0','Modelagem de Processos de Negócio',40,12,2025),(5,'Python para Dados','Análise de Dados com Pandas e Numpy',80,30,2026),(6,'HTML5 e CSS3','Criação de Páginas Web Modernas',40,20,2024),(8,'PHP Moderno','Desenvolvimento Web com PHP 8',60,20,2025),(9,'Java Profissional','Orientação a Objetos Avançada',100,40,2024),(10,'Gestão de TI','Governança com ITIL e COBIT',40,15,2026),(11,'Excel para Analistas','Dashboards e Fórmulas Avançadas',30,10,2024),(12,'Power BI','Visualização de Dados Estratégicos',40,18,2025),(13,'Docker e Containers','Virtualização para Desenvolvedores',20,8,2026),(14,'AWS Cloud','Introdução à Computação em Nuvem',40,15,2026),(15,'Segurança Digital','Proteção de Dados e Criptografia',30,12,2025),(16,'Redes de Computadores','Protocolos e Infraestrutura',60,22,2024),(17,'Linux Terminal','Comandos e Shell Scripting',40,15,2025),(18,'Git e GitHub','Controle de Versão para Equipes',20,10,2024),(19,'Engenharia de Software','Ciclo de Vida de Sistemas',80,35,2025),(20,'Metodologias Ágeis','Scrum, Kanban e Lean',30,12,2025),(21,'Marketing Digital','Tráfego Pago e Lead Gen',40,20,2024),(22,'User Experience','Design Focado no Usuário',40,15,2025),(23,'Inteligência Artificial','Modelos de Linguagem e Prompt Eng',60,25,2026),(24,'Sistemas de Logística','Gestão de Cadeia de Suprimentos',50,20,2026),(25,'MySQL Admin','Otimização e Backup de Bancos',40,15,2025),(26,'React JS','Criação de Interfaces Reativas',60,22,2025),(27,'Node JS','Backend Escalável com JavaScript',60,20,2026),(28,'C# Fundamentals','Desenvolvimento com .NET Core',80,30,2024),(29,'Qualidade de Software','Testes Automatizados e QA',40,18,2025),(30,'Data Warehouse','Estruturação de Dados para BI',60,24,2026),(32,'Lógica de Programação','Base para todos os cursos',40,15,2010),(33,'Desenvolvimento Android','Criação de apps para mobile',60,25,2011),(34,'PHP Básico','Desenvolvimento web para iniciantes',40,20,2010),(35,'Banco de Dados MySQL','Fundamentos de SQL e Tabelas',40,18,2012),(36,'Java Desktop','Criação de softwares com Swing',80,35,2012),(37,'Adobe Photoshop CS6','Tratamento de imagens profissional',40,15,2013),(38,'Sistemas Operacionais','Funcionamento de Kernel e Memória',60,20,2010),(39,'Python 2.7','Introdução à linguagem Python',40,18,2013),(41,'C++ Avançado','Programação de alto desempenho',100,40,2011),(42,'HTML4 e Tabelas','A velha guarda do desenvolvimento web',20,10,2010),(43,'Segurança de Redes','Proteção contra ataques e invasões',60,24,2015),(44,'Gestão de Projetos PMP','Metodologia clássica de gestão',80,30,2014),(45,'Desenvolvimento iOS','Apps para iPhone com Objective-C',60,25,2013),(46,'Angular JS 1.x','O início dos frameworks modernos',40,18,2015),(47,'Hadoop e Big Data','Processamento de grandes volumes',80,32,2016),(48,'Scrum Master Foundation','Agilidade em equipes de software',20,8,2016),(49,'Introdução ao Cloud','Início da migração para nuvem',40,15,2017),(50,'Data Science Intro','Primeiros passos com estatística',60,20,2017),(51,'Bootstrap 3','Layouts responsivos facilitados',30,12,2015),(52,'Wordpress Básico','Criação de blogs e sites rápidos',20,10,2016),(53,'Engenharia de Requisitos','Documentação de sistemas',40,15,2018),(54,'Microserviços','Arquitetura moderna de software',60,22,2018),(55,'NoSQL MongoDB','Bancos de dados não relacionais',40,16,2019),(56,'Docker Beginner','Primeiros passos com containers',30,12,2019),(57,'React Native','Apps híbridos para iOS e Android',80,35,2020),(58,'Vue JS Básico','Framework progressivo para web',40,18,2019),(60,'API RESTful','Criação de serviços web padrão',40,15,2020),(61,'UX Design Intro','Entendendo a experiência do usuário',30,12,2018);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
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
