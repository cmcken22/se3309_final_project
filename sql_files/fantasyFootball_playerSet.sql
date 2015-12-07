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
-- Table structure for table `playerSet`
--

DROP TABLE IF EXISTS `playerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playerSet` (
  `leagueID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `teamID` int(11) DEFAULT NULL,
  KEY `teamID` (`teamID`),
  KEY `playerID` (`playerID`),
  KEY `leagueID` (`leagueID`),
  CONSTRAINT `playerset_ibfk_1` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`),
  CONSTRAINT `playerset_ibfk_2` FOREIGN KEY (`playerID`) REFERENCES `players` (`playerID`),
  CONSTRAINT `playerset_ibfk_3` FOREIGN KEY (`leagueID`) REFERENCES `league` (`leagueID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerSet`
--

LOCK TABLES `playerSet` WRITE;
/*!40000 ALTER TABLE `playerSet` DISABLE KEYS */;
INSERT INTO `playerSet` VALUES (1,1,1),(1,2,2),(1,3,3),(1,4,4),(1,5,5),(1,6,6),(1,7,7),(1,8,8),(1,9,9),(1,10,10),(1,11,101),(1,12,101),(1,13,101),(1,14,1),(1,15,2),(1,16,3),(1,17,4),(1,18,5),(1,19,6),(1,20,7),(1,21,8),(1,22,9),(1,23,10),(1,24,101),(1,25,101),(1,26,101),(1,27,1),(1,28,2),(1,29,3),(1,30,4),(1,31,5),(1,32,6),(1,33,7),(1,34,8),(1,35,9),(1,36,10),(1,37,101),(1,38,101),(1,39,101),(1,40,101),(1,41,1),(1,42,2),(1,43,3),(1,44,4),(1,45,5),(1,46,6),(1,47,7),(1,48,8),(1,49,9),(1,50,10),(1,51,101),(1,52,101),(1,53,101),(1,54,103),(1,55,101),(1,56,103),(1,57,2),(1,58,103),(1,59,4),(1,60,103),(1,61,6),(1,62,103),(1,63,103),(1,64,103),(1,65,10),(1,66,103),(1,67,103),(1,68,103),(1,69,101),(1,70,101),(1,71,101),(1,72,101),(1,73,101),(1,74,101),(1,75,101),(1,76,101),(1,77,101),(1,78,101),(1,79,101),(1,80,101),(1,81,101),(1,82,101),(1,83,101),(1,84,101),(1,85,101),(1,86,101),(1,87,101),(1,88,101),(1,89,101),(1,90,101),(1,91,101),(1,92,101),(1,93,101),(1,94,101),(1,95,101),(1,96,101),(1,97,101),(1,98,101),(1,99,101),(1,100,101),(2,1,102),(2,2,102),(2,3,102),(2,4,102),(2,5,102),(2,6,11),(2,7,12),(2,8,13),(2,9,14),(2,10,15),(2,11,16),(2,12,17),(2,13,18),(2,14,19),(2,15,20),(2,16,102),(2,17,102),(2,18,102),(2,19,102),(2,20,102),(2,21,102),(2,22,102),(2,23,11),(2,24,12),(2,25,13),(2,26,14),(2,27,15),(2,28,16),(2,29,17),(2,30,18),(2,31,19),(2,32,20),(2,33,102),(2,34,102),(2,35,102),(2,36,102),(2,37,102),(2,38,102),(2,39,102),(2,40,102),(2,41,102),(2,42,102),(2,43,102),(2,44,102),(2,45,102),(2,46,102),(2,47,102),(2,48,102),(2,49,102),(2,50,102),(2,51,102),(2,52,102),(2,53,11),(2,54,103),(2,55,13),(2,56,103),(2,57,15),(2,58,103),(2,59,17),(2,60,103),(2,61,19),(2,62,103),(2,63,103),(2,64,103),(2,65,102),(2,66,103),(2,67,103),(2,68,103),(2,69,13),(2,70,14),(2,71,15),(2,72,16),(2,73,17),(2,74,18),(2,75,19),(2,76,20),(2,77,102),(2,78,102),(2,79,102),(2,80,102),(2,81,102),(2,82,102),(2,83,102),(2,84,102),(2,85,102),(2,86,102),(2,87,102),(2,88,102),(2,89,102),(2,90,11),(2,91,12),(2,92,13),(2,93,14),(2,94,15),(2,95,16),(2,96,17),(2,97,18),(2,98,19),(2,99,20),(2,100,102),(3,1,21),(3,2,103),(3,3,23),(3,4,104),(3,5,22),(3,6,103),(3,7,24),(3,8,103),(3,9,25),(3,10,26),(3,11,27),(3,12,103),(3,13,28),(3,14,29),(3,15,30),(3,16,103),(3,17,103),(3,18,103),(3,19,21),(3,20,103),(3,21,23),(3,22,103),(3,23,22),(3,24,103),(3,25,24),(3,26,103),(3,27,25),(3,28,26),(3,29,27),(3,30,103),(3,31,28),(3,32,29),(3,33,30),(3,34,103),(3,35,103),(3,36,103),(3,37,21),(3,38,103),(3,39,23),(3,40,103),(3,41,22),(3,42,103),(3,43,24),(3,44,103),(3,45,25),(3,46,26),(3,47,27),(3,48,103),(3,49,28),(3,50,29),(3,51,30),(3,52,103),(3,53,103),(3,54,103),(3,55,103),(3,56,103),(3,57,103),(3,58,103),(3,59,103),(3,60,103),(3,61,103),(3,62,103),(3,63,103),(3,64,103),(3,65,103),(3,66,103),(3,67,103),(3,68,103),(3,69,103),(3,70,103),(3,71,103),(3,72,21),(3,73,103),(3,74,23),(3,75,103),(3,76,22),(3,77,103),(3,78,24),(3,79,103),(3,80,25),(3,81,26),(3,82,27),(3,83,103),(3,84,28),(3,85,29),(3,86,30),(3,87,21),(3,88,30),(3,89,23),(3,90,103),(3,91,22),(3,92,103),(3,93,24),(3,94,103),(3,95,25),(3,96,26),(3,97,27),(3,98,103),(3,99,28),(3,100,29),(4,1,104),(4,2,40),(4,3,38),(4,4,104),(4,5,37),(4,6,39),(4,7,104),(4,8,36),(4,9,35),(4,10,31),(4,11,34),(4,12,33),(4,13,30),(4,14,104),(4,15,32),(4,16,104),(4,17,40),(4,18,38),(4,19,104),(4,20,37),(4,21,39),(4,22,104),(4,23,36),(4,24,35),(4,25,31),(4,26,34),(4,27,33),(4,28,30),(4,29,104),(4,30,32),(4,31,104),(4,32,40),(4,33,38),(4,34,104),(4,35,37),(4,36,39),(4,37,104),(4,38,36),(4,39,35),(4,40,31),(4,41,34),(4,42,33),(4,43,30),(4,44,104),(4,45,32),(4,46,104),(4,47,104),(4,48,104),(4,49,104),(4,50,104),(4,51,104),(4,52,104),(4,53,104),(4,54,103),(4,55,104),(4,56,103),(4,57,104),(4,58,103),(4,59,104),(4,60,103),(4,61,104),(4,62,103),(4,63,103),(4,64,103),(4,65,37),(4,66,103),(4,67,103),(4,68,103),(4,69,35),(4,70,31),(4,71,34),(4,72,33),(4,73,30),(4,74,104),(4,75,32),(4,76,104),(4,77,104),(4,78,104),(4,79,104),(4,80,104),(4,81,104),(4,82,104),(4,83,104),(4,84,40),(4,85,38),(4,86,104),(4,87,37),(4,88,39),(4,89,104),(4,90,36),(4,91,35),(4,92,31),(4,93,34),(4,94,33),(4,95,30),(4,96,104),(4,97,32),(4,98,104),(4,99,104),(4,100,104),(5,1,105),(5,2,105),(5,3,105),(5,4,105),(5,5,105),(5,6,105),(5,7,105),(5,8,41),(5,9,42),(5,10,43),(5,11,44),(5,12,45),(5,13,46),(5,14,47),(5,15,48),(5,16,49),(5,17,50),(5,18,105),(5,19,105),(5,20,105),(5,21,105),(5,22,105),(5,23,105),(5,24,105),(5,25,41),(5,26,42),(5,27,43),(5,28,44),(5,29,45),(5,30,46),(5,31,47),(5,32,48),(5,33,49),(5,34,50),(5,35,105),(5,36,105),(5,37,105),(5,38,105),(5,39,105),(5,40,105),(5,41,41),(5,42,42),(5,43,43),(5,44,44),(5,45,45),(5,46,46),(5,47,47),(5,48,48),(5,49,49),(5,50,50),(5,51,105),(5,52,105),(5,53,105),(5,54,103),(5,55,105),(5,56,103),(5,57,105),(5,58,103),(5,59,105),(5,60,103),(5,61,41),(5,62,103),(5,63,103),(5,64,103),(5,65,45),(5,66,103),(5,67,103),(5,68,103),(5,69,49),(5,70,50),(5,71,105),(5,72,105),(5,73,105),(5,74,105),(5,75,41),(5,76,42),(5,77,43),(5,78,44),(5,79,45),(5,80,46),(5,81,47),(5,82,48),(5,83,49),(5,84,50),(5,85,105),(5,86,105),(5,87,105),(5,88,105),(5,89,105),(5,90,105),(5,91,105),(5,92,105),(5,93,105),(5,94,105),(5,95,105),(5,96,105),(5,97,105),(5,98,105),(5,99,105),(5,100,105),(6,1,51),(6,2,55),(6,3,106),(6,4,54),(6,5,106),(6,6,53),(6,7,52),(6,8,60),(6,9,106),(6,10,59),(6,11,58),(6,12,57),(6,13,106),(6,14,56),(6,15,106),(6,16,106),(6,17,106),(6,18,51),(6,19,55),(6,20,106),(6,21,54),(6,22,106),(6,23,53),(6,24,52),(6,25,60),(6,26,106),(6,27,59),(6,28,58),(6,29,57),(6,30,106),(6,31,56),(6,32,106),(6,33,106),(6,34,106),(6,35,106),(6,36,106),(6,37,106),(6,38,106),(6,39,106),(6,40,106),(6,41,106),(6,42,106),(6,43,106),(6,44,106),(6,45,51),(6,46,55),(6,47,106),(6,48,54),(6,49,106),(6,50,53),(6,51,52),(6,52,60),(6,53,106),(6,54,103),(6,55,58),(6,56,103),(6,57,106),(6,58,103),(6,59,106),(6,60,103),(6,61,51),(6,62,103),(6,63,103),(6,64,103),(6,65,106),(6,66,103),(6,67,103),(6,68,103),(6,69,106),(6,70,59),(6,71,58),(6,72,57),(6,73,106),(6,74,56),(6,75,106),(6,76,106),(6,77,106),(6,78,106),(6,79,106),(6,80,106),(6,81,106),(6,82,106),(6,83,106),(6,84,51),(6,85,55),(6,86,106),(6,87,54),(6,88,106),(6,89,53),(6,90,52),(6,91,60),(6,92,106),(6,93,59),(6,94,58),(6,95,57),(6,96,106),(6,97,56),(6,98,106),(6,99,106),(6,100,106),(7,1,61),(7,2,62),(7,3,63),(7,4,64),(7,5,65),(7,6,66),(7,7,67),(7,8,68),(7,9,69),(7,10,70),(7,11,107),(7,12,107),(7,13,107),(7,14,107),(7,15,107),(7,16,61),(7,17,62),(7,18,63),(7,19,64),(7,20,65),(7,21,66),(7,22,67),(7,23,68),(7,24,69),(7,25,70),(7,26,107),(7,27,107),(7,28,107),(7,29,107),(7,30,107),(7,31,107),(7,32,107),(7,33,107),(7,34,107),(7,35,107),(7,36,107),(7,37,107),(7,38,107),(7,39,107),(7,40,107),(7,41,107),(7,42,107),(7,43,107),(7,44,107),(7,45,107),(7,46,107),(7,47,107),(7,48,107),(7,49,107),(7,50,107),(7,51,107),(7,52,107),(7,53,107),(7,54,103),(7,55,107),(7,56,103),(7,57,107),(7,58,103),(7,59,107),(7,60,103),(7,61,107),(7,62,103),(7,63,103),(7,64,103),(7,65,63),(7,66,103),(7,67,103),(7,68,103),(7,69,67),(7,70,68),(7,71,69),(7,72,70),(7,73,107),(7,74,107),(7,75,107),(7,76,107),(7,77,61),(7,78,62),(7,79,63),(7,80,64),(7,81,65),(7,82,66),(7,83,67),(7,84,68),(7,85,69),(7,86,70),(7,87,107),(7,88,107),(7,89,107),(7,90,107),(7,91,61),(7,92,62),(7,93,63),(7,94,64),(7,95,65),(7,96,66),(7,97,67),(7,98,68),(7,99,69),(7,100,70),(8,1,108),(8,2,108),(8,3,108),(8,4,108),(8,5,108),(8,6,71),(8,7,72),(8,8,73),(8,9,74),(8,10,75),(8,11,76),(8,12,77),(8,13,78),(8,14,79),(8,15,80),(8,16,108),(8,17,108),(8,18,108),(8,19,108),(8,20,71),(8,21,72),(8,22,73),(8,23,74),(8,24,75),(8,25,76),(8,26,77),(8,27,78),(8,28,79),(8,29,80),(8,30,108),(8,31,108),(8,32,108),(8,33,71),(8,34,72),(8,35,73),(8,36,74),(8,37,75),(8,38,76),(8,39,77),(8,40,78),(8,41,79),(8,42,80),(8,43,108),(8,44,108),(8,45,108),(8,46,108),(8,47,108),(8,48,108),(8,49,108),(8,50,108),(8,51,108),(8,52,108),(8,53,108),(8,54,103),(8,55,108),(8,56,103),(8,57,108),(8,58,103),(8,59,72),(8,60,103),(8,61,74),(8,62,103),(8,63,103),(8,64,103),(8,65,78),(8,66,103),(8,67,103),(8,68,103),(8,69,108),(8,70,108),(8,71,108),(8,72,108),(8,73,108),(8,74,71),(8,75,72),(8,76,73),(8,77,74),(8,78,75),(8,79,76),(8,80,77),(8,81,78),(8,82,79),(8,83,80),(8,84,108),(8,85,108),(8,86,108),(8,87,108),(8,88,108),(8,89,108),(8,90,108),(8,91,108),(8,92,108),(8,93,108),(8,94,108),(8,95,108),(8,96,108),(8,97,108),(8,98,108),(8,99,108),(8,100,108),(9,1,89),(9,2,109),(9,3,84),(9,4,85),(9,5,109),(9,6,82),(9,7,109),(9,8,86),(9,9,89),(9,10,109),(9,11,88),(9,12,109),(9,13,109),(9,14,109),(9,15,81),(9,16,87),(9,17,109),(9,18,109),(9,19,70),(9,20,83),(9,21,89),(9,22,109),(9,23,84),(9,24,85),(9,25,109),(9,26,82),(9,27,109),(9,28,86),(9,29,109),(9,30,109),(9,31,88),(9,32,109),(9,33,109),(9,34,109),(9,35,81),(9,36,87),(9,37,109),(9,38,109),(9,39,70),(9,40,83),(9,41,109),(9,42,89),(9,43,109),(9,44,84),(9,45,85),(9,46,109),(9,47,82),(9,48,109),(9,49,86),(9,50,109),(9,51,109),(9,52,88),(9,53,109),(9,54,103),(9,55,109),(9,56,103),(9,57,87),(9,58,103),(9,59,109),(9,60,103),(9,61,83),(9,62,103),(9,63,103),(9,64,103),(9,65,84),(9,66,103),(9,67,103),(9,68,103),(9,69,109),(9,70,86),(9,71,109),(9,72,109),(9,73,88),(9,74,109),(9,75,109),(9,76,109),(9,77,81),(9,78,87),(9,79,109),(9,80,109),(9,81,70),(9,82,83),(9,83,84),(9,84,85),(9,85,109),(9,86,82),(9,87,109),(9,88,86),(9,89,109),(9,90,109),(9,91,88),(9,92,109),(9,93,109),(9,94,109),(9,95,81),(9,96,87),(9,97,109),(9,98,109),(9,99,70),(9,100,83),(10,1,110),(10,2,110),(10,3,110),(10,4,110),(10,5,110),(10,6,110),(10,7,93),(10,8,110),(10,9,110),(10,10,94),(10,11,110),(10,12,91),(10,13,110),(10,14,92),(10,15,100),(10,16,110),(10,17,95),(10,18,96),(10,19,97),(10,20,98),(10,21,99),(10,22,110),(10,23,110),(10,24,110),(10,25,93),(10,26,110),(10,27,110),(10,28,94),(10,29,110),(10,30,91),(10,31,110),(10,32,92),(10,33,100),(10,34,110),(10,35,95),(10,36,96),(10,37,97),(10,38,98),(10,39,99),(10,40,110),(10,41,110),(10,42,110),(10,43,93),(10,44,110),(10,45,110),(10,46,94),(10,47,110),(10,48,91),(10,49,110),(10,50,92),(10,51,100),(10,52,110),(10,53,95),(10,54,103),(10,55,97),(10,56,103),(10,57,99),(10,58,103),(10,59,110),(10,60,103),(10,61,110),(10,62,103),(10,63,103),(10,64,103),(10,65,91),(10,66,103),(10,67,103),(10,68,103),(10,69,110),(10,70,95),(10,71,96),(10,72,97),(10,73,98),(10,74,99),(10,75,110),(10,76,110),(10,77,110),(10,78,110),(10,79,93),(10,80,110),(10,81,110),(10,82,94),(10,83,110),(10,84,91),(10,85,110),(10,86,92),(10,87,100),(10,88,110),(10,89,95),(10,90,96),(10,91,97),(10,92,98),(10,93,99),(10,94,110),(10,95,110),(10,96,110),(10,97,110),(10,98,110),(10,99,110),(10,100,110);
/*!40000 ALTER TABLE `playerSet` ENABLE KEYS */;
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
