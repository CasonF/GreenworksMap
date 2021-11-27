-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eco_map
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `Event_ID` int NOT NULL AUTO_INCREMENT,
  `PillarID` int DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `Event_descr` varchar(250) NOT NULL,
  `Event_address` varchar(250) NOT NULL,
  PRIMARY KEY (`Event_ID`),
  KEY `PillarID` (`PillarID`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`PillarID`) REFERENCES `pillars` (`PillarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `greenworks_locations`
--

DROP TABLE IF EXISTS `greenworks_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `greenworks_locations` (
  `Sub_PillarID` int NOT NULL,
  `Location_ID` int NOT NULL DEFAULT (time_to_sec(now())),
  `Street_address` varchar(250) DEFAULT NULL,
  `Descr` varchar(250) NOT NULL,
  `Zip_code` int DEFAULT NULL,
  PRIMARY KEY (`Sub_PillarID`,`Location_ID`),
  CONSTRAINT `greenworks_locations_ibfk_1` FOREIGN KEY (`Sub_PillarID`) REFERENCES `sub_pillars` (`Sub_PillarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `greenworks_locations`
--

LOCK TABLES `greenworks_locations` WRITE;
/*!40000 ALTER TABLE `greenworks_locations` DISABLE KEYS */;
INSERT INTO `greenworks_locations` VALUES (31,26489,'1000 W Buena Vista Dr','Disney\'s Cornonado Springs Resort | J-1772',32830),(31,26574,'15651 Grove Resort Av','The Grove Resort & Spa | J-1772',34787),(31,26597,'901 Timberline Dr','Disney\'s Wilderness Lodge | J-1772',32830),(31,26641,'1 Grand Cypress Blvd','Hyatt Grand Cypress | Wall,  J-1772',32836),(31,26670,'11637 Regency Village Dr','Regency Village | J-1772',32821),(31,26691,'8800 Vistana Centre Dr','Seraton VIstana Resort Villas | J-1772',32821),(31,26717,'14900 Chelonia Pkwy','JW Marriott | J-1772',32821),(31,26741,'215 Cypress Dr','Disney Hollywood Studios |- J-1772',32830),(31,26759,'14100 Bonnet Creek Resort','Hilton Orlando Bonnet Creek | J-1772',32821),(31,26776,'14651 Chelonia Pkwy','Wyndham Bonnet Creek Resort | Wall, J-1772',32821),(31,26796,'14200 Bonnet Creek Resort Ln','Waldorf Astoria Orlando | Tesla',32821),(31,26813,'1590 E Buena Vista Dr','Disney Springs Orange Garage | J-1772',32836),(31,26832,'1662 E Buena Vista Dr','Walt Disney World - Grapefruit Garage | J-1772',32836),(31,26871,'12000 International Dr','Worldmark Wyndham | J-1772',32821),(31,26894,'11251 Harbour Villa Rd','Marriott Cypress Harbor | J-1772',32821),(31,26920,'8636 Villa Pt','Arbors at Maitland Apartments | J-1772',32810),(31,26934,'9301 Summit Centre Way','The Tiffany at Maitland West | J-1772',32810),(31,26952,'2789 Lee Rd','Trotters Park | J-1772',32810),(31,26973,'4851 Apopka Vineland Rd','St. Luke\'s United Methodist | J-1772',32819),(31,26990,'5165 Metrowest Blvd','Eagle Nest Park | J-1772',32811),(31,27019,'12785 S. Orange Blossom Trl','Universal Nissan | J-1772',32837),(31,27037,'6420 Sea Harbor Dr','Sea Harbor Drive Parking Lot | CHAdeMO, CCS/SAE',32821),(31,27057,'9939 Universal Blvd','Shingle Creek Hotel - Employee Lot | J-1772, CHAdeMO, CCS/SAE',32819),(31,27074,'1 Jeff Fuqua Blvd','Orlando International Airport - Terminal A | J-1772',32827),(31,27098,'7945 Dowden Rd','McCoy Community Park | J-1772',32827),(31,27159,'10425 Narcoossee Rd','Walgreens | J-1772',32832),(31,27184,'Moss Preserve Pkwy','The Oasis at Moss Park Preserve Luxury Apartments | J-1772',32832),(31,27207,'6900 Laureate Blvd','UCF College of Medicine | J-1772',32827),(31,27226,'6700 Lake Nona Blvd','UCF/Lake Nona Medical Center | J-1772',32827),(31,27242,'100 W Anderson St','Relaible Plaza -2 | CHAdeMO, CCS/SAE',32801),(31,27295,'12530 Innovation Way','Hudson at East Apartments | J-1772Hudson at East Apartments | J-1772',32828),(31,27316,'2715 Innovation Way','Eight at East Apartments | J-1772',32828),(31,27339,'13631 Sachs Ave','Laureate Park Pool',32827),(31,27356,'200 Epcot Center Dr','Disney Epcot Center | J-1772',32821),(31,27373,'8200 Vineland Ave','Orlando Vineland Premium Outlets | CHAdeMO, CCS/SAE, J-1772',32821),(31,27387,'11551 International Dr','La Quinta Inn & Suites by Wyndham | J-1772',32821),(31,27415,'11715 Avenue Laguna','Marriott Grande Vista | J-1772',32821),(31,27434,'5935 Avenida Vista','Marriott Grand Vista | J-1772',32822),(31,27454,'6300 Parc Corniche Dr','Parc Corniche Condominium | J-1772',32821),(31,27470,'6801 Integra Cove Blvd','Integra Cove Apartments | J-1772',32821),(31,27487,'6677 Sea Harbor Dr','Renaissance Orlando at SeaWorld | Tesla, J-1772',32821),(31,27509,'7049-7057 Sea Harbor Dr','Sea World Orlando | J-1772',32821),(31,27523,'6420 Sea Harbor Dr','Seaworld Corporate Office | J-1772',32821),(31,27537,'6675 Westwood Blvd','Westwood Blvd Parking Garage | J-1772',32821),(31,27563,'9400 Turkey Lake Rd','Dr Philips Hosptial - Parking Deck | J-1772',32819),(31,27578,'10000 Turkey Lake Rd','Westgate Lakes Resort & Spa | J-1772',32819),(31,27595,'9800 International Dr','Westgate Lakes Resort | J-1772',32819),(31,27610,'9801 International Dr','Hyatt Regency Orlando | J-1772, Wall, Tesla',32819),(31,27655,'9899 International Dr','Orange County Convention Center South | Wall, J-1772',32819),(31,27670,'5012 Shoreway Loop','Vista Cay',32819),(31,27684,'4155 W Taft Vineland Rd','IAAPA Global Headquarters | J-1772',32821),(31,27701,'2800 Destination Pkwy','Home2 Suites by Hilton | J-1772',32819),(31,27865,'7659 Majorca Pl','Orlando Lake House by Alta Parking | J-1772',32819),(31,27880,'8134 International Dr','Comfort Inn International Drive | Tesla',32819),(31,27902,'8050 International Dr','Hollywood Plaza Garage | J-1772',32819),(31,27928,'6500 W Sand Lake Rd','Orlando Supercharger | Supercharger',32819),(31,27944,'7355 Sand Lake Rd','Rialto Shopping Center | J-1772',32819),(31,28020,'6327 International Dr','Rosen Inn | Wall, J-1772',32919),(31,28065,'11801 W Colonial Dr','Manheim Orlando | J-1772',34761),(31,28081,'7125 Universal Blvd','Oasis Beach Bar / Dockside Inn & Suites | J-1772, Wall',32819),(31,28097,'5909 International Dr','Four Points Sheraton | Wall, J-1772',32819),(31,28113,'Cabana Bay','Universal\'s Cabana Bay Beach Resort | J-1772, Tesla',32819),(31,28128,'100 Maguire Park St','Park Place at Maguire | J-1772',34761),(31,28143,'6725 Adventure Way','Universal\'s Aventura Hotel | J-1772',32819),(31,28213,'6601 Adventure Way','Loews Sapphire Falls Resort at Universal Orlando',32819),(31,28234,'10000 W Colonial Dr','Orlando Health - Health Central Hospital | J-1772',34761),(31,28291,'6300 Hollywood Way','Royal Pacific Resort | Tesla, J-1772',32819),(31,28306,'6000 Universal Blvd','Universal Orlando Resort - Valet Parking | J-1772, Tesla',32819),(31,28328,'5800 Universal Blvd','Hard Rock Hotel at Universal Orlando',32819),(31,28351,'4851 Apopka Vineland Rd','St. Luke\'s United Methodist | J-1772',32819),(31,28403,'5601 Universal Blvd','Loews Portofino Bay Hotel at Universal Studios | J-1772, Tesla',32819),(31,28423,'5661 Windhover Dr','Wingate by Wyndham | J-1772',32819),(31,28447,'1800 S Kirkman Rd','Valencia College - Lot A | Wall, J-1772',32811),(31,28467,'5200 Vineland Rd','Park Square Homes | J-1772',32811),(31,28496,'4779 Vineland Rd','City Furniture | J-1772',32811),(31,28513,'4200 Conroy Rd','Mall at Millenia | J-1772, Tesla',32839),(31,28532,'4092 Eastgate Dr','IKEA | J-1772',32839),(31,28548,'1800 S Kirkman Rd','Valencia College - West Campus | Wall, J-1772',32811),(31,28565,'4458 S Texas Ave','Alhambra Village | J-1772',32839),(31,28578,'3800 Gardenia Ave','Orlando Utilities Commission | J-1772, CHAdeMO, CCS/SAE',32839),(31,28608,'3770 37th St','Orlando Harley-Davidson | CCS/SAE',32805),(31,28625,'5151 Raleigh St','Washington Park Library | Wall, J-1772',32811),(31,28640,'4855 LB McLeod Rd','Rip It Sporting Goods | Tesla, J-1772',32811),(31,28660,'5156 Metrowest Blvd','Eagle Nest Park | J-1772',32811),(31,28676,'1723 Btuton Blvd','Dr James R Smith Center | J-1772',32805),(31,28696,'1840 Mable Butler Ave','L Claudia Allen Senior Center | J-1772 ',32805),(31,28711,'1002 W Carter St','John H Jackson Community Center | J-1772',32805),(31,28731,'129 W Copeland Dr','W Copeland Dr Parking Garage | J-1772',32806),(31,28754,'4801 W Colonial Dr','Barnett Park | J-1772',32808),(31,28770,'77 W Copeland Dr','Orlando Regional Medical Center - Street Parking | Wall, J-1772',32806),(31,28789,'73 W Underwood St','Orlando Regional Medical Center - Main Entrance | Wall, J-1772',32806),(31,28809,'1315 S Orange Ave','The Delaney Hotel',32806),(31,28836,'3955 WD Judge Dr','Northwest Community Center | J-1772',32808),(31,28855,'818 Main Ln','Lucerne Pavilion - Orlando Health | J-1772',32801),(31,28881,'800 Delaney Ave','Beardall Senior Center | J-1772',32801),(31,28897,'100 W Anderson St','Reliable Plaza - 1 | Wall, J-1772',32801),(31,28914,'1701 Mercy Drive','Magnolia Pointe | J-1772',32808),(31,28931,'100 W Anderson St','Reliable Plaza - 2 | Wall, J-1772',32801),(31,28953,'460 Boone Ave','City Commons Parking Garage | J-1772',32801),(31,28965,'400 W South St','Geico Garage - 1 | J-1772',32805),(31,28992,'3776 W Colonial Dr','Reed Nissan | CCS/SAE, CHAdeMO, J-1772',32808),(31,29011,'400 W South St','Geico Garage - 2 | J-1772',32805),(31,29027,'400 S Orange Ave','Orlando City Hall | Wall, J-1772',32801),(31,29041,'3489 W Colonial Dr','Greenway Kia West | J-1772',32808),(31,29060,'300 S Orange Ave','Lincoln Plaza | J-1772',32801),(31,29076,'255 S Orange Ave','Citrus Club | J-1772',32801),(31,29097,'1813-1927 W Church St','Lake Lorna Doone Park(Splash Pad) | J-1772',32805),(31,29112,'301 S Rosalind Ave','Orange County Administration Center - Garage | J-1772',32801),(31,29138,'201 S Rosalind Ave','Orange County Administration Center | J-1772',32801),(31,29152,'200 S Orange Ave','Main & Main | J-1772',32801),(31,29167,'1519 W Church St','Lake Lorna Doone Park | J-1772',32805),(31,29207,'302 E Pine St','302 Pine St Parking | J-1772',32801),(31,29223,'1 Citrus Bowl Pl','OUC Citrus Bowl | J-1772',32805),(31,29257,'53 W Central Blvd','Central Blvd Garage | J-1772',32801),(31,29274,'1221 W Colonial Dr','Office Building | J-1772',32804),(31,29291,'10 N Summerlin Ave #52','Thornton Park Central Parking Garage | J-1772',32801),(31,29305,'215 E Washington St','Lake Eola Park | J-1772',32801),(31,29322,'62 W Washington St','Jefferson Street Garage | J-1772',32801),(31,29345,'217 E Ridgewood St','Landmark Parking Center West | J-1772',32801),(31,29362,'1600 Edgewater Dr','Infusion Tea | J-1772',32804),(31,29411,'245 E Ridgewood St','Landmark Parking Center East | J-1772',32801),(31,29428,'501 N Magnolia Ave','AGPM | J-1772',32801),(31,29450,'304 W Colonial Dr','OUC | J-1772, Wall',32801),(31,29467,'99 E Marks St','Marks Street Senior Recreations Complex | Wall, J-1772',32803),(31,29484,'1200 E Hillcrest St','Harris Civil Engineers | J-1772',32803),(31,29500,'1236 N Orange Ave','Lake Ivanhoe Park | J-1772',32804),(31,29515,'549 W Par St','Dubsdread Golf Course | J-1772',32804),(31,29531,'1517 Lake Highland Dr','Colonialtown Neighborhood Center | J-1772',32803),(31,29555,'2393 Elizabeth Ave','College Park Community Center | J-1772',32804),(31,29569,'3473 Parkway Center Ct','Phat Planet Studios | J-1772',32808),(31,29584,'2789 Lee Rd','Trotters Park | J-1772',32810),(31,29605,'2200 Lee Rd','Lake Fairview Park | J-1772',32810),(31,29686,'4801 W Colonial Dr','Barnett Park | J-1772',32808),(31,29707,'3776 W Colonial Dr','Reed Nissan | J-1772, CCS/SAE, CHAdeMO',32808),(31,29732,'3489 W Colonial Dr','Greenway Kia West | J-1772',32808),(31,29747,'1701 Mercy Drive','Magnolia Pointe | J-1772',32808),(31,29763,'2545 Industrial Blvd','Standard Motorcycle Co. | J-1772',32804),(31,29780,'963 Wymore Rd','Fields BMW | J-1772',32714),(31,29795,'1002 W Carter St','John H Jackson Community Center | J-1772',32805),(31,29817,'101 N Parramore Ave','Callahan Neighborhood Center | J-1772',32801),(31,29833,'323 N Parramore Ave','Parramore Parking Garage | J-1772',32801),(31,29849,'600 W Amelia St','Creative Village | J-1772',32801),(31,29875,'400 Alexander Pl','Alexander Pl Parking/Charging | J-1772',32801),(31,29912,'400 W South St','Geico Garage - 1 | J-1772',32805),(31,29933,'400 W South St','Geico Garage - 2 | J-1772',32805),(31,29950,'100 W Anderson St','Reliable Plaza(1) | J-1772, Wall',32801),(31,29984,'300 S Orange Ave','Lincoln Plaza | J-1772',32801),(31,30000,'400 South Orange Avenue','Orlando City Hall | Wall, J-1772',32801),(31,30176,'818 Main Ln','Lucerne Pavillion - Orlando Health | J-1772',32801),(31,30191,'800 Delaney Ave','Beardall Senior Center | J-1772',32801),(31,30209,'73 W Underwood St','Orlando Regional Medical Center - Main Entrance | Wall, J-1772',32806),(31,30227,'77 W Copeland Dr','Orlando Regional Medical Center - Street Parking| Wall, J-1772',32806),(31,30243,'129 W Copeland Dr','W Copeland Dr Parking Garage | J-1772',32806),(31,30258,'1315 S Orange Ave','The Delaney Hotel | Tesla',32806),(31,30277,'2177 S Summerlin Ave','Wadeview Community Center | J-1772',32806),(31,30300,'1718 E Michigan St','OC Family Services | J-1772',32805),(31,30314,'2733 S Ferncreek Ave','Primrose Center Inc | J-1772',32806),(31,30378,'3180 Southgate Commerce Blvd','Free Kick Orlando | CHAdeMO',32806),(31,30395,'2100 E Michigan St','Orange County Veterans Services | J-1772',32806),(31,30409,'2350 E Michigan St','OC Med Exam | Wall, J-1772',32806),(31,30423,'1400 Gaston Foster Rd','Dover Shores Community Center | J-1772',32812),(31,32063,'110 George Desalvia Way','OPD Range | J-1772',32807),(31,32079,'224 George Desalvia Way','George Desalvia Way Parking/Charging | J-1772',32807),(31,32093,'201 Andes Ave','Park of the Americas | J-1772',32807),(31,32107,'6123 La Costa Dr','Englewood Neighborhood Center | J-1772',32807),(31,32124,'5971 Pershing Ave','OUC Pershing Facility | Wall, J-1772',32822),(31,32136,'7727 Lake Underhill Rd','Florida Hospital East Orlando | J-1772',32822),(31,32151,'8125 E Colonial Dr','Sutherlin Nissan Orlando | J-1772, CHAdeMO',32817),(31,32175,'8701 E Colonial Dr','Greenway Kia East | J-1772',32817),(31,32191,'9001 E Colonial Dr','Greenway Ford | J-1772',32817),(31,32206,'701 N Econlockhatchee Trail','Valencia College | J-1772',32825),(31,32218,'4917 Turnbull Dr','Turnbull Park | J-1772, Wall',32812),(31,32233,'6021 S Conway Rd','Extension Education Center | J-1772, Wall',32812),(31,32251,'3437 Barnstable Pl','Southport Community Park | J-1772',32827),(31,32274,'1 Jeff Fuqua Blvd','Orlando International Airport - Terminal A | J-1772',32827),(31,32298,'1 Jeff Fuqua Blvd','Orlando International Airport - Terminal B | J-1772',32827),(31,32310,'7945 Dowden Rd','McCoy Community Park | J-1772',32827),(31,32323,'Lake Nona Blvd','US Tennis Association National Campus at Lake Nona | J-1772',32827),(31,32344,'10425 NARCOOSSEE RD','Walgreens | J-1772',32832),(31,32358,'6500 Sanger Rd','UCF Research and Academic Center | J-1772',32827),(31,32371,'6700 Lake Nona Blvd','UCF/Lake Nona Medical Center | J-1772',32827),(31,32388,'6887 Marwick Lane','Lake Nona Town Center - 3 | J-1772',32827),(31,32406,'6955 Lake Nona Blvd','Lake Nona Town Center - 1 | J-1772, Tesla',32827),(31,32418,'6900 Tavistock Lakes Blvd','Lake Nona Town Center - 2 | J-1772, Tesla',32827),(31,32431,'7004 Tavistock Lakes Blvd','Pixon Apartments Parking Lot - Ground Level | J-1772, Tesla',32827),(31,32444,'6900 Laureate Blvd','UCF College of Medicine | J-1772',32827),(31,32462,'14086 Centerline Dr','Heroes Community Park | J-1772',32827),(31,32475,'13631 Sachs Avenue','Laureate Park Pool | J-1772',32827),(31,32487,'200 Outlook Point Dr','Dynamic Attractions | J-1772',32809),(31,32502,'224 Outlook Point Dr','Horizon Commerce Park II | J-1772',32809),(31,32951,'8001 S Orange Blossom Trail','The Florida Mall | CCS/SAE, CHAdeMO',32809),(31,32966,'8001 S Orange Blossom Trail','The Florida Mall - Foot Locker | J-1772',32809),(31,32994,'8701 S Orange Blossom Trail','King Fountain Mitsubishi | J-1772',32809),(31,33026,'9750 S Orange Blossom Trail','Fields BMW South Orlando | J-1772',32837),(31,33038,'5944 S Orange Blossom Trail','Domino\'s Pizza | Wall, J-1772',32809),(31,33063,'4458 South Texas Avenue','Alhambra Village | J-1772',32839),(31,33075,'4092 Eastgate Drive Orlando','IKEA | J-1772',32839),(31,33090,'4200 Conroy Rd','Mall at Millenia | J-1772, Tesla',32839),(31,33103,'4951 International Dr','Orlando International Premium Outlets | Tesla(Fast), CHAdeMO, CCS/SAE, J-1772',32819),(31,37055,'4510 N Fort Wilderness Trl','Disney\'s Fort Wilderness Resort',32830),(31,37134,'4951 International Dr','Orlando International Premium Outlets | Tesla, CHAdeMO, CCS/SAE, J-1772',32819),(31,37240,'1080 Esplanade Dr','Disney\'s Riviera Resort - West Parking Lot | J-1772',32830),(31,37349,'7389 Universal Blvd','The Point Hotel & Suites | J-1772, Tesla',32819),(31,37398,'7299 Universal Blvd','Best Western Orlando Gateway | J-1772',32819),(31,37486,'100 W Anderson St','Reliable Plaza(2) | CHAdeMO, CCS/SAE',32801),(32,37770,'Cady Way Trail','Trails (bike/jogging), Walking Path (Paved), Restaurants Nearby',NULL),(32,37793,'Downtown Loop','The Colonial Drive Overpass, Bike racks, Bike repair stations, Green trail crossings',NULL),(32,37808,'Lake Underhill Path','Fitness Station(s), Lakes, Restroom Facilities, Trails (bike/jogging), Walking Path (Paved)',NULL),(32,37821,'Orlando Southeast Trail','Trails (bike/jogging), Walking Path (Paved)',NULL),(32,37842,'Orlando Urban Trail','Trails (bike/jogging), Walking Path (Paved)',NULL),(32,37850,'Shingle Creek Trail','Bird Watching/Nature, Trails (bike/jogging), Walking Path (Paved)',NULL),(51,72401,'1808 E Central Boulevard','Langford Park',32802),(51,72534,'100 Rosearden Drive','Dickson Azalea Park',32803),(51,72603,'300 S Summerlin Ave','Constitution Green Park',32801),(51,72972,'512 East Washington Street','Lake Eola Park',32801),(51,73085,'930 N Thornton Avenue','Big Tree Park',32803),(51,75179,'1920 North Forest Avenue','Harry P. Leu Gardens',32803),(51,75260,'777 E Princeton Street','Loch Haven Park',32803),(52,76022,'7098 Shadowridge Drive','Airport Lakes Park',32812),(52,76049,'901 Delaney Avenue','Al Coith Park',32806),(52,76068,'2400 Edgewater Drive','Albert Park',32804),(52,76101,'930 N Thornton Avenue','Big Tree Park',32803),(52,76155,'3401 South Hiawassee Road','Bill Frederick Park At Turkey Lake',32835),(52,76205,'2500 South Mills Avenue','Blankner Field',32806),(52,76239,'2501 General Rees Avenue','Blue Jacket Park',32814),(52,76294,'Cady Way Trail','Cady Way Trail',32803),(52,76319,'101 North Parramore Avenue','Callahan Neighborhood Center',32801),(52,76352,'619 Parramore Avenue','Checker Park',32801),(52,76383,'525 Cherokee Drive','Cherokee Park',32801),(52,76405,'2725 E Jackson Street','Cherry Tree Park',32803),(52,76462,'5624 Hickey Drive','Citrus Square Neighborhood Center',32822),(52,76479,'2301 29th Street','Clear Lake Park',32805),(52,76497,'2393 Elizabeth Avenue','College Park Neighborhood Center',32804),(52,76517,'2411 Elizabeth Street','College Park Pool',32804),(52,76541,'305 S Crystal Lake Drive','Colonel Joe Kittinger Park',32803),(52,76592,'1517 Lake Highland Drive','Colonialtown Neighborhood Center',32803),(52,76609,'820 N Fern Creek Avenue','Colonialtown Square Park',32803),(52,76656,'300 S Summerlin Ave','Constitution Green',32801),(52,76673,'822 Dartmouth Street','Dartmouth Park',32804),(52,76722,'1055 Delaney Avenue','Delaney Park',32801),(52,76744,'650 Santiago Avenue','Demetree Park',32807),(52,76767,'100 Rosearden Drive','Dickson Azalea Park',32803),(52,76785,'851 Edgewater Drive','Don Dudley Park',32804),(52,76803,'1400 Gaston Foster Rd','Dover Shores Pool/Neighborhood Center',32812),(52,76822,'1340 Lake Park Court','Dr. I Sylvester Hankins Park Center',32805),(52,76842,'1723 Bruton Boulevard','Dr. James R. Smith Neighborhood Center',32805),(52,76863,'5165 Metrowest Boulevard','Eagle Nest Park',32811),(52,76881,'10193 Lake District Lane','East Lake Park',32832),(52,76921,'4400 West Colonial Drive','Emery Hamilton Sports Complex',32808),(52,76939,'6123 La Costa Dr','Engelwood Pool/Neighborhood Center',32807),(52,76960,'6050 Lake Underhill Rd','Engelwood Park',32807),(52,77206,'2911 E Robinson St','Festival Park',32803),(52,77232,'1236 N Orange Avenue','Gaston Edwards Park',32804),(52,77248,'2000 Monte Carlo Trail','George Barker Park',32805),(52,77270,'650 W Lake Mann Drive','Gilbert McQueen Park',32805),(52,77312,'700 Grand Street','Grand Avenue Park',32805),(52,77330,'1411 Greenwood Street','Greenwood Urban Wetlands',32801),(52,77356,'1320 Guernsey Street','Guernsey Park',32804),(52,77374,'1340 Lake Park Court','Hankins Park Pools',32805),(52,77393,'4990 New Broad Street','Harbor Park',32814),(52,77439,'14028 Centerline Drive','Heroes Community Park',32827),(52,77461,'510 Shady Lane Drive','Ivanhoe Plaza Park',32804),(52,77479,'291 Silverton Street','Ivey Lane Park/Neighborhood Center',32811),(52,77511,'1745 Bruton Boulevard','James R. Smith Pool',32805),(52,77532,'1002 West Carter Street','John H. Jackson Neighborhood Center',32805),(52,77547,'1019 America Street','John H. Jackson Pool',32805),(52,77582,'1218 North Fern Creek Avenue','John Long Pool',32803),(52,77602,'1840 Mable Butler Avenue','L. Claudia Allen Senior Center',32805),(52,77621,'5814 LaCosta Drive','La Costa Urban Wetlands',32807),(52,77634,'995 Lake Adair Boulevard','Lake Adair Park',32804),(52,77656,'2380 Lake Baldwin Lane','Lake Baldwin Park',32814),(52,77674,'50 W Miller Street','Lake Beauty Park',32806),(52,77697,'474 Palmer Street','Lake Cherokee Park',32801),(52,77714,'520 Lake Como Circle','Lake Como Park',32803),(52,77739,'723 Lake Davis Dr','Lake Davis Park',32806),(52,77757,'899 Coy Dr','Lake Druid Park',32803),(52,77771,'1016 Lake Weldona Drive','Lake Emerald Park',32806),(52,77790,'512 Washington St','Lake Eola Park',32801),(52,77809,'1224 Dorchester Street','Lake Estelle Park',32803),(52,77823,'2200 Lee Road','Lake Fairview Park',32810),(52,77837,'1401 Alden Road','Lake Formosa Park',32803),(52,77860,'1132 Lake Highland','Lake Highland Park',32803),(52,77878,'57 S Ivanhoe Boulevard','Lake Ivanhoe Park',32801),(52,77896,'1550 Briercliff Drive','Lake Lancaster Park',32806),(52,77911,'1019 E Jackson Street','Lake Lawsona Park',32801),(52,77950,'1519 W Church Street','Lake Lorna Doone Park',32805),(52,78090,'1200 Lake Shore Drive','Lake Rowena Park',32803),(52,78108,'4355 Lake Underhill Road','Lake Underhill Park',32803),(52,78123,'1013 Lake Weldona Drive','Lake Weldona Park',32806),(52,78139,'1808 E Central Blvd','Langford Park and Center',32802),(52,78156,'363 North Parramore Avenue','Orlando Downtown Recreation Complex',32801),(52,78173,'1450 S Alder Avenue','LeRoy Hoequist Park',32807),(52,78189,'1920 N Forest Ave','Leu Gardens',32803),(52,78204,'5138 Lighthouse Road','Lighthouse Park',32808),(52,78224,'2130 Long Street','Lizzie Rogers Park',32805),(52,78248,'777 E Princeton  St','Loch Haven Park',32803),(52,78270,'4664 Olivia Street','Malibu Groves Park',32811),(52,78288,'205 E Hazel Street','Mathews Park',32804),(52,78310,'800 South Delaney Avenue','Mayor William Beardall Senior Center',32801),(52,78330,'7945 Dowden Road','McCoy Comminuty Park',32827),(52,78349,'100 Bennet Road','Mitchell Nutter Park',32803),(52,78364,'3955 WD Judge Dr','Northwest Pool/Neighborhood Center',32808),(52,78378,'400 Festival Way','Orlando Skate Park',32803),(52,78394,'Southeast Trail','Orlando Southeast Trail',32827),(52,78409,'649 West Livingston Street','Orlando Tennis Centre',32801),(52,78427,'Orlando Urban Trail','Orlando Urban Trail',32803),(52,78452,'2380 Lake Baldwin Lane','Orlando Veterans Memorial Park',32814),(52,78502,'25155 Wheeler Road','Orlando Wetlands Park',32709),(52,78523,'3200 N Orange Avenue','Orwin Manor Park',32803),(52,78540,'100 Overbrook Drive','Overbrook Park',32707),(52,78554,'723 Highland Avenue','Park Lake Park',32801),(52,78571,'201 Andes Avenue','Park of the Americas',32807),(52,78590,'4756 Pleasant Valley Court','Pleasant Valley Park',32811),(52,78604,'5344 Lescot Lane','Poppy Park',32811),(52,78630,'2411 Elizabeth Street','Princeton Park',32804),(52,78644,'150 Mc Jordan Avenue','Reeves Terrace Neighborhood Center',32801),(52,78661,'440 North Tampa Avenue','Rock Lake Park/Neighborhood Center',32804),(52,78681,'4872 Rose Bay Drive','Rosemont Neighborhood Center',32808),(52,78698,'5050 Cinderlane Parkway','Rosemont Park',32808),(52,78714,'4648 Rose Bay Drive','Rosemont Pool',32808),(52,78731,'59 S Ivanhoe Boulevard','Senator Beth Johnson Park',32801),(52,78746,'Shingle Creek Trail','Shingle Creek Trail',32839),(52,78764,'3877 Watch Hill Road','Signal Hill Park',32808),(52,78799,'1124 Cardinal Road','Songbird Park',32803),(52,78814,'125 Nort Lucerne Circle','Southern Gateway (Lake Lucerne)',32801),(52,78832,'3437 Barnstable Place','Southport Community Park',32827),(52,78846,'1275 Spring Lake Drive','Spring Lake Park',32804),(52,78860,'614 North Orange Blossom Trail','Springdale Green Park',32805),(52,78875,'400 South Orange Avenue','The Terrace Gallery',32801),(52,78890,'2701 Lee Road','Trotters Park',32789),(52,78905,'3401 South Hiawassee Road','Turkey Lake Pool',32835),(52,78921,'2177 S Summerlin Avenue','Wadeview Park/Pool/Neighborhood Center',32806),(52,78936,'3615 Columbia Street','Washington Shores Park',32805),(52,78968,'2092 Willie Mays Parkway','Willie Mays Park',32811),(52,78987,'3101 Willow Bend Boulevard','Willows Park',32808),(52,79003,'719 South Parramore Avenue','Z.L. Riley Park',32805),(52,79044,'501 Underhill Drive','West Lake Underhill Park',32803),(52,79156,'Creative Village','Luminary Green Park',32801),(62,73275,'1517 Lake Highland Drive','Colonialtown Community Garden',32803),(62,73293,'2911 East Robinson Street','Festival Park',32803),(62,73318,'6123 La Costa Drive','Englewood Park',32807),(62,73335,'1226 Elmwood Street','Lake Davis/Greenwood Cemetery',32801),(62,73351,'899 Coy Drive','Lake Druid Park',32803),(62,73382,'8495 Laureate Boulevard','Laureate Park I – resident only',32827),(62,73398,'9661 Tavistock Lakes Boulevard','Laureate Park II – resident only',32827),(62,73413,'3955 W D Judge Drive','Northwest Community Center',32808),(62,73429,'654 West Robinson Street','Parramore',32801),(62,73672,'3600 Rogers Drive','Washington Shores',32805),(62,73693,'440 North Tampa Avenue','Rock Lake Neighborhood Center',32805),(62,73718,'1400 Gaston Foster Road','Dover Shores Neighborhood Center',32812),(62,73745,'6123 La Costa Drive','Englewood Neighborhood Center',32807),(62,73766,'406 East Amelia Street','Lake Eola Heights',32803),(62,73780,'5625 Hickey Drive','Citrus Square – resident only',32822),(62,73799,'1935 Conway Road','Mai Kai Condominiums – resident only',32812),(71,73114,'6123 La Costa Drive','Engelwood Neighborhood Center Drop-off',32807),(71,73144,'2200 Lee Road','Lake Fairview Park Drop-off',32810),(71,73158,'3955 WD Judge Road','Northwest Community Center Drop-off',32808),(71,73174,'400 Festival Way','Orlando Skate Park Drop-off',32803),(71,73188,'1028 South Woods Avenue','Solid Waste Management Division Drop-off',32805),(71,73204,'1400 Gaston Foster Rd','Dover Shores Community Center Drop-off',32812);
/*!40000 ALTER TABLE `greenworks_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pillars`
--

DROP TABLE IF EXISTS `pillars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pillars` (
  `PillarID` int NOT NULL AUTO_INCREMENT,
  `Pillar_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`PillarID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pillars`
--

LOCK TABLES `pillars` WRITE;
/*!40000 ALTER TABLE `pillars` DISABLE KEYS */;
INSERT INTO `pillars` VALUES (1,'Clean Energy'),(2,'Clean Water'),(3,'Electric & Alt. Transportation'),(4,'Green Buildings'),(5,'Livability'),(6,'Local Food Systems'),(7,'Zero Waste');
/*!40000 ALTER TABLE `pillars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_pillars`
--

DROP TABLE IF EXISTS `sub_pillars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_pillars` (
  `PillarID` int NOT NULL,
  `Sub_PillarID` int NOT NULL,
  `SubPillar_Name` varchar(250) NOT NULL,
  PRIMARY KEY (`Sub_PillarID`),
  KEY `PillarID` (`PillarID`),
  CONSTRAINT `sub_pillars_ibfk_1` FOREIGN KEY (`PillarID`) REFERENCES `pillars` (`PillarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_pillars`
--

LOCK TABLES `sub_pillars` WRITE;
/*!40000 ALTER TABLE `sub_pillars` DISABLE KEYS */;
INSERT INTO `sub_pillars` VALUES (1,11,'Solar Arrays'),(1,12,'Resilience Hubs'),(1,13,'Solar Tables of Connection'),(2,21,'Hydration Stations'),(2,22,'Orlando Wetlands Park'),(2,23,'Wastewater Treatment Plants'),(2,24,'Potable Water Plants'),(3,31,'EV Charging Stations'),(3,32,'Bike Trails'),(3,33,'Bus Stops'),(4,41,'LEED/Energy Star/Green Globe certified buildings'),(5,51,'Historic Trees of Significance'),(5,52,'Iconic Parks and Neighborhood Centers'),(6,61,'Farmer\'s Markets'),(6,62,'Community Gardens'),(6,63,'Urban Farms'),(6,64,'Apiaries'),(7,71,'Recycling and Food Waste Drop-offs'),(7,72,'Landfill'),(7,73,'Hazardous Waste Facility'),(7,74,'Recycling Transfer Stations');
/*!40000 ALTER TABLE `sub_pillars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'eco_map'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_addEvent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_addEvent`(e_ID INT, p_ID INT, starts_on DATE, ends_on DATE, e_descr VARCHAR(250), e_address VARCHAR(250))
BEGIN
INSERT INTO events VALUES (e_ID, p_ID, starts_on, ends_on, e_descr, e_address);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_addGWLocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_addGWLocation`(sp_ID INT, address VARCHAR(250), descr VARCHAR(250), zip INT)
INSERT INTO greenworks_locations (Sub_PillarID, Street_address, Descr, Zip_code) VALUES (sp_ID, address, descr, zip) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_addSubPillar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_addSubPillar`(p_name VARCHAR(250), sp_name VARCHAR(250))
BEGIN
	DECLARE p_ID INT;
	DECLARE sp_ID INT;
	DECLARE num INT;
	SET p_ID = (SELECT PillarID FROM pillars WHERE Pillar_name = p_name);
	SET num = (SELECT COUNT(*) + 1 FROM sub_pillars 
		WHERE LEFT(PillarID, 1) = p_ID);
	SET sp_ID = (SELECT CONCAT(p_ID, num));
	INSERT INTO sub_pillars VALUES (p_ID, sp_ID, sp_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_removeEvent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_removeEvent`()
DELETE FROM events WHERE end_date < CURRENT_DATE(); ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_showBuildings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_showBuildings`()
SELECT * FROM greenworks_locations
WHERE LEFT(Sub_PillarID, 1) = 4; ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_showEnergy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_showEnergy`()
SELECT * FROM greenworks_locations
WHERE LEFT(Sub_PillarID, 1) = 1; ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_showFood` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_showFood`()
SELECT * FROM greenworks_locations
WHERE LEFT(Sub_PillarID, 1) = 6; ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_showGWLocations` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_showGWLocations`()
SELECT * FROM greenworks_locations; ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_showLivability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_showLivability`()
SELECT * FROM greenworks_locations
WHERE LEFT(Sub_PillarID, 1) = 5; ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_showTransportation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_showTransportation`()
SELECT * FROM greenworks_locations
WHERE LEFT(Sub_PillarID, 1) = 3; ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_showWaste` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_showWaste`()
SELECT * FROM greenworks_locations
WHERE LEFT(Sub_PillarID, 1) = 7 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_showWater` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_showWater`()
SELECT * FROM greenworks_locations
WHERE LEFT(Sub_PillarID, 1) = 2; ;;
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

-- Dump completed on 2021-11-27 18:27:31
