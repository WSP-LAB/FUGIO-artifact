-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: piwik
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
-- Table structure for table `piwik_access`
--

DROP TABLE IF EXISTS `piwik_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_access` (
  `login` varchar(100) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `access` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`login`,`idsite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_access`
--

LOCK TABLES `piwik_access` WRITE;
/*!40000 ALTER TABLE `piwik_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_archive_blob_2021_10`
--

DROP TABLE IF EXISTS `piwik_archive_blob_2021_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_blob_2021_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_all` (`idsite`,`date1`,`date2`,`name`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_archive_blob_2021_10`
--

LOCK TABLES `piwik_archive_blob_2021_10` WRITE;
/*!40000 ALTER TABLE `piwik_archive_blob_2021_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_archive_blob_2021_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_archive_numeric_2021_10`
--

DROP TABLE IF EXISTS `piwik_archive_numeric_2021_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_numeric_2021_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` float DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_all` (`idsite`,`date1`,`date2`,`name`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_archive_numeric_2021_10`
--

LOCK TABLES `piwik_archive_numeric_2021_10` WRITE;
/*!40000 ALTER TABLE `piwik_archive_numeric_2021_10` DISABLE KEYS */;
INSERT INTO `piwik_archive_numeric_2021_10` VALUES (1,'done',1,'2021-10-15','2021-10-15',1,'2021-10-15 07:33:13',1),(2,'done',1,'2021-10-15','2021-10-15',1,'2021-10-15 07:33:37',1);
/*!40000 ALTER TABLE `piwik_archive_numeric_2021_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_goal`
--

DROP TABLE IF EXISTS `piwik_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(10) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `revenue` float NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`,`idgoal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_goal`
--

LOCK TABLES `piwik_goal` WRITE;
/*!40000 ALTER TABLE `piwik_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_action`
--

DROP TABLE IF EXISTS `piwik_log_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_action` (
  `idaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`idaction`),
  KEY `index_type_name` (`type`,`name`(15))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_action`
--

LOCK TABLES `piwik_log_action` WRITE;
/*!40000 ALTER TABLE `piwik_log_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_conversion`
--

DROP TABLE IF EXISTS `piwik_log_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_conversion` (
  `idvisit` int(10) unsigned NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `visitor_idcookie` char(32) NOT NULL,
  `server_time` datetime NOT NULL,
  `visit_server_date` date NOT NULL,
  `idaction` int(11) DEFAULT NULL,
  `idlink_va` int(11) DEFAULT NULL,
  `referer_idvisit` int(10) unsigned DEFAULT NULL,
  `referer_visit_server_date` date DEFAULT NULL,
  `referer_type` int(10) unsigned DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `visitor_returning` tinyint(1) NOT NULL,
  `location_country` char(3) NOT NULL,
  `location_continent` char(3) NOT NULL,
  `url` text NOT NULL,
  `idgoal` int(10) unsigned NOT NULL,
  `revenue` float DEFAULT NULL,
  PRIMARY KEY (`idvisit`,`idgoal`),
  KEY `index_idsite_date` (`idsite`,`visit_server_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_conversion`
--

LOCK TABLES `piwik_log_conversion` WRITE;
/*!40000 ALTER TABLE `piwik_log_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_link_visit_action`
--

DROP TABLE IF EXISTS `piwik_log_link_visit_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_link_visit_action` (
  `idlink_va` int(11) NOT NULL AUTO_INCREMENT,
  `idvisit` int(10) unsigned NOT NULL,
  `idaction` int(10) unsigned NOT NULL,
  `idaction_ref` int(11) unsigned NOT NULL,
  `time_spent_ref_action` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idlink_va`),
  KEY `index_idvisit` (`idvisit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_link_visit_action`
--

LOCK TABLES `piwik_log_link_visit_action` WRITE;
/*!40000 ALTER TABLE `piwik_log_link_visit_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_link_visit_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_profiling`
--

DROP TABLE IF EXISTS `piwik_log_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_profiling` (
  `query` text NOT NULL,
  `count` int(10) unsigned DEFAULT NULL,
  `sum_time_ms` float DEFAULT NULL,
  UNIQUE KEY `query` (`query`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_profiling`
--

LOCK TABLES `piwik_log_profiling` WRITE;
/*!40000 ALTER TABLE `piwik_log_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_profiling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_visit`
--

DROP TABLE IF EXISTS `piwik_log_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_visit` (
  `idvisit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `visitor_localtime` time NOT NULL,
  `visitor_idcookie` char(32) NOT NULL,
  `visitor_returning` tinyint(1) NOT NULL,
  `visit_first_action_time` datetime NOT NULL,
  `visit_last_action_time` datetime NOT NULL,
  `visit_server_date` date NOT NULL,
  `visit_exit_idaction` int(11) NOT NULL,
  `visit_entry_idaction` int(11) NOT NULL,
  `visit_total_actions` smallint(5) unsigned NOT NULL,
  `visit_total_time` smallint(5) unsigned NOT NULL,
  `visit_goal_converted` tinyint(1) NOT NULL,
  `referer_type` int(10) unsigned DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_url` text NOT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `config_md5config` char(32) NOT NULL,
  `config_os` char(3) NOT NULL,
  `config_browser_name` varchar(10) NOT NULL,
  `config_browser_version` varchar(20) NOT NULL,
  `config_resolution` varchar(9) NOT NULL,
  `config_pdf` tinyint(1) NOT NULL,
  `config_flash` tinyint(1) NOT NULL,
  `config_java` tinyint(1) NOT NULL,
  `config_director` tinyint(1) NOT NULL,
  `config_quicktime` tinyint(1) NOT NULL,
  `config_realplayer` tinyint(1) NOT NULL,
  `config_windowsmedia` tinyint(1) NOT NULL,
  `config_gears` tinyint(1) NOT NULL,
  `config_silverlight` tinyint(1) NOT NULL,
  `config_cookie` tinyint(1) NOT NULL,
  `location_ip` bigint(20) unsigned NOT NULL,
  `location_browser_lang` varchar(20) NOT NULL,
  `location_country` char(3) NOT NULL,
  `location_continent` char(3) NOT NULL,
  PRIMARY KEY (`idvisit`),
  KEY `index_idsite_date` (`idsite`,`visit_server_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_visit`
--

LOCK TABLES `piwik_log_visit` WRITE;
/*!40000 ALTER TABLE `piwik_log_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_logger_api_call`
--

DROP TABLE IF EXISTS `piwik_logger_api_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_logger_api_call` (
  `idlogger_api_call` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `parameter_names_default_values` text,
  `parameter_values` text,
  `execution_time` float DEFAULT NULL,
  `caller_ip` bigint(20) unsigned DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `returned_value` text,
  PRIMARY KEY (`idlogger_api_call`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_logger_api_call`
--

LOCK TABLES `piwik_logger_api_call` WRITE;
/*!40000 ALTER TABLE `piwik_logger_api_call` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_logger_api_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_logger_error`
--

DROP TABLE IF EXISTS `piwik_logger_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_logger_error` (
  `idlogger_error` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT NULL,
  `message` text,
  `errno` int(10) unsigned DEFAULT NULL,
  `errline` int(10) unsigned DEFAULT NULL,
  `errfile` varchar(255) DEFAULT NULL,
  `backtrace` text,
  PRIMARY KEY (`idlogger_error`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_logger_error`
--

LOCK TABLES `piwik_logger_error` WRITE;
/*!40000 ALTER TABLE `piwik_logger_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_logger_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_logger_exception`
--

DROP TABLE IF EXISTS `piwik_logger_exception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_logger_exception` (
  `idlogger_exception` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT NULL,
  `message` text,
  `errno` int(10) unsigned DEFAULT NULL,
  `errline` int(10) unsigned DEFAULT NULL,
  `errfile` varchar(255) DEFAULT NULL,
  `backtrace` text,
  PRIMARY KEY (`idlogger_exception`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_logger_exception`
--

LOCK TABLES `piwik_logger_exception` WRITE;
/*!40000 ALTER TABLE `piwik_logger_exception` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_logger_exception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_logger_message`
--

DROP TABLE IF EXISTS `piwik_logger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_logger_message` (
  `idlogger_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`idlogger_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_logger_message`
--

LOCK TABLES `piwik_logger_message` WRITE;
/*!40000 ALTER TABLE `piwik_logger_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_logger_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_option`
--

DROP TABLE IF EXISTS `piwik_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_option` (
  `option_name` varchar(64) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_option`
--

LOCK TABLES `piwik_option` WRITE;
/*!40000 ALTER TABLE `piwik_option` DISABLE KEYS */;
INSERT INTO `piwik_option` VALUES ('UpdateCheck_LastTimeChecked','1634283192',1),('UpdateCheck_LatestVersion','2.18.1',0),('version_Actions','0.1',1),('version_API','0.1',1),('version_core','0.4.5',1),('version_CoreAdminHome','0.1',1),('version_CoreHome','0.1',1),('version_CorePluginsAdmin','0.1',1),('version_CoreUpdater','0.1',1),('version_Dashboard','0.1',1),('version_ExampleAPI','0.1',1),('version_ExampleFeedburner','0.1',1),('version_ExamplePlugin','0.1',1),('version_ExampleRssWidget','0.1',1),('version_Feedback','0.1',1),('version_Installation','0.1',1),('version_LanguagesManager','0.1',1),('version_Login','0.1',1),('version_Provider','0.1',1),('version_Referers','0.1',1),('version_SitesManager','0.1',1),('version_UserCountry','0.1',1),('version_UserSettings','0.1',1),('version_UsersManager','0.1',1),('version_VisitFrequency','0.1',1),('version_VisitorInterest','0.1',1),('version_VisitsSummary','0.1',1),('version_VisitTime','0.1',1),('version_Widgetize','0.1',1);
/*!40000 ALTER TABLE `piwik_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_site`
--

DROP TABLE IF EXISTS `piwik_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feedburnerName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_site`
--

LOCK TABLES `piwik_site` WRITE;
/*!40000 ALTER TABLE `piwik_site` DISABLE KEYS */;
INSERT INTO `piwik_site` VALUES (1,'Test','http://test.com','2021-10-15 07:33:09',NULL);
/*!40000 ALTER TABLE `piwik_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_site_url`
--

DROP TABLE IF EXISTS `piwik_site_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site_url` (
  `idsite` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`idsite`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_site_url`
--

LOCK TABLES `piwik_site_url` WRITE;
/*!40000 ALTER TABLE `piwik_site_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_site_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user`
--

DROP TABLE IF EXISTS `piwik_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user` (
  `login` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token_auth` char(32) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uniq_keytoken` (`token_auth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user`
--

LOCK TABLES `piwik_user` WRITE;
/*!40000 ALTER TABLE `piwik_user` DISABLE KEYS */;
INSERT INTO `piwik_user` VALUES ('anonymous','','anonymous','anonymous@example.org','anonymous','2021-10-15 07:32:57');
/*!40000 ALTER TABLE `piwik_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user_dashboard`
--

DROP TABLE IF EXISTS `piwik_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `layout` text NOT NULL,
  PRIMARY KEY (`login`,`iddashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user_dashboard`
--

LOCK TABLES `piwik_user_dashboard` WRITE;
/*!40000 ALTER TABLE `piwik_user_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_user_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user_language`
--

DROP TABLE IF EXISTS `piwik_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user_language`
--

LOCK TABLES `piwik_user_language` WRITE;
/*!40000 ALTER TABLE `piwik_user_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_user_language` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15  7:34:09
