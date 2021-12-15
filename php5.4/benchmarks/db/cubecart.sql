-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: cubecart
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
-- Table structure for table `cubecart_CubeCart_access_log`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_access_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Supports IPv6 addresses',
  `useragent` text COLLATE utf8_unicode_ci NOT NULL,
  `success` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_access_log`
--

LOCK TABLES `cubecart_CubeCart_access_log` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_access_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_addressbook`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_addressbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_addressbook` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `billing` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `default` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `addressee` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `line1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `line2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `town` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `country` smallint(3) unsigned NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_addressbook`
--

LOCK TABLES `cubecart_CubeCart_addressbook` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_addressbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_addressbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_admin_error_log`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_admin_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_admin_error_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `read` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_admin_error_log`
--

LOCK TABLES `cubecart_CubeCart_admin_error_log` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_admin_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_admin_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_admin_log`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_admin_log`
--

LOCK TABLES `cubecart_CubeCart_admin_log` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_admin_users`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_admin_users` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `verify` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text COLLATE utf8_unicode_ci,
  `failLevel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockTime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastTime` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` text COLLATE utf8_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Supports IPv6 addresses',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en-US',
  `dashboard_notes` text COLLATE utf8_unicode_ci,
  `order_notify` tinyint(1) unsigned DEFAULT '0',
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_admin_users`
--

LOCK TABLES `cubecart_CubeCart_admin_users` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_admin_users` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_admin_users` VALUES (1,NULL,1,'admin','admin','70fac323a98a8ed51ee1002c3813b67ae51d8348cd83411adc45bccbede085a56d3af33aa023c05c33824a520804d812c5662ec0bfae23749029762263536970','58fc4d46',1,'admin@test.com',NULL,0,1,NULL,0,0,0,NULL,NULL,NULL,'en-GB',NULL,1);
/*!40000 ALTER TABLE `cubecart_CubeCart_admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_alt_shipping`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_alt_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_alt_shipping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `byprice` smallint(1) NOT NULL,
  `global` smallint(1) NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_alt_shipping`
--

LOCK TABLES `cubecart_CubeCart_alt_shipping` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_alt_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_alt_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_alt_shipping_prices`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_alt_shipping_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_alt_shipping_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alt_ship_id` int(10) unsigned NOT NULL,
  `low` decimal(16,3) NOT NULL DEFAULT '0.000',
  `high` decimal(16,3) NOT NULL DEFAULT '0.000',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_alt_shipping_prices`
--

LOCK TABLES `cubecart_CubeCart_alt_shipping_prices` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_alt_shipping_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_alt_shipping_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_blocker`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_blocker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_blocker` (
  `block_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `last_attempt` int(10) unsigned NOT NULL DEFAULT '0',
  `ban_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `location` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Supports IPv6 addresses',
  PRIMARY KEY (`block_id`),
  KEY `location` (`location`),
  KEY `last_attempt` (`last_attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_blocker`
--

LOCK TABLES `cubecart_CubeCart_blocker` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_blocker` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_blocker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_category`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_desc` text COLLATE utf8_unicode_ci,
  `cat_parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_image` varbinary(250) NOT NULL DEFAULT '',
  `per_ship` decimal(20,2) NOT NULL DEFAULT '0.00',
  `item_ship` decimal(20,2) NOT NULL DEFAULT '0.00',
  `item_int_ship` decimal(20,2) NOT NULL DEFAULT '0.00',
  `per_int_ship` decimal(20,2) NOT NULL DEFAULT '0.00',
  `hide` smallint(1) NOT NULL DEFAULT '0',
  `seo_meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` smallint(6) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_category`
--

LOCK TABLES `cubecart_CubeCart_category` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_category` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_category` VALUES (1,'Test Category','This is a test category setup during install. It can be edited or deleted from the store admin control panel.',0,'',0.00,0.00,0.00,0.00,0,'','','',1,1);
/*!40000 ALTER TABLE `cubecart_CubeCart_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_category_index`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_category_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_category_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `primary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_category_index`
--

LOCK TABLES `cubecart_CubeCart_category_index` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_category_index` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_category_index` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `cubecart_CubeCart_category_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_category_language`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_category_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_category_language` (
  `translation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_meta_title` text COLLATE utf8_unicode_ci,
  `seo_meta_description` text COLLATE utf8_unicode_ci,
  `seo_meta_keywords` text COLLATE utf8_unicode_ci,
  KEY `id` (`translation_id`),
  KEY `cat_master_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_category_language`
--

LOCK TABLES `cubecart_CubeCart_category_language` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_category_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_category_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_code_snippet`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_code_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_code_snippet` (
  `snippet_id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `unique_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hook_trigger` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `php_code` blob NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`snippet_id`),
  UNIQUE KEY `unique_id` (`unique_id`),
  KEY `hook_trigger` (`hook_trigger`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_code_snippet`
--

LOCK TABLES `cubecart_CubeCart_code_snippet` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_code_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_code_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_config`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_config` (
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `array` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_config`
--

LOCK TABLES `cubecart_CubeCart_config` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_config` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_config` VALUES ('Free_Shipping','a:2:{s:7:\"trigger\";s:0:\"\";s:9:\"countries\";s:0:\"\";}'),('Print_Order_Form','a:16:{s:6:\"status\";s:1:\"1\";s:7:\"default\";s:1:\"1\";s:13:\"multiCurrency\";s:1:\"1\";s:4:\"desc\";s:17:\"Postal Order Form\";s:6:\"cheque\";s:1:\"1\";s:9:\"payableTo\";s:16:\"Company Name Ltd\";s:4:\"card\";s:1:\"1\";s:5:\"cards\";s:35:\"Mastercard,Visa,Switch,Maestro,AMEX\";s:4:\"bank\";s:1:\"1\";s:8:\"bankName\";s:13:\"Your Bank Plc\";s:7:\"accName\";s:12:\"Company Name\";s:8:\"sortCode\";s:8:\"xx-xx-xx\";s:4:\"acNo\";s:8:\"xxxxxxxx\";s:9:\"swiftCode\";s:8:\"xxxxxxxx\";s:7:\"address\";s:70:\"Address Line 1\r\nAddress Line 2\r\nAddress Line 3\r\nAddress Line 4\r\nxxxxxx\";s:5:\"notes\";s:44:\"We can only accept payments in xxx currency.\";}'),('config','eyJhZG1pbl9ub3RpZnlfc3RhdHVzIjoiMiIsImFkbWluX3NraW4iOiJkZWZhdWx0IiwiYXV0b19zYXZlX2NhcnQiOiIxIiwiYmFza2V0X2FsbG93X25vbl9pbnZvaWNlX2FkZHJlc3MiOiIxIiwiYmFza2V0X2p1bXBfdG8iOiIiLCJiYXNrZXRfb3JkZXJfZXhwaXJlIjoiIiwiYmFza2V0X291dF9vZl9zdG9ja19wdXJjaGFzZSI6IiIsImJhc2tldF90YXhfYnlfZGVsaXZlcnkiOiIiLCJjYWNoZSI6IjEiLCJjYWNoZV9tZW1jYWNoZV9saXN0IjoiIiwiY2F0YWxvZ3VlX2V4cGFuZF90cmVlIjoiMSIsImNhdGFsb2d1ZV9oaWRlX3ByaWNlcyI6IiIsImNhdGFsb2d1ZV9sYXRlc3RfcHJvZHVjdHMiOiIxIiwiY2F0YWxvZ3VlX2xhdGVzdF9wcm9kdWN0c19jb3VudCI6IjgiLCJjYXRhbG9ndWVfbW9kZSI6IiIsImNhdGFsb2d1ZV9wb3B1bGFyX3Byb2R1Y3RzX2NvdW50IjoiMTAiLCJjYXRhbG9ndWVfcG9wdWxhcl9wcm9kdWN0c19zb3VyY2UiOiIxIiwiY2F0YWxvZ3VlX3Byb2R1Y3RzX3Blcl9wYWdlIjoiMTAiLCJjYXRhbG9ndWVfc2FsZV9pdGVtcyI6IjEwIiwiY2F0YWxvZ3VlX3NhbGVfbW9kZSI6IiIsImNhdGFsb2d1ZV9zYWxlX3BlcmNlbnRhZ2UiOiIiLCJjYXRhbG9ndWVfc2hvd19lbXB0eSI6IjEiLCJkZWJ1ZyI6IiIsImRlZmF1bHRfY3VycmVuY3kiOiJVU0QiLCJkZWZhdWx0X2RpcmVjdG9yeV9zeW1ib2wiOiJcLyIsImRlZmF1bHRfbGFuZ3VhZ2UiOiJlbi1VUyIsImRlZmF1bHRfcnNzX2ZlZWQiOiJodHRwOlwvXC9mb3J1bXMuY3ViZWNhcnQuY29tXC9yc3NcL2ZvcnVtc1wvMS1jdWJlY2FydC1uZXdzLWFubm91bmNlbWVudHNcLyIsImRvd25sb2FkX2NvdW50IjoiMTAiLCJkb3dubG9hZF9jdXN0b21fcGF0aCI6IiIsImRvd25sb2FkX2V4cGlyZSI6IjM2MDAwIiwiZW1haWxfYWRkcmVzcyI6ImFkbWluQHRlc3QuY29tIiwiZW1haWxfbWV0aG9kIjoibWFpbCIsImVtYWlsX25hbWUiOiJHcmFjZSBCcm90aGVycyIsImVtYWlsX3NtdHAiOiIiLCJlbWFpbF9zbXRwX2hvc3QiOiIiLCJlbWFpbF9zbXRwX3Bhc3N3b3JkIjoiIiwiZW1haWxfc210cF9wb3J0IjoiIiwiZW1haWxfc210cF91c2VyIjoiIiwiZW5hYmxlX3Jldmlld3MiOiIxIiwiZW5hYmxlX3NzbCI6IiIsImdvb2dsZV9hbmFseXRpY3MiOiIiLCJsaWNlbnNlX2tleSI6IiIsIm9mZmxpbmUiOiIiLCJvZmZsaW5lX2FsbG93X2FkbWluIjoiMSIsIm9mZmxpbmVfY29udGVudCI6IjxkaXYgc3R5bGU9XCJmb250LWZhbWlseTogZ2VvcmdpYSxzZXJpZjsgdGV4dC1hbGlnbjogY2VudGVyO1wiPjxwIHN0eWxlPVwiZm9udC1zaXplOiAxOHB4O1wiPlN0b3JlIGlzIGN1cnJlbnRseSBvZmZsaW5lLjxcL3A+PHAgc3R5bGU9XCJmb250LXNpemU6IDE0cHg7XCI+UGxlYXNlIHZpc2l0IGFnYWluIHNvb24uPFwvcD48XC9kaXY+IiwicHJvZHVjdF9wcmVjaXMiOiIxMjAiLCJwcm9kdWN0X3ByaWNlc19pbmNsdWRlX3RheCI6IiIsInByb2R1Y3Rfc29ydF9jb2x1bW4iOiJuYW1lIiwicHJvZHVjdF9zb3J0X2RpcmVjdGlvbiI6IkFTQyIsInByb2R1Y3Rfd2VpZ2h0X3VuaXQiOiJMYiIsInByb3h5IjoiIiwicHJveHlfaG9zdCI6IiIsInByb3h5X3BvcnQiOiIiLCJyZWNhcHRjaGEiOiIxIiwic2VvIjoiMCIsInNlb19tZXRhZGF0YSI6IiIsInNlb19tZXRob2QiOiIwIiwic2VvX3RyYWNrYmFja3MiOiIiLCJzaG93X2Jhc2tldF93ZWlnaHQiOiIxIiwic2tpbl9jaGFuZ2UiOiIiLCJza2luX2ZvbGRlciI6Imt1cm91dG8iLCJza2luX3N0eWxlIjoiYmx1ZSIsInNzbF9mb3JjZSI6IiIsInNzbF9wYXRoIjoiIiwic3RhbmRhcmRfdXJsIjoiIiwic3RvY2tfbGV2ZWwiOiIwIiwic3RvY2tfd2Fybl9sZXZlbCI6IjUiLCJzdG9yZV9hZGRyZXNzIjoiIiwic3RvcmVfY291bnRyeSI6IiIsInN0b3JlX21ldGFfZGVzY3JpcHRpb24iOiIiLCJzdG9yZV9tZXRhX2tleXdvcmRzIjoiIiwic3RvcmVfbmFtZSI6IkdyYWNlIEJyb3RoZXJzIiwic3RvcmVfcG9zdGNvZGUiOiIiLCJzdG9yZV90aXRsZSI6IkdyYWNlIEJyb3RoZXJzIiwic3RvcmVfem9uZSI6IiIsInRpbWVfZm9ybWF0IjoiJWQgJWIgJVksICVIOiVNIiwidGltZV9vZmZzZXQiOiIwIiwidGltZV96b25lIjoiVVRDIiwidmVyaWZ5X3NldHRpbmdzIjoiMSJ9'),('logos','eyJjcm9zc2hhdGNoIjoic2tpbnNcL2Nyb3NzaGF0Y2hcL2ltYWdlc1wvbG9nb1wvZGVmYXVsdC5wbmciLCJrdXJvdXRvYmx1ZSI6InNraW5zXC9rdXJvdXRvXC9pbWFnZXNcL2JsdWVcL2xvZ29cL2RlZmF1bHQucG5nIiwia3Vyb3V0b2dyZWVuIjoic2tpbnNcL2t1cm91dG9cL2ltYWdlc1wvZ3JlZW5cL2xvZ29cL2RlZmF1bHQucG5nIiwia3Vyb3V0b2dyZXkiOiJza2luc1wva3Vyb3V0b1wvaW1hZ2VzXC9ncmV5XC9sb2dvXC9kZWZhdWx0LnBuZyIsImt1cm91dG9vcmFuZ2UiOiJza2luc1wva3Vyb3V0b1wvaW1hZ2VzXC9vcmFuZ2VcL2xvZ29cL2RlZmF1bHQucG5nIiwia3Vyb3V0b3B1cnBsZSI6InNraW5zXC9rdXJvdXRvXC9pbWFnZXNcL3B1cnBsZVwvbG9nb1wvZGVmYXVsdC5wbmciLCJrdXJvdXRvcmVkIjoic2tpbnNcL2t1cm91dG9cL2ltYWdlc1wvcmVkXC9sb2dvXC9kZWZhdWx0LnBuZyIsIm1hdXJpcyI6InNraW5zXC9tYXVyaXNcL2ltYWdlc1wvbG9nb1wvZGVmYXVsdC5wbmciLCJtaWNhbmJsdWUiOiJza2luc1wvbWljYW5cL2ltYWdlc1wvYmx1ZVwvbG9nb1wvZGVmYXVsdC5wbmciLCJtaWNhbnBpbmsiOiJza2luc1wvbWljYW5cL2ltYWdlc1wvcGlua1wvbG9nb1wvZGVmYXVsdC5wbmciLCJtaWNhbmJsYWNrIjoic2tpbnNcL21pY2FuXC9pbWFnZXNcL2JsYWNrXC9sb2dvXC9kZWZhdWx0LnBuZyIsIm1vYmlsZWJsdWUiOiJza2luc1wvbW9iaWxlXC9pbWFnZXNcL2JsdWVcL2xvZ29cL2RlZmF1bHQucG5nIiwibW9iaWxlZ3JlZW4iOiJza2luc1wvbW9iaWxlXC9pbWFnZXNcL2dyZWVuXC9sb2dvXC9kZWZhdWx0LnBuZyIsIm1vYmlsZXJlZCI6InNraW5zXC9tb2JpbGVcL2ltYWdlc1wvcmVkXC9sb2dvXC9kZWZhdWx0LnBuZyIsIm5vdGFibHVlIjoic2tpbnNcL25vdGFcL2ltYWdlc1wvYmx1ZVwvbG9nb1wvZGVmYXVsdC5wbmciLCJub3RhYnJvd24iOiJza2luc1wvbm90YVwvaW1hZ2VzXC9icm93blwvbG9nb1wvZGVmYXVsdC5wbmciLCJub3RhZ3JlZW4iOiJza2luc1wvbm90YVwvaW1hZ2VzXC9ncmVlblwvbG9nb1wvZGVmYXVsdC5wbmciLCJub3RhcHVycGxlIjoic2tpbnNcL25vdGFcL2ltYWdlc1wvcHVycGxlXC9sb2dvXC9kZWZhdWx0LnBuZyIsIm5vdGFyZWQiOiJza2luc1wvbm90YVwvaW1hZ2VzXC9yZWRcL2xvZ29cL2RlZmF1bHQucG5nIiwidmFuaWxsYSI6InNraW5zXC92YW5pbGxhXC9pbWFnZXNcL2xvZ29cL2RlZmF1bHQucG5nIiwiZW1haWxzIjoic2tpbnNcL2t1cm91dG9cL2ltYWdlc1wvYmx1ZVwvbG9nb1wvZGVmYXVsdC5wbmciLCJpbnZvaWNlcyI6InNraW5zXC9rdXJvdXRvXC9pbWFnZXNcL2JsdWVcL2xvZ29cL2RlZmF1bHQucG5nIn0=');
/*!40000 ALTER TABLE `cubecart_CubeCart_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_coupons`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_coupons` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` text COLLATE utf8_unicode_ci NOT NULL,
  `discount_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `discount_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `expires` date NOT NULL,
  `allowed_uses` int(10) unsigned NOT NULL DEFAULT '0',
  `min_subtotal` decimal(16,2) unsigned NOT NULL DEFAULT '0.00',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `cart_order_id` varchar(18) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_coupons`
--

LOCK TABLES `cubecart_CubeCart_coupons` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_currency`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_currency` (
  `currency_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varbinary(255) NOT NULL DEFAULT '',
  `code` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `iso` int(3) unsigned zerofill DEFAULT NULL,
  `symbol_left` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `decimal_places` tinyint(2) unsigned DEFAULT '2',
  `updated` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `symbol_decimal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`currency_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_currency`
--

LOCK TABLES `cubecart_CubeCart_currency` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_currency` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_currency` VALUES (1,_binary 'United States dollar','USD',840,'$','',0.00000,2,0,1,0),(2,_binary 'Japanese yen','JPY',392,'&yen;','',0.00000,0,0,1,0),(3,_binary 'Bulgarian lev','BGN',100,'','BGN',0.00000,2,0,0,0),(4,_binary 'Czech koruna','CZK',203,'','CZK',0.00000,2,0,0,0),(5,_binary 'Danish krone','DKK',208,'kr','',0.00000,2,0,0,0),(6,_binary 'Estonian kroon','EEK',233,'kr','',0.00000,2,0,0,0),(7,_binary 'Pound Sterling','GBP',826,'&pound;','',0.00000,2,0,1,0),(8,_binary 'Hungarian forint','HUF',348,'Ft','',0.00000,2,0,0,0),(9,_binary 'Lithuanian litas','LTL',440,'Lt','',0.00000,2,0,0,0),(10,_binary 'Latvian lat','LVL',428,'Ls','',0.00000,2,0,0,0),(11,_binary 'Polish zloty','PLN',985,'zl','',0.00000,2,0,0,0),(12,_binary 'Romanian leu','RON',642,'lei','',0.00000,2,0,0,0),(13,_binary 'Swedish krona','SEK',752,'kr','',0.00000,2,0,0,0),(14,_binary 'Swiss franc','CHF',756,'CHF','',0.00000,2,0,0,0),(15,_binary 'Norwegian krone','NOK',578,'kr','',0.00000,2,0,0,0),(16,_binary 'Croatian kuna','HRK',191,'kn','',0.00000,2,0,0,0),(17,_binary 'Russian ruble','RUB',643,'','RUB',0.00000,2,0,0,0),(18,_binary 'Turkish lira','TRY',792,'YTL','',0.00000,2,0,0,0),(19,_binary 'Brazilian real','BRL',986,'R$','',0.00000,2,0,0,0),(20,_binary 'Canadian Dollar','CAD',124,'$','',0.00000,2,0,1,0),(21,_binary 'Chinese yuan','CNY',156,'å…ƒ','',0.00000,2,0,0,0),(22,_binary 'Hong Kong dollar','HKD',344,'åœ“','',0.00000,2,0,0,0),(23,_binary 'Mexican peso','MXN',484,'$','',0.00000,2,0,0,0),(24,_binary 'Malaysian ringgit','MYR',458,'RM','',0.00000,2,0,0,0),(25,_binary 'New Zealand dollar','NZD',554,'$','',0.00000,2,0,0,0),(26,_binary 'Philippine peso','PHP',608,'Php','',0.00000,2,0,0,0),(27,_binary 'Singapore dollar','SGD',702,'$','',0.00000,2,0,0,0),(28,_binary 'Thai baht','THB',764,'à¸¿','',0.00000,2,0,0,0),(29,_binary 'South African rand','ZAR',710,'R','',0.00000,2,0,0,0),(30,_binary 'Euro','EUR',978,'&euro;','',0.00000,2,0,1,0),(31,_binary 'Australian Dollar','AUD',036,'$','',0.00000,2,0,1,0);
/*!40000 ALTER TABLE `cubecart_CubeCart_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_customer`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_customer` (
  `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password` tinyint(1) NOT NULL DEFAULT '1',
  `verify` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `country` smallint(3) unsigned NOT NULL DEFAULT '0',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `registered` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Supports IPv6 addresses',
  `order_count` int(10) unsigned DEFAULT '0',
  `type` tinyint(1) unsigned DEFAULT '1',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en-US',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`),
  FULLTEXT KEY `fulltext` (`first_name`,`last_name`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_customer`
--

LOCK TABLES `cubecart_CubeCart_customer` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_customer_group`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_customer_group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `group_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_customer_group`
--

LOCK TABLES `cubecart_CubeCart_customer_group` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_customer_membership`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_customer_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_customer_membership` (
  `membership_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`membership_id`),
  KEY `group_id` (`group_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_customer_membership`
--

LOCK TABLES `cubecart_CubeCart_customer_membership` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_customer_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_customer_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_documents`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_documents` (
  `doc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doc_parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `doc_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `doc_order` int(10) unsigned NOT NULL DEFAULT '0',
  `doc_terms` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doc_home` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doc_lang` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `doc_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `doc_content` text COLLATE utf8_unicode_ci NOT NULL,
  `doc_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_url_openin` tinyint(1) unsigned DEFAULT NULL,
  `seo_meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `navigation_link` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`doc_id`),
  KEY `doc_parent_id` (`doc_parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_documents`
--

LOCK TABLES `cubecart_CubeCart_documents` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_documents` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_documents` VALUES (1,0,1,1,0,1,'en-GB','Welcome to CubeCart 5','This message can be edited with the <strong><span style=\"color: red;\">Rich</span> <span style=\"color: blue;\">Text</span> <span style=\"color: green;\">Editor</span></strong> which can be used to add vibrant content to help sell your products. This can be found on the admin side of your store under <i>Documents</i>.',NULL,NULL,'','','',1),(2,0,1,2,0,0,'en-GB','About Us','This can be managed under <span class=\"navTitle\">Documents in the admin control panel.</span>',NULL,NULL,'','','',1),(3,0,1,3,1,0,'en-GB','Terms and Conditions','This can be managed under <span class=\"navTitle\">Documents in the admin control panel.</span>',NULL,NULL,'','','',1),(4,0,1,4,0,0,'en-GB','Privacy Policy','This can be managed under <span class=\"navTitle\">Documents in the admin control panel.</span>',NULL,NULL,'','','',1);
/*!40000 ALTER TABLE `cubecart_CubeCart_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_downloads`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_downloads` (
  `digital_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_inv_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cart_order_id` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `accesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  KEY `id` (`digital_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_downloads`
--

LOCK TABLES `cubecart_CubeCart_downloads` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_email_content`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_email_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_email_content` (
  `content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_type` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`content_id`),
  KEY `content_type` (`content_type`),
  KEY `language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_email_content`
--

LOCK TABLES `cubecart_CubeCart_email_content` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_email_content` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_email_content` VALUES (1,'admin.password_recovery','de-DE','\n      Admin-Passwortwiederherstellung\n    ','<p>Sehr geehrte/r {$DATA.name},</p> \n        <p>um wieder Zugriff auf die Administrationsbedienkonsole des Shops zu bekommen, folgen Sie bitte dem nachfolgenden Link:</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p> \n        <p>Wenn der obige Link nicht funktioniert, kopieren Sie Ihn bitte in die Adressleiste Ihres Browsers.</p>','Sehr geehrte/r {$DATA.name},\n        \n        um wieder Zugriff auf die Administrationsbedienkonsole des Shops zu bekommen, folgen Sie bitte dem nachfolgenden Link:\n        \n        {$DATA.link}\n        \n        Wenn der obige Link nicht funktioniert, kopieren Sie ihn bitte in die Adressleiste Ihres Browsers.'),(2,'cart.order_complete','de-DE','\n      Bestellung fertiggestellt\n    ','<p>Hallo {$DATA.first_name},</p> \n        <p>wir freuen uns, Ihnen mitteilen zu kÃ¶nnen, dass Bestellung Nummer {$DATA.cart_order_id} fertiggestellt wurde. Wenn Sie materielle Waren bestellt haben, sollten sie in KÃ¼rze ankommen.</p>','Hallo {$DATA.first_name},\n        \n        wir freuen uns, Ihnen mitteilen zu kÃ¶nnen, dass Bestellung Nummer {$DATA.cart_order_id} fertiggestellt wurde. Wenn Sie materielle Waren bestellt haben, sollten sie in KÃ¼rze ankommen.'),(3,'cart.order_cancelled','de-DE','\n      Bestellung storniert\n    ','<p>Hallo {$DATA.first_name},</p> \n        <p>Bestellung Nummer {$DATA.cart_order_id} wurde storniert.</p>','Hallo {$DATA.first_name},\n        \n        Bestellung Nummer {$DATA.cart_order_id} wurde storniert.'),(4,'cart.order_confirmation','de-DE','\n      BestÃ¤tigung der Bestellung #{$DATA.cart_order_id}\n    ','<p>Danke, {$DATA.first_name}!</p>\n        <p>Ihre Bestellung {$DATA.cart_order_id}, die am {$DATA.order_date} aufgegeben wurde, ist bei uns eingegangen. Bitte bewahren Sie diese E-Mail fÃ¼r Ihre Unterlagen auf. Es ist mÃ¶glich, den Status Ihrer Bestellung online einzusehen.</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n        <table width=\"100%\">\n        <tr>\n        <td valign=\"top\" width=\"50%\"><strong>Rechnungsadresse:</strong><br />\n        {$BILLING.first_name} {$BILLING.last_name}<br />\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n        {/if}\n        {$BILLING.line1}<br />\n        {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n        {/if}\n        {$BILLING.town}<br />\n        {$BILLING.state}<br />\n        {$BILLING.postcode}<br />\n        {$BILLING.country}<br />\n        {$BILLING.phone}<br />\n        <br />\n        <strong>E-Mail-Adresse:</strong><br />\n        {$BILLING.email}</td>\n        <td valign=\"top\" width=\"50%\"><strong>Lieferadresse:</strong><br />\n        {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n        {/if}{$SHIPPING.line1}<br />\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n        {/if}{$SHIPPING.town}<br />\n        {$SHIPPING.state}<br />\n        {$SHIPPING.postcode}<br />\n        {$SHIPPING.country}</td>\n        </tr>\n        </table>\n        <table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n        <tbody>\n        <tr>\n        <td><strong>Artikel</strong></td>\n        <td><strong>Menge</strong></td>\n        <td><strong>Preis</strong></td>\n        </tr>\n        <!--{foreach from=$PRODUCTS item=product}-->\n        <tr>\n        <td>{$product.name} <br />{$product.product_options}</td>\n        <td>{$product.quantity}</td>\n        <td>{$product.price}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> Versand: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n        <td> {$DATA.shipping}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Rabatt:</td>\n        <td> {$DATA.discount}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Zwischensumme:</td>\n        <td> {$DATA.subtotal}</td>\n        </tr>\n        <!--{foreach from=$TAXES item=tax}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n        <td> {$tax.tax_amount}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td><strong>Bestellsumme: </strong></td>\n        <td><strong>{$DATA.total}</strong></td>\n        </tr>\n        </tbody>\n        \n        </table>','Danke, {$DATA.first_name}!\n        \n        Ihre Bestellung {$DATA.cart_order_id}, die am {$DATA.order_date} aufgegeben wurde, ist bei uns eingegangen. Bitte bewahren Sie diese E-Mail fÃ¼r Ihre Unterlagen auf. Es ist mÃ¶glich, den Status Ihrer Bestellung online einzusehen. \n        \n        {$DATA.link}\n        \n        ----------------------------------------------------------------------\n        Rechnungsadresse:\n        {$BILLING.first_name} {$BILLING.last_name}\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n        {/if}{$BILLING.line1}\n        {if !empty({$BILLING.line2})}{$BILLING.line2}\n        {/if}{$BILLING.town}\n        {$BILLING.state}\n        {$BILLING.postcode}\n        {$BILLING.country}\n        {$BILLING.phone}\n        \n        E-Mail-Adresse:\n        {$BILLING.email}\n        \n        Lieferadresse:\n        {$SHIPPING.first_name} {$SHIPPING.last_name}\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n        {/if}{$SHIPPING.line1}\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n        {/if}{$SHIPPING.town}\n        {$SHIPPING.state}\n        {$SHIPPING.postcode}\n        {$SHIPPING.country}\n        \n        ----------------------------------------------------------------------\n        Artikel in Ihrer Bestellung\n        \n        {foreach from=$PRODUCTS item=product}\n        -----------------------------------\n        {$product.name}\n        {$product.product_options}\n        \n        Artikelnummer: {$product.product_code}\n        StÃ¼ckpreis: {$product.price}\n        Menge: {$product.quantity}\n        \n        {/foreach}\n        -----------------------------------\n        Zwischensumme: {$DATA.subtotal}\n        Rabatt: {$DATA.discount}\n        Versand: {$DATA.shipping} {if $DATA.ship_method}{if $DATA.ship_method}({$DATA.ship_method}){/if}{/if}\n        {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n        {/foreach}\n        --------------------------\n        Bestellsumme: {$DATA.total}\n        =========================='),(5,'cart.payment_fraud','de-DE','\n      Problem mit Ihrer Bestellung\n    ','<p>Hallo {$DATA.first_name},</p> \n        <p>es tut uns sehr leid, aber wir waren nicht in der Lage, die Bezahlung fÃ¼r Bestellung {$DATA.cart_order_id} anzunehmen. Bitte wenden Sie sich jederzeit an einen unserer Mitarbeiter, wenn Sie Fragen haben.</p>','Hallo {$DATA.first_name},\n        \n        es tut uns sehr leid, aber wir waren nicht in der Lage, die Bezahlung fÃ¼r Bestellung {$DATA.cart_order_id} anzunehmen. Bitte wenden Sie sich jederzeit an einen unserer Mitarbeiter, wenn Sie Fragen haben.</p>'),(6,'account.password_recovery','de-DE','\n      Passwortwiederherstellung\n    ','<p>Sehr geehrte/r {$DATA.first_name} {$DATA.last_name},<br /> \n        <br /> \n        klicken Sie bitte auf den nachfolgenden Link oder kopieren Sie die Adresse in die Adresszeile Ihres Browsers, um Ihr Passwort zurÃ¼ckzusetzen. Sobald Sie auf der Webseite sind, erhalten Sie die Anweisung, Ihr neues Passwort einzugeben und zu bestÃ¤tigen.<br /> \n        <br /> \n        {$DATA.reset_link}<br /> \n        <br /> \n        Wenn Sie weitere UnterstÃ¼tzung bei der RÃ¼cksetzung Ihres Passworts brauchen, wenden Sie sich bitte an uns.</p>','Hallo {$DATA.first_name},\n        \n        klicken Sie bitte auf den nachfolgenden Link oder kopieren Sie die Adresse in die Adresszeile Ihres Browsers, um Ihr Passwort zurÃ¼ckzusetzen. Sobald Sie auf der Webseite sind, erhalten Sie die Anweisung, Ihr neues Passwort einzugeben und zu bestÃ¤tigen.\n        \n        {$DATA.reset_link}\n        \n        Wenn Sie weitere UnterstÃ¼tzung bei der RÃ¼cksetzung Ihres Passworts brauchen, wenden Sie sich bitte an uns.'),(7,'admin.order_received','de-DE','\n      Neue Bestellung #{$DATA.cart_order_id}\n    ','<p>{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} hat soeben Bestellung Nummer {$DATA.cart_order_id} am {$DATA.order_date} aufgegeben.</p>\n        <p>Diese Bestellung kann online unter dem nachfolgenden Link verwaltet werden.</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n        <table width=\"100%\">\n        <tr>\n        <td valign=\"top\" width=\"50%\"><strong>Rechnungsadresse:</strong><br />\n        {$BILLING.first_name} {$BILLING.last_name}<br />\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n        {/if}\n        {$BILLING.line1}<br />\n        {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n        {/if}\n        {$BILLING.town}<br />\n        {$BILLING.state}<br />\n        {$BILLING.postcode}<br />\n        {$BILLING.country}<br />\n        {$BILLING.phone}<br />\n        <br />\n        <strong>E-Mail-Adresse:</strong><br />\n        {$BILLING.email}</td>\n        <td valign=\"top\" width=\"50%\"><strong>Lieferadresse:</strong><br />\n        {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n        {/if}{$SHIPPING.line1}<br />\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n        {/if}{$SHIPPING.town}<br />\n        {$SHIPPING.state}<br />\n        {$SHIPPING.postcode}<br />\n        {$SHIPPING.country}</td>\n        </tr>\n        </table>\n        <table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n        <tbody>\n        <tr>\n        <td><strong>Artikel</strong></td>\n        <td><strong>Menge</strong></td>\n        <td><strong>Preis</strong></td>\n        </tr>\n        <!--{foreach from=$PRODUCTS item=product}-->\n        <tr>\n        <td>{$product.name} <br />{$product.product_options}</td>\n        <td>{$product.quantity}</td>\n        <td>{$product.price}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> Versand: {if $DATA.ship_method}{if $DATA.ship_method}({$DATA.ship_method}){/if}{/if}</td>\n        <td> {$DATA.shipping}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Rabatt:</td>\n        <td> {$DATA.discount}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Zwischensumme:</td>\n        <td> {$DATA.subtotal}</td>\n        </tr>\n        <!--{foreach from=$TAXES item=tax}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n        <td> {$tax.tax_amount}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td><strong>Bestellsumme: </strong></td>\n        <td><strong>{$DATA.total}</strong></td>\n        </tr>\n        </tbody>\n        \n        </table>','{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} hat soeben Bestellung Nummer {$DATA.cart_order_id} am {$DATA.order_date} aufgegeben.\n        \n        Diese Bestellung kann online unter dem nachfolgenden Link verwaltet werden.\n        \n        {$DATA.link}\n        \n        ----------------------------------------------------------------------\n        Rechnungsadresse:\n        {$BILLING.first_name} {$BILLING.last_name}\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n        {/if}{$BILLING.line1}\n        {if !empty({$BILLING.line2})}{$BILLING.line2}\n        {/if}{$BILLING.town}\n        {$BILLING.state}\n        {$BILLING.postcode}\n        {$BILLING.country}\n        {$BILLING.phone}\n        \n        E-Mail-Adresse:\n        {$BILLING.email}\n        \n        Lieferadresse:\n        {$SHIPPING.first_name} {$SHIPPING.last_name}\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n        {/if}{$SHIPPING.line1}\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n        {/if}{$SHIPPING.town}\n        {$SHIPPING.state}\n        {$SHIPPING.postcode}\n        {$SHIPPING.country}\n        \n        ----------------------------------------------------------------------\n        Artikel in Ihrer Bestellung\n        \n        {foreach from=$PRODUCTS item=product}\n        -----------------------------------\n        {$product.name}\n        {$product.product_options}\n        \n        Artikelnummer: {$product.product_code}\n        StÃ¼ckpreis: {$product.price}\n        Menge: {$product.quantity}\n        \n        {/foreach}\n        -----------------------------------\n        Zwischensumme: {$DATA.subtotal}\n        Rabatt: {$DATA.discount}\n        Versand: {$DATA.shipping} {if $DATA.ship_method}{if $DATA.ship_method}({$DATA.ship_method}){/if}{/if}\n        {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n        {/foreach}\n        --------------------------\n        Bestellsumme: {$DATA.total}\n        =========================='),(8,'admin.review_added','de-DE','\n      Neue Produktrezension\n    ','{$DATA.name} hat eine neue Rezension/einen neuen Kommentar Ã¼ber \'{$DATA.product_name}\' eingeschickt. Sie/er kann unter dem nachfolgenden Link moderiert werden.\n        <p><strong>Moderationslink:</strong><br /><a href=\'{$DATA.link}\'>{$DATA.link}</a></p> \n        <p><strong>Rezensionstext:</strong><br />{$DATA.review}</p>','{$DATA.name} hat eine neue Rezension/einen neuen Kommentar Ã¼ber \'{$DATA.product_name}\' eingeschickt. Sie/er kann unter dem nachfolgenden Link moderiert werden.\n        \n        Moderationslink: \n        {$DATA.link}\n        Rezensionstext:\n        {$DATA.review}'),(9,'cart.digital_download','de-DE','\n      Ihre gekauften Downloads\n    ','<p>Hallo {$DATA.first_name},</p> \n        <p>Ihre digitalen Dateien stehen jetzt zum Download bereit. Bitte benutzen Sie die nachfolgenden Links, um darauf zuzugreifen:</p> \n        {foreach from=$DOWNLOADS item=download} \n        <p><strong>{$download.name}:</strong> (Link verfÃ¤llt am {$download.expire}<strong>)</strong><br /> \n        {$download.url}</p> \n        {/foreach}\n        <p>Wenn die obigen Links nicht funktionieren, versuchen Sie bitte, sie in die Adressleiste Ihres Browsers zu kopieren. Sie kÃ¶nnen auf diese Dateien auch von Ihrem Kundenbereich unserer Webseite aus zugreifen.</p> \n        <p>&nbsp;</p>','Hallo {$DATA.first_name},\n        \n        Ihre digitalen Dateien stehen jetzt zum Download bereit. Bitte benutzen Sie die nachfolgenden Links, um darauf zuzugreifen:\n        \n        {foreach from=$DOWNLOADS item=download} \n        {$download.name}: (Link verfÃ¤llt am {$download.expire})\n        {$download.url}\n        {/foreach}\n        \n        Wenn die obigen Links nicht funktionieren, versuchen Sie bitte, sie in die Adressleiste Ihres Browsers zu kopieren. Sie kÃ¶nnen auf diese Dateien auch von Ihrem Kundenbereich unserer Webseite aus zugreifen.'),(10,'cart.gift_certificate','de-DE','\n      Ihr Geschenkgutschein\n    ','<p>Sehr geehrte/r {$DATA.name},</p> \n        <p>wir freuen uns, Ihnen diesen Gutschein zuschicken zu dÃ¼rfen, mit dem Sie beliebige Artikel auf unserer Webseite kaufen kÃ¶nnen.</p> \n        <p>Viel SpaÃŸ beim Einkaufen!</p> \n        <p><strong>Von: </strong>{$DATA.first_name} {$DATA.last_name}<br /> \n        <strong>Betrag: </strong>{$DATA.value}<br /> \n        <strong>Gutscheincode:</strong> {$DATA.code}<br /> \n        <strong>Nachricht des Schenkenden:</strong> {$DATA.message}</p> \n        <p>-------------------</p> \n        <p>Um diesen Geschenkgutschein einzulÃ¶sen, geben Sie bitte an der Kasse den obigen &quot;Gutscheincode&quot; in das Textfeld mit der Aufschrift &quot;Geschenkgutschein oder Gutschein hinzufÃ¼gen&quot; ein.</p> \n        <p>LÃ¶sen Sie ihn doch gleich ein!</p>','Sehr geehrte/r {$DATA.name},\n        \n        wir freuen uns, Ihnen diesen Gutschein zuschicken zu dÃ¼rfen, mit dem Sie beliebige Artikel auf unserer Webseite kaufen kÃ¶nnen.\n        \n        Viel SpaÃŸ beim Einkaufen!\n        \n        Von: {$DATA.first_name} {$DATA.last_name}\n        Betrag: {$DATA.value}\n        Gutscheincode: {$DATA.code}\n        Nachricht des Schenkenden: {$DATA.message}\n        \n        -------------------\n        \n        Um diesen Geschenkgutschein einzulÃ¶sen, geben Sie bitte an der Kasse den obigen \"Gutscheincode\" in das Textfeld mit der Aufschrift \"Geschenkgutschein oder Gutschein hinzufÃ¼gen\" ein.\n        \n        LÃ¶sen Sie ihn doch gleich ein!'),(11,'catalogue.tell_friend','de-DE','\n      {$DATA.from} hat etwas fÃ¼r Sie empfohlen\n    ','Sehr geehrte/r{$DATA.to},\n        <p>Ihr Freund <strong>{$DATA.from}</strong> dachte, dass <strong>{$DATA.name}</strong> Sie vielleicht interessieren kÃ¶nnte.</p> \n        <p><strong>Link zum Produkt:</strong> <a href=\"{$DATA.link}\">{$DATA.name}</a></p> \n        <p>{$DATA.message}</p>','Sehr geehrte/r {$DATA.to},\n        \n        Ihr Freund {$DATA.from} dachte, dass \'{$DATA.name}\' Sie vielleicht interessieren kÃ¶nnte.\n        \n        {$DATA.name}\n        Link zum Produkt: {$DATA.link}\n        \n        {$DATA.message}'),(12,'cart.payment_received','de-DE','\n      Danke fÃ¼r Ihre Zahlung!\n    ','<p>Hallo {$DATA.first_name},</p> \n        <p>vielen Dank. Wir haben eine Zahlung von {$DATA.total} fÃ¼r Bestellung Nummer {$DATA.cart_order_id} erhalten.</p>','Hallo {$DATA.first_name},\n        \n        vielen Dank. Wir haben eine Zahlung von {$DATA.total} fÃ¼r Bestellung Nummer {$DATA.cart_order_id} erhalten.'),(13,'admin.password_recovery','en-GB','\n      Admin Password Recovery\n    ','<p>Dear {$DATA.name},</p> \n        <p>To regain access to the stores administration control panel. Please follow the link below:</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p> \n        <p>If the link above doesn\'t work, please copy and paste it into your browser address bar.</p>','Dear {$DATA.name},\n        \n        To regain access to the stores administration control panel. Please follow the link below:\n        \n        {$DATA.link}\n        \n        If the link above doesn\'t work, please copy and paste it into your browser address bar.'),(14,'cart.order_complete','en-GB','\n      Order Complete\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>We are pleased to say that order number {$DATA.cart_order_id} is complete. If you have ordered physical goods they should arrive shortly.</p>','Hi {$DATA.first_name},\n        \n        We are pleased to say that order number {$DATA.cart_order_id} is complete. If you have ordered physical goods they should arrive shortly.'),(15,'cart.order_cancelled','en-GB','\n      Order Cancelled\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>Order number {$DATA.cart_order_id} has been cancelled.</p>','Hi {$DATA.first_name},\n        \n        Order number {$DATA.cart_order_id} has been cancelled.'),(16,'cart.order_confirmation','en-GB','\n      Order Confirmation #{$DATA.cart_order_id}\n    ','<p>Thank You {$DATA.first_name}!</p>\n        <p>Your order {$DATA.cart_order_id} has been received which was placed on {$DATA.order_date}. Please keep this email for your records. It is possible to view the status of your order online.</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n        <table width=\"100%\">\n        <tr>\n        <td valign=\"top\" width=\"50%\"><strong>Billing address:</strong><br />\n        {$BILLING.first_name} {$BILLING.last_name}<br />\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n        {/if}\n        {$BILLING.line1}<br />\n        {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n        {/if}\n        {$BILLING.town}<br />\n        {$BILLING.state}<br />\n        {$BILLING.postcode}<br />\n        {$BILLING.country}<br />\n        {$BILLING.phone}<br />\n        <br />\n        <strong>Email:</strong><br />\n        {$BILLING.email}</td>\n        <td valign=\"top\" width=\"50%\"><strong>Shipping address:</strong><br />\n        {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n        {/if}{$SHIPPING.line1}<br />\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n        {/if}{$SHIPPING.town}<br />\n        {$SHIPPING.state}<br />\n        {$SHIPPING.postcode}<br />\n        {$SHIPPING.country}</td>\n        </tr>\n        </table>\n        <table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n        <tbody>\n        <tr>\n        <td><strong>Item</strong></td>\n        <td><strong>Quantity</strong></td>\n        <td><strong>Cost</strong></td>\n        </tr>\n        <!--{foreach from=$PRODUCTS item=product}-->\n        <tr>\n        <td>{$product.name} <br />{$product.product_options}</td>\n        <td>{$product.quantity}</td>\n        <td>{$product.price}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> Shipping: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n        <td> {$DATA.shipping}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Discount:</td>\n        <td> {$DATA.discount}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Subtotal:</td>\n        <td> {$DATA.subtotal}</td>\n        </tr>\n        <!--{foreach from=$TAXES item=tax}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n        <td> {$tax.tax_amount}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td><strong>Order Total: </strong></td>\n        <td><strong>{$DATA.total}</strong></td>\n        </tr>\n        </tbody>\n        \n        </table>','Thank You {$DATA.first_name}!\n        \n        Your order {$DATA.cart_order_id} has been received which was placed on {$DATA.order_date}. Please keep this email for your records. It is possible to view the status of your order online. \n        \n        {$DATA.link}\n        \n        ----------------------------------------------------------------------\n        Billing address:\n        {$BILLING.first_name} {$BILLING.last_name}\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n        {/if}{$BILLING.line1}\n        {if !empty({$BILLING.line2})}{$BILLING.line2}\n        {/if}{$BILLING.town}\n        {$BILLING.state}\n        {$BILLING.postcode}\n        {$BILLING.country}\n        {$BILLING.phone}\n        \n        Email:\n        {$BILLING.email}\n        \n        Shipping address:\n        {$SHIPPING.first_name} {$SHIPPING.last_name}\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n        {/if}{$SHIPPING.line1}\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n        {/if}{$SHIPPING.town}\n        {$SHIPPING.state}\n        {$SHIPPING.postcode}\n        {$SHIPPING.country}\n        \n        ----------------------------------------------------------------------\n        Items in Your Order\n        \n        {foreach from=$PRODUCTS item=product}\n        -----------------------------------\n        {$product.name}\n        {$product.product_options}\n        \n        Part Number: {$product.product_code}\n        Unit Price: {$product.price}\n        Qty: {$product.quantity}\n        \n        {/foreach}\n        -----------------------------------\n        Subtotal: {$DATA.subtotal}\n        Discount: {$DATA.discount}\n        Shipping: {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n        {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n        {/foreach}\n        --------------------------\n        Order Total: {$DATA.total}\n        =========================='),(17,'cart.payment_fraud','en-GB','\n      Order Problem\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>We are very sorry but we have not been able to accept the payment for order {$DATA.cart_order_id}. Please feel free to contact a member of staff if you have any questions.</p>','Hi {$DATA.first_name},\n        \n        We are very sorry but we have not been able to accept the payment for order {$DATA.cart_order_id}. Please feel free to contact a member of staff if you have any questions.'),(18,'account.password_recovery','en-GB','\n      Password Recovery\n    ','<p>Dear {$DATA.first_name} {$DATA.last_name},<br /> \n        <br /> \n        To reset your password, please click on the link below or copy and paste the address onto your web browser\'s address window. Once you\'re on the web page, you will be instructed to enter and confirm your new password.<br /> \n        <br /> \n        {$DATA.reset_link}<br /> \n        <br /> \n        If you require further assistance in resetting your password, please contact us.</p>','Hi {$DATA.first_name},\n        \n        To reset your password, please click on the link below or copy and paste the address onto your web browser\'s address window. Once you\'re on the web page, you will be instructed to enter and confirm your new password.\n        \n        {$DATA.reset_link}\n        \n        If you require further assistance in resetting your password, please contact us.'),(19,'admin.order_received','en-GB','\n      New Order #{$DATA.cart_order_id}\n    ','<p>{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} just placed order number {$DATA.cart_order_id} on {$DATA.order_date}.</p>\n        <p>This order can be managed online by following the link below.</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n        <table width=\"100%\">\n        <tr>\n        <td valign=\"top\" width=\"50%\"><strong>Billing address:</strong><br />\n        {$BILLING.first_name} {$BILLING.last_name}<br />\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n        {/if}\n        {$BILLING.line1}<br />\n        {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n        {/if}\n        {$BILLING.town}<br />\n        {$BILLING.state}<br />\n        {$BILLING.postcode}<br />\n        {$BILLING.country}<br />\n        {$BILLING.phone}<br />\n        <br />\n        <strong>Email:</strong><br />\n        {$BILLING.email}</td>\n        <td valign=\"top\" width=\"50%\"><strong>Shipping address:</strong><br />\n        {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n        {/if}{$SHIPPING.line1}<br />\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n        {/if}{$SHIPPING.town}<br />\n        {$SHIPPING.state}<br />\n        {$SHIPPING.postcode}<br />\n        {$SHIPPING.country}</td>\n        </tr>\n        </table>\n        <table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n        <tbody>\n        <tr>\n        <td><strong>Item</strong></td>\n        <td><strong>Quantity</strong></td>\n        <td><strong>Cost</strong></td>\n        </tr>\n        <!--{foreach from=$PRODUCTS item=product}-->\n        <tr>\n        <td>{$product.name} <br />{$product.product_options}</td>\n        <td>{$product.quantity}</td>\n        <td>{$product.price}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> Shipping: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n        <td> {$DATA.shipping}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Discount:</td>\n        <td> {$DATA.discount}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Subtotal:</td>\n        <td> {$DATA.subtotal}</td>\n        </tr>\n        <!--{foreach from=$TAXES item=tax}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n        <td> {$tax.tax_amount}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td><strong>Order Total: </strong></td>\n        <td><strong>{$DATA.total}</strong></td>\n        </tr>\n        </tbody>\n        \n        </table>','{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} just placed order number {$DATA.cart_order_id} on {$DATA.order_date}.\n        \n        This order can be managed online by following the link below.\n        \n        {$DATA.link}\n        \n        ----------------------------------------------------------------------\n        Billing address:\n        {$BILLING.first_name} {$BILLING.last_name}\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n        {/if}{$BILLING.line1}\n        {if !empty({$BILLING.line2})}{$BILLING.line2}\n        {/if}{$BILLING.town}\n        {$BILLING.state}\n        {$BILLING.postcode}\n        {$BILLING.country}\n        {$BILLING.phone}\n        \n        Email:\n        {$BILLING.email}\n        \n        Shipping address:\n        {$SHIPPING.first_name} {$SHIPPING.last_name}\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n        {/if}{$SHIPPING.line1}\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n        {/if}{$SHIPPING.town}\n        {$SHIPPING.state}\n        {$SHIPPING.postcode}\n        {$SHIPPING.country}\n        \n        ----------------------------------------------------------------------\n        Items in Your Order\n        \n        {foreach from=$PRODUCTS item=product}\n        -----------------------------------\n        {$product.name}\n        {$product.product_options}\n        \n        Part Number: {$product.product_code}\n        Unit Price: {$product.price}\n        Qty: {$product.quantity}\n        \n        {/foreach}\n        -----------------------------------\n        Subtotal: {$DATA.subtotal}\n        Discount: {$DATA.discount}\n        Shipping: {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n        {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n        {/foreach}\n        --------------------------\n        Order Total: {$DATA.total}\n        =========================='),(20,'admin.review_added','en-GB','\n      New Product Review\n    ','{$DATA.name} has submit a new review/comment about \'{$DATA.product_name}\'. This can be moderated following the link below.\n        <p><strong>Moderation Link:</strong><br /><a href=\'{$DATA.link}\'>{$DATA.link}</a></p> \n        <p><strong>Review Text:</strong><br />{$DATA.review}</p>','{$DATA.name} has submit a new review/comment about \'{$DATA.product_name}\'. This can be moderated following the link below.\n        \n        Moderation Link: \n        {$DATA.link}\n        Review Text:\n        {$DATA.review}'),(21,'cart.digital_download','en-GB','\n      Your Purchased Downloads\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>Your digital files are now ready for download. Please use the links provided below to access them below:</p> \n        {foreach from=$DOWNLOADS item=download} \n        <p><strong>{$download.name}:</strong> (Link expires on {$download.expire}<strong>)</strong><br /> \n        {$download.url}</p> \n        {/foreach}\n        <p>If the links above don\'t work, please try copy and pasting them it into your browser address bar. You can also find access to these files from your the customer area of our website.</p> \n        <p>&nbsp;</p>','Hi {$DATA.first_name},\n        \n        Your digital files are now ready for download. Please use the links provided below to access them below:\n        \n        {foreach from=$DOWNLOADS item=download} \n        {$download.name}: (Link expires on {$download.expire})\n        {$download.url}\n        {/foreach}\n        \n        If the links above don\'t work, please try copy and pasting them it into your browser address bar. You can also find access to these files from your the customer area of our website.'),(22,'cart.gift_certificate','en-GB','\n      Your Gift Certificate\n    ','<p>Dear {$DATA.name},</p> \n        <p>We are please to be sending you this gift certificate which you can use towards the purchase of any item(s) on our website.</p> \n        <p>Happy shopping!</p> \n        <p><strong>From: </strong>{$DATA.first_name} {$DATA.last_name}<br /> \n        <strong>Amount: </strong>{$DATA.value}<br /> \n        <strong>Claim Code:</strong> {$DATA.code}<br /> \n        <strong>Gift Message:</strong> {$DATA.message}</p> \n        <p>-------------------</p> \n        <p>To reedeem this gift certificate please enter the &quot;Claim Code&quot; above into the text field labeled &quot;Add Gift Certificate or Coupon&quot; during checkout.</p> \n        <p>Why not spend it now?</p>','Dear {$DATA.name},\n        \n        We are please to  be sending you this gift certificate which you can use towards the purchase of any item(s) on our website.\n        \n        Happy shopping!\n        \n        From: {$DATA.first_name} {$DATA.last_name}\n        Amount: {$DATA.value}\n        Claim Code: {$DATA.code}\n        Gift Message: {$DATA.message}\n        \n        -------------------\n        \n        To reedeem this gift certificate please enter the \"Claim Code\" above into the text field labeled \"Add Gift Certificate or Coupon\" during checkout.\n        \n        Why not spend it now?'),(23,'catalogue.tell_friend','en-GB','\n      {$DATA.from} has recommended something\n    ','Dear {$DATA.to},\n        <p>Your friend <strong>{$DATA.from}</strong> thought that you might be interested in <strong>{$DATA.name}</strong>.</p> \n        <p><strong>Product Link:</strong> <a href=\"{$DATA.link}\">{$DATA.name}</a></p> \n        <p>{$DATA.message}</p>','Dear {$DATA.to},\n        \n        Your friend {$DATA.from} thought that you might be interested in \'{$DATA.name}\'.\n        \n        {$DATA.name}\n        Product Link: {$DATA.link}\n        \n        {$DATA.message}'),(24,'cart.payment_received','en-GB','\n      Thank you for your payment!\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>Thank you. We have received a payment of {$DATA.total} for order number {$DATA.cart_order_id}.</p>','Hi {$DATA.first_name},\n        \n        Thank you. We have received a payment of {$DATA.total} for order number {$DATA.cart_order_id}.'),(25,'admin.password_recovery','en-US','\n      Admin Password Recovery\n    ','<p>Dear {$DATA.name},</p> \n        <p>To regain access to the stores administration control panel. Please follow the link below:</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p> \n        <p>If the link above doesn\'t work, please copy and paste it into your browser address bar.</p>','Dear {$DATA.name},\n        \n        To regain access to the stores administration control panel. Please follow the link below:\n        \n        {$DATA.link}\n        \n        If the link above doesn\'t work, please copy and paste it into your browser address bar.'),(26,'cart.order_complete','en-US','\n      Order Complete\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>We are pleased to say that order number {$DATA.cart_order_id} is complete. If you have ordered physical goods they should arrive shortly.</p>','Hi {$DATA.first_name},\n        \n        We are pleased to say that order number {$DATA.cart_order_id} is complete. If you have ordered physical goods they should arrive shortly.'),(27,'cart.order_cancelled','en-US','\n      Order Cancelled\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>Order number {$DATA.cart_order_id} has been cancelled.</p>','Hi {$DATA.first_name},\n        \n        Order number {$DATA.cart_order_id} has been cancelled.'),(28,'cart.order_confirmation','en-US','\n      Order Confirmation #{$DATA.cart_order_id}\n    ','<p>Thank You {$DATA.first_name}!</p>\n        <p>Your order {$DATA.cart_order_id} has been received which was placed on {$DATA.order_date}. Please keep this email for your records. It is possible to view the status of your order online.</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n        <table width=\"100%\">\n        <tr>\n        <td valign=\"top\" width=\"50%\"><strong>Billing address:</strong><br />\n        {$BILLING.first_name} {$BILLING.last_name}<br />\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n        {/if}\n        {$BILLING.line1}<br />\n        {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n        {/if}\n        {$BILLING.town}<br />\n        {$BILLING.state}<br />\n        {$BILLING.postcode}<br />\n        {$BILLING.country}<br />\n        {$BILLING.phone}<br />\n        <br />\n        <strong>Email:</strong><br />\n        {$BILLING.email}</td>\n        <td valign=\"top\" width=\"50%\"><strong>Shipping address:</strong><br />\n        {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n        {/if}{$SHIPPING.line1}<br />\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n        {/if}{$SHIPPING.town}<br />\n        {$SHIPPING.state}<br />\n        {$SHIPPING.postcode}<br />\n        {$SHIPPING.country}</td>\n        </tr>\n        </table>\n        <table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n        <tbody>\n        <tr>\n        <td><strong>Item</strong></td>\n        <td><strong>Quantity</strong></td>\n        <td><strong>Cost</strong></td>\n        </tr>\n        <!--{foreach from=$PRODUCTS item=product}-->\n        <tr>\n        <td>{$product.name} <br />{$product.product_options}</td>\n        <td>{$product.quantity}</td>\n        <td>{$product.price}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> Shipping: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n        <td> {$DATA.shipping}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Discount:</td>\n        <td> {$DATA.discount}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Subtotal:</td>\n        <td> {$DATA.subtotal}</td>\n        </tr>\n        <!--{foreach from=$TAXES item=tax}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n        <td> {$tax.tax_amount}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td><strong>Order Total: </strong></td>\n        <td><strong>{$DATA.total}</strong></td>\n        </tr>\n        </tbody>\n        \n        </table>','Thank You {$DATA.first_name}!\n        \n        Your order {$DATA.cart_order_id} has been received which was placed on {$DATA.order_date}. Please keep this email for your records. It is possible to view the status of your order online. \n        \n        {$DATA.link}\n        \n        ----------------------------------------------------------------------\n        Billing address:\n        {$BILLING.first_name} {$BILLING.last_name}\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n        {/if}{$BILLING.line1}\n        {if !empty({$BILLING.line2})}{$BILLING.line2}\n        {/if}{$BILLING.town}\n        {$BILLING.state}\n        {$BILLING.postcode}\n        {$BILLING.country}\n        {$BILLING.phone}\n        \n        Email:\n        {$BILLING.email}\n        \n        Shipping address:\n        {$SHIPPING.first_name} {$SHIPPING.last_name}\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n        {/if}{$SHIPPING.line1}\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n        {/if}{$SHIPPING.town}\n        {$SHIPPING.state}\n        {$SHIPPING.postcode}\n        {$SHIPPING.country}\n        \n        ----------------------------------------------------------------------\n        Items in Your Order\n        \n        {foreach from=$PRODUCTS item=product}\n        -----------------------------------\n        {$product.name}\n        {$product.product_options}\n        \n        Part Number: {$product.product_code}\n        Unit Price: {$product.price}\n        Qty: {$product.quantity}\n        \n        {/foreach}\n        -----------------------------------\n        Subtotal: {$DATA.subtotal}\n        Discount: {$DATA.discount}\n        Shipping: {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n        {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n        {/foreach}\n        --------------------------\n        Order Total: {$DATA.total}\n        =========================='),(29,'cart.payment_fraud','en-US','\n      Order Problem\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>We are very sorry but we have not been able to accept the payment for order {$DATA.cart_order_id}. Please feel free to contact a member of staff if you have any questions.</p>','Hi {$DATA.first_name},\n        \n        We are very sorry but we have not been able to accept the payment for order {$DATA.cart_order_id}. Please feel free to contact a member of staff if you have any questions.'),(30,'account.password_recovery','en-US','\n      Password Recovery\n    ','<p>Dear {$DATA.first_name} {$DATA.last_name},<br /> \n        <br /> \n        To reset your password, please click on the link below or copy and paste the address onto your web browser\'s address window. Once you\'re on the web page, you will be instructed to enter and confirm your new password.<br /> \n        <br /> \n        {$DATA.reset_link}<br /> \n        <br /> \n        If you require further assistance in resetting your password, please contact us.</p>','Hi {$DATA.first_name},\n        \n        To reset your password, please click on the link below or copy and paste the address onto your web browser\'s address window. Once you\'re on the web page, you will be instructed to enter and confirm your new password.\n        \n        {$DATA.reset_link}\n        \n        If you require further assistance in resetting your password, please contact us.'),(31,'admin.order_received','en-US','\n      New Order #{$DATA.cart_order_id}\n    ','<p>{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} just placed order number {$DATA.cart_order_id} on {$DATA.order_date}.</p>\n        <p>This order can be managed online by following the link below.</p> \n        <p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n        <table width=\"100%\">\n        <tr>\n        <td valign=\"top\" width=\"50%\"><strong>Billing address:</strong><br />\n        {$BILLING.first_name} {$BILLING.last_name}<br />\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n        {/if}\n        {$BILLING.line1}<br />\n        {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n        {/if}\n        {$BILLING.town}<br />\n        {$BILLING.state}<br />\n        {$BILLING.postcode}<br />\n        {$BILLING.country}<br />\n        {$BILLING.phone}<br />\n        <br />\n        <strong>Email:</strong><br />\n        {$BILLING.email}</td>\n        <td valign=\"top\" width=\"50%\"><strong>Shipping address:</strong><br />\n        {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n        {/if}{$SHIPPING.line1}<br />\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n        {/if}{$SHIPPING.town}<br />\n        {$SHIPPING.state}<br />\n        {$SHIPPING.postcode}<br />\n        {$SHIPPING.country}</td>\n        </tr>\n        </table>\n        <table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n        <tbody>\n        <tr>\n        <td><strong>Item</strong></td>\n        <td><strong>Quantity</strong></td>\n        <td><strong>Cost</strong></td>\n        </tr>\n        <!--{foreach from=$PRODUCTS item=product}-->\n        <tr>\n        <td>{$product.name} <br />{$product.product_options}</td>\n        <td>{$product.quantity}</td>\n        <td>{$product.price}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> Shipping: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n        <td> {$DATA.shipping}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Discount:</td>\n        <td> {$DATA.discount}</td>\n        </tr>\n        <tr>\n        <td>&nbsp;</td>\n        <td> Subtotal:</td>\n        <td> {$DATA.subtotal}</td>\n        </tr>\n        <!--{foreach from=$TAXES item=tax}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n        <td> {$tax.tax_amount}</td>\n        </tr>\n        <!--{/foreach}-->\n        <tr>\n        <td>&nbsp;</td>\n        <td><strong>Order Total: </strong></td>\n        <td><strong>{$DATA.total}</strong></td>\n        </tr>\n        </tbody>\n        \n        </table>','{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} just placed order number {$DATA.cart_order_id} on {$DATA.order_date}.\n        \n        This order can be managed online by following the link below.\n        \n        {$DATA.link}\n        \n        ----------------------------------------------------------------------\n        Billing address:\n        {$BILLING.first_name} {$BILLING.last_name}\n        {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n        {/if}{$BILLING.line1}\n        {if !empty({$BILLING.line2})}{$BILLING.line2}\n        {/if}{$BILLING.town}\n        {$BILLING.state}\n        {$BILLING.postcode}\n        {$BILLING.country}\n        {$BILLING.phone}\n        \n        Email:\n        {$BILLING.email}\n        \n        Shipping address:\n        {$SHIPPING.first_name} {$SHIPPING.last_name}\n        {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n        {/if}{$SHIPPING.line1}\n        {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n        {/if}{$SHIPPING.town}\n        {$SHIPPING.state}\n        {$SHIPPING.postcode}\n        {$SHIPPING.country}\n        \n        ----------------------------------------------------------------------\n        Items in Your Order\n        \n        {foreach from=$PRODUCTS item=product}\n        -----------------------------------\n        {$product.name}\n        {$product.product_options}\n        \n        Part Number: {$product.product_code}\n        Unit Price: {$product.price}\n        Qty: {$product.quantity}\n        \n        {/foreach}\n        -----------------------------------\n        Subtotal: {$DATA.subtotal}\n        Discount: {$DATA.discount}\n        Shipping: {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n        {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n        {/foreach}\n        --------------------------\n        Order Total: {$DATA.total}\n        =========================='),(32,'admin.review_added','en-US','\n      New Product Review\n    ','{$DATA.name} has submit a new review/comment about \'{$DATA.product_name}\'. This can be moderated following the link below.\n        <p><strong>Moderation Link:</strong><br /><a href=\'{$DATA.link}\'>{$DATA.link}</a></p> \n        <p><strong>Review Text:</strong><br />{$DATA.review}</p>','{$DATA.name} has submit a new review/comment about \'{$DATA.product_name}\'. This can be moderated following the link below.\n        \n        Moderation Link: \n        {$DATA.link}\n        Review Text:\n        {$DATA.review}'),(33,'cart.digital_download','en-US','\n      Your Purchased Downloads\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>Your digital files are now ready for download. Please use the links provided below to access them below:</p> \n        {foreach from=$DOWNLOADS item=download} \n        <p><strong>{$download.name}:</strong> (Link expires on {$download.expire}<strong>)</strong><br /> \n        {$download.url}</p> \n        {/foreach}\n        <p>If the links above don\'t work, please try copy and pasting them it into your browser address bar. You can also find access to these files from your the customer area of our website.</p> \n        <p>&nbsp;</p>','Hi {$DATA.first_name},\n        \n        Your digital files are now ready for download. Please use the links provided below to access them below:\n        \n        {foreach from=$DOWNLOADS item=download} \n        {$download.name}: (Link expires on {$download.expire})\n        {$download.url}\n        {/foreach}\n        \n        If the links above don\'t work, please try copy and pasting them it into your browser address bar. You can also find access to these files from your the customer area of our website.'),(34,'cart.gift_certificate','en-US','\n      Your Gift Certificate\n    ','<p>Dear {$DATA.name},</p> \n        <p>We are please to be sending you this gift certificate which you can use towards the purchase of any item(s) on our website.</p> \n        <p>Happy shopping!</p> \n        <p><strong>From: </strong>{$DATA.first_name} {$DATA.last_name}<br /> \n        <strong>Amount: </strong>{$DATA.value}<br /> \n        <strong>Claim Code:</strong> {$DATA.code}<br /> \n        <strong>Gift Message:</strong> {$DATA.message}</p> \n        <p>-------------------</p> \n        <p>To reedeem this gift certificate please enter the &quot;Claim Code&quot; above into the text field labeled &quot;Add Gift Certificate or Coupon&quot; during checkout.</p> \n        <p>Why not spend it now?</p>','Dear {$DATA.name},\n        \n        We are please to  be sending you this gift certificate which you can use towards the purchase of any item(s) on our website.\n        \n        Happy shopping!\n        \n        From: {$DATA.first_name} {$DATA.last_name}\n        Amount: {$DATA.value}\n        Claim Code: {$DATA.code}\n        Gift Message: {$DATA.message}\n        \n        -------------------\n        \n        To reedeem this gift certificate please enter the \"Claim Code\" above into the text field labeled \"Add Gift Certificate or Coupon\" during checkout.\n        \n        Why not spend it now?'),(35,'catalogue.tell_friend','en-US','\n      {$DATA.from} has recommended something\n    ','Dear {$DATA.to},\n        <p>Your friend <strong>{$DATA.from}</strong> thought that you might be interested in <strong>{$DATA.name}</strong>.</p> \n        <p><strong>Product Link:</strong> <a href=\"{$DATA.link}\">{$DATA.name}</a></p> \n        <p>{$DATA.message}</p>','Dear {$DATA.to},\n        \n        Your friend {$DATA.from} thought that you might be interested in \'{$DATA.name}\'.\n        \n        {$DATA.name}\n        Product Link: {$DATA.link}\n        \n        {$DATA.message}'),(36,'cart.payment_received','en-US','\n      Thank you for your payment!\n    ','<p>Hi {$DATA.first_name},</p> \n        <p>Thank you. We have received a payment of {$DATA.total} for order number {$DATA.cart_order_id}.</p>','Hi {$DATA.first_name},\n        \n        Thank you. We have received a payment of {$DATA.total} for order number {$DATA.cart_order_id}.'),(37,'admin.password_recovery','es-ES','RecuperaciÃ³n de contraseÃ±a del Admin.','<p>Estimado/a {$DATA.name},</p> \n<p>Para poder volver a acceder al panel de control de administraciÃ³n de las tiendas. Por favor, siga el enlace siguiente:</p> \n<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p> \n<p>Si el enlace anterior no funciona, por favor, copie y pÃ©guelo en la barra de direcciones de su navegador.</p>','Estimado/a {$DATA.name},\n \nPara poder volver a acceder al panel de control de administraciÃ³n de las tiendas. Por favor, siga el enlace siguiente:\n \n{$DATA.link}\n \nSi el enlace anterior no funciona, por favor, copie y pÃ©guelo en la barra de direcciones de su navegador.'),(38,'cart.order_complete','es-ES','Pedido completado','<p>Hola, {$DATA.first_name},</p> \n<p>Nos complace indicarle que el pedido nÃºmero {$DATA.cart_order_id} ha sido completado. Si ha pedido mercancÃ­as fÃ­sicas, estas no tardarÃ¡n en llegar.</p>','Hola, {$DATA.first_name},\n \nNos complace indicarle que el pedido nÃºmero {$DATA.cart_order_id} ha sido completado. Si ha pedido mercancÃ­as fÃ­sicas, estas no tardarÃ¡n en llegar.'),(39,'cart.order_cancelled','es-ES','Pedido cancelado','<p>Hola, {$DATA.first_name},</p> \n<p>El pedido nÃºmero {$DATA.cart_order_id} ha sido cancelado.</p>','Hola, {$DATA.first_name},\n \nEl pedido nÃºmero {$DATA.cart_order_id} ha sido cancelado.'),(40,'cart.order_confirmation','es-ES','ConfirmaciÃ³n de pedido #{$DATA.cart_order_id}','<p>Muchas gracias, {$DATA.first_name}!</p>\n<p>Hemos recibido su pedido {$DATA.cart_order_id} que fue realizado el {$DATA.order_date}. Por favor, conserve este mensaje para sus registros. Puede ver el estado de su pedido en lÃ­nea.</p> \n<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n<table width=\"100%\">\n  <tr>\n    <td valign=\"top\" width=\"50%\"><strong>DirecciÃ³n de facturaciÃ³n:</strong><br />\n      {$BILLING.first_name} {$BILLING.last_name}<br />\n      {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n      {/if}\n      {$BILLING.line1}<br />\n      {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n      {/if}\n      {$BILLING.town}<br />\n      {$BILLING.state}<br />\n      {$BILLING.postcode}<br />\n      {$BILLING.country}<br />\n      {$BILLING.phone}<br />\n      <br />\n      <strong>Correo electrÃ³nico:</strong><br />\n      {$BILLING.email}</td>\n    <td valign=\"top\" width=\"50%\"><strong>DirecciÃ³n de envÃ­o:</strong><br />\n      {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n      {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n      {/if}{$SHIPPING.line1}<br />\n      {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n      {/if}{$SHIPPING.town}<br />\n      {$SHIPPING.state}<br />\n      {$SHIPPING.postcode}<br />\n      {$SHIPPING.country}</td>\n  </tr>\n</table>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n  <tbody>\n    <tr>\n      <td><strong>ArtÃ­culo</strong></td>\n      <td><strong>Cantidad</strong></td>\n      <td><strong>Coste</strong></td>\n    </tr>\n  <!--{foreach from=$PRODUCTS item=product}-->\n  <tr>\n    <td>{$product.name} <br />{$product.product_options}</td>\n    <td>{$product.quantity}</td>\n    <td>{$product.price}</td>\n  </tr>\n  <!--{/foreach}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td> EnvÃ­o: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n    <td> {$DATA.shipping}</td>\n  </tr>\n  <tr>\n    <td>&nbsp;</td>\n    <td> Descuento:</td>\n    <td> {$DATA.discount}</td>\n  </tr>\n  <tr>\n    <td>&nbsp;</td>\n    <td> Subtotal:</td>\n    <td> {$DATA.subtotal}</td>\n  </tr>\n  <!--{foreach from=$TAXES item=tax}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n    <td> {$tax.tax_amount}</td>\n  </tr>\n  <!--{/foreach}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td><strong>Total del pedido: </strong></td>\n    <td><strong>{$DATA.total}</strong></td>\n  </tr>\n  </tbody>\n  \n</table>','Muchas gracias, {$DATA.first_name}!\n\nHemos recibido su pedido {$DATA.cart_order_id} que fue realizado el {$DATA.order_date}. Por favor, conserve este mensaje para sus registros. Puede ver el estado de su pedido en lÃ­nea. \n\n{$DATA.link}\n\n----------------------------------------------------------------------\nDirecciÃ³n de facturaciÃ³n:\n  {$BILLING.first_name} {$BILLING.last_name}\n  {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n  {/if}{$BILLING.line1}\n  {if !empty({$BILLING.line2})}{$BILLING.line2}\n  {/if}{$BILLING.town}\n  {$BILLING.state}\n  {$BILLING.postcode}\n  {$BILLING.country}\n  {$BILLING.phone}\n\nCorreo electrÃ³nico:\n  {$BILLING.email}\n\nDirecciÃ³n de envÃ­o:\n  {$SHIPPING.first_name} {$SHIPPING.last_name}\n  {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n  {/if}{$SHIPPING.line1}\n  {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n  {/if}{$SHIPPING.town}\n  {$SHIPPING.state}\n  {$SHIPPING.postcode}\n  {$SHIPPING.country}\n\n----------------------------------------------------------------------\nArtÃ­culos en su pedido\n\n{foreach from=$PRODUCTS item=product}\n-----------------------------------\n{$product.name}\n{$product.product_options}\n\n  NÃºmero de pieza: {$product.product_code}\n  Precio por unidad: {$product.price}\n  Cdad.: {$product.quantity}\n\n{/foreach}\n-----------------------------------\n  Subtotal: {$DATA.subtotal}\n  Descuento: {$DATA.discount}\n  EnvÃ­o: {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n  {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n  {/foreach}\n  --------------------------\n  Total del pedido: {$DATA.total}\n  =========================='),(41,'cart.payment_fraud','es-ES','Problema con el pedido','<p>Hola, {$DATA.first_name},</p> \n<p>Lo sentimos mucho, pero no hemos podido aceptar el pago del pedido {$DATA.cart_order_id}. Por favor, no dude en contactar con un miembro de nuestro personal si tiene alguna pregunta.</p>','Hola, {$DATA.first_name},\n \nLo sentimos mucho, pero no hemos podido aceptar el pago del pedido {$DATA.cart_order_id}. Por favor, no dude en contactar con un miembro de nuestro personal si tiene alguna pregunta.'),(42,'account.password_recovery','es-ES','RecuperaciÃ³n de contraseÃ±a','<p>Estimado/a {$DATA.first_name} {$DATA.last_name},<br /> \n<br /> \nPara borrar su contraseÃ±a y crear otra, haga clic en el siguiente vÃ­nculo o copie y pegue la direcciÃ³n en la barra de direcciones de su navegador. Una vez que estÃ© en la pÃ¡gina web, recibirÃ¡ instrucciones para introducir y confirmar su nueva contraseÃ±a.<br /> \n<br /> \n{$DATA.reset_link}<br /> \n<br /> \nSi necesita mÃ¡s ayuda para restablecer su contraseÃ±a, por favor, pÃ³ngase en contacto con nosotros.</p>','Hola, {$DATA.first_name},\n \nPara borrar su contraseÃ±a y crear otra, haga clic en el siguiente vÃ­nculo o copie y pegue la direcciÃ³n en la barra de direcciones de su navegador. Una vez que estÃ© en la pÃ¡gina web, recibirÃ¡ instrucciones para introducir y confirmar su nueva contraseÃ±a.\n \n{$DATA.reset_link}\n \nSi necesita mÃ¡s ayuda para restablecer su contraseÃ±a, por favor, pÃ³ngase en contacto con nosotros.'),(43,'admin.order_received','es-ES','Nuevo pedido #{$DATA.cart_order_id}','<p>{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} acaba de realizar el pedido nÃºmero {$DATA.cart_order_id} el {$DATA.order_date}.</p>\n<p>Este pedido puede gestionarse en lÃ­nea siguiendo el enlace que aparece a continuaciÃ³n.</p> \n<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n<table width=\"100%\">\n  <tr>\n    <td valign=\"top\" width=\"50%\"><strong>DirecciÃ³n de facturaciÃ³n:</strong><br />\n      {$BILLING.first_name} {$BILLING.last_name}<br />\n      {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n      {/if}\n      {$BILLING.line1}<br />\n      {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n      {/if}\n      {$BILLING.town}<br />\n      {$BILLING.state}<br />\n      {$BILLING.postcode}<br />\n      {$BILLING.country}<br />\n      {$BILLING.phone}<br />\n      <br />\n      <strong>Correo electrÃ³nico:</strong><br />\n      {$BILLING.email}</td>\n    <td valign=\"top\" width=\"50%\"><strong>DirecciÃ³n de envÃ­o:</strong><br />\n      {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n      {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n      {/if}{$SHIPPING.line1}<br />\n      {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n      {/if}{$SHIPPING.town}<br />\n      {$SHIPPING.state}<br />\n      {$SHIPPING.postcode}<br />\n      {$SHIPPING.country}</td>\n  </tr>\n</table>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n  <tbody>\n    <tr>\n      <td><strong>ArtÃ­culo</strong></td>\n      <td><strong>Cantidad</strong></td>\n      <td><strong>Coste</strong></td>\n    </tr>\n  <!--{foreach from=$PRODUCTS item=product}-->\n  <tr>\n    <td>{$product.name} <br />{$product.product_options}</td>\n    <td>{$product.quantity}</td>\n    <td>{$product.price}</td>\n  </tr>\n  <!--{/foreach}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td> EnvÃ­o: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n    <td> {$DATA.shipping}</td>\n  </tr>\n  <tr>\n    <td>&nbsp;</td>\n    <td> Descuento:</td>\n    <td> {$DATA.discount}</td>\n  </tr>\n  <tr>\n    <td>&nbsp;</td>\n    <td> Subtotal:</td>\n    <td> {$DATA.subtotal}</td>\n  </tr>\n  <!--{foreach from=$TAXES item=tax}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n    <td> {$tax.tax_amount}</td>\n  </tr>\n  <!--{/foreach}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td><strong>Total del pedido: </strong></td>\n    <td><strong>{$DATA.total}</strong></td>\n  </tr>\n  </tbody>\n  \n</table>','{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} acaba de realizar el pedido nÃºmero {$DATA.cart_order_id} el {$DATA.order_date}.\n\nEste pedido puede gestionarse en lÃ­nea siguiendo el enlace que aparece a continuaciÃ³n.\n\n{$DATA.link}\n\n----------------------------------------------------------------------\nDirecciÃ³n de facturaciÃ³n:\n  {$BILLING.first_name} {$BILLING.last_name}\n  {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n  {/if}{$BILLING.line1}\n  {if !empty({$BILLING.line2})}{$BILLING.line2}\n  {/if}{$BILLING.town}\n  {$BILLING.state}\n  {$BILLING.postcode}\n  {$BILLING.country}\n  {$BILLING.phone}\n\nCorreo electrÃ³nico:\n  {$BILLING.email}\n\nDirecciÃ³n de envÃ­o:\n  {$SHIPPING.first_name} {$SHIPPING.last_name}\n  {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n  {/if}{$SHIPPING.line1}\n  {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n  {/if}{$SHIPPING.town}\n  {$SHIPPING.state}\n  {$SHIPPING.postcode}\n  {$SHIPPING.country}\n\n----------------------------------------------------------------------\nArtÃ­culos en su pedido\n\n{foreach from=$PRODUCTS item=product}\n-----------------------------------\n{$product.name}\n{$product.product_options}\n\n  NÃºmero de pieza: {$product.product_code}\n  Precio por unidad: {$product.price}\n  Cdad.: {$product.quantity}\n\n{/foreach}\n-----------------------------------\n  Subtotal: {$DATA.subtotal}\n  Descuento: {$DATA.discount}\n  EnvÃ­o: {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n  {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n  {/foreach}\n  --------------------------\n  Total del pedido: {$DATA.total}\n  =========================='),(44,'admin.review_added','es-ES','Nueva opiniÃ³n sobre un producto','{$DATA.name} ha enviado una nueva opiniÃ³n/comentario sobre \'{$DATA.product_name}\'. Puede ser moderado siguiendo el enlace que aparece a continuaciÃ³n.\n<p><strong>Enlace de moderaciÃ³n:</strong><br /><a href=\'{$DATA.link}\'>{$DATA.link}</a></p> \n<p><strong>Texto de la opiniÃ³n:</strong><br />{$DATA.review}</p>','{$DATA.name} ha enviado una nueva opiniÃ³n/comentario sobre \'{$DATA.product_name}\'. Puede ser moderado siguiendo el enlace que aparece a continuaciÃ³n.\n \nEnlace de moderaciÃ³n: \n{$DATA.link}\nTexto de la opiniÃ³n:\n{$DATA.review}'),(45,'cart.digital_download','es-ES','Sus descargas compradas','<p>Hola, {$DATA.first_name},</p> \n<p>Sus archivos digitales estÃ¡n listos para su descarga. Por favor, utilice los enlaces que se proporcionan a continuaciÃ³n para acceder a ellos:</p> \n{foreach from=$DOWNLOADS item=download} \n<p><strong>{$download.name}:</strong> (El enlace caduca en {$download.expire}<strong>)</strong><br /> \n{$download.url}</p> \n{/foreach}\n<p>Si los enlaces anteriores no funcionan, por favor, intente copiar y pegar las direcciones en la barra de direcciones de su navegador. TambiÃ©n puede encontrar acceso a estos archivos desde el Ã¡rea del cliente de su sitio web.</p> \n<p>&nbsp;</p>','Hola, {$DATA.first_name},\n \nSus archivos digitales estÃ¡n listos para su descarga. Por favor, utilice los enlaces que se proporcionan a continuaciÃ³n para acceder a ellos:\n \n{foreach from=$DOWNLOADS item=download} \n{$download.name}: (El enlace caduca en {$download.expire})\n{$download.url}\n{/foreach}\n \nSi los enlaces anteriores no funcionan, por favor, intente copiar y pegar las direcciones en la barra de direcciones de su navegador. TambiÃ©n puede encontrar acceso a estos archivos desde el Ã¡rea del cliente de su sitio web.'),(46,'cart.gift_certificate','es-ES','Su certificado de regalo','<p>Estimado/a {$DATA.name},</p> \n<p>Nos complace enviarle este certificado de regalo que podrÃ¡ utilizar para la compra de cualquier artÃ­culo de nuestro sitio web.</p> \n<p>Â¡Feliz compra!</p> \n<p><strong>De: </strong>{$DATA.first_name} {$DATA.last_name}<br /> \n<strong>Importe: </strong>{$DATA.value}<br /> \n<strong>CÃ³digo del certificado:</strong> {$DATA.code}<br /> \n<strong>Mensaje del regalo:</strong> {$DATA.message}</p> \n<p>-------------------</p> \n<p>Para canjear este ceritficado de regalo, por favor, introduzca el &quot;CÃ³digo del certificado&quot; que aparece mÃ¡s arriba en el campo de texto con la etiqueta &quot;AÃ±adir Certificado o CupÃ³n de regalo&quot; durante el paso por caja.</p> \n<p>Â¿Por quÃ© no gastarlo ahora mismo?</p>','Estimado/a {$DATA.name},\n \nNos complace enviarle este certificado de regalo que podrÃ¡ utilizar para la compra de cualquier artÃ­culo de nuestro sitio web.\n \nÂ¡Felices compras!\n \nDe: {$DATA.first_name} {$DATA.last_name}\nImporte: {$DATA.value}\nCÃ³digo del certificado: {$DATA.code}\nMensaje del regalo: {$DATA.message}\n \n-------------------\n \nParra canjear este certificado de regalo, por favor, introduzca el \"CÃ³digo del certificado\" que aparece mÃ¡s arriba en el campo de texto con la etiqueta \"AÃ±adir Certificado o CupÃ³n de regalo\" durante el paso por caja.\n \nÂ¿Por quÃ© no gastarlo ahora mismo?'),(47,'catalogue.tell_friend','es-ES','{$DATA.from} ha recomendado algo','Estimado/a {$DATA.to},\n<p>Su amigo/a <strong>{$DATA.from}</strong> pensÃ³ que quizÃ¡ le interesarÃ­a <strong>{$DATA.name}</strong>.</p> \n<p><strong>Enlace al producto:</strong> <a href=\"{$DATA.link}\">{$DATA.name}</a></p> \n<p>{$DATA.message}</p>','Estimado/a {$DATA.to},\n \nSu amigo/a {$DATA.from} pensÃ³ que quizÃ¡ le interesarÃ­a \'{$DATA.name}\'.\n \n{$DATA.name}\nEnlace al producto: {$DATA.link}\n \n{$DATA.message}'),(48,'cart.payment_received','es-ES','Â¡Gracias por su pago!','<p>Hola, {$DATA.first_name},</p> \n<p>Gracias. Hemos recibido un pago de {$DATA.total} correspondiente al pedido nÃºmero {$DATA.cart_order_id}.</p>','Hola, {$DATA.first_name},\n \nGracias. Hemos recibido un pago de {$DATA.total} correspondiente al pedido nÃºmero {$DATA.cart_order_id}.'),(49,'admin.password_recovery','fr-FR','RÃ©cupÃ©ration du mot de passe Admin','<p>Cher {$DATA.name},</p> \n<p>Pour avoir Ã  nouveau accÃ¨s au panneau de contrÃ´le d\'administration des boutiques. Veuillez suivre le lien ci-dessousÂ :</p> \n<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p> \n<p>Si le lien ci-dessus ne fonctionne pas, veuillez le copier et coller dans la barre d\'adresse de votre navigateur.</p>','Cher {$DATA.name},\n \nPour avoir Ã  nouveau accÃ¨s au panneau de contrÃ´le d\'administration des boutiques. Veuillez suivre le lien ci-dessousÂ :\n \n{$DATA.link}\n \nSi le lien ci-dessus ne fonctionne pas, veuillez le copier et coller dans la barre d\'adresse de votre navigateur.'),(50,'cart.order_complete','fr-FR','Commande terminÃ©e','<p>Bonjour {$DATA.first_name},</p> \n<p>Nous sommes ravis de vous indiquer votre numÃ©ro de commande {$DATA.cart_order_id} est complet. Si vous avez commandÃ© des biens physiques, ils devraient arriver sous peu.</p>','Bonjour {$DATA.first_name},\n \nNous sommes ravis de vous indiquer votre numÃ©ro de commande {$DATA.cart_order_id} est complet. Si vous avez commandÃ© des biens physiques, ils devraient arriver sous peu.'),(51,'cart.order_cancelled','fr-FR','Commande annulÃ©e','<p>Bonjour {$DATA.first_name},</p> \n<p>NumÃ©ro de commande {$DATA.cart_order_id} a Ã©tÃ© annulÃ©.</p>','Bonjour {$DATA.first_name},\n \nNumÃ©ro de commande {$DATA.cart_order_id} a Ã©tÃ© annulÃ©.'),(52,'cart.order_confirmation','fr-FR','Confirmation de commande #{$DATA.cart_order_id}','<p>Merci {$DATA.first_name}!</p>\n<p>Votre commande {$DATA.cart_order_id} a bien Ã©tÃ© reÃ§ue et a Ã©tÃ© effectuÃ©e le {$DATA.order_date}. Veuillez conserver cet e-mail pour vos archives. Il est possible de voir le statut de votre commande en ligne.</p> \n<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n<table width=\"100%\">\n  <tr>\n    <td valign=\"top\" width=\"50%\"><strong>Adresse de facturation :</strong><br />\n      {$BILLING.first_name} {$BILLING.last_name}<br />\n      {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n      {/if}\n      {$BILLING.line1}<br />\n      {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n      {/if}\n      {$BILLING.town}<br />\n      {$BILLING.state}<br />\n      {$BILLING.postcode}<br />\n      {$BILLING.country}<br />\n      {$BILLING.phone}<br />\n      <br />\n      <strong>E-mailÂ :</strong><br />\n      {$BILLING.email}</td>\n    <td valign=\"top\" width=\"50%\"><strong>Adresse de livraisonÂ :</strong><br />\n      {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n      {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n      {/if}{$SHIPPING.line1}<br />\n      {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n      {/if}{$SHIPPING.town}<br />\n      {$SHIPPING.state}<br />\n      {$SHIPPING.postcode}<br />\n      {$SHIPPING.country}</td>\n  </tr>\n</table>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n  <tbody>\n    <tr>\n      <td><strong>Article</strong></td>\n      <td><strong>QuantitÃ©</strong></td>\n      <td><strong>CoÃ»t</strong></td>\n    </tr>\n  <!--{foreach from=$PRODUCTS item=product}-->\n  <tr>\n    <td>{$product.name} <br />{$product.product_options}</td>\n    <td>{$product.quantity}</td>\n    <td>{$product.price}</td>\n  </tr>\n  <!--{/foreach}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td> LivraisonÂ : {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n    <td> {$DATA.shipping}</td>\n  </tr>\n  <tr>\n    <td>&nbsp;</td>\n    <td> RemiseÂ :</td>\n    <td> {$DATA.discount}</td>\n  </tr>\n  <tr>\n    <td>&nbsp;</td>\n    <td> Sous-totalÂ :</td>\n    <td> {$DATA.subtotal}</td>\n  </tr>\n  <!--{foreach from=$TAXES item=tax}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n    <td> {$tax.tax_amount}</td>\n  </tr>\n  <!--{/foreach}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td><strong>Total de la commandeÂ : </strong></td>\n    <td><strong>{$DATA.total}</strong></td>\n  </tr>\n  </tbody>\n  \n</table>','Merci {$DATA.first_name}!\n\nVotre commande {$DATA.cart_order_id} a bien Ã©tÃ© reÃ§ue et a Ã©tÃ© effectuÃ©e le {$DATA.order_date}. Veuillez conserver cet e-mail pour vos archives. Il est possible de voir le statut de votre commande en ligne. \n\n{$DATA.link}\n\n----------------------------------------------------------------------\nAdresse de facturationÂ :\n  {$BILLING.first_name} {$BILLING.last_name}\n  {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n  {/if}{$BILLING.line1}\n  {if !empty({$BILLING.line2})}{$BILLING.line2}\n  {/if}{$BILLING.town}\n  {$BILLING.state}\n  {$BILLING.postcode}\n  {$BILLING.country}\n  {$BILLING.phone}\n\nE-mailÂ :\n  {$BILLING.email}\n\nAdresse de livraisonÂ :\n  {$SHIPPING.first_name} {$SHIPPING.last_name}\n  {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n  {/if}{$SHIPPING.line1}\n  {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n  {/if}{$SHIPPING.town}\n  {$SHIPPING.state}\n  {$SHIPPING.postcode}\n  {$SHIPPING.country}\n\n----------------------------------------------------------------------\nArticles de votre commande\n\n{foreach from=$PRODUCTS item=product}\n-----------------------------------\n{$product.name}\n{$product.product_options}\n\n  Code articleÂ : {$product.product_code}\n  Prix unitaireÂ : {$product.price}\n  QtÃ©Â : {$product.quantity}\n\n{/foreach}\n-----------------------------------\n  Sous-totalÂ : {$DATA.subtotal}\n  RemiseÂ : {$DATA.discount}\n  LivraisonÂ : {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n  {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n  {/foreach}\n  --------------------------\n  Total de la commandeÂ : {$DATA.total}\n  =========================='),(53,'cart.payment_fraud','fr-FR','ProblÃ¨me de la commande','<p>Bonjour {$DATA.first_name},</p> \n<p>Nous sommes dÃ©solÃ©s mais nous ne pouvons pas accepter le paiement pour la commande {$DATA.cart_order_id}. N\'hÃ©sitez pas Ã  contacter un membre du personnel si vous avez des questions.<p>','Bonjour {$DATA.first_name},\n \nNous sommes dÃ©solÃ©s mais nous ne pouvons pas accepter le paiement pour la commande {$DATA.cart_order_id}. N\'hÃ©sitez pas Ã  contacter un membre du personnel si vous avez des questions.'),(54,'account.password_recovery','fr-FR','RÃ©cupÃ©ration du mot de passe','<p>Cher {$DATA.first_name} {$DATA.last_name},<br /> \n<br /> \nPour rÃ©initialiser votre mot de passe, veuillez cliquer sur le lien ci-dessous ou copier et coller l\'adresse dans la fenÃªtre d\'adresse de votre navigateur Web. Une fois que vous Ãªtes sur la page Web, il vous sera demandÃ© d\'entrer et de confirmer votre nouveau mot de passe.<br /> \n<br /> \n{$DATA.reset_link}<br /> \n<br /> \nSi vous avez besoin davantage d\'assistance pour la rÃ©initialisation de votre mot de passe, veuillez nous contacter.</p>','Bonjour {$DATA.first_name},\n \nPour rÃ©initialiser votre mot de passe, veuillez cliquer sur le lien ci-dessous ou copier et coller l\'adresse dans la fenÃªtre d\'adresse de votre navigateur Web. Une fois que vous Ãªtes sur la page Web, il vous sera demandÃ© d\'entrer et de confirmer votre nouveau mot de passe.\n \n{$DATA.reset_link}\n \nSi vous avez besoin davantage d\'assistance pour la rÃ©initialisation de votre mot de passe, veuillez nous contacter.'),(55,'admin.order_received','fr-FR','Nouvelle commande #{$DATA.cart_order_id}','<p>{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} vient juste d\'Ãªtre passÃ©e, numÃ©ro de commande {$DATA.cart_order_id} on {$DATA.order_date}.</p>\n<p>Cette commande peut Ãªtre gÃ©rÃ©e en ligne en suivant le lien suivant.</p> \n<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n<table width=\"100%\">\n  <tr>\n    <td valign=\"top\" width=\"50%\"><strong>Adresse de facturation :</strong><br />\n      {$BILLING.first_name} {$BILLING.last_name}<br />\n      {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n      {/if}\n      {$BILLING.line1}<br />\n      {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n      {/if}\n      {$BILLING.town}<br />\n      {$BILLING.state}<br />\n      {$BILLING.postcode}<br />\n      {$BILLING.country}<br />\n      {$BILLING.phone}<br />\n      <br />\n      <strong>E-mailÂ :</strong><br />\n      {$BILLING.email}</td>\n    <td valign=\"top\" width=\"50%\"><strong>Adresse de livraisonÂ :</strong><br />\n      {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n      {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n      {/if}{$SHIPPING.line1}<br />\n      {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n      {/if}{$SHIPPING.town}<br />\n      {$SHIPPING.state}<br />\n      {$SHIPPING.postcode}<br />\n      {$SHIPPING.country}</td>\n  </tr>\n</table>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n  <tbody>\n    <tr>\n      <td><strong>Article</strong></td>\n      <td><strong>QuantitÃ©</strong></td>\n      <td><strong>CoÃ»t</strong></td>\n    </tr>\n  <!--{foreach from=$PRODUCTS item=product}-->\n  <tr>\n    <td>{$product.name} <br />{$product.product_options}</td>\n    <td>{$product.quantity}</td>\n    <td>{$product.price}</td>\n  </tr>\n  <!--{/foreach}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td> LivraisonÂ : {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n    <td> {$DATA.shipping}</td>\n  </tr>\n  <tr>\n    <td>&nbsp;</td>\n    <td> RemiseÂ :</td>\n    <td> {$DATA.discount}</td>\n  </tr>\n  <tr>\n    <td>&nbsp;</td>\n    <td> Sous-totalÂ :</td>\n    <td> {$DATA.subtotal}</td>\n  </tr>\n  <!--{foreach from=$TAXES item=tax}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n    <td> {$tax.tax_amount}</td>\n  </tr>\n  <!--{/foreach}-->\n  <tr>\n    <td>&nbsp;</td>\n    <td><strong>Total de la commandeÂ : </strong></td>\n    <td><strong>{$DATA.total}</strong></td>\n  </tr>\n  </tbody>\n  \n</table>','{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} numÃ©ro de commande juste passÃ© {$DATA.cart_order_id} on {$DATA.order_date}.\n\nCette commande peut Ãªtre gÃ©rÃ©e en ligne en suivant le lien ci-dessous.\n\n{$DATA.link}\n\n----------------------------------------------------------------------\nAdresse de facturationÂ :\n  {$BILLING.first_name} {$BILLING.last_name}\n  {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n  {/if}{$BILLING.line1}\n  {if !empty({$BILLING.line2})}{$BILLING.line2}\n  {/if}{$BILLING.town}\n  {$BILLING.state}\n  {$BILLING.postcode}\n  {$BILLING.country}\n  {$BILLING.phone}\n\nE-mailÂ :\n  {$BILLING.email}\n\nAdresse de livraisonÂ :\n  {$SHIPPING.first_name} {$SHIPPING.last_name}\n  {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n  {/if}{$SHIPPING.line1}\n  {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n  {/if}{$SHIPPING.town}\n  {$SHIPPING.state}\n  {$SHIPPING.postcode}\n  {$SHIPPING.country}\n\n----------------------------------------------------------------------\nArticles de votre commande\n\n{foreach from=$PRODUCTS item=product}\n-----------------------------------\n{$product.name}\n{$product.product_options}\n\n  Code articleÂ : {$product.product_code}\n  Prix unitaireÂ : {$product.price}\n  QtÃ©Â : {$product.quantity}\n\n{/foreach}\n-----------------------------------\n  Sous-totalÂ : {$DATA.subtotal}\n  RemiseÂ : {$DATA.discount}\n  LivraisonÂ : {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n  {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n  {/foreach}\n  --------------------------\n  Total de la commandeÂ : {$DATA.total}\n  =========================='),(56,'admin.review_added','fr-FR','Avis relatif au nouveau produit','{$DATA.name} a soumis un nouvel avis/commentaire sur \'{$DATA.product_name}\'. Cette commande peut Ãªtre modÃ©rÃ©e en suivant le lien ci-dessous.\n<p><strong>Lien de modÃ©rationÂ :</strong><br /><a href=\'{$DATA.link}\'>{$DATA.link}</a></p> \n<p><strong>Texte de l\'avisÂ :</strong><br />{$DATA.review}</p>','{$DATA.name} a soumis un nouvel avis/commentaire sur \'{$DATA.product_name}\'. Cette commande peut Ãªtre modÃ©rÃ©e en suivant le lien ci-dessous.\n \nLien de modÃ©rationÂ : \n{$DATA.link}\nTexte de l\'avisÂ :\n{$DATA.review}'),(57,'cart.digital_download','fr-FR','Vos tÃ©lÃ©chargements achetÃ©s','<p>Bonjour {$DATA.first_name},</p> \n<p>Vos fichiers numÃ©riques sont dÃ©sormais prÃªts pour le tÃ©lÃ©chargement. Veuillez utiliser les liens fournis ci-dessous pour y accÃ©der ensuiteÂ :</p> \n{foreach from=$DOWNLOADS item=download} \n<p><strong>{$download.name}:</strong> (Lien expire le {$download.expire}<strong>)</strong><br /> \n{$download.url}</p> \n{/foreach}\n<p>Si les liens ci-dessus ne fonctionnent pas, veuillez essayer de les copier et coller dans la barre d\'adresse de votre navigateur. Vous pouvez Ã©galement accÃ©der Ã  ces fichiers Ã  partir de votre espace client de notre site Web.</p> \n<p>&nbsp;</p>','Bonjour {$DATA.first_name},\n \nVos fichiers numÃ©riques sont dÃ©sormais prÃªts pour le tÃ©lÃ©chargement. Veuillez utiliser les liens fournis ci-dessous pour y accÃ©der ensuiteÂ :\n \n{foreach from=$DOWNLOADS item=download} \n{$download.name}: (Lien expire le {$download.expire})\n{$download.url}\n{/foreach}\n \nSi les liens ci-dessus ne fonctionnent pas, veuillez essayer de les copier et coller dans la barre d\'adresse de votre navigateur. Vous pouvez Ã©galement accÃ©der Ã  ces fichiers Ã  partir de votre espace client de notre site Web.'),(58,'cart.gift_certificate','fr-FR','Votre bon-cadeau','<p>Cher{$DATA.name},</p> \n<p>Nous sommes ravis de vous envoyer ce bon-cadeau que vous pouvez utiliser pour l\'achat d\'un/des article(s) sur notre site Web.</p> \n<p>Bon shoppingÂ !</p> \n<p><strong>DeÂ : </strong>{$DATA.first_name} {$DATA.last_name}<br /> \n<strong>MontantÂ : </strong>{$DATA.value}<br /> \n<strong>Code du bon-cadeauÂ :</strong> {$DATA.code}<br /> \n<strong>Message cadeauÂ :</strong> {$DATA.message}</p> \n<p>-------------------</p> \n<p>Pour utiliser ce bon-cadeau, veuillez entrer le &quot;code&quot; figurant sur ce dernier ci-dessus dans le champ texte appelÃ© &quot;Ajouter bon-certificat ou coupon&quot; lors du passage en caisse.</p> \n<p>Pourquoi ne pas l\'utiliser maintenantÂ ?</p>','Cher {$DATA.name},\n \nNous sommes ravis de vous envoyer ce bon-cadeau que vous pouvez utiliser pour l\'achat d\'un/des article(s) sur notre site Web.\n \nBon shoppingÂ !\n \nDeÂ : {$DATA.first_name} {$DATA.last_name}\nMontantÂ : {$DATA.value}\nCode du bon-cadeauÂ : {$DATA.code}\nMessage cadeauÂ : {$DATA.message}\n \n-------------------\n \nPour utiliser ce bon-cadeau, veuillez entrer le Â«Â code bon-cadeauÂ Â» ci-dessus dans le champ texte appelÃ© Â«Â Ajouter bon-certificat ou couponÂ Â» lors du passage en caisse.\n \nPourquoi ne pas l\'utiliser maintenantÂ ?'),(59,'catalogue.tell_friend','fr-FR','{$DATA.from} a recommandÃ© quelque chose','Cher {$DATA.to},\n<p>Votre ami <strong>{$DATA.from}</strong> a pensÃ© que vous pourriez Ãªtre intÃ©ressÃ© par <strong>{$DATA.name}</strong>.</p> \n<p><strong>Lien du produitÂ :</strong> <a href=\"{$DATA.link}\">{$DATA.name}</a></p> \n<p>{$DATA.message}</p>','Cher {$DATA.to},\n \nVotre ami {$DATA.from} a pensÃ© que vous pourriez Ãªtre intÃ©ressÃ© par \'{$DATA.name}\'.\n \n{$DATA.name}\nLien du produitÂ : {$DATA.link}\n \n{$DATA.message}'),(60,'cart.payment_received','fr-FR','Merci pour votre paiementÂ !','<p>Bonjour {$DATA.first_name},</p> \n<p>Merci. Nous avons reÃ§u un paiement de {$DATA.total} pour le numÃ©ro de commande {$DATA.cart_order_id}.</p>','Bonjour {$DATA.first_name},\n \nMerci. Nous avons reÃ§u un paiement de {$DATA.total} pour le numÃ©ro de commande {$DATA.cart_order_id}.'),(61,'admin.password_recovery','nl-NL','\n	Beheerders Wachtwoord Herstellen \n	  ','<p>Beste {$DATA.name},</p> \n	<p>Klik op onderstaande link om weer toegang te krijgen tot het beheerders bedieningspaneel:</p> \n	<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p> \n	<p>Kopieer en plak bovenstaande link in de adresbalk van uw browser, mits de link niet werkt.</p>','Beste {$DATA.name},\n	 \n	Klik op onderstaande link om weer toegang te krijgen tot het beheerders bedieningspaneel:\n	 \n	{$DATA.link}\n	 \n	Kopieer en plak bovenstaande link in de adresbalk van uw browser, mits de link niet werkt.'),(62,'cart.order_complete','nl-NL','\n	Bestelling voltooid \n	  ','<p>Hallo {$DATA.first_name},</p> \n	<p>Het verheugd ons om te vertellen dat order nummer {$DATA.cart_order_id} is voltooid. Wanneer u een fysiek product heeft besteld dan zal deze binnenkort arriveren.</p>','Hallo {$DATA.first_name},\n	 \n	Het verheugd ons om te vertellen dat order nummer {$DATA.cart_order_id} is voltooid. Wanneer u een fysiek product heeft besteld dan zal deze binnenkort arriveren.'),(63,'cart.order_cancelled','nl-NL','\n	Bestelling geannuleerd \n	  ','<p>Hallo {$DATA.first_name},</p> \n	<p>Bestelnummer {$DATA.cart_order_id} is geannuleerd.</p>','Hallo {$DATA.first_name},\n	 \n	Bestelnummer {$DATA.cart_order_id} is geannuleerd.'),(64,'cart.order_confirmation','nl-NL','\n	Bestellingsbevestiging #{$DATA.cart_order_id} \n	  ','<p>Bedankt {$DATA.first_name}!</p>\n	<p>uw bestelling {$DATA.cart_order_id} is ontvangen en is geplaatst op {$DATA.order_date}. Bewaar alstublief deze email ter referentie. U kunt de status van uw bestelling online bekijken.</p> \n	<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n	<table width=\"100%\">\n	  <tr>\n	    <td valign=\"top\" width=\"50%\"><strong>Factuuradres:</strong><br />\n	      {$BILLING.first_name} {$BILLING.last_name}<br />\n	      {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n	      {/if}\n	      {$BILLING.line1}<br />\n	      {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n	      {/if}\n	      {$BILLING.town}<br />\n	      {$BILLING.state}<br />\n	      {$BILLING.postcode}<br />\n	      {$BILLING.country}<br />\n	      {$BILLING.phone}<br />\n	      <br />\n	      <strong>Email:</strong><br />\n	      {$BILLING.email}</td>\n	    <td valign=\"top\" width=\"50%\"><strong>Bezorgadres:</strong><br />\n	      {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n	      {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n	      {/if}{$SHIPPING.line1}<br />\n	      {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n	      {/if}{$SHIPPING.town}<br />\n	      {$SHIPPING.state}<br />\n	      {$SHIPPING.postcode}<br />\n	      {$SHIPPING.country}</td>\n	  </tr>\n	</table>\n	<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n	  <tbody>\n	    <tr>\n	      <td><strong>Item</strong></td>\n	      <td><strong>Hoeveelheid</strong></td>\n	      <td><strong>Kosten</strong></td>\n	    </tr>\n	  {foreach from=$PRODUCTS item=product}\n	  <tr>\n	    <td>{$product.name} <br />{$product.product_options}</td>\n	    <td>{$product.quantity}</td>\n	    <td>{$product.price}</td>\n	  </tr>\n	  {/foreach}\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td> Verzendmethode: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n	    <td> {$DATA.shipping}</td>\n	  </tr>\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td> Korting:</td>\n	    <td> {$DATA.discount}</td>\n	  </tr>\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td> Subtotaal:</td>\n	    <td> {$DATA.subtotal}</td>\n	  </tr>\n	  {foreach from=$TAXES item=tax}\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n	    <td> {$tax.tax_amount}</td>\n	  </tr>\n	  {/foreach}\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td><strong>Bestelling Totaal: </strong></td>\n	    <td><strong>{$DATA.total}</strong></td>\n	  </tr>\n	  </tbody>\n	  \n	</table>','Bedankt {$DATA.first_name}!\n	\n	Uw bestelling {$DATA.cart_order_id} is ontvangen en is geplaatst op {$DATA.order_date}. Bewaar alstublief deze email ter referentie. U kunt de status van uw bestelling online bekijken.\n	\n	{$DATA.link}\n	\n	----------------------------------------------------------------------\n	Factuuradres:\n	  {$BILLING.first_name} {$BILLING.last_name}\n	  {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n	  {/if}{$BILLING.line1}\n	  {if !empty({$BILLING.line2})}{$BILLING.line2}\n	  {/if}{$BILLING.town}\n	  {$BILLING.state}\n	  {$BILLING.postcode}\n	  {$BILLING.country}\n	  {$BILLING.phone}\n	\n	Email:\n	  {$BILLING.email}\n	\n	Bezorgadres:\n	  {$SHIPPING.first_name} {$SHIPPING.last_name}\n	  {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n	  {/if}{$SHIPPING.line1}\n	  {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n	  {/if}{$SHIPPING.town}\n	  {$SHIPPING.state}\n	  {$SHIPPING.postcode}\n	  {$SHIPPING.country}\n	\n	----------------------------------------------------------------------\n	Items in uw bestelling\n	\n	{foreach from=$PRODUCTS item=product}\n	-----------------------------------\n	{$product.name}\n	{$product.product_options}\n	\n	  Producttype Nummer: {$product.product_code}\n	  Stuk Prijs: {$product.price}\n	  Hoeveelheid: {$product.quantity}\n	\n	{/foreach}\n	-----------------------------------\n	  Subtotaal: {$DATA.subtotal}\n	  korting: {$DATA.discount}\n	  Verzending: {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n	  {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n	  {/foreach}\n	  --------------------------\n	  Bestelling totaal: {$DATA.total}\n	  =========================='),(65,'cart.payment_fraud','nl-NL','\n	Bestelling probleem \n	  ','<p>Hallo {$DATA.first_name},</p> \n	<p>Het spijt ons heel erg maar We konden de betaling niet ontvangen voor bestelling {$DATA.cart_order_id}. Mochten er vragen zijn dan kunt u het beste contact opnemen met onze medewerkers.</p>','Hallo {$DATA.first_name},\n	 \n	Het spijt ons heel erg maar We konden de betaling niet ontvangen voor bestelling {$DATA.cart_order_id}. Mochten er vragen zijn dan kunt u het beste contact opnemen met onze medewerkers.'),(66,'account.password_recovery','nl-NL','\n	Wachtwoord herstellen \n	','<p>Beste {$DATA.first_name} {$DATA.last_name},<br /> \n	<br /> \n	Om uw wachtwoord te herestellen kunt u op onderstaande link klikken of deze kopieren en plakken in de adresbalk van uw browser. Op de pagina wordt u gevraagd uw nieuwe wachtwoord in te voeren en te veriefieren.<br /> \n	<br /> \n	{$DATA.reset_link}<br /> \n	<br /> \n	Wanneer u meer ondersteuning nodigt heeft, dan kunt u altijd contact met ons opnemen.</p>','Hi {$DATA.first_name},\n	 \n	Om uw wachtwoord te herestellen kunt u op onderstaande link klikken of deze kopieren en plakken in de adresbalk van uw browser. Op de pagina wordt u gevraagd uw nieuwe wachtwoord in te voeren en te veriefieren.\n	 \n	{$DATA.reset_link}\n	 \n	Wanneer u meer ondersteuning nodigt heeft, dan kunt u altijd contact met ons opnemen.'),(67,'admin.order_received','nl-NL','\n	Nieuwe bestelling #{$DATA.cart_order_id} \n	  ','<p>{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if} zojuist geplaatst order nummer {$DATA.cart_order_id} op {$DATA.order_date}.</p>\n	<p>Deze bestelling kan online worden beheerd door op de onderstaande link te klikken.</p> \n	<p><a href=\"{$DATA.link}\">{$DATA.link}</a></p>\n	<table width=\"100%\">\n	  <tr>\n	    <td valign=\"top\" width=\"50%\"><strong>Factuuradres:</strong><br />\n	      {$BILLING.first_name} {$BILLING.last_name}<br />\n	      {if !empty({$BILLING.company_name})}{$BILLING.company_name}<br />\n	      {/if}\n	      {$BILLING.line1}<br />\n	      {if !empty({$BILLING.line2})}{$BILLING.line2}<br />\n	      {/if}\n	      {$BILLING.town}<br />\n	      {$BILLING.state}<br />\n	      {$BILLING.postcode}<br />\n	      {$BILLING.country}<br />\n	      {$BILLING.phone}<br />\n	      <br />\n	      <strong>Email:</strong><br />\n	      {$BILLING.email}</td>\n	    <td valign=\"top\" width=\"50%\"><strong>Bezorgadres:</strong><br />\n	      {$SHIPPING.first_name} {$SHIPPING.last_name}<br />\n	      {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name} <br />\n	      {/if}{$SHIPPING.line1}<br />\n	      {if !empty({$SHIPPING.line2})}{$SHIPPING.line2} <br />\n	      {/if}{$SHIPPING.town}<br />\n	      {$SHIPPING.state}<br />\n	      {$SHIPPING.postcode}<br />\n	      {$SHIPPING.country}</td>\n	  </tr>\n	</table>\n	<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\n	  <tbody>\n	    <tr>\n	      <td><strong>Item</strong></td>\n	      <td><strong>Hoeveelheid</strong></td>\n	      <td><strong>Kosten</strong></td>\n	    </tr>\n	  {foreach from=$PRODUCTS item=product}\n	  <tr>\n	    <td>{$product.name} <br />{$product.product_options}</td>\n	    <td>{$product.quantity}</td>\n	    <td>{$product.price}</td>\n	  </tr>\n	  {/foreach}\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td> Verzendmethode: {if $DATA.ship_method}({$DATA.ship_method}){/if}</td>\n	    <td> {$DATA.shipping}</td>\n	  </tr>\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td> Korting:</td>\n	    <td> {$DATA.discount}</td>\n	  </tr>\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td> Subtotaal:</td>\n	    <td> {$DATA.subtotal}</td>\n	  </tr>\n	  {foreach from=$TAXES item=tax}\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td> {$tax.tax_name}: ({$tax.tax_percent}%)</td>\n	    <td> {$tax.tax_amount}</td>\n	  </tr>\n	  {/foreach}\n	  <tr>\n	    <td>&nbsp;</td>\n	    <td><strong>Bestelling Totaal: </strong></td>\n	    <td><strong>{$DATA.total}</strong></td>\n	  </tr>\n	  </tbody>\n	  \n	</table>','{$DATA.first_name} {$DATA.last_name} {if !empty({$BILLING.company_name})}({$BILLING.company_name}){/if}  zojuist geplaatst order nummer {$DATA.cart_order_id} op {$DATA.order_date}.\n	\n	Deze bestelling kan online worden beheerd door op de onderstaande link te klikken.\n	\n	{$DATA.link}\n	\n	----------------------------------------------------------------------\n	Factuuradres:\n	  {$BILLING.first_name} {$BILLING.last_name}\n	  {if !empty({$BILLING.company_name})}{$BILLING.company_name}\n	  {/if}{$BILLING.line1}\n	  {if !empty({$BILLING.line2})}{$BILLING.line2}\n	  {/if}{$BILLING.town}\n	  {$BILLING.state}\n	  {$BILLING.postcode}\n	  {$BILLING.country}\n	  {$BILLING.phone}\n	\n	Email:\n	  {$BILLING.email}\n	\n	Bezorgadres:\n	  {$SHIPPING.first_name} {$SHIPPING.last_name}\n	  {if !empty({$SHIPPING.company_name})}{$SHIPPING.company_name}\n	  {/if}{$SHIPPING.line1}\n	  {if !empty({$SHIPPING.line2})}{$SHIPPING.line2}\n	  {/if}{$SHIPPING.town}\n	  {$SHIPPING.state}\n	  {$SHIPPING.postcode}\n	  {$SHIPPING.country}\n	\n	----------------------------------------------------------------------\n	Items in uw bestelling\n	\n	{foreach from=$PRODUCTS item=product}\n	-----------------------------------\n	{$product.name}\n	{$product.product_options}\n	\n	  Producttype Nummer: {$product.product_code}\n	  Stuk Prijs: {$product.price}\n	  Hoeveelheid: {$product.quantity}\n	\n	{/foreach}\n	-----------------------------------\n	  Subtotaal: {$DATA.subtotal}\n	  korting: {$DATA.discount}\n	  Verzending: {$DATA.shipping} {if $DATA.ship_method}({$DATA.ship_method}){/if}\n	  {foreach from=$TAXES item=tax}{$tax.tax_name} ({$tax.tax_percent}%): {$tax.tax_amount}\n	  {/foreach}\n	  --------------------------\n	  Bestelling totaal: {$DATA.total}\n	  =========================='),(68,'admin.review_added','nl-NL','\n	Nieuwe product beoordeling \n	  ','{$DATA.name} heeft een nieuwe beoordeling/reactie geplaatst over \'{$DATA.product_name}\'. Deze kan met de onderstande link worden beheerd.\n	<p><strong>Beheer Link:</strong><br /><a href=\'{$DATA.link}\'>{$DATA.link}</a></p> \n	<p><strong>Beoordeling Tekst:</strong><br />{$DATA.review}</p>','{$DATA.name} heeft een nieuwe beoordeling/reactie geplaatst over \'{$DATA.product_name}\'. Deze kan met de onderstande link worden beheerd.\n	 \n	Beheer Link: \n	{$DATA.link}\n	Beoordeling Tekst:\n	{$DATA.review}'),(69,'cart.digital_download','nl-NL','\n	 Uw Gekochte Downloads \n	  ','<p>Hallo {$DATA.first_name},</p> \n	<p>Uw digitale bestanden zijn klaar om gedownload te worden. Om toegang tot ze te krijgen kunt u de onderstaande links gebruiken:</p> \n	{foreach from=$DOWNLOADS item=download} \n	<p><strong>{$download.name}:</strong> (Link vervalt op {$download.expire}<strong>)</strong><br /> \n	{$download.url}</p> \n	{/foreach}\n	<p>Wanneer bovenstaande links niet werken, kunt ut proberen ze te kopieren en te plakken in de adresbalk van uw browser. U kunt ook toegang tot deze bestanden krijgen via de klanten sectie van onze website.</p> \n	<p>&nbsp;</p>','Hallo {$DATA.first_name},\n	 \n	Uw digitale bestanden zijn klaar om gedownload te worden. Om toegang tot ze te krijgen kunt u de onderstaande links gebruiken:\n	 \n	{foreach from=$DOWNLOADS item=download} \n	{$download.name}: (Link expires on {$download.expire})\n	{$download.url}\n	{/foreach}\n	 \n	Wanneer bovenstaande links niet werken, kunt ut proberen ze te kopieren en te plakken in de adresbalk van uw browser. U kunt ook toegang tot deze bestanden krijgen via de klanten sectie van onze website.'),(70,'cart.gift_certificate','nl-NL','\n	Uw Cadeaubon \n	  ','<p>Beste {$DATA.name},</p> \n	<p>Wij zijn verheugd dat wij u deze cadeaubon toe mogen sturen, welke u kan gebruiken voor ieder gewenst product op de website.</p> \n	<p>Veel Winkel Plezier!</p> \n	<p><strong>Van: </strong>{$DATA.first_name} {$DATA.last_name}<br /> \n	<strong>Waarde: </strong>{$DATA.value}<br /> \n	<strong>Claim Code:</strong> {$DATA.code}<br /> \n	<strong>Bericht bij Cadeau:</strong> {$DATA.message}</p> \n	<p>-------------------</p> \n	<p>Om uw cadeaubon in te gebruiken voer a.u.b de &quot;Cadeaubon Code&quot; boven in het tekstveld genaamd &quot;Voeg Cadeaubon of Coupon toe&quot; tijdens het afrekenen.</p> \n	<p>Waarom zou u het nu niet uitgeven?</p>','Beste {$DATA.name},\n	 \n	Wij zijn verheugd dat wij u deze cadeaubon toe mogen sturen, welke u kan gebruiken voor ieder gewenst product op de website.\n	 \n	Veel Winkel Plezier!\n	 \n	From: {$DATA.first_name} {$DATA.last_name}\n	Amount: {$DATA.value}\n	Claim Code: {$DATA.code}\n	Gift Message: {$DATA.message}\n	 \n	-------------------\n	 \n	Om uw cadeaubon in te gebruiken voer a.u.b de &quot;Cadeaubon Code&quot; boven in het tekstveld genaamd &quot;Voeg Cadeaubon of Coupon toe&quot; tijdens het afrekenen.</p>\n	 \n	Waarom zou u het nu niet uitgeven?'),(71,'catalogue.tell_friend','nl-NL','\n	{$DATA.from} heeft iets aangeraden \n	  ','Beste {$DATA.to},\n	<p>Uw vriend <strong>{$DATA.from}</strong> dacht dat u misschien geintreseerd zou zijn in <strong>{$DATA.name}</strong>.</p> \n	<p><strong>Product Link:</strong> <a href=\"{$DATA.link}\">{$DATA.name}</a></p> \n	<p>{$DATA.message}</p>','Beste {$DATA.to},\n	 \n	Uw vriend {$DATA.from} dacht dat u misschien geintreseerd zou zijn in \'{$DATA.name}\'.\n	 \n	{$DATA.name}\n	Product Link: {$DATA.link}\n	 \n	{$DATA.message}'),(72,'cart.payment_received','nl-NL','\n	 Bedankt voor uw betaling \n	  ','<p>Hallo {$DATA.first_name},</p> \n	<p>Bedankt. We hebben een betaling van {$DATA.total} ontvangen voor bestelnummer {$DATA.cart_order_id}.</p>','Hallo {$DATA.first_name},\n	 \n	We hebben een betaling van {$DATA.total} ontvangen voor bestelnummer {$DATA.cart_order_id}.');
/*!40000 ALTER TABLE `cubecart_CubeCart_email_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_email_template`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_default` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_email_template`
--

LOCK TABLES `cubecart_CubeCart_email_template` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_email_template` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_email_template` VALUES (1,'1','Default Emails','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n<style type=\"text/css\">\r\nhtml, body, table {\r\n	font-family: Arial;\r\n	font-size: 14px;\r\n}\r\n</style>\r\n<title>Default HTML Template</title>\r\n</head>\r\n<body bgcolor=\"#f7f7f7\">\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n  <tbody>\r\n    <tr>\r\n      <td align=\"center\"><table bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"15\" cellspacing=\"0\" width=\"580\">\r\n          <tbody>\r\n            <tr>\r\n              <td><a href=\"{$DATA.storeURL}\"><img alt=\"{$DATA.storeName}\" border=\"0\" src=\"{$DATA.logoURL}\" /></a></td>\r\n            </tr>\r\n            <tr>\r\n              <td> {$EMAIL_CONTENT}</td>\r\n            </tr>\r\n            <tr>\r\n              <td><p> Kind regards,</p>\r\n                <p> The {$DATA.storeName} Staff<br />\r\n                  <a href=\"{$DATA.storeURL}\">{$DATA.storeURL}</a></p></td>\r\n            </tr>\r\n          </tbody>\r\n        </table></td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n</body>\r\n</html>','{$EMAIL_CONTENT}\r\n\r\nKind regards,\r\n\r\nThe {$DATA.storeName} Staff\r\n{$DATA.storeURL}'),(2,'0','Default Newsletter','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n<style type=\"text/css\">\r\nhtml, body, table {\r\n	font-family: Arial;\r\n	font-size: 14px;\r\n}\r\n</style>\r\n<title>Default HTML Newsletter Template</title>\r\n</head>\r\n<body bgcolor=\"#f7f7f7\">\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n  <tbody>\r\n    <tr>\r\n      <td align=\"center\"><table bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"15\" cellspacing=\"0\" width=\"580\">\r\n          <tbody>\r\n            <tr>\r\n              <td><a href=\"{$DATA.storeURL}\"><img src=\"{$DATA.logoURL}\" alt=\"{$DATA.storeName}\" border=\"0\" /></a></td>\r\n            </tr>\r\n            <tr>\r\n              <td>{$EMAIL_CONTENT}</td>\r\n            </tr>\r\n            <tr>\r\n              <td><p>Kind regards,</p>\r\n                <p>The {$DATA.storeName} Staff<br />\r\n                  <a href=\"{$DATA.storeURL}\">{$DATA.storeURL}</a></p>\r\n                <hr size=\"1\" />\r\n                <p><font size=\"2\">To unsubscribe please follow the link below:<br />\r\n                  <a href=\"{$DATA.unsubscribeURL}\">{$DATA.unsubscribeURL}</a></font></p></td>\r\n            </tr>\r\n          </tbody>\r\n        </table></td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n</body>\r\n</html>','{$EMAIL_CONTENT}\r\n\r\nKind regards,\r\n\r\nThe {$DATA.storeName} Staff\r\n{$DATA.storeURL}\r\n\r\n-------------------\r\n\r\nTo unsubscribe please follow the link below:\r\n{$DATA.unsubscribeURL}');
/*!40000 ALTER TABLE `cubecart_CubeCart_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_filemanager`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_filemanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_filemanager` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filesize` int(10) unsigned NOT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_filemanager`
--

LOCK TABLES `cubecart_CubeCart_filemanager` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_filemanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_filemanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_geo_country`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_geo_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_geo_country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iso` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varbinary(80) NOT NULL DEFAULT '',
  `iso3` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` smallint(3) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`iso`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_geo_country`
--

LOCK TABLES `cubecart_CubeCart_geo_country` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_geo_country` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_geo_country` VALUES (1,'AF',_binary 'Afghanistan','AFG',004),(2,'AL',_binary 'Albania','ALB',008),(3,'DZ',_binary 'Algeria','DZA',012),(4,'AS',_binary 'American Samoa','ASM',016),(5,'AD',_binary 'Andorra','AND',020),(7,'AI',_binary 'Anguilla','AIA',660),(8,'AQ',_binary 'Antarctica','ATA',010),(9,'AG',_binary 'Antigua and Barbuda','ATG',028),(10,'AR',_binary 'Argentina','ARG',032),(12,'AW',_binary 'Aruba','ABW',533),(13,'AU',_binary 'Australia','AUS',036),(14,'AT',_binary 'Austria','AUT',040),(15,'AZ',_binary 'Azerbaijan','AZE',031),(16,'BS',_binary 'Bahamas','BHS',044),(17,'BH',_binary 'Bahrain','BHR',048),(18,'BD',_binary 'Bangladesh','BGD',050),(19,'BB',_binary 'Barbados','BRB',052),(20,'BY',_binary 'Belarus','BLR',112),(21,'BE',_binary 'Belgium','BEL',056),(22,'BZ',_binary 'Belize','BLZ',084),(23,'BJ',_binary 'Benin','BEN',204),(24,'BM',_binary 'Bermuda','BMU',060),(25,'BT',_binary 'Bhutan','BTN',064),(26,'BO',_binary 'Bolivia','BOL',068),(27,'BA',_binary 'Bosnia and Herzegovina','BIH',070),(28,'BW',_binary 'Botswana','BWA',072),(29,'BV',_binary 'Bouvet Island','BVT',074),(30,'BR',_binary 'Brazil','BRA',076),(31,'IO',_binary 'British Indian Ocean Territory','IOT',086),(32,'BN',_binary 'Brunei Darussalam','BRN',096),(33,'BG',_binary 'Bulgaria','BGR',100),(34,'BF',_binary 'Burkina Faso','BFA',854),(35,'BI',_binary 'Burundi','BDI',108),(36,'KH',_binary 'Cambodia','KHM',116),(37,'CM',_binary 'Cameroon','CMR',120),(38,'CA',_binary 'Canada','CAN',124),(39,'CV',_binary 'Cape Verde','CPV',132),(40,'KY',_binary 'Cayman Islands','CYM',136),(41,'CF',_binary 'Central African Republic','CAF',140),(42,'TD',_binary 'Chad','TCD',148),(43,'CL',_binary 'Chile','CHL',152),(44,'CN',_binary 'China','CHN',156),(45,'CX',_binary 'Christmas Island','CXR',162),(46,'CC',_binary 'Cocos (Keeling) Islands','CCK',166),(47,'CO',_binary 'Colombia','COL',170),(48,'KM',_binary 'Comoros','COM',174),(49,'CG',_binary 'Congo','COG',178),(50,'CD',_binary 'Congo, the Democratic Republic of the','COD',180),(51,'CK',_binary 'Cook Islands','COK',184),(52,'CR',_binary 'Costa Rica','CRI',188),(53,'CI',_binary 'Cote D\'Ivoire','CIV',384),(54,'HR',_binary 'Croatia','HRV',191),(55,'CU',_binary 'Cuba','CUB',192),(56,'CY',_binary 'Cyprus','CYP',196),(57,'CZ',_binary 'Czech Republic','CZE',203),(58,'DK',_binary 'Denmark','DNK',208),(59,'DJ',_binary 'Djibouti','DJI',262),(60,'DM',_binary 'Dominica','DMA',212),(61,'DO',_binary 'Dominican Republic','DOM',214),(62,'EC',_binary 'Ecuador','ECU',218),(63,'EG',_binary 'Egypt','EGY',818),(64,'SV',_binary 'El Salvador','SLV',222),(65,'GQ',_binary 'Equatorial Guinea','GNQ',226),(66,'ER',_binary 'Eritrea','ERI',232),(67,'EE',_binary 'Estonia','EST',233),(68,'ET',_binary 'Ethiopia','ETH',231),(69,'FK',_binary 'Falkland Islands (Malvinas)','FLK',238),(70,'FO',_binary 'Faroe Islands','FRO',234),(71,'FJ',_binary 'Fiji','FJI',242),(72,'FI',_binary 'Finland','FIN',246),(73,'FR',_binary 'France','FRA',250),(74,'GF',_binary 'French Guiana','GUF',254),(75,'PF',_binary 'French Polynesia','PYF',258),(76,'TF',_binary 'French Southern Territories','ATF',260),(77,'GA',_binary 'Gabon','GAB',266),(78,'GM',_binary 'Gambia','GMB',270),(79,'GE',_binary 'Georgia','GEO',268),(80,'DE',_binary 'Germany','DEU',276),(81,'GH',_binary 'Ghana','GHA',288),(82,'GI',_binary 'Gibraltar','GIB',292),(83,'GR',_binary 'Greece','GRC',300),(84,'GL',_binary 'Greenland','GRL',304),(85,'GD',_binary 'Grenada','GRD',308),(86,'GP',_binary 'Guadeloupe','GLP',312),(87,'GU',_binary 'Guam','GUM',316),(88,'GT',_binary 'Guatemala','GTM',320),(89,'GN',_binary 'Guinea','GIN',324),(90,'GW',_binary 'Guinea-Bissau','GNB',624),(91,'GY',_binary 'Guyana','GUY',328),(92,'HT',_binary 'Haiti','HTI',332),(93,'HM',_binary 'Heard Island and Mcdonald Islands','HMD',334),(94,'VA',_binary 'Holy See (Vatican City State)','VAT',336),(95,'HN',_binary 'Honduras','HND',340),(96,'HK',_binary 'Hong Kong','HKG',344),(97,'HU',_binary 'Hungary','HUN',348),(98,'IS',_binary 'Iceland','ISL',352),(99,'IN',_binary 'India','IND',356),(100,'ID',_binary 'Indonesia','IDN',360),(101,'IR',_binary 'Iran, Islamic Republic of','IRN',364),(102,'IQ',_binary 'Iraq','IRQ',368),(103,'IE',_binary 'Ireland','IRL',372),(104,'IL',_binary 'Israel','ISR',376),(105,'IT',_binary 'Italy','ITA',380),(106,'JM',_binary 'Jamaica','JAM',388),(107,'JP',_binary 'Japan','JPN',392),(108,'JO',_binary 'Jordan','JOR',400),(109,'KZ',_binary 'Kazakhstan','KAZ',398),(110,'KE',_binary 'Kenya','KEN',404),(111,'KI',_binary 'Kiribati','KIR',296),(112,'KP',_binary 'Korea, Democratic People\'s Republic of','PRK',408),(113,'KR',_binary 'Korea, Republic of','KOR',410),(114,'KW',_binary 'Kuwait','KWT',414),(115,'KG',_binary 'Kyrgyzstan','KGZ',417),(116,'LA',_binary 'Lao People\'s Democratic Republic','LAO',418),(117,'LV',_binary 'Latvia','LVA',428),(118,'LB',_binary 'Lebanon','LBN',422),(119,'LS',_binary 'Lesotho','LSO',426),(121,'LY',_binary 'Libyan Arab Jamahiriya','LBY',434),(122,'LI',_binary 'Liechtenstein','LIE',438),(123,'LT',_binary 'Lithuania','LTU',440),(124,'LU',_binary 'Luxembourg','LUX',442),(125,'MO',_binary 'Macao','MAC',446),(126,'MK',_binary 'Macedonia, the Former Yugoslav Republic of','MKD',807),(127,'MG',_binary 'Madagascar','MDG',450),(128,'MW',_binary 'Malawi','MWI',454),(129,'MY',_binary 'Malaysia','MYS',458),(130,'MV',_binary 'Maldives','MDV',462),(131,'ML',_binary 'Mali','MLI',466),(132,'MT',_binary 'Malta','MLT',470),(133,'MH',_binary 'Marshall Islands','MHL',584),(134,'MQ',_binary 'Martinique','MTQ',474),(135,'MR',_binary 'Mauritania','MRT',478),(136,'MU',_binary 'Mauritius','MUS',480),(137,'YT',_binary 'Mayotte','MYT',175),(138,'MX',_binary 'Mexico','MEX',484),(139,'FM',_binary 'Micronesia, Federated States of','FSM',583),(140,'MD',_binary 'Moldova, Republic of','MDA',498),(141,'MC',_binary 'Monaco','MCO',492),(142,'MN',_binary 'Mongolia','MNG',496),(143,'MS',_binary 'Montserrat','MSR',500),(144,'MA',_binary 'Morocco','MAR',504),(145,'MZ',_binary 'Mozambique','MOZ',508),(146,'MM',_binary 'Myanmar','MMR',104),(147,'NA',_binary 'Namibia','NAM',516),(148,'NR',_binary 'Nauru','NRU',520),(149,'NP',_binary 'Nepal','NPL',524),(150,'NL',_binary 'Netherlands','NLD',528),(151,'AN',_binary 'Netherlands Antilles','ANT',530),(152,'NC',_binary 'New Caledonia','NCL',540),(153,'NZ',_binary 'New Zealand','NZL',554),(154,'NI',_binary 'Nicaragua','NIC',558),(155,'NE',_binary 'Niger','NER',562),(156,'NG',_binary 'Nigeria','NGA',566),(157,'NU',_binary 'Niue','NIU',570),(158,'NF',_binary 'Norfolk Island','NFK',574),(159,'MP',_binary 'Northern Mariana Islands','MNP',580),(160,'NO',_binary 'Norway','NOR',578),(161,'OM',_binary 'Oman','OMN',512),(162,'PK',_binary 'Pakistan','PAK',586),(163,'PW',_binary 'Palau','PLW',585),(164,'PS',_binary 'Palestinian Territory, Occupied','PSE',275),(165,'PA',_binary 'Panama','PAN',591),(166,'PG',_binary 'Papua New Guinea','PNG',598),(167,'PY',_binary 'Paraguay','PRY',600),(168,'PE',_binary 'Peru','PER',604),(169,'PH',_binary 'Philippines','PHL',608),(170,'PN',_binary 'Pitcairn','PCN',612),(171,'PL',_binary 'Poland','POL',616),(172,'PT',_binary 'Portugal','PRT',620),(173,'PR',_binary 'Puerto Rico','PRI',630),(174,'QA',_binary 'Qatar','QAT',634),(175,'RE',_binary 'Reunion','REU',638),(176,'RO',_binary 'Romania','ROM',642),(177,'RU',_binary 'Russian Federation','RUS',643),(178,'RW',_binary 'Rwanda','RWA',646),(179,'SH',_binary 'Saint Helena','SHN',654),(180,'KN',_binary 'Saint Kitts and Nevis','KNA',659),(181,'LC',_binary 'Saint Lucia','LCA',662),(182,'PM',_binary 'Saint Pierre and Miquelon','SPM',666),(183,'VC',_binary 'Saint Vincent and the Grenadines','VCT',670),(184,'WS',_binary 'Samoa','WSM',882),(185,'SM',_binary 'San Marino','SMR',674),(186,'ST',_binary 'Sao Tome and Principe','STP',678),(187,'SA',_binary 'Saudi Arabia','SAU',682),(188,'SN',_binary 'Senegal','SEN',686),(244,'RS',_binary 'Serbia','SRB',688),(190,'SC',_binary 'Seychelles','SYC',690),(191,'SL',_binary 'Sierra Leone','SLE',694),(192,'SG',_binary 'Singapore','SGP',702),(193,'SK',_binary 'Slovakia','SVK',703),(194,'SI',_binary 'Slovenia','SVN',705),(195,'SB',_binary 'Solomon Islands','SLB',090),(196,'SO',_binary 'Somalia','SOM',706),(197,'ZA',_binary 'South Africa','ZAF',710),(198,'GS',_binary 'South Georgia and the South Sandwich Islands','SGS',239),(199,'ES',_binary 'Spain','ESP',724),(200,'LK',_binary 'Sri Lanka','LKA',144),(201,'SD',_binary 'Sudan','SDN',736),(202,'SR',_binary 'Suriname','SUR',740),(203,'SJ',_binary 'Svalbard and Jan Mayen','SJM',744),(204,'SZ',_binary 'Swaziland','SWZ',748),(205,'SE',_binary 'Sweden','SWE',752),(206,'CH',_binary 'Switzerland','CHE',756),(207,'SY',_binary 'Syrian Arab Republic','SYR',760),(208,'TW',_binary 'Taiwan','TWN',158),(209,'TJ',_binary 'Tajikistan','TJK',762),(210,'TZ',_binary 'Tanzania, United Republic of','TZA',834),(211,'TH',_binary 'Thailand','THA',764),(212,'TL',_binary 'Timor-Leste','TLS',626),(213,'TG',_binary 'Togo','TGO',768),(214,'TK',_binary 'Tokelau','TKL',772),(215,'TO',_binary 'Tonga','TON',776),(216,'TT',_binary 'Trinidad and Tobago','TTO',780),(217,'TN',_binary 'Tunisia','TUN',788),(218,'TR',_binary 'Turkey','TUR',792),(219,'TM',_binary 'Turkmenistan','TKM',795),(220,'TC',_binary 'Turks and Caicos Islands','TCA',796),(221,'TV',_binary 'Tuvalu','TUV',798),(222,'UG',_binary 'Uganda','UGA',800),(223,'UA',_binary 'Ukraine','UKR',804),(224,'AE',_binary 'United Arab Emirates','ARE',784),(225,'GB',_binary 'United Kingdom','GBR',826),(226,'US',_binary 'United States','USA',840),(227,'UM',_binary 'United States Minor Outlying Islands','UMI',581),(228,'UY',_binary 'Uruguay','URY',858),(229,'UZ',_binary 'Uzbekistan','UZB',860),(230,'VU',_binary 'Vanuatu','VUT',548),(231,'VE',_binary 'Venezuela','VEN',862),(232,'VN',_binary 'Viet Nam','VNM',704),(233,'VG',_binary 'Virgin Islands, British','VGB',092),(234,'VI',_binary 'Virgin Islands, U.s.','VIR',850),(235,'WF',_binary 'Wallis and Futuna','WLF',876),(236,'EH',_binary 'Western Sahara','ESH',732),(237,'YE',_binary 'Yemen','YEM',887),(238,'ZM',_binary 'Zambia','ZMB',894),(239,'ZW',_binary 'Zimbabwe','ZWE',716),(245,'ME',_binary 'Montenegro','MNE',499);
/*!40000 ALTER TABLE `cubecart_CubeCart_geo_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_geo_zone`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_geo_zone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `abbrev` varbinary(4) NOT NULL DEFAULT '',
  `name` varbinary(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=568 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_geo_zone`
--

LOCK TABLES `cubecart_CubeCart_geo_zone` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_geo_zone` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_geo_zone` VALUES (1,226,_binary 'AL',_binary 'Alabama'),(2,226,_binary 'AK',_binary 'Alaska'),(3,226,_binary 'AS',_binary 'American Samoa'),(4,226,_binary 'AZ',_binary 'Arizona'),(5,226,_binary 'AR',_binary 'Arkansas'),(6,226,_binary 'AF',_binary 'Armed Forces Africa'),(7,226,_binary 'AA',_binary 'Armed Forces Americas'),(8,226,_binary 'AC',_binary 'Armed Forces Canada'),(9,226,_binary 'AE',_binary 'Armed Forces Europe'),(10,226,_binary 'AM',_binary 'Armed Forces Middle East'),(11,226,_binary 'AP',_binary 'Armed Forces Pacific'),(12,226,_binary 'CA',_binary 'California'),(13,226,_binary 'CO',_binary 'Colorado'),(14,226,_binary 'CT',_binary 'Connecticut'),(15,226,_binary 'DE',_binary 'Delaware'),(16,226,_binary 'DC',_binary 'District of Columbia'),(17,226,_binary 'FM',_binary 'Federated States Of Micronesia'),(18,226,_binary 'FL',_binary 'Florida'),(19,226,_binary 'GA',_binary 'Georgia'),(20,226,_binary 'GU',_binary 'Guam'),(21,226,_binary 'HI',_binary 'Hawaii'),(22,226,_binary 'ID',_binary 'Idaho'),(23,226,_binary 'IL',_binary 'Illinois'),(24,226,_binary 'IN',_binary 'Indiana'),(25,226,_binary 'IA',_binary 'Iowa'),(26,226,_binary 'KS',_binary 'Kansas'),(27,226,_binary 'KY',_binary 'Kentucky'),(28,226,_binary 'LA',_binary 'Louisiana'),(29,226,_binary 'ME',_binary 'Maine'),(30,226,_binary 'MH',_binary 'Marshall Islands'),(31,226,_binary 'MD',_binary 'Maryland'),(32,226,_binary 'MA',_binary 'Massachusetts'),(33,226,_binary 'MI',_binary 'Michigan'),(34,226,_binary 'MN',_binary 'Minnesota'),(35,226,_binary 'MS',_binary 'Mississippi'),(36,226,_binary 'MO',_binary 'Missouri'),(37,226,_binary 'MT',_binary 'Montana'),(38,226,_binary 'NE',_binary 'Nebraska'),(39,226,_binary 'NV',_binary 'Nevada'),(40,226,_binary 'NH',_binary 'New Hampshire'),(41,226,_binary 'NJ',_binary 'New Jersey'),(42,226,_binary 'NM',_binary 'New Mexico'),(43,226,_binary 'NY',_binary 'New York'),(44,226,_binary 'NC',_binary 'North Carolina'),(45,226,_binary 'ND',_binary 'North Dakota'),(46,226,_binary 'MP',_binary 'Northern Mariana Islands'),(47,226,_binary 'OH',_binary 'Ohio'),(48,226,_binary 'OK',_binary 'Oklahoma'),(49,226,_binary 'OR',_binary 'Oregon'),(50,226,_binary 'PW',_binary 'Palau'),(51,226,_binary 'PA',_binary 'Pennsylvania'),(52,226,_binary 'PR',_binary 'Puerto Rico'),(53,226,_binary 'RI',_binary 'Rhode Island'),(54,226,_binary 'SC',_binary 'South Carolina'),(55,226,_binary 'SD',_binary 'South Dakota'),(56,226,_binary 'TN',_binary 'Tennessee'),(57,226,_binary 'TX',_binary 'Texas'),(58,226,_binary 'UT',_binary 'Utah'),(59,226,_binary 'VT',_binary 'Vermont'),(60,226,_binary 'VI',_binary 'Virgin Islands'),(61,226,_binary 'VA',_binary 'Virginia'),(62,226,_binary 'WA',_binary 'Washington'),(63,226,_binary 'WV',_binary 'West Virginia'),(64,226,_binary 'WI',_binary 'Wisconsin'),(65,226,_binary 'WY',_binary 'Wyoming'),(66,38,_binary 'AB',_binary 'Alberta'),(67,38,_binary 'BC',_binary 'British Columbia'),(68,38,_binary 'MB',_binary 'Manitoba'),(69,38,_binary 'NF',_binary 'Newfoundland'),(70,38,_binary 'NB',_binary 'New Brunswick'),(71,38,_binary 'NS',_binary 'Nova Scotia'),(72,38,_binary 'NT',_binary 'Northwest Territories'),(73,38,_binary 'NU',_binary 'Nunavut'),(74,38,_binary 'ON',_binary 'Ontario'),(75,38,_binary 'PE',_binary 'Prince Edward Island'),(76,38,_binary 'QC',_binary 'Quebec'),(77,38,_binary 'SK',_binary 'Saskatchewan'),(78,38,_binary 'YT',_binary 'Yukon Territory'),(79,80,_binary 'NDS',_binary 'Niedersachsen'),(80,80,_binary 'BAW',_binary 'Baden-Württemberg'),(81,80,_binary 'BAY',_binary 'Bayern'),(82,80,_binary 'BER',_binary 'Berlin'),(83,80,_binary 'BRG',_binary 'Brandenburg'),(84,80,_binary 'BRE',_binary 'Bremen'),(85,80,_binary 'HAM',_binary 'Hamburg'),(86,80,_binary 'HES',_binary 'Hessen'),(87,80,_binary 'MEC',_binary 'Mecklenburg-Vorpommern'),(88,80,_binary 'NRW',_binary 'Nordrhein-Westfalen'),(89,80,_binary 'RHE',_binary 'Rheinland-Pfalz'),(90,80,_binary 'SAR',_binary 'Saarland'),(91,80,_binary 'SAS',_binary 'Sachsen'),(92,80,_binary 'SAC',_binary 'Sachsen-Anhalt'),(93,80,_binary 'SCN',_binary 'Schleswig-Holstein'),(94,80,_binary 'THE',_binary 'Thüringen'),(95,14,_binary 'WIE',_binary 'Wien'),(96,14,_binary 'NO',_binary 'NiederÖsterreich'),(97,14,_binary 'OO',_binary 'OberÖsterreich'),(98,14,_binary 'SB',_binary 'Salzburg'),(99,14,_binary 'KN',_binary 'Kärnten'),(100,14,_binary 'ST',_binary 'Steiermark'),(101,14,_binary 'TI',_binary 'Tirol'),(102,14,_binary 'BL',_binary 'Burgenland'),(103,14,_binary 'VB',_binary 'Voralberg'),(104,206,_binary 'AG',_binary 'Aargau'),(105,206,_binary 'AI',_binary 'Appenzell Innerrhoden'),(106,206,_binary 'APP',_binary 'Appenzell Ausserrhoden'),(107,206,_binary 'BE',_binary 'Bern'),(108,206,_binary 'BLA',_binary 'Basel-Landschaft'),(109,206,_binary 'BS',_binary 'Basel-Stadt'),(110,206,_binary 'FR',_binary 'Freiburg'),(111,206,_binary 'GE',_binary 'Genf'),(112,206,_binary 'GL',_binary 'Glarus'),(113,206,_binary 'JUB',_binary 'Graubünden'),(114,206,_binary 'JU',_binary 'Jura'),(115,206,_binary 'LU',_binary 'Luzern'),(116,206,_binary 'NEU',_binary 'Neuenburg'),(117,206,_binary 'NW',_binary 'Nidwalden'),(118,206,_binary 'OW',_binary 'Obwalden'),(119,206,_binary 'SG',_binary 'St. Gallen'),(120,206,_binary 'SH',_binary 'Schaffhausen'),(121,206,_binary 'SO',_binary 'Solothurn'),(122,206,_binary 'SZ',_binary 'Schwyz'),(123,206,_binary 'TG',_binary 'Thurgau'),(124,206,_binary 'TE',_binary 'Tessin'),(125,206,_binary 'UR',_binary 'Uri'),(126,206,_binary 'VD',_binary 'Waadt'),(127,206,_binary 'VS',_binary 'Wallis'),(128,206,_binary 'ZG',_binary 'Zug'),(129,206,_binary 'ZH',_binary 'Zürich'),(130,199,_binary 'ACOR',_binary 'A Coruña'),(131,199,_binary 'ALAV',_binary 'Alava'),(132,199,_binary 'ALBA',_binary 'Albacete'),(133,199,_binary 'ALIC',_binary 'Alicante'),(134,199,_binary 'ALME',_binary 'Almeria'),(135,199,_binary 'ASTU',_binary 'Asturias'),(136,199,_binary 'AVIL',_binary 'Avila'),(137,199,_binary 'BADA',_binary 'Badajoz'),(138,199,_binary 'BALE',_binary 'Baleares'),(139,199,_binary 'BARC',_binary 'Barcelona'),(140,199,_binary 'BURG',_binary 'Burgos'),(141,199,_binary 'CACE',_binary 'Caceres'),(142,199,_binary 'CADI',_binary 'Cadiz'),(143,199,_binary 'CANT',_binary 'Cantabria'),(144,199,_binary 'CAST',_binary 'Castellon'),(145,199,_binary 'CEUT',_binary 'Ceuta'),(146,199,_binary 'CIUD',_binary 'Ciudad Real'),(147,199,_binary 'CORD',_binary 'Cordoba'),(148,199,_binary 'CUEN',_binary 'Cuenca'),(149,199,_binary 'GIRO',_binary 'Girona'),(150,199,_binary 'GRAN',_binary 'Granada'),(151,199,_binary 'GUAD',_binary 'Guadalajara'),(152,199,_binary 'GUIP',_binary 'Guipuzcoa'),(153,199,_binary 'HUEL',_binary 'Huelva'),(154,199,_binary 'HUES',_binary 'Huesca'),(155,199,_binary 'JAEN',_binary 'Jaen'),(156,199,_binary 'LAR',_binary 'La Rioja'),(157,199,_binary 'LAS',_binary 'Las Palmas'),(158,199,_binary 'LEON',_binary 'Leon'),(159,199,_binary 'LLEI',_binary 'Lleida'),(160,199,_binary 'LUGO',_binary 'Lugo'),(161,199,_binary 'MADR',_binary 'Madrid'),(162,199,_binary 'MALA',_binary 'Malaga'),(163,199,_binary 'MELI',_binary 'Melilla'),(164,199,_binary 'MURC',_binary 'Murcia'),(165,199,_binary 'NAVA',_binary 'Navarra'),(166,199,_binary 'OURE',_binary 'Ourense'),(167,199,_binary 'PALE',_binary 'Palencia'),(168,199,_binary 'PONT',_binary 'Pontevedra'),(169,199,_binary 'SALA',_binary 'Salamanca'),(170,199,_binary 'SANT',_binary 'Santa Cruz de Tenerife'),(171,199,_binary 'SEGO',_binary 'Segovia'),(172,199,_binary 'SEVI',_binary 'Sevilla'),(173,199,_binary 'SORI',_binary 'Soria'),(174,199,_binary 'TARR',_binary 'Tarragona'),(175,199,_binary 'TERU',_binary 'Teruel'),(176,199,_binary 'TOLE',_binary 'Toledo'),(177,199,_binary 'VALE',_binary 'Valencia'),(178,199,_binary 'VALL',_binary 'Valladolid'),(179,199,_binary 'VIZC',_binary 'Vizcaya'),(180,199,_binary 'ZAMO',_binary 'Zamora'),(181,199,_binary 'ZARA',_binary 'Zaragoza'),(415,103,_binary 'CW',_binary 'Carlow'),(416,103,_binary 'CN',_binary 'Cavan'),(417,103,_binary 'CE',_binary 'Clare'),(418,103,_binary 'C',_binary 'Cork'),(419,103,_binary 'DL',_binary 'Donegal'),(420,103,_binary 'D',_binary 'Dublin'),(421,103,_binary 'G',_binary 'Galway'),(422,103,_binary 'KY',_binary 'Kerry'),(423,103,_binary 'KE',_binary 'Kildare'),(424,103,_binary 'KK',_binary 'Kilkenny'),(425,103,_binary 'LS',_binary 'Laoighis'),(426,103,_binary 'LM',_binary 'Leitrim'),(427,103,_binary 'LK',_binary 'Limerick'),(428,103,_binary 'LD',_binary 'Longford'),(429,103,_binary 'LH',_binary 'Louth'),(430,103,_binary 'MO',_binary 'Mayo'),(431,103,_binary 'MH',_binary 'Meath'),(432,103,_binary 'MN',_binary 'Monaghan'),(433,103,_binary 'OY',_binary 'Offaly'),(434,103,_binary 'RN',_binary 'Roscommon'),(435,103,_binary 'SO',_binary 'Sligo'),(436,103,_binary 'TA',_binary 'Tipperary'),(437,103,_binary 'WD',_binary 'Waterford'),(438,103,_binary 'WH',_binary 'Westmeath'),(439,103,_binary 'WX',_binary 'Wexford'),(440,103,_binary 'WW',_binary 'Wicklow'),(441,225,_binary 'AVN',_binary 'Avon'),(442,225,_binary 'BDF',_binary 'Bedfordshire'),(443,225,_binary 'BRK',_binary 'Berkshire'),(444,225,_binary 'BKM',_binary 'Buckinghamshire'),(445,225,_binary 'CAM',_binary 'Cambridgeshire'),(446,225,_binary 'CHS',_binary 'Cheshire'),(447,225,_binary 'CLV',_binary 'Cleveland'),(448,225,_binary 'CON',_binary 'Cornwall'),(449,225,_binary 'CUL',_binary 'Cumberland'),(450,225,_binary 'CMA',_binary 'Cumbria'),(451,225,_binary 'DBY',_binary 'Derbyshire'),(452,225,_binary 'DEV',_binary 'Devon'),(453,225,_binary 'DOR',_binary 'Dorset'),(454,225,_binary 'DUR',_binary 'County Durham'),(455,225,_binary 'ESS',_binary 'Essex'),(456,225,_binary 'GLS',_binary 'Gloucestershire'),(457,225,_binary 'HAM',_binary 'Hampshire'),(458,225,_binary 'HWR',_binary 'Hereford and Worcester'),(459,225,_binary 'HEF',_binary 'Herefordshire'),(460,225,_binary 'HRT',_binary 'Hertfordshire'),(461,225,_binary 'HUM',_binary 'Humberside'),(462,225,_binary 'HUN',_binary 'Huntingdonshire'),(463,225,_binary 'IOW',_binary 'Isle of Wight'),(464,225,_binary 'KEN',_binary 'Kent'),(465,225,_binary 'LAN',_binary 'Lancashire'),(466,225,_binary 'LEI',_binary 'Leicestershire'),(467,225,_binary 'LIN',_binary 'Lincolnshire'),(468,225,_binary 'GTM',_binary 'Greater Manchester'),(469,225,_binary 'GTL',_binary 'Greater London'),(470,225,_binary 'MSY',_binary 'Merseyside'),(471,225,_binary 'MDX',_binary 'Middlesex'),(472,225,_binary 'NFK',_binary 'Norfolk'),(473,225,_binary 'NTH',_binary 'Northamptonshire'),(474,225,_binary 'NBL',_binary 'Northumberland'),(475,225,_binary 'NTT',_binary 'Nottinghamshire'),(476,225,_binary 'OXF',_binary 'Oxfordshire'),(477,225,_binary 'RUT',_binary 'Rutland'),(478,225,_binary 'SAL',_binary 'Shropshire'),(479,225,_binary 'SOM',_binary 'Somerset'),(480,225,_binary 'STS',_binary 'Staffordshire'),(481,225,_binary 'SFK',_binary 'Suffolk'),(482,225,_binary 'SRY',_binary 'Surrey'),(483,225,_binary 'SSX',_binary 'Sussex'),(484,225,_binary 'TWR',_binary 'Tyne and Wear'),(485,225,_binary 'WAR',_binary 'Warwickshire'),(486,225,_binary 'WMD',_binary 'West Midlands'),(487,225,_binary 'WES',_binary 'Westmorland'),(488,225,_binary 'WIL',_binary 'Wiltshire'),(489,225,_binary 'WOR',_binary 'Worcestershire'),(490,225,_binary 'YOK',_binary 'Yorkshire'),(491,225,_binary 'ABD',_binary 'Aberdeenshire'),(492,225,_binary 'ANS',_binary 'Angus'),(493,225,_binary 'ARL',_binary 'Argyll'),(494,225,_binary 'AYR',_binary 'Ayrshire'),(495,225,_binary 'BAN',_binary 'Banffshire'),(496,225,_binary 'BEW',_binary 'Berwickshire'),(497,225,_binary 'BUT',_binary 'Bute'),(498,225,_binary 'CAI',_binary 'Caithness'),(499,225,_binary 'CLK',_binary 'Clackmannanshire'),(500,225,_binary 'CRO',_binary 'Cromartyshire'),(501,225,_binary 'DFS',_binary 'Dumfriesshire'),(502,225,_binary 'DNB',_binary 'Dunbartonshire'),(503,225,_binary 'ELN',_binary 'East Lothian'),(504,225,_binary 'FIF',_binary 'Fife'),(505,225,_binary 'INV',_binary 'Inverness-shire'),(506,225,_binary 'KRS',_binary 'Kinross-shire'),(507,225,_binary 'KKD',_binary 'Kirkcudbrightshire'),(508,225,_binary 'LAN',_binary 'Lanarkshire'),(509,225,_binary 'MLN',_binary 'Midlothian'),(510,225,_binary 'MOR',_binary 'Moray'),(511,225,_binary 'NAI',_binary 'Nairnshire'),(512,225,_binary 'OKI',_binary 'Orkney'),(513,225,_binary 'PEE',_binary 'Peeblesshire'),(514,225,_binary 'PER',_binary 'Perthshire'),(515,225,_binary 'RFW',_binary 'Renfrewshire'),(516,225,_binary 'ROC',_binary 'Ross'),(517,225,_binary 'ROX',_binary 'Roxburghshire'),(518,225,_binary 'SEL',_binary 'Selkirkshire'),(519,225,_binary 'SHI',_binary 'Shetland'),(520,225,_binary 'STI',_binary 'Stirlingshire'),(521,225,_binary 'SUT',_binary 'Sutherland'),(522,225,_binary 'WLN',_binary 'West Lothian'),(523,225,_binary 'WIG',_binary 'Wigtownshire'),(524,225,_binary 'AGY',_binary 'Anglesey'),(525,225,_binary 'BRN',_binary 'Brecknockshire'),(526,225,_binary 'CAE',_binary 'Caernarfonshire'),(527,225,_binary 'CAD',_binary 'Cardiganshire'),(528,225,_binary 'CRR',_binary 'Carmarthenshire'),(529,225,_binary 'CLW',_binary 'Clwyd'),(530,225,_binary 'DEN',_binary 'Denbighshire'),(531,225,_binary 'DFD',_binary 'Dyfed'),(532,225,_binary 'FLN',_binary 'Flintshire'),(533,225,_binary 'GLA',_binary 'Glamorgan'),(534,225,_binary 'GNT',_binary 'Gwent'),(535,225,_binary 'GWN',_binary 'Gwynedd'),(536,225,_binary 'MER',_binary 'Merionethshire'),(537,225,_binary 'MON',_binary 'Monmouthshire'),(538,225,_binary 'MGY',_binary 'Montgomeryshire'),(539,225,_binary 'PEM',_binary 'Pembrokeshire'),(540,225,_binary 'POW',_binary 'Powys'),(541,225,_binary 'RAD',_binary 'Radnorshire'),(542,225,_binary 'ANT',_binary 'Antrim'),(543,225,_binary 'ARM',_binary 'Armagh'),(544,225,_binary 'LDY',_binary 'Londonderry'),(545,225,_binary 'DOW',_binary 'Down'),(546,225,_binary 'FER',_binary 'Fermanagh'),(547,225,_binary 'TYR',_binary 'Tyrone'),(548,150,_binary 'DR',_binary 'Drenthe'),(549,150,_binary 'FL',_binary 'Flevoland'),(550,150,_binary 'FR',_binary 'Friesland'),(551,150,_binary 'GLD',_binary 'Gelderland'),(552,150,_binary 'GR',_binary 'Groningen'),(553,150,_binary 'LI',_binary 'Limburg'),(554,150,_binary 'NB',_binary 'Noord-Brabant'),(555,150,_binary 'NH',_binary 'Noord-Holland'),(556,150,_binary 'OV',_binary 'Overijssel'),(557,150,_binary 'UT',_binary 'Utrecht'),(558,150,_binary 'ZL',_binary 'Zeeland'),(559,150,_binary 'ZH',_binary 'Zuid-Holland'),(560,13,_binary 'ACT',_binary 'Australian Capital Territory'),(561,13,_binary 'NSW',_binary 'New South Wales'),(562,13,_binary 'NT',_binary 'Northern Territory'),(563,13,_binary 'QLD',_binary 'Queensland'),(564,13,_binary 'SA',_binary 'South Australia'),(565,13,_binary 'TAS',_binary 'Tasmania'),(566,13,_binary 'VIC',_binary 'Victoria'),(567,13,_binary 'WA',_binary 'Western Australia');
/*!40000 ALTER TABLE `cubecart_CubeCart_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_history`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_history`
--

LOCK TABLES `cubecart_CubeCart_history` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_history` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_history` VALUES (1,'5.2.0',1634281784);
/*!40000 ALTER TABLE `cubecart_CubeCart_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_hooks`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_hooks` (
  `hook_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hook_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A descriptive name for the hook',
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'All hooks should be disabled by DEFAULT',
  `trigger` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The trigger used to call the hook',
  `filepath` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hook_id`),
  KEY `trigger` (`trigger`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_hooks`
--

LOCK TABLES `cubecart_CubeCart_hooks` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_hooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_hooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_image_index`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_image_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_image_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  `main_img` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`),
  KEY `productId` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_image_index`
--

LOCK TABLES `cubecart_CubeCart_image_index` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_image_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_image_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_inventory`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_inventory` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Status',
  `product_code` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Product Code',
  `quantity` int(11) NOT NULL DEFAULT '1' COMMENT 'Quantity',
  `description` text COLLATE utf8_unicode_ci COMMENT 'Description',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT 'Retail Price',
  `sale_price` decimal(16,2) DEFAULT '0.00' COMMENT 'Sale Price',
  `cost_price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT 'Cost Price',
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Product Name',
  `cat_id` int(10) unsigned DEFAULT '0' COMMENT 'Main Category ID',
  `popularity` int(10) unsigned DEFAULT '0' COMMENT 'Popularity',
  `stock_level` int(11) DEFAULT '0' COMMENT 'Main Stock Level',
  `stock_warning` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Main Stock Warning level',
  `use_stock_level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Stock Control',
  `digital` int(4) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Digital?',
  `digital_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Digital Path',
  `product_weight` decimal(10,3) DEFAULT NULL COMMENT 'Product Weight',
  `tax_type` int(10) unsigned DEFAULT NULL COMMENT 'Tax Type',
  `tax_inclusive` tinyint(1) unsigned DEFAULT '0' COMMENT 'Price inclusive of tax',
  `featured` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Included on Homepage',
  `seo_meta_title` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'SEO Meta Title',
  `seo_meta_description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'SEO Meta Description',
  `seo_meta_keywords` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'SEO Meta Keywords',
  `upc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'UPC Code',
  `ean` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'EAN Code',
  `jan` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'JAN Code',
  `isbn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ISBN Code',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date Added',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Updated',
  `manufacturer` int(10) unsigned DEFAULT NULL COMMENT 'Manufacturer ID',
  `condition` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Condition',
  PRIMARY KEY (`product_id`),
  KEY `status` (`status`),
  FULLTEXT KEY `fulltext` (`product_code`,`description`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_inventory`
--

LOCK TABLES `cubecart_CubeCart_inventory` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_inventory` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_inventory` VALUES (1,1,'TESA31',1,'This is the main copy for the product.',10.00,6.99,0.00,'Test Product',1,0,0,0,0,0,NULL,4.000,1,0,1,'','','',NULL,NULL,NULL,NULL,'2021-10-15 07:09:43','0000-00-00 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `cubecart_CubeCart_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_inventory_language`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_inventory_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_inventory_language` (
  `translation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `id` (`translation_id`),
  FULLTEXT KEY `fulltext` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_inventory_language`
--

LOCK TABLES `cubecart_CubeCart_inventory_language` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_inventory_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_inventory_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_lang_strings`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_lang_strings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_lang_strings` (
  `string_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`string_id`),
  KEY `language` (`language`),
  KEY `type` (`type`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_lang_strings`
--

LOCK TABLES `cubecart_CubeCart_lang_strings` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_lang_strings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_lang_strings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_logo`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_logo` (
  `logo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL,
  `filename` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `skin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `style` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`logo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_logo`
--

LOCK TABLES `cubecart_CubeCart_logo` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_logo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_manufacturers`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_manufacturers`
--

LOCK TABLES `cubecart_CubeCart_manufacturers` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_modules`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_modules` (
  `module_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varbinary(30) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `countries` tinytext COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL DEFAULT '1',
  KEY `module_id` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_modules`
--

LOCK TABLES `cubecart_CubeCart_modules` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_modules` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_modules` VALUES (1,'shipping',_binary 'Free_Shipping',1,1,NULL,1),(2,'gateway',_binary 'Print_Order_Form',1,1,NULL,1);
/*!40000 ALTER TABLE `cubecart_CubeCart_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_newsletter`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_newsletter` (
  `newsletter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_id` int(10) unsigned NOT NULL,
  `date_saved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_sent` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sender_email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_newsletter`
--

LOCK TABLES `cubecart_CubeCart_newsletter` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_newsletter_subscriber`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_newsletter_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `validation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`subscriber_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_newsletter_subscriber`
--

LOCK TABLES `cubecart_CubeCart_newsletter_subscriber` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_newsletter_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_newsletter_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_option_assign`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_option_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_option_assign` (
  `assign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value_id` int(10) unsigned NOT NULL DEFAULT '0',
  `set_member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `set_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `option_negative` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `option_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `option_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `matrix_include` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`assign_id`),
  KEY `member_id` (`set_member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_option_assign`
--

LOCK TABLES `cubecart_CubeCart_option_assign` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_option_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_option_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_option_group`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_option_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_option_group` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varbinary(30) NOT NULL DEFAULT '',
  `option_description` text COLLATE utf8_unicode_ci NOT NULL,
  `option_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `option_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_option_group`
--

LOCK TABLES `cubecart_CubeCart_option_group` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_option_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_option_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_option_matrix`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_option_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_option_matrix` (
  `matrix_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `options_identifier` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `cached_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_level` int(11) NOT NULL,
  `use_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ean` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jan` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `restock_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`matrix_id`),
  KEY `product_id` (`product_id`,`options_identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_option_matrix`
--

LOCK TABLES `cubecart_CubeCart_option_matrix` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_option_matrix` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_option_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_option_value`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value_name` varbinary(30) NOT NULL DEFAULT '',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `option_id` (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_option_value`
--

LOCK TABLES `cubecart_CubeCart_option_value` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_options_set`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_options_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_options_set` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_name` text COLLATE utf8_unicode_ci NOT NULL,
  `set_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_options_set`
--

LOCK TABLES `cubecart_CubeCart_options_set` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_options_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_options_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_options_set_member`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_options_set_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_options_set_member` (
  `set_member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `value_id` int(10) unsigned NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`set_member_id`),
  KEY `set_id` (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_options_set_member`
--

LOCK TABLES `cubecart_CubeCart_options_set_member` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_options_set_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_options_set_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_options_set_product`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_options_set_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_options_set_product` (
  `set_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`set_product_id`),
  KEY `set_id` (`set_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_options_set_product`
--

LOCK TABLES `cubecart_CubeCart_options_set_product` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_options_set_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_options_set_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_order_history`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_order_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_order_id` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `updated` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`history_id`),
  KEY `cart_order_id` (`cart_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_order_history`
--

LOCK TABLES `cubecart_CubeCart_order_history` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_order_inventory`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_order_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_order_inventory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `cart_order_id` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `product_options` blob,
  `digital` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `stock_updated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom` blob,
  `coupon_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options_identifier` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `cart_order_id` (`cart_order_id`),
  KEY `options_identifier` (`options_identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_order_inventory`
--

LOCK TABLES `cubecart_CubeCart_order_inventory` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_order_notes`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_order_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_order_notes` (
  `note_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `cart_order_id` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`note_id`),
  KEY `admin_id` (`admin_id`,`cart_order_id`,`time`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_order_notes`
--

LOCK TABLES `cubecart_CubeCart_order_notes` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_order_summary`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_order_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_order_summary` (
  `cart_order_id` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `subtotal` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `shipping` decimal(16,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(16,2) NOT NULL DEFAULT '0.00',
  `total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `offline_capture` blob,
  `ship_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `ship_tracking` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `line2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` smallint(3) unsigned NOT NULL,
  `title_d` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name_d` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name_d` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name_d` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line1_d` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `line2_d` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town_d` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `state_d` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `postcode_d` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_d` smallint(3) unsigned NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_comments` text COLLATE utf8_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Supports IPv6 addresses',
  `dashboard` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `discount_type` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'f',
  `basket` blob,
  `lang` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cart_order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`),
  KEY `email` (`email`),
  KEY `order_date` (`order_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_order_summary`
--

LOCK TABLES `cubecart_CubeCart_order_summary` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_order_tax`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_order_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_order_tax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_order_id` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `amount` decimal(16,2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_order_id` (`cart_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_order_tax`
--

LOCK TABLES `cubecart_CubeCart_order_tax` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_order_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_permissions`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_permissions` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `section_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `admin_id` (`admin_id`),
  KEY `section_id` (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_permissions`
--

LOCK TABLES `cubecart_CubeCart_permissions` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_pricing_group`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_pricing_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_pricing_group` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_type` int(10) unsigned NOT NULL,
  `tax_inclusive` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`price_id`),
  KEY `group_id` (`group_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_pricing_group`
--

LOCK TABLES `cubecart_CubeCart_pricing_group` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_pricing_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_pricing_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_pricing_quantity`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_pricing_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_pricing_quantity` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity` int(10) unsigned NOT NULL,
  `price` decimal(16,2) NOT NULL,
  PRIMARY KEY (`discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_pricing_quantity`
--

LOCK TABLES `cubecart_CubeCart_pricing_quantity` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_pricing_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_pricing_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_request_log`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_request_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_request_log` (
  `request_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request` blob NOT NULL,
  `result` blob NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_request_log`
--

LOCK TABLES `cubecart_CubeCart_request_log` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_request_log` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_request_log` VALUES (1,'http://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml',_binary 'null=0',_binary '<html>\r\n<head><title>301 Moved Permanently</title></head>\r\n<body>\r\n<center><h1>301 Moved Permanently</h1></center>\r\n<hr><center>Myra</center>\r\n</body>\r\n</html>\r\n','2021-10-15 07:09:43');
/*!40000 ALTER TABLE `cubecart_CubeCart_request_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_reviews`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `approved` smallint(1) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(2,1) unsigned NOT NULL DEFAULT '0.0',
  `vote_up` int(11) NOT NULL DEFAULT '0',
  `vote_down` int(11) NOT NULL DEFAULT '0',
  `anon` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Supports IPv6 addresses',
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `votes` (`vote_up`,`vote_down`),
  FULLTEXT KEY `fulltext` (`name`,`email`,`title`,`review`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_reviews`
--

LOCK TABLES `cubecart_CubeCart_reviews` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_saved_cart`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_saved_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_saved_cart` (
  `customer_id` int(10) unsigned NOT NULL,
  `basket` mediumblob NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_saved_cart`
--

LOCK TABLES `cubecart_CubeCart_saved_cart` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_saved_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_saved_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_search`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_search` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `hits` int(64) NOT NULL DEFAULT '1',
  `searchstr` varbinary(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_search`
--

LOCK TABLES `cubecart_CubeCart_search` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_seo_urls`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_seo_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_seo_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(25) unsigned DEFAULT NULL,
  PRIMARY KEY (`path`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_seo_urls`
--

LOCK TABLES `cubecart_CubeCart_seo_urls` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_seo_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_seo_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_sessions`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_sessions` (
  `session_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `session_start` int(10) unsigned NOT NULL DEFAULT '0',
  `session_last` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `location` varbinary(255) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Supports IPv6 addresses',
  `useragent` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`),
  KEY `customer_id` (`customer_id`),
  KEY `session_last` (`session_last`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_sessions`
--

LOCK TABLES `cubecart_CubeCart_sessions` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_sessions` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_sessions` VALUES ('tmtkc0gc3qvd8lgs54juj4o1d4',1634281953,1634281953,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_a=basket','127.0.0.1','python-requests/2.22.0'),('nur9dto2085k67omkq9csut6v5',1634282116,1634282116,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_a=basket','127.0.0.1','python-requests/2.22.0'),('92qr3p1stgiotjdmvpovi2j3b2',1634282125,1634282125,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?','127.0.0.1','python-requests/2.22.0'),('eifh52tf8tp00rseoo0h7atjg5',1634282125,1634282125,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_g=ajaxadd','127.0.0.1','python-requests/2.22.0'),('k5b33ncaut0eu5hfa6vgobaan5',1634282125,1634282125,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_a=basket','127.0.0.1','python-requests/2.22.0'),('cin86l4usd1p7h2koeabnke570',1634282140,1634282140,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?','127.0.0.1','python-requests/2.22.0'),('te551jgdfck232fshf72pvplb3',1634282140,1634282140,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_g=ajaxadd','127.0.0.1','python-requests/2.22.0'),('gstf2meog26mepf0i4r7bd8590',1634282140,1634282140,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_a=basket','127.0.0.1','python-requests/2.22.0'),('mn8d5fdk63tkeova00v217sg82',1634282232,1634282232,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?','127.0.0.1','python-requests/2.22.0'),('mj7tcmjgiq8jgr2qstvv9uag16',1634282232,1634282232,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_g=ajaxadd','127.0.0.1','python-requests/2.22.0'),('5mju8c3k8qq4f80f3731ktiej1',1634282232,1634282232,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_a=basket','127.0.0.1','python-requests/2.22.0'),('jm4isqhkismsb6sau5endb8b70',1634282300,1634282302,0,0,_binary 'http://127.0.0.1/cubecart-5.2.0/index.php?_a=confirm','127.0.0.1','python-requests/2.22.0');
/*!40000 ALTER TABLE `cubecart_CubeCart_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_shipping_rates`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_shipping_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `method_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `min_weight` decimal(10,3) NOT NULL DEFAULT '0.000',
  `max_weight` decimal(10,3) NOT NULL DEFAULT '0.000',
  `min_value` decimal(16,2) NOT NULL DEFAULT '0.00',
  `max_value` decimal(16,2) NOT NULL DEFAULT '0.00',
  `min_items` int(11) NOT NULL DEFAULT '0',
  `max_items` int(11) NOT NULL DEFAULT '0',
  `flat_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `weight_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `percent_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `item_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_shipping_rates`
--

LOCK TABLES `cubecart_CubeCart_shipping_rates` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_shipping_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_shipping_zones`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_shipping_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `countries` text COLLATE utf8_unicode_ci NOT NULL,
  `states` text COLLATE utf8_unicode_ci NOT NULL,
  `postcodes` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_shipping_zones`
--

LOCK TABLES `cubecart_CubeCart_shipping_zones` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_system_error_log`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_system_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_system_error_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `read` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_system_error_log`
--

LOCK TABLES `cubecart_CubeCart_system_error_log` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_system_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_system_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_tax_class`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_tax_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_tax_class`
--

LOCK TABLES `cubecart_CubeCart_tax_class` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_tax_class` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_tax_class` VALUES (1,'Standard Tax'),(2,'Reduced Rate'),(3,'Tax Exempt');
/*!40000 ALTER TABLE `cubecart_CubeCart_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_tax_details`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_tax_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_tax_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varbinary(150) NOT NULL DEFAULT '',
  `display` varbinary(150) NOT NULL DEFAULT '',
  `reg_number` varbinary(150) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_tax_details`
--

LOCK TABLES `cubecart_CubeCart_tax_details` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_tax_details` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_tax_details` VALUES (1,_binary 'VAT',_binary 'VAT','',1);
/*!40000 ALTER TABLE `cubecart_CubeCart_tax_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_tax_rates`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_tax_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL DEFAULT '1',
  `details_id` int(10) unsigned NOT NULL DEFAULT '0',
  `country_id` int(10) unsigned NOT NULL DEFAULT '0',
  `county_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tax_percent` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `goods` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_id` (`type_id`,`details_id`,`country_id`,`county_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_tax_rates`
--

LOCK TABLES `cubecart_CubeCart_tax_rates` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_tax_rates` DISABLE KEYS */;
INSERT INTO `cubecart_CubeCart_tax_rates` VALUES (1,1,1,826,0,20.0000,1,1,0),(2,2,1,826,0,5.0000,1,1,0),(3,3,1,826,0,0.0000,1,1,0);
/*!40000 ALTER TABLE `cubecart_CubeCart_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_trackback`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_trackback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_trackback` (
  `trackback_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `excerpt` tinytext COLLATE utf8_unicode_ci,
  `blog_name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`trackback_id`),
  UNIQUE KEY `url` (`url`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_trackback`
--

LOCK TABLES `cubecart_CubeCart_trackback` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_trackback` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_trackback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubecart_CubeCart_transactions`
--

DROP TABLE IF EXISTS `cubecart_CubeCart_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cubecart_CubeCart_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gateway` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `order_id` varchar(18) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `captured` decimal(16,2) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubecart_CubeCart_transactions`
--

LOCK TABLES `cubecart_CubeCart_transactions` WRITE;
/*!40000 ALTER TABLE `cubecart_CubeCart_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cubecart_CubeCart_transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15  7:19:28
