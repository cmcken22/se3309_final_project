-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: fantasyFootball
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` char(40) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `leagueid` int(11) DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `leagueid` (`leagueid`),
  KEY `userID` (`userID`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`leagueid`) REFERENCES `league` (`leagueID`),
  CONSTRAINT `team_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `userTable` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'imperdiet sapien',166,1),(2,'sapien',436,1),(3,'nunc vestibulum',934,1),(4,'cursus vestibulum',867,1),(5,'id',610,1),(6,'fusce',904,1),(7,'condimentum curabitur',917,1),(8,'amet',197,1),(9,'in',265,1),(10,'vestibulum proin',927,1),(11,'non ligula',160,2),(12,'eu interdum',635,2),(13,'maecenas',629,2),(14,'faucibus cursus',847,2),(15,'non mi',437,2),(16,'morbi odio',79,2),(17,'auctor',512,2),(18,'accumsan tortor',966,2),(19,'aliquam',622,2),(20,'orci luctus',659,2),(21,'montes nascetur',96,3),(22,'vel lectus',789,3),(23,'luctus tincidunt',949,3),(24,'quis',507,3),(25,'vel accumsan',264,3),(26,'a',555,3),(27,'in faucibus',730,3),(28,'justo maecenas',433,3),(29,'vestibulum',62,3),(30,'diam',237,3),(31,'mauris lacinia',33,4),(32,'in',802,4),(33,'in purus',88,4),(34,'eu',794,4),(35,'justo',9,4),(36,'urna',133,4),(37,'orci',770,4),(38,'odio elementum',704,4),(39,'pellentesque viverra',825,4),(40,'quis justo',987,4),(41,'faucibus orci',915,5),(42,'donec',48,5),(43,'at feugiat',732,5),(44,'luctus nec',463,5),(45,'libero',340,5),(46,'posuere',91,5),(47,'volutpat',826,5),(48,'nullam molestie',725,5),(49,'non',804,5),(50,'aliquam augue',964,5),(51,'dignissim vestibulum',892,6),(52,'vel',746,6),(53,'ante vivamus',587,6),(54,'justo pellentesque',602,6),(55,'vel est',988,6),(56,'amet',820,6),(57,'ultrices aliquet',315,6),(58,'nunc',346,6),(59,'nunc',551,6),(60,'ac neque',86,6),(61,'a feugiat',143,7),(62,'cras',70,7),(63,'ut erat',62,7),(64,'id',731,7),(65,'nulla suspendisse',474,7),(66,'sociis natoque',339,7),(67,'nulla',826,7),(68,'in eleifend',506,7),(69,'sit',722,7),(70,'lectus',178,7),(71,'diam',111,8),(72,'id nulla',187,8),(73,'curae',150,8),(74,'accumsan',954,8),(75,'adipiscing lorem',104,8),(76,'faucibus orci',876,8),(77,'quis',725,8),(78,'morbi sem',719,8),(79,'mauris laoreet',539,8),(80,'mi nulla',481,8),(81,'rutrum ac',547,9),(82,'et',134,9),(83,'leo',633,9),(84,'volutpat',915,9),(85,'eu felis',900,9),(86,'quisque id',926,9),(87,'dapibus',898,9),(88,'fusce',586,9),(89,'nascetur',641,9),(90,'fusce congue',420,9),(91,'sapien',192,10),(92,'sapien quis',666,10),(93,'nulla suscipit',516,10),(94,'convallis morbi',2,10),(95,'sit amet',448,10),(96,'in faucibus',760,10),(97,'eu felis',822,10),(98,'amet',824,10),(99,'dolor sit',295,10),(100,'primis in',95,10),(101,'Free Agent',1001,1),(102,'Free Agent',1001,2),(103,'Free Agent',1001,3),(104,'Free Agent',1001,4),(105,'Free Agent',1001,5),(106,'Free Agent',1001,6),(107,'Free Agent',1001,7),(108,'Free Agent',1001,8),(109,'Free Agent',1001,9),(110,'Free Agent',1001,10),(111,'team 915',NULL,8),(112,'team tabriz',1,21),(113,'team Connor',2,21);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-03 18:05:34
