-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: localhost    Database: Beer
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Current Database: `Beer`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Beer` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Beer`;

--
-- Table structure for table `Beer`
--

DROP TABLE IF EXISTS `Beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Beer` (
  `BeerID` int(11) NOT NULL AUTO_INCREMENT,
  `BeerName` varchar(25) DEFAULT NULL,
  `BeerDescription` varchar(255) DEFAULT NULL,
  `BreweryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BeerID`),
  KEY `BreweryID` (`BreweryID`),
  CONSTRAINT `beer_ibfk_1` FOREIGN KEY (`BreweryID`) REFERENCES `Brewery` (`breweryID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Beer`
--

LOCK TABLES `Beer` WRITE;
/*!40000 ALTER TABLE `Beer` DISABLE KEYS */;
INSERT INTO `Beer` VALUES (1,'BeerName','BeerDescription ',NULL),(2,'IPA','Cask',NULL),(3,'Belgian Lag.','Draft',NULL),(44,'adfa','adf',NULL);
/*!40000 ALTER TABLE `Beer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Brewery`
--

DROP TABLE IF EXISTS `Brewery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brewery` (
  `breweryID` int(11) NOT NULL AUTO_INCREMENT,
  `breweryName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`breweryID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brewery`
--

LOCK TABLES `Brewery` WRITE;
/*!40000 ALTER TABLE `Brewery` DISABLE KEYS */;
INSERT INTO `Brewery` VALUES (1,'BeerName'),(2,'IPA'),(3,'Belgian Lag.'),(44,'adfa');
/*!40000 ALTER TABLE `Brewery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-02 18:47:46
