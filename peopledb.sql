-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2016 at 04:40 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `peopledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `people_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `mid_name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`people_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`people_id`, `first_name`, `last_name`, `mid_name`, `address`, `contact`, `comment`) VALUES
(1, 'Joken', 'Villanuevas', 'Entierro', 'Kabankalan City', '9289324734', 'Programming is fun!'),
(2, 'Charlotte', 'Embang', 'Etabag', 'Guanzon Street', '23124123', 'just another comment!');


-- MariaDB dump 10.19  Distrib 10.5.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: peopledb
-- ------------------------------------------------------
-- Server version	10.5.13-MariaDB-0ubuntu0.21.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bestelling`
--

DROP TABLE IF EXISTS `bestelling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestelling` (
                              `bestelling_id` int(11) NOT NULL AUTO_INCREMENT,
                              `reservering_id` int(11) NOT NULL,
                              `tafel` int(11) NOT NULL,
                              `datum` date NOT NULL,
                              `tijd` time NOT NULL,
                              `menuitemcode` varchar(4) NOT NULL,
                              `aantal` int(11) NOT NULL,
                              `prijs` decimal(5,2) NOT NULL,
                              PRIMARY KEY (`bestelling_id`),
                              KEY `menuitemcode` (`menuitemcode`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestelling`
--

LOCK TABLES `bestelling` WRITE;
/*!40000 ALTER TABLE `bestelling` DISABLE KEYS */;
INSERT INTO `bestelling` VALUES (11,10,7,'2017-11-01','21:45:16','vl2',3,9.95),(12,10,7,'2017-11-01','21:45:22','ij2',3,2.95),(13,10,7,'2017-11-01','21:45:27','kv2',2,5.95),(14,10,7,'2017-11-01','21:45:30','wv3',5,4.95),(15,10,7,'2017-11-01','21:45:46','fi5',4,2.75),(16,14,6,'2017-11-01','09:12:54','fi4',2,2.75),(17,14,6,'2017-11-01','09:12:57','bi5',1,4.75),(18,14,6,'2017-11-01','09:12:59','bi3',1,2.95),(19,14,6,'2017-11-01','09:13:04','wa3',2,5.00),(20,14,6,'2017-11-01','09:13:15','vl1',5,11.95),(21,14,6,'2017-11-01','09:13:24','mo1',3,4.95),(22,14,6,'2017-11-01','09:13:42','wv1',1,4.95),(23,14,6,'2017-11-01','09:13:44','wv2',1,3.95),(24,14,6,'2017-11-01','09:13:49','wv3',3,4.95),(30,5,7,'2017-11-01','01:20:27','wd3',3,2.95),(32,12,4,'2017-11-01','18:50:54','bi1',1,2.95),(38,3,6,'2017-11-01','13:01:37','bi3',2,2.95),(39,3,6,'2017-11-01','13:01:44','ko1',3,4.00),(41,2,5,'2017-11-01','20:58:01','wi2',2,17.95),(43,15,2,'2017-11-01','10:57:56','wi3',5,3.95),(54,2,5,'2017-11-01','19:14:36','wd6',3,2.95),(55,2,5,'2017-11-01','19:14:37','wi4',1,3.60),(56,15,2,'2017-11-01','18:12:57','bi3',3,2.95),(60,19,4,'2017-11-01','14:53:33','fi5',3,2.75),(61,11,0,'0000-00-00','00:00:00','vl2',0,0.00),(62,24,1,'2017-11-16','17:48:57','bi2',1,3.95),(69,2,5,'2017-11-16','18:28:53','fi4',1,2.75),(70,2,5,'2017-11-19','12:11:54','wd7',1,3.95),(71,2,5,'2017-11-19','12:13:12','wd6',1,2.95),(72,2,5,'2017-11-19','12:13:17','wd4',1,2.45),(73,2,5,'2017-11-19','12:22:27','wd4',1,2.45),(74,14,6,'2017-12-04','12:42:43','ve1',1,11.95);
/*!40000 ALTER TABLE `bestelling` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-08 13:49:36
