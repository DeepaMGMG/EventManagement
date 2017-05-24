CREATE DATABASE  IF NOT EXISTS `eventmanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `eventmanagement`;
-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: eventmanagement
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `event_booking`
--

DROP TABLE IF EXISTS `event_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `no_tickets` int(11) DEFAULT NULL,
  `total_price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_booking`
--

LOCK TABLES `event_booking` WRITE;
/*!40000 ALTER TABLE `event_booking` DISABLE KEYS */;
INSERT INTO `event_booking` VALUES (1,1,9,5,'15000'),(2,1,9,5,'15000'),(3,1,9,5,'15000'),(4,1,9,5,'15000'),(5,1,9,5,'15000'),(6,1,9,1,'3000'),(7,1,9,2,'6000'),(8,1,9,5,'15000'),(9,1,9,4,'12000'),(10,2,9,5,'15000'),(11,1,9,4,'12000'),(12,1,9,4,'12000'),(13,1,9,3,'9000'),(14,1,9,4,'12000'),(15,1,9,4,'12000'),(16,1,9,3,'9000'),(17,1,9,4,'12000'),(18,1,9,3,'9000'),(19,1,9,3,'9000'),(20,1,9,3,'9000'),(21,1,9,2,'6000'),(22,1,9,2,'6000'),(23,1,9,1,'3000'),(24,1,9,2,'6000');
/*!40000 ALTER TABLE `event_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_details`
--

DROP TABLE IF EXISTS `event_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_details` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(150) DEFAULT NULL,
  `event_organizer` varchar(150) DEFAULT NULL,
  `event_detailed` varchar(150) DEFAULT NULL,
  `event_venue` varchar(150) DEFAULT NULL,
  `event_startdate` date DEFAULT NULL,
  `event_enddate` date DEFAULT NULL,
  `event_website_url` varchar(150) DEFAULT NULL,
  `event_ticket_price` varchar(150) DEFAULT NULL,
  `contact_no1` varchar(150) DEFAULT NULL,
  `contact_no2` varchar(150) DEFAULT NULL,
  `Seats` varchar(150) DEFAULT NULL,
  `booking_url` varchar(150) DEFAULT NULL,
  `terms_conditions` varchar(150) DEFAULT NULL,
  `event_banner` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_details`
--

LOCK TABLES `event_details` WRITE;
/*!40000 ALTER TABLE `event_details` DISABLE KEYS */;
INSERT INTO `event_details` VALUES (1,'DANDELI WATER GAME','FLY CATCHER RESORT','Event belongs to adventure,Where you get river rafting of 9Km from Supa Dam to Dandeli Park','Ganesh Gudi','2017-05-20','2017-05-22','http://www.facebook.com/DeepaMG','3000','8951519616','7026989662','221','http://www.jelltcone.com','health condition will be checked before participating in event and once booked money will not be returned','http://www.rishikeshtourism.in/Rafting/Rafting-Rishikesh-Picture.jpg'),(2,'TRECKING','DREAM PLACE','This event includes trecking in deep forest of dandeli,about 10 km distance','dandeli','2017-05-21','2017-05-25','http://www.facebook.com/DeepaMG','3000','8951519616','8951519616','195','http://gsffhg.com','health condition will be checked before participating in event and once booked money will not be returned','http://a3.images.thrillophilia.com/image/upload/s--mNws3h8S--/c_fill,f_auto,fl_strip_profile,h_660,q_jpegmini,w_1920/v1/images/photos/000/040/602/original/24_Most_Exciting_Trekking_Places_around_Bangalore.jpg.jpg?1458180860');
/*!40000 ALTER TABLE `event_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) DEFAULT NULL,
  `lastname` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `mobile` varchar(150) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `usertype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dee','mg','pass','deepa.tech','65456545','gsgdstdgdgh','1','2'),(9,'Deepa','MGMG','pass','deepamg996@gmail.com','2321313','123dfr frfffffffffffffffffffffffff','1','2'),(10,'admin','admin','admin','admin@eva.com','99090990','banashankari layout,ouutrr','1','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'eventmanagement'
--
/*!50003 DROP PROCEDURE IF EXISTS `List_Customer_Booking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `List_Customer_Booking`()
BEGIN
SELECT u.username as 'Customer Name',
ed.event_title as 'Event Name',
ed.event_organizer as 'Event Organizer',
ed.event_startdate as 'Event date', 
ev.no_tickets as 'No of Tickets', 
ev.total_price as 'Total Price'
FROM eventmanagement.event_booking ev,
users u,
event_details ed 
where ev.user_id=u.id
AND ev.event_id=ed.event_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-24 18:28:05
