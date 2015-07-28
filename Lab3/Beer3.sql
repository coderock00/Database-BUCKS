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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brewery`
--

LOCK TABLES `Brewery` WRITE;
/*!40000 ALTER TABLE `Brewery` DISABLE KEYS */;
INSERT INTO `Brewery` VALUES (45,'Vault Brewing Co.'),(46,'Triumph Brewery Co.'),(47,'Guniess Brewing Co.');
/*!40000 ALTER TABLE `Brewery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funding`
--

DROP TABLE IF EXISTS `Funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Funding` (
  `FundingID` int(11) NOT NULL AUTO_INCREMENT,
  `BreweryID` int(11) DEFAULT NULL,
  `FutureID` int(11) DEFAULT NULL,
  `FundingMetadata` blob,
  PRIMARY KEY (`FundingID`),
  UNIQUE KEY `pkFunding` (`BreweryID`,`FutureID`),
  KEY `FutureID` (`FutureID`),
  CONSTRAINT `funding_ibfk_1` FOREIGN KEY (`BreweryID`) REFERENCES `Brewery` (`breweryID`),
  CONSTRAINT `funding_ibfk_2` FOREIGN KEY (`FutureID`) REFERENCES `Future` (`FutureID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funding`
--

LOCK TABLES `Funding` WRITE;
/*!40000 ALTER TABLE `Funding` DISABLE KEYS */;
INSERT INTO `Funding` VALUES (6,1,2,'01010111101011010001010010'),(7,2,3,'01010001110010101010001110'),(8,3,4,'10100110011010100101011100'),(9,4,5,'01010101000111001101010011');
/*!40000 ALTER TABLE `Funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Future`
--

DROP TABLE IF EXISTS `Future`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Future` (
  `FutureID` int(11) NOT NULL AUTO_INCREMENT,
  `FutureName` varchar(55) DEFAULT NULL,
  `FutureDescription` varchar(255) DEFAULT NULL,
  `FutureExpireDate` date DEFAULT NULL,
  PRIMARY KEY (`FutureID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Future`
--

LOCK TABLES `Future` WRITE;
/*!40000 ALTER TABLE `Future` DISABLE KEYS */;
INSERT INTO `Future` VALUES (1,'5 C\'s  07232015 IPA $7','Grapefruit infused, a refreshing hot afternooon pint','2015-07-23'),(2,'Telementry 07242015 Stout $6','Iced coffee inspired stout with a refinded after taste','2015-07-24'),(3,'Belgin Wit 07252015 Blonde $5','Belgin inspired beer with a strong banana tone with a revitalizing hops','2015-07-25'),(4,'Best Bitter  07262015 Wheat %5','English beer with light copper colour, very balanced with clean hops and tones','2015-07-26'),(5,'Aussie Black 07272015 Ale %7','Austrialin beer brewed with glaxay, vicotria secret, and ella. Roasty and hoppy','0000-00-00');
/*!40000 ALTER TABLE `Future` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-27 19:42:13
