CREATE DATABASE  IF NOT EXISTS `sonido` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sonido`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: sonido
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'The Beatles','Reino Unido','1960-01-01',1,'https://ejemplo.com/the_beatles.jpg'),(2,'Michael Jackson','Estados Unidos','1958-08-29',2,'https://ejemplo.com/michael_jackson.jpg'),(3,'Miles Davis','Estados Unidos','1926-05-26',3,'https://ejemplo.com/miles_davis.jpg'),(4,'B.B. King','Estados Unidos','1925-09-16',4,'https://ejemplo.com/bb_king.jpg'),(5,'Kraftwerk','Alemania','1970-01-01',5,'https://ejemplo.com/kraftwerk.jpg'),(6,'Madonna','Estados Unidos','1958-08-16',2,'https://ejemplo.com/madonna.jpg'),(7,'Elvis Presley','Estados Unidos','1935-01-08',1,'https://ejemplo.com/elvis_presley.jpg'),(8,'John Coltrane','Estados Unidos','1926-09-23',3,'https://ejemplo.com/john_coltrane.jpg'),(9,'Led Zeppelin','Reino Unido','1968-07-01',6,'https://ejemplo.com/led_zeppelin.jpg'),(10,'Beyoncé','Estados Unidos','1981-09-04',7,'https://ejemplo.com/beyonce.jpg'),(11,'Bob Marley','Jamaica','1945-02-06',8,'https://ejemplo.com/bob_marley.jpg'),(12,'Queen','Reino Unido','1970-06-27',1,'https://ejemplo.com/queen.jpg'),(13,'Prince','Estados Unidos','1958-06-07',2,'https://ejemplo.com/prince.jpg'),(14,'David Bowie','Reino Unido','1947-01-08',1,'https://ejemplo.com/david_bowie.jpg'),(15,'Ella Fitzgerald','Estados Unidos','1917-04-25',3,'https://ejemplo.com/ella_fitzgerald.jpg');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `canciones`
--

LOCK TABLES `canciones` WRITE;
/*!40000 ALTER TABLE `canciones` DISABLE KEYS */;
INSERT INTO `canciones` VALUES (1,'Come Together','00:04:20',1,1,1),(2,'Billie Jean','00:04:54',2,2,2),(3,'So What','00:09:22',3,3,3),(4,'The Thrill Is Gone','00:05:24',4,4,4),(5,'Trans-Europe Express','00:06:52',5,5,5),(6,'4 Minutes','00:04:04',6,6,2),(7,'Bohemian Rhapsody','00:05:55',12,7,1),(8,'Sign o the Times','00:03:43',13,8,2),(9,'Stairway to Heaven','00:08:02',9,9,6),(10,'The Heart of Saturday Night','00:03:53',14,10,1),(11,'Acknowledgement','00:07:48',8,11,3),(12,'Renaissance','00:04:43',10,12,2),(13,'Heartbreak Hotel','00:02:10',7,13,1),(14,'Three Little Birds','00:03:00',11,14,8),(15,'Summertime','00:04:58',15,15,3);
/*!40000 ALTER TABLE `canciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `conciertos`
--

LOCK TABLES `conciertos` WRITE;
/*!40000 ALTER TABLE `conciertos` DISABLE KEYS */;
INSERT INTO `conciertos` VALUES (1,1,'2024-11-11','Olympiahalle','Munich','Alemania','02:45:00'),(2,2,'2024-10-08','The O2 Arena','Londres','Reino Unido','03:10:00'),(3,3,'2024-08-30','Royal Albert Hall','Londres','Reino Unido','02:30:00'),(4,4,'2024-06-21','Chicago Theatre','Chicago','Estados Unidos','02:50:00'),(5,5,'2024-07-20','O2 World','Berlín','Alemania','02:20:00'),(6,6,'2024-06-15','Earls Court Exhibition Centre','Londres','Reino Unido','03:45:00'),(7,7,'2024-09-05','Stade de France','París','Francia','03:20:00'),(8,8,'2024-11-30','Carnegie Hall','Nueva York','Estados Unidos','02:10:00'),(9,9,'2024-10-22','Madison Square Garden','Nueva York','Estados Unidos','02:50:00'),(10,10,'2024-08-14','Red Rocks Amphitheatre','Denver','Estados Unidos','02:30:00'),(11,11,'2024-07-30','Madison Square Garden','Nueva York','Estados Unidos','03:15:00'),(12,12,'2024-09-01','Yasgur\'s Farm','Bethel','Estados Unidos','03:20:00'),(13,13,'2024-06-18','Fillmore West','San Francisco','Estados Unidos','02:40:00'),(14,14,'2024-11-25','Paradiso','Ámsterdam','Países Bajos','02:55:00'),(15,15,'2024-10-05','Hollywood Bowl','Los Ángeles','Estados Unidos','03:30:00');
/*!40000 ALTER TABLE `conciertos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discográficas`
--

LOCK TABLES `discográficas` WRITE;
/*!40000 ALTER TABLE `discográficas` DISABLE KEYS */;
INSERT INTO `discográficas` VALUES (1,'Apple Records','Reino Unido'),(2,'Epic Records','Estados Unidos'),(3,'Columbia Records','Estados Unidos'),(4,'ABC Records','Estados Unidos'),(5,'Kling Klang','Alemania'),(6,'Warner Bros. Records','Estados Unidos'),(7,'EMI Records','Reino Unido'),(8,'Paisley Park Records','Estados Unidos'),(9,'Atlantic Records','Estados Unidos'),(10,'RCA Records','Estados Unidos'),(11,'Virgin Records','Reino Unido'),(12,'Island Records','Reino Unido'),(13,'Blue Note Records','Estados Unidos'),(14,'Impulse! Records','Estados Unidos'),(15,'Capitol Records','Estados Unidos');
/*!40000 ALTER TABLE `discográficas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `géneros`
--

LOCK TABLES `géneros` WRITE;
/*!40000 ALTER TABLE `géneros` DISABLE KEYS */;
INSERT INTO `géneros` VALUES (1,'Rock'),(2,'Pop'),(3,'Jazz'),(4,'Blues'),(5,'Electronic'),(6,'Hard Rock'),(7,'R&B'),(8,'Reggae');
/*!40000 ALTER TABLE `géneros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productores`
--

LOCK TABLES `productores` WRITE;
/*!40000 ALTER TABLE `productores` DISABLE KEYS */;
INSERT INTO `productores` VALUES (1,'George Martin','Reino Unido','1926-01-03'),(2,'Quincy Jones','Estados Unidos','1933-03-14'),(3,'Teo Macero','Estados Unidos','1925-10-30'),(4,'Sam Phillips','Estados Unidos','1923-01-05'),(5,'Giorgio Moroder','Italia','1940-04-26'),(6,'Jimmy Iovine','Estados Unidos','1953-03-11'),(7,'Phil Spector','Estados Unidos','1939-12-26'),(8,'Tony Visconti','Estados Unidos','1944-04-24'),(9,'Steve Albini','Estados Unidos','1962-07-22'),(10,'Nile Rodgers','Estados Unidos','1952-09-19'),(11,'Alan Parsons','Reino Unido','1948-12-20'),(12,'David Foster','Canadá','1949-11-01'),(13,'Rick Rubin','Estados Unidos','1963-03-10');
/*!40000 ALTER TABLE `productores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `álbumes`
--

LOCK TABLES `álbumes` WRITE;
/*!40000 ALTER TABLE `álbumes` DISABLE KEYS */;
INSERT INTO `álbumes` VALUES (1,'Abbey Road',1,1,'1969-09-26',1,1,'https://example.com/abbey_road.jpg'),(2,'Thriller',2,2,'1982-11-30',2,2,'https://example.com/thriller.jpg'),(3,'Kind of Blue',3,3,'1959-08-17',3,3,'https://example.com/kind_of_blue.jpg'),(4,'Live at the Regal',4,4,'1965-06-21',4,4,'https://example.com/live_at_the_regal.jpg'),(5,'Trans-Europe Express',5,5,'1977-03-25',5,5,'https://example.com/trans_europe_express.jpg'),(6,'Hard Candy',6,6,'2008-04-19',2,2,'https://example.com/hard_candy.jpg'),(7,'A Night at the Opera',12,8,'1975-11-21',1,1,'https://example.com/a_night_at_the_opera.jpg'),(8,'Sign o the Times',13,9,'1987-03-30',2,2,'https://example.com/sign_o_the_times.jpg'),(9,'Led Zeppelin IV',9,10,'1971-11-08',6,1,'https://example.com/led_zeppelin_iv.jpg'),(10,'Outside',14,11,'1995-09-25',1,3,'https://example.com/outside.jpg'),(11,'A Love Supreme',8,12,'1964-12-09',3,3,'https://example.com/a_love_supreme.jpg'),(12,'Renaissance',10,13,'2022-07-29',2,2,'https://example.com/renaissance.jpg'),(13,'Elvis Presley',7,14,'1956-03-13',1,1,'https://example.com/elvis_presley.jpg'),(14,'Exodus',11,15,'1977-06-03',8,4,'https://example.com/exodus.jpg'),(15,'Porgy and Bess',15,15,'1959-04-04',3,5,'https://example.com/porgy_and_bess.jpg');
/*!40000 ALTER TABLE `álbumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `álbumes_en_vivo`
--

LOCK TABLES `álbumes_en_vivo` WRITE;
/*!40000 ALTER TABLE `álbumes_en_vivo` DISABLE KEYS */;
INSERT INTO `álbumes_en_vivo` VALUES (1,'Live at Budokan',1,1,'1976-12-01',1,'https://example.com/live_at_budokan.jpg'),(2,'Live in Concert',2,2,'1988-06-15',2,'https://example.com/live_in_concert.jpg'),(3,'Live at Montreux',3,3,'1969-07-10',3,'https://example.com/live_at_montreux.jpg'),(4,'Live at the Regal',4,4,'1965-06-21',4,'https://example.com/live_at_regal.jpg'),(5,'Live in Berlin',5,5,'1981-09-30',5,'https://example.com/live_in_berlin.jpg'),(6,'Live in London',6,6,'1979-04-25',6,'https://example.com/live_in_london.jpg'),(7,'Live at Wembley',7,7,'1986-07-12',1,'https://example.com/live_at_wembley.jpg'),(8,'Live at Carnegie Hall',8,8,'1959-11-23',3,'https://example.com/live_at_carnegie_hall.jpg'),(9,'Live in Paris',9,9,'1994-03-02',6,'https://example.com/live_in_paris.jpg'),(10,'Live at Red Rocks',10,10,'1983-09-12',2,'https://example.com/live_at_red_rocks.jpg'),(11,'Live in New York',11,11,'1974-08-17',8,'https://example.com/live_in_new_york.jpg'),(12,'Live at Woodstock',12,12,'1969-08-15',1,'https://example.com/live_at_woodstock.jpg'),(13,'Live at the Fillmore',13,13,'1970-12-10',2,'https://example.com/live_at_fillmore.jpg'),(14,'Live in Amsterdam',14,14,'1987-06-29',1,'https://example.com/live_in_amsterdam.jpg'),(15,'Live at the Hollywood Bowl',15,15,'1964-09-14',3,'https://example.com/live_at_hollywood_bowl.jpg');
/*!40000 ALTER TABLE `álbumes_en_vivo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-09 13:21:21
