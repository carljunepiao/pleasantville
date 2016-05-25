-- MySQL dump 10.16  Distrib 10.1.10-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: pleasantville
-- ------------------------------------------------------
-- Server version	10.1.10-MariaDB

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `LogIn` tinyint(1) NOT NULL,
  PRIMARY KEY (`Username`,`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('Dahunk','Mahacho','dahunk','astig54321',0),('Japheth','Balane','jjapp','astig54321',1);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonAdministrator` AFTER INSERT ON `administrator` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Administrator", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonAdministrator` AFTER UPDATE ON `administrator` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Casts", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonAdministrator` AFTER DELETE ON `administrator` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Casts", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `casts`
--

DROP TABLE IF EXISTS `casts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casts` (
  `MemberID` int(20) unsigned NOT NULL,
  `ProdNo` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `MemberJob` varchar(20) NOT NULL,
  PRIMARY KEY (`MemberID`,`ProdNo`),
  UNIQUE KEY `MemberID` (`MemberID`),
  KEY `MemberID_2` (`MemberID`),
  KEY `ProdNo` (`ProdNo`),
  KEY `Title` (`Title`,`Date`),
  CONSTRAINT `casts_ibfk_4` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `casts_ibfk_5` FOREIGN KEY (`Title`, `Date`) REFERENCES `production` (`Title`, `Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `casts_ibfk_6` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casts`
--

LOCK TABLES `casts` WRITE;
/*!40000 ALTER TABLE `casts` DISABLE KEYS */;
INSERT INTO `casts` VALUES (1,3,'MahachoKaaju','2018-12-31','Freelancer');
/*!40000 ALTER TABLE `casts` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonCasts` AFTER INSERT ON `casts` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Casts", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonCasts` AFTER UPDATE ON `casts` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Casts", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonCasts` AFTER DELETE ON `casts` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Casts", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `MemberID` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `FName` varchar(40) NOT NULL,
  `LName` varchar(40) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  PRIMARY KEY (`MemberID`),
  UNIQUE KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Alfi','Kun','1234567890');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonMember` AFTER INSERT ON `member` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Insert on Member", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonMember` AFTER UPDATE ON `member` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Users", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonMember` AFTER DELETE ON `member` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Member", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `play`
--

DROP TABLE IF EXISTS `play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play` (
  `Playwright` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Time` time(6) NOT NULL,
  `Poster` blob NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  PRIMARY KEY (`Playwright`,`Title`),
  KEY `Playwright` (`Playwright`),
  KEY `Playwright_2` (`Playwright`),
  KEY `Title` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play`
--

LOCK TABLES `play` WRITE;
/*!40000 ALTER TABLE `play` DISABLE KEYS */;
INSERT INTO `play` VALUES ('Dahunk Mahacho','MahachoKaaju','05:35:13.547149','ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\06Photoshop 3.0\08BIM\0\0\0\0\0g\0FSlWJDo1KAhs_JYI6h_V\0ÿâøICC_PROFILE\0\0\0è\0\0\0\0\0\0\0mntrRGB XYZ Ù\0\0\0\0$\0acsp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-\0\0\0\0)ø=Þ¯òU®xBúäÊƒ9\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0D\0\0\0ybXYZ\0\0À\0\0\0bTRC\0\0Ô\0\0dmdd\0\0	à\0\0\0ˆgXYZ\0\0\nh\0\0\0gTRC\0\0Ô\0\0lumi\0\0\n|\0\0\0meas\0\0\n\0\0\0$bkpt\0\0\n´\0\0\0rXYZ\0\0\nÈ\0\0\0rTRC\0\0Ô\0\0tech\0\0\nÜ\0\0\0vued\0\0\nè\0\0\0‡wtpt\0\0p\0\0\0cprt\0\0„\0\0\07chad\0\0¼\0\0\0,desc\0\0\0\0\0\0\0sRGB IEC61966-2-1 black scaled\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïcurv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0\0†\0‹\0\0•\0š\0Ÿ\0¤\0©\0®\0²\0·\0¼\0Á\0Æ\0Ë\0Ð\0Õ\0Û\0à\0å\0ë\0ð\0ö\0û\r%+28>ELRY`gnu|ƒ‹’š¡©±¹ÁÉÑÙáéòú&/8AKT]gqz„Ž˜¢¬¶ÁËÕàëõ\0!-8COZfr~Š–¢®ºÇÓàìù -;HUcq~Œš¨¶ÄÓáðþ\r+:IXgw†–¦µÅÕåö\'7HYj{Œ¯ÀÑãõ+=Oat†™¬¿Òåø2FZn‚–ª¾Òçû		%	:	O	d	y		¤	º	Ï	å	û\n\n\'\n=\nT\nj\n\n˜\n®\nÅ\nÜ\nó\"9Qi€˜°Èáù*C\\uŽ§ÀÙó\r\r\r&\r@\rZ\rt\rŽ\r©\rÃ\rÞ\rø.Id›¶Òî	%A^z–³Ïì	&Ca~›¹×õ1OmŒªÉè&Ed„£Ãã#Ccƒ¤Åå\'Ij‹­Îð4Vx›½à&Il²ÖúAe‰®Ò÷@eŠ¯Õú Ek‘·Ý\Z\Z*\ZQ\Zw\Zž\ZÅ\Zì;cŠ²Ú*R{£ÌõGp™Ãì@j”¾é>i”¿ê  A l ˜ Ä ð!!H!u!¡!Î!û\"\'\"U\"‚\"¯\"Ý#\n#8#f#”#Â#ð$$M$|$«$Ú%	%8%h%—%Ç%÷&\'&W&‡&·&è\'\'I\'z\'«\'Ü(\r(?(q(¢(Ô))8)k))Ð**5*h*›*Ï++6+i++Ñ,,9,n,¢,×--A-v-«-á..L.‚.·.î/$/Z/‘/Ç/þ050l0¤0Û11J1‚1º1ò2*2c2›2Ô3\r3F33¸3ñ4+4e4ž4Ø55M5‡5Â5ý676r6®6é7$7`7œ7×88P8Œ8È99B99¼9ù:6:t:²:ï;-;k;ª;è<\'<e<¤<ã=\"=a=¡=à> >`> >à?!?a?¢?â@#@d@¦@çA)AjA¬AîB0BrBµB÷C:C}CÀDDGDŠDÎEEUEšEÞF\"FgF«FðG5G{GÀHHKH‘H×IIcI©IðJ7J}JÄKKSKšKâL*LrLºMMJM“MÜN%NnN·O\0OIO“OÝP\'PqP»QQPQ›QæR1R|RÇSS_SªSöTBTTÛU(UuUÂVV\\V©V÷WDW’WàX/X}XËY\ZYiY¸ZZVZ¦Zõ[E[•[å\\5\\†\\Ö]\']x]É^\Z^l^½__a_³``W`ª`üaOa¢aõbIbœbðcCc—cëd@d”dée=e’eçf=f’fèg=g“géh?h–hìiCišiñjHjŸj÷kOk§kÿlWl¯mm`m¹nnknÄooxoÑp+p†pàq:q•qðrKr¦ss]s¸ttptÌu(u…uáv>v›vøwVw³xxnxÌy*y‰yçzFz¥{{c{Â|!||á}A}¡~~b~Â#„å€G€¨\nkÍ‚0‚’‚ôƒWƒº„„€„ã…G…«††r†×‡;‡ŸˆˆiˆÎ‰3‰™‰þŠdŠÊ‹0‹–‹üŒcŒÊ1˜ÿŽfŽÎ6žnÖ‘?‘¨’’z’ã“M“¶” ”Š”ô•_•É–4–Ÿ—\n—u—à˜L˜¸™$™™üšhšÕ›B›¯œœ‰œ÷dÒž@ž®ŸŸ‹Ÿú i Ø¡G¡¶¢&¢–££v£æ¤V¤Ç¥8¥©¦\Z¦‹¦ý§n§à¨R¨Ä©7©©ªª««u«é¬\\¬Ð­D­¸®-®¡¯¯‹°\0°u°ê±`±Ö²K²Â³8³®´%´œµµŠ¶¶y¶ð·h·à¸Y¸Ñ¹J¹Âº;ºµ».»§¼!¼›½½¾\n¾„¾ÿ¿z¿õÀpÀìÁgÁãÂ_ÂÛÃXÃÔÄQÄÎÅKÅÈÆFÆÃÇAÇ¿È=È¼É:É¹Ê8Ê·Ë6Ë¶Ì5ÌµÍ5ÍµÎ6Î¶Ï7Ï¸Ð9ÐºÑ<Ñ¾Ò?ÒÁÓDÓÆÔIÔËÕNÕÑÖUÖØ×\\×àØdØèÙlÙñÚvÚûÛ€ÜÜŠÝÝ–ÞÞ¢ß)ß¯à6à½áDáÌâSâÛãcãëäsäüå„æ\ræ–çç©è2è¼éFéÐê[êåëpëûì†ííœî(î´ï@ïÌðXðåñrñÿòŒóó§ô4ôÂõPõÞömöû÷Šøø¨ù8ùÇúWúçûwüü˜ý)ýºþKþÜÿmÿÿdesc\0\0\0\0\0\0\0.IEC 61966-2-1 Default RGB Colour Space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0meas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0sig \0\0\0\0CRT desc\0\0\0\0\0\0\0-Reference Viewing Condition in IEC 61966-2-1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0öÖ\0\0\0\0\0Ó-text\0\0\0\0Copyright International Color Consortium, 2009\0\0sf32\0\0\0\0\0D\0\0ßÿÿó&\0\0”\0\0ýÿÿû¡ÿÿý¢\0\0Û\0\0ÀuÿÛ\0C\0	\n\n\r\Z\Z!*$( \Z%2%(,-/0/#484.7*./.ÿÛ\0C\n.\Z..................................................ÿÂ\0\0V\0\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0úî~Ž7N5QÇ`5@ `‚¦€h\0@H\0\00@Ä\0&\0 &jF\0\0€\041\nÄ#0@¦	”˜¤b€\0\0P`‚`˜€\0\r\0Ð1\rP\0\r\0\0\r\0\0\0E\0\0\0&\0L\0\0\0\0H	F„\0¦‚\0\0\0 (P0\0NÔ ËŸk›§ŸyãšžÊC@\0\0!¦*@h\0(Ê\0\rR©²få\0bh™\"A¤	€&\0\n\0\r\0@\00\0\0@\0\0\0\0°\0\0\0 €\0¡Â€‚\Z\0€ €\0h€&*b`&\0(5 €X4\0\0@\0\0\0P\0P\0P@šË=¾~Ž}çŽo>‚@$L-ä@\0ËDÉÕ\0\0\0(\0@@ b§52J© \0¨€‘¡Ð	F\0\0@\0cP	«A©0\0j\r¡\0\0\0“\0\0\0€\0h\0(\Z\0 \Z\0j˜X ¡¢\0(!‚h€†`\0‚b´Á1\00@(ƒD\0Ra\0\0\0	€\0š1=¾~žn™ä‹Ž;\0”4–P\0jÖ\'\0‚h\0•¦¬\0P\0\0\0\nL ÕLÒB\0\r\0\r+\0L\0\0\0iØš 44\nÒ\0èA(\r24\0Á4ÀE@5ECNÔ4ƒ0\04110\0\0€ 	\0&˜˜R  H\0@h\0€j„Ü -\0$÷yú9úc=sãÐ\r\0ÄÕ\r#MP4©‚\0\0Ð\0Ši \0\0\0(\0\0\0\0U3r‰¡X„bj\0\0 €P\0L\0@\0@\ZV\0˜¬bp&\0\n&X\0&\0™\0˜&•biˆ`e&\n†i‰€&\0\0&\0\0`\0\0`\0Ä0\0€\0L\n\0Ó\0+LDÔ1@\0\0P©2çÝçß\rç=rá°@\n\0\0M+BF\0\0\0*@€\0\0\0\0@,”äLÁ@\0\0\0bP\n &\0P5\0TÂÀ\0A4¬S\0(\0\0\0\0L\0\0\0\0\0LÄÂ€ \0à€\0\0\0\0\0pšv´4\0\0€ 4\0\0&ˆbt\0\0\Z%h(\0\0OsŸ£™ãË\\¸ì”€\0\0¡41AEJ\0€\0˜ š\0\0iª\0\ZUM’À\0\0\0\0€\0€˜CNM0\0\04\0\0À\0 \0@\0-\0€\0\0\0)0€À¨\0\0(\0\Z€€@Ñ@\05\0&\0\0\0¦…	 V	‚bÍOsŸ£\rg“±ã°	@\0\n\0€\n\0\0ÅL\0Ð\0\0\0` tšr!–‰ˆ&•M$†\0\0Á(\r\00C%\0°\0\0 `€€@€ 4\0P\0PÑ	…€\n\0ÐC@\0P\r\n\0\0@\0N\0MDÐÀD\rP\0À\0\0bb\0\Z H\0\0ÑC0(\0L( \0\r2Ïo\rñÞy0ß[\0•0\0%\0@0\0\0\r\0 Ð\r\r\0\0\0	€\0\0©ˆ$I„\0­\04Ä\0Á 0\0\0\0hb\0\0\n\0\0 \0\0@\0\0\0\0\0\0@\0@48@P\0\0ƒ@Ä4Ô\0õÉPÄ@+\0L!LL\0 \0†‚€\0	@,\0¨\0\0t“\0 \0 Ð\0\0PÁê{xo†óËÏÓÏËh	@\0\0\0\0€\n\0\0\0\0\0JÄÑÐ\0\0 \0J\0	ˆ“š‘Š˜aj`\0\0\00\n\0€\0\0\0\0\0\0\0\0‚\0\0\0(\0\0\0‚\Z\n\0€j€b\Z\Z´h€\0\Z!¤\Z%\Z)B\0€\r2„Ô0TÀ2Ð4á0Ð ÑL\0Á\r\0ÊC!\0\0Yîc¶;Ï/?O7-€¥i‚\0\Z€€h\0€\n\0\0\0\0\r0@@˜€Ð+M	4’šQ¦	ˆ4(\0\0ÒÄÄÀ\0P\0\Z\0\0ˆ\0‰¡Z\n\0€\0A¢€ \Z j\Z\ni‚h˜¥`†\'@ I§b&˜P‰€œ€ÊM9SLC\0\r18\0 @Ð\0\0410\0PÅ\r0\0D™§»ŽØï<Ü½\\¼´†g@ \0i€˜	‚\Z\0 \0€\0\00 D\0A2”´²\0(\r\n\r#\0Ó€Sˆ\0\Z\0˜&	€š!¦´\0 ˜†\0\0™`˜ œ!” ™h\0˜€\0\0\0\0&˜˜(\0	 \0TÂ@@\0\0$í\0„5L@0\0@\0\000\0¤5©îã¶:Ï77O7- 3D5LCÔ0(L@À4@Õh``©€˜Xªj@\0¦!¡‰€\0\0J&\0T414\0\0¨L€\0L¤Â\0C†ˆ\0Š\0\0 L±0\0\0 h´\0‚hÐ\0\0\0JÀ\0‰¨T\r\0`\0\0\0\0(†&€h\0\n˜\0\'\0\0\0†¬÷r×.˜æåêååÑÍ`@\0B\0\0˜† )¦\0\0\0\0\0\0À¬\0š©\0ÐÓ\0\0\0\0Ê\0P	\0\0‰Ð\0\r0@\0\0©\0\0\0B\0\0€5@@4\0&R\0í@@\0\00,M\n\r €\0\0\n˜œŒL\0”†˜††‚ €\0j\0,L,\0\0(ÕžîzgÓÜœ|v€š\0\0q4Š\0€0¤ÂTÂÁ40@\0\0\0\0\0\0\0¬NÅ5$€&\0@\0\0\0\0\n\0€!‰„¸] ¦MÐÉ¡ˆ Ä¤¦š Eè@i«\0j‚`&\"A h\0\0h\0A§(\"Æ€i¥h(¤”Š\0 L¤À@Õ00\0\04\0\0I‚\0¥`\"\ZÓÞÏL÷žnN¾NZ–Œh\0\0\0)0€\n\0\0\0\nHÀTÀ5@\0\n\0\0NÅ55#P&Z \0@ÉUh‚ÖTRŒ£lù²¯G..jõ›¹ß¯Ñ­rìkyÔ8•Z´‹AI«ràb¡¦‚b€†&\0@\0	Ø\0 \0€¤\Zv€\0\0š¦\n€œ¨	«˜š`Ð¬	\0-\0\0CL\0\0j\0\0@(\04\nC\rJ\0,÷3Ó>™æåëäç©MsÐ0@\0\0\0\0\0\0\0\0\0`š\0,\0”\0(e)¤@` \0@ˆ¤ù1Nì|¬´öoÉ£¯>¶|ÓyìË“Tôôòå}<zÍ÷;>x|ùýíöº|³}\r<ÝŽ³’Ž§…ÆÄ…!Š“„ÂÀ\0@ €1@ÑC\0@ 10@À€MDÊÄŒ\0@` \0\0@\0\0	€˜€‚\0\Z\0hÒ\0\0€îg¦}yóòuòsÜ‚Æ† i€˜ \0\0\0¥\0 Ô0,@P€ Ð\0CJh•S@\0‰,R8Ã‚»ã‡žº<ÌpÞz”]m9r8msIMQšÛ\"54QÒÉå3¨õåÜÖ§I­z¸*=›ò{3}¼~ÌÞ×Ï¡«Î’€\0%\0°\0(@Q40\0Õ0@\0P\0TÀ\0°bpc@ Ð\0\r\0\r\0&†bt††\0€€¡0IïEÇLóòuòóÖ`c@\0\n\0‰€€\0&&€(@ƒ0@ €N’i&Z%VU€±çó´Óo#}g§Éœu+Nn‹5Ó–yæw›èãÒ:9vÛ+Ê²ŒèÛ›K:5äÓ7£–s·miHW×f™ÞtÇÓcÙÏíô|ÿ\0iì×>‘³‹‘h\0\0h\0P\0X\0\0(\0@\0€€C@€\n\0ŒM@2\0§`† &!0\0\0\0@\0X\0 &¬÷¦§¦9ù;8ùï01 \0\0Ð\r+Œ\r\r0C@\0Z&@‚\0(i¢†¦¦¥83]<Žy¾°ëŽœðNŒó¨­ùÃlæ4j-³ÖYc‡®@¥åTM&Ò±—¢Z^­94ŒkJ6›èÅ{sÖuf¸®ñ¢—}ø²=þ¯œôÓÒ|ÚÆˆ\ni ‚P\0\Z\0\0ˆ­\0\0b\0\0\0\0\0%bb!ˆš\0\04\0ÓÐÄÄ4€\0‚`!‚\0h!BjB{³SÛü|¼µ‹F6@\0\0€&	€\0! \0\0\Zh\0@@ ƒHPÔÖyÞ8óyÚœ¹ó.Ø2q`›²ZYèk\"PVš`ã¥C”‡ZVzãLêèÛ(—l#[6×=3zvæ1¦NÖÆ{ãôóöfåX™oÇµÏ‚eúŸÔŽËÊâ¢€%\0@\n\0\Z\0\0b\0\0¦€!†”h€‰´ 4()\rCCL`\0ˆb (\ZÒOzj{cNÎNzÀkžØ¦€\0\0\0\0\0\0\0\0\019D\0‚\0i¨˜€!€%SXðwøšqøõÍÛœzÎZ\'lTÒI¤‘TÈB-LJ“B$ÕçKfn˜³S:!Ê4°Šß\ZÍé94®ŽŽ\nÍê8ê:ï™/uqï\'ÏO¢*ÍúüÉÍúŽ˜õs}jÇiF„\0\0 @(…\Z À€V‚F™HiXš\0	€\0@\04Õ4#­C4@!‚¦biîÍ.¸Ã“¯—ž¹Àç°\ni¨ˆ\n\0€\0\0\0@\0\0\0 \Z	’t41n‹ÍáÖ}¯ŸàÎ*;bîR2(†à·QLÜ—)´\08Zç¼g ®\\Ù¾D€•o¦Y²L¦o\\ÚdåÍ½w…åYÞGT`YiV)»¼J_­ìù^ü_¥||ôÐP\0P\0J@Õ€14Õ4äÄÁSLCP\0Ph`¢ˆ(¨b€\0Ò\0(\nL\0ÝMuç‡/_&5Î5Ë`\0\0\0\0\0\0\0\0d!–&\0†¨€+iPð³ŸÊÛåúÍ¸!uçI;ŠÑÁyë!¦vEk×9©±¸pi\Z‰	¸¦æÇ‰ta-c¿)UœÙZâF7-ß>Ñ³Ç(Öùºi:%xæS\'¡ãug_Ué|¯¿Ë]¯;Í\0± Pˆ\0b´\ZF †ƒH\0 \0 ˜Ä£\nÄÐ\0N\nLÄ\0Ä\0Ð\rP\0P\0\'ºšíŒyz¹q®`9m¦	 h,\0”\0\0 \0\0\0€\n\0€LCI€šDæC«Ë¯Åîáõs†ž³-8di0)pœ¬ §\n-ÕŽ#Bu1kAÅAd£Lé’DZ™^)hÌÒá•yj´Lƒ†i®ZÇÎlO±æ^fÛrè¾·óþ–5ôÚå§-$\01@„ÅMÁ\0\Z¦‚\0À\0\0\0\0!ˆ\Z`&š`™Bd\0	 h(\0\0È\Z(=Ô×\\cÍÕËs&¹l\0`†™Hj\0(  \0\0\0\0\n\0€\nC!\0‚3WÏxÙ~¼ÚŸ5Ï¦^žpÑbM\r u,©hC4RÍ$4ÄÐ›)Á))­Œî4 b4ÈyëMXôš* $\ZN°ï+•ösk›¯“¿%—¦:Ö••=ºfý¥óKÇv5šÐÄM\0h€\0\0\0@@:¥`\0\0\0P\0\0&` \0\0¦ \0\Z Iï&»c.nžlk•Rç´Å@Ä@M\0 €\0\0\0\0\0	€MfT…ráÕæ§·èæá2Ä…-\0InQs@ÅDÅÀVhÕÊ5™\npÆäI%hçC.`‘*•9,¸DM”=3\raÒnW9 ÍTÒ-&å×Ln_[ë>êùëØCç¡C\044\0´Œ\0\0\0\0\0\0€\0iŠ˜\0\0€€‘‰€\n@&	ˆ\0Ð\n\0 @žòk®3æéæÆ¹8ÛA“C¤\0\0\0\0\0\0 \0\0(`€Î4ÊÜ<¯CÃÔñø·çôr”\ZŒ@M!€äw!O0¹©$l@…SA-\Z8 iÂt‰5DXÊ¹­;w.€Â­Ô”Ò\'H‰¨-!\ZE*”šé/Ee¤iïüÿ\0¹}UÍqØ\0\0&œ\0X\0\0\0\n\0€\0\0*aC@4å\0A0\0P\0P€ÉS\0\0\0\0@\0\0Â\05 {©®¸Ï›§Ÿ:äšžZbj† h¦\"\0t€†€\0\0\0\0\0\0HC‹^3ÂiòÝž\'nyâ×l ’’E¤T… d0\0¢X˜æ€ÅT¡\n«yp;”¼ÕQÌuÜ¼¾×Í=—ÛY<õÝ˜ÇYg\Zß;1¢•@An°z¤Éi\0æ‹èæµèõüOK7î5äëóì«”€\0P\0h@\n\0”\Z°\0\0\0A¡X!€€\n	€\0\0\0\n\0\0\0\0\0Ð€\Z!  \0LOu5×óôsæò*ž]\0 „Ô414\0\0\0\0hh\0‡Fg\'‹ëø›ž/O£%¨ÐÈb˜MHÀTC@Ä-€Ý	ÜEÔÜ¡¦²ÆÆùfúµÎùTËF»KÎu×,u¥ã®Ìˆ:lóñô¹®x9½w7.¼:a^qg^qªá¦1¦z&’UçfžÕ/Ü÷üçÑyú4ÉA \Z@0\0i«\0 \Z…b&\0€ €\0\0\0P\0@0@\0˜	€†š\0i=Ð]qžù¼“qÇ  †	†€†”À\0\0\0\0\0pßŒò¼Þ¯žëŠó÷Ã¶%\nÊ)*%€€ÔU¹p¢„Ê­;µ½*3­uYµ®lkNkb5Íž¥¾usw›•-]¨šºÎ³ZÄe‡z³Êçõ¹zOG›§.<ú\'yÆÆ“W‚ÄèìÁm›jçMs¹}´üûî¹k¬z\0€\n\0 N\0\0\0Ðd!¤`†\'I i€ \0\0\0\n\0\0\0\0\0\0\0@\0\0! @•žòg\\gÏÑ†/$\\rè\0!@œ&!e!¤\0P\0€\0\"áêã·ƒÆõ<ž˜ñóß—¾Qb11¦‰!‚´ÆÞ²ÃÝåÎ^´i¶˜×$õæe®{Õ¾5Í®Ó,í–²éQ¤ºïžÒ‚™JnZf”ôÍÎzr—\\ÈæëZÏ“ËéñõÇœö×yá{«+-2—N^„qeÕLs.ˆÖbå_mðÿ\0[Ï^ð´X\0\0L@Ô@ƒ@\01@\0\0\0R0-\0@\0\0Ð\0\0\00CC0T1@šOxlNá›Éž™òØ‰€\0 †‚€p\0 \0\0\0\0@@$*áíÆÏžó}ÿ\0¤ðù½NÜð.u$h !4UKbÖ¹±ØucYOAqëÐVUÔfògß•œšt\\¼ºí¡…Û–†¡è÷šUK\'yí*T°îàÒLÝ³T±:)p«ÐåäõsÞ|yôÖ³äÇ±ãÏ©ÅgEtÆYizÏ^–\ZÇ\nÙjWÓ|Ï³/Ùóô@XÐÀL+ƒ@ÀÁ\0ChÂ@\0\0\0\0\0€\0\0\Z@\0\0\0C\0)*R{ vÄa¾¼™ë—€˜`††˜bh h(\0%\0°h”\0Ž~©³Êàö¸+åüÿ\0gÉôsæMk*mTÒC\r»CêÎ£¢÷Æ²Ú«:Îz\':ÍUÜØœÓš™Lô(Ö\\^«HÏ@)«ÍL ©µmíi\riQžšTcu¾uÏ®÷qÏzN}HÔó£ÒÎ¼N/w‹sÁSŸ¦9g¢u3Zg¬qáÛŸLsvqï§Þé‡GŸi€˜\0(i”˜i‚h˜‰§jÐ\Zph\0\0€\0€H\rZ\0\0\0\0\0˜P˜!˜	…\0b{€vÄá¾¼™kŸ %L\048L0@Ä\0\0\0\0\0\0\0!‚š‹3ó»x—Æñ}¿>9×>˜‘ªAJ:Ìimw›ªÆ›¡[*1Öv—9éF9ôIÏ¹p–®$¢hRÎ¦¹*§ô¢*¯0Ùn\"ê\\´ªÎël÷€ÕÜó›ÑËl/ŸÉìq¯‰ÅïyÛÏùôÏ’wa×Xuá¼`m:ÏÕzž»ËcN\0\0\0DÁD9ËSL\0DÁA@$\0 \0@\0\0\0\0 \0\0ª\0@T00\0Ü®\'\rð—“-±å°Ð0 NLM1\0\0\0@\0\0\0Ð\0A4W>¡ãü¯Þü·LüÎ}\\¾ŽI5Hh5ÏhííåíåÖõÏ\\oZ\"ii;Éž’­²/	N®©§!J T,;rgwmF®¤T8¡hçJ×nb;+›HÒ³xÞûsîkC¹L$\Zt°é#Ëó½î&ü=³Ÿùºb9}}gÏ[WN}UòßKnBiX\0 &@™H\0&š(‹X\0P\0\0 \0\r\n\0\0\0\0\0@\0\0P€BçÝ¶g±ÍåÃ|8ìhQR€0\0AE4A@A\0\0\0\Z`!åú~U|w«ŒMN ‹F=9½½Xtòé­«ÆÞ™ê£LÐ—$Å’”¥RÍ*‡S@\rKš‹e7b`HóÖu|™YÝ—Wnž[Î½WçézÝ¾?W-{=~aéMœØì™ÒEÏÑ8×…å}\'“­øÇNsÌbúg	ô1L¾ŸçýíN R\0\0\05M4M5À@\0ƒM@ \0\0°@€\0 \0\0\0(\0(ÁC@1\'ºl,vÇ7“Œ9m\rJ\0\0B\0`†† €\0\Z\0@\r(\0¸ûJøïý#â{cÇ‡=¹Óa]œ}™¾—F;ñí£W:D†±TÓrªkUVÃª’FÄÝDºUv–4dã¼ï‡7“¼úüNZÏ¥Ÿ?ršéX±¦»MÎÎùZéÃ\\k]±Ûîèà×ý8ö×*±Xæ¦L|Ï_ÌÏOÌëçôã—ißyÓ,¾›‡l}>98¹=®N˜ó†»ó\0°@ L±1L\0Q5\0\0\0À\0\0P\0 h\0¨Ri€˜€\0(\0\0C\0B=à:óXí”¼œý<Ü¶1JÐ\0\0‚\0&	 \0h €\04Ð@\0\0Bñ½¬õ?4ãú_žõr”ÍJíâêÍõ·æêãßM2×6€\nU”*§*uD:@0›nTÛ°©Vi”òÙ·8îsãÑÐÏý{Ë=\n±¥£ÐVÉ¥KNv¯2¶Ó•æ÷éÃ¦5ÝÕæm‡®ù¶¼ôžOowæ|Ü»æÝ÷jpýWôžnÄí;·“Ñç:õú=¤éêsú=ü2n`Hh`\0\0&\0@\"€\'(€\n#h4ƒ@1+L±(Ð€\n\0€\n\0	¡‰ØV‚Ït¹Yk”róôóqÚ\Z”@$0àL;P	€\"˜!¦\0 \0Á§/ÏüWéßžvÇ\nüÎž}åõúyz8v×LôÎ­ËŠ¼î.§JªU¦­à\ZK—@qÓ–³Ê3ÖV¦‚ÕÆjp×[çIÛ§Æªm<Þ5ª §”Y×§&±Ù¯/.^×ÏeÛ=y>î¸çõ=W‡O3?c“Í¿Øäî›2Ó\Zåæ®þ›ò£Üò§NÎ¯ÙÎ9–™úü \0(\0†˜\0†	¨`\0\0 \0\r\0\0\rP\0 €PÅ\0\0\0!Ò`\r$÷@ë…–¹¯/7O7 %\0€0F€&\0&(š\0C\0\0\0\0xÿ\0-Ÿšçèpz¹-3ÒÏc«³‡¢¯-3­*jË¹ri¦5[œätÂôœÄ½5Ïq©™.Ï+C\rRð¾ÉLM1Y‰ÄÓŸ\ZÞ:µó¹õ=˜òz.{–>‘Ç>·rÒê^\\}ïšNîŸ›ôlêæÕMe¾¾ß=ÇÓœ4g5ž:e ó¾hy·Ïè%¼öyï¥>w¯õêèÇ|;|à˜\05\0@\0@LP\0†Z\0h \0\0¡‰\0-\0€\0V˜ \0\n\0„40(Ox¸YkšórõrñÚ4Ô\0(1ÈT\04\0	 €\0\0\0\0\0$Z	§Ìüé_ß4§®=nï?¿w¦5›®œ‹yîŽk=L|¼î}ùJéÓ‚£ÒÛËÓ:ö·ñû9ïµóÖwÓ¯ñÐÖÙd·““›·ÍÓ.rúsæ}5©œz|¶r¹ã¯ßñ»ñ­ø6êåÓ2å­¾kè¼mgçýþ›·??£×Ÿ/¢=Œ:ùo£|ô×#:ÊUyôuËËò_aó]÷§åv]z^f¹ÏRëÇq©õù\05\0LP\0\0\0\0S\0@\0°\Z\0%¬¥Ð€\0 i”†¬\0”\0\0¡0L\nOxØYéšórõròÒ\Z\r\0\0\0@4@\0\0 °­§B\0A0\0Q¦€ŸÈý—‘©ðYvrzyú>—‹ëòèñ8k¢sÓY‰éëŽö/\ZòëÑY¼éæžŒKÇzæÕmÏRvoÅÔwtqÜtsyZž†~‘.ts×w¬íxÇ£hŽÄñ­Œk:ÖãYŸéç‹åûüÁ[stç§go7O9½åWw–uŒt«ËJèùo¬ò;ãÃ]×®;dñ¯~¼yy {< \0€…`\Z\0\0š€@\0@ƒƒÓ\0M@€5@Ð@@\0\0\0 LûÀºäÏL×›—«—–’f4&€\0\0\0\0\0\0\0\0\0@4&\0\0\0&‘¦†À\0µá²OÏüŸ¶ùG<½ŸÔXŽ‡,é»–zã\\Ýï*Å¸•5¡²O6\Z™rEugÇÍsê_Ò½œ½½ù×Ìúûp\\ý!Å<÷Øõ3®|º§SéI•êî¦ê²ª[f+U›w5ËÕ–µ=œÝœ·Õ¿6ÜçA›/2q¥DµqKÓóë~mú¯}¼úvtÅóåæMO·Ì\0€\0&&!@˜\0\0\0\0 \0PÐ£@ÐD\0P@@2ACB\r€`BžògL,ôÎ^n^¾N[@gHi\0 Ð\0\0\0LCCL„\0\0\0\0j†4Õ0@\nçø¿»ù½ÏŽíäÓ¾=VW.»8%·†	è/:¤êÇŸ™êÏ—]ã£³ƒê%ñ_£É*ñ»ñŒ}/#ÐÎ½.¾.¾=£Ç÷ùë“§?^H¥xÞkYÖbuFV:“M3rÒ«2iÕM¸ÑÁu}íÇW¤W=iPóZ\'f”µ¦zVœÞ~çŸëùž¾õÑ‡W.yFØo5çÅO·Ê`¦\0&ˆ`\0\0@\'@` \0\0\0\04\0@\0\r1\0\0\0\0P\0³Ý¦zf¼ü|œw- \0\0&P™\0€\ZÒ\0(\0\00\0\0‘k\n\0‡tê~qÍôž£©†8ßQÍºKÖ\ry1½L°únŸ,×zÛÝäßžòÏ¦s®~nÉ>¿]k§³î«¯‹Nå›À»ñ·…tN™\Z•Ub¢°P˜¬YÔî9ôd¨1u¨ÓžKÅr,T\'-\\]i®pZiµÚÒãž:øÏ<_\0\0ÀM0M\0\0\0@ \0b) \0\0¦€€@ˆ\0\0\0\0\0\0\Z¤2Ïp˜QpsòuòrÜ‚Æ€\0\r\0Ð\0\0\0\0\0\0`H& aCEŒ\0	j¸~;î¾®y}_×Þ]eÓŽ™ótÉçoÕÓ¬ÆºésmªšrLPé35Ê\\ZôõãÑ>‰ß\Z×LkÚ#YpË¶+Žw$”â©ˆ*H±ª«^ª¹®¢ójó¼WQ\\ô&³F<\'Z´µ™ZNæ—Wg&±çéä`\0\0\0\0\0\0\0	‚` \0\0P(Œ$@Z\0@\0@\0\0X\0 (IïÛzfaÇÙÇÏp4\r@\0&\0¤Æ$È\0\0\0\nÐT0SLDÁ@t  Dü‡ØùzŸëyÛwçß­Ï.ËE¤¦ÓRÔ°î–Œ\n\\ùöä±ë\\ÖýÝSZÙ¯8µÍåXµ-^j4Ëb¸Öœý&µ•énZ425T·YÖãLj´‡›SG=5FCj-Ë/›;nËáÛyì×‡hëó¶àéÍèâ\0\0\0\0˜\0\0\0\0V\r\0 4\0M\r4\0@\r\0\0\0\n\0\0†\0“Ý¶\\K‡\'_\'-f4\0r‰¤\0´C@L\0\0!¡\n@Ó!\0Œ£Rh$Ð¦‘ãüÏÛüçIè\\5­3©vJ¬µT‘jEiÔsgÑÍGg\'dmÑ–«§O.ñ¼5–sS*c•m‹—OLìÅ©U•Å9ª«‚J\nj©_5T˜ÖVhšÅ¦8\0“êrWý÷·Ÿ®k·= :ñ\0ÖA5\0@L\0€@R4À \0€\n\0\0\0i¥\0\Z\0\0\0\0\0\0\0L0C@\rM@r{`wÂš“Ÿ“¯“–óHÓ C¤\0E\0@\0\0	¥\0@\0\0hhh\04ÄÂ€–\nZ™êe_+Ñ­v¼õÍ¦ªQhš‡n\"› %3ãëÂÝ7›Ë}9´]ôÎHx³ž§×ëñ>ÅŸCŸ><w3Ïèt•:MÄ‚¢¦ªj‘Ü<µ¼¯7JšÆ©ËÊæ±©FŒŽ~Œ4î¹¶<îGÎõò\0ëÌ\0\0„Ó´@\0°P\nL\0\0P\0”h°hQ \0@\0\0\0\0 0T0LM\04\0“Þ¶¸0äëäå¼c@ÒŒ\0@\0	Ð™\0!‰ˆ\nL \0\0‹)ZCN	`¢æ€‡Þð÷­õËln¯-¨ ¥R¦:œõÎ9äUÒRË;ò#Wèõñû1{òçÇ£n˜à;±—“ZïšÓKXÄç®u(V´(ÑçQ­gy]çrÞ™iPŒ.¢³ik9jÞ›ÏKƒÉö<îÜù“=@(\0L ÐM\0 €R°(\0\0\0\0$\0P\n\0€\0\0\0441\04	«=ôpEÁ‡\'_/-â4	€\0\0\0\0 \04\0\0\0\0\0L\0@0˜XM!MM‰„±ó¿Kãêñë†Ó¦¬%º–:ÏB›p¢Úqrz~}tçÆG>}2û_L¼ÚéWOlë©Wn`“%3ŒôÝåUpÔ’—¦³¹uÓ-r»›ÅN*Z¬ôÆ˜Œš	Dæ·ÛŸ¢æùz§xñÖ‘ìà`\0\0\0\0\0\0\0\0 \0\0\r\0\00@\0\0\0\0\0&\0\0\0\0h‚ R{ÀvÁ5&|¼õ€ö\0\0\0 b”\0\0@L\0\0\0\0\0\0\0\0\r8\Z(h±¦…5 &½Hù­6æ½zk;–ÞzIŸDSZHäÏT ÆãYÇ.¼µ9KZšéÆäÌÕ˜\\Ö½8m\'sãÓ.‰‚LsÝV5©”MM¦zA¾¸é5¶¸i\Zé–˜Ò¥9^™^mÅb:yz,ÕÍkŸ/«ÇèÏ!SÛ\0\0\0&€\0 \0J˜X\0@€\0\0\0\0\0\0\0\0˜	€\0\0h\0\0-CÝ¯2jLy:ù9ë\09l„ÐÁCMZ\0€ 4\0,\0 Ò\Z\0\0ÄÁ)©M\0“ÄúOyôäÝÓ{Êò ¦›—%¬!Æ‹lKF™mŒÝt,œÖõ›Ô³6–™\Zd£«o8=Lüî|Ïaü×§\'¦e¶mkž²½3Ò¹Öm‰fÕKÍ·&u@¡Æ<ÛÖî*ó®^®mÌ¹úã¾xÕ.¼€,\0\0C@\0\0°\0\0\0\0\0€\n\0\0@\0\0\0À\0\0\0¡5\01\0	©=à;äš”Ç—¯“ž¹Àç°T5B\0(	€‹X‰\Z\0€ € ˜ƒD(Š‘ €Ãt|ÜúžM×FüšMô<o:ÕE#‡Ši™—Q­\r8í^Î‹›ÒÕM¥°ÌÇs¸óßYg›˜­ããöK9}m¶ãgb¸ÚÒ-j¢¢êÝóª¨¼R¡æé*a¹-×l4“¢ñÖæóº¸óÌwô#Ÿ¯›§)Þ\Z18À\0\0(À\0Ð\0\0\0\nCL°Q\0ÐÀ\0L\0\0P&\0š‚LûàvÀš1åêåç®`9ìÔ4`\0(šÖI…0(h@\0h\0bŠ€\0ba@	ÌÕ\0\0!€góÿ\0IàÛË¯>“{Y»8µž^ÎKšA¨ë,V±ÌÛJçuÓÑåv¦Ë#m<ôßw>U:r×[oŸ]Ö3‡Eõsç›¢FQ\n‡\n‚\n—›W“Æµråuf¹S-ÖWfÚc¬m¦:3­E3æ¾Ÿ»½3¦2]¼÷9.š®3Ñ“€ìÎçY²SL0%\0\0(\0\"˜š4\nÐÀD0CM\0\00@\0\Zb¤ÌçÞÓ‚iF<Ý\\¸×(¶iSL-L$J& i U\0 Õ2ÐCD­€Á4 \n’hÐDÅ<ÿ\0A\'ËžÏ‘vi†o¦7›®zS<æŠÏ?ƒÖáÜóòÝuÆ^¤ôÎ¼ý]yïÍ}\ntÈ¹+~vÎó“Æt©éç\rb±„ÕR\nWPÊ¬ï:¢k6œ¼Ö(ÍjUixéf×–‘¶˜kVw%üÖ|W|ý&/—¦}7ÓIä÷ñðk>ûó½¬ëÇŽî]cÏ:¼~“è:~\'jûLþsÙË Ùå€\Z€\0`\0\"SHÜÕ0j&\"F\0&	¨¨\0\0\0C@\0\'¼l	£.^®\\k”[\r\0\0§\0€´@\n\0 \0h\0\0\0\0%h) @\0M*Nl`B˜(\Zbòý\\íùÉèÂïkÃLÝï\Zbœ˜ÆÓ§øô‘¦F·Ù·“¯jçRïžIŒõÅ6±4›Îi¦1€•&‘’Öª^uU&-gU™ En]å¢i¶\ZÆÚc®ZÞ7\Züw×ü¯L×wÌ}g«›íùÿ\0<ŸkÍÔàžøú×óÞ¿\rãµœ|¿÷<qò•×Åè¾×Ê¼¿DŸú^³ÐåLSZË\0®¦S–0T\0\0\0\0\0\0	Zi\0bTµ=à:`Mrõsc\\€rÚ\0-à4\r@\0\0\0é\rdÀ¡\0@\0@\0P˜°ªl\0š¦„`¡‰×\'‡ôÞ[^mH»iË´½*—Då¾vrçÔ­å:\Zá¦×.½éM—¦{fÝªD5›B\"„5)CIT“R3Š™4bz—yÚi®:É½åXºÖU›·ÍýÏôÏËý¯Äý»‹öüoG¿‹§.Zùÿ\0ê|ŸG,ýŸ•öO§ÛÌô<Ýu×ž³®ž÷v³ón±ù¯_¾\\:gíýïÍþ£ÏÓÜâï×Ž¼“£¸M9¥RÀ*j\0(C¤\r\0\0	€ˆ¡Š\0p†´÷€ëÌ@eÏÑÏr&¹m\0\0\"Ö‚¤\00\0\0\0¦`€\0 \0 \0 \0M$ªš\0¡ €FšDxœ?Má]rÞM¾95—©áyšJUD²”TYE\\TháÃ-Ê[rªJ–u\"R·U˜hÜºš±Þz®5&ºcY»V5šxÞ‡¬|Ï¡ævý>÷OÛÇ^¶k[áœú:óùzìóûçÝö>WÝá¿f¹´ã¾­0¼ÜüO¡ñî~cƒë¾{×ËÏô¼êé>ãÙù ñöôò­9ëÊÏÙäéŽ®˜@S\0b\0\00(“L\0ÐÐ\04÷»`G7O65ÈœòØ \0š°V‚€$\0Q1À\0\0\0\0\0RÓb!¹tÁZ¤%`\0!¹c…yhÓçxþ§ÂÖøõÂÎŠÃLëBYU•VZ%Šåwº‘]K4¬ª4hÍm2œ<¨JW<êæ\\T‘@Št«YVª\rB¢‹pF±ƒ¯‡Sæûø;ýü4÷~oÕç¯£ÄŽòºyz:ã›ÃúOyçö|?J½þ¿#ÔáÓªò¾zß“GwŸëa¬ü]z<^®I×Í·Ÿ}ÚóoößÙºðwV§”»¹ºóÌs¨Ü°\0(\0\0\0\0,ÏxF\0ùú9ó®H¸ã°\0Q\0@	Š&‘€ (\Z,`”hF\"V\'b (Ch(OPB© NÄàh¦m0sæÙêgòžIíñùÝ7]—Í|÷ÐòÓ7AÞTlóríYY¡$j¥•¦U-¹¬­çE¨•¹œåÖ3¼V\nÆ!°©«“HÉ¡‰%$¥h‰3óû8ºO³‡·ÙÁôñµúÕÃÙçéçtótë/Íô¹¬ðwÈë=ÏKÊîá¿SN{ç­§:”åîòîpð=Ÿ\'¶~‚æ¹œ6^9úq§£Ê^‡Ž²¾~¦yqêåÓk×.™@ì\0ÐS\0(ÐƒB‰Œû vÀ˜±ÍÓÏ—\\qè\Z \0\0\0\0\0C\0@\r$`†‚V ˆÐkh(E‚e\nÁÈP…b`Ó\0óGÍid¿G;q¥SM/£‡<ëØ×ÉîçÓ³Nm3­+:ËKÆÍ4Ê¥Òñ©u3rèâ£G“!®q¬ãk¥Åæ6MÔPè©¤¡X2a‚@xiÎOWLù\ZÎ>ž]Ñ¶Z—ï|×«Ï][óôb¼îlñ9½/7¬õ;¸{¸ëÕ×Íô9è¹ríãúÞ6ç™èù½ù}%äy÷µárôú^o¡kžœÑ¶Ü»KtÔºÑ§\'Q^Tú\\]yâÅÓ-\04@5@\04\0žè²’0èç—“;Ž\0-@4\0\0˜†‚€ \0€€@BA@©Ëšš@S†&ƒBÖ7óº‡•Ûäö™õç³‹–ÂlœtÀÏ~kOc³ç½~]{o“\\tè¬«7eÆæn5¬j]»¬&·\\ìÞfò½cL*¦†¬E:š\ZNK©,b‡/\ZYV4¹7Ãyóø½7ÑË×ë>wF_¤×·ŽÒi8¼oÆÛÐîË|]6åQíWŸécKÄö¼-Î>ÎN¸÷+ŸnZÞðß~Þ>ŒÞï?£Lß\'³›.™ö´ò»yëªs¼êÛÌÒh^~_@Þ|¥êc¼ðxjf5¨\0\0\0\0\nOxüÀçèçÍäÏLøô\0”\0\0Pš\05\0	‚hÈMÐd$+¨Ð©KBhF&£LqÇàt\\ø®ØÇ\rrÞp*É¤àiÖxk)Ž˜÷ñ¹}›Î¸ö×^w/Sæ£¤Â—g€h¢áÒ©]N¹¦£Ê®,§/6„©Ðòí®JDQ,%Ì“–˜éœVZež™ôœÞW±ãôåë_?GLùÔD¾‡Ñ|·©Ï]åç†~/¹ãjú•Ï¬rcxuÏ¿òÏ;îx¾¯›‹åòvñvÏo¡ÉŸ=z›å¿¥ã¡Ù·>ÙÖ—Îzó==.\'«7ÔÉÖ4oåô×BZf¤8¢y{¦Ï&}.^¹ç*w€\0MIî°íNá›ÉŽÙqè@ ‚`\0€\0\0\05M	DÔ40(©	Ì\r\Z6¹Mü^>?F.±Ó¦vÇIÔËœlÄÙÆT±:cižöJÐÍæÃ§žÏ[«Æöyv¥KrCe•yÕ]Mgwsyº^u\ZÖu›¡-,W“JÙR\0T	‚d-Á2NW–zã¹”\\ï8ù~¿Óèy~ŸLpª¥§·!ôšx¾×-çã{~ž_>‡?g\'\\åÛÅÞ¾ß6Ùp×›çú>glzÝ¾¥wôóíÆêÐuíÅÛ9G=|Ý%iž¹z=~5†o.nÞM-îÆdÕ	g-jÔ¢éaÙ7>Yéyý3\0oŸº\\48o„¼˜í´@ P)\0\0j\0\01\0\0 hP&BÈa`š©ššDxÛvxxÇ~`=Ç¼ë¨³¬¬Rè’Üb=+ŸŒb:M—ú#.n^ÎcŸÚñºÏf²×‡¡e•%4TÚ»šÉÜ[W¦u\Z\\VnŽ4‘Ü²‰%´’:•¥U\nG$ÂŠ³Êò¹”ÍIáô9·Ÿ\'Öò=ØæÑAèqõóÖÛfßÏz9qßOG?Bpñúvó>¿ì/¡ž¹ñ×ô^lïÙä{o×7ÃZÞ:«™ËÕ.c>~Œë~,õ=n¿?£7zæ3zžMzV=\'š×¹ô‡•ëgi¥®4ºdí<ÉõãA¯Oœ7Æ^L7Ã—@Ð&h\0€\04Ð&€\0*€9P\0\0¤J&\nDy[Ï§æxùv›r:ëÏ2Š5(nU‹75ZEU*Ê(¹1Ëk)ÓÅÊvUÇÉéq/&½s}Þ/­Ç®â×ŸY«q[3v ©«*¢å5ËIt¬îK¬®[y¸²\\¬¢TR&Æ¥%É6E,®u˜²¬Œ:&çÄ½xûg³›|·¯š£½\'ièyÏ7Ó½2å®o?·‡®3ö<_Z_[-2ãW…ïx›Og©]ºÃãkLÕ½k=²Ñå1¶z	ÅÃéùÚiÝçõWR‹Í[å¬½N2õÞ{¯—¿l×Nq¦kqjT3Gn·Ê,å®G\'?G?‚d\0*ÁI„44\r\0Ò‰‚\0\0@MDÉjPøù<Nùß•®ÜÃhÚ¹öÉ\nz\n©.j¹®i#MjjPò¼¢vCÍ\'I·>.îdéÛ»«§?Œïêó9tõtç×mï+Î®¦²‹‹Ð&‘QeT¥åRÝfå²H¥.¨™’ˆcHÐD74&2S5&tVy¾O¹ævæ«ôSÑÎo¶ZØcRvz~»Ë§o±ÍëùÉég¦|vükÈÔäîáíÔõÄ¸éK5Û\ròÚf£G.#‡Ðç¯#¿›>¯bò×“^®¥Ë™ëX÷óê½-s¢å.Î\\­¦P‘Öšöy\0	Ë\\¥åæéæå°hMP4 \0\0\Z\0 \0\0\nˆi€€	óôîñ¸¹{a—]q›ÛkÏf³JÆ´˜µEcÃÛæÙ§G]jÇI¨·JUi¨ªb2ÝÙô{é~ŽŸú7ÊsßÑÇÕæï¾˜éŽ•®zfØœ­\nÐ’Û—A\Z)pšEÀ&¨S\r\"Å542¬,«&uÍ8¹º1ôsòöÓ›Yïäêç]6Ë[Nm¹ã§Úò=Nzäåß›XÇÙñ}¹}ôŽ;¯#Öòõ8½/?ÒÓ½Íò¸\'–•×çu\'V¸k‹w–°³Òc‡Ê÷y:0õ~{ÒÓ¿;çæÏ£“M;6áêÍì¬uÆô@µyé(æŠRŽÑ¯oL‰Ëleæåêåå´ÓÎ h†€\0\0\nŠ\0€\nP\0 š…O—“ÃëžÞ(:à§Uyí‡Fz[„j®s¥±pk55‡—êy(z>g¥TU@VdõcÑ+‹•M4`K;céiïÛ®üEâþu¿G/ŸÑÑ§6ØÞõó·QRÓŠ–‰`¤Á¥-*EM\0VBš‘2éQ¥…¥K-2¹óæóôs8}õžYÓ5ì¼÷ŽH¶»zwv/\'/O>³»àûù½Ù×›z7§äÒô|ßj:uË^W:M<žŒc¦}øú9kM2Ó\'78ïyÙzÜ%*ä·¸Ë¢3ÜÓ7}qÛ:ZãyÖ•\"•\"RàÂß¥×ä	Ël¥ååêåå°F4å€š\0  \0\0\0\0(	¸íêðù¸ûa›G\\Åš¤T­óŠu‘J­Ã\\õHe¥aãû>:.þN£qÍ26éÓ–„ÑL^ï…ô[Ï¬íôçÞ^Ëþ‡ð¼ºæ¬ãÖ¯šÞ±¬Ý«:–„à\ZŠ(V²ÙÄ\0ÖJT†\"\ZÚ&T®ÕY-­esuðêsgsèäTUG/9—G5¤TÌ½<šfÇ>¸ï8ýÎ}/=kÅÒ³wñ½¿\\}ßŸöë³Lôå`pòz~Lô÷ðtfö^UÎë50MÌ.}Ö™pz^nÚé“³§§³:ÛluÆê(ÍÑåV_Ÿ~N®g«¾ç¸_0\0²×5åäìäå¹ž€T\0\0J˜\0@\0˜jK_‘¸ü.žnüí­uè¬÷ÇbnX5Eå¤\no*&ÅA&7i>7¹âY¯VW&Ó•×–óM†j¨Ð(Mó?A¼ûÍÞùÃ¢SÁú—óÚéÏËéÉje¦·Rót\"ÕÑ•QIæƒd6É(¬Ûi*«Y\0 a<Þ~ó‚k¿,î*¬Uùu`s¼èîµÓ›ÁŽ¸o1ô¿5ôüõž¼Ý™ÕùÝrz<³×?ExïÃqž™‘çz¾Væ^o¡g^¼}8Öèx5JX\Z³>ŒvµE.Þ^µès\\ôê)LŽ\ZÏ\\{térùOh_œ\0YéšórvqòÚ\r\0€\0Ô!‚\0\0\0\0	@TÑ\'/‘ÑÉêå–[sYw\rX-2Øqr6&™8í‘´Ì¡5§ìù×jäæ[hk¬Ô š€\0„¦Ìê=O/£yû3×§4Z‚æ+äÿ\0Aù.=|å¤ðï3¡$P)A(Ø2–[	lÄj†DÓ\njµ”¨¢iùÞ—“Ó(GnXéUrdñÚkC’ÍýŸžõ±¿?¾áý?Ìý.5=ùk?/§›Rî}íàíÅ¬z0ÍžþN“Ïîä½ÏC~-ù^ÊËlWXi,çTžmg§VË\'&ý<ÛMoYk·Ôð)é=\r5žRªk7ÛÙç\0…ž¹œÜœ|·\0ch$Ê\05B`† 4ÈÅÍÓånpÂ~¬FÒs…Ë+L‘uaµ@ÚÍ&ƒTg6ê3Û2P™rZ¿7Õâ°c©èÏ\\Û¤Õ1CTÙcšSYÒ›>ÿ\0«Æö:r±±\r\rÈøiú™ózE¡ÏY¥–0¤åªU\01V\".’²HmÚ©ÇU%2AX1Ö~7Ùü·~<”=N{xÖÕ5-E$çJŒË=\'ë>c4ú?Ÿú<kŸ¦+ÍÇ·‡nŸGƒÐËJÒ1uÊæ\\ðéÃNwæížý¸:°îÛ\r¹h¬ZëQryzÅíhµ¼µY<ê¼ý¼-»ý?;Ø²uÃNm)¼ß`_œ\03Ó3Ÿ³“Žó´\0\0\0 „Ô\0`€\0!x×ß3U°€·%¦tf\\IST9&æ…I£&•K+Ó4ñÙ/—«r0³§B³U€@Tæ†ŒÔ›„öþ§äýÎœýŠÏTJ• Q^ºæ¾½ŸÍè¶«ž¡i$”åT”[’¨@Ò©F‹(—,ºj¨¨I¤…ÛR}íºý2ø/½ø-ç™§®~Œìùw4T³cÕœ‹L.}ï£uý\'Í},Ó0ç¯?þ.³_[Æô#Ò²ãªTÍ£ƒ‡ÒâëœºyuÔîêóû9kRã7x¬2æ¸¾©|ógg_N7©Ÿ\"òrGlzXiÁ¦‹Y»y)}à=`\0‹…çãíãç¬@Æ€ @2e  \0\0Ô\0?ÌéãösÖ)jC@²ÚN>Î.‰6LR.l´B’RD‹:ôòõÑ–±rõòjvRyÓr#´M %¢³Ó3ÚôüO¤éŽÞ¯3ÑK&¬Sr*’[ñ½‚>\Z¾—æøzÎ¸î’rˆš¢	lš±ˆ-Ë“TA.ŠJ¢š»Ó?C£ïÁKZÎ÷/Ö6âÕaR&õŽ+Î\\ùúyì¤GÒüßÐÍ<vÃ:áBéšÖj=ªæéãªMË‹xSóûsÜó¨:gÐÓ«é›žvùºø­\n½I_-Ý?Wµ{œ>Ž3¥ÅóÖús‹r6¾ŒG˜\0\"àÃ³“–ðžÀ£\0C„˜	‚\0\0	£çñÛ—ÙÏKÍR\0¬ËÑóSÒ|ý9³!W Ð¤œ¯:hBíäê‡\Zd¸strk>Ž¹k(·nKDŒÏ@ªÕYéO×|wÖïšõ¼Þ«:ÌÙF‰H´râ¹·”óþëÇå×Àqí©“ËI%«¬¬²hnH¡JQ)hË»yäôýK·.n‘tâ ¤4gñ?sñÒøíÝ*F|ÝœåuF:iœ³ÏÑÌÎ‹ïxþ¬ßO,m‡Ÿ\ZåÖmJNOÁëÅöR®Z‰©®5·>óÁRºOR¹;9ëJ›Å×‡·€Öò[š,âøíäYõôÏDéÇW¤L5ŸdÞÔÞ/´«Ì\\Ö}œœµÎ>€i€\0\04\0h\0Ñàqú>¯•MV€8èÃu_©æ÷ÓiÉv\0¨Œ°ß-MUõrôäòÒ\ZçãíÃXÛ£ÎîÎ´3yŠ˜-e†wOóîç»‡W>ù÷¾n™qÐÈéxj‰i\n\rË#Æ÷	~+¼àçÓä×³æóé‰&u¥CÍd»(ëô÷Ÿ»éº·ÏËôÙÓ›B¡\0`/‘ú•šògN³¨shåË®¾MÇÍÓÎ’œfõú|^–4sõñG>5s¤´¹$÷}›÷yk¢Hç¬ùú2Ôó£\\;g§¿Íôq^Šùê¼þ¾]3]3¥M+ò»<Ú¿S‡ØŠ×:ã^¦šögxÕ¨y{Àz¸\0µ.œx¼àrØ\0&(š\0 MP\0	€€y~W»ázpi›é’¤‹\r8ççïóõ=	µ.l,–¢ˆË-q±T:éß³RÑøtggépõSJR`.Šª\Z¥jŠ˜~§™Ù©öYìºråîâÖ^¸¡9«LW¦ù7*4,ÌjP’ÊsBçêrð.÷/7HYd¨R0G3VŠ¯žú_¹ÆÁ¡Šæ¦³Ë§:œwÂee¶QìöyÞ·=žg¥æ¯>:eÛ\Z¨ŠdzÞ/foÐ¾>Ï>³Ç|;-³í˜ôüíåôÔéËYðmËÓ;J­Q¾uáÊ:7Žÿ\0GŸ£†ªËÑ¤é›dQ£j_tO\0\0š“N¾\\k”;\0Q\0Bf@2Ô\0@€åð½?/Ó‰¤uËšQP›Tùz`yz¢(t	Œ³¼µ‚wÜÖtÁ˜ç¶zœÜÝü)éO›¢ôoÇÛäU¦zCšD¡UoÏ©÷u–½9aŸG=½šrôCÎÊæºÆ:«\rD‚¦B¹I-¼Ùd2œ°bt€˜.b*±\"\ZTy^Ï›\'7Ø›Ë2âä.¤Ô“Ï¾^=Ùz¼ž¦vqvòâñc¤vÍEâ‰…c¶j½®ï3¿Žõ–speÓË×/\\i{4Ç<Ü_I«	_—ßäRõ8}fztŠã²ÛÙ<ÚØå[Ì¶¾ G˜‰©Œyzùq®A®;(Å\0\0\0¡ Ð€yoŸëåi«‹clhÑ¢Qg\'_>…MÌ¬1ËXÔÎçTíró¦Ð,î	ÏQ8\'«=HéÈË©U¦w+%Z\\õ‡gÛuùÞ—NqŽÙÙ—W.“]Ft†;MaÑÎã­E™­ /½+Ñ£€ÑæV¦$m9I¬fŠ	 —WJÊHáïã>7.®\\tš’Z¨¤Ylé(xkšoç÷y1ìô?[ÃŽÞlê:â²¸¨ZàžŸ«áúxßt³åäßÒ*j¶%Ý\\eÔ©x¸lÞ{}N~ž:»ÎâÄåªÏYLŸ¡Æš¼ßP_”\0J¤Ë—«—\ZäòÛMJ\0*b \Z\0JÐX€€\Z¬ôç³Éçß?_.zÏR\\²³Ó3WM\nH›Âº¦‰a‚\" Ï°¬û8}4¤óªBYLE7&|½xYÏYufk®.‚mZ\0\0‘Éõ×Îý^fzE˜«ˆß^mÊ@FYnMÍÉ¢\'PÂw•É\\Ä”\0!ˆ0¤iê©Sh†ˆæêÀùGÍÇI\n‰§†l¹hÏ=2Kñ}Ÿ>‹ÚùÎÜo»|eÊ.7V«&R,7Æ¯»Íì—Ý2Ó†¹9ôÃ¦[t¾n®vÛ7séæ×?£ÁîY½\'ÇVâ«BIo£“«7¯£Ìæ—Þ^]ã_F¯Ì\0	£.^®l^4×.ˆ	@,@J\0\0H ´PÓJpwù]3ÉŸ£ž3·9cÈÚYKLlÑIæêÂµ®}åÑ\'5ï‚súžoª®³©jjbJU3qJ4™<î¬ò“®â“jÏVÇ4J¢ÃØú“ú¾¸©©g(Ö	×*^‡„²¹ç|#}9w]«=›Fs²\\ðdh”D”Èl¤;&›DÀSRé™ò¾G»ág£IÅ\n£5®u.”¹å®s\'ëùz¾‡•ëMTur¬€d‚Ì®Z<ôŠÃ¯“uõú¼þÞZæÇ~mClz*9ªW¢1¨~OF[Ï¡êsoÏMa™¾¸\\uG6gG7,éÐãjÚ‡x\0*i¨Ë›§Ÿ7‰Tðè!+\0\0\0\n*\0„4\0¡xÞ§“èÄe®}³9ë7\ZFZæÊštë\rG4¤æëæÚ­\nTš\'\rò³ŸÖòý sRÒ\0–„$äË‡Óã®‡ÉÙ¦:Õ\\5´åAQÝõß#õ½1ª˜ÏH!ˆ×Lu-Š4•æºÆ:ôåÝurÆ˜Šh%PIBÁr’è%¶ \0KDÅÉóÿ\0=õ?1æ©(åÅ‰Ä«	¼ä/Öòìéõ|om­£\\ssrTF™Ù%gZNœúeG~ü{æï€Cß\"Þ\\óÚË6òŒý.OTÏL:%yéšš®sN\\ú.csiVëns+ô€S\r\0£>~žlÞ)¼øu\0\0C@04\0@˜8üÎÿ\0;ÕÍË[™*€ÇYŠÁô<®´™Ðbf4d)’¤%œµÎæ;ø{4¥æâ„¥®lœ¶Šó=s“´¬óz]µ•9¤îú¿–úž¹ÝËfcH\"jJÓ]j-*Ym1Ï´JõéË±©,¤„``†€\0‰LO;ä>Óã±¼\0hM\n¥KhQ”5q—g=G»óßA5Ñ–¸çQ$Ü¨Û-©Mb À¨:ú9z%±3n>ß23ôr¥çäÖìêé1Î³ëäê¤GkÓ©ZçSªÂf£l³ô$ \Z#›§Ÿ7=2ãÐQ0€p  ;Íô¼¯V5Dë+-â¡5«Ìèç­ðÙUßRiÉÕÐñÒZÎ•“–™Øû9ºe)e9«pä/9[X–o3QŸŸérÖ×çúX\Zóí¥¦¦•E\'¡õ-õ1Òâ¬&¤„Ñ4™w­&ÑŒñèƒ±rôÞ\ZV‚hÚ À\0\0J“@IÍò]ò³~Z¸Î‡$£E›1Láž‹n{Áö¥ìÇLq¥g©q¤…ç¥‚dsEÍmÓËÑ\ZÔé4üÏCëÇ£æëŠMyI7žl4­C&lé“œ¤»¥r¡Ÿ¢ ˜\0\0çèÃ7‹-ráÐQc@\0\0h€4[Áãï—£™XiÓ4™,*I“=²u¦;Á–¦óËÖFÜP$e®oÓ†«@J•!$JUVuasRÖZªó}E3Ý¤©u%´¯-¬íúŸ“úÎ™ÙËJ@‘7$çk­M¤ºBÏDcŽò¹ë††¤RQ,b`\0\r H\0hÃåþ«æ¦¼I©Î¤M]²©IÍ5)NºyÝü{G·“Ã:yáviYkQqHÈÐUïŽòë¶æóóíÊwW#—L25¹¡Øtî·Îˆ3Î©#RÜ”I¤›oékÇ_@N`†ø/;aÃ Ñ(`\0!\0 48¬+çÍy½|Û¾fw¬¦Ý”\\\"ò#È³ž\r¬:eyÜ÷5×çöF±S)Í¿5uï– Ñ+ <¨„’®ne…çàôüÛŸTæß›tÕÒ×-N¯¬ùO«éf¢ÊqhM\"fÑ6©t¼´ŠšœöÌÇ>ŒTÓ7¼lÑÅ\rËF& \0Q¦„Ò3ð=ÿ\0_šÎóšr‚N#œpÌëéÇ;sKí¸Þkož¤éž’	A¬¹ Ti®Zšï•ç\\œºñYÕž(Ú\'mIé4+eyÕ\n3SRI6‡½ƒç½sæ¸\\Á0§Ÿ|eãçèÃ‡Dˆ h!ˆ\Z\0\0AÅÛÅ©æb?O9NíâÖùÒ£uN=è»Æ+°®.ÞLÓÐçÜ8mbžŠÖ\\Ý\\·=÷*Ç|íÄ®tß,¦“¡A×V‚q<ü§/¥äûZ—5¥&½ŸWò¿UÓEÍÎu-tsh¦Ã6Ò½2Ðº—\r‚aœk:Û)^˜ÕmyYbhÄ+hA4 š1 G•êùÒü–]\\¹ØÓ”UEÄœó¦l¶êÜ8}ôû<þé¼¹ûy,Y¼“xUfŠT³yn^™ë.àåò¸zðÞ\'G½ÃÍÓlze¹YMRÊîh$¹Ž¹¬ý,Ét…2·‘_ &§ ‰Ôá¾¼œýÜº	™¨\0\Z&¨\05G?FÏå¶¾Zß&±¶zM¼÷y£æê~ÎH:*³/›k®.ÞXNÏ?Ñ‚tæè2Ã|Sº¦¦ˆÒ\"PVKY±1‹¹Ë×k†ê¹ú1O+×òú“®³Öjîi{~«å~§xÜUsœé¸¥±2fÑ5!­EID‹BvHÏ=ó9Ë•w›6¬¨ÔŠJ@4\nÐ!-	9Xäëç>S‹³*hQ£\\âÌå®rj:·.îQú~G«.üœ«ÎƒXo;Xd†øtEk®ºe®uãå¾[ÆŽ\ZVÓÑ5uæ´êÆ–„iZ­m¶xÔËšrðö™¾òf¸ i¤á¾ÉÍÕËÃbk:¨\0\Z\0\0\0G¥ós5O¾9#³ž\rù\"»«-#(ès\\Ìw™ªºÎ4åévquã‰§FÖXta×d¹ÍNˆ@X¹zùkNŽN˜6ËUYm‘ÁñÜûlà=¨ùoªéjjÅ(ª(§-h’ÕiY\\–;„Æ²aŸNFJ¥]ÀkYY£Î‹q@†$Ä•Aý8Ÿ!ÁèùØè	«räŽ}ù¨“jMqçêÂÎ?[Êô°s|üöÃYn&Í3h®®~‰jÓ—g&o••ã×\ZéTkª3¨ÒÑ$ât.}JÒìú??ßË~‹äœ^Ý<­%íÏ˜³ì:ò@\0Çleåäëäç°i\0Ð\r(h€J¸>Øñ}\\ý×*¬­§<t*â×\\N³ƒªM3Ô^^œ¹ë±òîg¥á\Za¹\\YJtsôsí9\\4’šX¢óÑ\'›£šÇÓÇ¬½;c°c®g?ŸèyözõVU½ßQóQ¼msV%R@\"ê)Z\0UEE¹eJ¡ 3ÑñÑ‰\n’•Ò²£W”äJ%€!e®iòž_³âcªj‰b…ÍÓÎc·6ònÕÛ–{fœ[W§¶ç\\œÞ‡Ÿ¹œ»eÅJëÓÏÐ®“Êê/7Ã[_\\=2Ï7Ð¯%¯<n™ëtU«•hRÝåYhó¥Ó£“Y}“æúÁ®œÀ\0\nYk”¼¼|¼µ(1°\0\0\0„Ñ@ ƒ¸zN/3ÑÃÕÍ®n³+’I³~üìÃ«Ÿ\ZïÏ>œß?/K–ÉêóË;ª.\\ù{9klè“®â³©Mh¦óˆŠ›\n†>n€ãÓ£œìß—¥V:d™ùþ‡ž£ÏL7sw~‡Ó|ßÒï\ZÞZ\\µIs›©¤¡5SH*(º—$S—M¦1$#I0ŽŒ×äM#ZÆžVSB1	óžÒ|Þz*Š–B\"°Û;95ËL·ÛmxtàgÇÝÉgvü}S[y^·!äôcÓ¼g\ZL»ôa¼´Ú–æóŽ´[ÎUÑfäÒŸL¸oD¬ÍF“jb’€[¬„è1GéH3\n\0Zå/7g-$Ú`€œ¢L\0*¸<ÏOÉé8ôçÛÑŽMtã³©K„©B4Qu¬§>}«åK§7eYæuÏ2z<ùok†§mEÍJj&.k9qarèäêä“ÐçëƒÎn…2×sáëåÖ{5åëÃ{Î®ý_¦ù­éÏ=%¥4Öbå\"€m5bfmÉ¥E\"\Z[–6\0(¹2åpdÎ’.ñ£jÊËrÂnSÇùO²øìîQ2ÓÏH1Ûä¦ûáµÖ‘D¸c²¹Ã»Îô¢]Kâhg¬Þ[fzå¬Õ9¨nT¼®MeåÑ¬röšÚ•<ÜÖ…fõQ*¢´Ö9Ê~ˆƒ0\0\0Zæ¼Ü]¼|µ\0±¶& R´*\Z@y^¯Öq2=8éÃE\'&æBš\0d-S=[9FÙ×-tAKžÓûñ¬¯¤ôn/:I¨˜©¬•EÈæ¨âîóÏZù÷TÂo0éÊÌ{üÏK.—\Z7í}GÏ}ùæYd°YTˆ@P‚œ±F6ª–1:u!n\ZP˜“A4ÆÒa;æ¹”¨\rk+M´çø¯¸øÉ®LÇ°PóÓ4ç›»ŠkKËcÕqud“¿L7šáâõx®r¦ÍõÃ¢Vå·|Úg\'.Þtë«ó*_O#UöŽO{ž¼¥íÎ^Böõ_Ÿ~Þg×xsår·+ÞTÔéúˆ,e \0Îàæãíâã¨Mg`\0‚ƒP\0 ÎÎ~~N0æêæÞt®N‚á†7x›Q@É)©*@•bf´+tBseÓÈzzgR¹bÄ¸&ju#IhpzqèôstÊÁFyéšÄÓ¹óýo+Ó—m±Õ~›Ýðý¾œØÙ\nÑ›h˜ÒU&†å•,œ2„á–á¥¹ C1!XaXNÑ,4/&_Ê}WÎG„gn²Ò4Îó0T&¢ç¾:Ðªc~Þ[:·äéš~£Â˜+­C§¦[s2˜ï…œeë¼czë.u¥KŸ^5›ítø·Ë^—?>ž†^~vvrÆš-JI­}ëÊQ¯\'¼¦\0ôÍ9øû8ùo 1±5\0%hMSB•ùÞ‡¼óuqvz¹Ç?FRð^ÜIØòºªÍ„l‚²¨·.‡$ˆc—\0‰²xú¸ÓÕÓ¥IÄªj*&§Ri4|=¼gwNÍ%Y¤fà¡	ÉÕÍ²öë/ÕúÜ=»çm\0˜) ÎtK™R	€ \01ˆ\n–SAW%˜\0¨\"5lú¢¹²SËô¸s~>oI£;Î®1E\\ïSsQ¦wW72¬vVsôrô}|òòZÌÙ¤j….q¯*>ŽnÝB–®4,¢k<ú%9ßw^Nþ¦rå·/4¾•ø{Yõ\'–r}ˆ×l€‘€é™ÏÉ×ÉËx¡©DÔ€˜”L…âû^Olù}ÜŽ{J	ÇunúòOŸ¦¦å—É•Þ¦v¢\\çIM,w‹ž^~Þ3Ôèæé”ÎæY‹Í%ThJv]¼Qêmž“Fw™Œ±’Š9(%ô;9=[~«lôß*hiˆG, ¤LÐB¹T\0$`Æá–KM#iÈ´!˜Ä\r¤9¥Q\ZÉÍÁëqËñ+£—\Z+YTœí\\5,&´Ù7	ç5ÈéÌ¥ó5ÏMfê*[‘™å§\"G«ã{60&¦t#;•]]UKî_…{|þ4YêsñëWuêG7«ÕçrÚ‰]\'ß¦¦\n4!|œ÷€Ž[\0Q	ª#)æú>GlògÑŸ£$‡Y±ç qÇrŒ6Ï#¥Å–•G^dViR“S7W6¸§_Wd¤^rÌ\\œk)¢Ÿ_4z”œ«;ÊXÔµAÎ\\G½àý]z÷\Zk\rÍ*` R$©%T’˜C@4)\n¥Ž¥”äK$,tHFåŒEP”Z@°ß:øß+Þùüt¤(¹\"9ôÎÓª£EœôÊ¶Ó¡&74­T¾]£YÙµ,Î¸!ÍXXý^Ai,óužLë£)ÒÌžÔevÉ¦G¡ëñßg/ÎïÏY¡œéú(,á\01\nMJaÉ×ÉÏ|àsØ\nP\0@	Z?+¿ÎôóˆÓ™©™,@Ú*ã\Z_$ÙÐV‘:MZ&e8ìW\rôâ\"-SK›«\n¾îø!©g-3¤œk(Aë2ú Då®jÄ4N<éè}¯É}¶š\\ÕËhV€\0@\0M	ZXW$$h\0€X‚‰\n%ŒJ­Á¥&„MºI¹Î£ª8ò9>Sèþ{iÅ‰ÍyÔtëŽÊg®všc¬–¤iœtòÜõVzK9ÞZ˜ñuág£¬,ØËMtºX4¤Éë‘+^És÷9#•ô¸¹aje4R}ºåöi¦jQ¢œÔ˜rõòâò¦rè†BM\0\0„¬Byü›aëæc¶z˜«Q#ÌºçËSªùtóë¬¾wEñjz•ãú0A­ñÆïÎ#¹pÕK–£§^‘êÊæã78¼õ	jÉ–µ3Óó{ä‰VZÈîJmT.^Œcé~§Ã÷:gFš0j€\0¦”$ÂSH•%•H‘‚M	42hÀ\0*T”¦JYª©*37+\nÙW‘óÿ\0[àr×”CVK9é4×£—¦Z‹•†‹4¬´”%n<]þ}šïËº_?Fgœíjw±æ¶Ø˜B›b¦Öºúwç¯:yw,ÒK\'µú\\ôëZâö¦§Ñ„š§M4aËÕË‹ÊšåÐ\0@A7•yyi—¯’I%r¡YN©9 pK<þÙËÐg.«\')Ù*ÈÆ5LsèÊ¹½Ø—Yj\\óÓ$HZ“-&=|=Ó]YÜä’(yÝšTÜ¼›ózéõ¼Ý3«‹‚¤ZH€\r\0	\0JÓ\'IXl%\\“5\"h\ZT©)JŠ‘	2“º&ª’]:†Ã/#ÜãËág:j¦ŒðèåMzøúeÑËEÐ(·,\\üVg¾\ZÙ¢hã=\nt›@ªFÀ¾î.¬ß[—}¸ïÊåú,ù>Ž×Æïí®l™Ï\Z.Üû¥Ûš§cL0æêåÎ¸æç@L@¥¡G/G‰Ó7ž™ú9Àæ”ÒPnIW •,”\"›+¨5¬n[ÏA9g²N:Û$ÍRÒf¥9=O7Ñ^ˆ©Œâ ”çRs¸L=/7Ò—hÔ”3:*§FkÏõ9övvoÏ¶³«’]	¡¦Ü…\0 bi ,”‰T&sª\\V°$Ê•H…¢ Ð\"©ÑE\"cDQ,¶–ù\'Î|çÙü®:óƒ—§4èçÐÝÅÊ•M\0MJÀ/N)Ë·?F¥´Î,uÅ;¶â©{\'ÛLlÙçªÄ;½™Óê×ÌÖ5ö7âtr½øy¼Úž‡\'2èÐƒsô\0YÂT•0\Zi2æéæÎ¹\"ãD4¢jA4 qÙÏåå~®^†:gª¢â	¥bnK3²¢ª\"€*SaB% hËATIg?oŸß](XÖpÕäÜÏ=2Lý?/ÔÎª)ÈÕKEÁf¼ÛóG­ôÞ·Ó=Zã¡µã¤–â–É¡\r@!%Pb\0Ä4\0	PBÑÎ²dµUšÔ35êÙ“Õ©’R0	5Äæùï£òs¿—6Ç6¹ô‹ÎNÛÏII¢YÁ„¬LYiœ[gVnÑXjjgz¸K]\\ÁI8Vjfº»eâõc—\ZìãÉV†m)\nÚc³ô XÈšPµótóc\\‘QË£Na T?)ô%ÛÙäúÝù÷%*M% ´ÑK†œ­%)¡	mf“Y†gž“fmÎ¦q¬W\'dv‚Æ²šÎÉs,vÀÏ×ò=l–™kXªnIƒk>—¯ëŽíùz3t¼j6¼´ZrÆ\0!#LˆZ@\0\0\0Á*	TÈUC¤%H@ÄR\0‘€‰$«â¹ù; ù?è¾—L\rUœùëŒvkÍºè’W(î*\Zrs\\sYÙÔKŽ-pzFèÎæá&)zúx¼Ý¼õ·iržá¦bm|öº¼ê4pëôD×8&¨\0F|Ý<òñç®\\6šqxþ×›ßŸÓÛ\\·Œ›¼Ùd¸m’‰ ¼ÄÒSX‘‰SdÅ³•ï™­òµèÎôNíáL:yµ¯Q¹g¦u)š™ótò¥z<²»›†š„Ó9;x½ú2×¶::xúcW\Zé•Ë«š@Á\0\0Æ‰ˆhb\Z\0\0	€\0\0& šT5b\ZQ %¡€ \"5ÎÏ?åþÓÂÎþei†59è\'/©àzµÖåËIÈ´ÊÊM\nn›ŽZêrÎ.^¾;=.ï\'xîœõ•Òµî×Î1¯K‡ÑëÍð«·—y†Šyê\ZI7›6!§èè1\02ÔeÏÓÏ/;eÇ¢hA\0#›Ëô<ÿ\0G7—LÔÚ9£¶NZÒâkB\Z4Ð\Z$Ö°gBŠ•*TÓÊ5Œ(ÓA+ÍMÊäéäÔôD³g+‹\ZgÉÕÇ\'O_ríBÊsÒUQšeèðz‹í^ZwÇFøm›¥ääÚñµè¬tÐ\0‰Œh\0\0\0\0\0 \0!‰€€\0h(Lb%Iai&s¤‰ yiOlçýÏ§=VIç½xìúÉ×\0¬W$¶æ‰›“^Î[4¼µNN.Î=;º|ÿ\0O(-¬S\nÓzý_|_§<¿G†üî?¤àÖ|¢ã©M†*óJ!k?¦´s `‚\\ùúy£ðáÕ\r(	E¾fu>®Y¦Ðš‘Í\"Zj&6“5´˜­ÊÁèFmºÌØŒêÊËAE$\ntçÜW+Ïìà={æêÆ²Š‹ÜjGwÙ·&Ùz\nIB*¯›£˜ÓÒó}CÔÓ-{g]±×-\\8ÓL.^ŠçÐé¬t,(\0A414%Œ@Ä+@0Ð@Ð!¤ªDN²¹ÃÄ\"r³—ç>‹ÆÆüH×)c‡ÐãJõüdÞ\\­ –Ü1ÈTruñ\\ÖÜûœ¼ÝõÇÝ„éY¸æì’“NÏ;Y¯£ìù~þ\Zö<î®žzùÜþ““ÀkO%{TŸ\\° \0Xçèç—“Ÿ£ŸD%9º|ýÎh¨ôò¬Ä9@Ä\0!ˆ\ZRZ)$1Mi0-™)5Y¡™Z×=GNU+–=|ÚÎ\\]ÜVwuòufÄTªNuœø{x#««‹Ñ”Ó-…¤ç-cPiëùÖç^¹ßLu\\išØE8¥½1¨ß^}‹ÃCD’EQ&ª¡›«y¹43e	-¸iD…¤@Sh)ˆ$dæºe–%äUdnìàñþ“ÏÎþ[ƒè<.z\\÷<ýYãg»!41¡ÐR–9º3N^Œ6³š4ï®^OSÇ_£ÇôåÜ	SiI¦™;¤zx^o©·Rû\'RúïÈô0.P\0ž}ð———«—A2iƒÌôüŽ¹Ï\'Ÿ£,ÃEk8fÏQçæ¾”ùÓ^”p4ìžz43ªq¤í™N³ÏDÖ ŒuŒë»O)G®y]6_êyµÛÙçú±NtççÓ7ëåÙ{IYÉ¦zå§±äúýg]g¦óÕ¦›³DRbŒF·†‘¾ÜÚš\"ˆ-®i!\rnjCJÅ›™3Rj²C2Ky•¡jd—<9äŠŠªÎíY%Žaaº<ë|¬ïãã¯Þ\\5ZÏ_oìM!‰•\rKsg¸+ž®Ùé_+Ïö<»1ïóº#Ù×Îô3º\0ÊN@¤àUf\'bàKÖ¹UŸ­´r  Ñ8o„¼Ü|œz3PÒáåõpú¹å›7œc¢YÂ:‹|ü=~Àæ}C±«™På(NÙiÄ­n9÷ÑJéE‡>}æeìgg–uqÙ¿oèzeDµg.¦õ§,¾Åã¬X+k(íôüÏG®;6Ã}MôÎóu6šÐT³M¹u:ï\rbÀ	°ÎuUšÑ$+D+DªK)ƒR§jAˆ°‡£³7 ’Z	»2½Œöc\\ê8ûr>SÃû/–çÓÏÇ·’Îo_Ëé=$¦\n/;8²Ô¯`FuX\\ùñîyÕ]¼]é¦;Kb˜©ÏŸS¯>êÅh™_¡ëg_6þš²ù§õ>­4€\0\0 U†øG/\'g-¤ÖtEñíæàðôòk,õÖ60ÖWÑ-¼	:%ºç2‚Î+uFQ[ÚÆ()G\0\nMËpÊÒó½>åô|¿RÊÏLêQ6cÏ´GYJåßäú¼›a–ùÑ]]<ÝqÝÕÇÐuÖ:š^zARæ¨(\nbpÍöäÑ:ï›Yu%Ø4âJ	fh-º\\VÂdµŠÈÔ3z37 ];d6áVž°œÓs\\žÒpÍ|>^Ç•pÇG5Ï¶øû&„H5ÍR“ÔÌ¼ë<ºò³‹».cdl=#2¹_AÀþƒÑÅù>Ê%ñ=®›ã£\\sÍàã÷<Î ó³éÓ\0Î@€8ï‰ËÉÙÇÇrƒ;~G­àï<®2hZÚÖ³Êvªä}JÎeÑ1Îtö.=tf•LÖ„#DŠµ&lÐQ“5YêS‡&¾o“Xz¾?©gFzd«+‹0SÓvb¥ß£„Æ²¹kL\rÎíù:wŽ®ï7½ztÇXÖó±¹BZÕæâŒÙUZíË´t^6š¸e@&	„‰ŒCu**(Ò¦H\0\0±\rJ	Ž}h³§gòŸyóÜú|ßv1‡­âúXš„¸H›9ðéä¯\\ÇiK™]ç%&ë!ux³§n\nŽúó\\¾¦þ-G±ÑàVoÓmó}Ø¾¡=|µÎvµïÓÀD&”ÇlcŸ‹·–ávxÞÇ‘¼øë\\½<«YêS Už±&F‘dª£Ðât¬•Ö]/‚SÐ<Ðï\\šVÆn,ÉWEqÔu¬4ï‘™+RùwÔùÿ\0KNìêbæç‹Ðàô¥¼úˆÂ:8—Vð‡\\}=\'G_—>gŸÝ]zójm|Ôt>u/SãkÔøèê9¨ë®+Ž§…WVœVÛpé/cæÒMk:)¦\0\0˜Ä\0!‚\0\0\0€\ZCB°–žÈåãS.ì—ã¼ß±ù\\oÍŽÎ<½Zåë¤‡7—oÈ£jóQéžs^õÂäî8Úõ®z­Ìn52#¡ó•Ó\\—/§è|þ˜×Ô¿Ÿ¬?@YH4iVzgü}||÷˜Œlñ}Ÿyá£™\ZgfJ§IŠ™\']èÓN<eôy¼üŽœ³5-K†\'d´Ä­i/GGž£Ô^A¨l=sœÝ1ÖÎ×—SnÞ;¤›`”Ï?oŸÛ/zåèS\\r×\'ÝÓ>;ô8ŽžŸ+ÐŽŸCÎéÔõ4Ãz%ÀÄ£@ºƒZ\\@bj…H‹y££N6z\Zùº/©¯“qìW•²z%GMsÕldF†L²YJXÄŠrS4Šjdµ!DˆÉH¤i‘–óg‘ïs»âséËêù»ÇQQkf\\=ÜkÝåvšqîÓ“~éÍä:t·™v‘À½K<wëfyÕ¾v*Í,ƒkÆ¥ô¬Ì€´ 	LôÎ9øû8ùë9ô^·óý3ÎßšÔHPk\rc’yõ—#DCT4YN€ARhIíÄ£ÓÓÉÙ}3‡|Üø}lk,ëdÊ°²=?º]§«”Ënn³§\\6íÌçìG¯5¯o‹ß›îöy~žæ“­ÙÏ]:××©Å§[9Ž¤s>€æ}(æ]2s®äŽá|õèTy¯Ñ•â¾˜\'\\¦7¾4½õÂã½ðÒv>:;+ŽŽ³–ß;7œ‘²Í\Z…©I¢l‡e’Æ€ÌÑÙ™^_Ï}‡—/Ëãépóßkâì•Í‡G5%&þÇ7^u¦óìòÞ½GWv®^éy¹=+rkÍÇ®=µá3ÕäÏª¼Ü>ŽÏ•¯¢ç¹ðçÔZ¿¥‚ç\0\0	©î>¾NzçŸIùÏ ùÎ¹*g¿2e£©Â«‹9±c\0\ZC\0i¨\0J©\0ƒT´´æ:22ZOLÕÔ9ªCYTR1²Æ,éÓ=|«³ÚßÆô7:¦¯yòù=þLë¡ù~¼_±Û‡¯yèyÙUóqb\"€V\"’HÝ²SDé*\ZD¨¶fµF3ÐŽeÒ¥ç7FKdfY*¤é€Œ\0$¦K½k¥œÕ°™V„³7\'™ÛÅÒ<6”ð|o¦ñ9tòzòY½P¦¸óïÖ_\'»ÛéÅó§¹«®^hô±àvvwø~ã‰ö8kÐñýÞŒ_ŠÃìün¹ùøô2ïž=^uÓÝãç—Ó¯–R~À#!€EÄsòuòs×8,tåð}¯¶×›yçbâS`Ó§PÆ nXÚ @\0\0Ëˆ:­xôë£‘öÜ¾sôYçßf1Ï—už\\úØžf~‡.§>„WJÃ£=y[5ÉÓ7®j•;´g~‡wìµÔépú9qú.ãÏõ°Öéð7ëç÷oÆß§ŸÔÓ‡{Ï©ãi©4£¦JÔ0{3Tg;†/`ÈÒI\Z\0)‰ˆbJ´JÐ\\çU–éîŒëJ3vÅj¡ƒHå ç¾Jæ]xë8aÑsyÏ5óüž§\'.œÞ§—ìËìú_—§§ÓÎüÇ—úÛ?þ‡ÍíŽ%Ðn`¶Užùg—¥óW}·wÂzµõ8ðz\\¯7ÒIñÞÜruÏÅžþ=±ú\0Œ\ZNPE\0\n.N~N¾NzæBç¼~kê¼>“Ìœç¿-8«\rå´\0hANA‚(H¤ÝzRåÓªÎ‘JTÛM•8#Z*	Ólúù59¹úMN&MŒ\0bŽºåíÇ§šºIÑòõñÄûþGµŽ–\'Çßr“TH4Q,I-\ZçÕ×äãô]Ÿ#]8}žŸÑ¾Y7Ù®ÉÁÕ¬jäJ\r2F©+D-ÌÐ!ÙPhDë9Ô1z³\'©,;\0¥•31P1føéë:êDi9¼˜öðéÅæz^w=sòuáyÛf´í¼§:ì|•ÿ\0·ò¾‡Ÿ§Ð®.þ:åä÷é~C‹ïVçç<ÿ\0¢põÇÂOÖùÝgÏžž:Ç?o&gÒ{_\rÙË_kçrz¼uä×£\'¸£š\0\Zh“JMLaÉ×Éqªž[1Ù/Æóû³ŽJ^ðÚ`Ð6€iƒ@ÚCÃŸ~ã:Ž¹y¡PYÖLH°{™ïj%¢YšNJM´æªÏŸÓÅ<¬zùºf	tÁ‡N]\\ûèÓçì\\9^}ž7GYqYô	¡\\…9\nU.nPÊÉ%4—JÎŽŸ6:r÷ºþP×´éø;¼~ñüo^ùýAáôëŸ¨qïyê)¹¢S6h@P’’(€µ*-ImR&Ø³®MŽ‹O6U@¹z³<~[ÊÎ¼îm¹q¬rÓNÚž¬î.!5¾z_OÕù®žwëzþwÐóôõŽ]9ëc%\'5q^™öuÕùÞ?£yÛÇÆwú^_Ié¿ý!4È\0 €SS.½|¸×¹ãÐß/ä~Ûá½<SGnm¦\0Æ&*@Ð>Éku¬¦¢”rá‰+1¤šmtx¦v2¦ª)™iUÕÔb¶%çÓVrùA	òùúÞGlV¹Ýv>#»oÏÚoWû;á·/{cÇQ54šv%b$r–²êhnjªÙ”­1$¡\nmUÐÉW~þRß/{§æž¸ýf¿#¯NVþo§|=ÅætëQ\\15LŽØ0	1Hó·ÇsnŸ\'Y}7ÅÑ\Z¤H¢ápñýnkæ9»¸%žÕô¼÷ãòýO›‹â™õÏ:ÖtšHìõ|Cžýþ¯»Ï®åâÒç7ÍfûùúW¥ã{’ù]ÿ\0?|ýùw^™ÓŠL•\0š0æêåÆ¸¦ã—@ÎøÏ±øïW)¯6Ó\0\0ÉjÚÝ:z¸ÙQQ¦U U.nÁ0A¥M+ZfÌíQÎuÈvÌsÖÒ5•Vd§Ï}\nÜùª÷y7Ÿ#/G›Sœ’º¦Lu÷µÇ?Õ\ZyîÓ2–;A¼‰¹¹Ì²•\0›+Q§`\rRm²!AŠŠ”,”‘À\r;Š×œÞ=.Ÿß§êøÃ§ŸîÆök‡Òž/Vøú+\\W†æ®/R9;$àÞ¹ó¯CO\'hô¹ñÏÊ²ç®ŸúŽ	«õ¼ÏCŽûWÇK=CÌò¾›¹ù™ô8½93+Ôô<Sõ6âßŽ»tåß¼7QÃØîW‘Ý/‘à}ÏËvÇ™íÑ\0Ä\0@	£.^ž|^¼ùui8áø¯¼øoO,†wæ	ŒN:¼G}TÖ,×Pì«ÎÖ”¨´ÕÑ.«5[±ZrÐ€rM\"¦É(«\Zœzz3>cÌû?¦|«ÊúÏw«ƒÐòýpk€U(T­”\r=FŠÌM¡´Á \Z\"ÑµRr±&*bcDÑ\r\0bƒfqº®L½yùúôGNK§ÏŽœ}þï’½rúÕò»ëÒååo¾{rëâÉÎz3ÆócŸ>ltêô¼~¼ëÖ×›«ÏAÌ4*ÏËö#sæ3ö¼ÏF1èÁ×µÙázœuèupvòÞ£X£Tr®¼u:pžÜß‰Ëìqí=4x€ @(V|½\\¸×[cË ÐOÄý¿ÉvÇ”ÓÄhH q§v]·YÓB•UVÍ’•™\ZTÚÕ­3K…M‘uDP&4D”ŠXç+Ê¶­ñc-sOÎú¾=?KÇõ¸ý+ÏÙ*¡<Ö\nV‡CHw.˜›HÒZCróX€h²JÜ°\Z‰¤ÐPÓ†hrªE¢`ÅR ©)H•”T”ÉV¯<–¹o—p»üîÊæÒóô½›ö8ëÚËN¿6ü˜êÇrX&<~Ž]\'ÏaîqöÏw*ÓÝìñ=.7Öœ7ã²+Ž½ÁÓ¦){Œ+-Ázø44*F|Ý\\¹×;cË`Kç>Äé˜M{8\r¾^ØÙÕ´¢öæé«T¥A&™‰\ZªÎ£«Lï5Üé+¤ó@,iÔKK”ç.œè¬tÓ*Þùzò¦$#ç>§ÂížogÂõséô\\×¦¦¡]*•\r(TÇcrÆ‚  hV\0*a\r411‰«\0&4Ce¬NªiPª\\4‘D…J)¡ä)ÊŠ%Øóëå¾o\Zû>^¥4[áKíû%éð×Òròú^~ž\\ú·8­\'YçÃ·=Î_>“ƒ¶®^ÎÎ.îz|}Øåçé9nuœÛ&ÕÎc^ÀO€€@‰åêæšâÃ~~[¤9¥æú\\[ÏÅÍO·Î\0¹=WyªŽx¹ÇKzºqÒ,B„´”P¯]%!”dEé“—£Lo\ZÑ¥Kói\"¨UK:¾jê3ÙÅ•0ÊPF>o\\ùÚÆVû]ž/¥ÃèôC9{&ä¶ª^hÄ\0ìŠ“•ËCT0nX€T©4Ci\r@\n€nÈ`£rÈ\0P\r(/5Z‚µ¼ZhòBjgÝ1‡ua|åú\Ztòüo©ÁÛ*äÑŒ\n]õ¼M1~»£ç}¿/\\ñõ¹òàË|·žeKr*‹4ïàéÆºÌ«7Ÿ›ÐÃSo\ZÌ*g´nmˆ 	æéæÎ¸ðèæåÑ¡Ë9k6|.=<Þï8\r:þ³ÏõüÝ¾koG.ÌqÒËíŽ‰¥®AÕ*bœê¯X©iæÂh©&æZe[òµì¾}qthÍË*æœ¼.gÓ¦»™Ñ[\nó’i-9x»gSÇåö¼Ž˜¯GÇí½ºäèó}F5:Ù54\rBhšj\r(ƒFHÀ@!ªƒj¥U4\rÄÐ\Z¶‰pÄ%I¤Ž\\@’ÑMM“i$RJ©C“Ð÷8}N?;è<Ëçù~Ž+ÙÏè{>_Ñç¯K‡»«ž¼]=|+Èô6vgdfôéÀ£ÝÛÈôyîùºHñ°÷xºg€©Ô¾ŽmÎªzó¹½hæÇÑ%ò×¨jÿÄ\0.\0\0\0\0\0 !102@AP\"`3Bp#$CÿÚ\0\0\0d‡ÿ\0)cü¥’ü¥Œò–H—ü¥’%ÿ\0)d‰ÊXÉÊXÉÊXÉÊY\"_ò–H—ü¥Œ—ü¥Œ—ü¥Œ—Õ¿çì—ü©’ÿ\0•2_ò¦KþTÉÊ™/ùS%ÿ\0*d¿åL—ü©’ÿ\0•2Cÿ\0”²Cÿ\0”²Cÿ\0”²Cÿ\0”²CûÇ¡Ù[?ÉY!ó÷ŠÍ™·q)‘ž’2Cû¼Û$äŽâRÀêmÞ/Øà\\w$»¯‘±d‡öù29Ž¢J)ËpØë`î%TLSÀª¡Š{©ï#»É‘ºþ.Æ?¶l–Ã™:=Ù;°”‡4J¤™òÞoÝ·s2)`U0J¸«¨*ÑB©~T…S\'z²þ.Éí\\ŽâµC¹åÈ‡/™Oi1¿œ,øË#¹‚(iGsFw³ò3ò²CòmNl‹vÉŸâld¾É²rÁ*¹Û¼­<¸²DÙ)eä‰\"#‰+l-’Cmó°–ˆŠQÂ‘±•üQŒ—Ø1ÈMœÜåïV¢C›c\"r)m9oh½˜ˆ£ƒ6|¡ÈO1\',‰íX²ŽNÜ!O:‘?$E!d‰}no9`©,f)aª¤å¾p2vllÍ²fÐÙ9ldC˜ÞOœ¹HO$1n$Iˆ¶ˆU#QÙñH—×½•Z„ê’–LíÝ‚NÈÎG|l&dîÙód|dBåO$åÛ¸¹Éó)Œ\\µ+G8ŒðBY²þÆKê¸2I•êb[M™2fÈÎ„`C¾,ÅuËÝ¥!!GnÑrÚÝJÝËÙ!9D§PïþÆKê›;Š“Ä*Õîyý|ÓÝÑml[E!ÉøDPÿ\0QÌFçÌYÎÃüÇcòlªž†2D¾©Ú|J}®½Qí­vÅ‰YèC3ƒºÈBæOË\"%d²Ò\"Ç!›÷\"M\'Ü™D_Â˜É}\\‰¼\'—S“âëBÐî®†ól‹ŽáÞ<üä‰&w{©\råúDÈ½ÛÜcžrÏœ”ª`SB’3ü!Œ—ÕÈêg…)<Êß\nÌWøKFØÖØŒŠÎÑ¿v€åƒ\'pžÙÉÝƒlÊGp¥¼fSÃ#ü&D¾§&v”¶ê[jNÊËS{&;|YÝhvL|Ú\"DùLÈ˜ÐÅÏ$Fð\'–š%všŠU7TFyðf2_LÌŽ[J¡WªQRê¤ÉÕÌ]•¾~|\Z9²áŠÈc¼DÉßá39¾pAïWˆólî™Üä=ŽáHƒx¤ÙJ_ÁäKéQ&M•«¨ª•å%“&t?³¾n­›äZ¼¸ÑfÙ Hô©O\"$!ì;ÆD$ŠBþÉ}5GµZ‹§ÜüÎÉWm‹1iøDöVZ¢9qø›3¢,ŽJ\r\"M“þ\nÉ}+*¿×©¯²CÖ†++«D{\rí­\râÙ²;p¤òÜ]ãh²?ÁY/¤Èø®ñ\ZÒË~ÇàwZ\"?$|]ÈÉÎˆ“™¿âî*á>ëÄO\ZˆƒÊþÉ}†ðICýf÷~?ÖÄÆý‹fLˆB·$a‚Uv“Ë°Sx(TÌWðFKè™’b–\nûÂ\\ø…]‹Cî®Ä;|Y	¾#$wÍÈ›Ó&t­‘ãø%ôrÊ%#¨\'Yá¿\"Ð†+±hz³¡Ùð#7ˆö‰<éVE	ïMåd¾…l¨UükÀ´çÄ®üªï›­(ƒß¥–Ëø%ô-*ÝCý¼kKð¯\ný‚lÁ,%¥]#¤æ<dŸ~É\"Y*Ëzœûä^,¶,‡«6Å˜­‘Y3£ÞKàLþ•gúÖxrÝû¥u|0`ÁÚ`Å’04`ÁÛ©I\rø›t­æc¾vr*L©X©/z¬¢(£´í0v‡ã?àENÖ`ÀÖœ04bÏJgO)æ§ø$?|ÆIDI6›÷Ø°Å´À‘ƒ´ÁÚ8àHí;I@’\Z$‰[(]¬”1f­òô¢ƒ’t%˜ÿ\0c¿iQT¬·÷JF$(VäP0bØ0`í0Ih”IDhjË\"\Z\Z¤AáôrÈ¿2C÷óeZ­­ª`~UáÁ*ÈÀ„Æc$V¼8³C‰‚H‘ÙrdïÙ˜1£\":Z’‹ÊþÆ?|Ê‹jð\'”Û±Æ•|;L	0Ä˜¢%Å‘x\Z$‰Dq0`ÀÐÑ­H¦ÿ\0nžY‡ðH~ù•	LT¬ô//‹$F&´QÛlY]løºäÁƒÁ8Œ–Ã01««.™(Ùß\"dYÑKºŸð2^ùìM¢¡W%Yw?*ºGiÚ4E\Z0HB#½Ø…h™ðDjÎílâM‚Ø”EQ#’CFlGAéþÆKß2¤IÇ$é²qiùU¢ˆÄÁƒ¶ÑVcNÑFÛˆWÀ‘‹%©iÅœG°p;Û‹<ÁØÑ-ÎÒQ1d.z\n?ÀXÉ{÷¹ZžI·¤²ä¼*øE!‰\rÛ´q;wÅ’0`IÛQ‹àZ¼0Jhá¶	@”IDÁ¹,‘cŠd bÈè_þ‹ø/,>Ù*ÑY—!DŠ;HÄÁƒ¢:Z0+$bØ0cÀ–œ\n\'iÚvŽ\'a(‘‰8“ˆøÀ‘(‰#<Y\Z·O,NŸ§ø/Œ• =Î¢mø‘$$`Ka¶.†dW^Ulº1eÄq;G N#¤‡\rØIñj/÷¤óà‘/ l™ÔH©\nDbF&+¡‘F¦Œ	1«\"¶hB‹¡0bØ\Z08“Š$Œ3´hvÆ[ˆãltrr§üŒ—¿c*H®¥\"CðAB0`ZßOÏ…+-(BZˆéhÀã³‰8“ˆí(¡ÃiDjý¿€±’÷ìq8•i&«E&õÄ!hÆ§àÅÒ¬´¡hVZðJ$¢T‰„‰àK’Ì‰æý.r¸þ\0É}ã•ÕSyš»Ñ(WBöxð«w\ngq“\"dEà’\'qÁ;4Å†§YqÝO¿c%ôLêc·P÷Õû|ŽC™ùóòŸ”…R5ÈWÆ™¢¬IDhkkN;ã7ûSãø‰}¡K–Ð­M¼Bö-ã¨9™2\'dEO*†r-Ì©q$·ÉR[Ç,ì0(¢—À/£©E)-TÈè^Ñ\nìrDê¢uÍ“¼Y77\"…\"\"´HÈFlôLœJ»93µ¡Ý*]6Ñ ’•&†¾ý’úJ°îWIÁèE26VÇ³WÈæN¦Õ*’™É6F‘ŒQº²˜˜˜˜øWemŠ²î~’[‘MF—äu)CQ“%X}û%ô½OMù\nðí•ÑLˆ…íÛ%2sÞSf2vY!#Z2)žŠ•cÔuæmtÔâ£:q\"9aT®óO¨#QH¨°þõ’úYÇ+¬¢ ÞŠdl…¡YyòTä4vŠ(‰YYkÉ‘3\"ddE™*VŒJýq:ŽM\"0lT¿XÇ£éª³Eaúâþõ’ún¾—ë%½àCÛ1²RÈÑGJ¶R;ÑÞŽó¼î2dÉ‘11Hüê%n´II‘ƒ(ôÎGáPRˆÖ%K‡i2JÌ¡Pª¾õ’új‹+ªX«xs4«¯+$3¬ïÜe‰3´Áƒ´í;‡±“6†åZŠ%J­‰‰©6Pép(àdã¼8dý(¦‘:M	à¡.å%‡÷l—ÓõôT£%‹¢—^lêd·D´dosb2:±G÷ægægæ‘ù¤~j‡}Fç*„j™!VXs•šÞœrèPî(ÑŒØÐ¸×tðŽÎ¦‘@©ÏÝ²_OZ=ÐêivJÑæ“ØBÕ“¸î;Žã¼î3¯,Æ1¼œã›r#I‘‰NŠc¢‘Q$$B,ü­uÛ\"#¾žM$!ÙÝåTQ}ès÷¼*,:%O¼d¾£ú(âJÈ¥Åò&wÃ¨:Ã¬~f~V*¬SÈÈÉ“\"z™!’vír!Å+w2™EáU¨aÈ…3dg\'X±\"ŠxPÈ©`¥HŠ\"+1Þ%Nz™IÕ¥RDdÌ”äu(•9û¶Kê+EJ=F;íFù;ŽòU1ÊØ0bË\" Ø™›!\nì‘Q›±RcQ‰€òdé¹”Å‘Ž.Ž°¥÷C¦ÂíŒH­â@Wz\"W[J9xÁdƒÝþÔâKŸ»d‡ôòY]t\"‡jîC‘‘¢¦*lì;Æ~4v‚X²bbZsHfÅIÈPHÅ±è–Ù¼b(œÑÕ,Ã¢ˆÞrDˆ…f=æqî…EÛ.Eh²žñøûÆHQÕÑîE‹R²$É<´Œ\n$b(¨í0v§hâ5¡dG8ÅWëMÊ´£N1RµE¶Ú`ÁbÙº¼©÷*Tû˜ˆ‘²=(ÉÕC/·|‰G‰z~ñ’ÔUôõP}Íåq6EHHŠòdË2fÎÙÀ¦~d‰u,rœÇtb†`z‘#»²)ˆZ^‰o­\"Òï!ýC:¨4ªGr›ÌpE0!3&o‘±ÔCªÌw±Êc“HÒl…*qEZkŸeJ²x£6Ù‹àÁÚv˜º²»DBðüMág&	&R¦-‰}ã$?©©åÖC²L í2~D:ÑC¬Ç9$b™øNÌé%Z=²¤„BÓ‰Zt¿xR†ƒÓ³´Eeâê=)”‡œçîÙ!ýK:ê-’æ—«CxC2‘øØûb:¢›\'.ã§²âFR8uø§,Þ\\iÃ%8vÏÍó¡#\Z…äêCz{ZB>?vÉêº˜æáÛ(ò¸ˆWQsn¬ãŒ¤Jc‹f-ƒ¦†íá<³°ÁU~¸)-¢E	‡`‘ÚcFÖì„®¼n)˜´ŒÙ}ã$?ªg[K\r­ó„å‘A±E+=‰K%.cÛZØÈA”×j»\ZÙ@KDFÓCFy#¡xÝ–zßzÉêëÓN5ãøÚnBŠŒ3y˜ ˆÊGsgh¢qªB ¯&fÎ#ˆâ`ÇÞ&|ªÍYYþõ’ÕËŽ¶RucÏ0ˆ†`QÔ-X³1ºD$$a2&d—•YyUþõ’Õ³ú•=ÑGu‹¡-x1f;EB²vvR9´‡áZW‰{¦dLVªòþñ’%õ]>úSƒNŒ°ñ°„cN4ÉÞ\"\"!#\ZÉ¯\"òÔ´ddLLrÙýë$Kë\ZÉÔtðq<:^œ±ácDlõÏÈ¼µýQfE#¸oï™\"_[WÓ(àLæØ0`WÎ–H‰6Dmu¬ü+Êâ¥5Fá†R~ÉúÜT6ùƒ1àÆ‰”!]36lîB³eiõ/`½v¬¿o¿c%õÕc5†„cÇ!stî†U©ÚTê*”ëÖ)Wªd©PŠrqŽ=Âõ«U[}û$Këú¨âHˆ¬µ»Hò&&dÉ&8dt¨¡ÀËDcÜã/r„=Óþ\0É}QÄ“\"\"O\n¥mãÔ¬˜¦wÂwb‰N:·Wª¿o¾c%õòâ¢Ä—‘Ã‹*îœÚB±dZ\"„6&6gÂ¼Ñ«-¾ý’û¦;¡JÒÊ‘2Ðêm‘D°`Z\"´;dOB—™\nÒÝ>~õŒ—ØVŽcŒ5§åYègiØŽÑ+!_6ŒDŒ$3Z£d!iZÐ¯Qn×ß2_`ÊñÃ^f1YYÊÈGxª\n¡ÞfØ»Ñ!È…y,¦5¼c%ö5¡ÜžÄt­mèZs£,î;Å3¸r;Ñ›«/2†5’KxÉ}•x`È˜¼.éZLÉ‘=Nù;‡P•aWË„ÙeævBÑ=¤>Ý²_eR=Êk\rÂÝ•¦ô!iwcÉ7#¶L¥DŒD/b…¢¢Ì!.è½œ—Ý²_gÔCk+fìÉ‘ŠÒcvVJÙ ÈÓ*E%:J£î–$ÎÂ4÷ŒvHÅ—±VWôW{¬å?ºd¾Îk*¢Ä³xŠÏNI;¦wÜQÈ¢pw#ò*w-Ì\n&HÇÛ!hëVsœra˜û†Kí:­¦!hf7³†÷ÈÙÙSõ:I¡Í ään`í;ÓŒLy´!Yh¯ê]³<÷Ÿ‘gºBœˆ3²dv¯ì/´ê)÷,bÊêØ³&9gä›p{Jå:]§iÚbÉDš½¢º‡Å9~>±ñ»ENaVQq©N¡‰D–pí9Ê:Ù¡uIŠT¤v5õŒ—ÚÕ¢5‡t-Déä•\"4…M\"1#,ï›¤-ØçBÓ×þ])wÒŽ¡Äà¤Nž	æOÔ¶J¬0`”J´Ì´*ÒE.¥¢ŸV)R˜é¿ªd¾Û¨…µ²HJÈLÈ™‘ŒÍÒ¸Bº¿õWôú™ŒÒR¤öø¨¶¨¶O¶tê¸”ê©)ÒLqgã+P\Z²x!]¢‡VFp¨¥M¯¨d¾ÚK*¬{d+-³CVÉÜdî2dÈ„„„/p¬´ÿ\0VÝtíOÙR“Œ¢öeMœ»;òSd$Ì¦:qc£\"·KÜT£(Éà£]¢‡S“™(5ôÌ—ÛÖ‡r{;&-R0cFæ-Ù=HBÓýCxÑÙÓ—u/ö§,¦U[u»“Ê)L¥\".É±L•:s]WC‚qíxµ:¸:~ Œ“R¦5¤d‡öýE;äÎ¦`ÁÚ`í1¥!/r…evöê·Œ9é*lýtåº{IlŽ¦–³¥=©LNèÎN«§L©MÀv¥S§¬FYS%M¯£d¾á¬•éâé™•YY{ü\nÙÑ7µL}TeÛ\'Í~ãGûTŽc%ûEáÒ™	ëzf»Šô»[BØ£SM1;Jšd¢×Ð²Cû‰,ªÔÜ]Ÿ•{Gæ“*ðý\'•IþÍ¼Jk\r®ïŽ¢±FE)	ÙZK*KQÊ¯É2z.h§Ua;=ÉS1ïÙ!ýÌ£’µ\'d\'â^Á™öMŒ­éåø£.ÙÇ¦£]²#Åu”ÈóM”ä!^¬sn¢Ÿtdš:_óD\\,Š¶ò`”2J-{æHu(åV£Ù¡{×ì+zgþO„Q—tiqWe\"<H«2‹ È=–‰­ÙÕSÄºoó\",RByKaLÎL¦8³í’ÝÏ·ádÉŸu¯LûIx©ê^˜ñJ]³¥œÕžÒ 2ºMáÁ”™†VŠœ:ó«ÆFOQÚâdY71:CŽ=Ë$KîÁW¬§§]RDªÎB“#!3>Û#¶EìÙT«Êô@™ÑÕÉ]îÈðÊ«0‘bS¾mñ69ýJËê\"#²È¥““”bJÛ²D¾Þ­hÓ]OU9½*B„ÅæZ3lÙ{6Ì•JçúCŠ…9öK¿¾,ˆíQnRâƒÍÐø¨H¡þtdX¹Éº2mg†JXö¬‘/¶¯USy6=}Ø!TO\"Ò¼y2dnËÙ¶1“+‘tÓ%ÌGn¡oóHD^¼˜/LÊžšæVÁ$-Œ‰™ÏØNÙ$“=£$KíjIB9ü“ê%™ic%jsh…L™Ñ“:òdr2fÊËØ±ÙŒ­ÄðÉsFX”¿b#µu³æ7ˆˆ‹Ã‹ÉçéŸ5ý46¨™Ýƒ¸B\"ðrª&Œ¼ÆD]£lvqCƒöL‘/´“Â­WòÊsíLvZ]àûZ{dÈ³l™¾LÆu/bÆ1ŒeN!êˆÉóLé¥˜Þ¯íOƒ\'r)ËtUô¾z‚Ÿ1{~<ˆÁ!î¤˜¶)Â>ƒíÉøÏÂÇ¼Ì‘/³””WQÔ~F¶SynËK¹v£,¡Õ\nëÚ;±Œ™Äãº*sŒ»eÊ´ø–Ó‹ÙÈ”Œ”ªoJy+pu%1K:ÉVª$ÆE³$$Œ‘Ü{4ò`Å·Ðà‰R\ZÇŒ—ÙVê#­YÔ\"JC³ô;%fSx’Ñ“¸ï;ŒèW^åcÑ2~ºleAã¦«¼¬Ê‹÷‡\r“¦‘Uþˆêy§êqR!˜ÊÑ2¡‘±<–H•î×\Z™JÙº1iáŸxXÉ}„¤¢Uê›É[Æ4cCÒÏš/+CWZW·c³·Ë+-éZ§1Ú£>øŒ“ýà\"ªºwûIþ±:Ræ“MÍ\"\"ÞÈçË>HvœraÄŒˆ³àí7fZLi£’Tüd¾¾­hÓUjÊm±hcÝ£v2Œ±%à^íŽÏEtQµNi87*‘—×•8véãû|#¨åò›E&Ù‚´YÚb2\",\\3c£\'qy³;0&a3\rŠÖ51’úêµÔIË¹˜ÖìÆ%“FJÔ¥•âZ¶cÑUm‰|Ošv—+ˆÍÁË÷‡ûÂÕnløGS”¢¤F$]D.~E³‹>Y+|‘;¶î;¬™TDêöªUÈö3dfÓ‡q(µªD¾²O\n·Q‘½³ÖÆA]Œ•¨¼Ix0cÄ½‹Ó1ìàö©ÌDK•Ã(OµÔ§ÛR©ÅºW³á7„Å’†¸ˆÛâ/»$ðFdÊé™3´£ÜçNTjä‹È×Œ—Õ9$Vê{IVœÌèJÌnÊìVbYi]’DÈ-æŠRÌVŒð¯jô1•QE•mrïMþH%“¿KÃ´¸™l¢RÝKaºc!­§:må=0MáS{J\nD¨´R“G+ÆÉ}D§•ëìç&7dJËÂ÷˜––L„	ÇjO\rF<kÝ2² ÷›ÊVLNé´×þdí#¤ŸðõS 7¹ò™1Ùá­¥´™O‹\"Dj`ü‹º*:ò2_OR¼\"U¨å+%¼¸[ŒHZ•f-Þ–TE~®™V=“¦öV^EáÏ±ª•º£‘Î–o¾d†Hé8³+z’ÞŽíY‹{+¡ŒœrpR{fÑ\ZÊš;Håž…¡kd¾š½}³›1#ý˜Œ\nìÎìZ¤Ek‘F§aÖÑÚ“´­ÑŸcŸ\rR¢ Æ|Ær5µTÆ2GKÅúži”VEÀø—VfåxïFX Ó²;‰Ë-LÍÕ×‰’úFÒ]GQel8ÐÉr-,ùÔÅéÂiZ—}7	ÄBÕ~Ê„–F°ã¹ñ\"“(ó/@ÉsÒðïÔz£±ÓÇo‚OdÌïeeÃµHåÍvJ”÷æÒ“Â{ˆˆ´/%ôMáO¨EJ²›²ã™>>·\\Ysiq!†C[(ŸGõ\Z]µ\"!{çu¡“äœHìÔ‰ó	¦Küv~®›EmäPÚó;†÷€®¯ëE2[§”Tá\"GÌÉ}\rJÑ^³•×-‹…È‰$@jÜY“âB!Ãbvg-x:Eÿ\0½‘ÖÒï¥ó\nëÞ­%l_´O”­1ØÏþr·ûtÜY•=\\Ž.ùœEÌ\no(Zj,ª”ö§ÜˆÌœ„¶í0CÀµ²_AZ¸Û¢|‹—o™\Z>çÄ¹\\Ç‹²>é~WUOñÖW^ýhŸíeƒ´ù\\DÏé;¿OÃ\'&š}ÑŸ1ÝÆG“åñ(ˆ¦ö¾Ã´‘¢¿gÇžèÈî2!Y‘zjVÆ¦Kß7…ÔWÍ–ã[üDc#Ë#Ãõ1-ÅhÚ|>QNí‹qx§­´Q£Ý¡}[1ZhÁ3â$ÉŒ«§ôÉŠ9i%<Oý©zcwÄ‘óI™²¶ÖùbÈÏ‘Y\nëEz¸7ž¦H~ò­xÀ«ZS‘d!rÏŸˆ’·È­òO‰s\Z!âè}\Z%èÕ§øê˜²÷«M[«É[7ˆÉZªšŒ€ý5SÊ:LnøqÛpb{‰ï¡‘%Â¶H²\ZêOÎœ6ÒÉÝ=Ž£¨ÂÎë™Ž\">YÛý¥Âáòp1ˆŸæºÜ^.“Ð´ÿ\0R£˜®=ÚºÕS›«²Vù§j~ª^™á@Š#Å¤IlÊm!`É2WÓ`DlÞR$òé­lù÷5êd”.gÄwÏ„1pÆDb·Äˆ’â~ªc3hÅý>YKL£ÜºŠŠ ýæ52|ŒZ5µ¨o*°ì”ùeTv‹õ@¯&‰TîJ;/U/M˜÷RB!ŒgLŠí™+Ñ\r,›ß—jd‡îkO	ŒˆÈaÈóv\"GÂäˆí\"â§®44Ae¯¿ôùêµuÔ?%5£^ú¯(gÈ¬ÆIZ›*~ô¥Ë)sJ[¡¥\"¤pRÉ:m:7ù{ŽOšc#uf4U{ÆèŽŒ•$rSŽÂÔÉÜ>*K2d¸ù\"ðIŸæB>]—2öwC#Ë%ê …âgHñZ:úÊ?Ž¦¥í–¦T{«|ê”H¼åµU¼Š<ÇÒ­»U½‡SxÓ3gËãŸ0{¾`Ä÷›Ïü¶B†ÉË%5–†-LýÅgˆ±ZH‹>Yý„5et;>odI~ÑáÙxÙIÿ\0éIæ+Ujj¤\'NvÁKÄüÌªžUŸ:¤1å:sÞ·:}ßÂ–ÿ\0êå‡\'ÜSázR#æF>s¼pÈó|-Ô®¬¬Ê³#»§Ôr–¦H—¸¯/ÚGÀøŽÃ\Z#³‘ò-–\"X»)ŒšÈxØÈúºZ™Š×ÕÐü‘Ðì®½º(ÐÂê?Ëi#hšßq‘ÎcMÔ¡U`éùøÁÄ]<¦SÆÖù³ãâ\\¾bíMŒFH…Íâbõ\'…9eôÈv‹¦2^ÝñQþÿ\0.Ìg\"$‡ÄY+.l´;²Ÿ•™4-Là=4»e¶¾·§»÷qNN…\\uä³+³ˆKµÇ¨ï|§ÓsðOh¹È{x\"ôË‰a’äD„OÒŒ™2&\'±\'µy‘ÝÓ]«\"²ÔÉöõ^\"ùZ^Î,‘ð¹b³²Òùùd8cC\"Òì®ìŠ+1éæ/WÓÞS„ª:TU4KŽ£ü·v‹ÐÉpRîO©O=?+‚£Û±8»Q¨s¡½‘R;ÏvÈÈŽÎÍ¬öC$\"\"V¦ÙË¡\nùÔÉöýC#Ñ.ß”‡£ãSc7#Å™þþF#£¶;\'áêºnãuC§”ÈAAZ\\u?åÔ´;G\'T’(*ð¤Æ|R{Áå]‰’æªÝ”ÞÍ+.J‚¶â!‘RYp[Áaž¦2^Þ»ýžº›:o)ß&ÖCÑ›«³ýÐüHŽâ¤ÖUâê:hÔ\'	S—¶Œe7C¥À´KŽ«üº$\'dï›#¨íí .\nÞ•dˆ¢Ÿ\nÈ‘#uc³Âh„»Lï•ªz–œ•drQˆ®‡-l‘/o[ÖEÝ^kh>Ù!Ÿ[Ð¹³$/Z¾Yhå¢b!³Žð_¬×Š­(ÔUúiÒ¶u-nÙ3j,¦S¥-2:µÿ\0®†pÆŒ´w¶Åg˜tÜ¬Ú¨åo„Fx)¼«1™K*e6ŒFJ(Dm?RÒÙQåÀ¦°¬†ÄG,dý³+z¬ž–UŽ)f6|³»Ð½Vc2ÔÐ´=HvGLóJ¢)Kk\'áê:E\"pœ‡ä¥ÓÔ¨Qéa:õÿ\0¦†MmÁ‹¬•¿\'ãévržJMÉd”Z·ÆNâL	åcglo4HDv lDd½Gq“6­,\"—*íœ‘‰Æ¦H—·¯êÃÓ5•J]³>Xµ=[ÚC*\"›Ìt»s¡ÙÌ\Z#úÉÉøgÍUèQ:5i™2d^š]-Y”ºH@K®Êì”DÜDîÅœÔRì väQÁR{¹7¡‰à£,Æ,cV™P\\CŠkilAŒ|÷hdÞZ)!Y³—‹[/oÔ/ØC–UŽtt«»rpS»µEµ©;q©ý‰\"›³8ðòTéiL©Ð2]=h˜kJŒ™š´ˆt:áãl“:ß^¹DàLcä©vÐ_ªµE“Êì£<ÞUêãâ%$M†\"KEYlSY\"¯ÉGÂÉ{~©xª,ª[Ó.Æ…úÎ7Lg6zú7Š¤ˆìÕ“ò8Å§¢ÏíhÚP#ÓÑBŠ^VÆÉ3ªçÀÕß;ügL¿^Ñ\"¤°ÛoK\"P–îõ._)2B%Á›üT–dŠ1â¶^2~ß¨YŽ„ô±þ³^ˆzníUÞR9²ºÕÓ–Ò îÆ„Åîò67~­xÑRqe	`Ll©»yÕÃƒÞ½BløBx–r¾*±h«-™’+b#°ì¼—·®ñ¥iª¶¤óLzvš)¾Ùwÿ\0k?\\}$„Fìbzqí2dloGV¿W§:Óh«Rr)³YQö·,Ûàv‘2/bee’Ä–0ÌX´V–è¢¬¬¬·²\'-l—·êÞßbÓ\"›ýõ»¯R×5’3lBáBÕiz2/C8ŒÛ\\_&lõu=Æ´¦•W[ºƒB”Qù\n‹¸’ÅÝÚ#Í=È¬–\n«hŒŽÒ“´÷’½G„ÞðE5¶•iÈŠÖÉ{~§v¹Ñó¥í-Lc´=KK³D¢G,¦G‘Ùj‰ÓïJÌB»…§&m±ƒ1mŒ™2gCº½uúÏÕ¥­J+*°«„6œûI<ÝÝ‹šLO*$Êl83·Çû+Ö•¨DBÕ“qŽ5²^Ù•9—:$Eí¢¡N¦;Råhz\Z ÔjT’îLMcÀŽ‹üZÙ!1_\Z2dÉ“&L™2dÏ’·}o[ÑÙ’iÆ¯N“0‘)`›LwvùÊ|A‘&T9>DTÙFï‰¼Ê;ºkR1™F;c[%í¦ÿ\0VIÒ¹ÐÊzØíKMGƒr$|_Óßëf1C´_½©ÇP¿wãqMMbt%5%(È•ž¦@ƒ)ñP¨öÉ»ª½Õ‘YìŠðDQ’öÕ½,cÙøX¶’–1”½­¢âŒ?·ô÷¡ÙCVONö³ã«õéÎ‰[Ù,wQôE³ò2m;;»|H1e&L©d÷Cò+Ëx,”ãˆÙiD“®ró§+S$?kÔ1ÚDIm¡i˜¸³³ÆGÓw©ñ¼g°„/ô÷û«»­2Bb×ƒÎ|u|éjÌÈíšd¹éý\nÏOÍ˜¹‰Màl¨>\"\"£Â²Iâ9ît#lÃdmÜ9Ž¡ÞÝ£­’µªó\'v-×ëDˆ=NÏÕñáeTS”\"·²ðt/ÿ\0E©C…âÆŒyÖ-m^\\PJGMÄIGf+;;»@¦ðòU²å9Î‘+Ì¥;,ï’,Îä”»IK6BB[jd‡Ï³|K—v-œ‘¡;²;KKþþ9!7Nj2qÞ“ü±Ðî´´11?rÎ³‹­R´§úHéyBc¼„1]‘‰<­ð‡Ä¥h¬•%Ú¹tÖÈ»«NxlHHJÎZÙ!ûJ³»\"M	åYè‘½˜®È‘ø]êqžlµô¿å•Ù1?pÎ©lùðHÜªê(HéýQ1fd—\\ŒdD!Ÿ¨ð²A•RY)ÄK	óÙlT©l	\nÒ—’%í+½µ­ÏKÕ™µÝ™O×ä‘-œ\'ßeu£¥ÿ\0$nüLjÉ‹Üuióàf\nªq$Rõ£#Ÿ›1B+H‚É‚¤ŒeÒ‰.>U¸*TÈ–D„„ŽçÂÉöN‡£=¯•éftHƒý´²—¯ÈÉ\"”ªfXNËOKþHùÚ²÷–Õvž¶JÕ#êƒ³²1o‹»EŠË’£Ì ‰±¢[)²6rÁ9¶E	Hàb’%í:‘]èd^I¥³hËˆ¥›1í%wiyðäÍäIåO±‹…¡7ù#¡éZ˜Ä\'íêqÕ,OÀùØšI¾>iðÞ#&wr±f;Aè~•¼¾&`¦‡!²$ªMŠ\"B²ð²D½§Sá’!\"K6{ž–­2/k;H£àc¾lÉ¢”£Nyî:zT}ƒ“öÓãªõx?¨ñÝ.4c$bÏS%hŠóôÓ[±‘C‘›JvŠ0gKð2D½§Q‘wzZ\"É,Ú[‘–\ZOLÊ<y´‰ìQ•j‰ê¡ë‰kw^Ö\\u|¿‰òÉsÓ½—Â´…ÅÛ>…jœEàÊfÄ¥±‘±ˆ„¬ÞºpîÖÆKÚuSÿ\0ÕøsdÉG\"dã’í9QõÌ‘KÓæeDQïr’„Põ¯‰{Ib™hV©ÏOÌJ¼÷ÎŒˆ°!YmËr3‘BÞºqrtà¢µ1’örâ¿ª<=|’‰–ˆÈL’Í§%ÏÅæÊ>\nÐ­PkuÙÚ¹­Cü‘ñ!jv~ÙbÙø»…j…/R&†„¬‡¡‰YY­“9²¬Þ´›t  ¥=ld½_MCîp+)]íg’‹D$!¬Œ”DÈzU™2Ÿ¢Ù¶L™²ÔÊˆ£(v³a‘µ\\}£ºöLêÇàf6ªqb|Kk1W|«!®÷î2dB‰	xbœŠp5)øÉû:ü\r’8³Bx·&	G&&5‘ìIžã´ÈúGlÆGe­•BqŒ…Ã¨ú£í]×²êIkø$—lm>\n|D¨¬Ä|+;!Vê=VDb++çKd!’8ŠrÏ…’%ìúK9»G\Z7‰\'gú‰Úp#,	’Y$°\'‰!Œ½#³CFâb»²¼ÈË²mÎJ#½R³öm{^¡mUbWw|ì\"2\\Kš\"|`f76³ár…d2¿¨BFl­‘»+wlŒ<Œ‘/gUf´^lÆ²zNLX!PÊd–¼Úq#,’ÉR.%7ú»K•©£»\">#y’m:}îœ}W¡êBúš¼WõL¸D°ÚáÚeº>$dx+Äˆ¬‡Å_RB²ŽBÜÁ“\rŠ$V–c:ØÉû:¯ÎGhË:0)qqÈÑ›N$%ƒ$·PÙ»>nîôË“â7‘PéMÔ–îÔ=H^ÕûJ¾šþ½,“Ù39’¼Ê^¤\"ªÚ(b–äæÑŠ¼ÙFFò$lØ’V€¡¶°F\réäF’Ž¶H—³ê\'—Ã’£<hq2ÑÞ™¼HÉ2HO(œÏ+ýìù¿Æ¹r|Fò*#§Ç}OWÍ©z—Eïjzz]•Ù2=Æù³$|®.³ç6dE¦§6B2r+`îFNâ,£3íGlMŽä:šØÉ{)¼G»5†††„ÜDó£cl¢ÜhV”2FN.W|ü]ë˜¹øÙ\"U\'Û…z¨‹Û¿e>:¯V–LvW6cK…iÍ²Hˆ®†Uõ±w#¼ÆEx‘«ƒòŽ¡ÞÄöð2^Ë¨{CüÏFŒ`MB–‡f1=‰Ç\"d^ÃçÆù\\üG‹H|q<ÅÅqj<Ä^ÝØÈëöW‘>+gvH¤ìŠ¨ÆÂFÄˆˆVCâ£ý’È–ŠhrC¨9¶n$%l	iD¼—±eMßž¬d”\'2R¼‘¼EXSLøk´âSùò|çhqf1í>ìÆ\"µTEî0?`Î¶ëDøÛ+³´ÑOÔ„Mlí±d#æÏ‰GöFFÌ›±DHâÉÑb¨—’°¨ñ²Þ/+[‰ÚFx2šr4`…Aovq!úµ=jÙ!Å˜Éú¢çÙŠÝ?©Ü±ëÏj¿Ã³áðÌ‹C8qâ\'Å]šäÈ¹‰2ç6À‘ƒdn(	_&L³¸îÎáHîð2CöÞÅE’›Å¾u44oªY¬’ƒ9p#%%i‘cçÄø†\Zq4Ø†;TõSRì6éýB÷OÀµ³¬âÏ‹3á‹¹Å[âV‘MíVÆ6>c¦D¹À¢`ÙlQ|0`À—…’°ê9C&·‹ÏƒÀÐ»¢FiÚPÈòŽO6™MŸ:”2/ö$DCª”Wê½VéÉïƒ:úµú»1h…gÁ$R{«O†!‹Ô…tK‘Èý˜ (‹F{H~Â¿\"d‘éyÕ›»`ÁÜâ)&`q\Z!P‘_>\'Ä}K†Œn¬íPéûG´­Ñ—Êý÷R¿Ylî‡f.ÜDWù¶’«Ý¾P¬†goœ\n&åHígãcŽ<ý…P™ð÷=\"ð´nŽL;©´&‰$É@ŒÜLîù^&/R³³¦Š.)ËèþžWîs¦·¦¯¯C³Ú<\nß,—0áZ²1i¾m-„ÌÇp¤E­’0ÍÅ“ê›dhCpD«\"U[oÀÉçÏWÔì¸\Z8ñ¸œYÇ&\ZŒ¦J)8<‹Sºí.ì‰q¤ÚifßÓÖÿ\0C¸ê–*z»ˆðÅ¢E6+Nïˆ[æÌŸ9fæâÈ›E:¸)ÉM8£±ˆíCQjD:Äë‘¿$KÏ^§iÉ#;«´p//ÚvÚHBÑò;¡ñóO‹»¾8’ïp\\# ãèñàgZ¿{­#Ã‰Ô„K‡Èˆh‘‘­ÄbØJrq!Tï?(êŽ æJ æÄ´cÀÉçË7…\'Ý2DÑ§t&/;?Ú<jCÇê§ÅÝÙ2‚œ¢¸GAèú\\W\\¬Ý¾ŒX#Åï4C…jœÙm$ôI\nØ;L]	Ãd¤w™lí;D­6Sé›!ÓÁ-l‘/7U-©ÙŒ’Ã‹Î–„üì—ª<Yéb³æž‡¢e°¹è–)}6Œhë`ÌY˜¾Äx´Mª^DlÎÈòµ+àí;L¤iI‹§;)¡ÔŒJ}FýþH—›ªæ•ØÖMâã,é{œ	ùYS˜zlô»3ý©èz&Pí8\"tëþ£/Ôoz’%§lFÌZò­Wƒç‘l;1ìS{êZ\n.DhÁ¤GU©*ƒl¦žs…­’%æê9ƒÝ]’CÙÆyÕÛäldŠ~‹;;»3ý¡ÅÞ‰”;mIfPÙ}SCE^$±=Í‘³™‰S‹|+12dï©3$Rb§ôCª:Ã¨:§sJTœŽÕßŒŸš¿2[Åí¡¬`Œµ5¶èÏ…¤4L¥è»ìÄ3ý¡ÅÕ¦Qxkž‘fªúÚËn¡bzòû…f!hv‰>-™Z¾4dü˜?8ê±ÊLýŒ1DŒJ4Öœg<øY\"^jÛ¶Œjk#¦ÏÚ$gN&pfÎïEDQôYÙÝˆgûÆìvV™G»»|ÿ\0O_²úÚœu‹öÓþÍIJ6vZ¾eÃå]ìdÉ2Žò¾G!Ìr7f0%jprt:uuJ“Í³àd‰yY?Sñ8ÅÅ§¥¤Æ°)_Z|Pôévvd}Jò²¼ŠYo|ô1Å5õ²:øèÈÌ~ØÃVvBÔøŸ\"âÒC$Ê\nÙÇ3vv¢ZRrtzR*0S¨IçÆÆKË>âî9;\rÕ¾/(&a¡HÚÝ×™CÒ®ô1)ú¯!\nïˆo(/Ú‚Å5õY2dlëVbùC³?ßdÕ˜ìµÔ\"+d{º‡Í=“0v˜Z0po\"â8AJ¦	ÔÉøÉyk=‰xãÊ§O>\ZfPãC»\"—#³³³#ŽúÌ—M“&L™;‡1Ì­&Éú®ÇŒåf7bÖÉ«FÌÉ\"–ò+`Å÷Jq;ð~F9j…?/-W½òdÉ“\"y\Z\Z7‰\Z„XÞU#ó!U‰ù\"w&fùfFIêïC´ŠWoT¸§ŽîŠ9¨¾Ÿ6É›`ì0U[×Xšä7´.ü.ÉÙ“%±C›#\Zâ²v’×J[x/-Nlô`q0Õ²Ñ›2P%©5$à8ŽaØv˜‘ûÒ;Ùù	L¢ÿ\0uw¡Úe=s{S?§Çõ_K“7Á5\"u‘Ù[à™û8ÀZV¦=š¥¹WŠ„S†ÏŠšTrS¤(à^KÉ.%wáqr##fJ‚;j@…KàÁƒ04CjŠïC´Ê#º2+ÍíJ2(.ÚkëäŽ¦ÐáÞDxˆ¼“å\nÌ©Å<£<’ƒ;Y†(6F\ZI\n6Ï…’òO†?&dNÎgf´wÖÎ%5;KšwçT¹é!šˆ_Ql¨Žª8˜¬ÅŒ¬exÙ1_Tâ‹ð¢5pS’’ìÄ~(#É)’Ÿ…’Ž¬‡çÅ•Øà˜àÍÑ‘é—0âîîÏš|hW|,9t4ñôëÂÉ#«†SÑþß+ÆÉ‹ER™w;Œ‹FHUítú„~x‹©Dj©‡2U	LÏ…’‰¼)Oº£»Ô×¤v›™¢w)úu;|Óã]Gµ™SÚ+éqãc:…µU‰^D»±ŽGÊ½Rî²¶L™º‘ÜÈåº)Ä•BUG#>6H|øzŠ„eg§&ogP§éÔíþÑã]^z^ç$/¢Ç™Œ¨²«ÃDÌ.Øqãd¹W¨bèB¶n‘ƒ Û„#Uù˜ÉxkÔì‹y!ê³ÒüïCvÍª½#ÒíTx#£å›¹t‘iDV^÷=‹Yc‰|dd{{aÏ“æ\'ÁS•l»º²ƒdi$9¨Žy2gÌÉÁ\'…ÕUÌ©È6~åvÍÝ¦QôK$GÔ¸ÒÏõ¦²é/ÕØ;UŽÕãfch<<þË…ã©ÌEi‘ÝkHŒ#G’‰)Žgq“\"ò±’ðW­tC˜ûL™2dfæÃ0`Á4Pô«=‘W/ŽŸ˜ðCìäŠð%³CT«w)SãÇ1\nÕ\n2³B’9²!Ü(£hª•Û0v¦.¼Œ‘/QÄ£’T±(½“ö2dÍ›˜¦)™FÚÇ<‘’:wv;²E>Hê™G˜ðDWBú×jÑÊ¯[#æª]´g¿‰’†T4æ&a‡i‚Q_–ZkNy˜Éx+ð48­ó`ÀÑƒÓ°ìbƒX‘8åJé”˜îÉF-OÕG9l®¾µÚ[D	,Y·³‡FyBðÈùV¨|Å	´FGq“6Ü¡<©S„‰Ð’\ZÀõ¯/oN†²8²òdZþ2ŽádvdÉg¡’(èvøŠnT–ë„D_iZ9Uã†Hƒx«ê¥,KãÃ+FÕRã4&d‹ÁJ¨˜áicØ±’ðWwùÑÚŽÃßÄ™.{~ìP6Zý.îÉö#Î™H£Ê…¡Y}c´Ž¦–,³šÉä£,Ä~Lª¤÷ðFE*¤YŒ•hŽ-h~6HŸ‚«Ì‡ãÁÚaø3mÎÓ	k‘/T^ÃÐÉsã\rSçõÇOÊ²„dOê]Ý™]ãÚ¢DŠ2Ä¼eB6¨1sM÷,Ö™N£E:‚i’„dO¦%	+ãÄÉ×7ˆü¿c±„v£µZþXÝÙ>h¿Õéø—1Âº¶ýÍäéÅe­ÁŸ¢c*Kj¯$•¥Ãà§,ÆËS*µAÚ“Œ1¢2Á\nÄjÈ{ŽŒXúfm!t¯ÂÉ×[o“6Í²&HÀìÉ”¸ìÆ>bcõ‡d{ÙCZ–ŒýFÆÆÎNÒp*D«›ÚEád¹*ãÜçO\n/ò)Š«fpp~sóøXÉkê“>Ã&L™·)Ú§4ý:gÇ$HqÃ¼žÉlŠ^%àÉŸw‘±ÈÉƒh«¤6¨°.%Ì¸‹ÃŽëB»³å[Òj›%Ì&B^Ã&|,dõ×äzrdÉ‘³\'qÞÈ~D~T~T~SòŸ•Ÿü§ä?!ùùùùQ\nFLr[9¡éŠœSç‚›¾F3õ\"Sô‹‘xS3äÉ“>™Ñ2dr3lÒÉ\"p:šVŸ(K+[´½H¦³\'œLˆK^W—\'qù<,dµ2{É»dÉ“\'pæ:£¨Øå#ö0ÎÑ@ì;NÓ2cÓ°ì;Ã´ýª´F¢2¤U‹E4Ì‡2)hø^®H¢/\n²É“>Û&tcÅ$UV=²å|È¤ñ%Æ—ys’„veH¢SzÕØØæwÏÆÆKUWúÉŽÏ&YÜ9»\Z (Ù§iÚ`Áƒ_\'h¢bÍ#µƒ¤:GãÁº¶¡ª|@‘º¼¸‡q’ÀB‰1N>‡\rh©ª§j‡ÇÍ\'•­“æ>¨íÈ”T•Jn-î´äsC¨9=ñ1’ÕYîÙ¹¹ƒ°íFÂQøÎÃ°í7?cö7¶L™2a§hß‚K$¢4Rå[æÓâöåz\\ëjŒQÂ)b#uáB÷ØÕƒ\ZZ¼ŠÑ+C²\\g\"„®ô²E%ûY‘—kÂ’©2-C¨9_·%.šR#Ñ£ûZgö”ÏìéøXÉi“Âœ·fNó¸î;­m™;Îã¸äít»=rDˆz—½N\"SeXíFW~¯Ôe1d|¨B÷8ÕƒfME<¦°æ†EâQyZ™2ˆ†š;‰¬Šrˆ¥©GÜHà”‰T2Ä›;$F)tÒd(F\"Ø{ªÊQj¬“þåø™-5ÞÌlÍ°bÉ[\'qÜwÇq##;r(	k‘ü5H¿ÙYÞ§ˆŸJ,“#Í¡hñ««¡èLOÍƒ0cVò±Ù• uTí5»(ËmL™Eî)dicñ’¤ÎÉ!9[$›;$ÈtÒe>’$(ÒF vÄWËFT•N˜”$¼LôuO|ßä[œc¨9HÌØýØý„æSŒ˜£ãÀ‡vdV®÷ùv™‡„È=’ý’*¾1\"+S{«/&DÄÌû<{F;Éá•V=’{¦Sx’×2ŸªÙ;Žã&ÚL•Ÿ•Š©ùª!TB’6gaÚÑŒø™!ó~¯×¡,Œygfý†-‹¨‚WÎŒøXôÖ±O‹;KŸõq#³žÂ®ÎO	¶E™ˆ™Ò¼*Ù3ôîó‰ÕRÊáÍ¥,­S#ê‹×›dÉ“6É“\"‘\ZŒ…r5E4mâd‡£«[´#$c‘ìš¶ÆNäeVHJûëÉ“&L™Õ›V§”Qâß,ùŠ04Ie\'µ>Ñ™ÜL‹12dÉ“&L™¶L™Óµ¢¬ru4°É¢\rj‘ò·Jm5$ex³|™´*`…D*ž&H–Ž«Ô226fØF„ml&È‡Tü¬ü¬ü¬UYùOÊŽèèÉ‘1;4;dExaÑ¿Ë>ip†­-…Ü£7„˜˜ˆ¼‘NÊÙ2dî;Žã¸É“\"‘“&E#¸îŒý+01•©¦ªÁÂOrKeiù¦òJ&èÉ–eÌïgyÞwÆLéîÁÜ&)\n®<Ld´u>®L™·s;ÏÊ~FGºDc‹e«ÔlÏÙI¡T¢Ì\rY\nÍ‘4¤©ìô>h™³g2žbvå8î™NC\"Sz2gÅ“&LÂ¤)\nB™Ÿ¡whhê¨÷),9qÛ%¸ôH‘NVd¬•°`í0ÍÎæwÇq›dL\\xY\"Z:¯_ÄF`ÁŠž\\`Øæ:¬rcó©4*‚”]ò\'iÀÝÛýîÙóOŒî¸›!ŒÅfX%PÀ¥‘!glWí;NÃ´í;L3{äÈ™ÜwŠb¨wÇq“&L™÷­:Êvš)KgvK†|÷mÜ(÷?ÄÆÄ~	†Gá‘ý¼Ïí¦m1ôóC¦ÎÓß-x™\"Z:]Ýùc%1¿j¤Ñù$fÉ&N\"Úc´Ý¨îMmd8ŽÖd¢N$^²,€Œ0`P;E´ÁƒiÚv§iÚv#ñ£ñŒÄØÉÜ)ŠgyÞwÇqÜw2dÉ“:3lùÙ\"¼{Š´ðÏK‹Ê¼Çl”Ö\\R¢æS¥Nõ?Sl•L˜üÇäƒ(È—KK¤’%FHíf,üL‘+²³ýÌ73hó\'…9çÝ&ÏÈÅPüˆîX”S´‡j¿f²ŒŠò:bÊp‘JDmÚvŠ\"FhÁ;NÃñ£ñŒí‘ûfL™2dÉÜdÉ“&}†&5µh)à’)¼;ÍÝ\"”1jPËîP{“[/Èˆî§H«JCMÌÈÈ×dz‘WLÿ\0ÊCé©²]#M4ü,d¯.\'êWÍå.ÒSmûœ™2wÇqÞÎædÉ“$eƒòçr‘Ü…\".î$é›ÅÒ¨Q—rŠ²²öðàÁÚv¦=–0`Á¢§$ÑV%HŒ‹Ê%°ïBÆðxGzC¨Å2~ÒXÉ4™S§ŒŠ½<¢8˜L£òHvG¨?¸Xð±“¼ý/›«NXMçÛàí;NÁÄâØC‰¶ÚÓ#Q”ç›´J™(¸º»:©¥!3?Aƒ<É¶4²³»*Dš$ˆ%¹øÈô²‘’•8@ýø\"UOÈw2w«‚—TB´Y³*tñ‘S¥œIDí1f†w?$JýCÄ¢rÀÞ}®\r­“&X™”<§c7CwLD¸ðÅà§<Šî)ŽŽH~Hê‘¨)dLÎ¼ú,1âœ¶{ÙŒ’+@Ö-ÓQü„)S‰Ü~(²§O˜Õ¡8’R7¾æY“\"™\Z…>¥¢Jdj&JæmM’èâK¢\'ÓN$ Ñ+õ_ãFLÚRÂo/Ì´F-Š“#ñ‰\n’ØŒ(í;Ó´’%ÀjÉ™Úës·DQ\"–ëRdj1V#Y\n¢˜ž¼_1í°cÉ&=ßi%gj¸$‰[§ž!ùŠu2*„j!¥%S¦R*tŒ•#´Áƒ´ÁƒqLBÚ)õ$+&)&4=‰F*t~&2W«èËgfÉ<û(ÅÈ!Ex;„´4=†8’Ž¤EäqHÆÕ-é¯×>\'“ºHy¢=Qª$jÅŠF}æ1å“È•ÚQ’vš$SvRÁùùZ:zÒ²$˜èA’èàÉt—A2},âJ›;NÓ´í7B¨B©K©)ÕR6’«M£2ñ1“ÑÖCv—²Q)ÇÇ!n%®q´¸z“\"ö½C§YjÈ~TØªÉê¦ˆõ¬]dõØ§åÁƒ1lòçCcy\"´I&TV‘\"ž„Šo´…RB33|\"T)È—CO ‘>šq)ƒŒ\nD*4Rê4ÉA?-#Ý\Z‘Ä²7ì;[<ãàlÝŠ\"Ó“&U§ññTôOžmwì·äG¨¨…ÖÔ#×­¦G©¤Å8¿}–t¶I‰C\'dÉ$C“‘BÙŠuZ!P„Å#6É“&Ä©S‘.Ž›\'Ð2§I$:2Gkh§U¡WÛÂÆOC:Èâsö¦a%Œ‹VG#\r´¬îÝð`YG$à8ãTVEvrSÙk~|0bÛŠR#^¢#ÕT#Õ±uQQMŠ¤¹dÙ­•\"T&Æ3æ1làÎ„Be:™#1=2dî;Œ’„>ž“*tD©JÊñ1’Ž¶9„¹óBZònÄ¼0bØ¼¢N˜î–ZØÉ›Ä‡»Á(ÉÞÅ^H]TÈõBê *f}œåƒ¿xÈÎ¦H®¶™F‡q(4;cBe9`„ÈLLÉ›¶wäd>+JQpêªÂiÐ¤ülôu?â~U¹`BVz;ŽtdË770ÎÓ´À‘Úv§aÚ`q:š[ƒ6É2/öM“¸U$…ÔÌ][WV¦Îåå“ãºÅ1=“&²uÃ(ÃºTã„â™R€éHíhÆ…’œˆ²2¾t÷ƒ:ˆV\Z›#]øÙ\"Z:ÏðùiÇB³¾xòw;Žã¸îÐÖcRl»L7V‡ª^\'ô]ÌUê\"=dÈõ¨SIŠpzÛ$óv‡tFddfÒcµxw\'Ú„p£|(©A2pkBe)LÈå«S‘ê]U!­ülù¿[þ%4+¡ùNÃ´í;ØŽÄ~4~3°í¾NGJ,•#ãuÄy§ö04~ÈQR$zÙëbGª¤ÅRÉRBÒâ4e¡TÎá±±’§û.P´Î\nEJM;ÁžD\",WÀãjr*G¹uûdül‘-VôŸŽ1!àÉ“&æ0cÍƒÅ±³„GEb½^Òó¿¤ÁÚ8Ž$wI¨¨î¦G¬#ÔÁ‘«LrLVq%ÆF6NBd8Z¤Š´‰,^!+!hÁ(‹b,ê))Æ¥7x™\"Z*ï	í/ $.tçF=Ã‘IEZ%¿´ÁÚ‡M™øÎÆaŸ²#V¢S1u\'æ‹“³Bc*½¢íNdXµ4T¥’PÅá\"‹#©¢,L©AIø™\"ZBÅ_#–µ`ZÑxòI‰\nÙLê)`4~ï\Z0`Å±oØË;Ê’ÉÒ‘°qÒÑR£‹\"œÈ²,GËŒÛ3ãd‰hg\\±WZY\"±|Ù	]hVB¾m+‘œ˜Ú;N¢?¯Í\'¼ƒH¨ÿ\0h™²e”¦5Ü¥i’\'’¦J\r$&E‘vø{\nBvÈŸ’\'§úŠß]5ª>íãÊÉHdu×O¶\\Ó{À_j½„–ÒŽL+ÆX(L§3i)ÓÒÐâJ;vïÚSâ\"´Õ“3eãd‰éþ ¿MHÐì¸ðÅ1_><ŒÁ‰‹Lø©léH_sŸ\Z†Õj¨\'>çh„°*¥:¢’dà4;³‰\"´ÐÕ²gÈÉÓÖ¬Ñz¢+Éˆˆ¼		_&D/ZF2F6É›Ôá’æ„„þ×6Í³|éŠ#MmáÜ’Ýjîd*4R¬B¦Ld”qv=#y!ÄkÊÉÓÔïJ\\è„2NÐVæÊÈ^VÏQ=U8dÄBD_ÙäcÓ“7ÈˆRÉÙ‚SÀ¦™„Té÷ìièGfÝ¬Šh¦äR‘É(C‘fÍ1äc\'¦®ðŸ7¡O¾Š8ê1N_‘fE»ŠÅ“¶n–‡tï‘x™)XÑ	´JlÏ³~ýè^\nÌ†ŠÑÊ«…VŠurvÂDºx¦iª81SÞ1ÙS?;Q‘\ZL•2qÐˆÛÁÚ8¾6Hž™q[×dt4ñ<*óï©hŽ.žöBÖÅ£\"~;SŽ§f3´«L’µ6Aø—Ù¤tÑÂˆáµH•é˜#,ê‘ª)¡ö›‰ÜŽñÔ;ÎâœÄîâ¤NâÕâFø0`ÁÿÄ\0\'\0\0\0\0\0\0 @01P!A`Q\"ÿÚ\0?_Ê±ùT/åP¿•BþUùe¿Ý,¿–_Ë/å—òËùeü²þYzö«zI&ÒI$û¼ßúåµ$ñNëVÃ\'Þ­y\'Z}B×zRI$á>™kO¨[Q²w¥Zï/nÞãôëMúý\ZÒcôÑ­&ô`‚Ó´‚á^h½$ˆ ‚ hkÕ­£,jñŠôkAñF(fˆ³ Œ—¢Z,y¢ ‚#Ž ‚1^h1ä‘h\"Ñh¼pAh¯J´^(I$›EŸ¶x­9Å;;E—¢ZËšI$œ3i²³Vt‘í*WBä›I6]1¡Ód\"¦%\"¤c^…iµdSÊÈ ‚1›4Gú:¿Âšdí$>škè®˜~iÕd.X#N:„›HNÈN\n+“­ÓýúÔv¤w›I8À•äu\n£¹ŸcúG’šGõd®Ü‹ÿ\0.Fÿ\0òWç}jT­M¤l›È²nÍY!+4*J)³Ê*ýAVúÔv¤©Ú­ôBÇ¸òE T‘‚³\Zúoð›1ï­VŠY‹²Nã¸M­°*°O‚ºV˜CúÕb¼’:‰$C)ÑMEâï%t1{ë_ºò4$%uMäžœÉ>k?³ -Ewf?@¶+b\nþ— ZðxÆ8£–QWQ!¹ôfÎ.Åö!ÚxÙZô+apÍÝ§™•z±Njòwa<®ÏÐ-”ø ‹A®Î™#}lÒøRÍñ»µ¾·Þ‚R?êŽöÿ\0cB\\nÌ©o-¥Á(ï?÷Pº-ùF”}|¬ü·iÚv¤l­µwf}”Ñ>EM(“¸v|þš“Åä“èíÖ^†\nI¼’O=^Á2¢I“´tÙTJc§Qn\'œÃ¨\Z„!	ŠÑ#¦	c¦F´–êÄŽËv4\"—gNŠÞOq1‰Ý‹%÷dìé‘ÒG¬“»aŒGå˜°wX@é#•o÷	á:LvOv~Ýc§nTþ£*j&Ñ„ó1Ùd‡u‚x4v‘Â¶[$œ–NƒÕ•™Hòv›N‡Ld…°êâ¡Î+•`¾ðWWX,àk-i¹âe.¨ñóf+1hv`µ]\\Ô=\'w‚Å®´Ý\\òRÄùX±cÅx„1j-\'W;µ.ËMâ¬¹Ö‚Ðo•aW‹¡s»±äÄM—\ZÆp\\íéWâôi¾uv.IÁr·¢ï_‹¡i<¢Ë™`Þ+•½J°¢­*°›&1r<g%ÈÞ«Æš§EÕ7ŒU×\Z´æ¹*ÓY§5O3ú*®JxÖJîÊÏ5ÈõŸœWÑMsÉUPUTÚœ&ÎË7šÖ+ÑW=Oôžà}Oó\npVbÅ]Ùs.GƒÒ«Çm¨*ÓÁÖ‡Ô&q§ÎLY.6.Èù˜­8¾I|+&,–<+’®\'”í¬˜…Å7l\\+Y‹Ò+;,–oï(ô,X¿;NÉä¬øQ$â¸ªØ«qhÎKŽ­Š¼ê¬×$r.*¶*ó«Nk‰s.\'ª®õiÍp¼&Ë‰ê«Õ«N”Þ,øìUª´<Ë…ã\Z•j®›àY!p¾\'ÏVªà\\5~ÜW\rWEg²ôÕ‘8®œé=—“Õ\\†1\\¬¼]äøã‰pUÎøêÖ§Yê.\n¶žµ8,žéÚ¼Úq\\ª±zË‰àðW’mb³zO}l\'’Î¯bµ$’xum?Oà³Ž\\èž\'¯Ë7Ç8.7­9-•îV™ZàY7´ö—$’I\'5Œì;=ª^â«Gµ¥î,*ÐŸm6k‰`öžêºâ‹ÈûHÅ\nì›ÎsiÁÙp=Ú^”’w’½XÉ:¯y=)´ä¯VhãŽ\'ë7Hí;rVcÊ}¢áŒU\'icy+U§<Ð§Ë\'qÜO6«Æqi$Ÿb<À™9Sj¼e$é¶&>Ø˜<ç¬ídc9+1ì»\'Ë$’N•/4®í6‚ÉYá:=§i‚/ìB¼¶’I&Ý¤ZIÉZ®h ‚-“ºUâÝŸRtz}Õü½7øñP?„™_Â­xG¨¿Ö·U•ûGKÁ2fî“·%j—	p<zmUôÅIÕúGÄ£ô‹Á¡2¯Cü*øKð´>kðíkÎÂ¼’H­Úù¦ÈjÓÀ¯WqÆ*mÔRti…ux¼§üÐþ=ð«áÒ?‡þâV>‡Q~Š—%’bxÀé;sBµ|‹àjF„.¬õdî†tühAÚŠº?Â¯‡CðUð_ã*ø½D>KÊçH‚.ž}ÇvJõë4vÙ\'OÆQ éCèÒÊ¾,«áƒøÕ¡ÑRÍY,\ZºÅ\rp+W±¤^N‹úåŽ^ÑôÓ*è&?ˆŠ¾øUð«CøÝEøÎ¥å]c–=œ5íGÙÐ[ÐA¥Kü*ø½6u(T¸VD\rY‘dðž*üq»«GgB¸)sèdê|„¼9wLCV‚9êÒŽST§j×Z§ÉÕë·ànHÂDEŸ]\nÐ;P®¸—5J³§Tä¶zÕ÷2gÑ^H Œ ƒÿÄ\0&\0\0\0\0\0\0\0 01@!PAQ`2\"ÿÚ\0?åŸùf=ëüsÿ\0ýV?ò¯ü¯pÇþR†?ò¬{¯ðËü´µ¿¾­«¶ðþÍ}%ö+éeõÈ~Êä¼KU­ýú¶K…zô$WÚKÝ¢Š(¢†Š;J+ëåíVÂCÅ–7…‹Å}]b^Í(æŠÃ(hK‹úÙz+j\"„Š+¥kXz×ÓÞ%ëÑ\\ì¬¼QE}-b^²B^“EP†Q_M/U+}&³X¬ö},½4F<WÂ´bZ´5ô’Õs!/i|	ÞZÖ½Zâ~š´È­\Zú7éÅ{u¬×ÐÖ%é$/Fô¾9xú7…èEzYgqÜwY|2ÂúèÄ\\íâËÅ–9\nBbÝ{w»ôb¹l¼^//)‰—¼×Ñ?F<W‹/^6Ybbe—”óÔñôOÑ‹à±²Ë,²ËÅ–^X¤wÂx±KñôL|¯1#³cx²ËÃÃ,|6YbbxBFÇçÐDulowµáåëdYÜ&\"ÇçW…í1ú0z1úPÐÖµˆ¼\'‰}¢…–Ç­ìñE§aÚ8!­“ÇqÝBÇétåcä¢„ŠÃ\Z\ZÅáâ1\"nŽæFeû+f?I:\"ït¸,r;‹/cŽ Ù•’Dåx¡ÆŽœí{ì~ŸIþ°ÇªËÊÅ—ŠóE¶Èô’\"}_àñc<‘—kÎ¯s2^šÃÍbŠ+[ÂE\n\'j;JE¢-Kà”%:œ±z]|’!ÿ\0>ó%½j¸:oõ‰bŽÒ±ð42†VÂÄ‰Hm\'ÿ\0£©ÔH”ØðÆ#§¡¬Gás×;%êCáâ~D±gpäYcÃEú]^,rÃ¦I\\¬yxD%Løcœ¯q’õ,‹%‹Ê;NÓ´íHsKÁÝÜ‡Ùz·ŠÄ³zx%#÷è®fKÕƒ¦<Õ¢‰ÚQBø&†\'D§«yHcÚä”»²½ÊÌ½[²„]´&XÞe!—‹,²ò°Æ<=\"¾EïËÖé“ÏqÜ^/-DQEeááåf~‚^´]2Jñ|/TöcÃÌÜtãnùõ%ëÅðÑEV#„ËË`ÎñDJ½ÚÌ½t2óyC/1‹d¢Ö<¬^(é»_C/a;C\\¬xXz½ò±Ò5ô2ÊõV¶,Vk7£ËÑá<EÓ¿YðV_¾…›(£µæõyzôåð\'Ä½Yq-ï7ªà²ŠËÅƒ…rEü‰×³yy—\rzOD1j¢v”‹¢r½YZX³Àýip¯f‡‹,l±Ë,cÒµ‡ÌDw³¼ïGz^Ì¹ß£àl·¤˜Þ^Wž‡ýQ]¤4×’ÅLüÁ©#»‘oY–ïØb‹Å–7»Ã(¬ô?íU\"Q¢#V8×ƒºˆu¢d ™(8ø#/QýâÎâõ­^kGŽŸýEhˆËôÉDk\nN>u(êtÅ*OwÆýÔñ\\Ly|ˆžPóvN%b$\'dÑàSþú/é¯G–VÔE|âhýŒ$4<EÑ}ÑËB•\nKîùGcGÀòðñ\\_\"(kçÈÇŠ#\Z[\'BêKäcôX¸TlJ²ÕŽ%hðñEÄˆ‘ñ‰,¢CXúËÃÍÑß ø¢¬‚ýí$5š(£´¡áð¤$G-|â\'’†Dý2kE*;ËÖòÇìÆ\r¥lþsE†ðÊâB#™G÷„ÄQ8ü?CÑ|a¬V–)g·,~ºù#Ó¯8\\Z¾T!ÒJˆáñˆø\'¼±—²t\'z1úk1‹‘vákYD•ÒXŽ±ÿ\0Ë¬DŸŒCÁ2ôE¬¤˜ÖQÝ¤¹‘é/Ø•rÍsÖ¨Ž^\"OÆ Hýh†±y½Øý8ôÿ\0¢-C^š#¬¼‘\'ãòH­S<¬¡ðËÑQ²=:óÏMñ¢:2B\'ãòKÆZE“ìX|—:#Ó¿\"UèGÈñ5óÎ´BÖB%àJÄ‰<,=°ðôíÒ\\ÕdaY®xg¨½4-X‰Ÿ¢$óèˆá¡æ1;´—Ìcbo3Öd•zQÚñ1ø Š¼ÄkU‡”¯,—,cHy[WtêG÷£æ‚ÚKº%„?YY¬!\"Ç¤¹:jß*àZÎ5èQÖÌŒ¿Dð¨‘xB+GˆFÉb´—\'I~ùWÕ¢q®J(Q²0¡î¼“Â$´ˆÐÖQCEö—$~ÒZµd¡EqÆ(ÖÈý“óŒKH¢o¬¹­¼¡ü+U•#Óãý’<fQÊÃXEQàxñ¬±\\QÑîò÷V>˜àÊ(íbé±Alõ¬±yÌÕa–#˜“xð7«âXéøç{®Já{þÉy!¤•V,%ŸŠ/gÉÓñë/UGÙ!I¬,%†D›ÅãÉzK/…/²^G*È´’ÂËÇ„7–XÞŽ>xÐö½W¸‰FÅz±ùlDž¬pz>,t×Ï¤Ñz¯m[IÍa”QÚ%³ãé/a{qeJ/£ÏNŸNHZ/UùÙxVÈz$x/v=ž?ùãEð?‡¤}W»áXbBXoŠ8_Wªõz.\Z(¼¬¹hÇÃ<O–>«çb+gòvèÇç†}T<ÇÕ|[¥—¥fK…yÖõZ^·„K+ÚYbÕðÞ;’;ÖŒ—N7óšôßŒ¯Z¹/vJ\'k;NÝø(Š¥É\\_¡a{ë‚·kipCåïX²½ï¯V\\?úà²µ|‹Ö|Ö‘{ô¼æ³y²õX[¼/Yñ.	Z;ÏÈwÙò(1GipF5É|I{‰p¸Š%I›YoÒ_>Ë®ôz¾G3¹”ÙØŽÝe¿KÏ¢¸¾•kGk;D†èîm‹YoÒ_<©ò2>Åj½	u?‡k—‘\"µ–ý5ñÎöbÑ}UIŠ9îÕìˆøá¢Š+/…{Ï\"ÝÊÅ™HzËeçÐy_@ý)]ËGåÛÇn²Û§K/‹áŠöŸÇ\nÖ´”?\n>~ÓDµcÑ+#\Z\\«	+xøö¥•²ár±.¯K’°µY~ûæ¼JIÍŠ<OXx,¾õrY|Ž%Ð¥|O^šøâ­«+uçÜ~„£cT)ÿ\0KàcÊBÞËËà[ÇÝ–Íá¢Pþ	¸Ÿ”]D~E«%˜yç¬-Ø†GÝ’Ââ{PàŽÄv-Y,ô¼éEQZülø!ï5—À÷£´­ž`¾4²Ë,¼ÙzÙx[\"?@¸oJ+©~T~e«%ˆ«b(¯Iaè…ïµÃeæÐú«ô~bSl¢-~Ê[K?úÍë|}\\5–ŽÓ°ì%|£»iã§çkÒ´¢°¶¬/£kš°âvm,tüï[Ö/7¼PÖôQE{-oe£¹Èî\\rÇOÈ´\\Ô^¨E\rak{QEW †¶d™ÚÎÚ\"ÑÚvúG{ýèî[K1f½+ÒÅ,5êW\"òä‘ùgiÚvÙ.—ðS”EÖL¼vÙøö–:x®;,²Ë,î·‹%:Gæ‘ù˜ºÍ®¿bš/ÚE–<OÇÁ(º>Qµy#ÔOGÉtWè©D]I¬Å5´±Æß\nÕÄN«ÖÅ!uXº§åB’/Õx±½\Z\'Ó±Æ…9!u¤.¿ôV,¼K¥e8Ž[2ÄEÚáoŠÄÄó\'„Oåð^,R¡uùEÕ?\";ÑÜ½\'—Š%ÉD¢Š;šVH]éÝlóÑñ½áðÞ,R¢.ñÚ8”>{,±MŸ™‹ª.¢/!èñ9Ñ¢ÅˆÐñCBò~5ú;^ÒÏKÇá²óD]Âx¡ú¶w\nl]Sò\nhµ…«Å“ù+êP˜ÉD¬&XÑÑŸëwž‹øÚø/ŠÈÏú2\\‘æË,±M‹¨.±ù…ÖGäE¬2‰+%ðy¨Œ¬dóx]u³Ã:/çWé¼Aüå|öYe–w\nm•‘ñŽ¤FèL±1H#CBEp<ôßÏ=ð5˜D?i½«BÏS¦?ü–X˜˜ØÅ—³Ì|ó2³y£Áç1É(ð_¥EQEa+#q;¯2QLœh±<¼&^ïE‰Îä%ðPø(e‹Ë,¼!2Hkkö[\"éŠš%Óþ$w1É³äíO–\ZÏqÜÿÄ\02\0\0\0\0\0\0\0! 1@P`0\"2AQapq€¡#3‘±ÀáÿÚ\0\0\0?ÿ\0Õ¢B\ng·¼sÙ~˜h÷î\ro8g´Äþ›p”ú=DÃP·	‰ý›$)O=œ8o¢V¡aHŸfú*ú*u¯Â~«OâÒC<á-§Ÿ-Öy£È–çàžb—™‰æ|\\½.…ï?©›3[²æ‰õZ„¿ l¨×îÂÊOî´Êð4 K<•ÇiàŒi“(_ªfÖû.}XY#…)Þ3a$»¹È™3@×åàCú†[È9e^áÈ1Þå³†$…“)_Þ2ÉPôß%ÂÙ2‰ßž4ÉcÊüpsÊ¤¡%€¾äÙ4þ«a\'³Î§«T”JúÃße\"P©dÉzs\'S¼9„ÑÂ™OZ¸{«ŽÐçq RÉL®“…O‰tî™*Û—gÝŽ…rs –‰í.FÍzˆ¬V¤\'äîŠUì7 ÜÊ¹të{Bê¡\\ðÚ­4¸qóB”å¨`ÿ\0Ivéç˜žÒáRôzrKg8%ÂlrË|N{6Ò\"€Ûeú\\âñP¨…íõ*îÁãRú~©2ú¯«dú¤÷_ªdƒýRw—Ì×ìV-Ÿuú5k_êþ\"¯ñ]Šë|Oª¾v\\½j®=>‡õ^ŸÔö\n_Uj!Ò~M¡ì$%·ò Ù7ÍëVŸC²ìÆŒ{”¡qš5ÈÔ¯=AaP‡ Ð6óãØ{ä+x#|Dátn¥ôù”dPî Æx¡‡(_!{±Ä£¨£vC«@xfÇ”®ÆtžÉ´öR‚ù÷’)]L‚” L®‡qn¼_ãf!Øþ`lsâíñº\'1À†;L&²2ÇÔ¥ƒ¬.;ð –2át×÷\nñ™‰1©	Á<WÜÃ1Ôwt:/X\'x±\'¨WrÝBóŸ#8žòÃþGV®¹ôo¸–¦:Œ!_ÁJ¹*˜OKÿ\0MRKS:eÎ—ÎåÇ>x=6lÜÃà]\'@…Èü3À\\&–ÁS×™ÃQ>ì0}Ü7Ð\n¹X8^æx~nèð†EÄ»9 í	ªvŸÍÕ4Ô%Ï¤äv5+ÔÂžÒ~EÆ¡½ñ°CàšìÁìæ;Nµ.j:¸Î\'xMáñ9ñò˜HÜƒ»&šâÛ¨®„‰yÿ\0Ó¦¸ˆld¯ËàŒ\'^Pu{áÅw˜iXJ÷¿Æ×s-ìFpŸµ³æÂwT*´á3‡¬¦W2à6áJtÄé¶)[–Èšm¿ä/Kâ`(U¯ÆeŸKkn‡ÀÛ.–”}Jâ^ñ¿ò2àê)z±¥y(ÏIƒÒvåàjC·%­8:‹ÈƒØzµ\r\\n;A™¡´]\\«”ÿ\0“Gæ½)Ïm\\Š:HÜ>fœ=z?êµ‡ÎçËÚAá]Ò5£[\"[/V‰„:¥6 …òÌ¨,Ä¶N%‘„ÔTèD[œZ¹f`“žp=Ìí¥Èšˆ)>šUÔÄ£>W!â˜z•¹º¿MŒ&¢J%:opKã`GÅÓcNtÔCýfŸ»O#	!7:†\nz¿6Ô6àJ/?Ù«þÇ‡†J<S÷úƒi«^µ<xÏMˆ©\\ˆÆCÀxU¾¡—ªäLiâÓwrE¡>yRå,7Eã Woþ\r%«J~6`ø\ZrR&¡ñÊWfQ¤¿[ð‘!|iS”­GÈßù§õ\r`Lì=Ò¥\nì|‰Õ¤!ê\\!8Î•õr%ÙY{„U{O H—õ3\nl_gvîÕ¨ˆ4T§,«’F\\}¾£»RŸÇÝ»ˆð¥°Iu…À\rtÕ%Í(•tŽ¯Ôõâ+«ž’ýÒÄÖµ .oöj@ÅÂV£ã`š‹´ì(XR˜íÓÒ\\%ud	ªXzVôôFü\\ÏŠcÉpäÙ”èu¿êû3jXzl‡X§§«à)\'í]]CJ±®j[¦ÉS äg¤½Š2ºÉpbã]ÐöC©N¤ü‰—â\"ºËxöC¨˜.g«ñ]{líqC¨BêXŠê½E†¸hT M’¢N‚8Šëä}^ÖW¸?	Q1­DŸˆJêÓÃ>7R²”u}Ïù„®¬IÄ·³=`h” CÝ)ßV’ýá+¤‚Ö½£¦àRÙJ:žãA32€®¤ãæÆ›JÙì)lÐ!Ô8.•üÀWNÜ8Páx:pÄExš	®ñ*ç/êºöÊ¹¬ëÇÝÕRº¤l>íJÆiN6¶ø«Ÿ÷[†mTÁíkBáJ«È +¬ñ_}Ûd:‡8èµ ‡¦p×à•[m(ÞèÁà*i^\ZË:Ô+‰¦çuô²½…!kC÷p^;;¨N6³ùåuuçZY=šîT®fm6ÓàD±;‰[œ©\\”4¼ãD¯žó‚vG¤*YlVóìÊxohyƒ;ªî²1Õgk;všÒ¯+ÕˆMÔÕØ1áŒ„é\\iK³†°8k”i‰ðSÞXÄÄö•GUÄ±f±\"¸™Dç\\±½¹ƒ×—­ÍapÖ)V%;V8ê¼É+ßv¾+Ê‰N­,%Dƒºêp©ê°½bÝïO^á±z’j¹àØ‘^Ø.ª$à{Ö±‡*R¾y_˜=Lé=òU}\'‰û_X«g\rxzy½è÷a:Ä=ÚèõLWæ°°rÂ½Ä¯ÒÜ¬\r·¦¥}]˜&ÉÌ–tºNþá°iÃ!!!-¥éYoË´·LF[Ì=¢‰&:,etàJEƒÊÅäø*s\'<ƒ˜òBx\n@Øô„ƒÃ;\n•‘Qp5¤x»Œx%\n]\"V± ,žX\nìæ×[ªðÊ§«—»N¼¯I:E;\"ò!“bÓ²§r½Bu.˜³ò:Š‰	o;bîœ²1!!!!!!+ûqÊ¾{HKiÝdâBQHHv˜g¤;4ön)Ù§gNÝ¹\'´ƒ <ýcX4^Ü3 ;ëá=Â[H4hp3‰RýðEÙ8æ\'»–ìbBVÉï+,ðfâœNC´ùÐ&	10äNý0ûËfÚBQÌ>êT=E„Ïg ãÈ1à2x‰DôFA0ï-œƒ°òeq~oÃ´HJ•h_ò10ä„Ç•õôaÚ¨—\ZžÎ[yN¡ÂÐê¶uÎbaÈ8˜c¯a+>«b^&&aÃé\r¨«$\ZÊvé_&aÃ˜mEB¶Ã¹)_|g!ì<ˆN•¨R„Âq=£¨°)‡ åcZ#¹©`óÚ_mýV_Â‡·jÏVÜp D	œ5´àê@ Ï0X¿ÿÄ\0,\0\0\0!1A Qa0@Pq‘¡±`ÁÑáñpðÿÚ\0\0\0?!Å·Sôd^åú/ÔŸ>ÙáKõ½óÇ¹ã­t!úËÙ¿sÏÃóê>·ëÛœuóèóÖý‹÷Kÿ\0¾ß§Ÿ^=“ÃÃ9õ×þŸEuqè¿Kž¹É·¢ý}ìþQú¼û›ùˆþ3Ÿ‘Xg\'æß¡{hù%ðoÙëÚ¿cvø7è<sÿ\0¦^‡šÃË¿ªú9÷,}èqî—»ãÓ{ôW§ÏJö‹¡ú?Ÿ„~‡?ùUë?‚/¦}ËZë¯ãÙ/m¢}ÑßKôªòÿ\0õÜ|3~›¦úWÿ\0á\rûçó;Ëøû÷ÍzKÚ¿Xý¯Oÿ\0Ï±zö\rÏ»~ûuÇ´Y~›êßÃ1üo?ùÑ¯Uz«×~Ž½\rzÏä¸÷KÙ¼uö=þŸŒdú«Üqéó…íô?s®•ê,¾•ðÔ~ªõùùñÏøŽ=“øwï_Ðýô½gìW¯Ï¯Ï®þ~ðþ\0~£Ç/g?Ç¶ã®{øUÐþ{çî88è~ázUÑ=çýøgÿ\0—çðÏ6ÝQð+cøî—þÛß¿Iáï×_9ÏO>»ßÀÛ|CÃ÷ëÕŽ¥ê¯KŽŽ}ëè^ÌÛÝO±~ÅôIÀ˜·™Âô×¸ç<t¿Zè}þ—>ÝzLYß¬OÙ\rÂÂV	È‰ÊÇ>ŠêçàÜâ½ÃêçÑ¿Œ\råú×–hiˆ†èJA£¹…\"$•‰6ÅÓÉ>ÑãŸ[uÀº±ã ßâ˜ýÑÎ6ÄS±eCšÝ³»±Úí•vìfË°§f:H.è&mÀ—|#Eðžd†Ø—Çñê¯A{è¶ø·é½hî.FÈ›/.IºB™ºÆ¢š“-·\"41ý	h/Q25Òî}!F9Ò$1öÉ¢Iù¤G´Ž—‹}K<bªi”ØæÏ\rÐ¤‘¹*!\n†&“\Z®RqÐM\nìÒ`Ø„6mNŠTèÞ™_BWŠ1¼±7¶1Æ+ÿ\0”7ø—†>‡¼½\r®^8÷\Z`ÿ\0Â!ßìŸ‘©0y6Jv9ìÔr{cË°™Ü›y¾Ä´\"¨Š’9™ýIÂwHÉØÇ%rÄŸbóz÷.ß°ðð°É‘ºXvÉämÇ˜¡²6ÈÐÆ¤¿±89r]XÜ\")±S=©\Z¨(ŽÙ6ôJ p…bL!ÂÐœøE(ì2PÞˆI$=®ÁÔÜ\\b«]|O>Åô;|[é¤”æX„]ÂÆÕÓ\ZP¹v‚Á±3€4)åÉ#ð8bß‡vX7<$«Nò²JIhœlŠJDã’g‚Ðû‚-hg$\nED¿ÂO²D|\nùPþáâŒBú•nØâÔÚØça°idRmØ•@ò\r´!®0ÎKoBU#A\n¶:¨DÎ‰€‰¦îÄÎº ˆÕˆh. »dARË S’V9ô8øUè/˜/ÓcÌ\rCÆXùGÝÇ0LÐ™(ækØm…Hä\"0\';‡!6M\rfžÉGrPr\r‚\\±c<ˆaèw5cÄ¸¦>£vdd.\rI(‘{åð/­ü“1\r•È˜6eë¼q©–càMv4b£–¤n°V;“	ˆÁìRÎF#‰6‘>H—BÇ‘‚d“	½\ZgGc¡\r¡[K\r0›ýÚô!íÈ¿IO‘%…ÿ\0·f£Ep6$š¿cÞY$Ã¡hXvnÊÀòÉIÒ\n]B°Yã	KnÍÙÄ×ì±!›ÊÛ÷ðbUz+cp˜’–%8–&šó‰ÿ\0Á¯“&â™Ìn\na\\ËÀn~†=	tj6†Â†»C^.Ê¬If\'q9Cì-‰CÔ2‰ä­-£¸‹µRt)9HKeìs¥!odi\nÇ#f¨vÖÓ^Œ{Åð__Ùcf²Bž0pÞ)áàÐº8Ð\rDÓîHÐk\r@ì<Kœ4A1´!áh·ÁIÜ|\nG+:6„ßô‚›eŽË²ÖŠ¨¥I!í1+8ôßSô9é×þU²©’|ž®db%É±m‹\rlL tÞ#DlÌ‰‰ˆNÉ’)¼;‰á,›IR%bÊdPÑ³€.CšƒWLLŠš*ƒc’\'ìÓ„ml„>ãÔ‡ÌŒ‹rûHŸü*Ãø…á¾ME¸Rw#‡i+‘±dzŒ˜‰ÆN\ndÞ	a¨¨–v	”GÌžÇ„$Âegå<FÀDöI¶À2Zbm±»\"<–ú¢IÌ	hNFŸŒ~ñçð«h\"æˆâ›7:)±E8A‡Ü’Eh›ÄdŽKî<íŒ°tlPcŒHRE¡‹	À…“J\Zq\"Ø¢À‚–ˆð@JÀJs±Ñì$7ciØÄû—ÒKØ‘z­|cë¼¼ !r=òdaRÜ·d†ÇAÓ‘±á	$=â·ˆqìhmrHä%fÆ‹	„“Cxû8C,‰V”$	~$32a“U’JÃjÒ½n=¦ý”{ëoÜº\"´š‹ž	xÓÊ\'°ìr,4!taâx M9¥‰xrJD§†¢cÌIAHØÆq	âF,¢[cA½46ll¡Î{š ZÙ%¨™|‚ö}î_FÉ÷Ãs¼Ïa<Ì	“‰&WCDáY6>ã$=t‡yYGÊ‰,N;‹gŽÕj	ÙGB.È4ôH1:H}Ç?¬,£»5õËN:üpPy\raQ—‘’,<!¼r!Œ)Lz&Ç¡ŽH”5f˜ÈŸrlz#\rÂØÍ³l ’Cär-4i\"tàÑ.ß‚,þ‰<‘-Š5PD¿_ëå_ÂiáÌ%R‹hÉÛ¹lÎÁ¥ÔI7‰¸ô@ô!:ÝŠ¬m	Xô!åYBðRrvGl±ä6ˆlˆ)ŽÐ÷\n„™r\'~y%®H‰p4¯~½÷=OÆ…‚Ê,3.©(ãÄãŒ&<=CdÐÃÈ±&˜6Á‹ÁnÆƒÙÀ˜”V4&Ch\Zë‚ˆï…bDŸI5Á¡\r4¸òÇ§ß?…yžþ%ÆÄ´¬d¦pL¶Ù ²ò†ÄmaˆCÃXÝ°‘X˜2pÂcÄB¶\ZÆ5±!7„IF—‘x@@ÉÄYø7‡s$±à™x4…Ô½:ù\'™ïß´6Tn‹i6C¶÷œ(šÉ‰\raáìÔnÄð¨AˆzúXàŒ˜bdlDÉ=%Ül¼mŠAP}\n‘Hïô†žµð,~åä{øNNÖk[7¿§œ<ïd3`ÄOAèCµ…ŽqtH•bÌ6&\r{ äHk-ˆR7EFÎpÙ\"Á]¢—~\rîËá^Gð$ËÈð¹P\'a¸‘<Œb}’Ã^\raD\r	ã‚±ãL-‹Ø‹6$¸ÞÆ\"Í°˜†q#]¹c¤§lUèŸÎ[{æ7ÈÄeÄ.T=™œN$x[ËÌ“Ž	ÃÐˆ\"Ê<	fBGcéŒ!Ò/(3\"Æ¤Ò%m–9’z^\\\Z®OÁ;Œú|{éoÚsé»{ê\rÊ¢-ÐÅiÐÇ.${\'¢F!yŒÀð²„ˆRˆÂŒ$Oa$Z€ÄvxO¦8‰v\'È¡ÀÓàIò0± a+(Å£HbIdGó”úžMýúšÔ Ètx\'ct>†qÔÎ2†h‚°‘…qâ5´9àDÎJìW)&â—Ò¥‰#7Ôž³¡xÒ)9%¡r;ƒLŠÖGq¸‰ŒäþÐêóóþÿ\0˜†¥\rŠ8}ˆ%—±a‹©‹Ða¢,R+ÈØ‘ˆ(ÃR„D¤TkIçR&C ÁFI\Zæ1`ÇÐƒP5•ÏéoUzëàØú\rýó•ÀzÃÀÉ\nÉŸ“n™ã,YPóÊD\"Ø“ÎÂHšI(Ün$RE14$ž„¶Bœ-± ì“¬ãhœ±[Bÿ\0)\ròM\r„œa°uÜJgý-sÿ\0„w÷é›œS<Ù»Â39äfúã HÅ•HMèY,œàp-‹PÄÁ+5ˆ\n a2*Ev#Tn=ÒˆÎDv<vÈQ>¬k	!`¨ãáMÏ¹}fþûA“¢ôóØ×+ê™ ÎG‡8Žq8XBB@ƒX¥(\\¥Š L~	ö‹„8¬]Â‘)BÂb67#LK*;`Tj hC‘6z !:9Ú.A¢p8‰¯ÿ\0Bš%ä†¦†[S¤84\"D­à~‹ËŒÄN$Œ,ÂŸÜuR&JF	\"/ÀÝáäPäFä¶ÈÂ##E†£1äc“‘t6ô!¡Àœý7]—gv˜ÿ\0B~‚\"2 p_ø7o~ÜÙ¦-›w\"à£®N3	N†žÄrƒmä,GN	\"+°G„ÃÑLSP\"\Z\"Ä„¼•ÃXk\rˆ‚g,a€NÒÐÔq*m[\ZNá%rM4)¢	ùØ¦Š4²½î»}.Þ£ö2>âCe‰N{’É©42Í\rtñ‡ÒpF\n°-dúQ”ˆM\ndI­`Cì\'í…»\r	q‹ÃCL˜³Ú6ŽÓA¢Pˆp7¥’h)P9‘0âI¦:ðFš]äÓäãÒç©ßß5àBƒÄ‰‹\ZúZÄd/Ö;<ˆ9‘\"¡{å\"ŒœLE	]\"‘DÞ88Í@–B¸‹¼\"åú\r²R9‚jCQ3ÿ\0D;Ê<pÝäJ!ð7¾”Ÿü¿¾cð)Ù\'hIÄÇ¼NyÇ\"ð#Ã¯„*L*šËsL¥‹BdŸd‰ŸX©Ä$!ÀŽ¤P•ˆ#ƒ°@¼Ž¾HÑu£q5A2VÈ4:œ	#+³÷\"\\È°îÇ¾ÂR8•\"ÜZýmh{m+%Pú”¤1®„#ž€©VAÁh‘LarKœÕn†RºXg$è@–IŠ%b`—4\nòx]26ˆÔï#fµg}Y)Šd¨ò¶o3È‘bxÿ\0Ð·C!×:”qæ#‹ÿ\0BY[È¤q¡~	Bž \n‘ú@)BCè‚$D‹$„‘Ä XhN¢Á®GÝCS¢ËÊ&T)6v.É©;Æs,m:²!ìŒ§—óSíö	Xîm¨qb˜%ô\" NHE$˜¶@Æ™8˜4ŠÂ hb0Á:¡adDd±úÃË& $H¼‹hò\0‘Hý5do¹Ò&¡üö¯ÐÆ!&q_CÓˆHxAÐq<!(És\"w†ˆ±læ„†!•²0‚BX‚ÄHž( ù\"%7J™°Ñ)Y:ˆÞ„•D9Ù³ÊÉÊMa?ý#œQâßf›ð‡C>Ï¡aÄ„3BÄ¤Óƒ’a&!á	e\"2óL‚òkp…(Kc&44 †&4Hˆ‰¤b|¥‡hIA6ÃTRûµô—Â~û\'ì×ìØY¶b´~àÖü$ŒÔ°µŽ0ðJˆì,9ÊÊ HK¥qÂ×Èüð°V%âT¶m\'E°Äˆv\Z˜˜Bc¶97q0•¬3wCf»›ÃÐ³J9Çhšà]á6=_\"uÛ	ÓÄØ[IX7]ó8P\"0º,ƒ’‚e XIlL†oc0„þ¾Jˆ	pid“™7)Šb±¡å‰(ºÄ‘pDõÏŽÂ¶±-A6(‘‹çŸÂð…1DŽz&=át”h%ƒGa@†„AD@„¨‚\rAaÀZ,šcÙ{VÊ4#gp€BÁ`ý&I#\\¥6Ý1Bw–àÊ×ŠMX¤ˆ¢, \Z‡óO/Òß©Ï°jQ·¼2“c§A‹û„ˆBÌŠ Œ›¢PN4ŠD­H‚]‰K%Bé7@Ù>\';J„›¡~ˆ2$å$$™ŒA(²((‰>“¥üÃø~Kcï#âÅ†ú6F¢6Ët!’QQ†ÆXJ5©Æ<$!`\r¡\'ctÙ\' “ƒÉ.m¶1³P„©½ŽÐM&S(œm•åË!t¿ˆ‘-\rr:Y-›#A1lBéBº8ÂQ,P‹ARF$Gšå‘¶>Ð“¡¢Ÿ%—°Æš¡*Û)T%\rJÞïÐÓÚ\\tXÎÀ“L%öŸ­À¾5ü@·ÐØªš G#Áp,I …‚gÁ9t!<µ±4ãà8‘1ªdÚvÄ„{ $4Ù8±bgg’ÉIöCX#ªˆV•Ž œMŠ»\ZÆö¤Kÿ\0\0ÕöN-DÊËù‡•õqïâF…I2c³‚MúoB°‰$dˆL’H˜˜âÈD\rŒF>‰Ñ*çÓ³\re<‡U¥C¦69.N\r—$IìMÎÆhê¨Ð,Œ<;¢@Ø{žAÄ„ãÉ\Zþ4Öªò¿†óB‰¼‚<@¡XOcÜt#ï‘$‰“†º$ÀûŽ:Ã$§:rhM:\Zd†LB\Zeš{›Tb–•¨¨dxHÍ1BDúŒŠ\\”ÜßØññO#øn`rA&¾Í1.,Š!ù‰\\‰}‚ïá7¹õ”æ¦ñX?aè^„ÉPB‡\0)Z;ƒK6(á$YÎ!PavÇøc-ChÔK0ÓÒØÔ	Óaä!yÅäXCOÍžg¿‡|hOyH©±ŠrQ±ã_&Ù\"Bbç<¥	œQ\"Å)·õÔÒ)6PþRÔ2R‘9„ìL(CVPYSbH†t\Zt¬ælN¼$xØ‰¼	æ^D#POÀX-ó—ñAnLåMýrqbbÏàvwƒ	›Ø\"”Œ—htÇº&02ÌÈn›ÂÉd\ni,lÆœ<4$à;ŒJ0!J2üM8©^±8&ç!ÇÜHd—,X†þxÛâÒ“ŠšD\'cB1”Á‚ÿ\0Džñ¸ó°˜üâbðÄ[´]Æ¨(L¡v1)°¬(M,$X\"1d8‘çHÂ`E†Æ7š‚)<”Ðk\rÖ5óÖÞÕû=¤»ÙŽNÆ„\ZWè°´G¬ŸÐD!¡.ÅsÈp@c$w\"ìe@Ø£\'ä”Û,%‰#(4@ˆeg0HF£X&\r–7’É#EY °…¹¿Á</d°ú¾\"\rXÀ÷rBÜšdJ›1\r‰p®]h~Y7£ì-  S‘É0áª¥Ìro0”hu¡XÅv‘%i\Z:4<p0T&=ð‘<ÀÃ	’HØò°™Á&<á!ÛeDË›|ñ·ÄÊ!0¢Å³r\Zò$2N	9cAÌK8AŸ»Ç›‘WGŒdñDRŒ\"›œa‚ECdÆÑ<Èt)2$A±0œlA‚Ãð„p6„.¥CJa#&m6|ÛÉ·Äè0þÆõ<!»Ð¨BÆBgA!>û8U\"]›ÿ\0AJ\"\n—b2ZD´! K¨ØûC¦á‰	 m°”Ê$F0–S‚Œ!&<<!	)rhŠA2¨V)¯[sÑÇÅ<›|SSc[EUš	ŽDýŽ‹+ƒÐÚö5hsÑu(;\"°cVhñüìŠ\'x&9¬\n…x)ÞÆƒD ¤ ˆ ƒCLY,±ˆBpÈp\Z“!cª¾!z&ÿ\0uÂ[(¤E2</æ6Ñ¡Ðxƒ¾°Í@×*¢A±Ñ¼ÙlR™BÑ@¢‘\"@†Ñ±},–6F8ÃcÆùX,Èò„, L,HÖ>Azæÿ\0Ç9%žÇ–*lØ¥ô$5ÐüF¡%¤Ñ\'Áƒo1„MàT!ËbÄ†Ä<0ìD,,Î)‚ÂÄô¡t…„àºöÜû¥è¾£Šfáà¨Ððƒ¥Œi±Öð©	½·B0l/R,šÙ\"ÃAŒd“ÑÁxKè.¥Ñi$Î„!ëåyôú¨ýÞ„gF6Ð¢Ä+%÷,Ø¬K\"„¬®èRð\'„µ¦w	!BDÄOG8,,ÄÆ¥-ÒpÃuìát?‰6ø—†+¼Hb¢Ð9B	ý8d	„`V6Û´HÑHTt†ñF´4‰‰BèHBÉ9°–²±T,i~ÛŸ‰6øÄ$1ãôS4Z;	„#°– ’{$obP¥>…B´h-‘„ÉÊÊÁo…••x\røoIQ2ÐÅDBD ¡¬DŒ&äƒÁ™´è&A²qb5‹ÉèO(,!et<D´ èìè?š7÷Ù¼9\Zthp=’órA	cÁ\'ÄXÁ ‘\rE‡‚wVX¬A ‡Ó+”Š°°´!aˆXYÒ!h†_úÖð‰dH¬n,#ÐØÔ,„„&\\,˜ZnÉ„Ûðh …É&k¨Çû”,¡XYYC„À‰§ØçØ,¯ˆ}Fÿ\0ôR4ðj>Äá=Žö-®}¤&ÎÇ¸àWq8Ì1áábD![Ì“Ð²•ÎE‘=æ¾\rü^ú$üpwa;·Ð°Ä(}ðT„<„G0&a¦ŒŒNO¥	áBÊô[Ä_oýkyIt5èÔB©ô$Ab¿\"{…Á®(9ÐÄÄéS#Åa¢ãQƒ0>ƒHK…è6RL~å{µÕ¾‡ò^t¥‰D‰ŽÄE‚ÙÇ…Ša$›ÌÇ“‘#×Ð!t.§Ñ$ˆX‡þ­¾™!ÈOÎÇÜ±©8)o*5cGNÂÅH¶°dŒ&9”âŠtBGœd²mìøÁÎ¿’Òqç4-‰Ñ\"bxCclA0ž	bŒ(*!)\"5cÂŒ5f‚ÈØd’&OCË^ˆE§±ßúó™,iŒr,q”å!D,0Ø”Š8Y-Å1!2äAB#‚°Ä.—Ð,m	¾èãç3ù=Ú&CBƒ(-…Ñ#tN-ÙHGl8$N„&5…Hy¦ô:9Àž(›ê› Y¨øxI‡óOÞï­{5ñƒ15‰\'\rÑ$Þ°môïé¶C)ûðÅ,†Ðî`HR±²;l†ÁL‘11>—…ƒB\'£b<M5>#dýŠý}£ô\'h\rÜ’ÂÔl>ÂS†ˆ‹Ë„Å#èY@Óð(K(Dð²¬,[DºZ`A`°…•™Ä’NŽÕµò!p¿™yùø§èH¢y#™¦mß‚pœ¤ýá„‘¤Äj†@ŽÉbçŠ¨‰cHH¡GDçŒÉ$ŠÅ‘1b\0ÛØ|ˆ‘,j5´x‰v!‘ò¯ÚëàV8a„,h<\rß£TèúLˆblCmà‚%CS‰AB9éúËHúBÁOCZësHn,äš´:—y!RTopÈ‡àaòäŸèÑ´GÅ>‡ì7‡ð–+Aµ2NòØí$X„ÿ\0&ÈGÛŽR$Zd‰\n‚B8(ÉÀÂlK2—\\æ:$Œ&,‰‹bã†hÜÔ-ìYi§d‹ð*WÎJß”’IŽÇhÒ1ßé.{	*aOPÚ/Uåz<û\'Ø/lýU¹¥öÂr,hkˆÅ7hÖ#Â(ZâŠ2DàN7,œK1„ô.¥‰±¼R NDÅ‚iwÝÈ•C®TÅ»$CCi’ÑmV\nh‡BP‹d~„¢‚šrµA§>“è^¿=­å(Ë’á¡à§èBc\"g†3RÍ³cL-àJ½y7„,‰ˆa1ƒ½¸gÇr¢LTÂ˜+!V^DŸàvãþ‰S]öœF£7ÎFjdâÉ–\nÐýîŸCøÁú•Ã\\<Â/\r\rdù»Ähøäf]o¥a²I$lXY-`‰„•ö%ÎÐ‰òÐ„“¤¡r¥·È¸IÂè³M†¬žV›ÿ\0A¶ÝèpxÆÀb¥èR$\ZÒ©ŸZGSè^õçÖð?QúïÒç	’,FÅCèObpÐÖXR$&3\n½„.Žpš9Êy \'„É¢hã†)n\Zlžé\'aÞDI^Ï)2Eo‘??bÉ%ÉÚ»\r {{«®ÅHÝÔ…;-Û¥ûê¼»{GðNÑ*æ\'ƒÎH™±¼$ô¢%˜Ì/It<¶É²‘9\"Œ\"{P¸±óØ’ÔNð‚Tt8ªh’dN$¶\"€íÔpÛ.âÓCÔø4©¢0¤ÐZ#ðKßÆÏ¤¤%½cw’I\'©ô#¤ž‡×9‰áÏD‹X-\nÔ&!28\r Œš2âŠOˆò)­Àé¾É´DÃËAR³A„Ä$ý¥È–E†tK\r‹eÊ¦5µÐýwê¼›|ô_¬¸™:Jè$L’q\"ÂÎ 8‘fEÖðà‘±¥Z\'ºÂ‰	ð&I63Cá¦Ð¦Ê-\r)Fà‚åhAJp','0000-00-00','0000-00-00'),('Don Quixote','Dahunk','12:59:00.000000','Screenshot_6.png','0000-00-00','0000-00-00'),('Jhapheth Bhalhanhe','MaestroKoh','15:15:39.243594','ÿØÿà\0JFIF\0\0H\0H\0\0ÿâøICC_PROFILE\0\0\0è\0\0\0\0\0\0\0mntrRGB XYZ Ù\0\0\0\0$\0acsp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-\0\0\0\0)ø=Þ¯òU®xBúäÊƒ9\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0D\0\0\0ybXYZ\0\0À\0\0\0bTRC\0\0Ô\0\0dmdd\0\0	à\0\0\0ˆgXYZ\0\0\nh\0\0\0gTRC\0\0Ô\0\0lumi\0\0\n|\0\0\0meas\0\0\n\0\0\0$bkpt\0\0\n´\0\0\0rXYZ\0\0\nÈ\0\0\0rTRC\0\0Ô\0\0tech\0\0\nÜ\0\0\0vued\0\0\nè\0\0\0‡wtpt\0\0p\0\0\0cprt\0\0„\0\0\07chad\0\0¼\0\0\0,desc\0\0\0\0\0\0\0sRGB IEC61966-2-1 black scaled\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïcurv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0\0†\0‹\0\0•\0š\0Ÿ\0¤\0©\0®\0²\0·\0¼\0Á\0Æ\0Ë\0Ð\0Õ\0Û\0à\0å\0ë\0ð\0ö\0û\r%+28>ELRY`gnu|ƒ‹’š¡©±¹ÁÉÑÙáéòú&/8AKT]gqz„Ž˜¢¬¶ÁËÕàëõ\0!-8COZfr~Š–¢®ºÇÓàìù -;HUcq~Œš¨¶ÄÓáðþ\r+:IXgw†–¦µÅÕåö\'7HYj{Œ¯ÀÑãõ+=Oat†™¬¿Òåø2FZn‚–ª¾Òçû		%	:	O	d	y		¤	º	Ï	å	û\n\n\'\n=\nT\nj\n\n˜\n®\nÅ\nÜ\nó\"9Qi€˜°Èáù*C\\uŽ§ÀÙó\r\r\r&\r@\rZ\rt\rŽ\r©\rÃ\rÞ\rø.Id›¶Òî	%A^z–³Ïì	&Ca~›¹×õ1OmŒªÉè&Ed„£Ãã#Ccƒ¤Åå\'Ij‹­Îð4Vx›½à&Il²ÖúAe‰®Ò÷@eŠ¯Õú Ek‘·Ý\Z\Z*\ZQ\Zw\Zž\ZÅ\Zì;cŠ²Ú*R{£ÌõGp™Ãì@j”¾é>i”¿ê  A l ˜ Ä ð!!H!u!¡!Î!û\"\'\"U\"‚\"¯\"Ý#\n#8#f#”#Â#ð$$M$|$«$Ú%	%8%h%—%Ç%÷&\'&W&‡&·&è\'\'I\'z\'«\'Ü(\r(?(q(¢(Ô))8)k))Ð**5*h*›*Ï++6+i++Ñ,,9,n,¢,×--A-v-«-á..L.‚.·.î/$/Z/‘/Ç/þ050l0¤0Û11J1‚1º1ò2*2c2›2Ô3\r3F33¸3ñ4+4e4ž4Ø55M5‡5Â5ý676r6®6é7$7`7œ7×88P8Œ8È99B99¼9ù:6:t:²:ï;-;k;ª;è<\'<e<¤<ã=\"=a=¡=à> >`> >à?!?a?¢?â@#@d@¦@çA)AjA¬AîB0BrBµB÷C:C}CÀDDGDŠDÎEEUEšEÞF\"FgF«FðG5G{GÀHHKH‘H×IIcI©IðJ7J}JÄKKSKšKâL*LrLºMMJM“MÜN%NnN·O\0OIO“OÝP\'PqP»QQPQ›QæR1R|RÇSS_SªSöTBTTÛU(UuUÂVV\\V©V÷WDW’WàX/X}XËY\ZYiY¸ZZVZ¦Zõ[E[•[å\\5\\†\\Ö]\']x]É^\Z^l^½__a_³``W`ª`üaOa¢aõbIbœbðcCc—cëd@d”dée=e’eçf=f’fèg=g“géh?h–hìiCišiñjHjŸj÷kOk§kÿlWl¯mm`m¹nnknÄooxoÑp+p†pàq:q•qðrKr¦ss]s¸ttptÌu(u…uáv>v›vøwVw³xxnxÌy*y‰yçzFz¥{{c{Â|!||á}A}¡~~b~Â#„å€G€¨\nkÍ‚0‚’‚ôƒWƒº„„€„ã…G…«††r†×‡;‡ŸˆˆiˆÎ‰3‰™‰þŠdŠÊ‹0‹–‹üŒcŒÊ1˜ÿŽfŽÎ6žnÖ‘?‘¨’’z’ã“M“¶” ”Š”ô•_•É–4–Ÿ—\n—u—à˜L˜¸™$™™üšhšÕ›B›¯œœ‰œ÷dÒž@ž®ŸŸ‹Ÿú i Ø¡G¡¶¢&¢–££v£æ¤V¤Ç¥8¥©¦\Z¦‹¦ý§n§à¨R¨Ä©7©©ªª««u«é¬\\¬Ð­D­¸®-®¡¯¯‹°\0°u°ê±`±Ö²K²Â³8³®´%´œµµŠ¶¶y¶ð·h·à¸Y¸Ñ¹J¹Âº;ºµ».»§¼!¼›½½¾\n¾„¾ÿ¿z¿õÀpÀìÁgÁãÂ_ÂÛÃXÃÔÄQÄÎÅKÅÈÆFÆÃÇAÇ¿È=È¼É:É¹Ê8Ê·Ë6Ë¶Ì5ÌµÍ5ÍµÎ6Î¶Ï7Ï¸Ð9ÐºÑ<Ñ¾Ò?ÒÁÓDÓÆÔIÔËÕNÕÑÖUÖØ×\\×àØdØèÙlÙñÚvÚûÛ€ÜÜŠÝÝ–ÞÞ¢ß)ß¯à6à½áDáÌâSâÛãcãëäsäüå„æ\ræ–çç©è2è¼éFéÐê[êåëpëûì†ííœî(î´ï@ïÌðXðåñrñÿòŒóó§ô4ôÂõPõÞömöû÷Šøø¨ù8ùÇúWúçûwüü˜ý)ýºþKþÜÿmÿÿdesc\0\0\0\0\0\0\0.IEC 61966-2-1 Default RGB Colour Space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0meas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0sig \0\0\0\0CRT desc\0\0\0\0\0\0\0-Reference Viewing Condition in IEC 61966-2-1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0öÖ\0\0\0\0\0Ó-text\0\0\0\0Copyright International Color Consortium, 2009\0\0sf32\0\0\0\0\0D\0\0ßÿÿó&\0\0”\0\0ýÿÿû¡ÿÿý¢\0\0Û\0\0ÀuÿÛ\0C\0	\Z!\Z\"$\"$ÿÛ\0CÿÀ\0•Ð\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿÄ\0O\0	\0!1A\"Qaq2‘¡±#BRÁÑ$3brCS‚’¢²áð%&45DcdTsÂñƒ“£³ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\09\0\0\0\0\0!1AQ\"2aq3‘¡±#BÁÑð$Ráñ4brÿÚ\0\0\0?\0ù”j½Ý&¦ò4£ ††jü_”ÈáŒ°Ù¾\"-pIH@#×.±¾ÉÙM3—)y¦äÔ&aõ(Ši%ÁÎ&Üì‡Ôí\r“º\Z˜©éu\\C¡ŽÜP\\™žâæ ú]K¥°‡Û“`<Ð­»`ï$y¿„\0¦`¨øröì-ÜPòekƒ2‘cÚX«‘Tî/}Ž‹tÒðn¨D5OÊ\\mûA\\àôÓSêï´ÚÛoê‡’ó)I‡2F‚Ö¸çõD¶Vé³î7>‡ÕW2±²æD·ˆHóRCPjj\0yiŒ_ÀÐJÃÊìŽTZÓK®³	ë²5¥¬¶¢Ñ~.«pØ»™Xã¢× ý¬•C¤–\'Hðö´›4üžwèR—©ym.ú¢¢mÅÖj9Ý\'ÃÄð×GÓ{	òZRöÅy\ZEÀ#›^)jVÐ\ZöDÄZIU4@Tw§sÃÃ¬èÞë‡O%gAI¦gÏäîÜÓásºût²ˆäZv%,mû³ÍÔ±¶wÇß ‡Y¢È¨˜4x÷TŽešÖ°îþ-ýV$mEù‚9Ün÷0@¬a…ÂÅ¶ç}”T0·º\"\'jÚæû©h*Þü=[S~Éá¯öõCsA-.CceÏ¨c°Jy¢\ZÝÕXxBÄÆ)šßDšDñÂ–7R	Í	4\'…‚·’{E½ÒkmîžÂË ­n€²ô\'4y¨A§€“B{EÔ!ãEÎÊ@ÉÚwTCÁkî½½·KA\'uÐ=ÃÂò/Ê^y&“¤T-•Ž.ixiÿ\0¢•<f6hÕpÈj\n9ƒÉœ¹Àq~¥F6¹Îx|‡—ZÉt§5Ür÷¤¨õ¢äYLò1{(féŒ*£õ\nf§{\\ùÚÓ«õ®õÔVG¶“ÿ\0u&vÍkjôÆfv×ïŸk<Ec»e}ò¤Bãy™Ó~\n6½ÔæeáœUü+z,SôfNÐ.ç’÷yuO)¿ª/§Ž²W¶{¸5¢Û®æd»n\\#˜•ì‹ùñ–²§d¾	kÙúÉƒu5Ç×Ébçì/²Í{è¬*±úçDØÙ\r\rÔA%)<NñÒU$h+ñxéOÞ°ZWi¸<&3¦uK sK\\Û\\“±ºËc3KU†R=ÛÈââuYtÌ–v<–´í[…¯³\\vä¬qóÊª¸! ½Å õ!C%LA;CHØß•Š®Æ%¬¢}4Œ-7»Oà£¨¯.Àâˆ:ÒÅ z)\r,«~Jœbš£tÙb<JÃìPU×ø˜Þ#q±YˆëïBjYbX<A…b4µmŸ¦OÜ<¬GÕ¿AœºH(ÜeÊ²×æiëµOÃâîÝ	n£¹åá¹;¦¼Ü^ä#\'G6ÊÙpÆwO¹¥Îêñ{}É´”Ž¥{šAŽn¬E‰Ö£$‹¶[ïdîtA%û§_}¶²­6JwG#w\"Ûi/önéaæ©©fdrësI·æ³)vÆÇ´8Ve$ù\\¼ÆÒ#`àƒ×ÙP;Ÿù­^rš!»h.&äÛu•_…ÑÒªÆ†sey%ÜÕ0Ü¶/ÓX~ÒÞ›ò…Ë\r\'§+¡ÌÛ4iÙTýä\'—\'I¤‘ n¡š@Z<#dECœï°ôM_@¿\n–æPßsknV5ûj^›Ñt\\.{›lq¹@<tö…ÞA?ÆT$’K°<$’IB	—$Ì8síUF?Þs‘¢ï³žýªÈÿ\04,î±IüŸìÌËágiíöÂ§\nŽÜDóùÆ±6°Bÿ\0eØþÐ„7Ã›cfÓ¼Ûý`¸Þ+ý‹¶è¸}?î¡þyˆ¯ˆ£$’KÐ$IB	$’P‚I$” ’I%$’IB	$’P‚I$”!zÃgY­.u4,s	¼9½9‘·‚Ð|¶DEM†ñ´®L±¿Qß@yÙú¨Ú.î¡£u58ïKq:vVFGK	m´qcbQaÔÀÜ1Àÿ\0ˆ ¼OÔÏhÆÈøYgH\r7$p‹¦’\ZêwDÉzÉµ‘0ÒBG‰ÃÈ‹…(¤½GhÞ6»ZÞ°Ó(†VT´2(ÿ\0V4Ýó¢•q@ç1°>wZÆW»ÄO·’°šŠJ†´\Z—¦bŸK„5…åÒ‹\r@”%fZ~@l{œ$;àŠï\'Š#md`ÞíœåiKG#îØ,v²tØ`˜’é¤¿ìm7¸²\ZÏÝë¾W¸Ü‘m€ëº°«2HÈ¿¾:mæ†ø:ø©P±Î{Æ›—‚–‚–·¼Ž)axŽ6ÛQ{!¸¿B’hTpÐÌçÃ/|òàt½Í!Í# ²’Ž)iôh«cƒ™s·êî¢ŽJ¶²he\rµí¿Ül¥¢Ã‡Ä=àÓóœëmü¼ì‡-×4Å\\*<P±í&ÏÆÁ¾gnV¶†(ÙYÍÝRÁK<ò4lÆ‚4´€±òVx|5â:$p‘Ù±i¾“åÿ\05ˆZ	4YHÒ`pdE ÒîÝ·ü×¬‹Tdq².–?ê¶÷²¹½ÆR<Ž—LÍž›`v{AÙÁXºš*˜t8mÐõió©””ÎÎñ4FFÍƒÔ…&…¯d‡MÞl	è„n1Þ¨&’9l‡S†Ú¼ýQ [dÈ¨‘¡í#Ìr¥h+KÜpI´Y8\rÒ=ªR4[uã[Ô©\Z²Ùß.©ÀY žÑÕQTö„€Ù=­º„Féö°^¶ËÐ,¡ß4ð?ý¤Ó‹…ŠË{lCË€.A>ÝS£v \rˆ¿šñÖ\rùKºxB‘­möèl—y&™^c\\øØt¹ÀmÖÊXôÒ²d‘‹:Û8‹j„£sœÆ»ÄÝöºÄõ*enžä ·VA>AHÖoºñ!˜S†£c”š÷•\Z0õ5=ø™¥¤<Nà:~ÑY.Ú@nV‚ßéÛsô+OPÙ>2f5 ³¿xØüÅe{kÕý¦ðíß6ÿ\0qDÀÿ\0©ËËð3Œ<ù+,¸_0¿,UŽà«¶	žWy1vµvÄ#ñ :Ñ©ÎØÛQá&½ÈŽ,µ˜,\r’ŽR`†Gw„~°ôQæZ8!Ã+ Ž9À:z¡C2UÛÑ’–W˜û³{\rÂ¥ÎÜ›î‹c;É6»€º¶“/E¯»ewˆž^HÄÕ¨òf¼íÛöS’æô¹Zc\nv_]ïy¯Å{Yg¦$¼ïÕ”·FdÓÝ\rdïˆ8,AOË®#€¾­‚\ZCëÑO€ûfŸüctf½ÖÌ¶ÜhßðìmÕG&«ìÖ”ùx/ÛªiH»¬¹¢„r8‹]—¿\"É…¡ÍÝ¶R<X8{¨lâoª²\r{\ZEº*Ò¾IboBvè´cw••}=K ÕqpO!fwÛ±ÒéÙ^7&ŒF:HŠ ðu‡æ©]rv[<áEE7ÆR=¤·w³ƒî±ŽÙtô¹à¨>g)JåÉk”wÇ`ëzû+‘ÙÞc±Ø^Í+ w\0îE½’ú§ï‰eøŠ÷Ôp¢q,mÚt,¹¸*)˜À74e0¹åÖ>K›æWëÆêIèë.Ÿ¡€¸€.¹f?ÿ\0œÕ÷\nèôýò? Î›ã`)$’ë	$’P‚ZŽÊcï»FÀ£µïXÅ—[^Ãâï»TÀYÿ\0È¿Ü\n[XëO7ò±™ü,éh­³=3â“ÿ\0È®3Š¼wØð»?Ú)Ï9ÅŒÛÁHÁÇ™+c\r-âûÙr:wÝÀF?yø”kÓ`¹^\'tEê»Òi¶‘T”“00€jEÚ²\'jÄ’I-$’IB	$’P‚I$” ’I%$’IBÎÖ‡XjsEËB:†A3	\r\"Þj¾\'÷ÑjfÒ4n:}0î©¼-\0ž+ˆòµÈ‡w ce’5&ä_„WÅÓDà$~›ð«`žVÀEú{éiê¶x18yÛd¨lÇ}†Å[JKX%ÜñqÊ2)b—´¸röYØâ‡[›c9í‡º´Â$cæøpH1ø€klßæ²³6Šî.¢-/Àº&7084½¢þegñ™*;\Zã8·B”ü¯ŽyÐÁf–€°ó>hŽF²6ítL-PaxƒÝ!s;°<÷XÈÊoÑÏª§Æ53ß¦Èo=ùJË˜Ûµ÷û‘1‹6ådhåªø¸ÝUPàw`}‰útRb¸ÕSj-K8kZ4€þþ«.ôRš6°2þþHæ2ÂË+€bUSÑ^Iƒä°7¿Þ¤¨Æq\nzÀÍ`ƒ¾ðC–Mè¿)˜\Z/mÊ\"Á7°¹U†wÔÑG=\'zæÊ-ú»/·_%.%S«ÙCYŽ=ûÀ~anl‚òîH½gtÆØ¹¾©ì¨„1ÍŒnn6NŽ’DlÛT’@Êj)A ¹Í%»ue¶˜ø*1adrGcs®?˜}û+ Ö¹–‘·BªÃhÀ©ž@ç5²FÜ€\r•4O†ž8Ä½æ.ëõX‹†Þí\rdSÃ žò¶—=QèŒ	­-/-j€w	Ñ‡êxx¿‡Ù^Èf)Gà\'´]ye#Flõ9­²Mßtð.Uõ£ªÖ…#FêMO	äž„Ø\'4\\¤ÓÃn²ÞÛóŽ‰ÇQŒé°q]8‹ržµúôC—vå0(Ë$±òøKFÀŸO54R>×”Û{s×ÉKkš[[akÄ\"{¶š\r¼ÂQaœ—4b1kr+Y„ž‚ä¡Zù_¤t`µ¤¹›ëº<€Xv6#Ë”è\ZmkEš‚ÃÇß*ýMMwy‘	Z×ÇŽýcÆÃÛ”Sw!Daó_Õ¥AµÅÆü£éÜ’jE«½ÌLðÊÊÉ‹‹EçwüEbûpú;NÑ°¼ö+¢bÐGIt’xC‹·÷XnÙ`e~O+L’	î@è\07GÁ%â§ó9¹•Aœ*@\0á[e–s»¦•_SIQK¤Í\0Úär¬rãHŠ¡Ço\níê\Zxø*’.2ëuP¼èa¼§æ6^fïü­‚Í¤ð¦Ëm¾\r˜o!ùŠ‡5ÅÝàÍ³#k{Ám%%ï¢Û÷ÌŒúÔ[~Ðúî·±®ÊÑcÕ‹ÓS‡GÍnZëÈÖ‡É¹½‹.sù—“;›˜ÓŒÑÛ‚ÂV ZgnJßæ±|~ŒŒ?E‚ªÞwß÷ŠgFü¾Eù Yº\'àdb˜¸Øw2Tì\'|V›üa>þW“:)kA½ïæ¢~‚ÿ\0±;V†ïbòvºå¦&Dý\rð¨ô0‚@*B:‹@\n=Nuì‚²Æ8Þ2 Ò>}ÙŒ\'k+÷4µ¦ÝU64uºâle²1äkè}UI´­è{nV¬¦Îº¨ádpÉa-î-½–<‹ºÕgÐàúv½àÒ6à¬«¹]-\"¬HbYGmÙ¢È\r¥ÞNöŒð·p¿ÆF’	XþÎ#«ª“sfø­D¢\"âëXƒt¦©ÞF)7ï<okn¡”ÑO©®Ü(ämú  `Å»:Â×\\£0¶ØÝXÿ\0Ü+¬NtFOæ¹3/}ŠÔÉ{ÞBº6ûÛÒüL\r$’]á$’JK¢}\"ï»[ÁÅ¾R÷ºW;]Oì»	›µª\'[û8%wû©.¢ëK‘ü™™pk~ÐŽÿ\0¿Ò7÷icšãØçþë¯ý¡wí¨Eÿ\0\nã¸Ù=Ã¼¯ÂæôõîCðÞ~%Å‚9¸îP`ÙÃkîŽfãe×Ïä5—È† …DÖìÑ¾è`µ‡á5áI$ŒI$’„I$¡’I(A$’JI$’„5Ô1j©¼mùNû¢¥/ï{½FÀÞÁANÙ\"›S`{æZvD4ëÉ$N=Bó¹.¸9’ÙlÝú øš	ßP¹ l/ <è°ñ‹›ù*ÇÃ0v¸Î°Mô‘b0›!:C¶è}RÒN½L[óAb#xkœk;R/™‘ÏÞº\"ãò·NæÊ\Zžõâ.ÿ\0@löZ}ì¥Ôÿ\0 ï\\EƒY#EÁõå\r[‘¥¾ÈzÇ\ZùbcÝ9ýI\'èÄTµ\r…Ó>wÓDÛ¬xœ}ôØC‰²g‘ ¹{šÓ³O@¬3‹ã;êÒßäµ$–ÈªßpS‡2]wÔdñ²>:À\"dQ=cO‡Søþ*½Ž–²‘ÔÓ2X¨›‹„mfØhã{¯n	¶èrK†Ìì‚°Ø(1	ÏŠN<:-c}×³`\":ÑO5TnqÜ’ÒG§OÅSáZç\'Y{EÙ\'Vû­=uLsPÐËßµõ1Ù\Z¹¸çÐqÊ©ÜvL‘Šd”øtXcÀl¤í¶JLQ¬¨Å#\rŸAc/}7°QSÖ=‚RÐö[fÈC½“\"ž¦\Z·K­†“–-põ²YÉÝ²§J5;1X°çICRÉ™rK˜ÍÚ=Þ¯2õ›;\'œWI>í&9¤+,ÎY¯––¸>XÝ w±@sP’è´Oä¶\'µÁ¦Ûp\nÄÌo¡? :as‡!¦É°<ÔáÓ=Û.‚ ²ñ¹¾`¨¨\"¶3\0±:€û–ß#qŽô)™ÍxqkÚ\Ztób£§«u¾ÑÒj\rŽ@x÷ºš¦*j&F,dpÚ¬‡>JÄ9ú#§®¦ÔÉ<.ý Óü½Rï»»gDŒÒm%_?¨]™3°‘¨\rœ?\"ˆÚš58|ÃÈª˜Ù.PZ¨Hðß’<½Çš¶¦–:†Æv?z¬Y.N2Ú_æá±ä·OfLÕ á0Š@Žô\rÔ€]5¼)\0ÙB´=£dš,À=U;!ëx^„€R4*vA4_dà.W­YHÖ¬ÑÖØi+ÖŽ©í\n24¡H’ô–ÍyÊŸ\0©u4´r=ún×k>J’|œãrf¤ØnM‡š£®ÌQ×¾šfµŒ\0!uÅú_Ð®aŒö•ˆÔÓËO~í§‡FÐ\r½V6»ªtýð©/.;+l6á:l³~‚9ué|Q«ízj÷Böµ¡¶³HÜßÕUflõRúºjºIœÀ¦F4Ûpor¹u]s§y{œí^dîP¯­y%®7”Ì41B2ÔN[6vLc2\n—ÑKó´I!>C•MSšáŠYCxíZø›þ+»s˜Òù\rÚÝ _ƒm`qÔçrMÕÇB—%<Ò6õ´•p‘Sox@]ú>7:¦HK[­¶c-k,Ó±P¡·ßš{qiZ<zºû¢=4ª‘žýí–tõíÂéÅ,´Æ`|W7«~5Ið”TaÖn@\0 [‹Å+Ãec\\maqª±Á{æÉ &K²Ì¢á»[—qçÌ¦ý	ˆÆñ,”ÞÇ\nÉ¸ý}µÔÇì²»tp¶’£ºïêÏ/¿EÍäØ‚Ô?‹wäj>ÿ\0%þ%[OˆcTÏ¦’G†DíEí¶ëPG|ûÚ+E‚êÉ?b2³s½Þ¤¦´Ñí›KÉ#SI$ä;©°&w˜Í37ùÁCÍaüU®L‹V0%<FÒã·	Ù´ Ø7´Y»ÐîJ–µäj;©Áyr„‡wŽ:võ\\¯˜™›a³Ü\0ËœN×E“â¶eå˜„r®Ë°w	ô;¬Þ.™ÜÈZÖ€âï5¤©¾‚Û¸ù•ž ¦|\r2›‡¹Í;ù©\'î5ê;¢”s—¡QÚlúGtÐz¬“÷[ìïG†²(¤­®p{ÑmÇêxX–ê%·û.–¿	&-{¼NÌÚCk=Ø:6ø¼øY^Ì‹~\Z¨l]¨ìµ²\06;$u/ø¬^ {@ãè…©˜ÄEÆ«žˆ§¼X¨%\rvÄ]a¬~¨ñÀi7\\zsªg»ÍÄþ+¯ã.á“»k¶2Ç+¯ÓÒcº_3Ä’IuG’I(A.ÉöFŒ?µ¸þÅ„.6»Øê-}¡×>×Ñ@ïÄ…Ïê®´“úTW-~_hÚN\"?u‘÷ó\\‹¿roæ[íì_´¬\\oþoÿ\0ùµr<wÿ\0c˜$´?ýïâS08m¿*ÛCD\rÒ~ª®&kv•«®Ø\Z°lºZ—ºAó=Ñ[YÈ\n\0§¬  GÅð °øP’I$CbI$” ’I%$’IB	$’P‚I$”!ÒãiØl-½®VvGäðÍ \0_gßè‰¥uS£GTâ|‰Ùpå™÷#JÀ4…<,i»ˆÖYØ«ä/ÏPaGvýGòDÏ5u,FGU8ŽFÀ´D\'™z³E1/?Ù\nvÓS»Âè##ü!Pa¸”Îf¹$ÖÒlÝ…Ï¢µÃj\'“ULÒ2:køu6Ä¡ø±~E&™e\r(±ñƒÎÍFÅMÈ.‰¦Üz*ÜF»à)¾!Ñ—0››»•&\r‹|kÞÝ,aku\0Pç’È¶Òä± Öçšp\\ã¹Ôo½ü:š¢ÑêŒò.UWéO’¦0@à3©úñî†þ”Õ²Îýa7isÈÙ\r¸È¯t¾§Ë˜h6dr4Ö\nh2¦É51õ-æox?‚Ì’ÔÖC´,`‘Ö.lœ}èº|ÓªAÃ‰‘Î!ŒøŽöòX”·-(46Q¡™¡¢¢¡ºwXÙYÒå¶|tî«s™»I…º¾§’¡ý9;ØkiÍ0q-\Zž/¨~ÊæúJr¨g ‹‡¶ÅR‹ØÕc\\‡Ã•pòçI+çšgœéÒÀñî­hð™©êâ’:ˆÄ,uÜÎìÜínn³’gÊ8›ú¼:¡îþ\'€—Îòb85(Y} n¢âî|ÚOÈÔe4nØ6ßd¬Ø¡y?(ð“\ZâÛë)Ñ±Ö!Ä“k,·ò:kèC$WS÷rD{§ÆAÔ,BP¶¢26¼9òÆ47û¬¼eKbÄJÈßâä†l6ä•-sêà¦9#0´\\ÆY¿Ðù¡ºq¶aÓMþ‰aFñ:7ßv‘bÒ:…)ßERÃsã‘ÖqýßOdü:ªZ°&µ°Žnë‘_-méâaPšRýK¨M)^þ¤À€ëX•+Bav–—ªÃ€›G‰­|Nf£ar7[”ã»ä“Ü! )šÛR¤-šÓ× ‹ƒ²sB« æ„ð¼\nF‹•D=cT^0t\nV¶ÊˆzÑe Æ…™ÎÙ¡¸$}ÔL™Ã’~U–ÌNj\nÙOÚq¬Âj›KDE¢î/fäúz.Q˜qêÌZ ÔVÈ$’ÖÔ|”™“«tò½ïqä¸Ýgå~§þŸJä·8yóË$žûš^wY$íeìêÐï#~‰õ\Z<{·Ø¨KÎö§¸Â„¸òl¶‘¸í½ÇÑF\\mkÝz]±!F]·I\ZG…À4Ý1òyãŽÖQ»a~èƒ„¯iÙÄ5$UŽáÄ¼Šî6õLs¶6²§ËHÕaÙ€6\'Âøþf‘Ê˜E]Em~®<Ag›!i½ú«Ü»‹\Zz†‰$¼]ÛÙ-“jnÓqà+£–‘Õ­¨hdŽÖXÉFæÄ-íMSj1JðÇ×À>{,ß9ÕgHß|›ù›´¥\04ŸE¦ÈtÚ ž¢öÔàÑënVjQù-öX£îpˆ{8·Y÷)L«ÔGQ,ˆçñP9—$‚T²7OåFÖ’¯¿àBìŒ³kjÜ(\0³ö.þ.¶ïû‚­ ’MÇ’²È¦\"à“aº¨Æ4ÆÒÿ\0™¶óV8“­ó²¡š~ýÀlÝúú¬Én>†Rv‘•ÍýlQ¹×xmÝ¹TŽÞÿ\0Å_g&†â‡‘v¨a~‹·…Ü\\“ï•ŽŽy¡º•ì\'.!;ô•pµªçÕå@H¡*M÷Ý\n:‚|¢”l%ø~«|]GÑå0bø˜;WÏþÙZLƒ†SU	êêiÄ¡–k\Zî/æµ\rÃåðÍ‡R\08!zœXåÛÛ‘—–uÚsñLFXÌrVÌæ‘bÎè%×Fáaš~›Û@P;ÂOT¿ì…qê\\Fˆµ1\\#”¤ºV+…aPÍ9 €éŒ¸Û.lîSš}BÌ›J¨><Š|$’I€¢]ûì]¬ÛKo–ˆ½Ë€¯¤¾Äôí3æ*›x„q3ï$®gWu¤—áû‘o%õ({spwixÞüJÖýÌjåøyp]K·8ÇùMÇwÿ\0>\r¿Õjå™€‡üÁ+¡â€„~÷ñ*©m¨ù«2K£½‰·^ˆ\n‚MÂ²ˆ;»\r7=SÙß¼+]Å]KIs¶ôC+DØU^S8]Ä67qI$ŒI$’„I$¡’I(A$’JI$’„6Ô˜l¥ ‰\Z<p¬ §¨§qv†ÔN!úMüE\0oA¨Ü©#«¬˜Ø=ÁÃ{íeç2Hå¶‘ëš^îêxº^ÿ\0z¾Ã0ù[GÜO&¶ÖžX©h$žz¨£žW½ºïâ¹Ò´ðÈí@ZãÓ„N–ö=´4„ÀèØC¸:@#îQVÒÝ¶}k-ÍcEÜAàÛ^¨ÐCuHxê€Ô1•¦zªrç’]fòGòCË%²¢JT5³ç|eîÒÛƒo¸Ù\\a.–y0ÓÔ<‚âÍ¶þ÷*¯ÃäžêfL÷ø<@5ƒÛª³†˜8G.#Ý+[©í½‹mÔà—•&÷,+é©ªâøIe—\r—›Iâk‡Mü“+*±J|\Z\\3ƒ½ˆ°\nz†08\"î@ÆÚšºÖÍC[RíµÌF’}o°FÃY_ƒHÚy]LrüýÛ‹£w›NÖ¿¯²¸äÚ—ý„Rµhƒ+Q²¢\ZÚºš§Å\r;EšÝõ¸ð7J¥“9©ŒHÈZý=àiÒ¡ZjˆpÙp¶“ú¤.“[ô‹–¿ûÍädvMKL$¦øªø6‘’\r\0úÇ±W,©» »v¤‘ØeT\"š©•úå×yg¶Bv\'—sk«ŒÇ…â•-øŠÉp˜&’Ì‡Z7¹$ódè(ÁÈÅ=1Y¡ÁåíoáÞ¤­Îê§‚lF&esÃ¼,cwIþ±è•É8ÃvÌºŠ¦¹(!«¨†v¹ïƒ›0÷Ñ»>ÆjêÃ4xqa{[§fHÓûÖý¢¨sNELØèhðÊxjck]0j-ó?’—%ÐÇ+CSÞkzÙ»­FQ”n¨Î;Å‘$u¦zotæî¼·[õÞÉÍ\nÛ=*q6¿Td‚Ûj÷·ò@c•rº²­~™lbÕá\"öò(ª÷¹¸½DB’÷nïeu˜Ö¹·UU\r%N\'Y¥Ì×$wÇÀßæôHçžÝµvrµ.JÔW,ÙRÅ4.hXºÝ>•uÍ-Öv$ì=Uv\"v˜…™3não¡Ô”eAµ|1­7oV‚ëb­e¼W\r¼‡”ÿ\0‡¶ÁtÁòÓÆ÷/\"äµ([“¼™XnE­U0\rkx\0\'@A•¦áûƒdYA:°®< z‰‘¾WF\0ëcaî¬C€- ƒ½Âahp±.ki6!B	¦“KéËšFãê‡¾6åÊ¡VâþA1°µÄà;äTí	‘á©§cÂ|OŽ@tÁÜˆú\"©Gj4©l=¡JÁ`˜Û}þŠf‹•lÐæ‹)\Z	û]Q\nçEƒaÎ\ry20ž«†cØ¤µ³¾Y^ç<É7[nÔ±ÖÔÔ|<36FÄHð2ßŸ+™TÈK“\Z\\}Þó8ºÌÎs¥Â šWÊGMÝø\'Èî§„3Üç\0t¢„ÆÈíÉàtP8îz”é¾êîvEH£Ç“¾Û¨œí·^¹ÆÜ&8Ž«I1Ä[eRW¤ì£s¢Ùg7Q8ìœâ}\nc°Ûè¬±Ž>öºî¶Ý/ºöG8Q¹Ç­Õ‘	Îòd¥®.˜ò@L$ÛþjÒL×%îY§¾.7s£-öTSlâ,ÎŒŸ4ª«:ûÛt5Ù7êjÁ÷Ö$•Ópý-¦cIµ˜Ð>åÌI:«3>&Àx]aavtXÏŠY Y åÁ¼µî\0O’m¬\nÃ·7b,v®îÂž3¥eˆ}Ø”·Ù²ð¤lMýn¡sÀqmìGšÈÿ\0MjzÑDO£ÊaÎ$üô\rwúê}›/¡~ýúÒÙj£Œ¾Í7&Å=”T¬cšÖ\0ORnV{ÄŽ%4Õ]ßtfµ¾Vÿ\0šÓE¨Ãã•äÇ)o7Ø j=ÊLèCHc‹R¤îÌh-Æ\ZësY‡ÚÖ;ß•£ÏO?¤˜ÂnZË_ÌÝfÜNýkNïKXÜ‹\"X‹“¿&K{ll¢’G_§\n	I·Dî4ØX#¡özÝXÆÛ÷‡òW.§—ÎGR¹}1‰PÄb¤ª|L&ä7ÍÜÑŽ´ƒñ®6èZ9t9e7$Öà%§›m£¡\ZYK¯fíÎëÖÒ¾ãQ\0.w.iÇÿ\0¬,¿î´\0ÌÏ?¤g¿¸T´¼Ú\"ÓLè9–=8Ìh¿êœ*ôVòæ,bJwA%^¸Ü,A`áT§tx%†-H>n	ÙâI$œ%õØ™ á¹Œõ×ü×Ëëêo±+?ìLÂûs4Bÿ\0G.OZíHüHÆöãcÚ^?¿þ£ÿ\0Ä.O˜?±o–¥Õ;i³»JÌßúã¿\0+Ì{DËmâAÐÿ\0\'áûø}ïâ†ÛqnJ²<oÓÉVá¼ŸufûÛÝ5Ÿï¼¿[ˆ‚EÐ<«:±ÖÊ¹ÿ\01èšÓ¿vƒâ{PÄ’I0I$’„I$¡’I(A$’JI$’„:,NÓ1ÀÚÅQ…Ô¾Pè\'lBÖëº’“ŠH»ÖE3š<€º—ô½3mª9šOBàÏ³Ìæ´‡axLôó¶WÊÇå×Þêâ\ZgwÚÎ€=lXå×lÃÜV”U°O‘…À¤j¹Bk6[ISQN#€Ç»†­GblÀëÝf‘	\Zµm%¿‚±Ÿ§¤sY+f»…Æ˜îœÌkŽ¡PÛsxŽÈ†9nfQO’òüòSK†ä]Ž¾íwÝÂeŒÀCØ#ÒM•½.;‡ÌÇ¹ö–rãÈÈ1¼9ñ9ì•ïÑóµ¬»›ëo$7%EvD¬#1×ÜÓDZÛ0Úÿ\0ÁC€â1ÎÚ§wÁñ¦&LÐ×_OÍ[áx•%_ö{ÇS¢À+±\n_ŽNsÛ1á¥¤_Øõ@”1Ý¢Ö8ó`””]ì5ôØx¿zÒÝ°*l.¼wôµaâ›˜û§éßæ°ëîŽ~+A\rWÃ¾oØØ\\sÑ[üDÑµóH×4ù¡Jä,`¬‚¢†±˜hhÞée¸Î³N›õç¢\"\n§¤¦0šULZ¥1€	ûöËÈ1ì$<^¨ïÿ\0¶ïäŽƒÁÝ{qKx¬8ÃÔ2Po“-‰àµ]tò¶‰‰îÞÞÆØO<p¯)°JæâñU¡6HÈ\r³C@ecaÁÜí­î†ŸÁyhÂež8#’W¾GioƒªÍÁmf–,	Û‘x7ú\'€š)íÝ³¢¸1Y±µÎÌR|7|Öˆ\ZCšÂGµÿ\0‚Š8+ðÉL³¾^á­|±9Ûtâüõán­3^4h¾à¸‹{\'Ç3û§¸kàµ+,i½öÉ£R›““M™Ü1Õ•P	h%Ž@<NñYîúžiÞ³U-Pï™ &9‚Än±<HauGð\Z™7†73k¿÷moª4ÖéŒ¸„,§!Ök\\íW6¾ËbœSÜÔ1(Ü;·/Îl.vò48Ù@\0`6\n¸bT†v5€Ì÷£auý.¦¤ÄY=|”m†V¾;ë.¶ÈÑÉæ5âF÷as=ì\\q‰,nF«méê•$®y-™Íy»Yä<½J{‹i}®M…Óû¸Ÿg‡XÜÐû©+of[Nö$c@ÉiÍûÈ\0l€ßÑÞkÆUÓ|Ðö’&ÛŽQqYÀ9¤wuTÔ\'\Z\'»4yO#diwPQ-I‘´pÊ™ƒª¸©%ï\Z\\nz‚¨Î5µ4\rEE<mq\r³œçéÒ<ý}•È›vÁŒ÷l|3–†‹½‚Ö\'Õ][ Z‰öclå˜¥d³L÷ÈîIáSÎòw$)jä7$•_<‹­Ž	*8\rî{;¯µì¯6àÝ)$½ÔNwPBalP¤u¯ÑDãÍöIÎð£&÷¿â¶‘\\n˜ó¾É\\®›Ñh±Žq=xM7·+×~i„‘ÊÑ›†„ÇpœïUŸÎåBÆÈ?yFà.S‰\'r™[«F¨aã…ºyw)Ž<-+,`½·÷O|ª\'8Üo²AÛò£VYëØAµ® p7êoèµ9j OÃxI¸#u|ü(ë³[›~mÀIdÖørq’\ZÃ§ŒÒnTs7jƒµ¼ÔnÜú-Þ+E|#î£.¸±-º² Ãè€šhHÀè\n-|Rº	—I(.è»G,wU„µtz¸i#¨•‚’\"\Zë\0Ý\np¼:¬5Ï¦`q>-;+ÿ\0P‡šfþÃ“±M™DÞ–[‚lñp9Zøªà|aºËH\rwD‡Òaõ%±7LoßÄâI>ÊÆ*x¥¨‘Žkš¿ ¥òÎ—p®§\'t7¤slÝ©Ø“®×TŽò\'EÓq¼*ï†!§Å ÚÛÙ˜ð|:BÛ@Æ8ívlSØu1ŒTZ7,Ë,ãÚ¹ÿ\0ÑÎdãÑC#NÆÇê¶qeÊ\'Âd&÷6r¸þŒ`±CÝN\\]Ô¼£ÿ\0¨cƒKv,%§øÎ\\yIt\ZÌð˜(í©à^çŽ¨\\kÁ`•ENÐó± žODeÔñ÷(¤ÍãîšN¹1	«W6_£¦|rT:WDó»C¸DWá8DPÆ ¾1}Z‰6Eûv7º.Ÿ|a\\˜Ä–¿Áè$t½ä €ÑÔìŒ‹À„O|Ñ¹¡ŽµõÏ¢ÄúŽ8r™%qÈñÕ´aZ\Zü2‚Iûº(åˆŽuº÷UrSa{Žî|‘áª„ÖÃM’­¯¬~ÄÑ”qÉmóU°ºWÉÝØbÈ´öuˆIÕø‡äÐëOýº_5ý@GâG)íqÚûDÌæõÒÅsÉnî;_Át¾ÕKž±ò8„¿ñ.e˜¯¢;›GòXÐóóÈçãß/â\r…‹´›Š<_©áWaÍs˜âÛìU›\ZD{îBc?ÆÍdø*†öUµÄEc8$•_Qó#éù‹’‚I\'’I(A$’JI$’„I$¡’I(CqAV0×¹¿4nF÷Jj©fÊàXßÙ\0tFÕÃ…Uµ‚Zöêh¶ ÍÏºž–—	dÓ±\rmè^yÂÖç5Á²¢§Þ9lè÷Õ“²Zh]IsÁÔö[IóÜ3%¸“›~ˆª|7Ä‰\0Üíd9CÐËƒ!¡Åªj-D‚ìùÁöV‚W½½Ö$Èê›¦Ì~‚É±\nFReýMp«`#­‡òDMK‚ÎÆ0â®iúÜŸ¹+<sî¸²(KÔª¡nš³J^[ÎÚ·¥ì¬iÝ=;ä‘Ým%Ìˆ9¤}Û)aÂð@àN4ón/b¯™&#\ZßÒ14í©ÍÔ=Bñ6·3á²–ŠºzwGJâÆÄc{Ø7ÊÃ¢Öâ¬á±MS8¦L–&—5¾¤rª®~€LòHÆÖ¸nÐ¾pjZFìR9ã;\rgp<½|6•Ç­3%ŒÓUMŠÓI‡^¡õ>\rÚçt{O‘’¿Ã(ëq	â¢šg6@I=áã¢²Â(°*:æUCŠFÝí`°\nî‚†úJ#+¤K…î±8^ÅÇög±¬#Šfød‘­\Zo¹ô°Q¶:šWØõ0ðf„ºû­Ž pjè˜ÏÒ­€µáåñJCn—ú¨ƒàrGÿ\0;Uî]ÞÞþà“÷¥ç…ð‹ž•Éû¿¸6_nVKçRÔ0üåÀ5Þ×áú(²¶)ÝTÓ”¸FÇß~/`múvSÔÖÑÏ8 ÖÇñV‘Ã„joÃØt‡xA8*XŸ˜hivIÕ–€nS‡E*iÿ\0ÓÇ¿÷”{n$e½Ó.Iptû=V ÚjöÂûisêzñôU•ÐÍ]=3a–7‚IsŸpïP:+³– ½ò1Ñé1–Þüïuäx|\r{„mˆ0¶Àh»÷¿‰Øòäµä)›L‰¤ö+)Äµïâ¨¸HÖ8îÒ:‹¡ó]|ï1@è»¸Þ\0õw[•qJÉ;ÖÉ+d¸:šë~éi{Ý:ŒNÓÆ¦]8³ÅWõ39c®ŸæQRWáPSÃNèd¦17GyNâORN×Üßª²Ã«aŠ® \Z¶N[½zÃ¯ép¬éã{As~¶ÝV¿/‡WMRÉÚÁ!Ù‚;%µ+¦ùü?Æ\\±åŠN;¿È¶p†¢&T\0áÔÛï±ôóM51áø{W#Æ’XÛ\\\0iô4Î‚1žÖü¶DO50˜f¯ÂÄNO¹ìÆ©¸ß™CIIU‡¾I³š–ÌIžÜî-çÏ>kCO@‰é¥¯\ZœÖðÿ\0§B…Â°ß…¦}+åïa\'ÂÒ-¥XÒB!C\\OŸª¨BQ|mýAaÄãå_ßþÈÙQ\'y Boå}ÿ\0CEQÿ\0FÁëºtq0I¬XÛª˜\rù+0Å“ùäÿ\0\rƒö¿6FÏˆa.‘ñ¹€_`A_<gjãW‹ÔÌdÔ#ˆ.ç•ô{F«=—Ì¹öÓf\nØ˜öÙœ.ÓpwMéq¥“‘\r~ÑFjª_T¯¿[ýê]¨ß’„‘Î¾ëµrù={¯¿’‰Îå6Gu²‰Î¹Ù\"P÷;§	—6)©¤ù[Hƒ®šçm±¾é„€,šçr¬º=\'nyQ›rOD‹€Üî£{¼\"æÛôP‚sùQºÝW—:OTÇnU–\'§cè˜çl,¼}´õL{…·;«F“ª7Åùô^½À7eŽ÷7²Ò-+=u…Î¥ëâô÷Q¿©ÊÍ-‹¼¢KñÈ!\r/u&Âë¬Qà•†žú)\0¹yEÃ`ðÌÙcqkÚAy­9Îì¤k#™í-ë}×;[¥žY\'iÕ¦¹7‘á­ª®’Pc.¶ÒN÷UØœaÕ—Bð\Z6kEÅþ‹\0ìÃT%2E+ØM¸wæ¬†w¯Ñ$~¶É³‰ä KE–½MiÒÇ5\'eœr—<LæÞæä=<m3¾ÃK-sèpºü/k#‰º% 4ó²šVü\' ]¶.\'ø MImTÎ¼óÃ*÷6hŠ2Êº‡ˆœ…˜]æ½¡Žx+m9#SNþj²ŠG´6H|NióV•ÀòJâæ\rÃw¹òZwÜ/ž+V5º’ü¾`5ŽÓˆ\Z™Ÿ¨·åhè‡™Í–7O#p¹\n|R\'9±ÎÀN±½‡\n:ñ©!p:@Ö>k1Êå$|1ãÅ=ä¶úP\rœgi;z\"ñröž^tk\"¤¦§‰ÍD^þ¦ÿ\0*lua¬qpŽ3ÈÚëmÉIYKS‡U‘5=A`‘³–iÕó[„>7‡ÅUW.ˆäÖ÷¹ lxCY4ÎhØ4ìŠ¢BÌVV?`NÊ,’„Û%æÁ)Ï¶>C1J6Ë‡Ç‡˜Î¡eHc’JhË[`×oü•ý}#û±Üx~kBŒ3¸{XÆj6Ø?4L9Z½ÉÉC¶/ÞçèWað8Ô0\0Z×¼DæÂé*å{¾V¸Øz©[R\"­tnÙã’xCRU†ÔI­ÞOTGß&ßÈ-dŠ”—-Æéêvxi°UðáU8X—‚=•½$.|55Ûn\Z|ýUn ×ŒÚ©àVNiß¿³óBù²Ë\ZíÉ½¸_h}Ž\"ÑÙKŸmä¯y\'èÅþ‹íß²,B>Çiûõ“;ñ®?àGëý8|hà¤<Éœ1§Í|öÿ\0l®o˜®¹];yq?5dçÿ\0ôrçùi’1ryå^‡âùäsð}àÌ ~ Ÿ2—ÀßuW‡8í{or¬¦u£½ú#æ_Äf²/y€ÌIuýPU.ñ\0Œœð@@Ïó_îÝ1n$I$MŒ	$‚JI$’„I$¡’I(A$’JÕƒ½*xÎÜ”;ySÆËˆÄØC\n&\"|Ê¾è¨ŠŒ°†¸íÊ®±C°î¦Ù	™aQ8‘Ê.œ½PQì\0êŒ€î\nŠÆè–¼í¹²âD3è—‘–XÓ»®¤l.>eWÓÛJ>žè¢Ñe™VäÛÍV@~Ucß›%äq¹ûÕ”³mº¬¦ ¬!µìƒ ˆ±§¹·º´€ØYK¾åXD|Cd&Â$Ùá		ÚÈ–z,¦1îÍÊ•ª¯u;-{«LanJÁÖêF¦1=«i–JÅ#BcTG‹²0nT¬UeÆ%Â;‡±‘–IpKïÏ’\Zƒ7FöŽúœx1»ø,Ð‹¦kZ€Uôµ\rfÑJZzk\Zoè¬[Ê«O€ŠI«CžáO‘Û†´’¾dÏ²²¯0VMÐ!u¶ëì¾„Î•¿—*¤l±Ç+Û¡šÍ\'¢ùÏk›Pðæ‡\\›ÙÝ|‘4Ïø—èsµïˆ™©£:Ž^dÛ„¶Õ`ÒJº«¦,±-Ó~Iw\n¾F5ÆÍk‰â÷]hM3@,E“¯}÷G6_ÃCG6N’;‚NöãÑÄH”V˜œ[ÉßÑFæulÈCÎ›_dÇÒ5 \r*üd_m•ÉFwå< l²V€\r®‰Ù(‚GÑFçmk\'8ÛöTFÜÛ¦ëdóÛäTdísÊõÄÍÔD€/n‘£Ûô*7:ã„‹€Ü¨ä=Ò\"ByÜl£y\'„œSïî­lm#Ç{ôM]×±ôM{$tôM$íqeti#ËîR|¤7O	ŽÙÝoÝ¶½•Ñi\r¹#U¶åxç\rÛ¨û¨IÛöxºcœÂ]`A[HÒ°Šjù©ª\ZøäÒæðB»¦ÌBHÍ=sûÈ_óßrVQäj6ç¦êEÈ>Ê=<rrmBÎ±ÁH RÔjŒßÂá¸\nÖŠ*Y±4ê$ø­µ¯Ð.c“ñ¯…©Lò#;%²v!\r$¬¨mC@æÅÖ¸\\mF–xòî2àóbqn¤¸=Í‘˜$Ã¥¡d€F7sÏU‘­Í5³Jç˜¡À\0/²÷=ÔGS:xœÇFÝ$¬ì€‹Mïm“ºM%ÚÜ_Iófž‹9ÔÃ~òž9/ëe!›ýFšœF]³uÂÎHÛ6à¨\\–ÇÉ=&îB	O½lËÈsEtTŽëµÔX¦d¯¯Ð]¢7—F,Jªd3¾Á°Èïf’”Ôõ†ºh%Œ;‚æ‘tHé4ÊI¨«ydåÜÞæ—Í®¥¦lUP>¡Ã—ëÜ¢ÿ\0¥ôsŸåÎßÄàmè³™f‚<O\Z§£”¸Fòui66²ÝŒ“‚ÛŠöÒ:œ:<S©§o}…g’tÌU~:ú™L­\'’JZª7¸£‚Þ;&`½>ÿ\0û…4äì››ÿ\0ì+pÔé\"©GüüÂK]Ýtbê1ÚÙiM;tDÃµØ,l„n!R\"îµ2Ö ‹­ž\'–pŠZ	çlRjcEä=À¦ôÞH¿4‰\"št{Êû¯ìµƒ±\\ÿ\0¤|²}ï?É|(9_ýŸiÅ7c9q–µéK÷õq+›×_ðà¾oö\rãüÏ•sa­yx»ª%#êò°9“ûh¼WØ­Æfqu}K¼äyãÔ¬&b7¨ØþhÚï#›§øÁhÝfÛÕ#É£¢·a6ëÊ±t F5p™Í]ár|@ï×¾ê¾R\\ó½Ñ²î4ÝàCˆFÀ‚bCRI$Èq’<$¡’I(A$’JI$’„I$¡\rSÑÔ\råO†ÄßØ…<}\n§p‰€±#$ñ\"#å\Z\"1Â2ù	aêƒŒïÅ‘q;n¤SA‘Z÷DFîÑt(˜w²Œ‡S£ ãò@Á¶ÝQ´æà L²Æ\rÍÑð»‹\rÕtUaN@d¼‚$YÒût$jáLv„t?2‚Ä³¦ß{ì\n6œ’þ,4ö°¹V| )H:Ê)¦Û!iÍ½Q-ä6‚¹ÙÄ<dÂ&;‘ºÒc1$¬Q+âh•¡JÁä£j–>Bf*‘\0ñì*_–Š`<Bìu¾Wt!rhðªè±9ðøÌÑT@5<;akìG¡]­g3¶Y%#«ð¹»ªÆû ‡Ð©t)ªÅk½yˆ«ñJGY	–6ýëW—3c@\r|Žž.­qñ3ÙTÐÏ=e(5Ð±²´é¸1ê«êhpÚLF9j*»ˆ‹µ9Œ>\'ú/u‡B˜å8ËckdƒÀ™QÞþ‹ù.wf¤†´\0Älº–aÆ ÄèÌ·D-m£\rà‹—âJj\\ÒóÎË:YûÍ±V\'VRÔ³Xv½·¸BÉ\0ßw5¥Ãðš¹¤\rdN·¶V.TÈâVß¨NËUmbqÒäŸÇSÒ=í¹V¹~j‚Òæ<_ ­öWÊo¨¯Ž‘‘ƒ#Îî<4u\'ÙXçügÊñ+\ncd˜6ÒLl\\÷uö‰LšùJ]¸ÖçKMÓSß!ƒvIBÛÔ†³n*¶¢\nË¾Ì.è¡¯ÅgªÕ$Ö7Tï”8¹ð8‡·}¶FÇ½ä÷›8*Š\"Ä!9íuƒºYTÈç}‘Uu²Î]Þ\\‘Ô ƒõW[\nj;œl‰^Àòî@¶ýPïùnm÷£dhÓ°ò…{n}“1:qù¨žàÊYAÖ²÷7°á$¡?qnª7çùLw Z4‘ãÈº…î7·óRx¸*]×ÉZ.†<Øû&’/¾çÙzN×)Ž+fÏáDÇ¸qÏ	nNÜuQÈA\Zy>Š$Z!‚Ò6·²æÄz}êG?mö²„ŽÚ‘\"$Æ9Àí§ñP¸êØ¿¢{‰\"Àn£qs÷ÌPx£Æ<µÀŽAZL2ªFMRÑ­¢Í#•š6è‹Â*þº9¬ªÎ£|-r5æ_©êïví¿EÐ2^TÁê°*ë©óJK·yÞÁa1G‰ë$Ÿý!Ô»Us—èZ·k.>·$ã‰vºbåKb¦·Àèjã‰øm+ñótéâÂ\"¦ïé ¦sZý¶!·š¼¬Š\n‚;ØËÇ@FÊ!OqÇLÖ´žv¿šç¬®•·ù‹©z•¸\\´5ls gÈlnÛ,—knhŽ‚6¶Ä—·Â60,kAæÂËÚàðÐíâÝ7¡w¨ˆlxŠ>Î\Z™â¿F8þ©85†ÄØÛªå½œfˆ}XïÉu	{§¼ÂO*/Sûÿ\0ÀÖ§ï¤sIä}ê79»î7õS:(ïò5DøãýÁ÷$@-¹ éÀêÍî;¢¹Zê™¾ÍÀ*À2¹ZîôÏ»Qí/ÂÏ[È_¡ý‘°ÅÙ.\\éÃ#$ªJüòˆ#A½‰²ýÊŒ†—³Œ1´ÅÆð¦h.äŽê÷)¾þõþƒ˜þ/Àø³•²M#¯Ë‰üV#1<:©–7\ZŠÔæšÙ£GOJ4~Ûú›ú¬Æ-M#Ýžøx\'tÞŽ¢Óg7ÒM€ÒI¦àŸP§¨ª.h»®¡m;têtìo¦ê\'FÁ{JÓô)÷JV7Û;=3nSnI^:R²2Š\\I.^•âÑ¡tI$” ’I%$’IB	$’P‚I$”!©Œ©£áAš™œ®|3ÕNÃ½½¾È†ôClÉ<wÙÞÈvmÂ\".~ˆR2Âbò<¢¢$Ñ	2=¬†ÙAQðŠ‡ÕÃÐð‰§à%äPt6„l7mÐ0\\YNz HžE„…aÛÕtföGSÞÈzcv€Ž€Ü…_O{~ˆø>`Rò6‹8O\nÂl6ê«b$ê€@y¡H2e„ÀSHºt\\VC6žäñópŠ`Ù\nÎQqy\nÖû!¨|Ç…3cZ9R±3MnÍ5>2	Ø¦ö@Òl¦LÎTšCšC…ÁAŠ¸› Ž÷G0‚Ûƒu”Ó*2Œ¸09ö–· ž³¥\06íoîŸ5Áë±šÊŠÇMS3ß!v÷çþKëYàŽ¢­i ¯Ÿ;eÈòáuOÄè#¼7{GOT];Š—l¼Î~£ƒî\\`8¹šÄ]Ó•GCT­.oˆþÐ\\£¯|4X]u³ˆµú	wâ—ÕáxÄwK5‘TÎ‡ÁKO³ZãÎãucã›4#+Ãßkªg”¹ä‹“Ñq÷“ÜêÆ)*\nÅ1\'à™V¿¦:jeµ<N·Ë}É\\s‘´¬ï«$tÕR\rFæä{®»÷dàXÒ{º€óoeÇñ“5uTyµ×K§Á;l¼÷vMa¨Ôodu´ït„»` §lû¢kK¤½€UENø!d2ÙÒ†ø½\nëçJ\n‘Å„å7¹V(u9Ä4ÙWÍOÝÈBØ\0a$\rÂ¤«‡Æ|#•Xs» 9ð®QFàtÛþŠñ=ÜB¹î\rì\0?DÓ\rº&–Axál¢|\'O‰¦ãp…’#n/è´FÒoè…’6³n‰A§†ŠW@v)¯Œˆ²´‘¢ãaü²‹‡Þ‹ÖÊì¢®PAÒº„°ÚåXIÕº‚V8lçDÄfŒöÓx±Q¸sº68u¾Î-`’ŸW®5lÐNä{-9ùÑV>kôPÊÐd¶­½QOh`7ù‡(và‚	Ýn;—DsîHJ¼±Úû\'¸¿U¾oª€›\\ƒdÜ ‚Å!=ÁÍÛÏÍFo¾él¼úÙ*ƒ%BI$‚Ùe´E²À\r¼MËµ`@·¢Ñ å¼õÙpÌ<Ù®®á¹‡¢qŽàBÝúp¼ïTm/™ÏÔ%h.AâÞMý”e¤‚;Ç}ÞàömõQ>G—\r!£è¹]±†6‚§_È•ˆíhÑÔG¨”ÁmœÝÈ.\ZPµ_D:	ßÙ? ·¨ˆLxŒßg¦Ù¦ŸÚïÉu*‰$Òl-ä)ÈnÓš¨½\\Gà»=¸LõWY“ùÔüev‰KA.;‹óºc¢–æî¿Õy±wd¾—ÿ\0‚QŸÎWn]ªi;–®Zº®z÷~«ü?År¥Ýétþ£º_…’ÒU‹^î~ÒŽã³xì4÷x?qhWç^yˆD?¼?5úK„Á¹j’švÆê8Øöž\0#î\\Î½/~äÿ\0 æ=ä×ÈøK\r„H.â.Ö˜«sœÝÏªì}±à8NžqJJ\n~âä¬$7Â	ëšÖáÑ9®µÖ´ú¨4™ÍŽ7LÆÎë¼‹(ÕÕV¾\\Ò‹‰ÀxŸ÷®Ôu8ÔluI$R¤´lÀ¡6ñIô(Ú\\µA\'ÎùÏ³åÔpÄ¯&=%¿‡\'ao62Ôÿ\0´?’˜ä|(ì\'ªÿ\0h$?õ]:õüŠñbs¤º­ü™\'\nšŸ½¿Éü›FÛÚ®£îK©éß›ü‹ñ\"bRZ¹r¥;xª—îYrälâ¥ÿ\0ì„E¯Àüÿ\0Bx‘3É+—àmnÂw²¡~[ÄÄÿ\0ª¶µXŸ×z+F;{oúÁ÷(K åÍDY`øeÚ I=ñ9¼‹û&tÝ;,Ô3e+9²‰¼+9\\F(ÎŠxöì.§g !³,DÃÊr7DF=P¤S\n‹tcPQuEÄPY¶ò‹ƒ„9÷ECÀA‘`uÑ°X*è\rk„dEÀ„´„ì\n>œ;auYO}W\'¢³¥è—‘´YÃp\0º±¥è/r9UÑ›\0Ž§ycCˆ$z	EŒ Ü#àd;®omº#àÜÐdç4d{”-#â\0ú+H!kEÎåHb”ÃÆ.C ŒŸáÁ¶Ê6)YÑ7q‡	R¡íà\'±0p$™ iÔ=UÊTT¤¢­“²HÜ<ÆO£‚»øKÇ0\r=¦à{…ÌðÞéi¥Òòwe•“«ýÜŽ.csu•sG?&­ñG@v%¤ð<~ªëÅØí0¼B¹]%\\²’ÝBü‹y+*\ZÉc!Xp¡xeqvŽÂÂb\n2a±bXlJÀàZy\n/ãÂRØåwVÕ\r|WBÄ§ks¡ãG,Ÿ(v…—%À1g>&8S½Ût¢2v#¥íÎ½UÕûNÁ£Äi¦k›Íì@ê¸\rFŠ:	|.Ö÷	ÜrûF.×ÊÃ?Gr¡©2DÐ\rÉVt”Ýû¾Ë–qa+ã÷].T1ì\ZˆÝpµxÙè±MMYpp¸j0Ùiec\\$e­ëæ¾zÍ´\'Æ* ¶×¾–§ž=Ø[k®;Û&_Šº¶‘†FH<VÜ‚¯A—·-?1•R‹Låxd?lÍ6\rwãæ·L£ŠñHíÉ+?‚aÕ1¾òDö›ßqm•ÝlåŒÒJëêgß$‘ÈìJN‘D€7a²ª©Šäž?51”ºK›;¬ÞŠ£q0â¤À^ÀÀm²\nB.Š&®BUsMbEÓ0M˜—lxûû¡e¦ÉâAæšç\\Â2Li‚É{!ªæà$TúÅìßÅ+¥±:mn©¬JÀI¡’j$]9±¸ôºò™Ýä…§•fÊ	p¸ÜÙRíÙƒmt±E$îsäc\0ýîUÏ‚1®0éFÏ-Ø{#h°§:Q¨/tEN1cšXò	Qå‚–ìÊŒŸ.{™u\\ž¦ü!ª5[Eº’­ñ,2¢¹¿/¶êš¦ž`w¼\'±J2ó6¢5ÎãkuB“µï²\"[éÜ¶þ¨sÑ?€ÐM-Æ¤’HÁ’I(Bz7ón¡wl¶rõ°pî[{ŸEÁéÉ\ZÏ÷JîYUív\\ sµÔ‹YpºÂÙ1_(´sd±HÝA5Ç2`¤cÄI×ŽNÑî¸hM8nN§i½î°ý¬µÇ£yÂCø…ºtD>î?Kì±]­ÿ\0åT÷ÿ\0M·®Éíÿ\0q\n…ÿ\0ìŽ/šhÆ%ØÃ_ûÂÞËŽdclÕAþ;~°I8k‹tÞÞ©®­÷«èUñ‘¸îo#E“Hqá÷õ\n7˜µÜÂÛ1u#dŒ¼5¢ÞBËœpg³ÛHË•[þÈßê+êº§heº£/Ì.WÕwúWÝ?¨î›áeŽ\\Ø½8èdhüWéEÑ†Ó¶ß,,î…ù»”_Ñ´êƒýà¿Ia¦ŒŒ’ãuùVhýðüLù?·ÚF6/þ|Â:©nçÕtÙ^ÚN:ùD~a*Zt”¶P_Añ2‚©„Lˆ ŽöM¨a2ØîŒÃ™c¿š~s÷¦öŠ›ƒmý”Ñ@Záaº:š\0Y{;`ôÝ æbü`„_è‰×¾ëÓ‰y#<–²Èf’GãtDÀƒd›<¢$B	Iº\n~š*nHºc±%%‚Kr8BÈÓä‹‘ûÜ¦±º.Àåa±BJÛ{£eùJ\ZP¸ØD#M²VØ«\Z‚¢×¸Ù;Š^FâÍonT­ÙBÞ¬\\Ápˆ÷\0©ÛÈPEÓu3,HCelÃº—&ü!Ù±DF7C‘€¸J*/àƒ‹Ù	Ah ¦ùEÂE­t7r*;·˜B‘A°ºÏFDNÖUðîtöKÈ²Îœ^ÊÊ“•Yµ½)õKÈÒØµ‹¥¿aFçØªØˆ°;«*CmìP$0X\rî¾Jù\\v`;Ÿ4Hê‰.E˜9wðZH\ZØã`°\nCvï¼Xû·dÆØÆ–‹~jfôQ·’¤je*\Z$b”p¡b8ÝeðBMÖw0w°¼Ê$=7VòÔXóeUŒÈÙ£tE Ü\\’.‚Ý±ù•#\'Šãå$åµ1;ûØÎþ3½üÑÛ˜ú·C…¬6ÛÍV8½›£E#œÞäôUEq+Èå×xq ¬­M¬%oA¸Fá5º¿R_kð·(Z´R{ššZ§ÆAkˆ+Q„c¯Ò#{½V)\0ç{\"âœ4‡_t´â™´ÜM¦7+*a¹±ºâ}§àîÖ+©ÛrÏšÃº#qí‹ïº\Z‚:ºbÒ/qe0Éâ•…R³”e¼HÁ+Z]±+ªå¼]¢6Ýü…Ç3\r¸>,áb#yÔÓåè¯rþ2ZÆµÏè˜Öé–X©Çƒ¥£Ôvºgi8Á1é×·º©­¯cž\\âGšÉÇŠ’Ñg=V#©Ç~:f™Öy‘kŠWÆàë5 Ÿ ²uÕÏäòŸWV\\>m•dÏÄòºqvò)’vO¯ÖÉ²ºàîPñÉwlSÜG$ôá1@ì±Æäî«\'Ø^ûÛeePA°ÙVT\rŽå1ŒZ{½€¦µ·¡Åcµø¬¦™£p‡ž­mïgrŸÇÚÖârÙ’º²àƒ¹ˆXj!ºžóeR ÔHàžWCìc/ËŒãò£2|<Eæãa½¯ø¬êgÜ×‘¨BStZvkÙ„x¶\"É«¥ÆÒæ7aìº†eìÂ‡¹kivÆ‡E¼É9y¸U	sÛãväY{ŽÔ€K.Gò^7SÔ³eËj[¬\Z(FòÜã,ÉQaò9îÞÞhfŽ¡,h_…Ò1¹#4DðW4Ç\'·x},‹6LŽäÂ<0‡ÂsÜZ’##‰°7YlBˆjq&ÁjqIG~ðï3eIY+Kê:•èpd”hK.(¶dêéãc\\@<ª©¡1‹“ì´•Q¶äÂ©«UÍ¯äôzl»	¿u•vI:F–ºÄ&§Ó³BHr’õ ¹Á \\“`¡DÑêï7çeÝ²‹2Æ×0¸[°\\:f64^æÛû®é—7ËÔ„‹S²Þ».V—t\"þb:—tX¼ÆÐtAsêPòrâÑ¿á9ÍpÜ¸|ÊÍhåâÝvåpÒ7\Z¤ùízÂŠŒ_~ðýv[÷>=š9ô™ö½P[GLÊÇ<~ý6-ê\"\n¼ˆÍdâf $ÿ\0°J/+·°ºãYiÚ3¼§jìÓï9·7èžêß{ MWÄ†>(÷ñ8Ÿ0ÔÃ	ÿ\09÷%4$´½Ã®É…ÅÄ!ÝrÕ‹”¹ù ezŽv×÷•u][?Ûú/S¿îþk”ßé_tþ£ºo…šÏâ2æœ5–¾ª¸€ÿ\0h/ÑÐ-o~xöQ“;à¬6³«¢ÿ\0ˆ/Ðù?hç½¡Ÿûˆ¯—õÁñHùµ«»´\\yÜ[püÆT\rªÚv®ùDÇ?ÖÝù¨r³‹àÑçË)§­éÂ3gŒ,ÃõÀ£ðæøÁ7LÉû¥¾\r-Œ¾ÈÆÁáQP‡ª²‰—HIîeY_$ÐòFU¼‘¨)¢ü«‹4·*çeÛÓdì:Š¶ž0™›‘¢ÈTÊÃrƒ˜{ù«9›ÊflnîÀ¤Yè·„4ƒ{&±³Hâ×öCL8E?{¡¥\0uMÃ“J¤¡fmÚAFH†”\r7)Ìn¦[·…;. i°âêf’\0B\"w®êfÛ¢3À }êvžÙA,<\"\ZPÌ7\0¢¹C‘‹	aè‰ˆ‹Ý	á®\n(.3dDDÁBe=;…Ð¤Š„ôòGÀxm{ú£¡éæ\"PB°¤#PU…1%ÂÉy‹-¡w§_5}Q>²[qùÐ*ŒŽJÊ†CnIÜù2ºK;`‰ Éó>hQ…½Æ°cîvø§ÆØãkG\nfpTlR3ª3DÃ”æò˜:\'³•EžË ‰—¸WLïµ7ª1\nþþ»á`\Z»¿›ÊëÊš‘<Ra¾û ÉÛËšÝ É$ox|W²Ïc˜©†9œÓb\ZwDMˆ3ºsƒ…‡X¼Ë[ª4;wmä¤#lK$Ê‰ñK‹>¯¹¹u·^2håg„û‹î{ä·ª„Lcv¶ø¦»6Ø\ne„¤5¤\\ªó!‚{ƒmî\n#¿l±	\Z,!XÝq[ù-Cg¹lÔÑT¶xY  ’7E´’ÊeºÏš_p´°È/tí•­ È¶7u;öfåšÛ¯f‘ÂDFc8áqâ4Žm†±»Oªæ”³ÉKTè$»^Ãbd¬Ôî\næ¹Óïë]@Àâßœ4rŸÒM;„¸\rÕ2j\\Dé#è§øÒAñrNŠ¨Øßb9ÊŸ]•äÓö³£íò[>£î¡|×ë·¢¾»M“D‚Ë>§‘0ÖIÎÿ\0zy˜m[*Þø»ôM5\"îWá™ï•û”¤Xßdîòü„º$cFe/B94†“qétÜ$uîˆ®y,\ro%Ø\\ãÕ3¢·\0¢äì‘€ma²úkì‘¶<ÆeeÍDÍ†2GF‹ŸÄ¯™¡6¶üö×aØK°^Ì°zY#šHÌò·~ûý,¸Ýk/nßV7§[Ú4ØˆBâÑeÅ#3Dq÷­v<àÊrë²å9Ÿ57y’¼¶(9J¢v1´¡¹cÓ@çT=Œ†’¹FgÄ©X÷µ²µ]æ,zŸŒºy[säí‚äÙº\'	œúyÜáäJô\Z\r/s÷	gÍ$ýÔGˆÍ®rö8ª«ª—bê®LBhd´­#ÕÚ–LÀðA¸ö^i^:ôŽdß¼2W}È\Z–4\\€Œ‘ Ÿ5­>ë£×yÜ©ž3#µlÐ6ÝBØ\\ãfîfæ0ò>œ)¡‚Ö\0$ßŒâŒºEkh\\ZmrmÀKƒå\nØ˜Êê¸ÜÆµàmèÞXÃbŽ™Ø•S‰›o™_Vb1Õ`²ËÃõFC@èmÂâêz¦W%Ž]6y&ÑÈq	q°Üž«¸e­-aåÁû@Ý‡—Å\"|/1HÑ¬Æûû®åƒ¹‘`4,sš4ÀË‹ú\"u7ü(~\"š˜´’kr}Ã-t¿DçXŠYHß§ y¸r ŸÃšÒ\rCO²ãv·ä*“$˜¹ CIéeÈ;E™Óf™îvcZÑ÷.—>3I°Ô÷Æ–•Î3ÜMŸ’¾ˆä\0á½Âët¥Ùšåè3¦MOr—!¸ÅÏI›ù®ÚöÆeqq°û×ÂÇý¡$xdî+§I˜œ_wQ³ï”ÇUƒ”ã^51r’¢ñícŽÎyöjn†\\uNÌÆÆmð†ÞAÉÿ\0ÒjsóA#Oî¹~ý»%èÚ€Ë3Ž.æÅrÅÐs¶\'~ø cõ—‡Žsû%ÞéŠ°»õÓÅ¨în;‹¾íe¯zèÿ\0â_ •cî¿?{–*NÑ0Zª¹;+ç½æÁ É_yœ[\r¨‡½ŠºñÃƒÅ¬¼Ç´Nµ+éýFq4œ¬ùWµPÚ7a·Å;ø,}Hú-giÕÉž±y£•Žcê\\ZàvpY9äŒžÏ½o\n}‘ú#žÖåM@aº°Ãê€¨-3\rÚQØs€pLJûK|\Zš`7Vôâêž…ÂÂÿ\0EsFo²C!…±3£ïº¡ƒQÙX:Ã¨AÔZÞëfÊº–yªÚ†x‰Võ «¦žàÈÊ©Ç’¯™¾%g3Fä \'û& Red­±²\ZP.³BÊ6)ˆ3`o’k\"^û!çã„æ6hD<ÂÍDJ\rÐÒñºrËf)šT-;\'°” ˜¹\nvò†‹”CJÃä¦ÞÁÏ4,gp‰a²Œù“ÅÎû¢âvè6ŸDK	Ù	îd(?Åæ‰¦µÐLwèºSºŠò,#>_DtD‹¹Uì=Q°ŸÙ/\"0Vø-,õÕQÓÀÂç¸ýÞ¥UáMW3)àa|6hWYË8D8UŽÍtîÞGŽ¾ƒÑÆÆ0âsaX>J#Äó»ßæUˆQ‚„¬­tÃsÔªutŽ4Ù Ñ¹*vrƒ¤il`žJ,p©[F ÛVÉä¤ÂþŠ1°$¯­to ßH*®ˆä‘ž­ †R×†Í;‰;îÐJÏâµ‘:¢6	\\èÙÍÏ>êÑY$’ÇXU•š¦Pò‰Y„/s“‘Ù|j4’Ìé\\æš:E=òHÆ´|»’‰¦«\r„Ý¹Bwí{äv“s²,U1we|—±b„‘ö¸ÝZI\0‘šñ8ìMc £EÙ&7ëd{8\\)âw‹Cºìªéd-«aúT²¾þ«SŽåüˆ„†_è¶Tó5Ìd?\ZàrÔ˜Ëa¥c$kËš,-ÕVH9¤Ñ¸ÆÂÇdÜFºš†%D­Œ[`NçÙcª³ESâÑMc·íÊÍbuSÎ*\'–Iýã{!ãÒJOÞØ¶Í]~1-w·Ž w>ëÊ6†í7bX××¨+êiÈ6ënˆ“ÇÙ²FlÈgš*|?Š¢›ÂÙÁ%ž¾j¶	nÛžª\\ñˆ|~+¥Ÿ%8Ð\rúõU”ò“«ð•ò5…º,„–ôú¯]6ÆÅf±Nl„ž¨~¨Ê˜Iv­ì½`mºInJŽZ#n}Uv¶éÉy…º@8ê£2u\"å\0*µx@$ß•ëeq7-$„U…ù˜”Û{‰{H\Z‰=WmÊ=„cXæU¦Åê1*J)ª™ÞEO$n\'Aà¸Ž	ò\\û³l\nÌÅG.+…(v¶±ÂÂR-·²û,â‘TP1¡ÃÂ-·OEÁêýBX\Z„?=¤Á)ÁÌãùìüú<j*ÜÉ_K=4/Ô÷=áèHØy®øÆ5€5­\r\0\0\0èD˜ö¼\\¯&xcu¼î£W<íJnè<a[$fûB¬m&÷Üê¶Ö_/çŒUÓM Öy#•Ü»]¯q¡,o‘¶þ‹æ,ÍSyÜ	7ºèt¬]ï¸k\"ì‚ˆ+©SG4†¦@Z	\rk¹XjºšóZbcžÓ}›¹i[ˆ¾[}Š©¬˜>c#v7Øè“‹i«G+${–Ïp9,Ndu,i.„æ@Òu0|º&Ÿ$âYKä\n.6è;Ý=\'ÛGž4]1ìØßîS—°4ºG\r#Õ}F/MbÆFâ±¾Odm´¶^G’wM6$Xz©0ÆüMtTòYžÆŽ\\I°\n¾&CY=|nwl2¦Mª6¿YhŒ‡FãÔd]N\\x1¾ùS)FYdwgMÿ\0$½§GHØ]—j]ƒ\r¾â©ª{2Ï”ms–q6²ûéÄ_èŠ§Å38½.9RÀÞjßâ¬`Ï¤Ò´f*Û7ÿ\0OçÊòž,üš:kLà¶_¹Ì±|š£«{¥À16ÜÜ“Lÿ\0ä¬¨¨kééu4UsEŽ¦8÷®™l¦Óÿ\0Ú’JÞ¥Ìa¿à­(ûnÍimu,3Ë¨˜ëý95ÙåœS¯˜¶M\Z–íœ…À‚[¡E#OFŸªì³vÅÞƒñ_\0©¿Ì$Ã´þ!BîÓ2µD8gYz[îîìÉí9?áú‚ûõ8ÔšZx*2°IZ^«½Ëš»)ªš®ÎŒ õ§«pCT?°Šòøc¤?ûS‡€‡^á%\'ú:v|é„ÓWFç–Ø‹[áÚÄ•Õ[•»	¨”>w1aî¹ÚXÀüÎFì®¤Rv—$ýú#d}GT†V5ø“K);G#x©BXÒy6]bNËòÔÎ?Ú^-þ^ö70¨$ìj¶F—QfÜµUèÚ½ýP–»›ýöô’Š9&Í4ï-¹6áe\\\\}×y­ìG;>7\nh°Ú¡Åá¯×üVR»±.ÐiÞ]ý¨xÿ\0Û{]ùÕÑõ4bÓš	I˜œ²É]œo«oEö†TÃ©©2E<•ÌiÃœIóåÚÏóv8}N]ÄÚÖ»rÚw;ò]Ç+g\nz¼Ü?mT²=6žã§¨\\ž¹5¨”^7@3ƒSvŽIŸª;ÌFw6\0<FË^éMô´Ýt,äøê«$–\'—4›Ý`ñËIÜ®ŽªŠŠO‚ŠGT6äºVýWŒ¬ªgËS+}œTÒÆ÷4’NÞj³KnMÊî¥·C}¿ È±Übñ\Zþ²2ã˜á>IçüMQ95WÙðË˜/É–5|\Z¨ûAÌÌæª\'ÿ\0Š ¦¢ãß¶ÚGûÇÿ\05è¼Xz3þDc²>†Ëü¡bŽùé)\\=.þžÔŸŸ‹èò±½Y}?Mÿ\0¼8ú\Zãâ ?I?ä¢vk§uïI(¿÷‚Ê$§ú~OÔž=\rC³‚Æ)‡ÐÆhœ9x÷jÍ¤«ý?•“Ã‰~q*7œ·»J‰õ”¤xer¥²KkGæÉá¢ÑóDNÒ4ýTR¸\\Xû ´¿ÚÒËO\nŠ´Èá[—&êVyR·ªæÈ‘<fÆêv’PÍ<;	¿maàú¢c7Ý\nÍ‘ŸU‰ÂMÑ“k¡Z‰‹åB‘–»Q”ûƒ\röB’(°qÂ±Ã¡’¢VC÷¼Ø\07º¬„ñºéÝ—á‘GFìNV^W1’>QÔ„¼öEÂ=ÎOÀcÂ){éÈuSÇˆô`òÍh£pw²„Èï@™‰Ö¶Žb5Ûd:P’Œ~D˜•k`akŒ¹Wám|óëw½ÕK$–¦_‰$òµ8U8‚-÷$n±VÀ¦òÌ°X\'—imùLES5£ lUÉÒœ»Q•/šNíÆÀ~ËQ´l§‹0ŸÁVÒ´™E¹%ŽÌ\"aÔ€?5æÅ±Û¹3œbÆî{½Vn°þ°­8àÒZ^¥þ3º,œ‘#%-nü/5þ¬ù’…ï\rÏÂòO;uEíù† µ¥¤q²¨	A¸²kâßªòv´•3%MH0ÎÓÏˆp‰ÚšJ¸ˆ9Ö&éáÚ£ýš´™h.ÞSéw]‚©œ=’–Øl¬hÒÊN;ÿ\0>T„ªTUPI·D÷ÇÞFE¹Q:ã¨OkÀEd»á—È‚­¡­‘ô`ÝúHiZøµ0=§qÊŽRÙƒuYiÔÕ‘™ù#x•Í’å×7¿šn‡0ì\r½••LZêå#«—¬¥. r™ïØ*•;+o¿æžfžÐÃ—;øÈw±áFì«‰–÷nûÉyfƒtØU’, $ž»\'G³826—¸›\0å]E–1N#ÆÀz’»/e9cÁiÛTö2¢®F‚e{o§Ñ£§¿(YõPÅ[²ÜýU“{6Í9›Š‚“\nžHnùæidq7«œz~~Kê›ØÖHËNŽªJ7bUŒ‰­/«!Ìwô¿­ì¬°:÷S¸6ûr®j1 èí«¢ãêuÙríÂù	¯3‚vá<xnwÃç†&ÃnÆµ€4å`µ=›æ}O¹æÏöŽ”½ÐÕ7ö%#“3©ª!~¾-Õ6ÇÓ§æŽ¾ƒ?‡Ï×ÔµþšéµØˆ-¶¾Ç[=rAØ¯kñB	Ôë\\y¯5áI:;~>$Pö¡YÞÓ¼\\cÕ|ñ˜Oõ‡mÏUÕû@Åšö¹‚@9\\sª×)òºôý+ŒNn¢VÙU3w.<¨ƒAý›”Ú‰ÍÎ‘t\\T5¬¦eT‘±ß-ú…èë²6Ý*“Ù÷EÎ¹nÜì¡©\ZE‡æ­ÚÖ¾ŒÈ>`©ª.d X©‚NsßÈ¹I¨ì	S¨‹ÚÈD]+tD\\	Ü]#Åíµ‚3yÝt^Ib…¡zin‚rî5N!³ÄØ›ÊËpPŠf6\ZC@°·Qà´­ŠˆK0Ôé­CÉ;Ö‚ö·ÈäõÚ™j2|‘ßéºUså…>c¤¹„\06>hIgigÌnTs9á¡Àr7jï¸ ¥â¼Æ¥¶l²iÙàÐ¤\'p$44\\¸uQ\0Íš	^€4’Z8¿²²xvKÞéŒ8‡N—PÊÈçéñujõÚvqCÉ\'vˆä•¾\nì_4TU2‚øè¦’&ìã€û¸Nš‘€étn7u>ÂÝN;+3©Ík;ÁÜÓ¦×Ü·{zWJÁ¨°¬F¦±Æ‘Õ4Î•î„O\rˆmúom¶%9’»þÇŠ×ûSöMTð¬qiIGš{«º§±ò‹©5NÔwæé>‡D@’ë÷ê¾§Ær¶Zs&ËÔ÷?´#²Éb™?-<éfÐÐ/pâßâŒ´¹d½Ö)?n´X§Û—OåOú#€¶žBl,Ûp@BÉ5TeÌ$8_k•s_á«•±4†µîÞ„…W42;=na*tÏwcÏ.Ýš¿Ì\\GŽÝÌÆ3Ð5å¿’šÑš©HbU@Ý¨pBÔkuÅ´¨ËŽ€öØ›ÙÃªq(µ¼SôØâh\"í>@ËG‹WÛŸ\rAº2ÔóÛEç®«s@æVµ÷üf:æ†–ÚÛ\'wæÅ­~Ç¡Cxñðñ£3ÑÁð^×s<M-’’ŽpãsÞÑ1ÇòQÔvžç±Ÿ–°Ë†£j@÷²©c¯³ÙºnÕµÒ–¶6XŸ%¸ÃNßÝþ Þ‚>Lñ–¦Ú«#a›òcsšOâš1îÏfâ2ÔñjéA6ûÐO£ÌDwòUAJ\0opÛ~õ¹G‹ÁÂî_‹.šÛÙƒæùrt˜p8uÔ™Ù-œ4õÝdV‡\Z£¥ŠÏ†qk8‚Ï.Þ‰§fßÔåêp¼3¦$’I8.#ÂI” ’I%$’IB	$’P‚SRmôP©i?µ>ËøY™p\\´áÔ)›è¼4³·æ‚AîÒœàwiEÇ“BôÉ°\nxÿ\0‚­;©¢È¬6SföDE{¡š’ž%‡Á–ÝÑ1\\¡b,¸2ÈÀwqè´ØUnO‰­l®tîêéGà8BŸ\"(J[¤UÄ¢Qp1îÙ­.>@-M-“˜ÿ\0t­7ëcù«Ú<w§…ž-	iNKÈó28f!1\Z(çuü£+³eÊo„Àé©Ü4¹¬ÃÈª|\'Ãê¥l0ÔksŽÁ¤£‰ÚXopZm´íÜ\'X†2î§…ŸÅæÎ{Ýwsè˜Æ(ØÆˆüoü•¯|¯såq7ày!¤L“½nTá®Üê-Ís›¬ìáa0ˆÁ¨fÝVá„\0x\n¤èÖÚí“Í(\r°;¡e$ú¦=åÄÂsF¢(l$æäì&‚;I¨ïdÌÎý8xe÷s‚.”\0=,ª3‹Ëb„%J¨„®ÜLçÙÛÖ^W]çqn‹C˜$ñ¸]eåx$ßïLâ[ÉŽñ×¡Ûr!Ã¡N<Ñ@²MF÷dKH{-tü6è¤¦“¥Õ4VåV`c=¦uáVSf&ê¦Ô: ¨ÝxÀû“ßaôŽñòŸVöH4^äì‡ˆë“cv©ÜV\ZÞÊH„Þû¯=l(ÇÝ4îlwDL„úoÉSÖ°Ã0xUÇì\r¶CVÇ®2,7R™dTôºÆ²yÝML#<‹ù)á¸¥¸°jk\\\\‰ÝS›vd:‘Ö_•fÙ-p© uœ\rÑ®„›ôKdŽå’K-êãpõ½—IÉu1ÉJÆ¶ÁìhÊõîÃê´™s}%Seð´ÙÂü„Ð´;‚	K@ ©*ëË!Ýßz«¥ªl”í•®8\\nÄ§qnî°Hö–ë¶÷\ZŒ\Zgíp5.1‡Ö>77K­eÙ»J´øKnM˜WŽRÎ:.÷NÄ²aq~£xeHïšæ_ŠÃþI?YôZºÜDI	»÷Í|õ”q§a¸¬rë\"7X8.®úÖKIÞµûpn¸zý…šëfvôÚžèvÙ˜Îµ²:W[]`dïg›ìµ¹‰®¨€n³UtÕ”¡³@Æ¼™§ªëh’Œir-–M·@R41Ç”C±Êžé´ò¿TMÉ	U9sìøƒ	Üî«êdò½ÇE×†•.ô	§H×»ànß‘Û…W+^÷9À¹>ªºB®6˜û³ #„T3UN4‘sÃx*¡¦–&Ýª*y\ZT2#ˆ~©ØKh!øxÜ\rCÇˆÙÍXI¦†ØªOBàvä¬¥a”ÕÈev§êÜú¦0ÇÇ•¾ê	d³²e·½øE(p6î…žÈç«»>íTøá¸5 säþÈr6G÷Ñìæ·¡+Åfƒñ%õ»=†ŸlQúN÷xfÞDX¨LVï\ZZm¹V.k^xcˆTð9×ÒâàeÜ\"Bk†[Ç{‘µÃN¶ºã¥”Ð¼Áò(GS¹¦Ñêa\nzxçs5>	žÏôŒa yîä•]˜{TØD|ý¬€qðŸ{¢*$kš[Ä“ÈBÊ÷=ŽÒ\Z@¸ZÆ­YÞþÌÐ6¯ÄØ*\"ˆ	ÛmF×6]³-Ñ\rI™ôÕÎ¥ŽØy®övyÄ\Z\ZòLÍà_¢ìx&1K„ÑÕIT|D·»¬ÐçôÚû&œeà¶™ò½Nm<} ”2G{~ót¾G±¬žŠŽPá%<fû­uÇr†É*ñH#0žæ²GYä0qÇ6ÿ\0¢‹~nÁ«„p\nÚŠ\'’$wîG>Vº}MC«0\\B®Ÿm](†P\ZØÀ\0é;_­—?Åš’I³Òj4\'ŠS”\"ö{Ò~^ªÿ\0sãú×Gñõ¬ ÷®ÿ\0ˆ¨_ÝßN°Iæê³žø…@k­i_{ˆ¦ë.i!÷=3Âû›³ÔèåZlEû#Ú¨ãsÉ¸ïTó¾\"÷EªÄžtÙXTNæ¶äçeGˆ4Jó+Iüù\'tÐo“wÀ÷÷±ép!-I¿ˆúôJ	ü7H×u	îc;é)ä”_¼ŒFv(«Ël\ZíENì@¶704“»Ç(RÄ\\w\0ôG<23w:àp¯ÃÇ&{ÅÌ•G¸bG@/™çEšKAÞÜ¨¢.lW1ÞÛlW¨f‹µÝC¼Ð–:á\Zît	€Ì:P	:{‹2µÃú2gk°ÝeÊìh>íýO?ÔÕd_A$½¶Äù-fXìÛ=æZAW‚å|F¦™Û¶bÁnösÈè¨ÔáÓC¿4ÔW«i/Õ£Ÿ¹:JÌ’KA›2NlÊšNaËõø{lÙdŽñ¸ù‹·ñYõ¬9ñg‚ž))Eù¦šüÓdqiÓI$ŠP’I%$’IB	KJ/7ÑD¥¥þØom–\'ð²Ÿôy×oÏ\r+ýÚGñEÃž¥wø]4ƒÑÄ~k*!ŒñSÿ\0!>:\'¿äšü€ ¼X_(ÃŒ=\rœyçu»ìîsOðFCœr¬ŸÛáR³Ú6ŸÈ¬h*/³\'´zpúŸþšO£¥§Ó¿ý™qÒaÌ9W\0ö:+ùÄáù# ¬È3¸â-ŽþopüÂä¤™¿úyÛîÄ×BñËV‡¢Âødì‹ó;K0ü™XÃxÌbÿ\0ü†ÿ\0¦‡$à´ü>-{Ž¶;ò+ˆ:-6ñ«HN…“Y’†Ÿ=vB—O”Ù¨7†TvóÙy½>.Ò\Z£?À¤{/ÄFìÄ©íê×à¸ì5Ø­+ílÌ·\Z&?À«œ73æ†9¬ƒ®ðÙ‰A–Šk‰›ûFEüÇtìß\'T`8¤Õ•ÓÃ+´iˆFIç’¶˜µ[™‰Žµ÷qU(VÅ—èÎ!S,õNŒ>GÈnnz/1IõJl6\\|·ÝMØ¾L®^ó#y¹¸7H´gVá>HM°¼9º^\nÒR¿[7åPÐ³ƒÑ^QØ6ÇÉA XmÂ™6µ¬“ÖÁµõ;È(c­’w†·a}¬±Fû‘¡§>Iž-ú=„Ã•Í+K h<¬þt}éW.ÎWXŽwnmÑe¦>3b´ØÙiºËOnðû¦1p!+]nJ¨¨A²{>bQ˜&8ºÂÉ‘Éc{¨æ}ŠˆH-¿U;K œBÒÒ¸_{*Zwè~Ÿ¢²lž*žoS€ê…lÑ(¶kÀ’odÊCw“~ª	6`qòRQµ¼Õ8Ò3äI>Ï;¨ÚÇºuA[‘÷&·OE^E´\\r£¨oêÔ¬Øsª†¬ü¿.\n—$dõn-§‹\rÐÑ ú§ƒ¨(E¶óWH‹€¸·TD¯=Ï(Ü\ZÒ¥÷Œ\r¹Yq²/7eú«\n)ÄL¶«¸›ªy%š+îŠ»ƒ™°(s–Ž›“qA-©ÞâL{´z)±j—XÝÞÂë—ë~¶).@½ŠÑbó‡^á#(T‹l¡ÍO2áÒÇæÒ©ieL‘Ü]®#Ôn»¶0þò›íb¹^)…QÉ[#Ý.¹ òºý7\"Çi‡Å4¹3Ñ9ÀÛWµ—AÊXÁŸ4S¾ÒF6¨XÊÆÁOhi¢\ryÙÏ&åOKÞSM¬6·â›ÕãŽxWä1Ý’´jëæ-˜ï²\nJÈõ–—]§›¨ä©l±êp ª,JmðôÞé:w\'ÚÇc5%Ü‰qöÆv|½\nÎ¹Òj¸qu…Õ¬2>rYÈ<‚®0l¸&zæ–·›Yu#8éãÛ6TõQJ¦Ra”µu\n`æ‘Ï’+eF#ˆ¶iØ]«÷BÝÓRÓÐÅf1¦âÖê²]¥Àâê:<%¥—üP±gñ³$ÖÇ>9¼Lµäc˜Ùj&hòÉ#€\0¹Î&À2WÑ¹/°|·…a´ØÇjXätSÕ¸¨>-´ìcˆ¸c¤;¹öä\r‡ªæÿ\0fl:›íŸŠ­­{)ûÚ¦µÜÆÂ[÷¢êlÆ2·É˜dõSÅ#ç.‘àÙ—1´ÛeÂëýGS—ªaé:|”\\¥$½êI´—å¿Ÿ‘ÕÅGÊÕÑ±ƒ!vSŠÑ9{Š*¶´÷\r]ÞÞÞ„ëz‚Ÿ³¼Áy‹+Ù¥ÒŽñ•Vý_r9“éÅ¼öV™Ÿ-`Y´œ³‡àõ¬£…æžHãžrd.i$u·Þ|—Ð¯Š>ÿ\0½1·¼h,k­â\r$Ûùl>åóÍGTÔtÕ˜òK$2ÅµÞ·Nêÿ\0º·õ;xò¨®Ø¾9ùËú/ÙŽQ…”˜ýU4õEšœêÙ\\^G˜c~QÊìã*ælØŽH«‚9švØ%×‡÷;°ÿ\0Õ•?j³UcyÂ«\n¢ÊøPsXiÝŠVÅ©ÇKI¸uü p6\'„¾ÌTõôØ†;K\'ŠCÑ+I~£¾üì´ñj°è¾ßãÉdI:m4Óù.9ãö.9/u-þ œeL¤faÏu0ÒÅ$®ŠŽ’­úCË\rœç7¨¸°u<…Õplã’êê]†a¸Î\Z$·7õmÒö¸\0è¹ŸÚ‘…ÕY|5Ïi{\'h·ž¦oïºÏö…”°œ?e¬š\r%l4ßÇH]©æ@×ø%jZL}^Ï¨É%)©´•vÅC÷Ûóa)OvÍîkÀ2\'i,­ƒ.â8{s3K›=7‡Qà‹\0ö“¶¡{y®Q“;;ÄqŽþ·­¦À0ºYÍ<µun\r.”4±Ø’m}·[/\rÃðO´Ì8~ÁRÇv¶&¸ÛÅNK€¿Bw²¿ûR@CÃÝ\rÄ l¨Þ?3tÆ“U›I—‡GÙ™EÅÉ\'(]Ú^NéW’ô3ºi\'Èu&B§ÊXXnœEªÐÇbÄc‘älÑbþ„•‡Ìù÷6å<aø6aÁh\'•£Swh•‡ö˜ëñùuT½²æŒ3ÈY2ŠŠ¾:™à§ï*š×]ñ81¬\rw‘¸+¼ãYG/æ¨pJ¬b“â›DÁ$Mq°9ƒÂÿ\01Á·šcYÖôŒxòkfå¹ª¤ší{5Ç>ÖÓõãjúNÕäy5S“åùþç¢íƒÔd«Ë XYÅ“QbNÁä£“)7\ZÇ»¬\r™š„R8BC]Æ¢6¹ä~û!\"Â».ÎòÔa˜dlµ8l2\Z8û·2Îó\0ji\"Ç±iIŒÙÛ-ax”¦´K&¬¡²;èÛä./h3õ,ÑÒbRÃ\'nM¥Ü’V»~oè+‹Ù>•‰ÃIy[¯ËÌ»9²Å/Áa½8¯œ³á1@ù	;ßA&þÖ\\·5öq˜pÙM€Á±qÆ,&›þéhÜß¿\nóÃò¾öÊQdÓOðZS)¥˜ÊÎð½×ñ\\î[¦ëéFG§‚WÆÇ>#àq¶û—.V£«êº<±Íd–Hdƒ•Of´¸ýW§æz(Ö4’àáYg±<\"¶ Äskf¯€†ÔÁ†÷nî?²âë›ýÃv•ÙCðl·Ë˜¼8þJòÚÎà´ÍJG:ÃI¶±E•ïd“Ê½¤fÿ\0Ó8œTlsjLÏ³d{&.Óêëoª³û&Ëd™±’!˜ÂéG„µÚî>··²êdÕu>Ÿ,º©år„7N))wU¥\\W“MùYrµ¹Îòd”\rË0f¼ÿ\0™Ù–pª«\ZHÃ5O0;‡XƒkÀ±6ÜØ+ŠŽËrþ7ƒTÖviœÛ˜ª)c×-KC\'s»³wò¸±âêµoéÚ>KT#‡\nmBÒƒÜ°ê´¤~mÅ¯`6áYv;”ç‹µê<|fŒ¨¶Y\r\r9ýk4Xµ±†€ÖðMü¸]GW-\nê3Ô4äœ£“…\'´_ºåuÌ»•?* ’´bû>ìÒLo—6f|f,µ—`ya¨ž9œ\rˆh<Ü_rHØ¡˜ä\\ÑäÑˆb±´¹´•­÷Ö†-?[8yÙ^ý±Y‰GA—iéØcÁõLçÅ˜j.n[[Ü¬žHÉõ5ù×+â°æì“Ja–œÄÌ>bÉŸ£{ÃA2pokïõ˜µú^uj<;îíŠIÅvÝ){­ÉºßxÕìi_ ]˜vY˜sf?]C[¯¢Ã¦0×Lö]í›cx.ëäÜ. r7`¸e5ØíÎÔctÒb÷yx6;3‹{lºþb,£Ë¸ÅLÇ…$ó:Í°/Ï­€ò|ÙÖFÁ±þÇ³–f©d§ÂÚJY&–°5šÍÛÖû¦Ë“¦ê™úÚž§6iaÇB)B·rÚÛ{óù/\"œÛ4=±v;•¦Íy\'v-ƒûébÖ$s#ÿ\0HÇ·g°uê9Ü^ß>6»€¿ò¾Ðû(–ÔvHúiG{q\n˜ô;vè6»}ÎÞ¥M6Yìo²Ìžr“\nˆWJèÛ=|ü³Üô6cnÀ\0-îº?Úü½3.nŸ¨„³ä„ª=©\\—ü×ÉoøX†·NòÉIºHã?eNÍès^1U™1ÚfÔa˜\\Ž\ZyÙ=Añyµ¢ÆÝK‚êÿ\0hnÓqîÏ³V¤Áã¡5EÏ«Å«[\Zö·@?°\0$Ü.™“2Î•péé2å+)hjªWÝÆë°9íh%¾M³E‡EÀ~Û0Ã.)“£:„²|Co°a|Cï¹+‹¦êXý£ö–?hv&¤£ä”•óvÛõ¯EY–7ƒNûyÿ\0³¶ÒçÏ³emNV¦Ç°ljYXæÉG¬HÙ›Ö×\Z_¶ûeó–iû>âíN«	Á%e\\0\nÑ_RnÊX‰ ÇÚsKM†ÛX’} e|#³ÿ\0´~TÃòÜ2ÒÓ	(%#½s®÷JX÷\\’|@^Þ§¢î_i÷âñv5þ‡ï/©ª1üÂ˜»õŸKXBVô~\'DÔé£Ós>ÍTWÆ—ºÜ»{©:µåõ§±R¬Ñ—ˆ·¡ÃbìÏ±ŠÙÆ†öºïÒäècå…¢ÏâÀé\0‹ÿ\0®×YVv1œic#:DåŸñ “Oð÷·}~mÓO7Ù—rÃ³MŠ?éGÃ#†¢I$øéûŠÖío´èí¸ëíÜ—@ü?*`Ôõ5qbTøt0>µþÜƒpyÒyüWw­õý_@Uï+—tji\\ZJ¤š„UzÇ-è1ÏÌkéÿ\0¿ÔâÔ†vA…Ã-=š_UˆÓ4|Q~)1ˆ‘±1”y_uƒí§°ir¦&eÊµ³b˜D`>x$³¦…‡‡´·g³qê/}Æéa¹#	Îÿ\0j,Ñ€cŽ«ø6ÔUÔ;¸5îstØj±°ñ~\0/¬°¼6‹\rÁépšH\ZÚ*XOn:€­\r\0ß‡UÆ×õýwCÔ`ŸÚ§–SŒg(É%\Z’N“\\>xJ¶çt!š-v¥[Yó¯g}‡e,¿•bÍ=ªÕÆÃ#Zÿ\0„šsáß+^E‹žt¸ZJ|•ö|ÏEøF]“Ž¼4é8uL‘N-Ô5æÏ·±VŸjlÝC–re-f]¡ÇdÄªH†*æÁŒ¸|@qÖþKæœãcí-VÓ?‚¦¦¶’¢&a$6ž\rn•À\\s¹7NtÜ=K­é§Ôsjrc—¾áÛ$¡îï]«zòmþ»˜Èñá’Æ¢Ÿê\rÚïgø—gY¤á²\nšYše¢«\r°š;ÛqÑÀìGŸ¡%H/7Ñ}WöÝŠ”äÌwüK1G²\"yÐbqwÓÂßÁ|©H]ô^ßÙŽ«—ªô˜js|[§óiÕþ?½‰jñ¬Sq\\xmä“y^¹wÍnÆqÀNkåi»d{}d¯è•®µ`Ül•µŒØUMþÑDÃŠâ\rø‚G«A@µ»ðœ9B”büÇ_(³ÅV«½”Òz: ¤n3þ—¢ú„*±ÊôX¡öGÐßÙ±?\"Ý˜µÝúÜ[ö^BØömƒPfZ3,PBàù$×á<.rÖêxhä•ôggôLÁòÍ1°=‚IêJOY5Šï,[U‹ÚåüÍ‹äl; h°T¯“½r2iÄÑB\r­7<®#æÎswÀE+M÷Ýv†î@U¦¡Âá tÑ#ŸÉ%a¢Ó¢ö:è¢hNM}lò»w<Uptl\0!´i6Ã#Â÷½ÕÞ\rïA²«¥µ€åh°¨ô¶ë,.8÷I\"Ä¸5—éešÍ?¬Âçxéº½®~ˆæxT‘2àuc’u‰üAóËz9Î0AaÙf*]g´x±ð«3TlãtÞ$\'!­“Å¿NküV`ðJ‘Žˆô|§Ï„3Ï„õ>jG:÷*	7²ÔQÄ¥Žæèi|u@ú\'JvºŠ~¼’xFŠ­Ë\r¨p\rhÊjbr»S‘”fÍ\'Éb{DÈê’.,£!ÂçdùÜ	õPº¨ð@èˆ-ÿ\0­Ðõ½\\Lè.äø_àô2íUï6Ù­U¹T#®Ó¾ä¦‹Ÿ%áàX¦¨”N v	÷áBÇx¯¹\nG8,ÑÌàdö\njW9\né\Z*¦ídu)ˆ6à…™ì‹\r‰Å z+ÇUº|9®Ü–Ÿï£¶ÎßÕ‡Õ9ÐËwÝ²îB:é‰§szž«Œ–±ÅÇak]i±iáalµŒ.ßf¬vf”:‘Žå¥ÖºoMÞÆãvRD~\"´ZêàÄÆ†ßÍVáMÒ]-¬x\nÎ?Ö’O=ùáTMðÛH)¯Ãé\'7ä¥€©\nhÈ|\Zw!,ÛNÑ•9.(iðzk,2»~.÷°ˆclL`¢vîµ†Çu0ušÆ\0N£r¤±¦íîe·.Kx‹ßsÜI&èLõKñK¿h\Z ”;Ø;AhnÛ+äb-e·ï#?zÄdá8ËÑ™¾Ö™Î;=ÌµG:áy’†GQNøïnò2^ß«I·­—Û£òj^˜ŸKIŒÓÓ<MI+‰Õö%\0ìA±Û\\/Þ×5îkÆ’\r¡V¹k3æ±Vê¬¿ŒÖá²»ç4ò–‡ÿ\0‰¼¨(Òû0ú´¡¨ÓäðóA4žû§äë7ºõiª;˜5jJÓ>øÇr†[Ç±¼7\ZÅ°ŠzÌCvªIŸ÷Üg\0w\0ðw\\µ>ßiòÿ\0h˜nhÄðÊ¸c\"™ÎÑº¹Ÿ5ø.Ù|ÿ\0˜;Pí¢u-›q9éž,øÚöÄ×\'h\r¸÷YÜ‚LfŽ2(\\.“ì€»úžOF-F*é]ÞïóT•=Âf×Zþ\Z£ìêH;í‡5GSASY¤w}i¦y°ØM¦Ü†ÿ\0y<ÛŸ»9ì·¯8-DØ½NñÐAXéüCåÔKœ#Œì\rÏAåó­các»‰¨©¥‘‡N§°y¬Öo†…3 ¦Žˆx¶¡hý’Å›4qeÏ’X| Úª[¤ß§Ñ\'ô7<³ŒNÄ›ó>„ì;µ¬7Ä2ïh’Q;mCå¡ª«cDR‡]ÝÎÍp;Á…Ý±L¿ƒbµÔuøŽOUSHàúydeÝ½Å¾¶+ó“éuwC›ó]ÁÐæ|jšžÖî¢¯•­·°u“}cØ´çñ´9¼$ïÝÞ•óÛMR~kƒuÎ©+>Ìíg5d|…Qý(Åii*3#a1Ñ@Ò>\"[‹n?e¾n#ap.³]Ÿv£’ûQÀ&Êù¡¬¡®‡¸«œ4T[vº9,±å±ÛÔ¯jgš¦wÏQ4“LówI#Ëœïrw[ÎÂòVœóEcqÙ\'Âèd®­0»KÜÖìÖƒm·ßè±›Ø­ƒ¦K&£,œáMMs\ZáF7Å¾.Û~F£­Ë<«·ò> ¨ì“³<7øŒJ2Î·TÕb0@ó7\r·¢¡Å»pË‘æšXðls›‚7CSºãt¦öc‹l\ZÐ,çÑa±îÇrÝœê]ŠÖSÐ`´øžf¨ ÂdkÝ¥íáÿ\0(òþ+ç]Dî•è~Îi:²œõ\Z‰æíÙw*K¹]¤Ûw_JkÏczfhµåúŸWSæŒ›–©±)û1¥¤—Ä…5N#Žœ\\›1®uÈ¾àm½¯ÂèPRåÎÔ²µ$xýEt\"òEàK–ñ=‡v»Ïp¾6<÷)é*ê¨ælÔ•3ÓHÝÚø¤, úW_Yì.<‰OyG*v¦íËŠ¦ím^Ÿ®àaÔ2§ïS>µwd¸†Úö‰åªVE—)ßDÒËQ¨ÄYóƒ¨ê7¶Ý7äYXçÜðL<QáT¿×p˜K›‰UD5X‡wûÁ¼Ÿ>å)ó¶r‚9óf;3’¾W7î%6á˜ãù±\'L<¦‰’~a{—S(Ë¨äYbâªãëï6í·éÂóÜ<º¿‡õ>Æ©ìó³,ý‰ÿ\0Jaâ¤k”ÑÕÉ]o™íníwŸÍTcØ§gŠà˜œyj8L×€YH*ŒÏÔ\r/$½º¯•¢Î5í¿yC†<¸ÝÅ´ýÙw¹a\n)qì>wÔ`0ÜèªÒ~û ãö\'UÜ±ê53ž^åò–é=øú+-u(¿Š,í™oµì¹å¸²ïjx˜Ä0ŸÔ×ÆÀù=Ü.wMM;ŽBmWi›dØj&ìÇ+ÌÌf¢3q\nÖ›@î‡8“í°ÛušÍw&eÎÌp\Z¬Vƒ‹1æ|TŠ =ôôü´Øë‚:Üú-Æ%ÙfùoÁ(3f;ŠÑã˜ÜÍŠžV8x$p‹CA!¥Çª_6‘…©5“²r’ì‹—d»~)v\'¼SNøNžÌv:ˆI½½?S;ÙÇk´tÙzL©Úì‘îsdp–;¸¸‚\rµ’AsÑ[;=ö7”æ8¾JÉõu˜ÛEéßVØáu­«Äâ~áõYÚË©ðžÛ°ì‘˜ká©£¨“[{²è¥ž\"×‘µ»llyb³¦0¬ãaX{éhëæ‚fkž\Z×/¿6	ètÞ•­Ô¿RJqSj2”a$Ýn•s[¥_?3hÄ¹uåøŸGýŸûO‹8PUeÜÑSñ—I+£€WÉ%Û–éýÛz®€äÌ¯`5xƒSÁ†Ö—üLîë!ÄîE¶C…ðŽ®\ZþæhÜÓ©®\0Ü0Gk¨;Uíš”PçN8¾QÞhyüNiwâ¹=[Ø¬™rÊzª“MÇt­pÕzr­mäÍ\\%ðÈús7cK±ÎÏ¦fK ÒóCBÇ’ú‰ÔÞä‹Ø—€EÃªûZì÷=à8d}©eìRlW\rÝ³á¤T^×j¡ÖnãÈ®Ošë±*ìN¢|[›« jšYL„õµÏÑgw£{¦Å‹ÄÏ’RÌßwzn2[U\'»§nïwò¤rõ¹¥	$¸£¼´f\'hÐbÐaŽ‡,EN(ÿ\0E‡]ÕÁï/ÀXXqa§Õw3\'d¤SPVÕVàxŒ”oï`‡sbšæ×»GóÃ•ð±^µÂÎ\0û‹¦:‡°Ú\rGd´ÒxgIÇÍoÎé·»ÞíÝ;†²q¾íÓ>ÕíO;vEƒâ”¹“8f9˜°æŸŽ‘âi½ÅÈ:Z/¸.âæÀ®•{{ÌX~{Å±Ìj•˜–ŒÚ¬8:Í‰\ZX#&àÒAYÝW\0`\0ô	#tïc4\Z]<°æo-®Û“á]ÔRøwßmì¬š¹ÊV¶>‚¬ÍŸfá\'éˆ²F#5mËÅrYw‘æ‹_ÒÞˆ<¯ö†Å!í-øÆ3HcËµ6“ô}1¸¤‰¦ì{8Ôás~.\r…¬	I2½”ÐJ†g,–š¹ÍÉÅ?øße¿;sägíS»T¾ˆû³\'ÕöO.9_²þ\'þ‘ÄÙjª—V<ðH,y\Z	°. ,gn½ºà¸V	S‚dÌN<C¨iŒÕÓ;TT€ì\\ÃŸn\0¸¹_\"–µß3Z}Å×«¦ÿ\0ÇúHj£¨Ôf–U\Z¥*áp›ÞÒôÙ–ºN=±T}q”{Bìïµì¡O—³ÿ\0ÁÓb±éï\"©—¹H»Øe¸±=Eî.Fá^Öe.Âòshqª˜0\ZáÎÁ7Æw{†à–‡#¼¶;¯Šã`’F°éñ7áKUÈ[­’Û£IZÍìDW6«&<M·ØžÛó[ªOæ™K[ÿ\0(¦ýN‡Ûÿ\0ií4E%rAƒaíttQÉó¼“wJáÐ›\rº\0:ÝsxÜXë‹y/<Ò^ÇC¡Á¡ÓÇMT\"©ž¯–+’o$œ¥æzH•ãvN·TpËty{tH-’+Ëú\nàpsº§z&êµ¶^‡ÈYhÜeó\nw)€´ŽÅ–XH°œ%†\\Nš;_T€~+éÊ†QBÀ\0ÒÀ?ó6ÿ\0›R‘µ¥oæ¾–£êêÑù.WRþQ\r{Þ!Ñ\0A¿D<­±¸è¤‰ÚM—“®\nåò‚“\rº\'ÚþáFí–YAQÅú£ ée_ö(úbNèl$x-pñúÀ-Õji†–›,ÞÂçu¤ŒXóÓ­ì˜µ¡ ¾U{\\ÆS±i5K§{(Üëá“¶ÿ\0°Gà„ýAÎ]Òlåø™6#ÑfëÉZHÁ¸Ýg+O‹êžÅäÁ\Zâ;§µÂ÷*ã}¼× î}Ó4e¢bí½Ov‘kr½½ùQ½Àí~E¼Ü¡âwÄî¥•Ç‡aµÇº4VÅÑ;wïueM´`‘Ê©‚áÜ+H¦0’ÆE±‘Lë›ž/è“ÝcÕ6÷¬¤B@àn„£v§Jòyu”Ó;LN7<]GvÂß]Ö’Ø Ãù(ck‰¾¡uäÏðØu^Àlw¹=§VPL1»›‚Ý¿]öû×¬q°ÚéÅû~(m²Ö»¹\0¸‹“k(#˜Ûb@Qâ2NÑÀ2-…¹E¯wsK€è§;îQ´ÓYÍ7µÕCoÍ”ÐÈy+ŠeãT¦LŒCïd\"4rÑ½ºv»O‘ZW5•tEŽ¶ 6Ýg÷A3£’áÀÙÜ•y¢Ó²žÝÌ.ní;û«:6þ³t53-\\²ÝYDË\r‚&Ilô\r[Ï¢“[bñ²‚²¡±€Ñ»Ïà²Jç\rÈ!¶ù\"¶\'¸IPHo„”¬%Õv‚†5—[Ó©œ.êI;¢>\nª,!¸kHòUö[w,`ðîVjj“qÊ·£•ÑÊÓ~ùª1%ä`óæú;5VDÑhÞîñžV+>@¹]¶*R[†âli´¬1“ê7œžJïhgâaŒŸÓòÅ>ìhHìX Æif™ÁŒdÎqèI38÷ÅÅù–Õ›|gÂÝT&Šc!¶úË?Žâ×ÂÆFÇ‚Ó{¹T$”Á Å…¦­´Å—b‡’I$ð1k¯¢þÊÔpä¬ãWUŒÊÚ©èd‡§d;ÓS\0ëJÓûEÀ»oîú¯œÉ]¿ìÅ!nZí&6–ë8sG]›/áºó>×c”úTÔdÖðãÿ\0Ü½ýRò±#¬«ñý™¸ìR—Ì¹W´|6,Ç‰Vàotpâ¤÷Ì¤dDœ<6hu…¶ò\\›·‰€åš,½˜r¬õÏÁ±êwKU„:Hˆ±ŽAi¾ü-OÙÚ9ñ>ÇûCËØ]E;q|A‘GIµˆ¼º2Ý‹ˆé©h;iËƒìÿ\0³L =ìÃ)™\ruk#.Šœ¹¬mÉ_K\\ë^û·Íy>¢};®ä‡ŠÔ;›’u]±ÂŸs¤·r¤š­í%½ÍFxkë|O²,¤s·h8^^sœÈ\'ÉRæòØX5>Þ¤mõ]#¶¾Íru…c9U@úüqø?ÂÉQÞÆçµïSnK‡‰IØƒ²ÕöÙÙlƒÄ1Zwåù©KMˆT9±¹³Im,{oa»H¿…šÌÙoìâƒ.c’¬Oš*³0ÄŸ&FCIÞ]Ä´lv±Ô9&À›Þ£¬ÏSÔñäÓe—gjpŠN¦ÚÈåko†£mï¿äb¢±µ$®÷ùqÿ\0f‹9v1_IŠeÌºk ÍX.ÌBY]1tSßP³Úog;I>ZáSösÙ¿gx§dy7fXêà/ª|Fžgw•RI/w9! }…Í—bË˜UÙã7çè±:,GÆè©©h]O8xs\ZË<po`6¿\n×Â0L3\'á˜m%\r44TõAÌ„·Pcµ«{ï~«ËG­ë~Î°øÓoº+¦›„žHî¯iRJ¶€iÇdßjáþêŽMŒö1ÙÆƒæL/Ò5Xþ„IŠüsæ FÒd10´\'hÍöß—ì—+»9çÜ#\"ÔóÊ$«wF@ÁªB~‚ßP¾ÅñšQœ»eªG—©éãýc|DBýVß{ÛÝr^Íã97±Ïž_ú¼G¶…;‚ÖŸíž>â/ýÕèº?P×GE™dÉ)dŸ…÷yO$-ÖÊ’¾ê\\v˜ÍŽj–Êÿ\0$Ë^çíK·z|~Ž™¯Ë´¤±\r`SDý€FÄýTÿ\0jÚÍŠv¯ôxulÔ”t°GLø˜\\ÐòKÜEºê#îS}›guX’ª052´8= l¾‚ýI˜qš|j)õSwMs˜×\rAí?+‡—òõJu º7QÇ>ÔñâÇ(Gë·?9züØR–xJâr_—ý¾Òà‡ü¿ö]Pð>!Ì«kíÔ5—‰6÷+ÛoeaøNpÍXf1W6=†Tº³‰Ö0þ¹ÝàŒxHc½ÏÚëa1IGÚ;/·‹àèé\ZÖSÉ5šÉ5µ×p\'kßõEÕ>f¬l½˜vÑZçƒÞbfö¸;Pý[¸é`>åÇé™uZW¤ž)¸û¸Ó®\Z–g³çj“Û×è79Ã#œZó¤J^Îû%Éõ97+Òæ8ñA˜3K&žž¢š¡ÍŒdzÛvü¤[O#rël³ýŒd<‹5×ç,[Š—,W2)ÄRZ9X‚@ëî7hÜ‚ë™Æ³&[Ê¸®ZÍXv”èpÆþ”ˆÝS‘XÆ tlÿ\0Q}—2È•¸}Gd´M‡ÕM<3Ìéb’¡ß­–7ë³Ýêo¾ÝWS¿¨eÇ©SÊÓs‚ÚÛ‡vg·EöWº¯j•«)ãÆœiy?Çoîy‡ä<‹.qÎØÖ/‰Hü—¦m<BÁ|ó¹ð5ãwYÄo˜–ïk®yÛ–I¤ÈyáØ>U5MÔ‘UÀé€ï×êð¸‰§\"·fÜ7¨ËXÝlTù~¿2AUŠŸ©îéa¦Ós6ÃÜ®ž—k~ØR2^Ö)Ÿ‘½‡¥-,p- ºN-Ó…Ûéº­F>½ö7’RŒbÓºIöÆê¹mÉ¹_½t•FÀäQ–úÿ\0åm$”ÔR=“40FK¼L·Þ½Ô+I·H„ãfî|‚ž::É?³¥™ÞÌ*øWÏZ§Î8ÃS>.bMåû¸¤ž®oˆHtœ{ÒKõ*Æˆè/u3˜Ð.Kˆ1Ë5ØèÅÝ¾3<´µÎq¡q(~îbÎä!©Ÿó#O¤M:ü™ìx-uP±ßÂÏæ“°x†ÝôŸpO½­\r<À¿	©š×ÖM¼Â\nÉ¿ˆZ}34wîC*0ø„.ƒ®ÛU[ãsbZmän}\\Ïk˜m¾×A=¡†Ú®S˜;ÖÒbžámI$“&Op;&\'‹‡$=7JäY!n«Ý@n²þgš‡P½\ZNü&êi;„í#¡²¦¨‰ß Âxª07º‘«,,9à?cŸ‹Rµ›“+l>«èºg9ÆÓÈh\\\'³ºSSšèÚEô;Yú.é+¬án#_+’ˆ‡Q~ôWÈ°kµ\0T‚îŠýBšKìJ2À‚ß5ÍjŽrg„Ø½ON˜ÙÖQÞãr²Ë	„›YXÑÜ¸W¬vóVôî\r£q48[-bU¬²hËdÛF\nv+6˜yåB]°eel…Òêó%<8šI\Z-»ä€ïµÈnvºk¸9½-eM³™â‚Î˜$,ÝiZ,`Ú¢a~Gâ³u¤\\õNâ@Š÷	Ì7¹º†GG„šãcbœ«.‰ËˆÜ]0¸\rŠóQÒ˜]uDG’‰(]^œ©ê\r£ºçPm÷µÑ\"PL$’ÅÄ4¥>1qtKÎÜ,È¡Å×Ü’–£}Š€¸Êð<ª¢‡Õ9Î„‹ó²{\0Ø\r”/\"á¾~©ÅÛrµ[ÇHû¼t²|Dê¶È~MÔÑƒ`Tkb1çeä²\0:_ÉVbØƒh¡\04ºG,hêU\r<Ø‘Ä¡5.p¾‘}ü”Ž%e¨Þå½KÜé‹®7+Èäp·UãÁµïr¼m¯²Ó,™Ž<¢\"v×B6äzÝr8/T6ˆö‚G7‚‡Ç(,-ªcnþìŒ§ˆ0Ü›•9x-ÓpAØ¡÷öÊÑ”éìQÓ@#„\07ëê•dÂ]§w·¢—”Q‚9s¾_EK;Én§¹ÇrQâ»·7{±¬qy/uÉ=R:º¢’[ÊËÝn¿¡á·VDGmÊõ®Óky(dy»[ä¬qqU,hMÝ{+(‹œë«in×eaJâ7KÏM†gè>+³÷µÒ¼<z\nãÇ•Ùê‰ªÀêéI¸|nú.S€à˜ž;‹Ã„áT’TÖÌmLŸú²¦äPÇ.çIn1¦—ºÓ+’]û:çÚÝ.­mÃÏ}P‡Ñ·+iƒý™è£\r~1™äõe-=¿à¦^»¡Åü÷ô¶0|ÑdöD÷»KZ\\O@Ø˜7b}P²ïÃ§®{v.¨¨$£lµxn[ËxC@Ãp<6šÃbÊvßï\"ë›—Úœ+îàßÖ‘7>)Â²†gÅ~ˆTÁd#ïµ–«ì[>ÕØÉ†ÅFÓÖ¢v·ð+ëzš Öéiµº_dÓßrBC\'´Ú™|Kõ3Ü|ÿ\0†}Ÿë,‰ãôñù¶ž\"ïÄØ-	ìC/ÃƒÖÇIU_%yÂ)].†‡[«[ÑuIæ°ØŽW”ÞssÑ#“¬kfíÏòØÊnÎqöz¤ËUXéj0><w˜ÅQ#á“P?5Ííô]‡¼hÒ<†Ëˆfîó ö­Gš)Å°¼\\ˆ+@á¯ýãî»j+$okšÒ:ƒÂQ|ÖtíO£ó_ƒþ„R­™ÍþÓÎ×Ù«ï¿õ¸¹÷_,¹îqÎ. ZäÞÃÉ}Eö:û5©r\'ˆþ+åÃÊõžÍðßÕÿ\0CQwgdû,Jææ,Z=FÆ”:×Úú¹·šú\nIÎ—ó§Ù‰ús^$ÒFôþAwÊ‰,Ç{.]ûé}ìov|•Ÿåïsž0ñÿ\0ÕÉÇºÌ¸Ö%—ð¼¿YZdÃpñG\0`hf£rM¾cÒåE™%3fJSûUR÷Š­w+ÙaÃw$Üj¾Nª×àÚº‚£»öK2T„õªwäéÓ½¡ÅŽsIÜéqØ­›‘£ÚÚ¦yÙkêàµùÅëÒz¬ŸVsäýæb»LÍØÖ=$XN)-<ðÐ<÷w\0KbÐsù!rŒÑ<Í™°²W¶\'·ÄÆ¸†ºÇkŽ\nÜfÒ?NÕo½ÿ\0‚Áæ“z¨¿Â5ÙèØ1áq„\"’Ý×Íî3”çÝ\'l©kÞÖ9{ƒ_ó\0ãg{ù¤×¹ †¹ÍäEýÓR^šq[pÖR²\'Ëw}¶Á¯–ÆÞ€ôPÜ‡\\r®áÅ°é!­Â˜çmy!u‰÷eŒ’’øU™“ilT>7³æÞ`‚½c%c›\'u&›ó¤Ù[K.]˜1UA~Nm÷ÍÃØ\0§Äæ·‘k€#{4ÿ\0/ìHäi§D¬v»/³—°†·ÂÙ ´Þ\nRr‘ó=t%ÝLW¹IÜ¦‚{\\¨Z•¡ŽóQ‡Þ÷O\'¢Æ×DŠ±<Ù;]Žy2Z7@›“rˆi½ÇšìâXUYÊÕKº˜’I$q1»t^‹¦§B²È‡•¶Hè²Ã\\_p½$y/	âÉ_ÑS\"Ø÷Ãä¤m¸\n\"S˜Mö\nš5±ºnó\Z¨©#h£·Ô®µ\'Ê/ÑsÞÆ©ÄxUMIæI4ýß½þÕpõŽò3™¬•åb‰Ä9LëM÷UÌ‘¡Û”}4‘ž©9\nU\r®…Þè©Ú€{¬ä4i‡ÓòöÛ² Ã®÷¦ÃÙ¤\rÐæÝ…Š³›{/Ñ\rî³x½Eä;Ý”¶¢(å³ö=UÖâ y¬Ü&ï½î¯p‡é”]IG6Ì^J­¾R»óYšÃ¹+Ošü8Íh¾ýë¿5”®ëº{\nÙ@&ä”šíÔo)­uÍ“‰lY=Ò>j6”¤p\råUERû´¡Øàç×•/7°²Ž+Ü\"¨ìYgKÅÔ’8úÙCÑ¯\\âACjÙ8ú¦ê\0¦8ð¡ª²#nNÁZ[—L•’w’9Ã€tâ¤‘Þ&€‡¦c£‰¡Ç¥Ïº{I/Õ[( U+]¥„›X¨C‰=ÌÃ¦,ä4ª«(Ëbµ­¨©š¶K½‘<ZMƒòV9v¦lNCQP\Z_-Ôš­¯§SQÜø_.’@µ…¿ý«ü½M\r=4¯……Œ‘þ“}†×NdpX¸Ü4«´,ÄàMÈ^ˆä’¥~û¨ÅìBP	+YkYLÙ,…\'aÈCePk%&Û•#ëkªz¼VŠ·–`\\8kw+?‰f\nŠ cŠðÂGC¹«PÓÏ\'40O\'¶Ì8¤O4d;Añ¼yù *\\	\0€¤x\\|ÑPTëeºú§^B+´bZ~Ä¨9¦ãÑI:†Û!Xâz§÷ÁŽh\'rl«ÈQ=D)!¾÷&1í$6çe3E¹X2Gsªè¸_d\r!Òãkîˆq7ÔÒ%¸9+eÅ,ÇImö!d2nh7:EŠÓaíž¦š¡âï”†M¸ Z*7•ÏqÖ÷XýH&¿äS:LQÉßŽkfàŽí xmx¬Âéª­¤Í_kñq{(å–ÍÜþ*›,N]–p·Í$gýÐ¦©ŸÀ@;ùÝ|òP©46žÄ¦f†7`ãªj—XØ¡ß1\"Ä’†–M­ÑmDÌšP/¾èIe;\\ì›3öAÏ&Èª&©,¯>kÜ:QñÈ@Ï)ÒwK“úÎã…·ŠLohx9›+Va’Û[˜L.#åxÜœìS2Íˆ`Á1âXSÌµÇrÀ­±}ú•Çó³_’ûF£Í4­\"‚½ÝÍcGóNi#ãã–™óÌ~«Ëñ_ª-úš_´õöm[é$gýà¾b<¯¤{l•=šÖÉƒØíi‘¨X¯›W¨öqV–Kÿ\0³ý‘¸pu³„º3uhó£?ñÞ+f\"	\ríf’¾}û?¼·9T[­#¿0»†)?wC;‰â7~K×#z×ô@æýæ•13«©wœÏ?ï);©\'v©äuùy?Š‰{Lq¤†›´wÞËƒàÈ´-u¼@¸{¯f—k¬æB˜œ›‡ooÕ[ñV’MÒëÃjæ›~¯÷9òäÁæ·ŽT¹¸öáas1½Tgû¿Åm33ƒ±šƒ~£òX¬Çÿ\0‰ü\'ó]î˜½øýbäªKªI.øÐ’I%$’IBq¼DyDœ_¢\r>7·Ñãvû.vUYèôsîÓ¡—ÐSx^´Ýe£j[r‚U9åC7(ä[?6rd¢Òï)†à¦£ÉÊžð!‰$’(¸Öóº­›l‡RDEì±4fA\"œx?zq¥Œ‹‡ÕyÝLÃt¬¥%æaJKÌƒà÷ÚO¼/~Sò¹§ðF3›\"EÐÞy¢¼Y\"¨ÐTô`>Åx)*FÝÃ²ºiSÄnBÃÔËÐÚÔIþÍ#u6Z„=¥®q.7Z‡É¨iRå¦èÂ ÝV‚÷\\Ü¯ºMˆä“œÜ˜öv¹º6•†×7ALÝFç`™[ZÆ7D_T¾ÈÅ†Fü9 îCÆí”™ö“{…aGà!µE ü)–p$YièÀÒ\n¥¥@²³§›Hç`0ÑØ*º`ÈŽë/](t·\'•eŒTì\0w%QO{ê=}VR$ße=¶ «zøTÝ±%gC®Íß•–Œ¦aó‹­Ö¥÷²ÈWÏàµÙôµ™† 7É§ŸEŽ­pÜ\'p-‘kšñ®ßn©¯çÙ0yê,!¤©’T\0(*$ðêU‘Jðó×se,;½¡×x·è£Ï¿’+ÙXƒfÙFç$H¶É )	ÄsÅ”14áùFÍõ>j:‚esamÆ­Ï²!ºc`á¢ÞkUH§°÷’6ù¯\ZEÆåC<ð1 —‹ú!Ÿ‰Dß•¥ÅZƒ—ÔqÊ\\\"Ük ñ·[—{\0OÕúa×þÉ¿zeu`­¢’³_[­,r‹M›X\'|\0Ö–Ê(ècs‹LŽ#Éjh£lT11»47‚±¯¡©}LoŠF†± :ÞëU‡`ø®(ñ(2¼”9;„b—qy1´‘,ÕE»åk}Ê¯Ÿ\Z¢Žú\\çŸ@´Rv_œäˆ½¸T‚×»YuÅ2>e¡7©Ákc÷‰À~H8²iäéÏõ51jäUÔf\'›ˆ \0y¸ÝWOŠWT:wù7`½«Ã*àu¤§‘†ü‘dØæòÒ-æº0Ç‹˜Ðä1c[¤y¨›’I+Û…ŠxÙ É\'nv^1ú]pJó¢i ûÔ#â‹(gÔÐAßÊêJék}\Z±¸‡6!Md¡úG;ÙÃJèZZ8—\rp×cæ‹Š]¬O²ªŠª\'8	EG#Ã‚Jpk”+,r(³¥v7ú¢Õ÷ª˜å:äÛê v»;¥î(Öàd‹Ja¤®°9iÇªïþ“ø-ÜNÔâûXp5\01Úƒçcø&:Þ¿¡¼öVPªï2~àôqõþê*jƒcn@ê³ù¡§$`Äu¢òV2¿}D¯’’_Wû„OdeÚîBÎýöº‡â56Å uóQM.Ü…J$±ÒÊNè9e‡uäò²\nI,Ã½Í¼ÑTJ½‰d”\0\rìOªTsÚp.| ²öŽ@*o¿n;{—Î–ÖÝPç|Á—ª°Ù¹‘§Aý×Þ¬»Ák¨e–çb³ÊR‹Ýqyq¹ª»-Å°@Ú»scpqÝÌû—.]7¶ÌôX€ÆhîÈ«wRÁpâþë™žW¼é}’ÄòCù×£óýBcàÞö\'wœßÆô¯°f\n8]Y¿¸þ‹v4ýÉ£Îÿ\0’êyº¡eêùœðÖ¶oEÄêð½jú Y>3ç“¹$ù¯8K¢ñzá“·dwe,=§ý<«7¼O¢ÎälNž¯/SÃ¿Yoiä®$”Ø…â3Á¬²¿WûˆKi¬ÆíXµEíÉd3¼ñÿ\0…iñç—b•ŸÚYlvÝüvýßâ»>5(ýâä®I$—l`I$’„I$¡	¨¦ zì¬\0ð•W	Ó3Oª³r“Ô/zÎÏNŸðÜF;Õx’õü”Ô ò{ž’|ÔOOq²Ëq‘ÚÙéÒîÐ”‹ÂIaëÉœç·rõ#I ’8¨Äæü&¤©”ÂZñ«dC9AÆxDÆû‘p–ÉmPP·*HÝ¾ûfê@JZH°ídDÈÑæl…Ä¢¨È’6Ô&N©„´6Žù0+(Ão¿\nªš¡­§aóh²së®Û7d¤\rƒkëCŽ3º­ïo¿R¡Ôç¾ä©âo˜Yª)°Ü*]5\0ËUI¤¶ÝVJøƒ–‚ŽgÚz„«)2î)\ZÖÚû©Í­ê‚…ú¬î|Ñ\0€ÐNáõ		>È\nöÇmÏTeTÅ…¶è+Tdx°à¬¤S‘gO¥á–áXá®Í¹°i6T´owrÒE¶V8kîwTÕ,Âv¦þï39ÌØ:&¬dÒºBn¶]©q¨ÏœAbd°%=§øµ¸Â½Žé‚2Þ©5Å§ªyq±!¥2XÃªÄ!g$5Äž%Ö½ìR1’4‚ã¿@¦ZL­a¾öê¬¨,\"Ôl.›ÜÅ{2þå1¤vã€µ)w#j-…KQñ_Ù\nú¢í˜Ão2¤“À±^ÛHØ²Â¤ZŠ@’I0ysM‰ôH‰¥>+•`Æ4Û¼#ÙÝDl\Z}Õ¼•äMGÈ¦u;ŽÍi%C%—¹iWî-€¼–H4êÔ÷ÝEšk€‘Ìýãé^í>Ê73OSê¬ª§K4:Þw@Ì\Z]óÌ\'&½áˆ;<Žáã¥üÖû³ÒöWF÷Ø´Ø›‚c´AºÓåZæGW‘Û_Õ+¬‹”æŽÖ}i”óRR²=X´{[e£f\'·…Ö}{®G*°÷²óÔ½[³>ÜjŠ ¼Ž	ròÓN(ÎUÈìv‡/ÖDÿ\0‰Âi¥s·¹·ü—2ÌYK*T9ïvIï³[kÍh±ÜÂÈ	iuˆ6ç•ŽÄó#&imÅýÑqG\"Þ ÛVc1ŒÜRJÁÈ-wfkr>Ö¸¶¦V[€BÙâ8Ëí¥²;šÇ•M>&×’>§•ÒÇŸQæc0ï£!6LÜ˜«÷šŸ(â·S÷ó[†ÔÞÃr™4„lQ×g^am®Ny6‰E}P=’ÑUF|p=¿EÑ^òëìèyZ\\|LüãÔ\'æ‘ŸŽzæ½¤jiÔ$ö‰u,9¶|m?ê j¨ 0³aå¸LG_ÌIâ§³Feµ.¿ë.B¼ Ä©ô}T.ÂápðBšìÅ Æ\rý\nÔòaÉç@rcÅ/:44¯kÛáp!csSƒ±©ˆä¬b‚¶–R\"•Ût(Z\nšªŽõÚui·ºÖ–*.ö Âá+½§»8œ»\"`ÄØÿ\0T`üÜ²óöYí2áE>4rCÃ{PUÔ}«âÃû|\ZÛ/p^c?KÎòIªåùšð\'G]|œžY-°\\Ò>Õ£ wØ<Íÿ\0 ÿ\0C;MÁÞ?[OW®$ôýD”§‡\'üMÛäðí×Í	4€j±YOò‹–¤ud‘ÿ\0Ž\"pËÓßF/MsÆ£§óSì™£Ìä	ã’å\ZÈ4Üù/idþ°:z•LÜkšÂ*úgûH4•‘>a¡ìvüƒu™c’åà¾t—*\'Iíu¦ì¡’P<Ð»HgûQ“&b\ZÚDwèAåpÊï¡IÞeDtîJàç•ëzÜÉ|ÿ\0 \\\\3KÙµm6™ÙUU+\"…°¿Sœvá;=fÊŒÁVb…ÏŠŽðFyyýçÑeÒ]7¤ÆóøÏwUô7Ú»»„’I&Y{›	ÄPÂLdÚFtp]Nšº\ZªVTDàæ<\\Æ–ƒ(ãn¡—á*ý^C±?°’åuŠ¼Hò¿T4-Z,ñ‡‡bú¹fñ£yÙþy‰ÈU3ƒ‡ÌmeAŠ›ÌÓÓJ­jKèV>P\ZI$ºÃI$” ’I%!±º³a»AôUˆúcx‚_P¶LètùTšñÕ1Û÷¨Žæéxäi3Ód×/BñÜ- 2d2‹µG1áCÃÑ¡ÅeÚIžg¼O“›¦\"ÅÚš©1‰$’Ñ“ÐQ1»¢Mèò#×áNÂ„ˆÙÈˆÝºNqÐC	$YK¼Í¡Ë„~g×Bï	#Ü™Ž†°`Ðâsº‰‘¹Î%dtJ±v9ºÇStD&Bz§ÂÀm°FDÖ0\\ì¤Ê=£dšƒžlèØ+ZéŒm6E}xk{¨ÎÝP”Õ%“5Í¾Ç•ŽÛ%ºyN†ÜÙÇñ½Õ4\r11ä€N“dÐÃ-Cºiy@q-¸“µƒº¦˜j’äÚÊ¾²·©6šžV/wòA¾‚¦Gj¨®«›ÐðQB–ì¶Cj)â`kåkEº¸öcTP^Òê·î‹ª\nj£ÜS´ŸÞyÔíl6µ…ü–\\StREft¨n+\\Éâ­c4]VtR6þ-Ei$¦”˜Hê…’‡ïßÒÉˆIEPDS˜â\rÒÆ4{Ôn¦à¥•ÏÃ1çNŸ¢ôÖ’ÑKJfŠw±Û°B¢Ò×†\0­f¢•Ä—0\0:…ÂÒÐVÔÑµ\"¶Hvÿ\0š`ÀlÑYšG4ß‘ê½l{oÛÈ«ïØ¾ò¬Fñq¦é¦9?tè­¿w`Í·\0åe;‹î+t_c«ni’?oêJ°ha}´Ø•äðDÑpu®ïRYZù\\ñ¥ÎP˜ÞÃ\rRÑ6-vpú¥;Ÿ¢÷\Zo`»ëdjéó2M\\z!œ×—‹a,að†ì tÑÉ~ò=¡3:àouÀ)Ô\r€DFéDà´o%K[u°‡5yCRY0pKò´Ó”]“÷N–ñÙàƒºˆ\\mbíÖ’ÕQÝHÖØoplW;ÁkàlE²´ŸÝÙqHXZ\ZGBE×ztäö9Ò»/qŒo¾q{¤&þªŽlI½#ÕVÔÖ¶FøŽ¢~ˆfs¶Ø]\Z\ZuT\\S,k+nà_eY-C„€ÞöòBUJ÷oê†k(«OG_’Žæ‚’­ï½ÊS×8:ÜýUd5€†‚	J2XçIPÆ¿€ÂƒáSÜÚ°¸ëÍö\0÷×’<`ŸePæOÎ×4uºk§w6?z\'Ùï€t™dùšã{Ÿ]Ò†ïº{ö¹6U‚BàK‰ú))åŒŸ”‹­<2HûR&”L.ahÛ“t©mÃ\ZÏŽÛ$@†84£’f¸Xê¾án¶­9 ÚÜ†Ÿ¿4R8ÜA¿äª·ŽÂzGºNÂÊÕ¸…l`±„²þO!MNb–S%KÞçù‡eˆÊq^ò²œÓE02	LO„ÀMˆ+J\nxà\'©tV’³\r!’Wu\'¢¯ž*&¼˜Z\\ooáeË¿ÊJ^…Œøp3¹Ö}l™_ƒá®ˆh>^ªŠ6Õ6 ˜Ýcïtª++a¸sÜu{î§‚ÓÙ‘Jk†K[—è«¹ÔàÌêªl .É/æ&¾®Öl£EªjµÝÄ“ä:¦`ò¯æ²e^`$Ñµì¸à7Ââ°;TFVzÇ%•ëêu‘¬;î8P¾x‰ð7aÍÑãŸ\'š³^,å³:g¸®ŒµX…Hø–¸‚$}Ýe u\\OÝ’´ùn¸Û§f¡gpSÅCÚàcíözåeéýórº¿gCÏ•³+×w²µÑ–¶ç’xq\'r´X„òÖ\0Ê™d™­ùCœM•wÁÂæ›8ÆG+«Ó±-.6›»a »QZžÈ¥|o‘±¸±Ÿ;­°Sš7µÂçÃ{\\+lC¥fpªjCqs‹ÕêSóÊÓJ\nïô6ïÉ^ïºõ¢îÔ#Ygƒt•®?‡6’FÍOg@ð8<UuŒy#’*Q);Vƒ¨*ŽžæBOî’TxööB›ôåI4¦]:¹Ë+SîEvïdi$’1¡$’JI$’„*ß«·‘B©©ˆ„,ªâ1¥—nTÿ\05\ZyùS/ºV\'W#ÞÅÊcŽéÄÛ„Ân´€ÊI#ÃÂ…û5ú(¤ÝywGŽ7jh^ŽodhúK}Æ¤’H½¨”„žÛßd’U(ªe4¨™„¢cqå$—:m¢xÍÊ;:k\"#£’I/6a£NI`>aÞÞi$•`»PS]¤l‡¨žG!ÚBI,¢‡Ðaí¨:ß+½¬®©°zH÷!Ï#Ì¤’Ý’•‡ü4A›0pšZ\0²I!Ñ}¨ð´y]zÒmn‰$¨®Ô+&LËòä’TÑ)Êç2ûÞÈy#2\0ç<Üù$’ˆ´)gt÷1¤î7=WŒ„4lmôI%³T†8é;„%Ct’[·¢I+‚Ü´ˆÃ‹¶ /ZEÈÒ6ôI%¹\"énž¬6`\Z@å$–Z% *ˆ˜æÞÀ+¢Ññ’KI²Òt-·uä°ÞI$l$9+åf¯ýÈ	ž.@m¾©$œ‹ÜulDöÝ­ñÓâ;y$’Ûn‚y8dz†î\"þJÀ»»~‘r-Ô¤’Fnä)•.àZ‰£Ô@ê«DÄÜ„’F‚ToQä…À|Å5pëÂI--ÐÀá;ïÓ„ÂâMîE’I\\U=‰!Ð¼˜ÝÖ&÷CTLöŸÖI$Hr}<®–Í;#ÓZ\ZóI$,Ž™Sa@àuÑRÓ4YÇîI$¬¤ìY»b01Ì;¸PÎiŽ@ç”’WÌ#ÆË#$¶«û©Ò9®ùÏ:RI¶/µQòM2ZþŠ\ZšéŸÖl|’I\\RosQI‚±áàêhQ	OÊÐ[ê\nI&A+aÌ»Ù­Îq*\'mÔ¤’Ê“º1O<7M¾Ö	$Š˜Fˆ\'yhÚâþ¨Q;ÚûÞý7I$Æ-ù.+cÙ¥v­¶ê›#nÆ¿Q¹6ßt’WÂ+‡C¥¯Ó¤[uÏð’H‹‹-¡íï;×é¿Ý)âq»šÉ$–”ä¸1.*©ãdz›q¿šÖI$}4œ¡l¨ð$’I1F¨I$’”JI$¥„¥¦•$–2/u„Åñ —›&ó¿T’H&Î”¤ÛIMrI\"\'¸	=Žò	$‰¸=†–ú¨Þ<Gt’FÄ\n\\ÿÙ','0000-00-00','0000-00-00'),('John','Cena','09:00:00.000000','Screenshot_7.png','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `play` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonPlay` AFTER INSERT ON `play` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Insert on Play", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonPlay` AFTER UPDATE ON `play` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Play", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonPlay` AFTER DELETE ON `play` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Play", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production` (
  `ProdNo` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Revenue` int(10) NOT NULL,
  PRIMARY KEY (`ProdNo`),
  KEY `Title` (`Title`,`Date`),
  CONSTRAINT `production_ibfk_1` FOREIGN KEY (`Title`) REFERENCES `play` (`Title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES (3,'MahachoKaaju','2018-12-31',12000),(4,'Cena','2017-01-30',12345);
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonProduction` AFTER INSERT ON `production` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Production", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonProduction` AFTER UPDATE ON `production` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Production", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonProduction` AFTER DELETE ON `production` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Production", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seats` (
  `SeatNo` varchar(10) NOT NULL,
  `ProdNo` int(11) NOT NULL,
  `Taken` tinyint(1) NOT NULL,
  PRIMARY KEY (`SeatNo`),
  KEY `SeatNo` (`SeatNo`),
  KEY `ProdNo` (`ProdNo`),
  CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonSeats` AFTER INSERT ON `seats` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Seats", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonSeats` AFTER UPDATE ON `seats` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Seats", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonSeats` AFTER DELETE ON `seats` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Casts", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsorship` (
  `UserID` int(11) NOT NULL,
  `ProdNo` int(11) NOT NULL,
  `Date_of_Donation` date NOT NULL,
  `Amount_of_Donation` int(10) NOT NULL,
  PRIMARY KEY (`UserID`,`ProdNo`),
  KEY `UserID` (`UserID`),
  KEY `ProdNo` (`ProdNo`),
  CONSTRAINT `sponsorship_ibfk_8` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sponsorship_ibfk_9` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorship`
--

LOCK TABLES `sponsorship` WRITE;
/*!40000 ALTER TABLE `sponsorship` DISABLE KEYS */;
INSERT INTO `sponsorship` VALUES (102,3,'2018-11-29',13000),(103,4,'2019-01-03',345678);
/*!40000 ALTER TABLE `sponsorship` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonSponsorship` AFTER INSERT ON `sponsorship` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Sponsorship", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonSponsorship` AFTER UPDATE ON `sponsorship` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Sponsorship", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonSponsorship` AFTER DELETE ON `sponsorship` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Sponsorship", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `TicketID` int(20) NOT NULL,
  `UserID` int(11) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Cost` int(10) NOT NULL,
  PRIMARY KEY (`TicketID`,`UserID`,`SeatNo`),
  KEY `TicketID` (`TicketID`,`SeatNo`),
  KEY `SeatNo` (`SeatNo`),
  KEY `UserID` (`UserID`),
  KEY `Title` (`Title`,`Date`),
  CONSTRAINT `tickets_ibfk_6` FOREIGN KEY (`Title`) REFERENCES `production` (`Title`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_ibfk_7` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_ibfk_8` FOREIGN KEY (`SeatNo`) REFERENCES `seats` (`SeatNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonTickets` AFTER INSERT ON `tickets` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Tickets", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonTickets` AFTER UPDATE ON `tickets` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Tickets", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonTickets` AFTER DELETE ON `tickets` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Casts", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `translogs`
--

DROP TABLE IF EXISTS `translogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translogs` (
  `Name` varchar(20) NOT NULL,
  `Info` varchar(100) NOT NULL,
  `Time` datetime NOT NULL,
  PRIMARY KEY (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translogs`
--

LOCK TABLES `translogs` WRITE;
/*!40000 ALTER TABLE `translogs` DISABLE KEYS */;
INSERT INTO `translogs` VALUES ('','Insert on Users','2016-05-25 20:35:22'),('','Add on Administrator','2016-05-25 20:50:17'),('','Delete on Users','2016-05-25 21:14:14'),('','Insert on Users','2016-05-25 21:17:16'),('','Insert on Play','2016-05-25 22:47:14'),('','Insert on Play','2016-05-25 22:48:27'),('','Add on Production','2016-05-25 22:49:25'),('','Add on Production','2016-05-25 22:49:51'),('','Add on Seats','2016-05-25 22:51:54'),('','Delete on Casts','2016-05-25 23:59:29'),('','Update on Casts','2016-05-26 00:35:02'),('','Update on Casts','2016-05-26 00:38:23'),('','Update on Casts','2016-05-26 00:38:41'),('','Update on Casts','2016-05-26 02:50:14'),('','Update on Casts','2016-05-26 02:50:17'),('','Update on Casts','2016-05-26 02:50:57'),('','Update on Casts','2016-05-26 04:15:27'),('','Update on Casts','2016-05-26 04:15:34'),('','Delete on Users','2016-05-26 04:27:24'),('','Update on Casts','2016-05-26 04:37:41'),('','Insert on Users','2016-05-26 04:38:02'),('','Insert on Play','2016-05-26 04:39:29'),('','Insert on Play','2016-05-26 04:43:04'),('','Add on Administrator','2016-05-26 04:44:23'),('','Insert on Member','2016-05-26 04:44:50'),('','Delete on Production','2016-05-26 04:45:45'),('','Delete on Production','2016-05-26 04:45:47'),('','Add on Production','2016-05-26 04:46:07'),('','Add on Casts','2016-05-26 04:46:35'),('','Add on Sponsorship','2016-05-26 04:47:02'),('','Insert on Users','2016-05-26 04:48:39'),('','Add on Production','2016-05-26 04:49:07'),('','Add on Sponsorship','2016-05-26 04:49:23'),('','Insert on Users','2016-05-26 04:59:34');
/*!40000 ALTER TABLE `translogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Patron` tinyint(1) NOT NULL,
  `Sponsor` tinyint(1) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `ContactNo` int(15) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `LogIn` tinyint(1) NOT NULL,
  PRIMARY KEY (`UserID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (102,1,0,'oiuytre','hgfds',345678,'Fred','299f9b57c745f3bfe3e78a68fb6ef2732e3a392f',0),(103,1,0,'Greed','Deerg',2345678,'Freed','bf4fbbc38fb029ba3b709faa6ccb828e31ce0b8b',0),(104,1,0,'Derp','sarana',234567890,'Freed','85646dda939846660e96f38044f604a173fa61ee',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addonUsers` AFTER INSERT ON `users`
 FOR EACH ROW INSERT INTO translogs (Info,Time) VALUES ("Insert on Users", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `updateonUsers` AFTER UPDATE ON `users` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Users", CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteonUsers` AFTER DELETE ON `users` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Users", CURRENT_TIMESTAMP) */;;
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

-- Dump completed on 2016-05-26  5:16:00
