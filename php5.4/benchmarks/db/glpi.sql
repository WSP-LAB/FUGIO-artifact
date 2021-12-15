-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: glpi
-- ------------------------------------------------------
-- Server version	5.7.35-0ubuntu0.18.04.2

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
-- Table structure for table `glpi_alerts`
--

DROP TABLE IF EXISTS `glpi_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php ALERT_* constant',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`type`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_alerts`
--

LOCK TABLES `glpi_alerts` WRITE;
/*!40000 ALTER TABLE `glpi_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_authldapreplicates`
--

DROP TABLE IF EXISTS `glpi_authldapreplicates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_authldapreplicates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authldaps_id` (`authldaps_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_authldapreplicates`
--

LOCK TABLES `glpi_authldapreplicates` WRITE;
/*!40000 ALTER TABLE `glpi_authldapreplicates` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_authldapreplicates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_authldaps`
--

DROP TABLE IF EXISTS `glpi_authldaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_authldaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basedn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rootdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `condition` text COLLATE utf8_unicode_ci,
  `login_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'uid',
  `use_tls` tinyint(1) NOT NULL DEFAULT '0',
  `group_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_condition` text COLLATE utf8_unicode_ci,
  `group_search_type` int(11) NOT NULL DEFAULT '0',
  `group_member_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_dn` tinyint(1) NOT NULL DEFAULT '1',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `deref_option` int(11) NOT NULL DEFAULT '0',
  `title_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_condition` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `rootdn_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email3_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email4_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_default` (`is_default`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_authldaps`
--

LOCK TABLES `glpi_authldaps` WRITE;
/*!40000 ALTER TABLE `glpi_authldaps` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_authldaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_authmails`
--

DROP TABLE IF EXISTS `glpi_authmails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_authmails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_authmails`
--

LOCK TABLES `glpi_authmails` WRITE;
/*!40000 ALTER TABLE `glpi_authmails` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_authmails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_autoupdatesystems`
--

DROP TABLE IF EXISTS `glpi_autoupdatesystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_autoupdatesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_autoupdatesystems`
--

LOCK TABLES `glpi_autoupdatesystems` WRITE;
/*!40000 ALTER TABLE `glpi_autoupdatesystems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_autoupdatesystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_bookmarks`
--

DROP TABLE IF EXISTS `glpi_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php BOOKMARK_* constant',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `is_private` (`is_private`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_bookmarks`
--

LOCK TABLES `glpi_bookmarks` WRITE;
/*!40000 ALTER TABLE `glpi_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_bookmarks_users`
--

DROP TABLE IF EXISTS `glpi_bookmarks_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_bookmarks_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bookmarks_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`),
  KEY `bookmarks_id` (`bookmarks_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_bookmarks_users`
--

LOCK TABLES `glpi_bookmarks_users` WRITE;
/*!40000 ALTER TABLE `glpi_bookmarks_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_bookmarks_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_budgets`
--

DROP TABLE IF EXISTS `glpi_budgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_budgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `begin_date` (`begin_date`),
  KEY `is_template` (`is_template`),
  KEY `date_mod` (`date_mod`),
  KEY `end_date` (`end_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_budgets`
--

LOCK TABLES `glpi_budgets` WRITE;
/*!40000 ALTER TABLE `glpi_budgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_budgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_calendars`
--

DROP TABLE IF EXISTS `glpi_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `cache_duration` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_calendars`
--

LOCK TABLES `glpi_calendars` WRITE;
/*!40000 ALTER TABLE `glpi_calendars` DISABLE KEYS */;
INSERT INTO `glpi_calendars` VALUES (1,'Default',0,1,'Default calendar',NULL,'[0,43200,43200,43200,43200,43200,0]');
/*!40000 ALTER TABLE `glpi_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_calendars_holidays`
--

DROP TABLE IF EXISTS `glpi_calendars_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_calendars_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `holidays_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`calendars_id`,`holidays_id`),
  KEY `holidays_id` (`holidays_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_calendars_holidays`
--

LOCK TABLES `glpi_calendars_holidays` WRITE;
/*!40000 ALTER TABLE `glpi_calendars_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_calendars_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_calendarsegments`
--

DROP TABLE IF EXISTS `glpi_calendarsegments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_calendarsegments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'numer of the day based on date(w)',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendars_id` (`calendars_id`),
  KEY `day` (`day`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_calendarsegments`
--

LOCK TABLES `glpi_calendarsegments` WRITE;
/*!40000 ALTER TABLE `glpi_calendarsegments` DISABLE KEYS */;
INSERT INTO `glpi_calendarsegments` VALUES (1,1,0,0,1,'08:00:00','20:00:00'),(2,1,0,0,2,'08:00:00','20:00:00'),(3,1,0,0,3,'08:00:00','20:00:00'),(4,1,0,0,4,'08:00:00','20:00:00'),(5,1,0,0,5,'08:00:00','20:00:00');
/*!40000 ALTER TABLE `glpi_calendarsegments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_cartridgeitems`
--

DROP TABLE IF EXISTS `glpi_cartridgeitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_cartridgeitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `cartridgeitemtypes_id` (`cartridgeitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_cartridgeitems`
--

LOCK TABLES `glpi_cartridgeitems` WRITE;
/*!40000 ALTER TABLE `glpi_cartridgeitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_cartridgeitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_cartridgeitems_printermodels`
--

DROP TABLE IF EXISTS `glpi_cartridgeitems_printermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_cartridgeitems_printermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`printermodels_id`,`cartridgeitems_id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_cartridgeitems_printermodels`
--

LOCK TABLES `glpi_cartridgeitems_printermodels` WRITE;
/*!40000 ALTER TABLE `glpi_cartridgeitems_printermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_cartridgeitems_printermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_cartridgeitemtypes`
--

DROP TABLE IF EXISTS `glpi_cartridgeitemtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_cartridgeitemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_cartridgeitemtypes`
--

LOCK TABLES `glpi_cartridgeitemtypes` WRITE;
/*!40000 ALTER TABLE `glpi_cartridgeitemtypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_cartridgeitemtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_cartridges`
--

DROP TABLE IF EXISTS `glpi_cartridges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_cartridges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printers_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_use` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `pages` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`),
  KEY `printers_id` (`printers_id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_cartridges`
--

LOCK TABLES `glpi_cartridges` WRITE;
/*!40000 ALTER TABLE `glpi_cartridges` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_cartridges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computerdisks`
--

DROP TABLE IF EXISTS `glpi_computerdisks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computerdisks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mountpoint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT '0',
  `totalsize` int(11) NOT NULL DEFAULT '0',
  `freesize` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `device` (`device`),
  KEY `mountpoint` (`mountpoint`),
  KEY `totalsize` (`totalsize`),
  KEY `freesize` (`freesize`),
  KEY `computers_id` (`computers_id`),
  KEY `filesystems_id` (`filesystems_id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computerdisks`
--

LOCK TABLES `glpi_computerdisks` WRITE;
/*!40000 ALTER TABLE `glpi_computerdisks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computerdisks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computermodels`
--

DROP TABLE IF EXISTS `glpi_computermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computermodels`
--

LOCK TABLES `glpi_computermodels` WRITE;
/*!40000 ALTER TABLE `glpi_computermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers`
--

DROP TABLE IF EXISTS `glpi_computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemservicepacks_id` int(11) NOT NULL DEFAULT '0',
  `os_license_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os_licenseid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoupdatesystems_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `computermodels_id` int(11) NOT NULL DEFAULT '0',
  `computertypes_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `is_ocs_import` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `computermodels_id` (`computermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `operatingsystems_id` (`operatingsystems_id`),
  KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `computertypes_id` (`computertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_ocs_import` (`is_ocs_import`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers`
--

LOCK TABLES `glpi_computers` WRITE;
/*!40000 ALTER TABLE `glpi_computers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicecases`
--

DROP TABLE IF EXISTS `glpi_computers_devicecases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicecases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicecases_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicecases_id` (`devicecases_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicecases`
--

LOCK TABLES `glpi_computers_devicecases` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicecases` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicecases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicecontrols`
--

DROP TABLE IF EXISTS `glpi_computers_devicecontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicecontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicecontrols_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicecontrols_id` (`devicecontrols_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicecontrols`
--

LOCK TABLES `glpi_computers_devicecontrols` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicecontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicecontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicedrives`
--

DROP TABLE IF EXISTS `glpi_computers_devicedrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicedrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicedrives_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicedrives_id` (`devicedrives_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicedrives`
--

LOCK TABLES `glpi_computers_devicedrives` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicedrives` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicedrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicegraphiccards`
--

DROP TABLE IF EXISTS `glpi_computers_devicegraphiccards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicegraphiccards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicegraphiccards_id` int(11) NOT NULL DEFAULT '0',
  `specificity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicegraphiccards_id` (`devicegraphiccards_id`),
  KEY `specificity` (`specificity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicegraphiccards`
--

LOCK TABLES `glpi_computers_devicegraphiccards` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicegraphiccards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicegraphiccards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_deviceharddrives`
--

DROP TABLE IF EXISTS `glpi_computers_deviceharddrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_deviceharddrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `deviceharddrives_id` int(11) NOT NULL DEFAULT '0',
  `specificity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `deviceharddrives_id` (`deviceharddrives_id`),
  KEY `specificity` (`specificity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_deviceharddrives`
--

LOCK TABLES `glpi_computers_deviceharddrives` WRITE;
/*!40000 ALTER TABLE `glpi_computers_deviceharddrives` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_deviceharddrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicememories`
--

DROP TABLE IF EXISTS `glpi_computers_devicememories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicememories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicememories_id` int(11) NOT NULL DEFAULT '0',
  `specificity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicememories_id` (`devicememories_id`),
  KEY `specificity` (`specificity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicememories`
--

LOCK TABLES `glpi_computers_devicememories` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicememories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicememories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicemotherboards`
--

DROP TABLE IF EXISTS `glpi_computers_devicemotherboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicemotherboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicemotherboards_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicemotherboards_id` (`devicemotherboards_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicemotherboards`
--

LOCK TABLES `glpi_computers_devicemotherboards` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicemotherboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicemotherboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicenetworkcards`
--

DROP TABLE IF EXISTS `glpi_computers_devicenetworkcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicenetworkcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `specificity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicenetworkcards_id` (`devicenetworkcards_id`),
  KEY `specificity` (`specificity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicenetworkcards`
--

LOCK TABLES `glpi_computers_devicenetworkcards` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicenetworkcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicenetworkcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicepcis`
--

DROP TABLE IF EXISTS `glpi_computers_devicepcis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicepcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicepcis_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicepcis_id` (`devicepcis_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicepcis`
--

LOCK TABLES `glpi_computers_devicepcis` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicepcis` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicepcis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicepowersupplies`
--

DROP TABLE IF EXISTS `glpi_computers_devicepowersupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicepowersupplies_id` (`devicepowersupplies_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicepowersupplies`
--

LOCK TABLES `glpi_computers_devicepowersupplies` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicepowersupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicepowersupplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_deviceprocessors`
--

DROP TABLE IF EXISTS `glpi_computers_deviceprocessors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_deviceprocessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `deviceprocessors_id` int(11) NOT NULL DEFAULT '0',
  `specificity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `deviceprocessors_id` (`deviceprocessors_id`),
  KEY `specificity` (`specificity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_deviceprocessors`
--

LOCK TABLES `glpi_computers_deviceprocessors` WRITE;
/*!40000 ALTER TABLE `glpi_computers_deviceprocessors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_deviceprocessors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_devicesoundcards`
--

DROP TABLE IF EXISTS `glpi_computers_devicesoundcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_devicesoundcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `devicesoundcards_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `devicesoundcards_id` (`devicesoundcards_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_devicesoundcards`
--

LOCK TABLES `glpi_computers_devicesoundcards` WRITE;
/*!40000 ALTER TABLE `glpi_computers_devicesoundcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_devicesoundcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_items`
--

DROP TABLE IF EXISTS `glpi_computers_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_items`
--

LOCK TABLES `glpi_computers_items` WRITE;
/*!40000 ALTER TABLE `glpi_computers_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_softwarelicenses`
--

DROP TABLE IF EXISTS `glpi_computers_softwarelicenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_softwarelicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`computers_id`,`softwarelicenses_id`),
  KEY `computers_id` (`computers_id`),
  KEY `softwarelicenses_id` (`softwarelicenses_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_softwarelicenses`
--

LOCK TABLES `glpi_computers_softwarelicenses` WRITE;
/*!40000 ALTER TABLE `glpi_computers_softwarelicenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_softwarelicenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_softwareversions`
--

DROP TABLE IF EXISTS `glpi_computers_softwareversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_softwareversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`computers_id`,`softwareversions_id`),
  KEY `softwareversions_id` (`softwareversions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_softwareversions`
--

LOCK TABLES `glpi_computers_softwareversions` WRITE;
/*!40000 ALTER TABLE `glpi_computers_softwareversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_softwareversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computertypes`
--

DROP TABLE IF EXISTS `glpi_computertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computertypes`
--

LOCK TABLES `glpi_computertypes` WRITE;
/*!40000 ALTER TABLE `glpi_computertypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computervirtualmachines`
--

DROP TABLE IF EXISTS `glpi_computervirtualmachines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computervirtualmachines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `virtualmachinestates_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinesystems_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinetypes_id` int(11) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vcpu` int(11) NOT NULL DEFAULT '0',
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `virtualmachinestates_id` (`virtualmachinestates_id`),
  KEY `virtualmachinesystems_id` (`virtualmachinesystems_id`),
  KEY `vcpu` (`vcpu`),
  KEY `ram` (`ram`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computervirtualmachines`
--

LOCK TABLES `glpi_computervirtualmachines` WRITE;
/*!40000 ALTER TABLE `glpi_computervirtualmachines` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computervirtualmachines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_configs`
--

DROP TABLE IF EXISTS `glpi_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show_jobs_at_login` tinyint(1) NOT NULL DEFAULT '0',
  `cut` int(11) NOT NULL DEFAULT '255',
  `list_limit` int(11) NOT NULL DEFAULT '20',
  `list_limit_max` int(11) NOT NULL DEFAULT '50',
  `url_maxlength` int(11) NOT NULL DEFAULT '30',
  `version` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_loglevel` int(11) NOT NULL DEFAULT '5',
  `use_mailing` tinyint(1) NOT NULL DEFAULT '0',
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `use_anonymous_helpdesk` tinyint(1) NOT NULL DEFAULT '0',
  `use_anonymous_followups` tinyint(1) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT 'en_GB' COMMENT 'see define.php CFG_GLPI[language] array',
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT '#fff2f2',
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffe0e0',
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffcece',
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffbfbf',
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT '#ffadad',
  `priority_6` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#ff5555',
  `date_tax` date NOT NULL DEFAULT '2005-12-31',
  `cas_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cas_port` int(11) NOT NULL DEFAULT '443',
  `cas_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cas_logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authldaps_id_extra` int(11) NOT NULL DEFAULT '0' COMMENT 'extra server',
  `existing_auth_server_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `existing_auth_server_field_clean_domain` tinyint(1) NOT NULL DEFAULT '0',
  `planning_begin` time NOT NULL DEFAULT '08:00:00',
  `planning_end` time NOT NULL DEFAULT '20:00:00',
  `utf8_conv` int(11) NOT NULL DEFAULT '0',
  `use_public_faq` tinyint(1) NOT NULL DEFAULT '0',
  `url_base` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_link_in_mail` tinyint(1) NOT NULL DEFAULT '0',
  `text_login` text COLLATE utf8_unicode_ci,
  `founded_new_version` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown_max` int(11) NOT NULL DEFAULT '100',
  `ajax_wildcard` char(1) COLLATE utf8_unicode_ci DEFAULT '*',
  `use_ajax` tinyint(1) NOT NULL DEFAULT '0',
  `ajax_min_textsearch_load` int(11) NOT NULL DEFAULT '0',
  `ajax_limit_count` int(11) NOT NULL DEFAULT '50',
  `use_ajax_autocompletion` tinyint(1) NOT NULL DEFAULT '1',
  `is_users_auto_add` tinyint(1) NOT NULL DEFAULT '1',
  `date_format` int(11) NOT NULL DEFAULT '0',
  `number_format` int(11) NOT NULL DEFAULT '0',
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_ids_visible` tinyint(1) NOT NULL DEFAULT '0',
  `dropdown_chars_limit` int(11) NOT NULL DEFAULT '50',
  `use_ocs_mode` tinyint(1) NOT NULL DEFAULT '0',
  `smtp_mode` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php MAIL_* constant',
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) NOT NULL DEFAULT '25',
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proxy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proxy_port` int(11) NOT NULL DEFAULT '8080',
  `proxy_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_followup_on_update_ticket` tinyint(1) NOT NULL DEFAULT '1',
  `keep_tickets_on_delete` tinyint(1) NOT NULL DEFAULT '1',
  `time_step` int(11) DEFAULT '5',
  `decimal_number` int(11) DEFAULT '2',
  `helpdesk_doc_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `central_doc_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentcategories_id_forticket` int(11) NOT NULL DEFAULT '0' COMMENT 'default category for documents added with a ticket',
  `monitors_management_restrict` int(11) NOT NULL DEFAULT '2',
  `phones_management_restrict` int(11) NOT NULL DEFAULT '2',
  `peripherals_management_restrict` int(11) NOT NULL DEFAULT '2',
  `printers_management_restrict` int(11) NOT NULL DEFAULT '2',
  `use_log_in_files` tinyint(1) NOT NULL DEFAULT '0',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `is_contact_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_user_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_group_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `is_location_autoupdate` tinyint(1) NOT NULL DEFAULT '1',
  `state_autoupdate_mode` int(11) NOT NULL DEFAULT '0',
  `is_contact_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_group_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `is_location_autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `state_autoclean_mode` int(11) NOT NULL DEFAULT '0',
  `use_flat_dropdowntree` tinyint(1) NOT NULL DEFAULT '0',
  `use_autoname_by_entity` tinyint(1) NOT NULL DEFAULT '1',
  `is_categorized_soft_expanded` tinyint(1) NOT NULL DEFAULT '1',
  `is_not_categorized_soft_expanded` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id_ondelete` int(11) NOT NULL DEFAULT '0' COMMENT 'category applyed when a software is deleted',
  `x509_email_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_mailcollector_filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `followup_private` tinyint(1) NOT NULL DEFAULT '0',
  `task_private` tinyint(1) NOT NULL DEFAULT '0',
  `default_software_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `names_format` int(11) NOT NULL DEFAULT '0' COMMENT 'see *NAME_BEFORE constant in define.php',
  `default_graphtype` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'svg',
  `default_requesttypes_id` int(11) NOT NULL DEFAULT '1',
  `use_noright_users_add` tinyint(1) NOT NULL DEFAULT '1',
  `cron_limit` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Number of tasks execute by external cron',
  `priority_matrix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'json encoded array for Urgence / Impact to Protority',
  `urgency_mask` int(11) NOT NULL DEFAULT '62',
  `impact_mask` int(11) NOT NULL DEFAULT '62',
  `user_deleted_ldap` tinyint(1) NOT NULL DEFAULT '0',
  `auto_create_infocoms` tinyint(1) NOT NULL DEFAULT '0',
  `use_slave_for_search` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfers_id_auto` int(11) NOT NULL DEFAULT '0',
  `show_count_on_tabs` tinyint(1) NOT NULL DEFAULT '1',
  `refresh_ticket_list` int(11) NOT NULL DEFAULT '0',
  `set_default_tech` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search_view` int(11) NOT NULL DEFAULT '2',
  `allow_search_all` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search_global` tinyint(1) NOT NULL DEFAULT '1',
  `display_count_on_home` int(11) NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_configs`
--

LOCK TABLES `glpi_configs` WRITE;
/*!40000 ALTER TABLE `glpi_configs` DISABLE KEYS */;
INSERT INTO `glpi_configs` VALUES (1,0,250,15,50,30,' 0.83.9',5,0,'admsys@localhost',NULL,NULL,NULL,'SIGNATURE',0,0,'en_GB','#fff2f2','#ffe0e0','#ffcece','#ffbfbf','#ffadad','#ff5555','2005-12-31','',443,'',NULL,1,NULL,0,'08:00:00','20:00:00',1,0,'http://127.0.0.1:5454/glpi-0.83.9',0,'','',100,'*',0,0,50,1,1,0,0,';',0,50,0,0,NULL,25,NULL,NULL,8080,NULL,1,0,5,2,NULL,NULL,0,2,2,2,2,1,0,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,NULL,2097152,0,0,1,0,'svg',1,1,1,'{\"1\":{\"1\":1,\"2\":1,\"3\":2,\"4\":2,\"5\":2},\"2\":{\"1\":1,\"2\":2,\"3\":2,\"4\":3,\"5\":3},\"3\":{\"1\":2,\"2\":2,\"3\":3,\"4\":4,\"5\":4},\"4\":{\"1\":2,\"2\":3,\"3\":4,\"4\":4,\"5\":5},\"5\":{\"1\":2,\"2\":3,\"3\":4,\"4\":5,\"5\":5}}',62,62,0,0,0,NULL,NULL,0,1,0,1,2,1,1,5);
/*!40000 ALTER TABLE `glpi_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_consumableitems`
--

DROP TABLE IF EXISTS `glpi_consumableitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_consumableitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `consumableitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `consumableitemtypes_id` (`consumableitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_consumableitems`
--

LOCK TABLES `glpi_consumableitems` WRITE;
/*!40000 ALTER TABLE `glpi_consumableitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_consumableitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_consumableitemtypes`
--

DROP TABLE IF EXISTS `glpi_consumableitemtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_consumableitemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_consumableitemtypes`
--

LOCK TABLES `glpi_consumableitemtypes` WRITE;
/*!40000 ALTER TABLE `glpi_consumableitemtypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_consumableitemtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_consumables`
--

DROP TABLE IF EXISTS `glpi_consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_consumables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `consumableitems_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_in` (`date_in`),
  KEY `date_out` (`date_out`),
  KEY `consumableitems_id` (`consumableitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_consumables`
--

LOCK TABLES `glpi_consumables` WRITE;
/*!40000 ALTER TABLE `glpi_consumables` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_consumables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contacts`
--

DROP TABLE IF EXISTS `glpi_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacttypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `contacttypes_id` (`contacttypes_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contacts`
--

LOCK TABLES `glpi_contacts` WRITE;
/*!40000 ALTER TABLE `glpi_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contacts_suppliers`
--

DROP TABLE IF EXISTS `glpi_contacts_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contacts_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contacts_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contacts_id`),
  KEY `contacts_id` (`contacts_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contacts_suppliers`
--

LOCK TABLES `glpi_contacts_suppliers` WRITE;
/*!40000 ALTER TABLE `glpi_contacts_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contacts_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contacttypes`
--

DROP TABLE IF EXISTS `glpi_contacttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contacttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contacttypes`
--

LOCK TABLES `glpi_contacttypes` WRITE;
/*!40000 ALTER TABLE `glpi_contacttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contacttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contracts`
--

DROP TABLE IF EXISTS `glpi_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `contracttypes_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `notice` int(11) NOT NULL DEFAULT '0',
  `periodicity` int(11) NOT NULL DEFAULT '0',
  `billing` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `accounting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `week_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `week_end_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_saturday` tinyint(1) NOT NULL DEFAULT '0',
  `monday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `monday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_monday` tinyint(1) NOT NULL DEFAULT '0',
  `max_links_allowed` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `alert` int(11) NOT NULL DEFAULT '0',
  `renewal` int(11) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `begin_date` (`begin_date`),
  KEY `name` (`name`),
  KEY `contracttypes_id` (`contracttypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `use_monday` (`use_monday`),
  KEY `use_saturday` (`use_saturday`),
  KEY `alert` (`alert`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contracts`
--

LOCK TABLES `glpi_contracts` WRITE;
/*!40000 ALTER TABLE `glpi_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contracts_items`
--

DROP TABLE IF EXISTS `glpi_contracts_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contracts_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`contracts_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contracts_items`
--

LOCK TABLES `glpi_contracts_items` WRITE;
/*!40000 ALTER TABLE `glpi_contracts_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contracts_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contracts_suppliers`
--

DROP TABLE IF EXISTS `glpi_contracts_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contracts_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contracts_id`),
  KEY `contracts_id` (`contracts_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contracts_suppliers`
--

LOCK TABLES `glpi_contracts_suppliers` WRITE;
/*!40000 ALTER TABLE `glpi_contracts_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contracts_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contracttypes`
--

DROP TABLE IF EXISTS `glpi_contracttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contracttypes`
--

LOCK TABLES `glpi_contracttypes` WRITE;
/*!40000 ALTER TABLE `glpi_contracttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contracttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_crontasklogs`
--

DROP TABLE IF EXISTS `glpi_crontasklogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_crontasklogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crontasks_id` int(11) NOT NULL,
  `crontasklogs_id` int(11) NOT NULL COMMENT 'id of ''start'' event',
  `date` datetime NOT NULL,
  `state` int(11) NOT NULL COMMENT '0:start, 1:run, 2:stop',
  `elapsed` float NOT NULL COMMENT 'time elapsed since start',
  `volume` int(11) NOT NULL COMMENT 'for statistics',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'message',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `crontasks_id` (`crontasks_id`),
  KEY `crontasklogs_id_state` (`crontasklogs_id`,`state`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_crontasklogs`
--

LOCK TABLES `glpi_crontasklogs` WRITE;
/*!40000 ALTER TABLE `glpi_crontasklogs` DISABLE KEYS */;
INSERT INTO `glpi_crontasklogs` VALUES (1,15,0,'2021-10-15 06:44:04',0,0,0,'Run mode : GLPI'),(2,15,1,'2021-10-15 06:44:04',2,0.00776601,0,'Action completed, no processing required');
/*!40000 ALTER TABLE `glpi_crontasklogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_crontasks`
--

DROP TABLE IF EXISTS `glpi_crontasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_crontasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'task name',
  `frequency` int(11) NOT NULL COMMENT 'second between launch',
  `param` int(11) DEFAULT NULL COMMENT 'task specify parameter',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '0:disabled, 1:waiting, 2:running',
  `mode` int(11) NOT NULL DEFAULT '1' COMMENT '1:internal, 2:external',
  `allowmode` int(11) NOT NULL DEFAULT '3' COMMENT '1:internal, 2:external, 3:both',
  `hourmin` int(11) NOT NULL DEFAULT '0',
  `hourmax` int(11) NOT NULL DEFAULT '24',
  `logs_lifetime` int(11) NOT NULL DEFAULT '30' COMMENT 'number of days',
  `lastrun` datetime DEFAULT NULL COMMENT 'last run date',
  `lastcode` int(11) DEFAULT NULL COMMENT 'last run return code',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`name`),
  KEY `mode` (`mode`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Task run by internal / external cron.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_crontasks`
--

LOCK TABLES `glpi_crontasks` WRITE;
/*!40000 ALTER TABLE `glpi_crontasks` DISABLE KEYS */;
INSERT INTO `glpi_crontasks` VALUES (1,'OcsServer','ocsng',300,NULL,0,1,3,0,24,30,NULL,NULL,NULL),(2,'CartridgeItem','cartridge',86400,10,0,1,3,0,24,30,NULL,NULL,NULL),(3,'ConsumableItem','consumable',86400,10,0,1,3,0,24,30,NULL,NULL,NULL),(4,'SoftwareLicense','software',86400,NULL,0,1,3,0,24,30,NULL,NULL,NULL),(5,'Contract','contract',86400,NULL,1,1,3,0,24,30,'2010-05-06 09:31:02',NULL,NULL),(6,'InfoCom','infocom',86400,NULL,1,1,3,0,24,30,'2011-01-18 11:40:43',NULL,NULL),(7,'CronTask','logs',86400,30,0,1,3,0,24,30,NULL,NULL,NULL),(8,'CronTask','optimize',604800,NULL,1,1,3,0,24,30,'2011-03-04 11:35:21',NULL,NULL),(9,'MailCollector','mailgate',600,10,1,1,3,0,24,30,'2011-06-28 11:34:37',NULL,NULL),(10,'DBconnection','checkdbreplicate',300,NULL,0,1,3,0,24,30,NULL,NULL,NULL),(11,'CronTask','checkupdate',604800,NULL,0,1,3,0,24,30,NULL,NULL,NULL),(12,'CronTask','session',86400,NULL,1,1,3,0,24,30,'2011-08-30 08:22:27',NULL,NULL),(13,'CronTask','graph',3600,NULL,1,1,3,0,24,30,'2011-12-06 09:48:42',NULL,NULL),(14,'ReservationItem','reservation',3600,NULL,1,1,3,0,24,30,'2012-04-05 20:31:57',NULL,NULL),(15,'Ticket','closeticket',43200,NULL,1,1,3,0,24,30,'2021-10-15 06:44:04',NULL,NULL),(16,'Ticket','alertnotclosed',43200,NULL,1,1,3,0,24,30,NULL,NULL,NULL),(17,'SlaLevel_Ticket','slaticket',300,NULL,1,1,3,0,24,30,NULL,NULL,NULL),(18,'Ticket','createinquest',86400,NULL,1,1,3,0,24,30,NULL,NULL,NULL),(19,'Crontask','watcher',86400,NULL,1,1,3,0,24,30,NULL,NULL,NULL),(20,'TicketRecurrent','ticketrecurrent',3600,NULL,1,1,3,0,24,30,NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_crontasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicecases`
--

DROP TABLE IF EXISTS `glpi_devicecases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicecases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecasetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicecasetypes_id` (`devicecasetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicecases`
--

LOCK TABLES `glpi_devicecases` WRITE;
/*!40000 ALTER TABLE `glpi_devicecases` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicecases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicecasetypes`
--

DROP TABLE IF EXISTS `glpi_devicecasetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicecasetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicecasetypes`
--

LOCK TABLES `glpi_devicecasetypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicecasetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicecasetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicecontrols`
--

DROP TABLE IF EXISTS `glpi_devicecontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicecontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_raid` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicecontrols`
--

LOCK TABLES `glpi_devicecontrols` WRITE;
/*!40000 ALTER TABLE `glpi_devicecontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicecontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicedrives`
--

DROP TABLE IF EXISTS `glpi_devicedrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicedrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_writer` tinyint(1) NOT NULL DEFAULT '1',
  `speed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicedrives`
--

LOCK TABLES `glpi_devicedrives` WRITE;
/*!40000 ALTER TABLE `glpi_devicedrives` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicedrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicegraphiccards`
--

DROP TABLE IF EXISTS `glpi_devicegraphiccards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicegraphiccards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `specif_default` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicegraphiccards`
--

LOCK TABLES `glpi_devicegraphiccards` WRITE;
/*!40000 ALTER TABLE `glpi_devicegraphiccards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicegraphiccards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_deviceharddrives`
--

DROP TABLE IF EXISTS `glpi_deviceharddrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_deviceharddrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `cache` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `specif_default` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_deviceharddrives`
--

LOCK TABLES `glpi_deviceharddrives` WRITE;
/*!40000 ALTER TABLE `glpi_deviceharddrives` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_deviceharddrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicememories`
--

DROP TABLE IF EXISTS `glpi_devicememories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicememories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `specif_default` int(11) NOT NULL,
  `devicememorytypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicememorytypes_id` (`devicememorytypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicememories`
--

LOCK TABLES `glpi_devicememories` WRITE;
/*!40000 ALTER TABLE `glpi_devicememories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicememories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicememorytypes`
--

DROP TABLE IF EXISTS `glpi_devicememorytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicememorytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicememorytypes`
--

LOCK TABLES `glpi_devicememorytypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicememorytypes` DISABLE KEYS */;
INSERT INTO `glpi_devicememorytypes` VALUES (1,'EDO',NULL),(2,'DDR',NULL),(3,'SDRAM',NULL),(4,'SDRAM-2',NULL);
/*!40000 ALTER TABLE `glpi_devicememorytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicemotherboards`
--

DROP TABLE IF EXISTS `glpi_devicemotherboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicemotherboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicemotherboards`
--

LOCK TABLES `glpi_devicemotherboards` WRITE;
/*!40000 ALTER TABLE `glpi_devicemotherboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicemotherboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicenetworkcards`
--

DROP TABLE IF EXISTS `glpi_devicenetworkcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicenetworkcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bandwidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `specif_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicenetworkcards`
--

LOCK TABLES `glpi_devicenetworkcards` WRITE;
/*!40000 ALTER TABLE `glpi_devicenetworkcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicenetworkcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicepcis`
--

DROP TABLE IF EXISTS `glpi_devicepcis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicepcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicepcis`
--

LOCK TABLES `glpi_devicepcis` WRITE;
/*!40000 ALTER TABLE `glpi_devicepcis` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicepcis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicepowersupplies`
--

DROP TABLE IF EXISTS `glpi_devicepowersupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_atx` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicepowersupplies`
--

LOCK TABLES `glpi_devicepowersupplies` WRITE;
/*!40000 ALTER TABLE `glpi_devicepowersupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicepowersupplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_deviceprocessors`
--

DROP TABLE IF EXISTS `glpi_deviceprocessors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_deviceprocessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `specif_default` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_deviceprocessors`
--

LOCK TABLES `glpi_deviceprocessors` WRITE;
/*!40000 ALTER TABLE `glpi_deviceprocessors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_deviceprocessors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicesoundcards`
--

DROP TABLE IF EXISTS `glpi_devicesoundcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicesoundcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicesoundcards`
--

LOCK TABLES `glpi_devicesoundcards` WRITE;
/*!40000 ALTER TABLE `glpi_devicesoundcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicesoundcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_displaypreferences`
--

DROP TABLE IF EXISTS `glpi_displaypreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_displaypreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`,`num`),
  KEY `rank` (`rank`),
  KEY `num` (`num`),
  KEY `itemtype` (`itemtype`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_displaypreferences`
--

LOCK TABLES `glpi_displaypreferences` WRITE;
/*!40000 ALTER TABLE `glpi_displaypreferences` DISABLE KEYS */;
INSERT INTO `glpi_displaypreferences` VALUES (32,'Computer',4,4,0),(34,'Computer',45,6,0),(33,'Computer',40,5,0),(31,'Computer',5,3,0),(30,'Computer',23,2,0),(86,'DocumentType',3,1,0),(49,'Monitor',31,1,0),(50,'Monitor',23,2,0),(51,'Monitor',3,3,0),(52,'Monitor',4,4,0),(44,'Printer',31,1,0),(38,'NetworkEquipment',31,1,0),(39,'NetworkEquipment',23,2,0),(45,'Printer',23,2,0),(46,'Printer',3,3,0),(63,'Software',4,3,0),(62,'Software',5,2,0),(61,'Software',23,1,0),(83,'CartridgeItem',4,2,0),(82,'CartridgeItem',34,1,0),(57,'Peripheral',3,3,0),(56,'Peripheral',23,2,0),(55,'Peripheral',31,1,0),(29,'Computer',31,1,0),(35,'Computer',3,7,0),(36,'Computer',19,8,0),(37,'Computer',17,9,0),(40,'NetworkEquipment',3,3,0),(41,'NetworkEquipment',4,4,0),(42,'NetworkEquipment',11,6,0),(43,'NetworkEquipment',19,7,0),(47,'Printer',4,4,0),(48,'Printer',19,6,0),(53,'Monitor',19,6,0),(54,'Monitor',7,7,0),(58,'Peripheral',4,4,0),(59,'Peripheral',19,6,0),(60,'Peripheral',7,7,0),(64,'Contact',3,1,0),(65,'Contact',4,2,0),(66,'Contact',5,3,0),(67,'Contact',6,4,0),(68,'Contact',9,5,0),(69,'Supplier',9,1,0),(70,'Supplier',3,2,0),(71,'Supplier',4,3,0),(72,'Supplier',5,4,0),(73,'Supplier',10,5,0),(74,'Supplier',6,6,0),(75,'Contract',4,1,0),(76,'Contract',3,2,0),(77,'Contract',5,3,0),(78,'Contract',6,4,0),(79,'Contract',7,5,0),(80,'Contract',11,6,0),(84,'CartridgeItem',23,3,0),(85,'CartridgeItem',3,4,0),(88,'DocumentType',6,2,0),(89,'DocumentType',4,3,0),(90,'DocumentType',5,4,0),(91,'Document',3,1,0),(92,'Document',4,2,0),(93,'Document',7,3,0),(94,'Document',5,4,0),(95,'Document',16,5,0),(96,'User',34,1,0),(98,'User',5,3,0),(99,'User',6,4,0),(100,'User',3,5,0),(101,'ConsumableItem',34,1,0),(102,'ConsumableItem',4,2,0),(103,'ConsumableItem',23,3,0),(104,'ConsumableItem',3,4,0),(105,'NetworkEquipment',40,5,0),(106,'Printer',40,5,0),(107,'Monitor',40,5,0),(108,'Peripheral',40,5,0),(109,'User',8,6,0),(110,'Phone',31,1,0),(111,'Phone',23,2,0),(112,'Phone',3,3,0),(113,'Phone',4,4,0),(114,'Phone',40,5,0),(115,'Phone',19,6,0),(116,'Phone',7,7,0),(117,'Group',16,1,0),(118,'States',31,1,0),(119,'ReservationItem',4,1,0),(120,'ReservationItem',3,2,0),(125,'Budget',3,2,0),(122,'Software',72,4,0),(123,'Software',163,5,0),(124,'Budget',2,1,0),(126,'Budget',4,3,0),(127,'Budget',19,4,0),(128,'Crontask',8,1,0),(129,'Crontask',3,2,0),(130,'Crontask',4,3,0),(131,'Crontask',7,4,0),(132,'RequestType',14,1,0),(133,'RequestType',15,2,0),(134,'NotificationTemplate',4,1,0),(135,'NotificationTemplate',16,2,0),(136,'Notification',5,1,0),(137,'Notification',6,2,0),(138,'Notification',2,3,0),(139,'Notification',4,4,0),(140,'Notification',80,5,0),(141,'Notification',86,6,0),(142,'MailCollector',2,1,0),(143,'MailCollector',19,2,0),(144,'AuthLDAP',3,1,0),(145,'AuthLDAP',19,2,0),(146,'AuthMail',3,1,0),(147,'AuthMail',19,2,0),(148,'OcsServer',3,1,0),(149,'OcsServer',19,2,0),(150,'Profile',2,1,0),(151,'Profile',3,2,0),(152,'Profile',19,3,0),(153,'Transfer',19,1,0),(154,'TicketValidation',3,1,0),(155,'TicketValidation',2,2,0),(156,'TicketValidation',8,3,0),(157,'TicketValidation',4,4,0),(158,'TicketValidation',9,5,0),(159,'TicketValidation',7,6,0),(160,'NotImportedEmail',2,1,0),(161,'NotImportedEmail',5,2,0),(162,'NotImportedEmail',4,3,0),(163,'NotImportedEmail',6,4,0),(164,'NotImportedEmail',16,5,0),(165,'NotImportedEmail',19,6,0),(166,'RuleRightParameter',11,1,0),(167,'Ticket',12,1,0),(168,'Ticket',19,2,0),(169,'Ticket',15,3,0),(170,'Ticket',3,4,0),(171,'Ticket',4,5,0),(172,'Ticket',5,6,0),(173,'Ticket',7,7,0),(174,'Calendar',19,1,0),(175,'Holiday',11,1,0),(176,'Holiday',12,2,0),(177,'Holiday',13,3,0),(178,'SLA',4,1,0),(179,'Ticket',18,8,0),(180,'AuthLdap',30,3,0),(181,'AuthMail',6,3,0),(182,'OcsServer',6,3,0),(183,'FieldUnicity',1,1,0),(184,'FieldUnicity',80,2,0),(185,'FieldUnicity',4,3,0),(186,'FieldUnicity',3,4,0),(187,'FieldUnicity',86,5,0),(188,'FieldUnicity',30,6,0),(189,'Problem',21,1,0),(190,'Problem',12,2,0),(191,'Problem',19,3,0),(192,'Problem',15,4,0),(193,'Problem',3,5,0),(194,'Problem',7,6,0),(195,'Problem',18,7,0),(196,'Vlan',11,1,0),(197,'TicketRecurrent',11,1,0),(198,'TicketRecurrent',12,2,0),(199,'TicketRecurrent',13,3,0),(200,'TicketRecurrent',15,4,0),(201,'TicketRecurrent',14,5,0),(202,'Reminder',2,1,0),(203,'Reminder',3,2,0),(204,'Reminder',4,3,0),(205,'Reminder',5,4,0),(206,'Reminder',6,5,0),(207,'Reminder',7,6,0);
/*!40000 ALTER TABLE `glpi_displaypreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_documentcategories`
--

DROP TABLE IF EXISTS `glpi_documentcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_documentcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_documentcategories`
--

LOCK TABLES `glpi_documentcategories` WRITE;
/*!40000 ALTER TABLE `glpi_documentcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_documentcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_documents`
--

DROP TABLE IF EXISTS `glpi_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'for display and transfert',
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'file storage path',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `sha1sum` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `users_id` (`users_id`),
  KEY `documentcategories_id` (`documentcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `sha1sum` (`sha1sum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_documents`
--

LOCK TABLES `glpi_documents` WRITE;
/*!40000 ALTER TABLE `glpi_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_documents_items`
--

DROP TABLE IF EXISTS `glpi_documents_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_documents_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documents_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`documents_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`,`entities_id`,`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_documents_items`
--

LOCK TABLES `glpi_documents_items` WRITE;
/*!40000 ALTER TABLE `glpi_documents_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_documents_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_documenttypes`
--

DROP TABLE IF EXISTS `glpi_documenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_documenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_uploadable` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ext`),
  KEY `name` (`name`),
  KEY `is_uploadable` (`is_uploadable`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_documenttypes`
--

LOCK TABLES `glpi_documenttypes` WRITE;
/*!40000 ALTER TABLE `glpi_documenttypes` DISABLE KEYS */;
INSERT INTO `glpi_documenttypes` VALUES (1,'JPEG','jpg','jpg-dist.png','',1,'2004-12-13 19:47:21',NULL),(2,'PNG','png','png-dist.png','',1,'2004-12-13 19:47:21',NULL),(3,'GIF','gif','gif-dist.png','',1,'2004-12-13 19:47:21',NULL),(4,'BMP','bmp','bmp-dist.png','',1,'2004-12-13 19:47:21',NULL),(5,'Photoshop','psd','psd-dist.png','',1,'2004-12-13 19:47:21',NULL),(6,'TIFF','tif','tif-dist.png','',1,'2004-12-13 19:47:21',NULL),(7,'AIFF','aiff','aiff-dist.png','',1,'2004-12-13 19:47:21',NULL),(8,'Windows Media','asf','asf-dist.png','',1,'2004-12-13 19:47:21',NULL),(9,'Windows Media','avi','avi-dist.png','',1,'2004-12-13 19:47:21',NULL),(44,'C source','c','c-dist.png','',1,'2011-12-06 09:48:34',NULL),(27,'RealAudio','rm','rm-dist.png','',1,'2004-12-13 19:47:21',NULL),(16,'Midi','mid','mid-dist.png','',1,'2004-12-13 19:47:21',NULL),(17,'QuickTime','mov','mov-dist.png','',1,'2004-12-13 19:47:21',NULL),(18,'MP3','mp3','mp3-dist.png','',1,'2004-12-13 19:47:21',NULL),(19,'MPEG','mpg','mpg-dist.png','',1,'2004-12-13 19:47:21',NULL),(20,'Ogg Vorbis','ogg','ogg-dist.png','',1,'2004-12-13 19:47:21',NULL),(24,'QuickTime','qt','qt-dist.png','',1,'2004-12-13 19:47:21',NULL),(10,'BZip','bz2','bz2-dist.png','',1,'2004-12-13 19:47:21',NULL),(25,'RealAudio','ra','ra-dist.png','',1,'2004-12-13 19:47:21',NULL),(26,'RealAudio','ram','ram-dist.png','',1,'2004-12-13 19:47:21',NULL),(11,'Word','doc','doc-dist.png','',1,'2004-12-13 19:47:21',NULL),(12,'DjVu','djvu','','',1,'2004-12-13 19:47:21',NULL),(42,'MNG','mng','','',1,'2004-12-13 19:47:22',NULL),(13,'PostScript','eps','ps-dist.png','',1,'2004-12-13 19:47:21',NULL),(14,'GZ','gz','gz-dist.png','',1,'2004-12-13 19:47:21',NULL),(37,'WAV','wav','wav-dist.png','',1,'2004-12-13 19:47:22',NULL),(15,'HTML','html','html-dist.png','',1,'2004-12-13 19:47:21',NULL),(34,'Flash','swf','swf-dist.png','',1,'2011-12-06 09:48:34',NULL),(21,'PDF','pdf','pdf-dist.png','',1,'2004-12-13 19:47:21',NULL),(22,'PowerPoint','ppt','ppt-dist.png','',1,'2004-12-13 19:47:21',NULL),(23,'PostScript','ps','ps-dist.png','',1,'2004-12-13 19:47:21',NULL),(40,'Windows Media','wmv','wmv-dist.png','',1,'2011-12-06 09:48:34',NULL),(28,'RTF','rtf','rtf-dist.png','',1,'2004-12-13 19:47:21',NULL),(29,'StarOffice','sdd','sdd-dist.png','',1,'2004-12-13 19:47:22',NULL),(30,'StarOffice','sdw','sdw-dist.png','',1,'2004-12-13 19:47:22',NULL),(31,'Stuffit','sit','sit-dist.png','',1,'2004-12-13 19:47:22',NULL),(43,'Adobe Illustrator','ai','ai-dist.png','',1,'2004-12-13 19:47:22',NULL),(32,'OpenOffice Impress','sxi','sxi-dist.png','',1,'2004-12-13 19:47:22',NULL),(33,'OpenOffice','sxw','sxw-dist.png','',1,'2004-12-13 19:47:22',NULL),(46,'DVI','dvi','dvi-dist.png','',1,'2004-12-13 19:47:22',NULL),(35,'TGZ','tgz','tgz-dist.png','',1,'2004-12-13 19:47:22',NULL),(36,'texte','txt','txt-dist.png','',1,'2004-12-13 19:47:22',NULL),(49,'RedHat/Mandrake/SuSE','rpm','rpm-dist.png','',1,'2004-12-13 19:47:22',NULL),(38,'Excel','xls','xls-dist.png','',1,'2004-12-13 19:47:22',NULL),(39,'XML','xml','xml-dist.png','',1,'2004-12-13 19:47:22',NULL),(41,'Zip','zip','zip-dist.png','',1,'2011-12-06 09:48:34',NULL),(45,'Debian','deb','deb-dist.png','',1,'2004-12-13 19:47:22',NULL),(47,'C header','h','h-dist.png','',1,'2011-12-06 09:48:34',NULL),(48,'Pascal','pas','pas-dist.png','',1,'2011-12-06 09:48:34',NULL),(50,'OpenOffice Calc','sxc','sxc-dist.png','',1,'2004-12-13 19:47:22',NULL),(51,'LaTeX','tex','tex-dist.png','',1,'2004-12-13 19:47:22',NULL),(52,'GIMP multi-layer','xcf','xcf-dist.png','',1,'2004-12-13 19:47:22',NULL),(53,'JPEG','jpeg','jpg-dist.png','',1,'2005-03-07 22:23:17',NULL),(54,'Oasis Open Office Writer','odt','odt-dist.png','',1,'2006-01-21 17:41:13',NULL),(55,'Oasis Open Office Calc','ods','ods-dist.png','',1,'2006-01-21 17:41:31',NULL),(56,'Oasis Open Office Impress','odp','odp-dist.png','',1,'2006-01-21 17:42:54',NULL),(57,'Oasis Open Office Impress Template','otp','odp-dist.png','',1,'2006-01-21 17:43:58',NULL),(58,'Oasis Open Office Writer Template','ott','odt-dist.png','',1,'2006-01-21 17:44:41',NULL),(59,'Oasis Open Office Calc Template','ots','ods-dist.png','',1,'2006-01-21 17:45:30',NULL),(60,'Oasis Open Office Math','odf','odf-dist.png','',1,'2006-01-21 17:48:05',NULL),(61,'Oasis Open Office Draw','odg','odg-dist.png','',1,'2006-01-21 17:48:31',NULL),(62,'Oasis Open Office Draw Template','otg','odg-dist.png','',1,'2006-01-21 17:49:46',NULL),(63,'Oasis Open Office Base','odb','odb-dist.png','',1,'2006-01-21 18:03:34',NULL),(64,'Oasis Open Office HTML','oth','oth-dist.png','',1,'2006-01-21 18:05:27',NULL),(65,'Oasis Open Office Writer Master','odm','odm-dist.png','',1,'2006-01-21 18:06:34',NULL),(66,'Oasis Open Office Chart','odc','','',1,'2006-01-21 18:07:48',NULL),(67,'Oasis Open Office Image','odi','','',1,'2006-01-21 18:08:18',NULL),(68,'Word XML','docx','doc-dist.png',NULL,1,'2011-01-18 11:40:42',NULL),(69,'Excel XML','xlsx','xls-dist.png',NULL,1,'2011-01-18 11:40:42',NULL),(70,'PowerPoint XML','pptx','ppt-dist.png',NULL,1,'2011-01-18 11:40:42',NULL),(71,'Comma-Separated Values','csv','csv-dist.png',NULL,1,'2011-12-06 09:48:34',NULL),(72,'Scalable Vector Graphics','svg','svg-dist.png',NULL,1,'2011-12-06 09:48:34',NULL);
/*!40000 ALTER TABLE `glpi_documenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_domains`
--

DROP TABLE IF EXISTS `glpi_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_domains`
--

LOCK TABLES `glpi_domains` WRITE;
/*!40000 ALTER TABLE `glpi_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_entities`
--

DROP TABLE IF EXISTS `glpi_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`name`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_entities`
--

LOCK TABLES `glpi_entities` WRITE;
/*!40000 ALTER TABLE `glpi_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_entities_knowbaseitems`
--

DROP TABLE IF EXISTS `glpi_entities_knowbaseitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_entities_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_entities_knowbaseitems`
--

LOCK TABLES `glpi_entities_knowbaseitems` WRITE;
/*!40000 ALTER TABLE `glpi_entities_knowbaseitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_entities_knowbaseitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_entities_reminders`
--

DROP TABLE IF EXISTS `glpi_entities_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_entities_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_entities_reminders`
--

LOCK TABLES `glpi_entities_reminders` WRITE;
/*!40000 ALTER TABLE `glpi_entities_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_entities_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_entitydatas`
--

DROP TABLE IF EXISTS `glpi_entitydatas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_entitydatas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_subject_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `ldap_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `mail_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_ldapfilter` text COLLATE utf8_unicode_ci,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `cartridges_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `consumables_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `use_licenses_alert` int(11) NOT NULL DEFAULT '-2',
  `use_contracts_alert` int(11) NOT NULL DEFAULT '-2',
  `use_infocoms_alert` int(11) NOT NULL DEFAULT '-2',
  `use_reservations_alert` int(11) NOT NULL DEFAULT '-2',
  `autoclose_delay` int(11) NOT NULL DEFAULT '-2',
  `notclosed_delay` int(11) NOT NULL DEFAULT '-2',
  `calendars_id` int(11) NOT NULL DEFAULT '-2',
  `auto_assign_mode` int(11) NOT NULL DEFAULT '-2',
  `tickettype` int(11) NOT NULL DEFAULT '-2',
  `max_closedate` datetime DEFAULT NULL,
  `inquest_config` int(11) NOT NULL DEFAULT '-2',
  `inquest_rate` int(11) NOT NULL DEFAULT '0',
  `inquest_delay` int(11) NOT NULL DEFAULT '-10',
  `inquest_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autofill_warranty_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-2',
  `autofill_use_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-2',
  `autofill_buy_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-2',
  `autofill_delivery_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-2',
  `autofill_order_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT '-2',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '-2',
  `entities_id_software` int(11) NOT NULL DEFAULT '-2',
  `default_contract_alert` int(11) NOT NULL DEFAULT '0',
  `default_infocom_alert` int(11) NOT NULL DEFAULT '0',
  `default_alarm_threshold` int(11) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_entitydatas`
--

LOCK TABLES `glpi_entitydatas` WRITE;
/*!40000 ALTER TABLE `glpi_entitydatas` DISABLE KEYS */;
INSERT INTO `glpi_entitydatas` VALUES (1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,0,0,0,0,0,-1,0,0,-10,1,NULL,1,0,0,NULL,'0','0','0','0','0',1,-10,0,0,10);
/*!40000 ALTER TABLE `glpi_entitydatas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_events`
--

DROP TABLE IF EXISTS `glpi_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `level` (`level`),
  KEY `item` (`type`,`items_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_events`
--

LOCK TABLES `glpi_events` WRITE;
/*!40000 ALTER TABLE `glpi_events` DISABLE KEYS */;
INSERT INTO `glpi_events` VALUES (1,-1,'system','2021-10-15 06:44:54','login',3,'glpi IP connection: 127.0.0.1');
/*!40000 ALTER TABLE `glpi_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_fieldblacklists`
--

DROP TABLE IF EXISTS `glpi_fieldblacklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_fieldblacklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_fieldblacklists`
--

LOCK TABLES `glpi_fieldblacklists` WRITE;
/*!40000 ALTER TABLE `glpi_fieldblacklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_fieldblacklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_fieldunicities`
--

DROP TABLE IF EXISTS `glpi_fieldunicities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_fieldunicities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `fields` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `action_refuse` tinyint(1) NOT NULL DEFAULT '0',
  `action_notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores field unicity criterias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_fieldunicities`
--

LOCK TABLES `glpi_fieldunicities` WRITE;
/*!40000 ALTER TABLE `glpi_fieldunicities` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_fieldunicities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_filesystems`
--

DROP TABLE IF EXISTS `glpi_filesystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_filesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_filesystems`
--

LOCK TABLES `glpi_filesystems` WRITE;
/*!40000 ALTER TABLE `glpi_filesystems` DISABLE KEYS */;
INSERT INTO `glpi_filesystems` VALUES (1,'ext',NULL),(2,'ext2',NULL),(3,'ext3',NULL),(4,'ext4',NULL),(5,'FAT',NULL),(6,'FAT32',NULL),(7,'VFAT',NULL),(8,'HFS',NULL),(9,'HPFS',NULL),(10,'HTFS',NULL),(11,'JFS',NULL),(12,'JFS2',NULL),(13,'NFS',NULL),(14,'NTFS',NULL),(15,'ReiserFS',NULL),(16,'SMBFS',NULL),(17,'UDF',NULL),(18,'UFS',NULL),(19,'XFS',NULL),(20,'ZFS',NULL);
/*!40000 ALTER TABLE `glpi_filesystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups`
--

DROP TABLE IF EXISTS `glpi_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `ldap_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_value` text COLLATE utf8_unicode_ci,
  `ldap_group_dn` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_requester` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(1) NOT NULL DEFAULT '1',
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `is_itemgroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_usergroup` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `ldap_field` (`ldap_field`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `ldap_value` (`ldap_value`(200)),
  KEY `ldap_group_dn` (`ldap_group_dn`(200)),
  KEY `groups_id` (`groups_id`),
  KEY `is_requester` (`is_requester`),
  KEY `is_assign` (`is_assign`),
  KEY `is_notify` (`is_notify`),
  KEY `is_itemgroup` (`is_itemgroup`),
  KEY `is_usergroup` (`is_usergroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups`
--

LOCK TABLES `glpi_groups` WRITE;
/*!40000 ALTER TABLE `glpi_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_knowbaseitems`
--

DROP TABLE IF EXISTS `glpi_groups_knowbaseitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_knowbaseitems`
--

LOCK TABLES `glpi_groups_knowbaseitems` WRITE;
/*!40000 ALTER TABLE `glpi_groups_knowbaseitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups_knowbaseitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_problems`
--

DROP TABLE IF EXISTS `glpi_groups_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_problems`
--

LOCK TABLES `glpi_groups_problems` WRITE;
/*!40000 ALTER TABLE `glpi_groups_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_reminders`
--

DROP TABLE IF EXISTS `glpi_groups_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_reminders`
--

LOCK TABLES `glpi_groups_reminders` WRITE;
/*!40000 ALTER TABLE `glpi_groups_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_tickets`
--

DROP TABLE IF EXISTS `glpi_groups_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_tickets`
--

LOCK TABLES `glpi_groups_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_groups_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_users`
--

DROP TABLE IF EXISTS `glpi_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0',
  `is_userdelegate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`groups_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_manager` (`is_manager`),
  KEY `is_userdelegate` (`is_userdelegate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_users`
--

LOCK TABLES `glpi_groups_users` WRITE;
/*!40000 ALTER TABLE `glpi_groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_holidays`
--

DROP TABLE IF EXISTS `glpi_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_perpetual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `is_perpetual` (`is_perpetual`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_holidays`
--

LOCK TABLES `glpi_holidays` WRITE;
/*!40000 ALTER TABLE `glpi_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_infocoms`
--

DROP TABLE IF EXISTS `glpi_infocoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_infocoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `buy_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT '0',
  `warranty_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immo_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `warranty_value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sink_time` int(11) NOT NULL DEFAULT '0',
  `sink_type` int(11) NOT NULL DEFAULT '0',
  `sink_coeff` float NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `bill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  KEY `buy_date` (`buy_date`),
  KEY `alert` (`alert`),
  KEY `budgets_id` (`budgets_id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_infocoms`
--

LOCK TABLES `glpi_infocoms` WRITE;
/*!40000 ALTER TABLE `glpi_infocoms` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_infocoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_interfacetypes`
--

DROP TABLE IF EXISTS `glpi_interfacetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_interfacetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_interfacetypes`
--

LOCK TABLES `glpi_interfacetypes` WRITE;
/*!40000 ALTER TABLE `glpi_interfacetypes` DISABLE KEYS */;
INSERT INTO `glpi_interfacetypes` VALUES (1,'IDE',NULL),(2,'SATA',NULL),(3,'SCSI',NULL),(4,'USB',NULL),(5,'AGP',''),(6,'PCI',''),(7,'PCIe',''),(8,'PCI-X','');
/*!40000 ALTER TABLE `glpi_interfacetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_problems`
--

DROP TABLE IF EXISTS `glpi_items_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_problems`
--

LOCK TABLES `glpi_items_problems` WRITE;
/*!40000 ALTER TABLE `glpi_items_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_itilcategories`
--

DROP TABLE IF EXISTS `glpi_itilcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_itilcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `tickettemplates_id_incident` int(11) NOT NULL DEFAULT '0',
  `tickettemplates_id_demand` int(11) NOT NULL DEFAULT '0',
  `is_incident` int(11) NOT NULL DEFAULT '1',
  `is_request` int(11) NOT NULL DEFAULT '1',
  `is_problem` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `tickettemplates_id_incident` (`tickettemplates_id_incident`),
  KEY `tickettemplates_id_demand` (`tickettemplates_id_demand`),
  KEY `is_incident` (`is_incident`),
  KEY `is_request` (`is_request`),
  KEY `is_problem` (`is_problem`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_itilcategories`
--

LOCK TABLES `glpi_itilcategories` WRITE;
/*!40000 ALTER TABLE `glpi_itilcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_itilcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitemcategories`
--

DROP TABLE IF EXISTS `glpi_knowbaseitemcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitemcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`knowbaseitemcategories_id`,`name`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitemcategories`
--

LOCK TABLES `glpi_knowbaseitemcategories` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitemcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitemcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `is_faq` (`is_faq`),
  KEY `date_mod` (`date_mod`),
  FULLTEXT KEY `fulltext` (`name`,`answer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems`
--

LOCK TABLES `glpi_knowbaseitems` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems_profiles`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems_profiles`
--

LOCK TABLES `glpi_knowbaseitems_profiles` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems_users`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems_users`
--

LOCK TABLES `glpi_knowbaseitems_users` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_links`
--

DROP TABLE IF EXISTS `glpi_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_links`
--

LOCK TABLES `glpi_links` WRITE;
/*!40000 ALTER TABLE `glpi_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_links_itemtypes`
--

DROP TABLE IF EXISTS `glpi_links_itemtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_links_itemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `links_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`links_id`),
  KEY `links_id` (`links_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_links_itemtypes`
--

LOCK TABLES `glpi_links_itemtypes` WRITE;
/*!40000 ALTER TABLE `glpi_links_itemtypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_links_itemtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_locations`
--

DROP TABLE IF EXISTS `glpi_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`locations_id`,`name`),
  KEY `locations_id` (`locations_id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_locations`
--

LOCK TABLES `glpi_locations` WRITE;
/*!40000 ALTER TABLE `glpi_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_logs`
--

DROP TABLE IF EXISTS `glpi_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linked_action` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php HISTORY_* constant',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `id_search_option` int(11) NOT NULL DEFAULT '0' COMMENT 'see search.constant.php for value',
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `itemtype_link` (`itemtype_link`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_logs`
--

LOCK TABLES `glpi_logs` WRITE;
/*!40000 ALTER TABLE `glpi_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_mailcollectors`
--

DROP TABLE IF EXISTS `glpi_mailcollectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_mailcollectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_mailcollectors`
--

LOCK TABLES `glpi_mailcollectors` WRITE;
/*!40000 ALTER TABLE `glpi_mailcollectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_mailcollectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_manufacturers`
--

DROP TABLE IF EXISTS `glpi_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_manufacturers`
--

LOCK TABLES `glpi_manufacturers` WRITE;
/*!40000 ALTER TABLE `glpi_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_monitormodels`
--

DROP TABLE IF EXISTS `glpi_monitormodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_monitormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_monitormodels`
--

LOCK TABLES `glpi_monitormodels` WRITE;
/*!40000 ALTER TABLE `glpi_monitormodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_monitormodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_monitors`
--

DROP TABLE IF EXISTS `glpi_monitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_monitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) NOT NULL DEFAULT '0',
  `have_micro` tinyint(1) NOT NULL DEFAULT '0',
  `have_speaker` tinyint(1) NOT NULL DEFAULT '0',
  `have_subd` tinyint(1) NOT NULL DEFAULT '0',
  `have_bnc` tinyint(1) NOT NULL DEFAULT '0',
  `have_dvi` tinyint(1) NOT NULL DEFAULT '0',
  `have_pivot` tinyint(1) NOT NULL DEFAULT '0',
  `have_hdmi` tinyint(1) NOT NULL DEFAULT '0',
  `have_displayport` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `monitortypes_id` int(11) NOT NULL DEFAULT '0',
  `monitormodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `monitormodels_id` (`monitormodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `monitortypes_id` (`monitortypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_monitors`
--

LOCK TABLES `glpi_monitors` WRITE;
/*!40000 ALTER TABLE `glpi_monitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_monitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_monitortypes`
--

DROP TABLE IF EXISTS `glpi_monitortypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_monitortypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_monitortypes`
--

LOCK TABLES `glpi_monitortypes` WRITE;
/*!40000 ALTER TABLE `glpi_monitortypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_monitortypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_netpoints`
--

DROP TABLE IF EXISTS `glpi_netpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_netpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `complete` (`entities_id`,`locations_id`,`name`),
  KEY `location_name` (`locations_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_netpoints`
--

LOCK TABLES `glpi_netpoints` WRITE;
/*!40000 ALTER TABLE `glpi_netpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_netpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkequipmentfirmwares`
--

DROP TABLE IF EXISTS `glpi_networkequipmentfirmwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkequipmentfirmwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkequipmentfirmwares`
--

LOCK TABLES `glpi_networkequipmentfirmwares` WRITE;
/*!40000 ALTER TABLE `glpi_networkequipmentfirmwares` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkequipmentfirmwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkequipmentmodels`
--

DROP TABLE IF EXISTS `glpi_networkequipmentmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkequipmentmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkequipmentmodels`
--

LOCK TABLES `glpi_networkequipmentmodels` WRITE;
/*!40000 ALTER TABLE `glpi_networkequipmentmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkequipmentmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkequipments`
--

DROP TABLE IF EXISTS `glpi_networkequipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkequipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentfirmwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `domains_id` (`domains_id`),
  KEY `networkequipmentfirmwares_id` (`networkequipmentfirmwares_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkequipments`
--

LOCK TABLES `glpi_networkequipments` WRITE;
/*!40000 ALTER TABLE `glpi_networkequipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkequipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkequipmenttypes`
--

DROP TABLE IF EXISTS `glpi_networkequipmenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkequipmenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkequipmenttypes`
--

LOCK TABLES `glpi_networkequipmenttypes` WRITE;
/*!40000 ALTER TABLE `glpi_networkequipmenttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkequipmenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkinterfaces`
--

DROP TABLE IF EXISTS `glpi_networkinterfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkinterfaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkinterfaces`
--

LOCK TABLES `glpi_networkinterfaces` WRITE;
/*!40000 ALTER TABLE `glpi_networkinterfaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkinterfaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkports`
--

DROP TABLE IF EXISTS `glpi_networkports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `logical_number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networkinterfaces_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `netmask` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subnet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `on_device` (`items_id`,`itemtype`),
  KEY `networkinterfaces_id` (`networkinterfaces_id`),
  KEY `netpoints_id` (`netpoints_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkports`
--

LOCK TABLES `glpi_networkports` WRITE;
/*!40000 ALTER TABLE `glpi_networkports` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkports_networkports`
--

DROP TABLE IF EXISTS `glpi_networkports_networkports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkports_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id_1` int(11) NOT NULL DEFAULT '0',
  `networkports_id_2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id_1`,`networkports_id_2`),
  KEY `networkports_id_2` (`networkports_id_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkports_networkports`
--

LOCK TABLES `glpi_networkports_networkports` WRITE;
/*!40000 ALTER TABLE `glpi_networkports_networkports` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkports_networkports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkports_vlans`
--

DROP TABLE IF EXISTS `glpi_networkports_vlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkports_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id`,`vlans_id`),
  KEY `vlans_id` (`vlans_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkports_vlans`
--

LOCK TABLES `glpi_networkports_vlans` WRITE;
/*!40000 ALTER TABLE `glpi_networkports_vlans` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkports_vlans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networks`
--

DROP TABLE IF EXISTS `glpi_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networks`
--

LOCK TABLES `glpi_networks` WRITE;
/*!40000 ALTER TABLE `glpi_networks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notifications`
--

DROP TABLE IF EXISTS `glpi_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notifications`
--

LOCK TABLES `glpi_notifications` WRITE;
/*!40000 ALTER TABLE `glpi_notifications` DISABLE KEYS */;
INSERT INTO `glpi_notifications` VALUES (1,'Alert Tickets not closed',0,'Ticket','alertnotclosed','mail',6,'',1,1,'2010-02-16 16:41:39'),(2,'New Ticket',0,'Ticket','new','mail',4,'',1,1,'2010-02-16 16:41:39'),(3,'Update Ticket',0,'Ticket','update','mail',4,'',1,1,'2010-02-16 16:41:39'),(4,'Close Ticket',0,'Ticket','closed','mail',4,'',1,1,'2010-02-16 16:41:39'),(5,'Add Followup',0,'Ticket','add_followup','mail',4,'',1,1,'2010-02-16 16:41:39'),(6,'Add Task',0,'Ticket','add_task','mail',4,'',1,1,'2010-02-16 16:41:39'),(7,'Update Followup',0,'Ticket','update_followup','mail',4,'',1,1,'2010-02-16 16:41:39'),(8,'Update Task',0,'Ticket','update_task','mail',4,'',1,1,'2010-02-16 16:41:39'),(9,'Delete Followup',0,'Ticket','delete_followup','mail',4,'',1,1,'2010-02-16 16:41:39'),(10,'Delete Task',0,'Ticket','delete_task','mail',4,'',1,1,'2010-02-16 16:41:39'),(11,'Resolve ticket',0,'Ticket','solved','mail',4,'',1,1,'2010-02-16 16:41:39'),(12,'Ticket Validation',0,'Ticket','validation','mail',7,'',1,1,'2010-02-16 16:41:39'),(13,'New Reservation',0,'Reservation','new','mail',2,'',1,1,'2010-02-16 16:41:39'),(14,'Update Reservation',0,'Reservation','update','mail',2,'',1,1,'2010-02-16 16:41:39'),(15,'Delete Reservation',0,'Reservation','delete','mail',2,'',1,1,'2010-02-16 16:41:39'),(16,'Alert Reservation',0,'Reservation','alert','mail',3,'',1,1,'2010-02-16 16:41:39'),(17,'Contract Notice',0,'Contract','notice','mail',12,'',1,1,'2010-02-16 16:41:39'),(18,'Contract End',0,'Contract','end','mail',12,'',1,1,'2010-02-16 16:41:39'),(19,'MySQL Synchronization',0,'DBConnection','desynchronization','mail',1,'',1,1,'2010-02-16 16:41:39'),(20,'Cartridges',0,'Cartridge','alert','mail',8,'',1,1,'2010-02-16 16:41:39'),(21,'Consumables',0,'Consumable','alert','mail',9,'',1,1,'2010-02-16 16:41:39'),(22,'Infocoms',0,'Infocom','alert','mail',10,'',1,1,'2010-02-16 16:41:39'),(23,'Software Licenses',0,'SoftwareLicense','alert','mail',11,'',1,1,'2010-02-16 16:41:39'),(24,'Ticket Recall',0,'Ticket','recall','mail',4,'',1,1,'2011-03-04 11:35:13'),(25,'Password Forget',0,'User','passwordforget','mail',13,'',1,1,'2011-03-04 11:35:13'),(26,'Ticket Satisfaction',0,'Ticket','satisfaction','mail',14,'',1,1,'2011-03-04 11:35:15'),(27,'Item not unique',0,'FieldUnicity','refuse','mail',15,'',1,1,'2011-03-04 11:35:16'),(28,'Crontask Watcher',0,'Crontask','alert','mail',16,'',1,1,'2011-03-04 11:35:16'),(29,'New Problem',0,'Problem','new','mail',17,'',1,1,'2011-12-06 09:48:33'),(30,'Update Problem',0,'Problem','update','mail',17,'',1,1,'2011-12-06 09:48:33'),(31,'Resolve Problem',0,'Problem','solved','mail',17,'',1,1,'2011-12-06 09:48:33'),(32,'Add Task',0,'Problem','add_task','mail',17,'',1,1,'2011-12-06 09:48:33'),(33,'Update Task',0,'Problem','update_task','mail',17,'',1,1,'2011-12-06 09:48:33'),(34,'Delete Task',0,'Problem','delete_task','mail',17,'',1,1,'2011-12-06 09:48:33'),(35,'Close Problem',0,'Problem','closed','mail',17,'',1,1,'2011-12-06 09:48:33'),(36,'Delete Problem',0,'Problem','delete','mail',17,'',1,1,'2011-12-06 09:48:33');
/*!40000 ALTER TABLE `glpi_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notificationtargets`
--

DROP TABLE IF EXISTS `glpi_notificationtargets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notificationtargets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `notifications_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `items` (`type`,`items_id`),
  KEY `notifications_id` (`notifications_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notificationtargets`
--

LOCK TABLES `glpi_notificationtargets` WRITE;
/*!40000 ALTER TABLE `glpi_notificationtargets` DISABLE KEYS */;
INSERT INTO `glpi_notificationtargets` VALUES (1,3,1,13),(2,1,1,13),(3,3,2,2),(4,1,1,2),(5,1,1,3),(6,1,1,5),(7,1,1,4),(8,2,1,3),(9,4,1,3),(10,3,1,2),(11,3,1,3),(12,3,1,5),(13,3,1,4),(14,1,1,19),(15,14,1,12),(16,3,1,14),(17,1,1,14),(18,3,1,15),(19,1,1,15),(20,1,1,6),(21,3,1,6),(22,1,1,7),(23,3,1,7),(24,1,1,8),(25,3,1,8),(26,1,1,9),(27,3,1,9),(28,1,1,10),(29,3,1,10),(30,1,1,11),(31,3,1,11),(32,19,1,25),(33,3,1,26),(34,21,1,2),(35,21,1,3),(36,21,1,5),(37,21,1,4),(38,21,1,6),(39,21,1,7),(40,21,1,8),(41,21,1,9),(42,21,1,10),(43,21,1,11),(44,21,1,26),(45,19,1,27),(46,1,1,28),(47,3,1,29),(48,1,1,29),(49,21,1,29),(50,2,1,30),(51,4,1,30),(52,3,1,30),(53,1,1,30),(54,21,1,30),(55,3,1,31),(56,1,1,31),(57,21,1,31),(58,3,1,32),(59,1,1,32),(60,21,1,32),(61,3,1,33),(62,1,1,33),(63,21,1,33),(64,3,1,34),(65,1,1,34),(66,21,1,34),(67,3,1,35),(68,1,1,35),(69,21,1,35),(70,3,1,36),(71,1,1,36),(72,21,1,36);
/*!40000 ALTER TABLE `glpi_notificationtargets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notificationtemplates`
--

DROP TABLE IF EXISTS `glpi_notificationtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notificationtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `css` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notificationtemplates`
--

LOCK TABLES `glpi_notificationtemplates` WRITE;
/*!40000 ALTER TABLE `glpi_notificationtemplates` DISABLE KEYS */;
INSERT INTO `glpi_notificationtemplates` VALUES (1,'MySQL Synchronization','DBConnection','2010-02-01 15:51:46','',NULL),(2,'Reservations','Reservation','2010-02-03 14:03:45','',NULL),(3,'Alert Reservation','Reservation','2010-02-03 14:03:45','',NULL),(4,'Tickets','Ticket','2010-02-07 21:39:15','',NULL),(5,'Tickets (Simple)','Ticket','2010-02-07 21:39:15','',NULL),(6,'Alert Tickets not closed','Ticket','2010-02-07 21:39:15','',NULL),(7,'Tickets Validation','Ticket','2010-02-26 21:39:15','',NULL),(8,'Cartridges','Cartridge','2010-02-16 13:17:24','',NULL),(9,'Consumables','Consumable','2010-02-16 13:17:38','',NULL),(10,'Infocoms','Infocom','2010-02-16 13:17:55','',NULL),(11,'Licenses','SoftwareLicense','2010-02-16 13:18:12','',NULL),(12,'Contracts','Contract','2010-02-16 13:18:12','',NULL),(13,'Password Forget','User','2011-03-04 11:35:13',NULL,NULL),(14,'Ticket Satisfaction','Ticket','2011-03-04 11:35:15',NULL,NULL),(15,'Item not unique','FieldUnicity','2011-03-04 11:35:16',NULL,NULL),(16,'Crontask','Crontask','2011-03-04 11:35:16',NULL,NULL),(17,'Problems','Problem','2011-12-06 09:48:33',NULL,NULL);
/*!40000 ALTER TABLE `glpi_notificationtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notificationtemplatetranslations`
--

DROP TABLE IF EXISTS `glpi_notificationtemplatetranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notificationtemplatetranslations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `language` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notificationtemplatetranslations`
--

LOCK TABLES `glpi_notificationtemplatetranslations` WRITE;
/*!40000 ALTER TABLE `glpi_notificationtemplatetranslations` DISABLE KEYS */;
INSERT INTO `glpi_notificationtemplatetranslations` VALUES (1,1,'','##lang.dbconnection.title##','##lang.dbconnection.delay## : ##dbconnection.delay##\n','&lt;p&gt;##lang.dbconnection.delay## : ##dbconnection.delay##&lt;/p&gt;'),(2,2,'','##reservation.action##','======================================================================\n##lang.reservation.user##: ##reservation.user##\n##lang.reservation.item.name##: ##reservation.itemtype## - ##reservation.item.name##\n##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech## ##ENDIFreservation.tech##\n##lang.reservation.begin##: ##reservation.begin##\n##lang.reservation.end##: ##reservation.end##\n##lang.reservation.comment##: ##reservation.comment##\n======================================================================\n','&lt;!-- description{ color: inherit; background: #ebebeb;border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; } --&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.user##:&lt;/span&gt;##reservation.user##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.item.name##:&lt;/span&gt;##reservation.itemtype## - ##reservation.item.name##&lt;br /&gt;##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech####ENDIFreservation.tech##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.begin##:&lt;/span&gt; ##reservation.begin##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.end##:&lt;/span&gt;##reservation.end##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.comment##:&lt;/span&gt; ##reservation.comment##&lt;/p&gt;'),(3,3,'','##reservation.action##  ##reservation.entity##','##lang.reservation.entity## : ##reservation.entity## \n\n \n##FOREACHreservations## \n##lang.reservation.itemtype## : ##reservation.itemtype##\n\n ##lang.reservation.item## : ##reservation.item##\n \n ##reservation.url## \n\n ##ENDFOREACHreservations##','&lt;p&gt;##lang.reservation.entity## : ##reservation.entity## &lt;br /&gt; &lt;br /&gt;\n##FOREACHreservations## &lt;br /&gt;##lang.reservation.itemtype## :  ##reservation.itemtype##&lt;br /&gt;\n ##lang.reservation.item## :  ##reservation.item##&lt;br /&gt; &lt;br /&gt;\n &lt;a href=\"##reservation.url##\"&gt; ##reservation.url##&lt;/a&gt;&lt;br /&gt;\n ##ENDFOREACHreservations##&lt;/p&gt;'),(4,4,'','##ticket.action## ##ticket.title##',' ##IFticket.storestatus=solved##\n ##lang.ticket.url## : ##ticket.urlapprove##\n ##lang.ticket.autoclosewarning##\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description## ##ENDIFticket.storestatus##\n ##ELSEticket.storestatus## ##lang.ticket.url## : ##ticket.url## ##ENDELSEticket.storestatus##\n\n ##lang.ticket.description##\n\n ##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.authors## : ##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors## ##ELSEticket.authors##--##ENDELSEticket.authors##\n ##lang.ticket.creationdate## : ##ticket.creationdate##\n ##lang.ticket.closedate## : ##ticket.closedate##\n ##lang.ticket.requesttype## : ##ticket.requesttype##\n##IFticket.itemtype## ##lang.ticket.item.name## : ##ticket.itemtype## - ##ticket.item.name## ##IFticket.item.model## - ##ticket.item.model## ##ENDIFticket.item.model## ##IFticket.item.serial## - ##ticket.item.serial## ##ENDIFticket.item.serial##  ##IFticket.item.otherserial## -##ticket.item.otherserial## ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype##\n##IFticket.assigntousers## ##lang.ticket.assigntousers## : ##ticket.assigntousers## ##ENDIFticket.assigntousers##\n ##lang.ticket.status## : ##ticket.status##\n##IFticket.assigntogroups## ##lang.ticket.assigntogroups## : ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##\n ##lang.ticket.urgency## : ##ticket.urgency##\n ##lang.ticket.impact## : ##ticket.impact##\n ##lang.ticket.priority## : ##ticket.priority##\n##IFticket.user.email## ##lang.ticket.user.email## : ##ticket.user.email ##ENDIFticket.user.email##\n##IFticket.category## ##lang.ticket.category## : ##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n ##lang.ticket.content## : ##ticket.content##\n ##IFticket.storestatus=closed##\n\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description##\n ##ENDIFticket.storestatus##\n ##lang.ticket.numberoffollowups## : ##ticket.numberoffollowups##\n\n##FOREACHfollowups##\n\n [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##\n ##lang.followup.author## ##followup.author##\n ##lang.followup.description## ##followup.description##\n ##lang.followup.date## ##followup.date##\n ##lang.followup.requesttype## ##followup.requesttype##\n\n##ENDFOREACHfollowups##\n ##lang.ticket.numberoftasks## : ##ticket.numberoftasks##\n\n##FOREACHtasks##\n\n [##task.date##] ##lang.task.isprivate## : ##task.isprivate##\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##','<!-- description{ color: inherit; background: #ebebeb; border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; }    -->\n<div>##IFticket.storestatus=solved##</div>\n<div>##lang.ticket.url## : <a href=\"##ticket.urlapprove##\">##ticket.urlapprove##</a> <strong>&#160;</strong></div>\n<div><strong>##lang.ticket.autoclosewarning##</strong></div>\n<div><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.type##</strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description## ##ENDIFticket.storestatus##</div>\n<div>##ELSEticket.storestatus## ##lang.ticket.url## : <a href=\"##ticket.url##\">##ticket.url##</a> ##ENDELSEticket.storestatus##</div>\n<p class=\"description b\"><strong>##lang.ticket.description##</strong></p>\n<p><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.title##</span>&#160;:##ticket.title## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.authors##</span>&#160;:##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors##    ##ELSEticket.authors##--##ENDELSEticket.authors## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.creationdate##</span>&#160;:##ticket.creationdate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.closedate##</span>&#160;:##ticket.closedate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.requesttype##</span>&#160;:##ticket.requesttype##<br /> ##IFticket.itemtype## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.item.name##</span>&#160;: ##ticket.itemtype## - ##ticket.item.name##    ##IFticket.item.model## - ##ticket.item.model##    ##ENDIFticket.item.model## ##IFticket.item.serial## -##ticket.item.serial## ##ENDIFticket.item.serial##&#160; ##IFticket.item.otherserial## -##ticket.item.otherserial##  ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype## <br /> ##IFticket.assigntousers## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntousers##</span>&#160;: ##ticket.assigntousers## ##ENDIFticket.assigntousers##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.status## </span>&#160;: ##ticket.status##<br /> ##IFticket.assigntogroups## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntogroups##</span>&#160;: ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.urgency##</span>&#160;: ##ticket.urgency##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.impact##</span>&#160;: ##ticket.impact##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.priority##</span>&#160;: ##ticket.priority## <br /> ##IFticket.user.email##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.user.email##</span>&#160;: ##ticket.user.email ##ENDIFticket.user.email##    <br /> ##IFticket.category##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.category## </span>&#160;:##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##    <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.content##</span>&#160;: ##ticket.content##</p>\n<br />##IFticket.storestatus=closed##<br /><span style=\"text-decoration: underline;\"><strong><span style=\"color: #888888;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solution.type##</span></strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description##<br />##ENDIFticket.storestatus##</p>\n<div class=\"description b\">##lang.ticket.numberoffollowups##&#160;: ##ticket.numberoffollowups##</div>\n<p>##FOREACHfollowups##</p>\n<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>\n<p>##ENDFOREACHfollowups##</p>\n<div class=\"description b\">##lang.ticket.numberoftasks##&#160;: ##ticket.numberoftasks##</div>\n<p>##FOREACHtasks##</p>\n<div class=\"description b\"><br /> <strong> [##task.date##] <em>##lang.task.isprivate## : ##task.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.author##</span> ##task.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.description##</span> ##task.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.time##</span> ##task.time##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.category##</span> ##task.category##</div>\n<p>##ENDFOREACHtasks##</p>'),(5,12,'','##contract.action##  ##contract.entity##','##lang.contract.entity## : ##contract.entity##\n\n##FOREACHcontracts##\n##lang.contract.name## : ##contract.name##\n##lang.contract.number## : ##contract.number##\n##lang.contract.time## : ##contract.time##\n##IFcontract.type####lang.contract.type## : ##contract.type####ENDIFcontract.type##\n##contract.url##\n##ENDFOREACHcontracts##','&lt;p&gt;##lang.contract.entity## : ##contract.entity##&lt;br /&gt;\n&lt;br /&gt;##FOREACHcontracts##&lt;br /&gt;##lang.contract.name## :\n##contract.name##&lt;br /&gt;\n##lang.contract.number## : ##contract.number##&lt;br /&gt;\n##lang.contract.time## : ##contract.time##&lt;br /&gt;\n##IFcontract.type####lang.contract.type## : ##contract.type##\n##ENDIFcontract.type##&lt;br /&gt;\n&lt;a href=\"##contract.url##\"&gt;\n##contract.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcontracts##&lt;/p&gt;'),(6,5,'','##ticket.action## ##ticket.title##','##lang.ticket.url## : ##ticket.url## \n\n##lang.ticket.description## \n\n\n##lang.ticket.title## &#160;:##ticket.title## \n\n##lang.ticket.authors## &#160;:##IFticket.authors##\n##ticket.authors## ##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors## &#160; \n\n##IFticket.category## ##lang.ticket.category## &#160;:##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n\n##lang.ticket.content## &#160;: ##ticket.content##\n##IFticket.itemtype##\n##lang.ticket.item.name## &#160;: ##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##','&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.url##\"&gt;\n##ticket.url##&lt;/a&gt;&lt;/div&gt;\n&lt;div class=\"description b\"&gt;\n##lang.ticket.description##&lt;/div&gt;\n&lt;p&gt;&lt;span\nstyle=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title##\n&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.authors##&lt;/span&gt;\n##IFticket.authors## ##ticket.authors##\n##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##\n&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;&#160\n;&lt;/span&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;\n##IFticket.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.content##&lt;/span&gt;&#160;:\n##ticket.content##&lt;br /&gt;##IFticket.itemtype##\n&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.item.name##&lt;/span&gt;&#160;:\n##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##&lt;/p&gt;'),(15,15,'','##lang.unicity.action##','##lang.unicity.entity## : ##unicity.entity## \n\n##lang.unicity.itemtype## : ##unicity.itemtype## \n\n##lang.unicity.message## : ##unicity.message## \n\n##lang.unicity.action_user## : ##unicity.action_user## \n\n##lang.unicity.action_type## : ##unicity.action_type## \n\n##lang.unicity.date## : ##unicity.date##','&lt;p&gt;##lang.unicity.entity## : ##unicity.entity##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.itemtype## : ##unicity.itemtype##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.message## : ##unicity.message##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_user## : ##unicity.action_user##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_type## : ##unicity.action_type##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.date## : ##unicity.date##&lt;/p&gt;'),(7,7,'','##ticket.action## ##ticket.title##','##FOREACHvalidations##\n\n##IFvalidation.storestatus=waiting##\n##validation.submission.title##\n##lang.validation.commentsubmission## : ##validation.commentsubmission##\n##ENDIFvalidation.storestatus##\n##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##\n\n##lang.ticket.url## : ##ticket.urlvalidation##\n\n##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n##IFvalidation.commentvalidation##\n##lang.validation.commentvalidation## : ##validation.commentvalidation##\n##ENDIFvalidation.commentvalidation##\n##ENDFOREACHvalidations##','&lt;div&gt;##FOREACHvalidations##&lt;/div&gt;\n&lt;p&gt;##IFvalidation.storestatus=waiting##&lt;/p&gt;\n&lt;div&gt;##validation.submission.title##&lt;/div&gt;\n&lt;div&gt;##lang.validation.commentsubmission## : ##validation.commentsubmission##&lt;/div&gt;\n&lt;div&gt;##ENDIFvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;&lt;/div&gt;\n&lt;div&gt;\n&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.urlvalidation##\"&gt; ##ticket.urlvalidation## &lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p&gt;##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n&lt;br /&gt; ##IFvalidation.commentvalidation##&lt;br /&gt; ##lang.validation.commentvalidation## :\n&#160; ##validation.commentvalidation##&lt;br /&gt; ##ENDIFvalidation.commentvalidation##\n&lt;br /&gt;##ENDFOREACHvalidations##&lt;/p&gt;'),(8,6,'','##ticket.action## ##ticket.entity##','##lang.ticket.entity## : ##ticket.entity##\n \n##FOREACHtickets##\n\n##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.status## : ##ticket.status##\n\n ##ticket.url## \n ##ENDFOREACHtickets##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;\n&lt;tbody&gt;\n&lt;tr&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.title##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.attribution##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##FOREACHtickets##                   \n&lt;tr&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;&lt;a href=\"##ticket.url##\"&gt;##ticket.title##&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##IFticket.assigntousers####ticket.assigntousers##&lt;br /&gt;##ENDIFticket.assigntousers####IFticket.assigntogroups##&lt;br /&gt;##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##&lt;br /&gt;##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##ENDFOREACHtickets##\n&lt;/tbody&gt;\n&lt;/table&gt;'),(9,9,'','##consumable.action##  ##consumable.entity##','##lang.consumable.entity## : ##consumable.entity##\n \n\n##FOREACHconsumables##\n##lang.consumable.item## : ##consumable.item##\n \n\n##lang.consumable.reference## : ##consumable.reference##\n\n##lang.consumable.remaining## : ##consumable.remaining##\n\n##consumable.url## \n\n##ENDFOREACHconsumables##','&lt;p&gt;\n##lang.consumable.entity## : ##consumable.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHconsumables##\n&lt;br /&gt;##lang.consumable.item## : ##consumable.item##&lt;br /&gt;\n&lt;br /&gt;##lang.consumable.reference## : ##consumable.reference##&lt;br /&gt;\n##lang.consumable.remaining## : ##consumable.remaining##&lt;br /&gt;\n&lt;a href=\"##consumable.url##\"&gt; ##consumable.url##&lt;/a&gt;&lt;br /&gt;\n   ##ENDFOREACHconsumables##&lt;/p&gt;'),(10,8,'','##cartridge.action##  ##cartridge.entity##','##lang.cartridge.entity## : ##cartridge.entity##\n \n\n##FOREACHcartridges##\n##lang.cartridge.item## : ##cartridge.item##\n \n\n##lang.cartridge.reference## : ##cartridge.reference##\n\n##lang.cartridge.remaining## : ##cartridge.remaining##\n\n##cartridge.url## \n ##ENDFOREACHcartridges##','&lt;p&gt;##lang.cartridge.entity## : ##cartridge.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHcartridges##\n&lt;br /&gt;##lang.cartridge.item## :\n##cartridge.item##&lt;br /&gt; &lt;br /&gt;\n##lang.cartridge.reference## :\n##cartridge.reference##&lt;br /&gt;\n##lang.cartridge.remaining## :\n##cartridge.remaining##&lt;br /&gt;\n&lt;a href=\"##cartridge.url##\"&gt;\n##cartridge.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcartridges##&lt;/p&gt;'),(11,10,'','##infocom.action##  ##infocom.entity##','##lang.infocom.entity## : ##infocom.entity## \n \n\n##FOREACHinfocoms## \n\n##lang.infocom.itemtype## : ##infocom.itemtype##\n\n##lang.infocom.item## : ##infocom.item##\n \n\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n\n##infocom.url## \n ##ENDFOREACHinfocoms##','&lt;p&gt;##lang.infocom.entity## : ##infocom.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHinfocoms##\n&lt;br /&gt;##lang.infocom.itemtype## : ##infocom.itemtype##&lt;br /&gt;\n##lang.infocom.item## : ##infocom.item##&lt;br /&gt; &lt;br /&gt;\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n&lt;br /&gt; &lt;a href=\"##infocom.url##\"&gt;\n##infocom.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHinfocoms##&lt;/p&gt;'),(12,11,'','##license.action##  ##license.entity##','##lang.license.entity## : ##license.entity##\n\n##FOREACHlicenses## \n\n##lang.license.item## : ##license.item##\n\n##lang.license.serial## : ##license.serial##\n\n##lang.license.expirationdate## : ##license.expirationdate##\n\n##license.url## \n ##ENDFOREACHlicenses##','&lt;p&gt;\n##lang.license.entity## : ##license.entity##&lt;br /&gt;\n##FOREACHlicenses##\n&lt;br /&gt;##lang.license.item## : ##license.item##&lt;br /&gt;\n##lang.license.serial## : ##license.serial##&lt;br /&gt;\n##lang.license.expirationdate## : ##license.expirationdate##\n&lt;br /&gt; &lt;a href=\"##license.url##\"&gt; ##license.url##\n&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHlicenses##&lt;/p&gt;'),(13,13,'','##user.action##','##user.realname## ##user.firstname##\n\n##lang.passwordforget.information##\n\n##lang.passwordforget.link## ##user.passwordforgeturl##','&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.information##&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.link## &lt;a title=\"##user.passwordforgeturl##\" href=\"##user.passwordforgeturl##\"&gt;##user.passwordforgeturl##&lt;/a&gt;&lt;/p&gt;'),(14,14,'','##ticket.action## ##ticket.title##','##lang.ticket.title## : ##ticket.title##\n\n##lang.ticket.closedate## : ##ticket.closedate##\n\n##lang.satisfaction.text## ##ticket.urlsatisfaction##','&lt;p&gt;##lang.ticket.title## : ##ticket.title##&lt;/p&gt;\n&lt;p&gt;##lang.ticket.closedate## : ##ticket.closedate##&lt;/p&gt;\n&lt;p&gt;##lang.satisfaction.text## &lt;a href=\"##ticket.urlsatisfaction##\"&gt;##ticket.urlsatisfaction##&lt;/a&gt;&lt;/p&gt;'),(16,16,'','##crontask.action##','##lang.crontask.warning## \n\n##FOREACHcrontasks## \n ##crontask.name## : ##crontask.description##\n \n##ENDFOREACHcrontasks##','&lt;p&gt;##lang.crontask.warning##&lt;/p&gt;\n&lt;p&gt;##FOREACHcrontasks## &lt;br /&gt;&lt;a href=\"##crontask.url##\"&gt;##crontask.name##&lt;/a&gt; : ##crontask.description##&lt;br /&gt; &lt;br /&gt;##ENDFOREACHcrontasks##&lt;/p&gt;'),(17,17,'','##problem.action## ##problem.title##','##IFproblem.storestatus=solved##\n ##lang.problem.url## : ##problem.urlapprove##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description## ##ENDIFproblem.storestatus##\n ##ELSEproblem.storestatus## ##lang.problem.url## : ##problem.url## ##ENDELSEproblem.storestatus##\n\n ##lang.problem.description##\n\n ##lang.problem.title## &#160;:##problem.title##\n ##lang.problem.authors## &#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors## ##ELSEproblem.authors##--##ENDELSEproblem.authors##\n ##lang.problem.creationdate## &#160;:##problem.creationdate##\n ##IFproblem.assigntousers## ##lang.problem.assigntousers## &#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##\n ##lang.problem.status## &#160;: ##problem.status##\n ##IFproblem.assigntogroups## ##lang.problem.assigntogroups## &#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##\n ##lang.problem.urgency## &#160;: ##problem.urgency##\n ##lang.problem.impact## &#160;: ##problem.impact##\n ##lang.problem.priority## : ##problem.priority##\n##IFproblem.category## ##lang.problem.category## &#160;:##problem.category## ##ENDIFproblem.category## ##ELSEproblem.category## ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##\n ##lang.problem.content## &#160;: ##problem.content##\n\n##IFproblem.storestatus=closed##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description##\n##ENDIFproblem.storestatus##\n ##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##\n\n##FOREACHtickets##\n [##ticket.date##] ##lang.problem.title## : ##ticket.title##\n ##lang.problem.content## ##ticket.content##\n\n##ENDFOREACHtickets##\n ##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##\n\n##FOREACHtasks##\n [##task.date##]\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##\n','&lt;p&gt;##IFproblem.storestatus=solved##&lt;/p&gt;\n&lt;div&gt;##lang.problem.url## : &lt;a href=\"##problem.urlapprove##\"&gt;##problem.urlapprove##&lt;/a&gt;&lt;/div&gt;\n&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description## ##ENDIFproblem.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEproblem.storestatus## ##lang.problem.url## : &lt;a href=\"##problem.url##\"&gt;##problem.url##&lt;/a&gt; ##ENDELSEproblem.storestatus##&lt;/div&gt;\n&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.problem.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.title##&lt;/span&gt;&#160;:##problem.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.authors##&lt;/span&gt;&#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors##    ##ELSEproblem.authors##--##ENDELSEproblem.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.creationdate##&lt;/span&gt;&#160;:##problem.creationdate## &lt;br /&gt; ##IFproblem.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntousers##&lt;/span&gt;&#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.status## &lt;/span&gt;&#160;: ##problem.status##&lt;br /&gt; ##IFproblem.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntogroups##&lt;/span&gt;&#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.urgency##&lt;/span&gt;&#160;: ##problem.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.impact##&lt;/span&gt;&#160;: ##problem.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.priority##&lt;/span&gt; : ##problem.priority## &lt;br /&gt;##IFproblem.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.category## &lt;/span&gt;&#160;:##problem.category##  ##ENDIFproblem.category## ##ELSEproblem.category##  ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.content##&lt;/span&gt;&#160;: ##problem.content##&lt;/p&gt;\n&lt;p&gt;##IFproblem.storestatus=closed##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description##&lt;br /&gt;##ENDIFproblem.storestatus##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##&lt;/div&gt;\n&lt;p&gt;##FOREACHtickets##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt; [##ticket.date##] &lt;em&gt;##lang.problem.title## : &lt;a href=\"##ticket.url##\"&gt;##ticket.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.content## &lt;/span&gt; ##ticket.content##\n&lt;p&gt;##ENDFOREACHtickets##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##&lt;/div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;');
/*!40000 ALTER TABLE `glpi_notificationtemplatetranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notimportedemails`
--

DROP TABLE IF EXISTS `glpi_notimportedemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notimportedemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `mailcollectors_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `subject` text,
  `messageid` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `mailcollectors_id` (`mailcollectors_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notimportedemails`
--

LOCK TABLES `glpi_notimportedemails` WRITE;
/*!40000 ALTER TABLE `glpi_notimportedemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_notimportedemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ocsadmininfoslinks`
--

DROP TABLE IF EXISTS `glpi_ocsadmininfoslinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ocsadmininfoslinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glpi_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocsservers_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ocsservers_id` (`ocsservers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ocsadmininfoslinks`
--

LOCK TABLES `glpi_ocsadmininfoslinks` WRITE;
/*!40000 ALTER TABLE `glpi_ocsadmininfoslinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ocsadmininfoslinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ocslinks`
--

DROP TABLE IF EXISTS `glpi_ocslinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ocslinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `ocsid` int(11) NOT NULL DEFAULT '0',
  `ocs_deviceid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_auto_update` tinyint(1) NOT NULL DEFAULT '1',
  `last_update` datetime DEFAULT NULL,
  `last_ocs_update` datetime DEFAULT NULL,
  `computer_update` longtext COLLATE utf8_unicode_ci,
  `import_device` longtext COLLATE utf8_unicode_ci,
  `import_disk` longtext COLLATE utf8_unicode_ci,
  `import_software` longtext COLLATE utf8_unicode_ci,
  `import_monitor` longtext COLLATE utf8_unicode_ci,
  `import_peripheral` longtext COLLATE utf8_unicode_ci,
  `import_printer` longtext COLLATE utf8_unicode_ci,
  `ocsservers_id` int(11) NOT NULL DEFAULT '0',
  `import_ip` longtext COLLATE utf8_unicode_ci,
  `ocs_agent_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_vm` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ocsid`,`ocsservers_id`),
  KEY `last_update` (`last_update`),
  KEY `ocs_deviceid` (`ocs_deviceid`),
  KEY `last_ocs_update` (`ocsservers_id`,`last_ocs_update`),
  KEY `computers_id` (`computers_id`),
  KEY `use_auto_update` (`use_auto_update`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ocslinks`
--

LOCK TABLES `glpi_ocslinks` WRITE;
/*!40000 ALTER TABLE `glpi_ocslinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ocslinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ocsservers`
--

DROP TABLE IF EXISTS `glpi_ocsservers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ocsservers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_db_utf8` tinyint(1) NOT NULL DEFAULT '0',
  `checksum` int(11) NOT NULL DEFAULT '0',
  `import_periph` tinyint(1) NOT NULL DEFAULT '0',
  `import_monitor` tinyint(1) NOT NULL DEFAULT '0',
  `import_software` tinyint(1) NOT NULL DEFAULT '0',
  `import_printer` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_name` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_os` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_serial` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_model` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_manufacturer` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_type` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_domain` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_contact` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_comment` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_processor` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_memory` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_hdd` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_iface` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_gfxcard` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_sound` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_drive` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_port` tinyint(1) NOT NULL DEFAULT '0',
  `import_device_modem` tinyint(1) NOT NULL DEFAULT '0',
  `import_registry` tinyint(1) NOT NULL DEFAULT '0',
  `import_os_serial` tinyint(1) NOT NULL DEFAULT '0',
  `import_ip` tinyint(1) NOT NULL DEFAULT '0',
  `import_disk` tinyint(1) NOT NULL DEFAULT '0',
  `import_monitor_comment` tinyint(1) NOT NULL DEFAULT '0',
  `states_id_default` int(11) NOT NULL DEFAULT '0',
  `tag_limit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_exclude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_soft_dict` tinyint(1) NOT NULL DEFAULT '0',
  `cron_sync_number` int(11) DEFAULT '1',
  `deconnection_behavior` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_behavior` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `import_vms` tinyint(1) NOT NULL DEFAULT '0',
  `import_general_uuid` tinyint(1) NOT NULL DEFAULT '0',
  `ocs_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ocsservers`
--

LOCK TABLES `glpi_ocsservers` WRITE;
/*!40000 ALTER TABLE `glpi_ocsservers` DISABLE KEYS */;
INSERT INTO `glpi_ocsservers` VALUES (1,'localhost','ocs','ocs','localhost','ocsweb',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',NULL,0,1,NULL,'',NULL,NULL,1,'1',0,0,NULL);
/*!40000 ALTER TABLE `glpi_ocsservers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystems`
--

DROP TABLE IF EXISTS `glpi_operatingsystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystems`
--

LOCK TABLES `glpi_operatingsystems` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystemservicepacks`
--

DROP TABLE IF EXISTS `glpi_operatingsystemservicepacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystemservicepacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystemservicepacks`
--

LOCK TABLES `glpi_operatingsystemservicepacks` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystemservicepacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystemservicepacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystemversions`
--

DROP TABLE IF EXISTS `glpi_operatingsystemversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystemversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystemversions`
--

LOCK TABLES `glpi_operatingsystemversions` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystemversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystemversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_peripheralmodels`
--

DROP TABLE IF EXISTS `glpi_peripheralmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_peripheralmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_peripheralmodels`
--

LOCK TABLES `glpi_peripheralmodels` WRITE;
/*!40000 ALTER TABLE `glpi_peripheralmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_peripheralmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_peripherals`
--

DROP TABLE IF EXISTS `glpi_peripherals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_peripherals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `peripheraltypes_id` int(11) NOT NULL DEFAULT '0',
  `peripheralmodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `peripheralmodels_id` (`peripheralmodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `peripheraltypes_id` (`peripheraltypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_peripherals`
--

LOCK TABLES `glpi_peripherals` WRITE;
/*!40000 ALTER TABLE `glpi_peripherals` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_peripherals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_peripheraltypes`
--

DROP TABLE IF EXISTS `glpi_peripheraltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_peripheraltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_peripheraltypes`
--

LOCK TABLES `glpi_peripheraltypes` WRITE;
/*!40000 ALTER TABLE `glpi_peripheraltypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_peripheraltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_phonemodels`
--

DROP TABLE IF EXISTS `glpi_phonemodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_phonemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_phonemodels`
--

LOCK TABLES `glpi_phonemodels` WRITE;
/*!40000 ALTER TABLE `glpi_phonemodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_phonemodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_phonepowersupplies`
--

DROP TABLE IF EXISTS `glpi_phonepowersupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_phonepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_phonepowersupplies`
--

LOCK TABLES `glpi_phonepowersupplies` WRITE;
/*!40000 ALTER TABLE `glpi_phonepowersupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_phonepowersupplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_phones`
--

DROP TABLE IF EXISTS `glpi_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firmware` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `phonetypes_id` int(11) NOT NULL DEFAULT '0',
  `phonemodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `number_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_headset` tinyint(1) NOT NULL DEFAULT '0',
  `have_hp` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `phonemodels_id` (`phonemodels_id`),
  KEY `phonepowersupplies_id` (`phonepowersupplies_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `phonetypes_id` (`phonetypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_phones`
--

LOCK TABLES `glpi_phones` WRITE;
/*!40000 ALTER TABLE `glpi_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_phonetypes`
--

DROP TABLE IF EXISTS `glpi_phonetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_phonetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_phonetypes`
--

LOCK TABLES `glpi_phonetypes` WRITE;
/*!40000 ALTER TABLE `glpi_phonetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_phonetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugins`
--

DROP TABLE IF EXISTS `glpi_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PLUGIN_* constant',
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`directory`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugins`
--

LOCK TABLES `glpi_plugins` WRITE;
/*!40000 ALTER TABLE `glpi_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_printermodels`
--

DROP TABLE IF EXISTS `glpi_printermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_printermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_printermodels`
--

LOCK TABLES `glpi_printermodels` WRITE;
/*!40000 ALTER TABLE `glpi_printermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_printermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_printers`
--

DROP TABLE IF EXISTS `glpi_printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_printers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_serial` tinyint(1) NOT NULL DEFAULT '0',
  `have_parallel` tinyint(1) NOT NULL DEFAULT '0',
  `have_usb` tinyint(1) NOT NULL DEFAULT '0',
  `have_wifi` tinyint(1) NOT NULL DEFAULT '0',
  `have_ethernet` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `memory_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `printertypes_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_pages_counter` int(11) NOT NULL DEFAULT '0',
  `last_pages_counter` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `printermodels_id` (`printermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `printertypes_id` (`printertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `last_pages_counter` (`last_pages_counter`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_printers`
--

LOCK TABLES `glpi_printers` WRITE;
/*!40000 ALTER TABLE `glpi_printers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_printertypes`
--

DROP TABLE IF EXISTS `glpi_printertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_printertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_printertypes`
--

LOCK TABLES `glpi_printertypes` WRITE;
/*!40000 ALTER TABLE `glpi_printertypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_printertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problems`
--

DROP TABLE IF EXISTS `glpi_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `suppliers_id_assign` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `causecontent` longtext COLLATE utf8_unicode_ci,
  `symptomcontent` longtext COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` text COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`(1)),
  KEY `priority` (`priority`),
  KEY `date_mod` (`date_mod`),
  KEY `suppliers_id_assign` (`suppliers_id_assign`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `due_date` (`due_date`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problems`
--

LOCK TABLES `glpi_problems` WRITE;
/*!40000 ALTER TABLE `glpi_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problems_tickets`
--

DROP TABLE IF EXISTS `glpi_problems_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problems_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problems_tickets`
--

LOCK TABLES `glpi_problems_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_problems_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_problems_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problems_users`
--

DROP TABLE IF EXISTS `glpi_problems_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problems_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problems_users`
--

LOCK TABLES `glpi_problems_users` WRITE;
/*!40000 ALTER TABLE `glpi_problems_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_problems_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problemtasks`
--

DROP TABLE IF EXISTS `glpi_problemtasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problemtasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `problems_id` (`problems_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `date` (`date`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `state` (`state`),
  KEY `taskcategories_id` (`taskcategories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problemtasks`
--

LOCK TABLES `glpi_problemtasks` WRITE;
/*!40000 ALTER TABLE `glpi_problemtasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_problemtasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_profiles`
--

DROP TABLE IF EXISTS `glpi_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'helpdesk',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `computer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monitor` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `software` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `networking` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peripheral` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cartridge` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consumable` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_enterprise` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contract` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infocom` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `knowbase` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `knowbase_admin` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservation_helpdesk` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservation_central` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reports` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocsng` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_ocsng` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sync_ocsng` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typedoc` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_rule_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_ocs` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_ldap` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_softwarecategories` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_config` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_config_global` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_update` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_authtype` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transfer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logs` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reminder_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bookmark_public` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backup` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_add_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `global_add_tasks` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_priority` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `own_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `steal_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_assign_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_full_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observe_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_tasks` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_group_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_planning` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statistic` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_update` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpdesk_hardware` int(11) NOT NULL DEFAULT '0',
  `helpdesk_item_type` text COLLATE utf8_unicode_ci,
  `ticket_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `show_group_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_group_hardware` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_software` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_dropdown` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_externalauth_users` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_mailcollector` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `validate_ticket` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_validation` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sla` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_dictionnary_printer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clean_ocsng` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_own_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_followups` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_helpdesk` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_my_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_all_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_all_problem` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `problem_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplate` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticketrecurrent` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interface` (`interface`),
  KEY `is_default` (`is_default`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_profiles`
--

LOCK TABLES `glpi_profiles` WRITE;
/*!40000 ALTER TABLE `glpi_profiles` DISABLE KEYS */;
INSERT INTO `glpi_profiles` VALUES (1,'Self-Service','helpdesk',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r',NULL,NULL,'1',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,'1',1,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]',NULL,'0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(2,'Observer','central',0,'r','r','r','r','r','r','r','r','r','r','r','r','r','r','r',NULL,'r','1','r','r',NULL,'r',NULL,NULL,NULL,NULL,'r','r',NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,'r',NULL,'r','r','r',NULL,NULL,NULL,NULL,NULL,NULL,'1','1','1','0','0','0','0','0','1','0','0','1','1','0','1','0','0','1','0','0','1','1',1,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]',NULL,'0','0',NULL,NULL,'r',NULL,NULL,NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,NULL,'0',NULL,'1','1',NULL,NULL,0,NULL,NULL),(3,'Admin','central',0,'w','w','w','w','w','w','w','w','w','w','w','w','w','w','w',NULL,'w','1','w','r','w','r','w','w','w','w','w','w',NULL,NULL,NULL,NULL,NULL,NULL,'w','w','r','r','w','w','w',NULL,NULL,NULL,NULL,NULL,NULL,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]',NULL,'0','0',NULL,NULL,'w','w',NULL,NULL,NULL,NULL,'1','1','w',NULL,NULL,'w','1','1',NULL,'1','1','1',NULL,0,NULL,NULL),(4,'Super-Admin','central',0,'w','w','w','w','w','w','w','w','w','w','w','w','w','w','w','1','w','1','w','r','w','r','w','w','w','w','w','w','w','r','w','w','w','w','w','w','r','w','w','w','w','w','w','r','w','w','w','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]',NULL,'0','0','w','w','w','w','w','w',NULL,NULL,'1','1','w','w','w','w','1','1','w','1','1','1',NULL,0,'w','w'),(5,'Hotliner','central',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,'1',NULL,'1',NULL,'1',NULL,NULL,NULL,'1','1',NULL,'1','1',NULL,NULL,'1',NULL,NULL,'1','1',3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]',NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,'1',NULL,NULL,1,'r',NULL),(6,'Technician','central',0,'w','w','w','w','w','w','w','w','w','w',NULL,'w',NULL,NULL,'w',NULL,'w','1','w','r',NULL,'r','w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,'r','r','r',NULL,'w',NULL,NULL,'1',NULL,'1',NULL,'1','1','1',NULL,'1',NULL,NULL,'1','1','1','1','1','1','1',NULL,NULL,'1','1',3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]',NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,NULL,NULL,NULL,NULL,'1',NULL,'r',NULL,NULL,'1',NULL,NULL,'1','1',NULL,NULL,0,'r','r'),(7,'Supervisor','central',0,'w','w','w','w','w','w','w','w','w','w',NULL,'w',NULL,NULL,'w',NULL,'w','1','w','r',NULL,'r','w',NULL,'w',NULL,NULL,NULL,NULL,'r','w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,'r','r','r','r','w',NULL,NULL,'1','1','1',NULL,'1','1','1','1','1','1','1','1','1','1','1','1','1','1',NULL,'1','1','1',3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\"]',NULL,NULL,NULL,NULL,NULL,NULL,'w',NULL,'w',NULL,NULL,'1','1','w','w',NULL,NULL,'1','1',NULL,'1','1','1',NULL,0,'w','w');
/*!40000 ALTER TABLE `glpi_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_profiles_reminders`
--

DROP TABLE IF EXISTS `glpi_profiles_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_profiles_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_profiles_reminders`
--

LOCK TABLES `glpi_profiles_reminders` WRITE;
/*!40000 ALTER TABLE `glpi_profiles_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_profiles_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_profiles_users`
--

DROP TABLE IF EXISTS `glpi_profiles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_profiles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `users_id` (`users_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_profiles_users`
--

LOCK TABLES `glpi_profiles_users` WRITE;
/*!40000 ALTER TABLE `glpi_profiles_users` DISABLE KEYS */;
INSERT INTO `glpi_profiles_users` VALUES (2,2,4,0,1,0),(3,3,1,0,1,0),(4,4,6,0,1,0),(5,5,2,0,1,0);
/*!40000 ALTER TABLE `glpi_profiles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_registrykeys`
--

DROP TABLE IF EXISTS `glpi_registrykeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_registrykeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `hive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ocs_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_registrykeys`
--

LOCK TABLES `glpi_registrykeys` WRITE;
/*!40000 ALTER TABLE `glpi_registrykeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_registrykeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_reminders`
--

DROP TABLE IF EXISTS `glpi_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `is_planned` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `begin_view_date` datetime DEFAULT NULL,
  `end_view_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `users_id` (`users_id`),
  KEY `is_planned` (`is_planned`),
  KEY `state` (`state`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_reminders`
--

LOCK TABLES `glpi_reminders` WRITE;
/*!40000 ALTER TABLE `glpi_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_reminders_users`
--

DROP TABLE IF EXISTS `glpi_reminders_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_reminders_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_reminders_users`
--

LOCK TABLES `glpi_reminders_users` WRITE;
/*!40000 ALTER TABLE `glpi_reminders_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_reminders_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_requesttypes`
--

DROP TABLE IF EXISTS `glpi_requesttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_requesttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mail_default` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_helpdesk_default` (`is_helpdesk_default`),
  KEY `is_mail_default` (`is_mail_default`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_requesttypes`
--

LOCK TABLES `glpi_requesttypes` WRITE;
/*!40000 ALTER TABLE `glpi_requesttypes` DISABLE KEYS */;
INSERT INTO `glpi_requesttypes` VALUES (1,'Helpdesk',1,0,NULL),(2,'E-Mail',0,1,NULL),(3,'Phone',0,0,NULL),(4,'Direct',0,0,NULL),(5,'Written',0,0,NULL),(6,'Other',0,0,NULL);
/*!40000 ALTER TABLE `glpi_requesttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_reservationitems`
--

DROP TABLE IF EXISTS `glpi_reservationitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_reservationitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_reservationitems`
--

LOCK TABLES `glpi_reservationitems` WRITE;
/*!40000 ALTER TABLE `glpi_reservationitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_reservationitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_reservations`
--

DROP TABLE IF EXISTS `glpi_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservationitems_id` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `group` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `reservationitems_id` (`reservationitems_id`),
  KEY `users_id` (`users_id`),
  KEY `resagroup` (`reservationitems_id`,`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_reservations`
--

LOCK TABLES `glpi_reservations` WRITE;
/*!40000 ALTER TABLE `glpi_reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ruleactions`
--

DROP TABLE IF EXISTS `glpi_ruleactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ruleactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'VALUE IN (assign, regex_result, append_regex_result, affectbyip, affectbyfqdn, affectbymac)',
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `field_value` (`field`(50),`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ruleactions`
--

LOCK TABLES `glpi_ruleactions` WRITE;
/*!40000 ALTER TABLE `glpi_ruleactions` DISABLE KEYS */;
INSERT INTO `glpi_ruleactions` VALUES (1,1,'assign','entities_id','0'),(2,2,'assign','entities_id','0'),(3,3,'assign','entities_id','0'),(4,4,'assign','_refuse_email_no_response','1'),(5,5,'assign','_refuse_email_no_response','1');
/*!40000 ALTER TABLE `glpi_ruleactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachecomputermodels`
--

DROP TABLE IF EXISTS `glpi_rulecachecomputermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachecomputermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachecomputermodels`
--

LOCK TABLES `glpi_rulecachecomputermodels` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachecomputermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachecomputermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachecomputertypes`
--

DROP TABLE IF EXISTS `glpi_rulecachecomputertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachecomputertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachecomputertypes`
--

LOCK TABLES `glpi_rulecachecomputertypes` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachecomputertypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachecomputertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachemanufacturers`
--

DROP TABLE IF EXISTS `glpi_rulecachemanufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachemanufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachemanufacturers`
--

LOCK TABLES `glpi_rulecachemanufacturers` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachemanufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachemanufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachemonitormodels`
--

DROP TABLE IF EXISTS `glpi_rulecachemonitormodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachemonitormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachemonitormodels`
--

LOCK TABLES `glpi_rulecachemonitormodels` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachemonitormodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachemonitormodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachemonitortypes`
--

DROP TABLE IF EXISTS `glpi_rulecachemonitortypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachemonitortypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachemonitortypes`
--

LOCK TABLES `glpi_rulecachemonitortypes` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachemonitortypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachemonitortypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachenetworkequipmentmodels`
--

DROP TABLE IF EXISTS `glpi_rulecachenetworkequipmentmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachenetworkequipmentmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachenetworkequipmentmodels`
--

LOCK TABLES `glpi_rulecachenetworkequipmentmodels` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachenetworkequipmentmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachenetworkequipmentmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachenetworkequipmenttypes`
--

DROP TABLE IF EXISTS `glpi_rulecachenetworkequipmenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachenetworkequipmenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachenetworkequipmenttypes`
--

LOCK TABLES `glpi_rulecachenetworkequipmenttypes` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachenetworkequipmenttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachenetworkequipmenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecacheoperatingsystems`
--

DROP TABLE IF EXISTS `glpi_rulecacheoperatingsystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecacheoperatingsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecacheoperatingsystems`
--

LOCK TABLES `glpi_rulecacheoperatingsystems` WRITE;
/*!40000 ALTER TABLE `glpi_rulecacheoperatingsystems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecacheoperatingsystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecacheoperatingsystemservicepacks`
--

DROP TABLE IF EXISTS `glpi_rulecacheoperatingsystemservicepacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecacheoperatingsystemservicepacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecacheoperatingsystemservicepacks`
--

LOCK TABLES `glpi_rulecacheoperatingsystemservicepacks` WRITE;
/*!40000 ALTER TABLE `glpi_rulecacheoperatingsystemservicepacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecacheoperatingsystemservicepacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecacheoperatingsystemversions`
--

DROP TABLE IF EXISTS `glpi_rulecacheoperatingsystemversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecacheoperatingsystemversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecacheoperatingsystemversions`
--

LOCK TABLES `glpi_rulecacheoperatingsystemversions` WRITE;
/*!40000 ALTER TABLE `glpi_rulecacheoperatingsystemversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecacheoperatingsystemversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecacheperipheralmodels`
--

DROP TABLE IF EXISTS `glpi_rulecacheperipheralmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecacheperipheralmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecacheperipheralmodels`
--

LOCK TABLES `glpi_rulecacheperipheralmodels` WRITE;
/*!40000 ALTER TABLE `glpi_rulecacheperipheralmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecacheperipheralmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecacheperipheraltypes`
--

DROP TABLE IF EXISTS `glpi_rulecacheperipheraltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecacheperipheraltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecacheperipheraltypes`
--

LOCK TABLES `glpi_rulecacheperipheraltypes` WRITE;
/*!40000 ALTER TABLE `glpi_rulecacheperipheraltypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecacheperipheraltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachephonemodels`
--

DROP TABLE IF EXISTS `glpi_rulecachephonemodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachephonemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachephonemodels`
--

LOCK TABLES `glpi_rulecachephonemodels` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachephonemodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachephonemodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachephonetypes`
--

DROP TABLE IF EXISTS `glpi_rulecachephonetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachephonetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachephonetypes`
--

LOCK TABLES `glpi_rulecachephonetypes` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachephonetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachephonetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecacheprintermodels`
--

DROP TABLE IF EXISTS `glpi_rulecacheprintermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecacheprintermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecacheprintermodels`
--

LOCK TABLES `glpi_rulecacheprintermodels` WRITE;
/*!40000 ALTER TABLE `glpi_rulecacheprintermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecacheprintermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecacheprinters`
--

DROP TABLE IF EXISTS `glpi_rulecacheprinters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecacheprinters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ignore_ocs_import` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_global` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecacheprinters`
--

LOCK TABLES `glpi_rulecacheprinters` WRITE;
/*!40000 ALTER TABLE `glpi_rulecacheprinters` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecacheprinters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecacheprintertypes`
--

DROP TABLE IF EXISTS `glpi_rulecacheprintertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecacheprintertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecacheprintertypes`
--

LOCK TABLES `glpi_rulecacheprintertypes` WRITE;
/*!40000 ALTER TABLE `glpi_rulecacheprintertypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecacheprintertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecachesoftwares`
--

DROP TABLE IF EXISTS `glpi_rulecachesoftwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecachesoftwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ignore_ocs_import` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_visible` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_entities_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `old_value` (`old_value`),
  KEY `rules_id` (`rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecachesoftwares`
--

LOCK TABLES `glpi_rulecachesoftwares` WRITE;
/*!40000 ALTER TABLE `glpi_rulecachesoftwares` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rulecachesoftwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecriterias`
--

DROP TABLE IF EXISTS `glpi_rulecriterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `condition` (`condition`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecriterias`
--

LOCK TABLES `glpi_rulecriterias` WRITE;
/*!40000 ALTER TABLE `glpi_rulecriterias` DISABLE KEYS */;
INSERT INTO `glpi_rulecriterias` VALUES (1,1,'TAG',0,'*'),(2,2,'uid',0,'*'),(3,2,'samaccountname',0,'*'),(4,2,'MAIL_EMAIL',0,'*'),(5,3,'subject',6,'/.*/'),(6,4,'x-auto-response-suppress',6,'/\\S+/'),(7,5,'auto-submitted',6,'/\\S+/'),(8,5,'auto-submitted',1,'no');
/*!40000 ALTER TABLE `glpi_rulecriterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulerightparameters`
--

DROP TABLE IF EXISTS `glpi_rulerightparameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulerightparameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulerightparameters`
--

LOCK TABLES `glpi_rulerightparameters` WRITE;
/*!40000 ALTER TABLE `glpi_rulerightparameters` DISABLE KEYS */;
INSERT INTO `glpi_rulerightparameters` VALUES (1,'(LDAP)Organization','o',''),(2,'(LDAP)Common Name','cn',''),(3,'(LDAP)Department Number','departmentnumber',''),(4,'(LDAP)Email','mail',''),(5,'Object Class','objectclass',''),(6,'(LDAP)User ID','uid',''),(7,'(LDAP)Telephone Number','phone',''),(8,'(LDAP)Employee Number','employeenumber',''),(9,'(LDAP)Manager','manager',''),(10,'(LDAP)DistinguishedName','dn',''),(12,'(AD)User ID','samaccountname',''),(13,'(LDAP) Title','title','');
/*!40000 ALTER TABLE `glpi_rulerightparameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rules`
--

DROP TABLE IF EXISTS `glpi_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `sub_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ranking` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `sub_type` (`sub_type`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rules`
--

LOCK TABLES `glpi_rules` WRITE;
/*!40000 ALTER TABLE `glpi_rules` DISABLE KEYS */;
INSERT INTO `glpi_rules` VALUES (1,0,'RuleOcs',1,'Root','','AND',1,NULL,NULL,0),(2,0,'RuleRight',1,'Root','','OR',1,NULL,NULL,0),(3,0,'RuleMailCollector',3,'Root','','OR',1,NULL,NULL,0),(4,0,'RuleMailCollector',1,'Auto-Reply X-Auto-Response-Suppress','Exclude Auto-Reply emails using X-Auto-Response-Suppress header','AND',1,NULL,'2011-01-18 11:40:42',1),(5,0,'RuleMailCollector',2,'Auto-Reply Auto-Submitted','Exclude Auto-Reply emails using Auto-Submitted header','AND',1,NULL,'2011-01-18 11:40:42',1);
/*!40000 ALTER TABLE `glpi_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slalevelactions`
--

DROP TABLE IF EXISTS `glpi_slalevelactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slalevelactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slalevelactions`
--

LOCK TABLES `glpi_slalevelactions` WRITE;
/*!40000 ALTER TABLE `glpi_slalevelactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slalevelactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slalevels`
--

DROP TABLE IF EXISTS `glpi_slalevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slalevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `slas_id` (`slas_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slalevels`
--

LOCK TABLES `glpi_slalevels` WRITE;
/*!40000 ALTER TABLE `glpi_slalevels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slalevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slalevels_tickets`
--

DROP TABLE IF EXISTS `glpi_slalevels_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slalevels_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slalevels_tickets`
--

LOCK TABLES `glpi_slalevels_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_slalevels_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slalevels_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slas`
--

DROP TABLE IF EXISTS `glpi_slas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `resolution_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `calendars_id` (`calendars_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slas`
--

LOCK TABLES `glpi_slas` WRITE;
/*!40000 ALTER TABLE `glpi_slas` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwarecategories`
--

DROP TABLE IF EXISTS `glpi_softwarecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwarecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwarecategories`
--

LOCK TABLES `glpi_softwarecategories` WRITE;
/*!40000 ALTER TABLE `glpi_softwarecategories` DISABLE KEYS */;
INSERT INTO `glpi_softwarecategories` VALUES (1,'FUSION',NULL);
/*!40000 ALTER TABLE `glpi_softwarecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwarelicenses`
--

DROP TABLE IF EXISTS `glpi_softwarelicenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwarelicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `softwareversions_id_buy` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id_use` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `expire` (`expire`),
  KEY `softwareversions_id_buy` (`softwareversions_id_buy`),
  KEY `entities_id` (`entities_id`),
  KEY `softwares_id` (`softwares_id`),
  KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`),
  KEY `softwareversions_id_use` (`softwareversions_id_use`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwarelicenses`
--

LOCK TABLES `glpi_softwarelicenses` WRITE;
/*!40000 ALTER TABLE `glpi_softwarelicenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_softwarelicenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwarelicensetypes`
--

DROP TABLE IF EXISTS `glpi_softwarelicensetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwarelicensetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwarelicensetypes`
--

LOCK TABLES `glpi_softwarelicensetypes` WRITE;
/*!40000 ALTER TABLE `glpi_softwarelicensetypes` DISABLE KEYS */;
INSERT INTO `glpi_softwarelicensetypes` VALUES (1,'OEM','');
/*!40000 ALTER TABLE `glpi_softwarelicensetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwares`
--

DROP TABLE IF EXISTS `glpi_softwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_update` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_update` (`is_update`),
  KEY `softwarecategories_id` (`softwarecategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `softwares_id` (`softwares_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwares`
--

LOCK TABLES `glpi_softwares` WRITE;
/*!40000 ALTER TABLE `glpi_softwares` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_softwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwareversions`
--

DROP TABLE IF EXISTS `glpi_softwareversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwareversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `softwares_id` (`softwares_id`),
  KEY `states_id` (`states_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `operatingsystems_id` (`operatingsystems_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwareversions`
--

LOCK TABLES `glpi_softwareversions` WRITE;
/*!40000 ALTER TABLE `glpi_softwareversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_softwareversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_solutiontemplates`
--

DROP TABLE IF EXISTS `glpi_solutiontemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_solutiontemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `entities_id` (`entities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_solutiontemplates`
--

LOCK TABLES `glpi_solutiontemplates` WRITE;
/*!40000 ALTER TABLE `glpi_solutiontemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_solutiontemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_solutiontypes`
--

DROP TABLE IF EXISTS `glpi_solutiontypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_solutiontypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_solutiontypes`
--

LOCK TABLES `glpi_solutiontypes` WRITE;
/*!40000 ALTER TABLE `glpi_solutiontypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_solutiontypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_states`
--

DROP TABLE IF EXISTS `glpi_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `unicity` (`states_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_states`
--

LOCK TABLES `glpi_states` WRITE;
/*!40000 ALTER TABLE `glpi_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_suppliers`
--

DROP TABLE IF EXISTS `glpi_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliertypes_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notepad` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `suppliertypes_id` (`suppliertypes_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_suppliers`
--

LOCK TABLES `glpi_suppliers` WRITE;
/*!40000 ALTER TABLE `glpi_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_suppliertypes`
--

DROP TABLE IF EXISTS `glpi_suppliertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_suppliertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_suppliertypes`
--

LOCK TABLES `glpi_suppliertypes` WRITE;
/*!40000 ALTER TABLE `glpi_suppliertypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_suppliertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_taskcategories`
--

DROP TABLE IF EXISTS `glpi_taskcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_taskcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_taskcategories`
--

LOCK TABLES `glpi_taskcategories` WRITE;
/*!40000 ALTER TABLE `glpi_taskcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_taskcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ticketfollowups`
--

DROP TABLE IF EXISTS `glpi_ticketfollowups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ticketfollowups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `users_id` (`users_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `is_private` (`is_private`),
  KEY `requesttypes_id` (`requesttypes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ticketfollowups`
--

LOCK TABLES `glpi_ticketfollowups` WRITE;
/*!40000 ALTER TABLE `glpi_ticketfollowups` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ticketfollowups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ticketrecurrents`
--

DROP TABLE IF EXISTS `glpi_ticketrecurrents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ticketrecurrents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` datetime DEFAULT NULL,
  `periodicity` int(11) NOT NULL DEFAULT '0',
  `create_before` int(11) NOT NULL DEFAULT '0',
  `next_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `tickettemplates_id` (`tickettemplates_id`),
  KEY `next_creation_date` (`next_creation_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ticketrecurrents`
--

LOCK TABLES `glpi_ticketrecurrents` WRITE;
/*!40000 ALTER TABLE `glpi_ticketrecurrents` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ticketrecurrents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickets`
--

DROP TABLE IF EXISTS `glpi_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'new',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id_assign` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solution` text COLLATE utf8_unicode_ci,
  `global_validation` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `due_date` datetime DEFAULT NULL,
  `begin_waiting_date` datetime DEFAULT NULL,
  `sla_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `takeintoaccount_delay_stat` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `request_type` (`requesttypes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `suppliers_id_assign` (`suppliers_id_assign`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `global_validation` (`global_validation`),
  KEY `slas_id` (`slas_id`),
  KEY `slalevels_id` (`slalevels_id`),
  KEY `due_date` (`due_date`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `type` (`type`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickets`
--

LOCK TABLES `glpi_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickets_tickets`
--

DROP TABLE IF EXISTS `glpi_tickets_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickets_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id_1` int(11) NOT NULL DEFAULT '0',
  `tickets_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `unicity` (`tickets_id_1`,`tickets_id_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickets_tickets`
--

LOCK TABLES `glpi_tickets_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_tickets_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickets_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickets_users`
--

DROP TABLE IF EXISTS `glpi_tickets_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickets_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickets_users`
--

LOCK TABLES `glpi_tickets_users` WRITE;
/*!40000 ALTER TABLE `glpi_tickets_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickets_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ticketsatisfactions`
--

DROP TABLE IF EXISTS `glpi_ticketsatisfactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ticketsatisfactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `date_begin` datetime DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tickets_id` (`tickets_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ticketsatisfactions`
--

LOCK TABLES `glpi_ticketsatisfactions` WRITE;
/*!40000 ALTER TABLE `glpi_ticketsatisfactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ticketsatisfactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettasks`
--

DROP TABLE IF EXISTS `glpi_tickettasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `users_id` (`users_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `is_private` (`is_private`),
  KEY `taskcategories_id` (`taskcategories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettasks`
--

LOCK TABLES `glpi_tickettasks` WRITE;
/*!40000 ALTER TABLE `glpi_tickettasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickettasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettemplatehiddenfields`
--

DROP TABLE IF EXISTS `glpi_tickettemplatehiddenfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettemplatehiddenfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettemplatehiddenfields`
--

LOCK TABLES `glpi_tickettemplatehiddenfields` WRITE;
/*!40000 ALTER TABLE `glpi_tickettemplatehiddenfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickettemplatehiddenfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettemplatemandatoryfields`
--

DROP TABLE IF EXISTS `glpi_tickettemplatemandatoryfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettemplatemandatoryfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettemplatemandatoryfields`
--

LOCK TABLES `glpi_tickettemplatemandatoryfields` WRITE;
/*!40000 ALTER TABLE `glpi_tickettemplatemandatoryfields` DISABLE KEYS */;
INSERT INTO `glpi_tickettemplatemandatoryfields` VALUES (1,1,0,0,21);
/*!40000 ALTER TABLE `glpi_tickettemplatemandatoryfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettemplatepredefinedfields`
--

DROP TABLE IF EXISTS `glpi_tickettemplatepredefinedfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettemplatepredefinedfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettemplatepredefinedfields`
--

LOCK TABLES `glpi_tickettemplatepredefinedfields` WRITE;
/*!40000 ALTER TABLE `glpi_tickettemplatepredefinedfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickettemplatepredefinedfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettemplates`
--

DROP TABLE IF EXISTS `glpi_tickettemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettemplates`
--

LOCK TABLES `glpi_tickettemplates` WRITE;
/*!40000 ALTER TABLE `glpi_tickettemplates` DISABLE KEYS */;
INSERT INTO `glpi_tickettemplates` VALUES (1,'Default',0,1,NULL);
/*!40000 ALTER TABLE `glpi_tickettemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ticketvalidations`
--

DROP TABLE IF EXISTS `glpi_ticketvalidations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ticketvalidations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'waiting',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_validate` (`users_id_validate`),
  KEY `tickets_id` (`tickets_id`),
  KEY `submission_date` (`submission_date`),
  KEY `validation_date` (`validation_date`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ticketvalidations`
--

LOCK TABLES `glpi_ticketvalidations` WRITE;
/*!40000 ALTER TABLE `glpi_ticketvalidations` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ticketvalidations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_transfers`
--

DROP TABLE IF EXISTS `glpi_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keep_ticket` int(11) NOT NULL DEFAULT '0',
  `keep_networklink` int(11) NOT NULL DEFAULT '0',
  `keep_reservation` int(11) NOT NULL DEFAULT '0',
  `keep_history` int(11) NOT NULL DEFAULT '0',
  `keep_device` int(11) NOT NULL DEFAULT '0',
  `keep_infocom` int(11) NOT NULL DEFAULT '0',
  `keep_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `clean_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `keep_dc_phone` int(11) NOT NULL DEFAULT '0',
  `clean_dc_phone` int(11) NOT NULL DEFAULT '0',
  `keep_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `clean_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `keep_dc_printer` int(11) NOT NULL DEFAULT '0',
  `clean_dc_printer` int(11) NOT NULL DEFAULT '0',
  `keep_supplier` int(11) NOT NULL DEFAULT '0',
  `clean_supplier` int(11) NOT NULL DEFAULT '0',
  `keep_contact` int(11) NOT NULL DEFAULT '0',
  `clean_contact` int(11) NOT NULL DEFAULT '0',
  `keep_contract` int(11) NOT NULL DEFAULT '0',
  `clean_contract` int(11) NOT NULL DEFAULT '0',
  `keep_software` int(11) NOT NULL DEFAULT '0',
  `clean_software` int(11) NOT NULL DEFAULT '0',
  `keep_document` int(11) NOT NULL DEFAULT '0',
  `clean_document` int(11) NOT NULL DEFAULT '0',
  `keep_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `clean_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `keep_cartridge` int(11) NOT NULL DEFAULT '0',
  `keep_consumable` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `keep_disk` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_transfers`
--

LOCK TABLES `glpi_transfers` WRITE;
/*!40000 ALTER TABLE `glpi_transfers` DISABLE KEYS */;
INSERT INTO `glpi_transfers` VALUES (1,'complete',2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,1);
/*!40000 ALTER TABLE `glpi_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_usercategories`
--

DROP TABLE IF EXISTS `glpi_usercategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_usercategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_usercategories`
--

LOCK TABLES `glpi_usercategories` WRITE;
/*!40000 ALTER TABLE `glpi_usercategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_usercategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_useremails`
--

DROP TABLE IF EXISTS `glpi_useremails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_useremails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`email`),
  KEY `email` (`email`),
  KEY `is_default` (`is_default`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_useremails`
--

LOCK TABLES `glpi_useremails` WRITE;
/*!40000 ALTER TABLE `glpi_useremails` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_useremails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_users`
--

DROP TABLE IF EXISTS `glpi_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT '0',
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `auths_id` int(11) NOT NULL DEFAULT '0',
  `authtype` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_sync` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `usercategories_id` int(11) NOT NULL DEFAULT '0',
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_ids_visible` tinyint(1) DEFAULT NULL,
  `dropdown_chars_limit` int(11) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(1) DEFAULT NULL,
  `show_jobs_at_login` tinyint(1) DEFAULT NULL,
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_6` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_categorized_soft_expanded` tinyint(1) DEFAULT NULL,
  `is_not_categorized_soft_expanded` tinyint(1) DEFAULT NULL,
  `followup_private` tinyint(1) DEFAULT NULL,
  `task_private` tinyint(1) DEFAULT NULL,
  `default_requesttypes_id` int(11) DEFAULT NULL,
  `password_forget_token` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_forget_token_date` datetime DEFAULT NULL,
  `user_dn` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_count_on_tabs` tinyint(1) DEFAULT NULL,
  `refresh_ticket_list` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(1) DEFAULT NULL,
  `personal_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_token_date` datetime DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`name`),
  KEY `firstname` (`firstname`),
  KEY `realname` (`realname`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `locations_id` (`locations_id`),
  KEY `usertitles_id` (`usertitles_id`),
  KEY `usercategories_id` (`usercategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `authitem` (`authtype`,`auths_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_users`
--

LOCK TABLES `glpi_users` WRITE;
/*!40000 ALTER TABLE `glpi_users` DISABLE KEYS */;
INSERT INTO `glpi_users` VALUES (2,'glpi','0915bd0a5c6e56d8f38ca2b390857d4949073f41','','','','',NULL,0,NULL,0,20,1,NULL,0,1,'2021-10-15 06:44:54','2010-05-06 09:31:04',NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'post-only','3177926a7314de24680a9938aaa97703','','','','',NULL,0,NULL,0,20,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'tech','d9f9133fb120cd6096870bc2b496805b','','','','',NULL,0,NULL,0,20,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'normal','fea087517c26fadd409bd4b9dc642555','','','','',NULL,0,NULL,0,20,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_usertitles`
--

DROP TABLE IF EXISTS `glpi_usertitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_usertitles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_usertitles`
--

LOCK TABLES `glpi_usertitles` WRITE;
/*!40000 ALTER TABLE `glpi_usertitles` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_usertitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_virtualmachinestates`
--

DROP TABLE IF EXISTS `glpi_virtualmachinestates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_virtualmachinestates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_virtualmachinestates`
--

LOCK TABLES `glpi_virtualmachinestates` WRITE;
/*!40000 ALTER TABLE `glpi_virtualmachinestates` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_virtualmachinestates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_virtualmachinesystems`
--

DROP TABLE IF EXISTS `glpi_virtualmachinesystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_virtualmachinesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_virtualmachinesystems`
--

LOCK TABLES `glpi_virtualmachinesystems` WRITE;
/*!40000 ALTER TABLE `glpi_virtualmachinesystems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_virtualmachinesystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_virtualmachinetypes`
--

DROP TABLE IF EXISTS `glpi_virtualmachinetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_virtualmachinetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_virtualmachinetypes`
--

LOCK TABLES `glpi_virtualmachinetypes` WRITE;
/*!40000 ALTER TABLE `glpi_virtualmachinetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_virtualmachinetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_vlans`
--

DROP TABLE IF EXISTS `glpi_vlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `tag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_vlans`
--

LOCK TABLES `glpi_vlans` WRITE;
/*!40000 ALTER TABLE `glpi_vlans` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_vlans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15  6:49:54
