-- MySQL dump 10.13  Distrib 5.5.40, for Linux (x86_64)
--
-- Host: localhost    Database: animal
-- ------------------------------------------------------
-- Server version	5.5.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adoptionrequest`
--

DROP TABLE IF EXISTS `adoptionrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adoptionrequest` (
  `adoptionid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `animalid` int(11) NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`adoptionid`),
  KEY `userid` (`userid`),
  KEY `animalid` (`animalid`),
  CONSTRAINT `adoptionrequest_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `adoptionrequest_ibfk_2` FOREIGN KEY (`animalid`) REFERENCES `animal` (`animalid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adoptionrequest`
--

LOCK TABLES `adoptionrequest` WRITE;
/*!40000 ALTER TABLE `adoptionrequest` DISABLE KEYS */;
INSERT INTO `adoptionrequest` VALUES (1,3,1,NULL),(2,3,2,NULL);
/*!40000 ALTER TABLE `adoptionrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal` (
  `animalid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`animalid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'Hammy','2010-01-05','Hammy is a friendly hamster that likes to run around her enclosure','hammy.jpg',0),(2,'Star','2010-01-05','Star was born in the same litter as Hammy, but they do not get on. Star squeels a lot when fighting and goads her sister into misbehaving.','star.jpg',0),(3,'Peter','2008-10-01','Peter is an awesome bunny, she cannot be allowed with others though as she is allergic to all vaccinations. She will destroy the world given half a chance','Peter.jpg',0),(4,'angus','2013-03-12','Angus is the bunny the place is named after, he is a lovely chap, but frightened of his own shadow.','angus.jpg',0),(5,'Cottontale','2012-03-12','Cottontale is a bunny mastermind, she knows how to break chicken wire and is not afraid to use it','Cottontale.jpg',1),(6,'flopsy','2012-03-12','Flopsy was originally thought to be a girl, but the kittens he produced with Cottontale say otherwise','flopsy.jpg',1);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owns`
--

DROP TABLE IF EXISTS `owns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owns` (
  `userid` int(11) NOT NULL,
  `animalid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`animalid`),
  KEY `animalid` (`animalid`),
  CONSTRAINT `owns_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `owns_ibfk_2` FOREIGN KEY (`animalid`) REFERENCES `animal` (`animalid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owns`
--

LOCK TABLES `owns` WRITE;
/*!40000 ALTER TABLE `owns` DISABLE KEYS */;
INSERT INTO `owns` VALUES (1,1),(1,2),(2,3),(3,4),(1,5),(1,6);
/*!40000 ALTER TABLE `owns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `staff` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'staff','test','k.samperi@aston.ac.u',1),(2,'user1','user1','k.samperi@cs.bham.ac',0),(3,'user2','user2','k.samperi@cs.bham.ac',0),(4,'user3','user3','k.samperi@cs.bham.ac',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-30 10:11:16
