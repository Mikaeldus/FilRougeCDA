-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: projet
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `projet`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `projet` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `projet`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `ref_article` varchar(20) NOT NULL,
  `photo_article` varchar(50) DEFAULT NULL,
  `nom_article` varchar(30) DEFAULT NULL,
  `lib_article` varchar(300) DEFAULT NULL,
  `prixht_article` decimal(15,2) DEFAULT NULL,
  `four_article` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ref_article`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES ('REF0001','','boulon','Boite de 26 boulons zinc tête ronde collet carré 7x70 mm COTE ...',12.95,'METAUX TEL'),('REF0002','','boulon','Sachet de 2 boulons tête hexagonale inox A4 8x50 mm FORTFIX',4.95,'METAUX TEL'),('REf0003','','boulon','Boite de 40 boulons zinc tête ronde collet carré 6x50 mm COTE ...',12.95,'METAUX TEL'),('REF0004','','poignee','Poignee coquille entraxe 64mm zamak decor rouille',5.60,'BOUTIQUE BOCAL'),('REF0005','','boulon','Boîte de 32 boulons poêlier zinc 6x50 mm FORTFIX',9.45,'METAUX TEL'),('REF0006','','poignee','Poignee entaille SHEPHERD inox 68 mm x 21 mm x 8 mm',5.15,'BOUTIQUE BOCAL'),('REF0007','','poignee','Poignee entaille SHEPHERD 75 mm x 23 mm x 9 mm',3.00,'BOUTIQUE BOCAL'),('REF0008','','poignee','Poignee entaille SHEPHERD laiton 74 mm x 21 mm x 8 mm',4.35,'BOUTIQUE BOCAL'),('REF0009','','poignee','Lot 5 poignées anse entraxe 96mm plastique blanc',15.30,'BOUTIQUE BOCAL'),('REF0010','','boite au lettre','Boite à colis DECAYEUX @Box 950 noir ral 9005',249.99,'DRIVEN METAUX'),('REF0011','','boite au lettre','Boite aux lettres individuelles DECAYEUX @Box 300 gris ral 70 ...',89.99,'DRIVEN METAUX'),('REF0012','','boite au lettre','Boite à colis DECAYEUX @Box 950 gris ral 7016',249.99,'DRIVEN METAUX'),('REF0013','','boite au lettre','Boite aux lettres DECAYEUX Pavillon n°2 en acier galvanisé.',29.99,'DRIVEN METAUX');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie` (
  `Id_cat_client` int(11) NOT NULL AUTO_INCREMENT,
  `lib_cat_client` varchar(30) DEFAULT NULL,
  `pay_cat_client` varchar(30) DEFAULT NULL,
  `coef_cat_client` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`Id_cat_client`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'particulier','immediat',10),(2,'proffesionnel','differe',20),(3,'DEPOT','differe',0);
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `Id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(30) DEFAULT NULL,
  `prenom_client` varchar(30) DEFAULT NULL,
  `adresse_client` varchar(50) DEFAULT NULL,
  `ville_client` varchar(20) DEFAULT NULL,
  `cp_client` varchar(5) DEFAULT NULL,
  `Id_cat_client` int(11) NOT NULL,
  PRIMARY KEY (`Id_client`),
  KEY `Id_cat_client` (`Id_cat_client`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`Id_cat_client`) REFERENCES `categorie` (`Id_cat_client`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'GROBRIGAN','Georges','20 rue du papier','papercity','92200',1),(2,'ECLIPSE','Nestor','53 rue laisse flotter les rubans','Bugbugville','78250',2),(3,'MEDICIS','LIson','120 rue des plantes','Paris','75014',1),(4,'DISCOBOL','Hercule','11 rue des sports','La Roche sur Yon','85100',2),(5,'DEPANPAP','Pollux','26 avenue des locomotives','Coroncountry','59987',1),(6,'HURRYTAPE','Track','68 boulevard des octets','Dumpville','44044',2),(7,'DEPOT','DEPOT','DEPOT','DEPOT','',3);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `Id_com` int(11) NOT NULL AUTO_INCREMENT,
  `bl_com` varchar(50) DEFAULT NULL,
  `num_bl_com` int(11) DEFAULT NULL,
  `date_com` date DEFAULT NULL,
  `totalprixht_com` decimal(15,0) DEFAULT NULL,
  `reduc_commercial_com` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`Id_com`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,'',101,'2014-02-14',145,0),(2,'',102,'2020-01-12',475,10),(3,'',103,'2019-11-10',146,0),(4,'',104,'2021-01-01',85,20),(5,'',105,'2018-05-18',47,0),(6,'',106,'2019-10-05',487,0);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commercial` (
  `Id_commercial` int(11) NOT NULL AUTO_INCREMENT,
  `nom_commercial` varchar(30) DEFAULT NULL,
  `prenom_commercial` varchar(30) DEFAULT NULL,
  `tel_commercial` varchar(10) DEFAULT NULL,
  `courriel_commercial` varchar(50) DEFAULT NULL,
  `Id_client` int(11) NOT NULL,
  PRIMARY KEY (`Id_commercial`),
  UNIQUE KEY `Id_client` (`Id_client`),
  CONSTRAINT `commercial_ibfk_1` FOREIGN KEY (`Id_client`) REFERENCES `client` (`Id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial`
--

LOCK TABLES `commercial` WRITE;
/*!40000 ALTER TABLE `commercial` DISABLE KEYS */;
INSERT INTO `commercial` VALUES (1,'BETON','MAXIME','568549425','maxime.beton@gmail.com',1),(2,'CIMEN','PIERRE','758649547','pierre.cimen@hotmail.fr',2),(3,'BOULON','LOIC','568558754','loic.boulon@gmail.com',3),(4,'DELAY','LAURINE','755874447','laurine.delay@hotmail.fr',4),(5,'BOULET','MORGANE','598654245','morgane.boulet@gmail.com',5),(6,'CRAYON','PAPIER','798586547','papier.crayon@hotmail.fr',6);
/*!40000 ALTER TABLE `commercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facture` (
  `Id_facture` int(11) NOT NULL AUTO_INCREMENT,
  `num_facture` int(11) DEFAULT NULL,
  `fact_facture` varchar(50) DEFAULT NULL,
  `prixht_facture` decimal(15,2) DEFAULT NULL,
  `date_facture` date DEFAULT NULL,
  `prixttc_facture` decimal(15,2) DEFAULT NULL,
  `Id_com` int(11) NOT NULL,
  PRIMARY KEY (`Id_facture`),
  UNIQUE KEY `Id_com` (`Id_com`),
  CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`Id_com`) REFERENCES `commande` (`Id_com`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facture`
--

LOCK TABLES `facture` WRITE;
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
INSERT INTO `facture` VALUES (1,101,'',145.00,'2014-02-14',131.00,1),(2,102,'',475.00,'2020-01-12',461.00,2),(3,103,'',146.00,'2019-11-10',135.00,3),(4,104,'',85.00,'2021-01-01',77.00,4),(5,105,'',47.00,'2018-05-18',44.00,5),(6,106,'',487.00,'2019-10-05',468.00,6);
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournir`
--

DROP TABLE IF EXISTS `fournir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournir` (
  `Id_fournisseur` int(11) NOT NULL,
  `Id_com` int(11) NOT NULL,
  PRIMARY KEY (`Id_fournisseur`,`Id_com`),
  KEY `Id_com` (`Id_com`),
  CONSTRAINT `fournir_ibfk_1` FOREIGN KEY (`Id_fournisseur`) REFERENCES `fournisseur` (`Id_fournisseur`),
  CONSTRAINT `fournir_ibfk_2` FOREIGN KEY (`Id_com`) REFERENCES `commande` (`Id_com`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournir`
--

LOCK TABLES `fournir` WRITE;
/*!40000 ALTER TABLE `fournir` DISABLE KEYS */;
INSERT INTO `fournir` VALUES (3,4),(4,5),(6,6);
/*!40000 ALTER TABLE `fournir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `Id_fournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_fournisseur` varchar(30) DEFAULT NULL,
  `adresse_fournisseur` varchar(50) DEFAULT NULL,
  `ville_fournisseur` varchar(20) DEFAULT NULL,
  `cp_fournisseur` varchar(5) DEFAULT NULL,
  `tel_fournisseur` varchar(10) DEFAULT NULL,
  `courriel_fournisseur` varchar(50) DEFAULT NULL,
  `pays_fournisseur` varchar(30) DEFAULT NULL,
  `categorie_fournisseur` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'NEO BOUTIQUE','36 place de leglise','MONTCUT','65852','564758425','neo.boutique@gmail.com','FRANCE','constructeur'),(2,'SPORT BOUTIQUE','85 rue du puit','GLAIRE','85978','696649547','sport.boutique@hotmail.fr','FRANCE','importateur'),(3,'BOUTIQUE BOCAL','36 bis rue de la place','PARIS','54754','568475854','boutique.bocal@gmail.com','FRANCE','importateur'),(4,'METAUX TEL','20 rue du caveau','BORDEAUX','98645','655874447','metaux.tel@hotmail.fr','FRANCE','constructeur'),(5,'IMAGE METAUX','5 bis rue de lecrou','LILLE','12365','798654245','image.metaux@gmail.com','FRANCE','importateur'),(6,'DRIVEN METAUX','8 rue de lavenir','REIMS','87451','798576547','driven.metaux@hotmail.fr','FRANCE','constructeur');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livrer`
--

DROP TABLE IF EXISTS `livrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livrer` (
  `ref_article` varchar(20) NOT NULL,
  `Id_facture` int(11) NOT NULL,
  `adresse_livraison` varchar(50) DEFAULT NULL,
  `adresse_facturation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ref_article`,`Id_facture`),
  KEY `Id_facture` (`Id_facture`),
  CONSTRAINT `livrer_ibfk_1` FOREIGN KEY (`ref_article`) REFERENCES `article` (`ref_article`),
  CONSTRAINT `livrer_ibfk_2` FOREIGN KEY (`Id_facture`) REFERENCES `facture` (`Id_facture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livrer`
--

LOCK TABLES `livrer` WRITE;
/*!40000 ALTER TABLE `livrer` DISABLE KEYS */;
INSERT INTO `livrer` VALUES ('REF0001',1,'20 rue du papier papercity 92200','20 rue du papier papercity 92200'),('REF0002',2,'26 avenue des locomotives Coroncountry 59987','26 avenue des locomotives Coroncountry 59987'),('REf0003',3,'11 rue des sports La Roche sur Yon 85100','11 rue des sports La Roche sur Yon 85100'),('REF0004',4,'depot','depot'),('REF0005',5,'depot','depot'),('REF0006',6,'depot','depot'),('REF0007',1,'20 rue du papier papercity 92200','20 rue du papier papercity 92200'),('REF0008',5,'depot','depot'),('REF0009',5,'depot','depot'),('REF0010',6,'depot','depot'),('REF0011',1,'20 rue du papier papercity 92200','20 rue du papier papercity 92200'),('REF0012',2,'26 avenue des locomotives Coroncountry 59987','26 avenue des locomotives Coroncountry 59987'),('REF0013',3,'11 rue des sports La Roche sur Yon 85100','11 rue des sports La Roche sur Yon 85100');
/*!40000 ALTER TABLE `livrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passer`
--

DROP TABLE IF EXISTS `passer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passer` (
  `ref_article` varchar(20) NOT NULL,
  `Id_client` int(11) NOT NULL,
  `Id_com` int(11) NOT NULL,
  PRIMARY KEY (`ref_article`,`Id_client`,`Id_com`),
  KEY `Id_client` (`Id_client`),
  KEY `Id_com` (`Id_com`),
  CONSTRAINT `passer_ibfk_1` FOREIGN KEY (`ref_article`) REFERENCES `article` (`ref_article`),
  CONSTRAINT `passer_ibfk_2` FOREIGN KEY (`Id_client`) REFERENCES `client` (`Id_client`),
  CONSTRAINT `passer_ibfk_3` FOREIGN KEY (`Id_com`) REFERENCES `commande` (`Id_com`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passer`
--

LOCK TABLES `passer` WRITE;
/*!40000 ALTER TABLE `passer` DISABLE KEYS */;
INSERT INTO `passer` VALUES ('REF0001',1,1),('REF0002',1,2),('REF0003',2,1),('REF0004',2,2),('REF0005',1,4),('REF0006',2,4),('REF0007',5,1),('REF0008',2,2),('REF0009',4,4),('REF0010',4,6),('REF0011',4,5),('REF0012',2,3),('REF0013',6,6);
/*!40000 ALTER TABLE `passer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubrique`
--

DROP TABLE IF EXISTS `rubrique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubrique` (
  `ref_article` varchar(20) NOT NULL,
  `theme_article` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ref_article`),
  CONSTRAINT `rubrique_ibfk_1` FOREIGN KEY (`ref_article`) REFERENCES `article` (`ref_article`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubrique`
--

LOCK TABLES `rubrique` WRITE;
/*!40000 ALTER TABLE `rubrique` DISABLE KEYS */;
INSERT INTO `rubrique` VALUES ('REF0001','Cheville, vis, clou et boulon'),('REF0002','Cheville, vis, clou et boulon'),('REf0003','Cheville, vis, clou et boulon'),('REF0004','Quincaillerie du meuble'),('REF0005','Cheville, vis, clou et boulon'),('REF0006','Quincaillerie du meuble'),('REF0007','Quincaillerie du meuble'),('REF0008','Quincaillerie du meuble'),('REF0009','Quincaillerie du meuble'),('REF0010','Boîte aux lettres, profilé et ferronnerie'),('REF0011','Boîte aux lettres, profilé et ferronnerie'),('REF0012','Boîte aux lettres, profilé et ferronnerie'),('REF0013','Boîte aux lettres, profilé et ferronnerie');
/*!40000 ALTER TABLE `rubrique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sous_rubrique`
--

DROP TABLE IF EXISTS `sous_rubrique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sous_rubrique` (
  `ref_article` varchar(20) NOT NULL,
  `type_retrait` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ref_article`),
  CONSTRAINT `sous_rubrique_ibfk_1` FOREIGN KEY (`ref_article`) REFERENCES `article` (`ref_article`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sous_rubrique`
--

LOCK TABLES `sous_rubrique` WRITE;
/*!40000 ALTER TABLE `sous_rubrique` DISABLE KEYS */;
INSERT INTO `sous_rubrique` VALUES ('REF0001','Retrait en magasin'),('REF0002','Retrait en magasin'),('REf0003','Retrait en magasin'),('REF0004','Retrait en magasin'),('REF0005','En livraison'),('REF0006','En livraison'),('REF0007','Retrait en magasin'),('REF0008','En livraison'),('REF0009','En livraison'),('REF0010','Retrait en magasin'),('REF0011','En livraison'),('REF0012','En livraison'),('REF0013','Retrait en magasin');
/*!40000 ALTER TABLE `sous_rubrique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `min_stock` decimal(3,0) DEFAULT NULL,
  `max_stock` decimal(6,0) DEFAULT NULL,
  `reel_stock` decimal(6,0) DEFAULT NULL,
  `ref_article` varchar(20) NOT NULL,
  PRIMARY KEY (`id_stock`),
  UNIQUE KEY `ref_article` (`ref_article`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`ref_article`) REFERENCES `article` (`ref_article`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,100,200,125,'REF0001'),(2,100,200,115,'REF0002'),(3,100,200,114,'REF0003'),(4,60,80,71,'REF0004'),(5,50,110,86,'REF0005'),(6,50,110,75,'REF0006'),(7,50,110,74,'REF0007'),(8,50,110,66,'REF0008'),(9,50,110,65,'REF0009'),(10,20,30,26,'REF0010'),(11,20,30,24,'REF0011'),(12,15,25,21,'REF0012'),(13,35,45,37,'REF0013');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-12 16:26:39
