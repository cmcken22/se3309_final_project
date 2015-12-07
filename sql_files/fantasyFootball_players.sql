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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `playerID` int(11) NOT NULL AUTO_INCREMENT,
  `playerName` char(50) NOT NULL,
  `nflTeam` char(30) DEFAULT NULL,
  `playerPosition` char(2) DEFAULT NULL,
  `yards` decimal(10,0) DEFAULT NULL,
  `TDs` decimal(10,0) DEFAULT NULL,
  `turnovers` decimal(10,0) DEFAULT NULL,
  `allstar` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`playerID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Fred Hunt','canucks','TE',631,3,0,NULL),(2,'Ernest Walker','thunder','WR',531,19,17,NULL),(3,'Clarence Rose','panthers','RB',387,8,12,NULL),(4,'Victor Lawrence','patriots','RB',81,18,4,NULL),(5,'Ruth Williamson','bulls','QB',744,2,4,NULL),(6,'Jimmy Hudson','thunder','TE',693,14,4,NULL),(7,'Anthony Roberts','jets','TE',941,11,7,NULL),(8,'Harold Elliott','bulls','WR',504,14,12,NULL),(9,'Kelly Collins','panthers','WR',271,6,1,NULL),(10,'Gloria Burns','ducks','QB',506,4,1,NULL),(11,'Phillip Reyes','kings','RB',896,25,8,1),(12,'Benjamin Mason','thunder','TE',847,13,13,NULL),(13,'Theresa Ford','dolphins','RB',490,13,13,NULL),(14,'Albert Ryan','patriots','TE',584,15,13,NULL),(15,'Joe Martinez','bulls','QB',692,20,11,NULL),(16,'Brenda Chavez','patriots','WR',85,28,15,NULL),(17,'Daniel Rice','canucks','RB',557,12,0,NULL),(18,'Lois Hamilton','bulls','TE',124,21,13,NULL),(19,'Annie Bradley','panthers','QB',769,26,5,1),(20,'Andrew Tucker','panthers','RB',832,22,14,1),(21,'Shirley Medina','canucks','WR',811,12,15,NULL),(22,'Rose Mills','panthers','TE',3,30,8,NULL),(23,'Jimmy Elliott','thunder','WR',641,11,7,NULL),(24,'Doris Sims','dolphins','WR',103,10,19,NULL),(25,'Justin Simmons','ducks','WR',165,12,12,NULL),(26,'Wanda Taylor','ducks','WR',644,19,19,NULL),(27,'Emily Lewis','bulls','WR',327,18,9,NULL),(28,'Mary Riley','ducks','RB',502,18,4,NULL),(29,'Nicholas Robertson','dolphins','WR',938,14,2,NULL),(30,'Christopher Adams','patriots','WR',705,11,4,NULL),(31,'Virginia Weaver','dolphins','QB',157,16,20,NULL),(32,'Carlos Baker','bulls','QB',647,28,8,1),(33,'Nicole Ward','panthers','QB',24,21,0,NULL),(34,'Joseph Grant','bills','TE',657,5,0,NULL),(35,'Earl Taylor','canucks','QB',160,21,5,NULL),(36,'Fred Wright','canucks','QB',519,22,9,1),(37,'Nicholas Cole','panthers','QB',271,6,3,NULL),(38,'Pamela Barnes','panthers','QB',577,16,8,NULL),(39,'Billy Bradley','kings','QB',304,2,5,NULL),(40,'Bobby Kelly','dolphins','RB',82,7,2,NULL),(41,'Michelle Phillips','bills','TE',573,10,1,NULL),(42,'Thomas Lane','panthers','RB',370,3,1,NULL),(43,'Daniel Murray','bulls','RB',622,1,0,NULL),(44,'Frances Harvey','ducks','QB',16,8,9,NULL),(45,'Patrick Bailey','bills','RB',688,28,12,1),(46,'Eric Williamson','bills','QB',439,22,4,NULL),(47,'Michael Mills','dolphins','QB',538,6,0,NULL),(48,'Judy Harper','thunder','RB',609,27,3,1),(49,'Richard Chapman','canucks','TE',262,21,5,NULL),(50,'Daniel Bowman','patriots','QB',785,21,15,1),(51,'Harry Johnson','dolphins','QB',844,5,10,NULL),(52,'Frank Mcdonald','bulls','RB',629,13,12,NULL),(53,'Andrea Payne','dolphins','WR',762,14,7,NULL),(54,'Emily Myers','kings','QB',147,14,3,NULL),(55,'Patrick Spencer','jets','QB',813,12,9,NULL),(56,'Russell Wheeler','bills','QB',466,16,18,NULL),(57,'Bonnie King','dolphins','RB',201,19,2,NULL),(58,'Mildred Baker','dolphins','TE',406,22,3,NULL),(59,'Carolyn Thompson','canucks','QB',584,4,16,NULL),(60,'Adam Grant','dolphins','QB',860,6,2,NULL),(61,'Timothy Armstrong','dolphins','WR',872,20,10,NULL),(62,'Beverly Greene','kings','WR',309,29,3,NULL),(63,'Charles Larson','jets','TE',858,20,2,NULL),(64,'Diana Moore','thunder','WR',710,26,2,1),(65,'Scott Montgomery','bills','WR',74,22,10,NULL),(66,'Tammy Hunter','kings','QB',304,23,5,NULL),(67,'Emily Flores','jets','QB',396,13,0,NULL),(68,'Joshua Morris','patriots','RB',963,20,6,NULL),(69,'Jacqueline Rodriguez','bills','WR',369,3,7,NULL),(70,'Willie Simpson','thunder','WR',695,27,9,1),(71,'Doris George','bulls','RB',612,23,2,1),(72,'Diana Gutierrez','bulls','QB',907,20,9,NULL),(73,'Jonathan Simmons','patriots','QB',246,15,5,NULL),(74,'Dorothy Martinez','bills','QB',31,21,8,NULL),(75,'Raymond Jacobs','panthers','TE',350,0,0,NULL),(76,'Teresa Stephens','jets','TE',595,1,5,NULL),(77,'Carolyn Lane','dolphins','WR',342,5,5,NULL),(78,'Wayne Mendoza','kings','TE',189,7,8,NULL),(79,'Ashley Snyder','patriots','RB',113,9,4,NULL),(80,'Joshua Ross','ducks','RB',490,16,9,NULL),(81,'Edward Lee','dolphins','TE',449,4,7,NULL),(82,'Lillian Rose','patriots','WR',40,8,6,NULL),(83,'Joshua Gray','bills','TE',87,1,7,NULL),(84,'Jessica Meyer','bulls','TE',732,1,9,NULL),(85,'Annie Bell','bulls','QB',591,15,6,NULL),(86,'Craig Clark','patriots','RB',252,4,5,NULL),(87,'Brenda White','patriots','TE',108,25,3,NULL),(88,'Keith Fox','canucks','WR',59,5,7,NULL),(89,'Jacqueline Olson','ducks','TE',334,20,7,NULL),(90,'Doris Burns','patriots','TE',748,20,10,NULL),(91,'Ashley Allen','bills','WR',128,6,9,NULL),(92,'Roy Allen','dolphins','QB',139,9,0,NULL),(93,'Rebecca Baker','bulls','RB',665,14,10,NULL),(94,'Jimmy Ray','thunder','QB',287,15,3,NULL),(95,'Lori Ryan','bulls','QB',831,27,10,1),(96,'Nicholas Ortiz','bulls','TE',200,18,5,NULL),(97,'Virginia Crawford','bulls','TE',584,29,3,1),(98,'Elizabeth Weaver','panthers','QB',873,23,4,1),(99,'Craig Jordan','bulls','TE',744,25,1,1),(100,'Laura Burns','kings','WR',558,19,9,NULL);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
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
