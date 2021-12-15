-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: owa
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
-- Table structure for table `owa_action_fact`
--

DROP TABLE IF EXISTS `owa_action_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_action_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `action_label` varchar(255) DEFAULT NULL,
  `action_group` varchar(255) DEFAULT NULL,
  `numeric_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_action_fact`
--

LOCK TABLES `owa_action_fact` WRITE;
/*!40000 ALTER TABLE `owa_action_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_action_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_ad_dim`
--

DROP TABLE IF EXISTS `owa_ad_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_ad_dim` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_ad_dim`
--

LOCK TABLES `owa_ad_dim` WRITE;
/*!40000 ALTER TABLE `owa_ad_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_ad_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_campaign_dim`
--

DROP TABLE IF EXISTS `owa_campaign_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_campaign_dim` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_campaign_dim`
--

LOCK TABLES `owa_campaign_dim` WRITE;
/*!40000 ALTER TABLE `owa_campaign_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_campaign_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_click`
--

DROP TABLE IF EXISTS `owa_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_click` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `last_impression_id` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_url` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  `msec` varchar(255) DEFAULT NULL,
  `click_x` int(11) DEFAULT NULL,
  `click_y` int(11) DEFAULT NULL,
  `page_width` int(11) DEFAULT NULL,
  `page_height` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `approx_position` bigint(20) DEFAULT NULL,
  `dom_element_x` int(11) DEFAULT NULL,
  `dom_element_y` int(11) DEFAULT NULL,
  `dom_element_name` varchar(255) DEFAULT NULL,
  `dom_element_id` varchar(255) DEFAULT NULL,
  `dom_element_value` varchar(255) DEFAULT NULL,
  `dom_element_tag` varchar(255) DEFAULT NULL,
  `dom_element_text` varchar(255) DEFAULT NULL,
  `dom_element_class` varchar(255) DEFAULT NULL,
  `dom_element_parent_id` varchar(255) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `placement_id` bigint(20) DEFAULT NULL,
  `ad_group_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_click`
--

LOCK TABLES `owa_click` WRITE;
/*!40000 ALTER TABLE `owa_click` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_commerce_line_item_fact`
--

DROP TABLE IF EXISTS `owa_commerce_line_item_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_commerce_line_item_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `unit_price` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `item_revenue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_commerce_line_item_fact`
--

LOCK TABLES `owa_commerce_line_item_fact` WRITE;
/*!40000 ALTER TABLE `owa_commerce_line_item_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_commerce_line_item_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_commerce_transaction_fact`
--

DROP TABLE IF EXISTS `owa_commerce_transaction_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_commerce_transaction_fact` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_source` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `total_revenue` bigint(20) DEFAULT NULL,
  `tax_revenue` bigint(20) DEFAULT NULL,
  `shipping_revenue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_commerce_transaction_fact`
--

LOCK TABLES `owa_commerce_transaction_fact` WRITE;
/*!40000 ALTER TABLE `owa_commerce_transaction_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_commerce_transaction_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_configuration`
--

DROP TABLE IF EXISTS `owa_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_configuration` (
  `id` bigint(20) NOT NULL,
  `settings` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_configuration`
--

LOCK TABLES `owa_configuration` WRITE;
/*!40000 ALTER TABLE `owa_configuration` DISABLE KEYS */;
INSERT INTO `owa_configuration` VALUES (1,_binary 'a:1:{s:4:\"base\";a:3:{s:14:\"schema_version\";i:9;s:9:\"is_active\";b:1;s:16:\"install_complete\";b:1;}}');
/*!40000 ALTER TABLE `owa_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_document`
--

DROP TABLE IF EXISTS `owa_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_document` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_document`
--

LOCK TABLES `owa_document` WRITE;
/*!40000 ALTER TABLE `owa_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_domstream`
--

DROP TABLE IF EXISTS `owa_domstream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_domstream` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `domstream_guid` bigint(20) DEFAULT NULL,
  `events` blob,
  `duration` int(11) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_domstream`
--

LOCK TABLES `owa_domstream` WRITE;
/*!40000 ALTER TABLE `owa_domstream` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_domstream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_exit`
--

DROP TABLE IF EXISTS `owa_exit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_exit` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `anchortext` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_exit`
--

LOCK TABLES `owa_exit` WRITE;
/*!40000 ALTER TABLE `owa_exit` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_exit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_feed_request`
--

DROP TABLE IF EXISTS `owa_feed_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_feed_request` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `document_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `ua_id` varchar(255) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `feed_reader_guid` varchar(255) DEFAULT NULL,
  `subscription_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` tinyint(2) DEFAULT NULL,
  `msec` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `feed_format` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_feed_request`
--

LOCK TABLES `owa_feed_request` WRITE;
/*!40000 ALTER TABLE `owa_feed_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_feed_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_host`
--

DROP TABLE IF EXISTS `owa_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_host` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `full_host` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_host`
--

LOCK TABLES `owa_host` WRITE;
/*!40000 ALTER TABLE `owa_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_impression`
--

DROP TABLE IF EXISTS `owa_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_impression` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `placement_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `ad_group_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `last_impression_id` bigint(20) DEFAULT NULL,
  `last_impression_timestamp` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `msec` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `host_id` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_impression`
--

LOCK TABLES `owa_impression` WRITE;
/*!40000 ALTER TABLE `owa_impression` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_impression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_location_dim`
--

DROP TABLE IF EXISTS `owa_location_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_location_dim` (
  `id` bigint(20) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_location_dim`
--

LOCK TABLES `owa_location_dim` WRITE;
/*!40000 ALTER TABLE `owa_location_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_location_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_os`
--

DROP TABLE IF EXISTS `owa_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_os` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_os`
--

LOCK TABLES `owa_os` WRITE;
/*!40000 ALTER TABLE `owa_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_queue_item`
--

DROP TABLE IF EXISTS `owa_queue_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_queue_item` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `event` blob,
  `insertion_datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insertion_timestamp` int(11) DEFAULT NULL,
  `handled_timestamp` int(11) DEFAULT NULL,
  `last_attempt_timestamp` int(11) DEFAULT NULL,
  `not_before_timestamp` int(11) DEFAULT NULL,
  `failed_attempt_count` int(11) DEFAULT NULL,
  `is_assigned` tinyint(1) DEFAULT NULL,
  `last_error_msg` varchar(255) DEFAULT NULL,
  `handled_by` varchar(255) DEFAULT NULL,
  `handler_duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_queue_item`
--

LOCK TABLES `owa_queue_item` WRITE;
/*!40000 ALTER TABLE `owa_queue_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_queue_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_referer`
--

DROP TABLE IF EXISTS `owa_referer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_referer` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `query_terms` varchar(255) DEFAULT NULL,
  `refering_anchortext` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `snippet` mediumtext,
  `is_searchengine` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_referer`
--

LOCK TABLES `owa_referer` WRITE;
/*!40000 ALTER TABLE `owa_referer` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_referer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_request`
--

DROP TABLE IF EXISTS `owa_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_request` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `session_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `inbound_visitor_id` bigint(20) DEFAULT NULL,
  `inbound_session_id` bigint(20) DEFAULT NULL,
  `feed_subscription_id` bigint(20) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `second` tinyint(2) DEFAULT NULL,
  `msec` int(11) DEFAULT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `prior_document_id` bigint(20) DEFAULT NULL,
  `is_comment` tinyint(1) DEFAULT NULL,
  `is_entry_page` tinyint(1) DEFAULT NULL,
  `is_browser` tinyint(1) DEFAULT NULL,
  `is_robot` tinyint(1) DEFAULT NULL,
  `is_feedreader` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_request`
--

LOCK TABLES `owa_request` WRITE;
/*!40000 ALTER TABLE `owa_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_search_term_dim`
--

DROP TABLE IF EXISTS `owa_search_term_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_search_term_dim` (
  `id` bigint(20) NOT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `term_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_search_term_dim`
--

LOCK TABLES `owa_search_term_dim` WRITE;
/*!40000 ALTER TABLE `owa_search_term_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_search_term_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_session`
--

DROP TABLE IF EXISTS `owa_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_session` (
  `id` bigint(20) NOT NULL,
  `visitor_id` bigint(20) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `referer_id` bigint(20) DEFAULT NULL,
  `ua_id` bigint(20) DEFAULT NULL,
  `host_id` bigint(20) DEFAULT NULL,
  `os_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `referring_search_term_id` bigint(20) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `yyyymmdd` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `dayofweek` varchar(10) DEFAULT NULL,
  `dayofyear` int(11) DEFAULT NULL,
  `weekofyear` int(11) DEFAULT NULL,
  `last_req` bigint(20) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_new_visitor` tinyint(1) DEFAULT NULL,
  `is_repeat_visitor` tinyint(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `days_since_prior_session` int(11) DEFAULT NULL,
  `days_since_first_session` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `ad_id` bigint(20) DEFAULT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cv1_name` varchar(255) DEFAULT NULL,
  `cv1_value` varchar(255) DEFAULT NULL,
  `cv2_name` varchar(255) DEFAULT NULL,
  `cv2_value` varchar(255) DEFAULT NULL,
  `cv3_name` varchar(255) DEFAULT NULL,
  `cv3_value` varchar(255) DEFAULT NULL,
  `cv4_name` varchar(255) DEFAULT NULL,
  `cv4_value` varchar(255) DEFAULT NULL,
  `cv5_name` varchar(255) DEFAULT NULL,
  `cv5_value` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `minute` tinyint(2) DEFAULT NULL,
  `num_pageviews` int(11) DEFAULT NULL,
  `num_comments` int(11) DEFAULT NULL,
  `is_bounce` tinyint(1) DEFAULT NULL,
  `prior_session_lastreq` bigint(20) DEFAULT NULL,
  `prior_session_id` bigint(20) DEFAULT NULL,
  `time_sinse_priorsession` int(11) DEFAULT NULL,
  `prior_session_year` tinyint(4) DEFAULT NULL,
  `prior_session_month` varchar(255) DEFAULT NULL,
  `prior_session_day` tinyint(2) DEFAULT NULL,
  `prior_session_dayofweek` int(11) DEFAULT NULL,
  `prior_session_hour` tinyint(2) DEFAULT NULL,
  `prior_session_minute` tinyint(2) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `first_page_id` bigint(20) DEFAULT NULL,
  `last_page_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `is_robot` tinyint(1) DEFAULT NULL,
  `is_browser` tinyint(1) DEFAULT NULL,
  `is_feedreader` tinyint(1) DEFAULT NULL,
  `latest_attributions` blob,
  `goal_1` tinyint(1) DEFAULT NULL,
  `goal_1_start` tinyint(1) DEFAULT NULL,
  `goal_1_value` bigint(20) DEFAULT NULL,
  `goal_2` tinyint(1) DEFAULT NULL,
  `goal_2_start` tinyint(1) DEFAULT NULL,
  `goal_2_value` bigint(20) DEFAULT NULL,
  `goal_3` tinyint(1) DEFAULT NULL,
  `goal_3_start` tinyint(1) DEFAULT NULL,
  `goal_3_value` bigint(20) DEFAULT NULL,
  `goal_4` tinyint(1) DEFAULT NULL,
  `goal_4_start` tinyint(1) DEFAULT NULL,
  `goal_4_value` bigint(20) DEFAULT NULL,
  `goal_5` tinyint(1) DEFAULT NULL,
  `goal_5_start` tinyint(1) DEFAULT NULL,
  `goal_5_value` bigint(20) DEFAULT NULL,
  `goal_6` tinyint(1) DEFAULT NULL,
  `goal_6_start` tinyint(1) DEFAULT NULL,
  `goal_6_value` bigint(20) DEFAULT NULL,
  `goal_7` tinyint(1) DEFAULT NULL,
  `goal_7_start` tinyint(1) DEFAULT NULL,
  `goal_7_value` bigint(20) DEFAULT NULL,
  `goal_8` tinyint(1) DEFAULT NULL,
  `goal_8_start` tinyint(1) DEFAULT NULL,
  `goal_8_value` bigint(20) DEFAULT NULL,
  `goal_9` tinyint(1) DEFAULT NULL,
  `goal_9_start` tinyint(1) DEFAULT NULL,
  `goal_9_value` bigint(20) DEFAULT NULL,
  `goal_10` tinyint(1) DEFAULT NULL,
  `goal_10_start` tinyint(1) DEFAULT NULL,
  `goal_10_value` bigint(20) DEFAULT NULL,
  `goal_11` tinyint(1) DEFAULT NULL,
  `goal_11_start` tinyint(1) DEFAULT NULL,
  `goal_11_value` bigint(20) DEFAULT NULL,
  `goal_12` tinyint(1) DEFAULT NULL,
  `goal_12_start` tinyint(1) DEFAULT NULL,
  `goal_12_value` bigint(20) DEFAULT NULL,
  `goal_13` tinyint(1) DEFAULT NULL,
  `goal_13_start` tinyint(1) DEFAULT NULL,
  `goal_13_value` bigint(20) DEFAULT NULL,
  `goal_14` tinyint(1) DEFAULT NULL,
  `goal_14_start` tinyint(1) DEFAULT NULL,
  `goal_14_value` bigint(20) DEFAULT NULL,
  `goal_15` tinyint(1) DEFAULT NULL,
  `goal_15_start` tinyint(1) DEFAULT NULL,
  `goal_15_value` bigint(20) DEFAULT NULL,
  `num_goals` tinyint(1) DEFAULT NULL,
  `num_goal_starts` tinyint(1) DEFAULT NULL,
  `goals_value` bigint(20) DEFAULT NULL,
  `commerce_trans_count` int(11) DEFAULT NULL,
  `commerce_trans_revenue` bigint(20) DEFAULT NULL,
  `commerce_items_revenue` bigint(20) DEFAULT NULL,
  `commerce_items_count` int(11) DEFAULT NULL,
  `commerce_items_quantity` int(11) DEFAULT NULL,
  `commerce_shipping_revenue` bigint(20) DEFAULT NULL,
  `commerce_tax_revenue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `yyyymmdd` (`yyyymmdd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_session`
--

LOCK TABLES `owa_session` WRITE;
/*!40000 ALTER TABLE `owa_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_site`
--

DROP TABLE IF EXISTS `owa_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_site` (
  `id` bigint(20) NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `site_family` varchar(255) DEFAULT NULL,
  `settings` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_site`
--

LOCK TABLES `owa_site` WRITE;
/*!40000 ALTER TABLE `owa_site` DISABLE KEYS */;
INSERT INTO `owa_site` VALUES (803531340,'1aa0d4413384d91bc0d452f03b505298','http://test.com','http://test.com','','','');
/*!40000 ALTER TABLE `owa_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_site_user`
--

DROP TABLE IF EXISTS `owa_site_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_site_user` (
  `site_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_site_user`
--

LOCK TABLES `owa_site_user` WRITE;
/*!40000 ALTER TABLE `owa_site_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_site_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_source_dim`
--

DROP TABLE IF EXISTS `owa_source_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_source_dim` (
  `id` bigint(20) NOT NULL,
  `source_domain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_source_dim`
--

LOCK TABLES `owa_source_dim` WRITE;
/*!40000 ALTER TABLE `owa_source_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_source_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_ua`
--

DROP TABLE IF EXISTS `owa_ua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_ua` (
  `id` bigint(20) NOT NULL,
  `ua` varchar(255) DEFAULT NULL,
  `browser_type` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_ua`
--

LOCK TABLES `owa_ua` WRITE;
/*!40000 ALTER TABLE `owa_ua` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_ua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_user`
--

DROP TABLE IF EXISTS `owa_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `temp_passkey` varchar(255) DEFAULT NULL,
  `creation_date` bigint(20) DEFAULT NULL,
  `last_update_date` bigint(20) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_user`
--

LOCK TABLES `owa_user` WRITE;
/*!40000 ALTER TABLE `owa_user` DISABLE KEYS */;
INSERT INTO `owa_user` VALUES (1,'admin','73d5b348ae9a48903801bc8a194aec28','admin','','admin@test.com','32d17a604232177debeeedcee6352cb7',1634278779,1634278779,'55761bca404e5fdac9cce1f79715a5d7');
/*!40000 ALTER TABLE `owa_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owa_visitor`
--

DROP TABLE IF EXISTS `owa_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owa_visitor` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `first_session_id` bigint(20) DEFAULT NULL,
  `first_session_year` int(11) DEFAULT NULL,
  `first_session_month` varchar(255) DEFAULT NULL,
  `first_session_day` int(11) DEFAULT NULL,
  `first_session_dayofyear` int(11) DEFAULT NULL,
  `first_session_timestamp` bigint(20) DEFAULT NULL,
  `first_session_yyyymmdd` bigint(20) DEFAULT NULL,
  `last_session_id` bigint(20) DEFAULT NULL,
  `last_session_year` int(11) DEFAULT NULL,
  `last_session_month` varchar(255) DEFAULT NULL,
  `last_session_day` int(11) DEFAULT NULL,
  `last_session_dayofyear` int(11) DEFAULT NULL,
  `num_prior_sessions` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owa_visitor`
--

LOCK TABLES `owa_visitor` WRITE;
/*!40000 ALTER TABLE `owa_visitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `owa_visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15  6:24:14
