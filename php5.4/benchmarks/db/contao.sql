-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: contao
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
-- Table structure for table `tl_article`
--

DROP TABLE IF EXISTS `tl_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `keywords` text,
  `showTeaser` char(1) NOT NULL DEFAULT '',
  `teaserCssID` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `printable` varchar(255) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_article`
--

LOCK TABLES `tl_article` WRITE;
/*!40000 ALTER TABLE `tl_article` DISABLE KEYS */;
INSERT INTO `tl_article` VALUES (1,2,128,1335346564,'Home','index',1,'main','','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'a:5:{i:0;s:5:\"print\";i:1;s:3:\"pdf\";i:2;s:8:\"facebook\";i:3;s:7:\"twitter\";i:4;s:5:\"gplus\";}','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(2,14,128,1195922456,'Search','search',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(4,7,128,1195921829,'Elements of Jazz Piano','elements-of-jazz-piano',2,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(5,9,128,1195918286,'Impressions','impressions',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(6,5,128,1195921874,'Services','services',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(26,26,128,1195923055,'Navigation','navigation',1,'main',NULL,'','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(9,8,128,1195909154,'News','news',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(10,4,128,1195921423,'Courses','courses',1,'main','','','',NULL,'a:5:{i:0;s:5:\"print\";i:1;s:3:\"pdf\";i:2;s:8:\"facebook\";i:3;s:7:\"twitter\";i:4;s:5:\"gplus\";}','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(11,18,128,1195926210,'Confirmation','confirmation',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(12,15,128,1195927366,'My account','my-account',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(13,16,128,1195841130,'Access denied','access-denied',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(14,12,128,1195928016,'Your data has been saved','your-data-has-been-saved',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(16,6,128,1142250167,'Violin Master Class','violin-master-class',0,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(17,3,128,1195842626,'The academy','the-academy',1,'main','','','',NULL,'a:5:{i:0;s:5:\"print\";i:1;s:3:\"pdf\";i:2;s:8:\"facebook\";i:3;s:7:\"twitter\";i:4;s:5:\"gplus\";}','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(18,20,128,1195927038,'Lost password','lost-password',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(19,21,128,1325689564,'Calendar','calendar',1,'main',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(20,24,128,1195920889,'Teachers','teachers',1,'main','','','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:2:\"24\";}','1','',''),(22,24,256,1197480763,'Helen Lewis','helen-lewis',1,'main',NULL,'1','','This is the teaser text of the article about Helen Lewis. Mrs. Lewis has been teaching at Music Academy for nearly 10 years and she has been a member of the Music Teachers Association since its inception. Click \"read more...\" to read the article.','','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:2:\"24\";}','1','',''),(29,23,128,1325689706,'Events','events',1,'main',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(25,24,384,1266311945,'James Wilson','james-wilson',1,'main',NULL,'1','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','This is the teaser text of the article about James Wilson. Mr. Wilson graduated from Music Academy in 1968 and has enjoyed international renown since then. He returned in 2010 to give lessons in traditional and contemporary Jazz Piano. Click \"read more...\" to read the article.','','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(27,27,128,1195926492,'Login','login',1,'main',NULL,'','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(28,11,128,1195928176,'Logout','logout',1,'main',NULL,'','',NULL,'','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','',''),(30,19,128,1383912589,'Page not found','page-not-found',1,'main','','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','1','','');
/*!40000 ALTER TABLE `tl_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar`
--

DROP TABLE IF EXISTS `tl_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(32) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar`
--

LOCK TABLES `tl_calendar` WRITE;
/*!40000 ALTER TABLE `tl_calendar` DISABLE KEYS */;
INSERT INTO `tl_calendar` VALUES (1,1325689474,'Music Academy Events',23,'',NULL,'','','',0,'','','',''),(2,1325689474,'Violin Master Class',23,'1',_binary 'a:1:{i:0;s:1:\"1\";}','','','',0,'','','',''),(3,1325689474,'Elements of Jazz Piano',23,'1',_binary 'a:1:{i:0;s:1:\"2\";}','','','',0,'','','','');
/*!40000 ALTER TABLE `tl_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar_events`
--

DROP TABLE IF EXISTS `tl_calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `addTime` char(1) NOT NULL DEFAULT '',
  `startTime` int(10) unsigned DEFAULT NULL,
  `endTime` int(10) unsigned DEFAULT NULL,
  `startDate` int(10) unsigned DEFAULT NULL,
  `endDate` int(10) unsigned DEFAULT NULL,
  `location` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `recurring` char(1) NOT NULL DEFAULT '',
  `repeatEach` varchar(64) NOT NULL DEFAULT '',
  `repeatEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `recurrences` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar_events`
--

LOCK TABLES `tl_calendar_events` WRITE;
/*!40000 ALTER TABLE `tl_calendar_events` DISABLE KEYS */;
INSERT INTO `tl_calendar_events` VALUES (4,2,1266311723,'Hilary Hahn in concert','hilary-hahn-in-concert',3,'1',1266001200,1266001200,1265929200,NULL,'','The Grammy-winning violinist Hilary Hahn is going to perform live at Music Academy.','',NULL,'','','','','','','','','',0,0,'',NULL,'default',0,0,'','','','','1','',''),(2,1,1266311298,'Final exams','final-exams',3,'1',1263717000,1263738600,1263682800,NULL,'','Final exams for all graduate students.','',NULL,'','','','','','','','1','a:2:{s:4:\"unit\";s:4:\"days\";s:5:\"value\";s:1:\"1\";}',1263997800,3,'',NULL,'default',0,0,'','','','','1','',''),(3,1,1266311231,'Winter holiday','winter-holiday',3,'',1261263600,1263077999,1261263600,1262991600,'','The campus will be closed during the winter holiday break.\n','',NULL,'','','','','','','','','',0,0,'',NULL,'default',0,0,'','','','','1','',''),(5,3,1266311737,'Benny Green in concert','benny-green-in-concert',3,'1',1266606000,1266606000,1266534000,NULL,'','The famous jazz pianist Benny Green is going to perform live at Music Academy.','',NULL,'','','','','','','','','',0,0,'',NULL,'default',0,0,'','','','','1','','');
/*!40000 ALTER TABLE `tl_calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar_feed`
--

DROP TABLE IF EXISTS `tl_calendar_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_calendar_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `calendars` blob,
  `format` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar_feed`
--

LOCK TABLES `tl_calendar_feed` WRITE;
/*!40000 ALTER TABLE `tl_calendar_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_comments`
--

DROP TABLE IF EXISTS `tl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `date` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(128) NOT NULL DEFAULT '',
  `comment` text,
  `addReply` char(1) NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` text,
  `published` char(1) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `notified` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `source` (`source`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_comments`
--

LOCK TABLES `tl_comments` WRITE;
/*!40000 ALTER TABLE `tl_comments` DISABLE KEYS */;
INSERT INTO `tl_comments` VALUES (1,1308647060,'tl_news',1,'1196602246','John Smith','j.smith@example.com','','<p>It is great to have him back!<br> He is the best!</p>','1',2,'Thanks a lot, John. I am happy to be back.','1','127.0.0.1','');
/*!40000 ALTER TABLE `tl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_comments_notify`
--

DROP TABLE IF EXISTS `tl_comments_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_comments_notify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `tokenConfirm` varchar(32) NOT NULL DEFAULT '',
  `tokenRemove` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `source` (`source`),
  KEY `parent` (`parent`),
  KEY `tokenConfirm` (`tokenConfirm`),
  KEY `tokenRemove` (`tokenRemove`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_comments_notify`
--

LOCK TABLES `tl_comments_notify` WRITE;
/*!40000 ALTER TABLE `tl_comments_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_comments_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_content`
--

DROP TABLE IF EXISTS `tl_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `ptable` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `html` mediumtext,
  `listtype` varchar(32) NOT NULL DEFAULT '',
  `listitems` blob,
  `tableitems` mediumblob,
  `summary` varchar(255) NOT NULL DEFAULT '',
  `thead` char(1) NOT NULL DEFAULT '',
  `tfoot` char(1) NOT NULL DEFAULT '',
  `tleft` char(1) NOT NULL DEFAULT '',
  `sortable` char(1) NOT NULL DEFAULT '',
  `sortIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `mooHeadline` varchar(255) NOT NULL DEFAULT '',
  `mooStyle` varchar(255) NOT NULL DEFAULT '',
  `mooClasses` varchar(255) NOT NULL DEFAULT '',
  `highlight` varchar(32) NOT NULL DEFAULT '',
  `shClass` varchar(255) NOT NULL DEFAULT '',
  `code` text,
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `titleText` varchar(255) NOT NULL DEFAULT '',
  `linkTitle` varchar(255) NOT NULL DEFAULT '',
  `embed` varchar(255) NOT NULL DEFAULT '',
  `rel` varchar(64) NOT NULL DEFAULT '',
  `useImage` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `perRow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortBy` varchar(32) NOT NULL DEFAULT '',
  `galleryTpl` varchar(64) NOT NULL DEFAULT '',
  `playerSRC` blob,
  `youtube` varchar(16) NOT NULL DEFAULT '',
  `posterSRC` binary(16) DEFAULT NULL,
  `playerSize` varchar(64) NOT NULL DEFAULT '',
  `autoplay` char(1) NOT NULL DEFAULT '',
  `sliderDelay` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderSpeed` int(10) unsigned NOT NULL DEFAULT '300',
  `sliderStartSlide` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sliderContinuous` char(1) NOT NULL DEFAULT '',
  `cteAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `articleAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `article` int(10) unsigned NOT NULL DEFAULT '0',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `module` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `invisible` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `ptable` (`ptable`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_content`
--

LOCK TABLES `tl_content` WRITE;
/*!40000 ALTER TABLE `tl_content` DISABLE KEYS */;
INSERT INTO `tl_content` VALUES (1,1,'',128,1195842521,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:19:\"Contao demo website\";}','A content management system is usually divided into two areas: the back end (administration area) and the front end (website). If you are reading this, you are currently viewing the front end. To log in to the back end, simply add <em>/contao</em> to your URL ({{env::path}}contao). <br />\n<br />\nWhen I was creating the example website to give people an idea of what can be done with a content management system, I tried to find a \"real world\" scenario that involved more than one person. There are a lot of different scenarios that can be done with Contao: from a simple website managed by a single administrator to a community website with a lot of members (front end users) or a company website (intranet or internet) with a lot of back end users. Finally, I came up with a college website that has different back end users and front end users.<br />\n<br />\nThe Music Academy example includes three back end users (employees) and two front end users (students). Each user has a different role. You can log in to their accounts and see how Contao looks from their perspective. Please note that academy employees (back end user) can only log in to the back end and students (front end user) can only log in to the front end. You are currently viewing the front end.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(47,1,'',192,1166779485,'headline','User accounts','','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(25,17,'tl_article',384,1343391048,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>Once you have choosen the basic page layout, you can add front end modules to your layout sections. Front end modules will be shown one below the other, so you can change the order within each column here.<br> <br> Below is a screenshot of the modules included in the default layout.</p>','1',_binary '\Ã\◊ä„∫ó\0&ªd=B','Front end modules','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','','','','below','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(2,2,'',512,1195922826,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:17:\"Search guidelines\";}','<u>1. Keyword search</u><br />\n<br />\nThis might be the default way to use a search engine. Simply enter one or more keywords and the search engine will return all pages that contain either all keywords (AND query) or at least one keyword (OR query). You can predefine the query type in the module configuration or you can change it dynamically by adding a checkbox named \"query_type\" to the search form.<br />\n<br />\n<u>2. Wildcard search</u><br />\n<br />\nBy default, the search engine searches for exact keywords only. This means that a search for <em>music</em> will not return pages containing the words <em>musical</em> or <em>musician</em>. However, if you want to search for all words that begin with music, you can add an asterisk (*) after the keyword (<em>music*</em> instead of <em>music</em>). Of course, you can also put the wildcard in front of a keyword or in the middle of a keyword.<br />\n<br />\n<u>3. Phrase search</u><br />\n<br />\nSometimes you only need results that include an exact phrase. E.g. searching for <em>music academy</em> would also return the page of a sports academy announcing an event with music and buffet. To narrow your results, simply put quotation marks around your search term (<em>\"music academy\"</em> instead of <em>music academy</em>) and the search engine will only return pages that contain the exact phrase.<br />\n<br />\n<u>4. Forcing a keyword</u><br />\n<br />\nThis feature is particularly useful when you are searching for multiple keyword (OR query) but still want ensure that a page contains a certain keyword. To force a keyword, put a plus (+) in front of it (without space). E.g. if you want to know about college fees or university fees, you are basically looking for pages that contain either the word <em>college</em> or <em>university</em> and the word <em>fees</em>. Therefor your search term should be <em>school college +fees</em>.<br />\n<br />\n<u>5. Excluding a keyword</u><br />\n<br />\nTo exclude a keyword, put a minus (-) in front of it. Thus, pages containing this keyword will not be returned. E.g. if you want to learn everything about Music Academy that has nothing to do with its campus or its courses, you should search for <em>\"music academy\" -campus -courses</em>.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"36\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(21,14,'',128,1195928133,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:24:\"Your data has been saved\";}','You can cross-check the changes you have made in the back end (module \"members\"). Select {{user::firstname}} {{user::lastname}} and take a closer look at the record.<br />\n<br />\n{{link::back}}\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(4,2,'',384,1140278146,'module','','','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,8,'',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(5,4,'',128,1195921791,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:22:\"Elements of Jazz Piano\";}','Once a user has logged in to the back end, he will be able to view all\nfront end pages and articles even if they are protected or not yet published. Therefor, if you are reading this you should either be logged in\nto the back end or you should be logged in to the front end as John Smith.<br />\n<br />\nIf you are not logged in at all (not even in another browser window) and you are still able to access this page, please go to <a href=\"https://contao.org\" onclick=\"window.open(this.href); return false;\">https://contao.org</a> and let me know ;-)\n','',NULL,'','','','','','','','','','','',_binary 'a:1:{i:0;a:1:{i:0;s:0:\"\";}}','Summary','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(6,5,'',128,1257428380,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:11:\"Impressions\";}','Here are a few impressions of the campus. This example uses a MooTools based image gallery called \"mediabox\" to show images in full size. Since version 2.5, you can split the gallery into multiple pages so it takes less time to load.','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(7,5,'tl_article',256,1380634591,'gallery','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','','',NULL,'','','a:3:{i:0;s:3:\"200\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:2:\"24\";s:3:\"top\";s:2:\"24\";s:4:\"unit\";s:2:\"px\";}','','1','','','','','','','','','','','',0,'','','','','','','','','','','','','','',_binary 'a:1:{i:0;s:16:\"\Ã÷∏êä„∫ó\0&ªd=B\";}',_binary 'a:4:{i:0;s:16:\"\Ã\÷\·Nä„∫ó\0&ªd=B\";i:1;s:16:\"\Ã\÷\Ã˛ä„∫ó\0&ªd=B\";i:2;s:16:\"\Ã\÷\◊0ä„∫ó\0&ªd=B\";i:3;s:16:\"\Ã\÷\¬˛ä„∫ó\0&ªd=B\";}','',2,0,0,'custom','gallery_default',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(8,5,'',384,1195918710,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','Contao automatically generates image thumbnails using the gdlib\nextension. You can either resize an image by entering width or height,\nor you can crop an image by entering both values.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(9,6,'',128,1195922049,'form','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,2,0,'',NULL,'','a:2:{i:0;s:3:\"tps\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(33,9,'',192,1266311703,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:14:\"Protected news\";}','<p>If you are viewing the front end without being logged in to the back end, you will see that \"James Wilson returns\" is the most recent news item. However, if you log in to the front end as Donna Evans or John Smith, another news item will appear that has not been visible before. Try their accounts and find out who is going to perform live at Music Academy in February 2010 :-)<br />\n<br />\nSince version 2.5, Contao allows to protect news archives and show their items to a particular front end user group only. Take a look at the back end to find out how protected new archives are set up.</p>','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(12,10,'',128,1195921449,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:7:\"Courses\";}','Here is a quick overview of some courses.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(13,10,'',256,1266311982,'table','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','','',NULL,'','','','','','','','','','','',_binary 'a:7:{i:0;a:4:{i:0;s:6:\"Course\";i:1;s:8:\"Students\";i:2;s:5:\"Begin\";i:3;s:11:\"Tuition fee\";}i:1;a:4:{i:0;s:19:\"Violin Master Class\";i:1;s:2:\"10\";i:2;s:10:\"2010-03-02\";i:3;s:4:\"$360\";}i:2;a:4:{i:0;s:22:\"Elements of Jazz Piano\";i:1;s:2:\"12\";i:2;s:10:\"2010-03-04\";i:3;s:4:\"$450\";}i:3;a:4:{i:0;s:18:\"Rock Guitar Basics\";i:1;s:1:\"8\";i:2;s:10:\"2010-03-11\";i:3;s:4:\"$300\";}i:4;a:4:{i:0;s:19:\"Rock Guitar Secrets\";i:1;s:1:\"8\";i:2;s:10:\"2010-03-12\";i:3;s:4:\"$380\";}i:5;a:4:{i:0;s:19:\"Modern Drum Grooves\";i:1;s:2:\"16\";i:2;s:10:\"2010-04-02\";i:3;s:4:\"$340\";}i:6;a:4:{i:0;s:24:\"Contemporary Bass Styles\";i:1;s:2:\"14\";i:2;s:10:\"2010-04-06\";i:3;s:4:\"$320\";}}','Courses','1','','','1',2,'ascending','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(14,10,'',384,1195921639,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','By default, the table is sorted by date (<em>Begin</em>). By clicking one of the column headers, you can resort it (JavaScript required). Of course, the table has been styled with CSS. Do not forget to provide a small summary of the table\'s content in order to make it accessible.<br />\n<br />\nIf you log in to the front end as Donna Evans or John Smith, you should see the protected page of the class you are attending as a subpage of this page.<br />\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(15,11,'',128,1195926441,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:33:\"We have received your term paper!\";}','Of course, nothing happens with the submitted data in our tutorial. However, if this was a real world website, you should do one of the following:<br />\r\n<br />\r\n1. Download or program a front end module that handles the form data and include it on this page.<br />\r\n<br />\r\n2. Edit the form header (using module \"form generator\") and choose to send the form data via e-mail. Enter a working e-mail address and a subject and save the form. Then go back to the front end page and submit the form again. You should now receive the form data via e-mail.<br />\r\n<br />\r\n{{link::back}}<br />\r\n<br />\r\nBy the way, the \"Go back\" link above is not a static link (of course) but a dynamic one. It was created using an \"insert tag\" called <em>link::back</em>. There are a few insert tags in Contao that help you include dynamic data.<br />\r\n<br />\r\n<a href=\"https://contao.org/insert-tags.html\" target=\"_blank\" title=\"Learn more about insert tags\">Learn more about insert tags</a><br />','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(16,12,'',128,1195927947,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:47:\"Welcome {{user::firstname}} {{user::lastname}}!\";}','To address a front end user by his name, we are using insert tags\r\nagain (you might have come across them submitting a term paper). Insert\r\ntags are special tags which allow you to include dynamic data (e.g. the\r\ncurrent date, the current user name or the current referer). Insert\r\ntags are replaced just before a page is printed to the screen, so they\r\nwill always show the correct information even if the page is cached.<br />\r\n<br />\r\n<a href=\"https://contao.org/insert-tags.html\" target=\"_blank\" title=\"Learn more about insert tags\">Learn more about insert tags</a><br />\r\n<br />\r\nBelow this paragraph you can see the \"personal data\" module in action. This module allows front end users to change their personal data. Make sure to cross-check all changes in the back end.','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(17,12,'',256,1195927968,'module','Edit your personal data','','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,9,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(19,13,'',128,1195841501,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:14:\"Access denied!\";}','You are not allowed to access the requested page!<br />\n<br />\nMaybe you are not logged in correctly?<br />\n<br />\nIf a user tries to access a protected page without permission, a special <strong>error_403</strong> page will be called. In this case you can either display an error message (like we are doing now) by simply creating an article on this page, or you can redirect the user to another page (e.g. the welcome page).<br />\n<br />\nAccordingly, if a user tries to access a page that does not exist, a special <strong>error_404</strong> page will be called. Again, you can either display an error message or redirect the user to another page.\n','',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','ordered',_binary 'a:1:{i:0;s:0:\"\";}',_binary 'a:1:{i:0;a:1:{i:0;s:0:\"\";}}','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(20,6,'',64,1195922019,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:8:\"Services\";}','Welcome to the Music Academy service desk! Here you can hand in your term paper by filling in the form below. The form has been created with the Contao form generator which you can find in the back end. The form generator automatially validates the user input and checks that all mandatory fields are filled in.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(22,16,'',128,1195921734,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:19:\"Violin Master Class\";}','Once a user has logged in to the back end, he will be able to view all front end pages and articles even if they are protected or not yet published. Therefor, if you are reading this you should either be logged in to the back end or you should be logged in to the front end as Donna Evans.<br />\n<br />\nIf you are not logged in at all (not even in another browser window) and you are still able to access this page, please go to <a href=\"https://contao.org\" onclick=\"window.open(this.href); return false;\">https://contao.org</a> and let me know ;-)\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(23,17,'',128,1195842858,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:21:\"Why do we need roles?\";}','Imagine that you and a friend of yours are managing a website. Maybe you are a successful web designer whereas your friend has no idea about CSS but is a committed writer. Therefor, you have decided to share the work. In the future, you will be doing the design and administration of the website and your friend will be writing articles. This is a basic principle of any CMS by the way - separation of content and design.<br />\n<br />\nNow, as both of you have to have access to the back end, your friend would still be able to edit the look of the website or to create new user accounts, although he is actually not responsible for design or administration. Therefor, you want to disable these functions for his account. At this point, you have created a role (although it exists in your mind only) that you could name \"editor\" or \"author\".<br />\n<br />\nTo learn how user permissions can be restricted, let\'s take a closer look at the roles of our example users.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:2:\"16\";}','','','','',0,'','','','',''),(41,1,'tl_article',384,1364573644,'text','','<strong>Username</strong>: h.lewis<br />\n<strong>Password</strong>: helenlewis<br />\n<strong>Role</strong>: back end user\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','<span class=\"toggler_first\">2. Helen Lewis</span>','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(27,17,'tl_article',320,1343390928,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p><span style=\"text-decoration: underline;\">2. Helen Lewis</span><br> <br> She is a teacher and responsible for her course \"Violin Master Class\". Each course has its own page, its own news archive and its own calendar. And all these resources are visible to the students of the respective course only. In addition, there is a general courses page that can be accessed by all students and edited by all teachers.<br> <br> Since Mrs. Lewis is not the only editor, it is useful to create a role (user group) called <em>Editors</em>. Open module \"User groups\" and take a look at the Editors group. As you can see, there are only a few modules activated. Each editor (teacher) has access to the navigation module (to modify pages), the articles module (to create content on the pages), the news module (to create news items), the calendar/events module (to create events) and the file manager module (to upload images or documents).</p>','1',_binary '\Ã\◊+\¬ä„∫ó\0&ªd=B','Modules','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','','','','below','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"36\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(42,1,'tl_article',512,1364573644,'text','','<strong>Username</strong>: j.wilson<br />\n<strong>Password</strong>: jameswilson<br />\n<strong>Role</strong>: back end user\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','<span class=\"toggler_first\">3. James Wilson</span>','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(44,1,'tl_article',640,1364573644,'text','','<strong>Username</strong>: j.smith<br />\n<strong>Password</strong>: johnsmith<br />\n<strong>Role</strong>: front end user\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','<span class=\"toggler_first\">4. John Smith</span>','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(45,1,'tl_article',768,1364573644,'text','','<strong>Username</strong>: d.evans<br />\n<strong>Password</strong>: donnaevans<br />\n<strong>Role</strong>: front end user\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','<span class=\"toggler_first\">5. Donna Evans</span>','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(46,1,'',896,1166780419,'text','Roles and permissions','On the next page (<em>The academy</em>) we will take a closer look at the different roles and we will find out what our users are allowed to do and what they cannot do. You can then take a closer look at how these access restrictions have been implemented in the back end.<br />\n<br />\nMake sure to visit <a href=\"https://contao.org/\" title=\"Visit contao.org\" onclick=\"window.open(this.href); return false;\">https://contao.org</a> for more information.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(28,17,'tl_article',352,1343390990,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>Contao is a tree-based content management system, meaning that each front end page refers to a page in the hierarchically ordered site structure. Administrators can always see the whole page tree, whereas users, by default, do not have access to it at all. To enable one or more pages for a user, you have to \"mount\" them into his profile. The same applies to the file manager and the folders of the upload directory.<br> <br> Since we want Mrs. Lewis to be able to edit the courses page and the page of her own class, I have choosen page <em>Courses</em> as mounting point (subpages are included automatically). If you log in to the back end as Mrs. Lewis, you will only see those three pages in the site structure.</p>','1',_binary '\Ã\◊A\‘ä„∫ó\0&ªd=B','Pagemounts','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','','','','below','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(30,17,'tl_article',368,1343390953,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p><span style=\"text-decoration: underline;\">3. James Wilson</span><br> <br> He is an assocciate professor for Jazz Piano and therefor also a back end user (editor). Like Mrs. Lewis, he is in charge for the courses page and his own course \"Elements of Jazz Piano\". Since all editors share the same user group, Mr. Wilson can also see Mrs. Lewis\' page in the site structure. However, he is not able to edit it.<br> <br> Now let\'s log in to the back end as Kevin Jones (administrator) and open the site structure module. Go to page <em>Elements of Jazz Piano</em> and edit it. There is an option called \"Assign permissions\" which you should not have seen when you were logged in as James Wilson. Here you can set the owner of a page (a user and a group).</p>','1',_binary '\Ã\◊Lˆä„∫ó\0&ªd=B','Permissions','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','','','','below','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(31,17,'tl_article',376,1343390964,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p><span style=\"text-decoration: underline;\">4. John Smith</span><br> <br> He is a Piano student and he attends Mr. Wilson\'s class. If you log in to the front end as John Smith, you will recognize three additional pages in the website navigation menu that were not visible before (<em>Elements of Jazz Piano</em>, <em>My account</em> and <em>Logout</em>). These pages are protected and therefor not visible to guests.<br> <br> Go to the back end again, open the site structure module and edit page <em>Elements of Jazz Piano</em>. You will find the options \"Protect page\" and \"Allowed member groups\" which let you grant access to one or more member groups. If you do not choose a group at all, the page will be visible to any logged in front end user.</p>','1',_binary '\Ã\◊WFä„∫ó\0&ªd=B','Protected pages','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','','','','below','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(61,17,'',378,1195848222,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','Our example page <em>Elements of Jazz Piano</em> is only visible to members of the group <em>Piano students</em>. You will not be able to access the page when you are logged in as Donna Evans or when you are not logged in at all.\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(32,17,'tl_article',380,1343391031,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p><span style=\"text-decoration: underline;\">5. Donna Evans</span><br> <br> She is a Violin student and she attends Mrs. Lewis\' class. On the protected page <em>My account</em> you can change Donna Evans\' personal data using a front end module called \"Personal data\". Note that there are back end modules as well as front end modules and that both provide different functionality.<br> <br> Now, here is the general rule how to set up pages in Contao. Each page has a page layout and each page layout includes one or more front end modules and style sheets. Thus, you should create pages in the following order:<br> <br> a. Create all necessary front end modules<br> b. Create all necessary style sheets<br> c. Create a page layout and include your front end modules and your style sheets<br> d. Create the page and include the layout<br> <br> Open the page layouts module and take a look at the default layout. You can choose between a one column, a two column or a three column layout and you can add an optional header and footer. The Contao CSS framework will automatically divide your page into the selected \"layout sections\".</p>','1',_binary '\Ã\◊ \“ä„∫ó\0&ªd=B','Page layout','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','','','','below','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(24,17,'tl_article',256,1343390913,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p><span style=\"text-decoration: underline;\">1. Kevin Jones</span><br> <br> He is the administrator of the website and he can access all modules and functions. To create an administrator account, simply create a new user and check <em>Administrator</em>.</p>','1',_binary '\Ã\÷\Ì∫ä„∫ó\0&ªd=B','Administrator','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','','','','below','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"36\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(40,1,'tl_article',256,1364573644,'text','','<strong>Username</strong>: k.jones<br />\n<strong>Password</strong>: kevinjones<br />\n<strong>Role</strong>: back end user and administrator\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','<span class=\"toggler_first\">1. Kevin Jones</span>','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(48,18,'',128,1195927178,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:22:\"Request a new password\";}','<em>Request a new password</em> is part of the registration module and allows members to receive a new password vie e-mail. After the form has been submitted, a confirmation e-mail including an activation link is sent to the user.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(49,18,'',256,1170870665,'module','','','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,17,'',NULL,'','','','','','','',0,'','','','',''),(50,18,'',192,1195927254,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:25:\"Enter your e-mail address\";}','Please enter your e-mail address below. A confirmation e-mail with an activation link will be sent to this address. Click this activation link to proceed.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(51,18,'',384,1195927289,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<span style=\"color: #999999\">Note that you will not be able to send any e-mails in the online demo.</span>\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(52,19,'',128,1325689581,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:8:\"Calendar\";}','<p>Here is a quick example of how to use the calendar module. You can either use a calendar to display events or an event list together with the mini-calendar. The following example uses a calendar to show events.<br> <br> <a title=\"January 2010\" href=\"{{link_url::21}}?day=20100101\">Click here to go to January 2010 (contains example data)</a></p>','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(53,19,'',256,1180638510,'module','',NULL,'',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,18,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"30\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(55,19,'',384,1267348435,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:15:\"List all events\";}','<p>Here is an example of how to use the event list together with the mini-calendar. You can either list all events of a day, a week or a year or you can list upcoming events only. Again, log in as Donna Evans or John Smith to see protected events (protected events have been added to Contao version 2.5).<br />\n<br />\n<a title=\"List all events\" href=\"{{link_url::23}}?month=201001\">Click here to open the event list example</a></p>','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"30\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(56,20,'',128,1195919816,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:8:\"Teachers\";}','Here is another new feature in version 2.5 - article teasers. You can add a teaser text to each article and make Contao display it automatically if there are multiple articles on a page. Or you can use the new content element \"Article teaser\" to display the teaser text of a particular article followed by a \"read more...\" link.\n','',NULL,'','','','','','','','','','','','','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(67,25,'',128,1195921191,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:12:\"James Wilson\";}','This is the full article about James Wilson. James Wilson and the stage have been lifelong partners. The jazz pianist and \nyoungest son of a preacher began playing in his father\'s church as a \npreschooler, took his first solo at the age of six, and has been a lead \nperformer ever since. \n','1',_binary '\Ã\◊ \“ä„∫ó\0&ªd=B','James Wilson','','a:2:{i:0;s:2:\"80\";i:1;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"9\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','','','','left',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(66,22,'',128,1195920775,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:11:\"Helen Lewis\";}','This is the full article about Helen Lewis. You could add her curriculum vitae or write something about her teaching skills. Since this is only an example, I rather point out something else: you might have noticed that the article has its own URL built from the page alias and the article alias (new in version 2.5). You can use this unique URL as a \"permanent link\" to directly link to a particular article.<br />\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(59,17,'tl_article',336,1343390938,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>In addition, Mrs. Lewis is allowed to access the general news archive and calendar as well as the news archive and calendar of her course \"Violin Master Class\". This access control feature is actually new in Contao version 2.5!</p>','1',_binary '\Ã\◊7\\ä„∫ó\0&ªd=B','News and calendars','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','','','','below',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(60,17,'',372,1195847828,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','There are three ways to relate to a page: as the user who owns the\npage, as the group who owns the page or as someone else. Each role has\nits own set of permissions (similar to the UNIX chmod utility).<br />\n<br />\nOf course, page <em>Elements of Jazz Piano</em> belongs to Mr.\nWilson and he is the only user who is allowed to do something with it (remember that administrators have access to all\npages and modules at any time).\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(68,26,'',128,1195923508,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:16:\"Navigation menus\";}','Another brand new and very powerful feature in version 2.5 is the improved navigation menu. You can now define a start level and a stop level and thus create any kind of navigation you want. In fact, you do not even need the \"navigation main menu items\" and \"navigation submenu items\" modules any more.\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(69,26,'',256,1195923858,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:22:\"Example site structure\";}','<ul>\n	<li>Home</li>\n	<li>Music\n	<ul>\n		<li>Genres\n		<ul>\n			<li>Rock</li>\n			<li>Pop</li>\n		</ul>\n		</li>\n		<li>Artists\n		<ul>\n			<li>Mrs. X</li>\n			<li>Mrs. Y</li>\n		</ul>\n		</li>\n	</ul>\n	</li>\n	<li>Movies\n	<ul>\n		<li>Genres\n		<ul>\n			<li>Action</li>\n			<li>Fantasy</li>\n		</ul>\n		</li>\n		<li>Actors\n		<ul>\n			<li>Mr. X</li>\n			<li>Mr. Y</li>\n		</ul>\n		</li>\n	</ul>\n	</li>\n	<li>Contact</li>\n</ul>\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(70,26,'',384,1195923966,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:23:\"Default navigation menu\";}','By default, the navigation menu simply displays the whole site structure.\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(71,26,'',512,1195924226,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:12:\"Stop level 1\";}','If you set the stop level to 1, the navigation menu will only display the first level and all active pages. Here is what the navigation menu looks like when you are viewing page Music -&gt; Genres -&gt; Pop.<br />\n<br />\n<ul>\n	<li>Home</li>\n	<li>Music\n	<ul>\n		<li>Genres\n		<ul>\n			<li>Pop</li>\n			<li>Rock</li>\n		</ul>\n		</li>\n	</ul>\n	</li>\n	<li>Movies</li>\n	<li>Contact<br />\n	</li>\n</ul>\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(72,26,'',640,1195925486,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:28:\"Stop level 1 with hard limit\";}','If you set the stop level to 1, the navigation menu almost displays what the \"navigation main menu items\" module does - except for the active pages always being shown even beyond the stop level. Now, if you choose the new option \"hard limit\", the navigation menu never shows any page beyond the stop level. The ouput is exacly the same as with the \"navigation main menu items\" module. However, you are not limited to the first level anymore!<br />\n<br />\n<ul>\n	<li>Home</li>\n	<li>Music</li>\n	<li>Movies</li>\n	<li>Contact</li>\n</ul>\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(73,26,'',768,1195924887,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:28:\"Stop level 2 with hard limit\";}','A lot of people have requested a navigation menu that allows them to show the first two levels as horizontal main navigation menu and the other levels as optional vertical submenu. You can now accomplish that.<br />\n<br />\n<ul>\n	<li>Home</li>\n	<li>Music\n	<ul>\n		<li>Genres</li>\n		<li>Artists</li>\n	</ul>\n	</li>\n	<li>Movies\n	<ul>\n		<li>Genres</li>\n		<li>Actors</li>\n	</ul>\n	</li>\n	<li>Contact</li>\n</ul>\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(74,26,'',896,1195925409,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:13:\"Start level 1\";}','The \"navigation submenu items\" module basically renders the navigation menu from the second level, using the current main menu item as starting point. Now you can accomplish the same structure with the navigation menu by simply setting the start level to 1. Here is how the navigation menu looks like on page Music -&gt; Genres -&gt; Pop.<br />\n<br />\n<ul>\n	<li>Genres\n	<ul>\n		<li>Pop</li>\n		<li>Rock</li>\n	</ul>\n	</li>\n	<li>Artists\n	<ul>\n		<li>Mrs. X</li>\n		<li>Mrs. Y</li>\n	</ul>\n	</li>\n</ul>\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(75,26,'',1024,1195926061,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:13:\"Start level 2\";}','If your main navigation menu includes the first two levels, you want your submenu to start with an offset of two levels which is equivalent to start level 2. Here is how the navigation menu looks like on the <em>Pop</em> page.<br />\n<br />\n<ul>\n	<li>Pop</li>\n	<li>Rock</li>\n</ul>\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:2:\"24\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(76,27,'',128,1195927010,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:5:\"Login\";}','I am sure that you have expected a login form here, but since this is an example website (and there is a permanent login form in the left column) I am going to use it to point out another new feature instead. You might know from version 2.4 that there is an option to show a content element to guests only, meaning that the content element is not visible after you have logged in.<br />\n<br />\nNow (in version 2.5) you can do the same thing with pages like the login page you are currently viewing. Once you have logged in to the front end, the page will disappear from the navigation menu. This way you can hide login pages (as well as registration or lost password pages) from logged in users and show the logout page instead.<br />\n','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(77,28,'',128,1195928200,'module','',NULL,'',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,6,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(78,22,'',256,1225289165,'module','',NULL,'',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,22,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(79,25,'',256,1225289175,'module','',NULL,'',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,22,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(80,1,'tl_news',128,1339146984,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','<p>James Wilson and the stage have been lifelong partners. The jazz pianist and youngest son of a preacher began playing in his father\'s church as a preschooler, took his first solo at the age of six, and has been a lead performer ever since.</p>','1',_binary '\Ã\◊\"ä„∫ó\0&ªd=B','James Wilson','','a:3:{i:0;s:3:\"120\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','','1','','left',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','',''),(81,2,'tl_news',128,1266311112,'text','','In a major new initiative to attract the best young musicians,\nregardless of their ability to pay, Music Academy has announced a\nScholarship Program that will cover all tuition and housing fees. Scholars will attend Music Academy\nfor four years, with all fees provided at no charge.','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','',0,'','','','',''),(82,3,'tl_news',128,1266311481,'text','','<p>Every Friday in February 2010 the gates of the Music Academy\'s campus will be thrown wide open to welcome everyone for a day filled with fun and interest. The programme includes: <br />\n<br />\n<strong>\nShowcase events</strong>: demonstrations and\nactivities organised by each of the academic units<br />\n<strong>Courses Information</strong>: advice about studying and details of MA courses<br />\n<strong>Lectures</strong>: a series of illustrated talks on interesting and topical\nissues<br />\n<strong>Entertainment</strong>: campus tour, music, activities and buffet</p>','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','',0,'','','','',''),(83,4,'tl_news',128,1333986029,'text','','<p>At the age of 27, Grammy Award-winning violinist Hilary Hahn is one of the most compelling artists on the international concert circuit. Renowned for her intellectual and emotional maturity, she was named \"America\'s Best\" young classical musician by Time Magazine in 2001, and appears on a regular basis with the world\'s great orchestras in Europe, Asia, and North America.</p>\n<p>Watch Hilary Hahn perform live at Music Academy on the 12th of February 2010!</p>','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','',0,'','','','',''),(84,5,'tl_news',128,1266311789,'text','','<p>Benny Green is a hard bop jazz pianist who \"graduated\" from Art Blakey\'s Jazz Messengers. As a boy he grew up in Berkeley, California and studied classical piano from the age of seven. He also had an interest in jazz from an early point as his father was a jazz tenor saxophone player. Benny Green was \"discovered\" by Fay Carroll and later while still in his teens worked in a quintet led by Eddie Henderson.<br />\n<br />\nWatch Benny Green perform live at Music Academy on the 19th of February 2010!</p>','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','',0,'','','','',''),(85,4,'tl_calendar_events',128,1266311723,'text','','<p>The Grammy-winning violinist Hilary Hahn is going to perform live at Music Academy.</p>','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','',0,'','','','',''),(86,2,'tl_calendar_events',128,1266311298,'text','','<p>Final exams for all graduate students.</p>','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','',0,'','','','',''),(87,3,'tl_calendar_events',128,1266311231,'text','','The campus will be closed during the winter holiday break.<br />','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','',0,'','','','',''),(88,5,'tl_calendar_events',128,1266311737,'text','','<p>The famous jazz pianist Benny Green is going to perform live at Music Academy.</p>','',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','',0,'','','','',''),(89,1,'tl_article',224,1364573606,'sliderStart','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}',NULL,'',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','ascending',0,'','','','','com_default'),(90,1,'tl_article',832,1364573619,'sliderStop','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}',NULL,'',NULL,'','','','','','','','',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','',NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','','','','','','ascending',0,'','','','','com_default'),(91,30,'tl_article',128,1383912796,'text','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:14:\"Page not found\";}','<p>The URL <strong>{{env::request}}</strong> is not associated with a (published) page.</p>','',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','ordered',_binary 'a:1:{i:0;s:0:\"\";}',_binary 'a:1:{i:0;a:1:{i:0;s:0:\"\";}}','','','','','',0,'','','','','','','','','','','','','','',NULL,NULL,'',4,0,0,'','',NULL,'',NULL,'','',0,300,0,'',0,0,0,0,0,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','','',0,'','','','','');
/*!40000 ALTER TABLE `tl_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_cron`
--

DROP TABLE IF EXISTS `tl_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_cron`
--

LOCK TABLES `tl_cron` WRITE;
/*!40000 ALTER TABLE `tl_cron` DISABLE KEYS */;
INSERT INTO `tl_cron` VALUES (1,'lastrun','1634275620'),(2,'monthly','202110'),(3,'weekly','0'),(4,'daily','0'),(5,'hourly','0'),(6,'minutely','0');
/*!40000 ALTER TABLE `tl_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_extension`
--

DROP TABLE IF EXISTS `tl_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_extension` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) NOT NULL DEFAULT '',
  `folder` varchar(48) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `copyright` varchar(128) NOT NULL DEFAULT '',
  `package` varchar(64) NOT NULL DEFAULT '',
  `license` varchar(64) NOT NULL DEFAULT '',
  `addBeMod` char(1) NOT NULL DEFAULT '',
  `beClasses` varchar(255) NOT NULL DEFAULT '',
  `beTables` varchar(255) NOT NULL DEFAULT '',
  `beTemplates` varchar(255) NOT NULL DEFAULT '',
  `addFeMod` char(1) NOT NULL DEFAULT '',
  `feClasses` varchar(255) NOT NULL DEFAULT '',
  `feTables` varchar(255) NOT NULL DEFAULT '',
  `feTemplates` varchar(255) NOT NULL DEFAULT '',
  `addLanguage` char(1) NOT NULL DEFAULT '',
  `languages` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_extension`
--

LOCK TABLES `tl_extension` WRITE;
/*!40000 ALTER TABLE `tl_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_faq`
--

DROP TABLE IF EXISTS `tl_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(12) NOT NULL DEFAULT '',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_faq`
--

LOCK TABLES `tl_faq` WRITE;
/*!40000 ALTER TABLE `tl_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_faq_category`
--

DROP TABLE IF EXISTS `tl_faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_faq_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(16) NOT NULL DEFAULT '',
  `sortOrder` varchar(12) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_faq_category`
--

LOCK TABLES `tl_faq_category` WRITE;
/*!40000 ALTER TABLE `tl_faq_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_faq_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_files`
--

DROP TABLE IF EXISTS `tl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` binary(16) DEFAULT NULL,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `uuid` binary(16) DEFAULT NULL,
  `type` varchar(16) NOT NULL DEFAULT '',
  `path` varchar(1022) NOT NULL DEFAULT '',
  `extension` varchar(16) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `found` char(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `meta` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `pid` (`pid`),
  KEY `extension` (`extension`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_files`
--

LOCK TABLES `tl_files` WRITE;
/*!40000 ALTER TABLE `tl_files` DISABLE KEYS */;
INSERT INTO `tl_files` VALUES (1,NULL,1339146912,_binary '\Ã÷©ä„∫ó\0&ªd=B','folder','files/music_academy','','64a9d0ea75b7fe3c0b1d653e99febcb1','1','music_academy',NULL),(2,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã÷∏êä„∫ó\0&ªd=B','folder','files/music_academy/campus','','eeee812d7221676e227308e57b6b7d5c','1','campus',NULL),(3,_binary '\Ã÷∏êä„∫ó\0&ªd=B',1343475069,_binary '\Ã\÷\¬˛ä„∫ó\0&ªd=B','file','files/music_academy/campus/campus_building.jpg','jpg','a0ac423df6265537c7b1783ed9cbb698','1','campus_building.jpg',_binary 'a:1:{s:2:\"en\";a:3:{s:5:\"title\";s:43:\"Historical building on Music Academy campus\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:19:\"Historical building\";}}'),(4,_binary '\Ã÷∏êä„∫ó\0&ªd=B',1343475069,_binary '\Ã\÷\Ã˛ä„∫ó\0&ªd=B','file','files/music_academy/campus/campus_hall.jpg','jpg','16074d6c3e3dfeb23d580715f486bff2','1','campus_hall.jpg',_binary 'a:1:{s:2:\"en\";a:3:{s:5:\"title\";s:26:\"Music Academy Lincoln Hall\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:12:\"Lincoln Hall\";}}'),(5,_binary '\Ã÷∏êä„∫ó\0&ªd=B',1343475069,_binary '\Ã\÷\◊0ä„∫ó\0&ªd=B','file','files/music_academy/campus/campus_library.jpg','jpg','1795dc0db4a1efcd2c390e3969ac3d3b','1','campus_library.jpg',_binary 'a:1:{s:2:\"en\";a:3:{s:5:\"title\";s:28:\"Music Academy campus library\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:14:\"Campus library\";}}'),(6,_binary '\Ã÷∏êä„∫ó\0&ªd=B',1343475069,_binary '\Ã\÷\·Nä„∫ó\0&ªd=B','file','files/music_academy/campus/campus_overview.jpg','jpg','12360a385a87413fa9914d9f4b0f3113','1','campus_overview.jpg',_binary 'a:1:{s:2:\"en\";a:3:{s:5:\"title\";s:35:\"Music Academy campus (main bulding)\";s:4:\"link\";s:0:\"\";s:7:\"caption\";s:15:\"Campus overview\";}}'),(7,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\÷\Ì∫ä„∫ó\0&ªd=B','file','files/music_academy/admin.gif','gif','37173d258871c781db2c025060e4f8ab','1','admin.gif',NULL),(8,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\÷¯\Êä„∫ó\0&ªd=B','file','files/music_academy/background.gif','gif','b2a05c65803733133c981a2d4e386968','1','background.gif',NULL),(9,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊ä„∫ó\0&ªd=B','file','files/music_academy/frontendmodules.gif','gif','4f697b474f6d1e66f442c1c67d574a99','1','frontendmodules.gif',NULL),(10,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊\rä„∫ó\0&ªd=B','file','files/music_academy/image.png','png','cb636d32a257f7b6337b7392afeab02d','1','image.png',NULL),(11,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊\"ä„∫ó\0&ªd=B','file','files/music_academy/james-wilson.jpg','jpg','fd894d798786066577c9de8cbe9c1e38','1','james-wilson.jpg',NULL),(12,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊ \“ä„∫ó\0&ªd=B','file','files/music_academy/layout.gif','gif','ec5793c27e75e0426a69202d876733e2','1','layout.gif',NULL),(13,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊+\¬ä„∫ó\0&ªd=B','file','files/music_academy/modules.gif','gif','cefbcdcc5facb958977376f2c46367dc','1','modules.gif',NULL),(14,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊7\\ä„∫ó\0&ªd=B','file','files/music_academy/news.gif','gif','ee4c7b3e72fb750033036036176feace','1','news.gif',NULL),(15,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊A\‘ä„∫ó\0&ªd=B','file','files/music_academy/pagemounts.gif','gif','1317e91c34333dfd9bad071dd43e9f39','1','pagemounts.gif',NULL),(16,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊Lˆä„∫ó\0&ªd=B','file','files/music_academy/permissions.gif','gif','edc93c562d750ea9e0b20052298f4aa5','1','permissions.gif',NULL),(17,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊WFä„∫ó\0&ªd=B','file','files/music_academy/protect.gif','gif','7d8c259b52dc2fe5ccd8b8ea7e8090fb','1','protect.gif',NULL),(18,_binary '\Ã÷©ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊añä„∫ó\0&ªd=B','file','files/music_academy/screenshot.jpg','jpg','bc787a96a23265d4de60c9d1c8e21580','1','screenshot.jpg',NULL),(19,NULL,1339146912,_binary '\Ã\◊k\»ä„∫ó\0&ªd=B','folder','files/tiny_templates','','3cb25412587bbaedd9901598abd93284','1','tiny_templates',NULL),(20,_binary '\Ã\◊k\»ä„∫ó\0&ªd=B',1339146912,_binary '\Ã\◊u\‹ä„∫ó\0&ªd=B','file','files/tiny_templates/index.html','html','aeebec42dc0335ea1e0853f4393259b4','1','index.html',NULL),(21,NULL,1339146912,_binary '\Ã◊Å&ä„∫ó\0&ªd=B','file','files/tinymce.css','css','e6cfd2993ed50341da010e66be287d2d','1','tinymce.css',NULL);
/*!40000 ALTER TABLE `tl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form`
--

DROP TABLE IF EXISTS `tl_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `sendViaEmail` char(1) NOT NULL DEFAULT '',
  `recipient` varchar(1022) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `format` varchar(12) NOT NULL DEFAULT '',
  `skipEmpty` char(1) NOT NULL DEFAULT '',
  `storeValues` char(1) NOT NULL DEFAULT '',
  `targetTable` varchar(64) NOT NULL DEFAULT '',
  `method` varchar(12) NOT NULL DEFAULT '',
  `novalidate` char(1) NOT NULL DEFAULT '',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `formID` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `allowTags` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form`
--

LOCK TABLES `tl_form` WRITE;
/*!40000 ALTER TABLE `tl_form` DISABLE KEYS */;
INSERT INTO `tl_form` VALUES (2,1195922415,'Term paper submission','',18,'','','Term paper submission','email','','','','','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','');
/*!40000 ALTER TABLE `tl_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form_field`
--

DROP TABLE IF EXISTS `tl_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_form_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `invisible` char(1) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `text` text,
  `html` text,
  `options` blob,
  `mandatory` char(1) NOT NULL DEFAULT '',
  `rgxp` varchar(32) NOT NULL DEFAULT '',
  `placeholder` varchar(255) NOT NULL DEFAULT '',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `size` varchar(255) NOT NULL DEFAULT '',
  `multiple` char(1) NOT NULL DEFAULT '',
  `mSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `storeFile` char(1) NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) NOT NULL DEFAULT '',
  `fsType` varchar(32) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addSubmit` char(1) NOT NULL DEFAULT '',
  `slabel` varchar(255) NOT NULL DEFAULT '',
  `imageSubmit` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form_field`
--

LOCK TABLES `tl_form_field` WRITE;
/*!40000 ALTER TABLE `tl_form_field` DISABLE KEYS */;
INSERT INTO `tl_form_field` VALUES (2,2,384,1141725703,'','text','name','Your name','','','','1','alnum','',0,0,'','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','','','','',0,0,'','','',NULL),(3,2,512,1141745270,'','text','email','Your email','','','','1','email','',0,0,'','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','','','@','',0,0,'','','',NULL),(4,2,896,1196603514,'','textarea','message','Message','','','','','','',0,0,'a:2:{i:0;s:1:\"6\";i:1;s:2:\"40\";}','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','','','','',0,0,'','','',NULL),(5,2,768,1141744359,'','upload','file','Your file','','','','','','',0,1024000,'','',0,'pdf','',NULL,'','','','','','',0,0,'','','',NULL),(6,2,1024,1141743906,'','submit','','','','','','','','',0,0,'','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','','','','',0,0,'','Submit form','',NULL),(7,2,128,1141743628,'','headline','','','<h1>Term paper submission</h1>','','','','','',0,0,'','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','','','','',0,0,'','','',NULL),(8,2,256,1141745110,'','explanation','','','Please enter your first name and last name and provide a working e-mail address.','','','','','',0,0,'','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','','','','',0,0,'','','',NULL),(9,2,640,1141753249,'','explanation','','','<p style=\"margin-top: 36px\">Please browse your local PC and choose your term paper file to be uploaded. <strong>Please note that we accept PDF format &#40;Acrobat Reader&#41; only</strong>! The file size must not exceed 1 MB.</p>','','','','','',0,0,'','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','','','','',0,0,'','','',NULL),(11,2,576,1181149249,'','checkbox','cc','','','',_binary 'a:1:{i:0;a:2:{s:5:\"value\";s:1:\"1\";s:5:\"label\";s:29:\"Send me a copy of this e-mail\";}}','','','',0,0,'','',0,'jpg,jpeg,gif,png,pdf,doc,xls,ppt','',NULL,'','','','','','',0,0,'','','',NULL);
/*!40000 ALTER TABLE `tl_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_layout`
--

DROP TABLE IF EXISTS `tl_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `rows` varchar(8) NOT NULL DEFAULT '',
  `headerHeight` varchar(255) NOT NULL DEFAULT '',
  `footerHeight` varchar(255) NOT NULL DEFAULT '',
  `cols` varchar(8) NOT NULL DEFAULT '',
  `widthLeft` varchar(255) NOT NULL DEFAULT '',
  `widthRight` varchar(255) NOT NULL DEFAULT '',
  `sections` varchar(1022) NOT NULL DEFAULT '',
  `sPosition` varchar(32) NOT NULL DEFAULT '',
  `framework` varchar(255) NOT NULL DEFAULT '',
  `stylesheet` blob,
  `external` blob,
  `orderExt` blob,
  `newsfeeds` blob,
  `calendarfeeds` blob,
  `modules` blob,
  `template` varchar(64) NOT NULL DEFAULT '',
  `doctype` varchar(32) NOT NULL DEFAULT '',
  `webfonts` varchar(255) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `onload` varchar(255) NOT NULL DEFAULT '',
  `head` text,
  `addJQuery` char(1) NOT NULL DEFAULT '',
  `jSource` varchar(16) NOT NULL DEFAULT '',
  `jquery` text,
  `addMooTools` char(1) NOT NULL DEFAULT '',
  `mooSource` varchar(16) NOT NULL DEFAULT '',
  `mootools` text,
  `analytics` varchar(64) NOT NULL DEFAULT '',
  `script` text,
  `static` char(1) NOT NULL DEFAULT '',
  `width` varchar(255) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_layout`
--

LOCK TABLES `tl_layout` WRITE;
/*!40000 ALTER TABLE `tl_layout` DISABLE KEYS */;
INSERT INTO `tl_layout` VALUES (1,1,1365595076,'Default','2rwh','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','2cll','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"200\";}','a:2:{s:5:\"value\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','main','a:1:{i:0;s:10:\"layout.css\";}',_binary 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}',NULL,NULL,'',NULL,_binary 'a:7:{i:0;a:3:{s:3:\"mod\";s:1:\"2\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:1;a:3:{s:3:\"mod\";s:1:\"1\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:2;a:3:{s:3:\"mod\";s:1:\"4\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:3;a:3:{s:3:\"mod\";s:2:\"16\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:4;a:3:{s:3:\"mod\";s:1:\"5\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:5;a:3:{s:3:\"mod\";s:1:\"3\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:6;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}}','fe_page','html5','Ubuntu','','','','','',NULL,'1','moo_local','a:3:{i:0;s:12:\"moo_mediabox\";i:1;s:10:\"moo_slider\";i:2;s:13:\"moo_tablesort\";}','',NULL,'1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"870\";}','center'),(11,1,1365595076,'Default mobile','3rw','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1cl','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"200\";}','a:2:{s:5:\"value\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','main','a:1:{i:0;s:10:\"layout.css\";}',_binary 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"1\";i:2;s:1:\"4\";}',NULL,NULL,'',NULL,_binary 'a:6:{i:0;a:3:{s:3:\"mod\";s:1:\"2\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:1;a:3:{s:3:\"mod\";s:1:\"3\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:2;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:3;a:3:{s:3:\"mod\";s:1:\"1\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}i:4;a:3:{s:3:\"mod\";s:1:\"4\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}i:5;a:3:{s:3:\"mod\";s:2:\"16\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}}','fe_page','html5','Ubuntu','','','','','',NULL,'1','moo_local','a:3:{i:0;s:12:\"moo_mediabox\";i:1;s:10:\"moo_slider\";i:2;s:13:\"moo_tablesort\";}','',NULL,'1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"870\";}','center'),(6,1,1365595076,'News','2rwh','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','2cll','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"200\";}','a:2:{s:5:\"value\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','main','a:1:{i:0;s:10:\"layout.css\";}',_binary 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}',NULL,NULL,'',NULL,_binary 'a:9:{i:0;a:3:{s:3:\"mod\";s:1:\"2\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:1;a:3:{s:3:\"mod\";s:1:\"1\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:2;a:3:{s:3:\"mod\";s:2:\"14\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:3;a:3:{s:3:\"mod\";s:1:\"4\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:4;a:3:{s:3:\"mod\";s:2:\"16\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:5;a:3:{s:3:\"mod\";s:1:\"5\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:6;a:3:{s:3:\"mod\";s:1:\"3\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:7;a:3:{s:3:\"mod\";s:2:\"13\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:8;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}}','fe_page','html5','Ubuntu','','','','','',NULL,'1','moo_local','a:3:{i:0;s:12:\"moo_mediabox\";i:1;s:10:\"moo_slider\";i:2;s:13:\"moo_tablesort\";}','',NULL,'1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"870\";}','center'),(10,1,1365595076,'Events','2rwh','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','2cll','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"200\";}','a:2:{s:5:\"value\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','main','a:1:{i:0;s:10:\"layout.css\";}',_binary 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}',NULL,NULL,'',NULL,_binary 'a:9:{i:0;a:3:{s:3:\"mod\";s:1:\"2\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:1;a:3:{s:3:\"mod\";s:1:\"1\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:2;a:3:{s:3:\"mod\";s:2:\"21\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:3;a:3:{s:3:\"mod\";s:1:\"4\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:4;a:3:{s:3:\"mod\";s:2:\"16\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:5;a:3:{s:3:\"mod\";s:1:\"5\";s:3:\"col\";s:4:\"left\";s:6:\"enable\";b:1;}i:6;a:3:{s:3:\"mod\";s:1:\"3\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:7;a:3:{s:3:\"mod\";s:2:\"20\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:8;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}}','fe_page','html5','Ubuntu','','','','','',NULL,'1','moo_local','a:3:{i:0;s:12:\"moo_mediabox\";i:1;s:10:\"moo_slider\";i:2;s:13:\"moo_tablesort\";}','',NULL,'1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"870\";}','center'),(12,1,1365595076,'Events mobile','3rw','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1cl','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"200\";}','a:2:{s:5:\"value\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','main','a:1:{i:0;s:10:\"layout.css\";}',_binary 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"1\";i:2;s:1:\"4\";}',NULL,NULL,'',NULL,_binary 'a:8:{i:0;a:3:{s:3:\"mod\";s:1:\"2\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:1;a:3:{s:3:\"mod\";s:1:\"3\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:2;a:3:{s:3:\"mod\";s:2:\"20\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:3;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:4;a:3:{s:3:\"mod\";s:2:\"21\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}i:5;a:3:{s:3:\"mod\";s:1:\"1\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}i:6;a:3:{s:3:\"mod\";s:1:\"4\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}i:7;a:3:{s:3:\"mod\";s:2:\"16\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}}','fe_page','html5','Ubuntu','','','','','',NULL,'1','moo_local','a:3:{i:0;s:12:\"moo_mediabox\";i:1;s:10:\"moo_slider\";i:2;s:13:\"moo_tablesort\";}','',NULL,'1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"870\";}','center'),(13,1,1365595076,'News mobile','3rw','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1cl','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"200\";}','a:2:{s:5:\"value\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','main','a:1:{i:0;s:10:\"layout.css\";}',_binary 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"1\";i:2;s:1:\"4\";}',NULL,NULL,'',NULL,_binary 'a:8:{i:0;a:3:{s:3:\"mod\";s:1:\"2\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";b:1;}i:1;a:3:{s:3:\"mod\";s:1:\"3\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:2;a:3:{s:3:\"mod\";s:2:\"13\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:3;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";b:1;}i:4;a:3:{s:3:\"mod\";s:2:\"14\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}i:5;a:3:{s:3:\"mod\";s:1:\"1\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}i:6;a:3:{s:3:\"mod\";s:1:\"4\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}i:7;a:3:{s:3:\"mod\";s:2:\"16\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";b:1;}}','fe_page','html5','Ubuntu','','','','','',NULL,'1','moo_local','a:3:{i:0;s:12:\"moo_mediabox\";i:1;s:10:\"moo_slider\";i:2;s:13:\"moo_tablesort\";}','',NULL,'1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"870\";}','center');
/*!40000 ALTER TABLE `tl_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_log`
--

DROP TABLE IF EXISTS `tl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `text` text,
  `func` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_log`
--

LOCK TABLES `tl_log` WRITE;
/*!40000 ALTER TABLE `tl_log` DISABLE KEYS */;
INSERT INTO `tl_log` VALUES (1,1634275629,'FE','CRON','','Running the monthly cron jobs','CronJob::run','172.17.0.0','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),(2,1634275629,'FE','CRON','','Purged the page cache','Contao\\Automator::purgePageCache','172.17.0.0','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),(3,1634275629,'FE','CRON','','Purged the image cache','Contao\\Automator::purgeImageCache','172.17.0.0','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),(4,1634275629,'FE','CRON','','Monthly cron jobs complete','CronJob::run','172.17.0.0','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),(5,1634275635,'BE','ACCESS','','Could not find user &quot;admin&quot;','Contao\\User::login','172.17.0.0','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36'),(6,1634276164,'BE','ACCESS','k.jones','User &quot;k.jones&quot; has logged in','Contao\\User::login','127.0.0.1','python-requests/2.22.0');
/*!40000 ALTER TABLE `tl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_member`
--

DROP TABLE IF EXISTS `tl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) NOT NULL DEFAULT '',
  `gender` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(64) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `mobile` varchar(64) NOT NULL DEFAULT '',
  `fax` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `groups` blob,
  `login` char(1) NOT NULL DEFAULT '',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `assignDir` char(1) NOT NULL DEFAULT '',
  `homeDir` binary(16) DEFAULT NULL,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `session` blob,
  `autologin` varchar(32) DEFAULT NULL,
  `createdOn` int(10) unsigned NOT NULL DEFAULT '0',
  `activation` varchar(32) NOT NULL DEFAULT '',
  `newsletter` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `autologin` (`autologin`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `activation` (`activation`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member`
--

LOCK TABLES `tl_member` WRITE;
/*!40000 ALTER TABLE `tl_member` DISABLE KEYS */;
INSERT INTO `tl_member` VALUES (1,1259754224,'John','Smith','238201200','male','','','','','','','','','','j.smith@example.com','','en',_binary 'a:1:{i:0;s:1:\"2\";}','1','j.smith','3b842bcd6faab4047ab49f9a99fa0704b9c9d2d7','',NULL,'','','',1259754224,0,0,3,0,'',NULL,0,'',_binary 'a:0:{}'),(2,1259754224,'Donna','Evans','191635200','female','','','','','','','','','','d.evans@example.com','','en',_binary 'a:1:{i:0;s:1:\"1\";}','1','d.evans','cea7a6c1b33fe43fe3db9131f58504574854fc95:46ca32f618fef57e45e90ce','',NULL,'','','',1259754224,1337957447,1340274105,3,0,'',NULL,0,'',''),(3,1259754224,'John','Doe','0','','','','','','','','','','','j.doe@example.com','','en',_binary 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}','1','j.doe','7a86a8cf9d7510cc4661b217133f2eed37981b75','',NULL,'','','',1259754224,0,0,3,0,'',NULL,0,'','');
/*!40000 ALTER TABLE `tl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_member_group`
--

DROP TABLE IF EXISTS `tl_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `redirect` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member_group`
--

LOCK TABLES `tl_member_group` WRITE;
/*!40000 ALTER TABLE `tl_member_group` DISABLE KEYS */;
INSERT INTO `tl_member_group` VALUES (1,1172600419,'Violin Students','1',6,'','',''),(2,1172600394,'Piano Students','1',7,'','','');
/*!40000 ALTER TABLE `tl_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_module`
--

DROP TABLE IF EXISTS `tl_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `levelOffset` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardLimit` char(1) NOT NULL DEFAULT '',
  `showProtected` char(1) NOT NULL DEFAULT '',
  `defineRoot` char(1) NOT NULL DEFAULT '',
  `rootPage` int(10) unsigned NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) NOT NULL DEFAULT '',
  `pages` blob,
  `orderPages` blob,
  `showHidden` char(1) NOT NULL DEFAULT '',
  `customLabel` varchar(64) NOT NULL DEFAULT '',
  `autologin` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) NOT NULL DEFAULT '',
  `cols` varchar(32) NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) NOT NULL DEFAULT '',
  `tableless` char(1) NOT NULL DEFAULT '',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `queryType` varchar(32) NOT NULL DEFAULT '',
  `fuzzy` char(1) NOT NULL DEFAULT '',
  `contextLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `totalLength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `searchType` varchar(32) NOT NULL DEFAULT '',
  `searchTpl` varchar(64) NOT NULL DEFAULT '',
  `inColumn` varchar(32) NOT NULL DEFAULT '',
  `skipFirst` smallint(5) unsigned NOT NULL DEFAULT '0',
  `loadFirst` char(1) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `transparent` char(1) NOT NULL DEFAULT '',
  `flashvars` varchar(255) NOT NULL DEFAULT '',
  `altContent` text,
  `source` varchar(32) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `interactive` char(1) NOT NULL DEFAULT '',
  `flashID` varchar(64) NOT NULL DEFAULT '',
  `flashJS` text,
  `imgSize` varchar(64) NOT NULL DEFAULT '',
  `useCaption` char(1) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `html` text,
  `rss_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `rss_feed` text,
  `rss_template` varchar(32) NOT NULL DEFAULT '',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) NOT NULL DEFAULT '',
  `reg_skipName` char(1) NOT NULL DEFAULT '',
  `reg_close` varchar(32) NOT NULL DEFAULT '',
  `reg_assignDir` char(1) NOT NULL DEFAULT '',
  `reg_homeDir` binary(16) DEFAULT NULL,
  `reg_activate` char(1) NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_text` text,
  `reg_password` text,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `space` varchar(64) NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) unsigned NOT NULL DEFAULT '1',
  `cal_format` varchar(32) NOT NULL DEFAULT '',
  `cal_ignoreDynamic` char(1) NOT NULL DEFAULT '',
  `cal_order` varchar(32) NOT NULL DEFAULT '',
  `cal_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `cal_limit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_template` varchar(32) NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(32) NOT NULL DEFAULT '',
  `cal_showQuantity` char(1) NOT NULL DEFAULT '',
  `com_order` varchar(32) NOT NULL DEFAULT '',
  `com_moderate` char(1) NOT NULL DEFAULT '',
  `com_bbcode` char(1) NOT NULL DEFAULT '',
  `com_requireLogin` char(1) NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) NOT NULL DEFAULT '',
  `com_template` varchar(32) NOT NULL DEFAULT '',
  `faq_categories` blob,
  `faq_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `list_table` varchar(64) NOT NULL DEFAULT '',
  `list_fields` varchar(255) NOT NULL DEFAULT '',
  `list_where` varchar(255) NOT NULL DEFAULT '',
  `list_search` varchar(255) NOT NULL DEFAULT '',
  `list_sort` varchar(255) NOT NULL DEFAULT '',
  `list_info` varchar(255) NOT NULL DEFAULT '',
  `list_info_where` varchar(255) NOT NULL DEFAULT '',
  `list_layout` varchar(32) NOT NULL DEFAULT '',
  `list_info_layout` varchar(32) NOT NULL DEFAULT '',
  `news_archives` blob,
  `news_featured` varchar(16) NOT NULL DEFAULT '',
  `news_jumpToCurrent` varchar(16) NOT NULL DEFAULT '',
  `news_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `news_metaFields` varchar(255) NOT NULL DEFAULT '',
  `news_template` varchar(32) NOT NULL DEFAULT '',
  `news_format` varchar(32) NOT NULL DEFAULT '',
  `news_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_order` varchar(255) NOT NULL DEFAULT '',
  `news_showQuantity` char(1) NOT NULL DEFAULT '',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_hideChannels` char(1) NOT NULL DEFAULT '',
  `nl_subscribe` text,
  `nl_unsubscribe` text,
  `nl_template` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_module`
--

LOCK TABLES `tl_module` WRITE;
/*!40000 ALTER TABLE `tl_module` DISABLE KEYS */;
INSERT INTO `tl_module` VALUES (1,1,1225289028,'Navigation - Main navigation','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','navigation',0,0,'','','',0,'nav_default','',NULL,'','','',0,'','','','','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:3:{i:0;s:4:\"date\";i:1;s:8:\"category\";i:2;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,''),(2,1,1338302298,'Header image','','html',0,0,'','','',0,'','',NULL,'','','',0,'','','','','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'<div id=\"top_image\">\n  <img src=\"files/music_academy/image.png\" width=\"670\" height=\"273\" alt=\"Music academy\">\n</div>',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','','',0,'','',NULL,'','',NULL,NULL,''),(3,1,1195839729,'Navigation - Breadcrumb','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','breadcrumb',0,0,'','','',0,'','',NULL,'','','',0,'','','','','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:3:{i:0;s:4:\"date\";i:1;s:8:\"category\";i:2;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,''),(4,1,1273405829,'User - Login','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:15:\"Front End Login\";}','login',0,0,'','','',0,'','',NULL,'','','1',15,'','1cl','','','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:3:{i:0;s:4:\"date\";i:1;s:8:\"category\";i:2;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,''),(5,1,1329238673,'Academy news - Breaking news','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:13:\"Breaking news\";}','newslist',0,0,'','','',0,'','',NULL,'','','',0,'','2cl','','','',0,'and','',40,520,0,'','','',0,'','','','','','',NULL,'','','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','','',NULL,NULL,'',0,'','',2,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:13:\"breaking_news\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','',_binary 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"2\";}','all_items','',0,'a:1:{i:0;s:4:\"date\";}','news_short','',0,'','',NULL,'','',NULL,NULL,''),(6,1,1141755173,'User - Logout','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','logout',0,0,'','','',0,'','',NULL,'','','',2,'','2cl','','','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:3:{i:0;s:4:\"date\";i:1;s:8:\"category\";i:2;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,''),(7,1,1195909380,'Academy news - Newsreader','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','newsreader',0,0,'','','',0,'','',NULL,'','','',0,'','2cl','','','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','',_binary 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"2\";}','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_full','',0,'','',NULL,'','',NULL,NULL,''),(8,1,1177490575,'Search engine','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','search',0,0,'','','',0,'','',NULL,'','','',0,'','2cl','','','',0,'and','',44,400,5,'advanced','search_default','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,''),(9,1,1171308093,'User - Personal data','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','personalData',0,0,'','','',0,'','',NULL,'','','',12,'','2cl',_binary 'a:10:{i:0;s:9:\"firstname\";i:1;s:8:\"lastname\";i:2;s:6:\"street\";i:3;s:6:\"postal\";i:4;s:4:\"city\";i:5;s:7:\"country\";i:6;s:5:\"phone\";i:7;s:6:\"mobile\";i:8;s:5:\"email\";i:9;s:8:\"password\";}','member_grouped','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,''),(13,1,1325689247,'Academy news - News archive','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:12:\"News archive\";}','newsarchive',0,0,'','','',0,'','',NULL,'','','',0,'','2cl','','','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','',_binary 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"2\";}','','all_items',7,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_simple','news_month',0,'','',NULL,'','',NULL,NULL,''),(14,1,1325689145,'Academy news - News archive menu','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:13:\"News archives\";}','newsmenu',0,0,'','','',0,'','',NULL,'','','',8,'','2cl','','','',0,'and','',40,520,10,'','','',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','',_binary 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"2\";}','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','news_month',0,'descending','',NULL,'','',NULL,NULL,''),(16,1,1343474884,'User - Request new password','','html',0,0,'','','',0,'','',NULL,'','','',0,'','2cl','','','',0,'and','',40,520,10,'simple','','main',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'<!-- indexer::stop -->\n<div id=\"request_password\">\n{{link_open::20}}Did you lose your password?</a><br>\n{{toggle_view}}\n</div>\n<!-- indexer::continue -->',0,'','rss_default',0,'','','','','','',NULL,'',0,NULL,NULL,'',NULL,'1','','',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,''),(17,1,1237044906,'User - Request new password form','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','lostPassword',0,0,'','','',0,'','',NULL,'','','',20,'','2cl','','','',0,'and','',40,520,10,'simple','','main',0,'','','','','','',NULL,'','','','','','','',NULL,NULL,'',0,'','rss_default',0,'','','','','','',NULL,'',2,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary '0','',0,'','','',0,0,'','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,''),(18,1,1225289038,'Calendar - Calendar','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','calendar',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,10,'simple','','main',0,'','','','',NULL,'',NULL,'','','',NULL,'','','',NULL,NULL,NULL,0,'','rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"2\";}','',0,'month','','',0,0,'event_default','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,'nl_simple'),(21,1,1325689493,'Calendar - Event list menu','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:6:\"Events\";}','eventmenu',0,0,'','','',0,'',NULL,NULL,'','','',23,'','2cl',NULL,'','',0,'and','',48,1000,10,'simple','','main',0,'','','','',NULL,'',NULL,'','','',NULL,'','','',NULL,NULL,NULL,0,'','rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:12:\"minicalendar\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"2\";}','',0,'cal_day','','ascending',0,0,'event_default','cal_mini','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,'nl_simple'),(19,1,1257428447,'Calendar - Event reader','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','eventreader',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,10,'simple','','main',0,'','','','',NULL,'',NULL,'','','',NULL,'','','',NULL,NULL,NULL,0,'','rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"2\";}','',0,'month','','',0,0,'event_full','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,'nl_simple'),(20,1,1325689725,'Calendar - Event list','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:6:\"Events\";}','eventlist',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,10,'simple','','main',0,'','','','',NULL,'',NULL,'','','',NULL,'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','','',NULL,NULL,NULL,0,'','rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',_binary 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"1\";i:2;s:1:\"2\";}','',0,'cal_day','','ascending',19,0,'event_list','','','','','','','','',NULL,0,'','','','','','','','','','','','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','',0,'','',NULL,'','',NULL,NULL,'nl_simple'),(22,1,1240660545,'Navigation - Article navigation','a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}','articlenav',0,0,'','','',0,'',NULL,NULL,'','','',0,'','2cl',NULL,'','',0,'and','',48,1000,0,'simple','','main',0,'','','','',NULL,'internal',NULL,'','','',NULL,'','','',NULL,NULL,NULL,3600,'','rss_default',0,'',NULL,'','','','',NULL,'',0,NULL,NULL,'',NULL,'','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}',NULL,'',0,'cal_month','','',0,0,'event_default','','','','','','','','',NULL,0,'','','','','','','','','',NULL,'','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','news_single','news_month',0,'','',NULL,NULL,'',NULL,NULL,'nl_simple');
/*!40000 ALTER TABLE `tl_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news`
--

DROP TABLE IF EXISTS `tl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `subheadline` varchar(255) NOT NULL DEFAULT '',
  `teaser` text,
  `addImage` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(255) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(12) NOT NULL DEFAULT '',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(12) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `featured` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news`
--

LOCK TABLES `tl_news` WRITE;
/*!40000 ALTER TABLE `tl_news` DISABLE KEYS */;
INSERT INTO `tl_news` VALUES (1,1,1339146974,'Associate Professor James Wilson returns','james-wilson-returns',1,1265275800,1265275800,'Veteran Jazz pianist James Wilson has enjoyed international renown since graduating from Music Academy in 1968.','<p>Jazz pianist James Wilson returns to Music Academy to give lessons in traditional and contemporary Jazz Piano.</p>','1',_binary '\Ã\◊\"ä„∫ó\0&ªd=B','James Wilson','a:3:{i:0;s:3:\"120\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','','1','','left','',NULL,'default',13,0,'','','','','','1','',''),(2,1,1266311112,'Scholarship Program','scholarship-program',1,1261321200,1261321200,'Music Academy debuts a new Scholarship Program.','Music Academy debuts a new Scholarship Program that will cover all tuition and housing fees.','',NULL,'','','','','','','','',NULL,'default',13,0,'','','','','','1','',''),(3,1,1266311481,'Open days','open-days',3,1264666500,1264666500,'Welcome everybody to Music Academy','Every Friday in February 2010 the gates of the Music Academy\'s campus will be thrown wide open to welcome everyone for a day filled with fun and interest.','',NULL,'','','','','','','','',NULL,'default',13,0,'','','','','','1','',''),(4,2,1333986029,'Hilary Hahn performs at Music Academy','hilary-hahn-performs-at-music-academy',3,1265375700,1265375700,'The Grammy-winning violinist Hilary Hahn is going to perform live at Music Academy on the 12th of February 2010.','<p>The Grammy-winning violinist Hilary Hahn is going to perform live at Music Academy.</p>','',NULL,'','','','','','','','',NULL,'default',0,0,'','','','','','1','',''),(5,3,1266311789,'Benny Green performs at Music Academy','benny-green-performs-at-music-academy',2,1265981400,1265981400,'The famous jazz pianist Benny Green is going to perform live at Music Academy on the 19th of February 2010.','The famous jazz pianist Benny Green is going to perform live at Music Academy.','',NULL,'','','','','','','','',NULL,'default',0,0,'','','','','','1','','');
/*!40000 ALTER TABLE `tl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news_archive`
--

DROP TABLE IF EXISTS `tl_news_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(16) NOT NULL DEFAULT '',
  `sortOrder` varchar(32) NOT NULL DEFAULT '',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news_archive`
--

LOCK TABLES `tl_news_archive` WRITE;
/*!40000 ALTER TABLE `tl_news_archive` DISABLE KEYS */;
INSERT INTO `tl_news_archive` VALUES (1,1354033189,'Music Academy News',8,'',NULL,'1','notify_admin','ascending',0,'1','','',''),(2,1354033189,'Violin Master Class',8,'1',_binary 'a:1:{i:0;s:1:\"1\";}','','','',0,'','','',''),(3,1354033189,'Elements of Jazz Piano',8,'1',_binary 'a:1:{i:0;s:1:\"2\";}','','','',0,'','','','');
/*!40000 ALTER TABLE `tl_news_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news_feed`
--

DROP TABLE IF EXISTS `tl_news_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_news_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `archives` blob,
  `format` varchar(32) NOT NULL DEFAULT '',
  `source` varchar(32) NOT NULL DEFAULT '',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news_feed`
--

LOCK TABLES `tl_news_feed` WRITE;
/*!40000 ALTER TABLE `tl_news_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_news_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter`
--

DROP TABLE IF EXISTS `tl_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext,
  `text` mediumtext,
  `addFile` char(1) NOT NULL DEFAULT '',
  `files` blob,
  `template` varchar(32) NOT NULL DEFAULT '',
  `sendText` char(1) NOT NULL DEFAULT '',
  `externalImages` char(1) NOT NULL DEFAULT '',
  `sender` varchar(128) NOT NULL DEFAULT '',
  `senderName` varchar(128) NOT NULL DEFAULT '',
  `sent` char(1) NOT NULL DEFAULT '',
  `date` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter`
--

LOCK TABLES `tl_newsletter` WRITE;
/*!40000 ALTER TABLE `tl_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_channel`
--

DROP TABLE IF EXISTS `tl_newsletter_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `useSMTP` char(1) NOT NULL DEFAULT '',
  `smtpHost` varchar(64) NOT NULL DEFAULT '',
  `smtpUser` varchar(128) NOT NULL DEFAULT '',
  `smtpPass` varchar(32) NOT NULL DEFAULT '',
  `smtpEnc` varchar(3) NOT NULL DEFAULT '',
  `smtpPort` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_channel`
--

LOCK TABLES `tl_newsletter_channel` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_recipients`
--

DROP TABLE IF EXISTS `tl_newsletter_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT '',
  `confirmed` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `token` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_recipients`
--

LOCK TABLES `tl_newsletter_recipients` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_page`
--

DROP TABLE IF EXISTS `tl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `redirect` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `dns` varchar(255) NOT NULL DEFAULT '',
  `staticFiles` varchar(255) NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `adminEmail` varchar(255) NOT NULL DEFAULT '',
  `dateFormat` varchar(32) NOT NULL DEFAULT '',
  `timeFormat` varchar(32) NOT NULL DEFAULT '',
  `datimFormat` varchar(32) NOT NULL DEFAULT '',
  `createSitemap` char(1) NOT NULL DEFAULT '',
  `sitemapName` varchar(32) NOT NULL DEFAULT '',
  `useSSL` char(1) NOT NULL DEFAULT '',
  `autoforward` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `includeLayout` char(1) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `mobileLayout` int(10) unsigned NOT NULL DEFAULT '0',
  `includeCache` char(1) NOT NULL DEFAULT '',
  `cache` int(10) unsigned NOT NULL DEFAULT '0',
  `includeChmod` char(1) NOT NULL DEFAULT '',
  `cuser` int(10) unsigned NOT NULL DEFAULT '0',
  `cgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `chmod` varchar(255) NOT NULL DEFAULT '',
  `noSearch` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `sitemap` varchar(32) NOT NULL DEFAULT '',
  `hide` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `alias` (`alias`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_page`
--

LOCK TABLES `tl_page` WRITE;
/*!40000 ALTER TABLE `tl_page` DISABLE KEYS */;
INSERT INTO `tl_page` VALUES (1,0,128,1337956032,'Music Academy','music-academy','root','','en','','','',0,'','','','','','1','','','','','','','','','','','1',1,11,'1',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','1','','','','',0,'','1','',''),(2,1,256,1166779081,'Home','index','regular','Welcome to Music Academy','en','index,follow','Welcome to Music Academy','',0,'','','','','','','','','','','','','','','','','',0,0,'',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','','','','','',0,'1','1','',''),(3,1,384,1195837936,'The academy','academy','regular','About the academy','en','index,follow','','',0,'','','','','','','','','','','','','','','','','',0,0,'',0,'',1,1,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','','','','','',0,'2','1','',''),(4,1,512,1195838896,'Courses','courses','regular','Courses overview','en','index,follow','','',0,'','','','','','','','','','','','','','','','','',0,0,'',0,'1',1,1,'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}','','','','','',0,'3','1','',''),(19,1,240,1383912575,'Page not found','404','error_404','','en','noindex,follow','','temporary',2,'','','','','','','','','','','','','','','','','',0,0,'',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','','','','','',0,'','1','',''),(5,1,640,1195839019,'Services','services','regular','Services and support','en','index,follow','','',0,'','','','','','','','','','','','','','','','','',0,0,'1',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','','','','','',0,'4','1','',''),(7,4,256,1215634413,'Elements of Jazz Piano','elements-of-jazz-piano','regular','','en','index,follow','','',0,'','','','','','','','','','','','','','','1',_binary 'a:1:{i:0;s:1:\"2\";}','',0,0,'',0,'1',2,1,'a:5:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u4\";i:3;s:2:\"u5\";i:4;s:2:\"u6\";}','','','','','',0,'','1','',''),(15,5,608,1215634483,'My account','account','regular','Edit your account details','en','noindex,follow','','',0,'','','','','','','','','','','','','','','1',_binary 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}','',4,0,'1',0,'',1,0,'a:6:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";}','1','','','','',0,'','1','',''),(8,3,128,1337956919,'News','news','regular','News and updates','en','index,follow','','',0,'','','','','','','','','','','','','','','','','1',6,13,'',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','','','map_default','','',0,'','1','',''),(9,3,512,1195838377,'Impressions','impressions','regular','Campus impressions','en','index,follow','','',0,'','','','','','','','','','','','','','','','','',0,0,'',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','','','','','',0,'','1','',''),(11,5,640,1215634504,'Logout','logout','regular','','en','noindex,follow','','',0,'','','','','','','','','','','','','','','1',_binary 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}','',2,0,'1',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','1','','','','',0,'','1','',''),(12,15,128,1215634497,'Your data has been saved','your-data-has-been-saved','regular','','en','noindex,follow','','',0,'','','','','','','','','','','','','','','1',_binary 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}','',0,0,'1',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','1','','','1','',0,'','1','',''),(16,1,224,1238584974,'Access denied','403','error_403','','en','noindex,follow','You are not allowed to access the current page','',0,'','','','','','','','','','','','','','','','','',0,0,'',0,'',1,0,'a:6:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";}','','','','','',0,'','1','',''),(14,5,512,1195839414,'Search','search','regular','Search this website','en','noindex,follow','','',0,'','','','','','','','','','','','','','','','','',0,0,'1',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','1','','','','',0,'','1','',''),(18,5,584,1337939868,'Confirmation','confirmation','regular','We have received your term paper','en','noindex,follow','','',0,'','','','','','','','','','','','','','','','','',0,0,'',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','1','','map_default','1','',0,'','1','',''),(6,4,128,1215634407,'Violin Master Class','violin-master-class','regular','','en','index,follow','','',0,'','','','','','','','','','','','','','','1',_binary 'a:1:{i:0;s:1:\"1\";}','',0,0,'',0,'1',3,1,'a:5:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u4\";i:3;s:2:\"u5\";i:4;s:2:\"u6\";}','','','','','',0,'','1','',''),(20,27,128,1215634458,'Lost password','lost-password','regular','Request a new password','en','noindex,follow','','',0,'','','','','','','','','','','','','','','','','',0,0,'1',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','1','','','1','1',0,'','1','',''),(21,3,320,1325689535,'Calendar','calendar','regular','Events and schedules','en','index,follow','','',0,'','','','','','','','','','','','','','','',NULL,'',1,0,'',0,'',0,0,'a:6:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";}','','','map_default','','',0,'','1','',''),(23,3,416,1337956669,'Events','events','regular','Events and schedules','en','noindex,follow','','',0,'','','','','','','','','','','','','','','',NULL,'1',10,12,'1',0,'',0,0,'a:6:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";}','1','','map_default','1','',0,'','1','',''),(24,3,640,1195838841,'Teachers','teachers','regular','Our teachers','en','index,follow','','',0,'','','','','','','','','','','','','','','','','',0,0,'',0,'',1,0,'a:8:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g4\";}','','','','','',0,'','1','',''),(26,5,576,1195838745,'Navigation','navigation','regular','New navigation features','en','index,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'',0,'',0,0,'a:6:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";}','','','','','',0,'','1','',''),(27,5,592,1195839608,'Login','login','regular','Students log-in','en','noindex,follow',NULL,'permanent',0,'','','','','','','','','','','','','','','',NULL,'',0,0,'1',0,'',0,0,'a:6:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";}','1','','','','1',0,'','1','','');
/*!40000 ALTER TABLE `tl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_repository_installs`
--

DROP TABLE IF EXISTS `tl_repository_installs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_repository_installs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL DEFAULT '',
  `version` int(9) NOT NULL DEFAULT '0',
  `build` int(9) NOT NULL DEFAULT '0',
  `alpha` char(1) NOT NULL DEFAULT '',
  `beta` char(1) NOT NULL DEFAULT '',
  `rc` char(1) NOT NULL DEFAULT '',
  `stable` char(1) NOT NULL DEFAULT '1',
  `lickey` varchar(255) NOT NULL DEFAULT '',
  `delprot` char(1) NOT NULL DEFAULT '',
  `updprot` char(1) NOT NULL DEFAULT '',
  `error` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_repository_installs`
--

LOCK TABLES `tl_repository_installs` WRITE;
/*!40000 ALTER TABLE `tl_repository_installs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_repository_installs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_repository_instfiles`
--

DROP TABLE IF EXISTS `tl_repository_instfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_repository_instfiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filetype` char(1) NOT NULL DEFAULT 'F',
  `flag` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_repository_instfiles`
--

LOCK TABLES `tl_repository_instfiles` WRITE;
/*!40000 ALTER TABLE `tl_repository_instfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_repository_instfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search`
--

DROP TABLE IF EXISTS `tl_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext,
  `filesize` double unsigned NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `language` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `url` (`url`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search`
--

LOCK TABLES `tl_search` WRITE;
/*!40000 ALTER TABLE `tl_search` DISABLE KEYS */;
INSERT INTO `tl_search` VALUES (1,3,1364573852,'About the academy','en/academy.html','About the academy Why do we need roles? Imagine that you and a friend of yours are managing a website. Maybe you are a successful web designer whereas your friend has no idea about CSS but is a committed writer. Therefor, you have decided to share the work. In the future, you will be doing the design and administration of the website and your friend will be writing articles. This is a basic principle of any CMS by the way - separation of content and design. Now, as both of you have to have access to the back end, your friend would still be able to edit the look of the website or to create new user accounts, although he is actually not responsible for design or administration. Therefor, you want to disable these functions for his account. At this point, you have created a role (although it exists in your mind only) that you could name \"editor\" or \"author\". To learn how user permissions can be restricted, let\'s take a closer look at the roles of our example users. 1. Kevin Jones He is the administrator of the website and he can access all modules and functions. To create an administrator account, simply create a new user and check Administrator. 2. Helen Lewis She is a teacher and responsible for her course \"Violin Master Class\". Each course has its own page, its own news archive and its own calendar. And all these resources are visible to the students of the respective course only. In addition, there is a general courses page that can be accessed by all students and edited by all teachers. Since Mrs. Lewis is not the only editor, it is useful to create a role (user group) called Editors. Open module \"User groups\" and take a look at the Editors group. As you can see, there are only a few modules activated. Each editor (teacher) has access to the navigation module (to modify pages), the articles module (to create content on the pages), the news module (to create news items), the calendar/events module (to create events) and the file manager module (to upload images or documents). In addition, Mrs. Lewis is allowed to access the general news archive and calendar as well as the news archive and calendar of her course \"Violin Master Class\". This access control feature is actually new in Contao version 2.5! Contao is a tree-based content management system, meaning that each front end page refers to a page in the hierarchically ordered site structure. Administrators can always see the whole page tree, whereas users, by default, do not have access to it at all. To enable one or more pages for a user, you have to \"mount\" them into his profile. The same applies to the file manager and the folders of the upload directory. Since we want Mrs. Lewis to be able to edit the courses page and the page of her own class, I have choosen page Courses as mounting point (subpages are included automatically). If you log in to the back end as Mrs. Lewis, you will only see those three pages in the site structure. 3. James Wilson He is an assocciate professor for Jazz Piano and therefor also a back end user (editor). Like Mrs. Lewis, he is in charge for the courses page and his own course \"Elements of Jazz Piano\". Since all editors share the same user group, Mr. Wilson can also see Mrs. Lewis\' page in the site structure. However, he is not able to edit it. Now let\'s log in to the back end as Kevin Jones (administrator) and open the site structure module. Go to page Elements of Jazz Piano and edit it. There is an option called \"Assign permissions\" which you should not have seen when you were logged in as James Wilson. Here you can set the owner of a page (a user and a group). There are three ways to relate to a page: as the user who owns the page, as the group who owns the page or as someone else. Each role has its own set of permissions (similar to the UNIX chmod utility). Of course, page Elements of Jazz Piano belongs to Mr. Wilson and he is the only user who is allowed to do something with it (remember that administrators have access to all pages and modules at any time). 4. John Smith He is a Piano student and he attends Mr. Wilson\'s class. If you log in to the front end as John Smith, you will recognize three additional pages in the website navigation menu that were not visible before (Elements of Jazz Piano, My account and Logout). These pages are protected and therefor not visible to guests. Go to the back end again, open the site structure module and edit page Elements of Jazz Piano. You will find the options \"Protect page\" and \"Allowed member groups\" which let you grant access to one or more member groups. If you do not choose a group at all, the page will be visible to any logged in front end user. Our example page Elements of Jazz Piano is only visible to members of the group Piano students. You will not be able to access the page when you are logged in as Donna Evans or when you are not logged in at all. 5. Donna Evans She is a Violin student and she attends Mrs. Lewis\' class. On the protected page My account you can change Donna Evans\' personal data using a front end module called \"Personal data\". Note that there are back end modules as well as front end modules and that both provide different functionality. Now, here is the general rule how to set up pages in Contao. Each page has a page layout and each page layout includes one or more front end modules and style sheets. Thus, you should create pages in the following order: a. Create all necessary front end modules b. Create all necessary style sheets c. Create a page layout and include your front end modules and your style sheets d. Create the page and include the layout Open the page layouts module and take a look at the default layout. You can choose between a one column, a two column or a three column layout and you can add an optional header and footer. The Contao CSS framework will automatically divide your page into the selected \"layout sections\". Once you have choosen the basic page layout, you can add front end modules to your layout sections. Front end modules will be shown one below the other, so you can change the order within each column here. Below is a screenshot of the modules included in the default layout. Music academy, Administrator, Modules, News and calendars, Pagemounts, Permissions, Protected pages, Page layout, Front end modules',18.05,'aeae89e765f4a76331587c44b6095847','',_binary '0','en'),(2,24,1364573852,'Our teachers','en/teachers.html','Our teachers Teachers Here is another new feature in version 2.5 - article teasers. You can add a teaser text to each article and make Contao display it automatically if there are multiple articles on a page. Or you can use the new content element \"Article teaser\" to display the teaser text of a particular article followed by a \"read more...\" link. Helen Lewis This is the teaser text of the article about Helen Lewis. Mrs. Lewis has been teaching at Music Academy for nearly 10 years and she has been a member of the Music Teachers Association since its inception. Click \"read more...\" to read the article. Read more ‚Ä¶ Helen Lewis James Wilson This is the teaser text of the article about James Wilson. Mr. Wilson graduated from Music Academy in 1968 and has enjoyed international renown since then. He returned in 2010 to give lessons in traditional and contemporary Jazz Piano. Click \"read more...\" to read the article. Read more ‚Ä¶ James Wilson Music academy, Read the article: Helen Lewis, Read the article: James Wilson',9.06,'a9ab48519b0f39224d61700a234448b0','',_binary '0','en'),(3,8,1364573852,'News and updates','en/news.html','News and updates Protected news If you are viewing the front end without being logged in to the back end, you will see that \"James Wilson returns\" is the most recent news item. However, if you log in to the front end as Donna Evans or John Smith, another news item will appear that has not been visible before. Try their accounts and find out who is going to perform live at Music Academy in February 2010 :-) Since version 2.5, Contao allows to protect news archives and show their items to a particular front end user group only. Take a look at the back end to find out how protected new archives are set up. Music academy',9.86,'2711c1b8cad12ad47a7d92f46be2f844','',_binary '0','en'),(4,21,1364573853,'Events and schedules','en/calendar.html','Events and schedules Calendar Here is a quick example of how to use the calendar module. You can either use a calendar to display events or an event list together with the mini-calendar. The following example uses a calendar to show events. Click here to go to January 2010 (contains example data) List all events Here is an example of how to use the event list together with the mini-calendar. You can either list all events of a day, a week or a year or you can list upcoming events only. Again, log in as Donna Evans or John Smith to see protected events (protected events have been added to Contao version 2.5). Click here to open the event list example Music academy, January 2010, List all events',13.68,'1d0f7f8c866a58b838f19a412b3fe7c8','',_binary '0','en'),(5,2,1364573853,'Welcome to Music Academy','en/','Welcome to Music Academy Welcome to Music Academy Contao demo website A content management system is usually divided into two areas: the back end (administration area) and the front end (website). If you are reading this, you are currently viewing the front end. To log in to the back end, simply add /contao to your URL (http://localhost/contao/core/contao). When I was creating the example website to give people an idea of what can be done with a content management system, I tried to find a \"real world\" scenario that involved more than one person. There are a lot of different scenarios that can be done with Contao: from a simple website managed by a single administrator to a community website with a lot of members (front end users) or a company website (intranet or internet) with a lot of back end users. Finally, I came up with a college website that has different back end users and front end users. The Music Academy example includes three back end users (employees) and two front end users (students). Each user has a different role. You can log in to their accounts and see how Contao looks from their perspective. Please note that academy employees (back end user) can only log in to the back end and students (front end user) can only log in to the front end. You are currently viewing the front end. User accounts Username: k.jones Password: kevinjones Role: back end user and administrator Username: h.lewis Password: helenlewis Role: back end user Username: j.wilson Password: jameswilson Role: back end user Username: j.smith Password: johnsmith Role: front end user Username: d.evans Password: donnaevans Role: front end user Previous Next Roles and permissions On the next page (The academy) we will take a closer look at the different roles and we will find out what our users are allowed to do and what they cannot do. You can then take a closer look at how these access restrictions have been implemented in the back end. Make sure to visit https://contao.org for more information. Music academy, Visit contao.org',12.05,'78b0b0a109835a8cce4e6610fe38e5d6','',_binary '0','en'),(6,9,1379087007,'Campus impressions','en/impressions.html','Campus impressions Impressions Here are a few impressions of the campus. This example uses a MooTools based image gallery called \"mediabox\" to show images in full size. Since version 2.5, you can split the gallery into multiple pages so it takes less time to load. Campus overview Lincoln Hall Campus library Historical building Contao automatically generates image thumbnails using the gdlib extension. You can either resize an image by entering width or height, or you can crop an image by entering both values. Music academy, Music Academy campus (main bulding), Music Academy Lincoln Hall, Music Academy campus library, Historical building on Music Academy campus',11.02,'420d834f180206dcf1f1a1e6d532b678','',_binary '0','en'),(7,24,1364573853,'Helen Lewis','en/teachers/articles/helen-lewis.html','Helen Lewis This is the teaser text of the article about Helen Lewis. Mrs. Lewis has been teaching at Music Academy for nearly 10 years and she has been a member of the Music Teachers ‚Ä¶ Helen Lewis This is the full article about Helen Lewis. You could add her curriculum vitae or write something about her teaching skills. Since this is only an example, I rather point out something else: you might have noticed that the article has its own URL built from the page alias and the article alias (new in version 2.5). You can use this unique URL as a \"permanent link\" to directly link to a particular article. Music academy',8.91,'4955ce1e52147a4774efa38e17556971','',_binary '0','en'),(8,24,1364573854,'James Wilson','en/teachers/articles/james-wilson.html','James Wilson This is the teaser text of the article about James Wilson. Mr. Wilson graduated from Music Academy in 1968 and has enjoyed international renown since then. He returned in 2010 to ‚Ä¶ James Wilson This is the full article about James Wilson. James Wilson and the stage have been lifelong partners. The jazz pianist and youngest son of a preacher began playing in his father\'s church as a preschooler, took his first solo at the age of six, and has been a lead performer ever since. Music academy, James Wilson',9.01,'56dab1feb4dfabd2468a629686abf2d4','',_binary '0','en'),(9,4,1364573854,'Courses overview','en/courses.html','Courses overview Courses Here is a quick overview of some courses. Course Students Begin Tuition fee Violin Master Class 10 2010-03-02 $360 Elements of Jazz Piano 12 2010-03-04 $450 Rock Guitar Basics 8 2010-03-11 $300 Rock Guitar Secrets 8 2010-03-12 $380 Modern Drum Grooves 16 2010-04-02 $340 Contemporary Bass Styles 14 2010-04-06 $320 By default, the table is sorted by date (Begin). By clicking one of the column headers, you can resort it (JavaScript required). Of course, the table has been styled with CSS. Do not forget to provide a small summary of the table\'s content in order to make it accessible. If you log in to the front end as Donna Evans or John Smith, you should see the protected page of the class you are attending as a subpage of this page. Music academy',12.79,'5a8808fd36f2e0e81a734e0c28bea95b','',_binary '0','en'),(10,5,1364573854,'Services and support','en/services.html','Services and support Services Welcome to the Music Academy service desk! Here you can hand in your term paper by filling in the form below. The form has been created with the Contao form generator which you can find in the back end. The form generator automatially validates the user input and checks that all mandatory fields are filled in. Music academy',10.47,'3da4884794bf97ea566e0c0c823f5e76','',_binary '0','en'),(11,26,1364573854,'New navigation features','en/navigation.html','New navigation features Navigation menus Another brand new and very powerful feature in version 2.5 is the improved navigation menu. You can now define a start level and a stop level and thus create any kind of navigation you want. In fact, you do not even need the \"navigation main menu items\" and \"navigation submenu items\" modules any more. Example site structure Home Music Genres Rock Pop Artists Mrs. X Mrs. Y Movies Genres Action Fantasy Actors Mr. X Mr. Y Contact Default navigation menu By default, the navigation menu simply displays the whole site structure. Stop level 1 If you set the stop level to 1, the navigation menu will only display the first level and all active pages. Here is what the navigation menu looks like when you are viewing page Music -> Genres -> Pop. Home Music Genres Pop Rock Movies Contact Stop level 1 with hard limit If you set the stop level to 1, the navigation menu almost displays what the \"navigation main menu items\" module does - except for the active pages always being shown even beyond the stop level. Now, if you choose the new option \"hard limit\", the navigation menu never shows any page beyond the stop level. The ouput is exacly the same as with the \"navigation main menu items\" module. However, you are not limited to the first level anymore! Home Music Movies Contact Stop level 2 with hard limit A lot of people have requested a navigation menu that allows them to show the first two levels as horizontal main navigation menu and the other levels as optional vertical submenu. You can now accomplish that. Home Music Genres Artists Movies Genres Actors Contact Start level 1 The \"navigation submenu items\" module basically renders the navigation menu from the second level, using the current main menu item as starting point. Now you can accomplish the same structure with the navigation menu by simply setting the start level to 1. Here is how the navigation menu looks like on page Music -> Genres -> Pop. Genres Pop Rock Artists Mrs. X Mrs. Y Start level 2 If your main navigation menu includes the first two levels, you want your submenu to start with an offset of two levels which is equivalent to start level 2. Here is how the navigation menu looks like on the Pop page. Pop Rock Music academy',11.05,'74b42c2cac734ec7000bbc0e70f075ce','',_binary '0','en'),(12,8,1364573855,'Associate Professor James Wilson returns','en/news/james-wilson-returns.html','Associate Professor James Wilson returns Jazz pianist James Wilson returns to Music Academy to give lessons in traditional and contemporary Jazz Piano. Associate Professor James Wilson returns 2010-02-04 10:30 by Kevin Jones Veteran Jazz pianist James Wilson has enjoyed international renown since graduating from Music Academy in 1968. James Wilson and the stage have been lifelong partners. The jazz pianist and youngest son of a preacher began playing in his father\'s church as a preschooler, took his first solo at the age of six, and has been a lead performer ever since. Add a comment Comment by John Smith | 2007-12-02 It is great to have him back! He is the best! Reply by James Wilson Thanks a lot, John. I am happy to be back. Protected news If you are viewing the front end without being logged in to the back end, you will see that \"James Wilson returns\" is the most recent news item. However, if you log in to the front end as Donna Evans or John Smith, another news item will appear that has not been visible before. Try their accounts and find out who is going to perform live at Music Academy in February 2010 :-) Since version 2.5, Contao allows to protect news archives and show their items to a particular front end user group only. Take a look at the back end to find out how protected new archives are set up. Music academy, James Wilson',13.28,'fd314d98be854a0deefa7fca78da172b','',_binary '0','en'),(13,8,1364573855,'Open days','en/news/open-days.html','Open days Every Friday in February 2010 the gates of the Music Academy\'s campus will be thrown wide open to welcome everyone for a day filled with fun and interest. Open days 2010-01-28 09:15 by Helen Lewis Welcome everybody to Music Academy Every Friday in February 2010 the gates of the Music Academy\'s campus will be thrown wide open to welcome everyone for a day filled with fun and interest. The programme includes: Showcase events: demonstrations and activities organised by each of the academic units Courses Information: advice about studying and details of MA courses Lectures: a series of illustrated talks on interesting and topical issues Entertainment: campus tour, music, activities and buffet Add a comment Protected news If you are viewing the front end without being logged in to the back end, you will see that \"James Wilson returns\" is the most recent news item. However, if you log in to the front end as Donna Evans or John Smith, another news item will appear that has not been visible before. Try their accounts and find out who is going to perform live at Music Academy in February 2010 :-) Since version 2.5, Contao allows to protect news archives and show their items to a particular front end user group only. Take a look at the back end to find out how protected new archives are set up. Music academy',12.67,'b63168f89681e0b05816991e2a74b602','',_binary '0','en'),(14,8,1364573855,'Scholarship Program','en/news/scholarship-program.html','Scholarship Program Music Academy debuts a new Scholarship Program that will cover all tuition and housing fees. Scholarship Program 2009-12-20 16:00 by Kevin Jones Music Academy debuts a new Scholarship Program. In a major new initiative to attract the best young musicians, regardless of their ability to pay, Music Academy has announced a Scholarship Program that will cover all tuition and housing fees. Scholars will attend Music Academy for four years, with all fees provided at no charge. Add a comment Protected news If you are viewing the front end without being logged in to the back end, you will see that \"James Wilson returns\" is the most recent news item. However, if you log in to the front end as Donna Evans or John Smith, another news item will appear that has not been visible before. Try their accounts and find out who is going to perform live at Music Academy in February 2010 :-) Since version 2.5, Contao allows to protect news archives and show their items to a particular front end user group only. Take a look at the back end to find out how protected new archives are set up. Music academy',12.4,'a63d40ae01c86b157bd17530b10ec784','',_binary '0','en'),(15,2,1634276164,'Welcome to Music Academy','','Welcome to Music Academy Welcome to Music Academy Contao demo website A content management system is usually divided into two areas: the back end (administration area) and the front end (website). If you are reading this, you are currently viewing the front end. To log in to the back end, simply add /contao to your URL (http://127.0.0.1/contao-3.2.4/contao). When I was creating the example website to give people an idea of what can be done with a content management system, I tried to find a \"real world\" scenario that involved more than one person. There are a lot of different scenarios that can be done with Contao: from a simple website managed by a single administrator to a community website with a lot of members (front end users) or a company website (intranet or internet) with a lot of back end users. Finally, I came up with a college website that has different back end users and front end users. The Music Academy example includes three back end users (employees) and two front end users (students). Each user has a different role. You can log in to their accounts and see how Contao looks from their perspective. Please note that academy employees (back end user) can only log in to the back end and students (front end user) can only log in to the front end. You are currently viewing the front end. User accounts Username: k.jones Password: kevinjones Role: back end user and administrator Username: h.lewis Password: helenlewis Role: back end user Username: j.wilson Password: jameswilson Role: back end user Username: j.smith Password: johnsmith Role: front end user Username: d.evans Password: donnaevans Role: front end user Previous Next Roles and permissions On the next page (The academy) we will take a closer look at the different roles and we will find out what our users are allowed to do and what they cannot do. You can then take a closer look at how these access restrictions have been implemented in the back end. Make sure to visit https://contao.org for more information. Music academy, Visit contao.org',12.8,'8d202d59b37a88c0707d33242f14e8ae','',_binary '0','en');
/*!40000 ALTER TABLE `tl_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search_index`
--

DROP TABLE IF EXISTS `tl_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_search_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `word` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `word` (`word`)
) ENGINE=MyISAM AUTO_INCREMENT=1758 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search_index`
--

LOCK TABLES `tl_search_index` WRITE;
/*!40000 ALTER TABLE `tl_search_index` DISABLE KEYS */;
INSERT INTO `tl_search_index` VALUES (1,1,'about',2,'en'),(2,1,'the',68,'en'),(3,1,'academy',2,'en'),(4,1,'why',1,'en'),(5,1,'do',4,'en'),(6,1,'we',2,'en'),(7,1,'need',1,'en'),(8,1,'roles',2,'en'),(9,1,'imagine',1,'en'),(10,1,'that',8,'en'),(11,1,'you',30,'en'),(12,1,'and',40,'en'),(13,1,'a',33,'en'),(14,1,'friend',4,'en'),(15,1,'of',23,'en'),(16,1,'yours',1,'en'),(17,1,'are',10,'en'),(18,1,'managing',1,'en'),(19,1,'website',5,'en'),(20,1,'maybe',1,'en'),(21,1,'successful',1,'en'),(22,1,'web',1,'en'),(23,1,'designer',1,'en'),(24,1,'whereas',2,'en'),(25,1,'your',8,'en'),(26,1,'has',5,'en'),(27,1,'no',1,'en'),(28,1,'idea',1,'en'),(29,1,'css',2,'en'),(30,1,'but',1,'en'),(31,1,'is',22,'en'),(32,1,'committed',1,'en'),(33,1,'writer',1,'en'),(34,1,'therefor',4,'en'),(35,1,'have',10,'en'),(36,1,'decided',1,'en'),(37,1,'to',43,'en'),(38,1,'share',2,'en'),(39,1,'work',1,'en'),(40,1,'in',20,'en'),(41,1,'future',1,'en'),(42,1,'will',9,'en'),(43,1,'be',9,'en'),(44,1,'doing',1,'en'),(45,1,'design',3,'en'),(46,1,'administration',2,'en'),(47,1,'writing',1,'en'),(48,1,'articles',2,'en'),(49,1,'this',3,'en'),(50,1,'basic',2,'en'),(51,1,'principle',1,'en'),(52,1,'any',3,'en'),(53,1,'cms',1,'en'),(54,1,'by',4,'en'),(55,1,'way',1,'en'),(56,1,'separation',1,'en'),(57,1,'content',3,'en'),(58,1,'now',3,'en'),(59,1,'as',15,'en'),(60,1,'both',2,'en'),(61,1,'access',9,'en'),(62,1,'back',6,'en'),(63,1,'end',17,'en'),(64,1,'would',1,'en'),(65,1,'still',1,'en'),(66,1,'able',4,'en'),(67,1,'edit',5,'en'),(68,1,'look',4,'en'),(69,1,'or',10,'en'),(70,1,'create',12,'en'),(71,1,'new',3,'en'),(72,1,'user',12,'en'),(73,1,'accounts',1,'en'),(74,1,'although',2,'en'),(75,1,'he',9,'en'),(76,1,'actually',2,'en'),(77,1,'not',10,'en'),(78,1,'responsible',2,'en'),(79,1,'for',6,'en'),(80,1,'want',2,'en'),(81,1,'disable',1,'en'),(82,1,'these',3,'en'),(83,1,'functions',2,'en'),(84,1,'his',3,'en'),(85,1,'account',4,'en'),(86,1,'at',8,'en'),(87,1,'point',2,'en'),(88,1,'created',1,'en'),(89,1,'role',3,'en'),(90,1,'it',6,'en'),(91,1,'exists',1,'en'),(92,1,'mind',1,'en'),(93,1,'only',7,'en'),(94,1,'could',1,'en'),(95,1,'name',1,'en'),(96,1,'editor',4,'en'),(97,1,'author',1,'en'),(98,1,'learn',1,'en'),(99,1,'how',2,'en'),(100,1,'permissions',4,'en'),(101,1,'can',12,'en'),(102,1,'restricted',1,'en'),(103,1,'let\'s',2,'en'),(104,1,'take',3,'en'),(105,1,'closer',1,'en'),(106,1,'our',2,'en'),(107,1,'example',2,'en'),(108,1,'users',2,'en'),(109,1,'1',1,'en'),(110,1,'kevin',2,'en'),(111,1,'jones',2,'en'),(112,1,'administrator',5,'en'),(113,1,'all',11,'en'),(114,1,'modules',13,'en'),(115,1,'an',4,'en'),(116,1,'simply',1,'en'),(117,1,'check',1,'en'),(118,1,'2',1,'en'),(119,1,'helen',1,'en'),(120,1,'lewis',8,'en'),(121,1,'she',3,'en'),(122,1,'teacher',2,'en'),(123,1,'her',3,'en'),(124,1,'course',6,'en'),(125,1,'violin',3,'en'),(126,1,'master',2,'en'),(127,1,'class',5,'en'),(128,1,'each',7,'en'),(129,1,'its',4,'en'),(130,1,'own',6,'en'),(131,1,'page',31,'en'),(132,1,'news',6,'en'),(133,1,'archive',3,'en'),(134,1,'calendar',4,'en'),(135,1,'resources',1,'en'),(136,1,'visible',5,'en'),(137,1,'students',3,'en'),(138,1,'respective',1,'en'),(139,1,'addition',2,'en'),(140,1,'there',5,'en'),(141,1,'general',3,'en'),(142,1,'courses',4,'en'),(143,1,'accessed',1,'en'),(144,1,'edited',1,'en'),(145,1,'teachers',1,'en'),(146,1,'since',3,'en'),(147,1,'mrs',7,'en'),(148,1,'useful',1,'en'),(149,1,'group',7,'en'),(150,1,'called',3,'en'),(151,1,'editors',3,'en'),(152,1,'open',4,'en'),(153,1,'module',10,'en'),(154,1,'groups',3,'en'),(155,1,'see',4,'en'),(156,1,'few',1,'en'),(157,1,'activated',1,'en'),(158,1,'navigation',2,'en'),(159,1,'modify',1,'en'),(160,1,'pages',10,'en'),(161,1,'on',2,'en'),(162,1,'items',1,'en'),(163,1,'events',2,'en'),(164,1,'file',2,'en'),(165,1,'manager',2,'en'),(166,1,'upload',2,'en'),(167,1,'images',1,'en'),(168,1,'documents',1,'en'),(169,1,'allowed',3,'en'),(170,1,'well',2,'en'),(171,1,'control',1,'en'),(172,1,'feature',1,'en'),(173,1,'contao',4,'en'),(174,1,'version',1,'en'),(175,1,'2.5',1,'en'),(176,1,'tree-based',1,'en'),(177,1,'management',1,'en'),(178,1,'system',1,'en'),(179,1,'meaning',1,'en'),(180,1,'front',11,'en'),(181,1,'refers',1,'en'),(182,1,'hierarchically',1,'en'),(183,1,'ordered',1,'en'),(184,1,'site',5,'en'),(185,1,'structure',5,'en'),(186,1,'administrators',2,'en'),(187,1,'always',1,'en'),(188,1,'whole',1,'en'),(189,1,'tree',1,'en'),(190,1,'default',3,'en'),(191,1,'enable',1,'en'),(192,1,'one',5,'en'),(193,1,'more',3,'en'),(194,1,'mount',1,'en'),(195,1,'them',1,'en'),(196,1,'into',2,'en'),(197,1,'profile',1,'en'),(198,1,'same',2,'en'),(199,1,'applies',1,'en'),(200,1,'folders',1,'en'),(201,1,'directory',1,'en'),(202,1,'i',1,'en'),(203,1,'choosen',2,'en'),(204,1,'mounting',1,'en'),(205,1,'subpages',1,'en'),(206,1,'included',2,'en'),(207,1,'automatically',2,'en'),(208,1,'if',3,'en'),(209,1,'log',3,'en'),(210,1,'those',1,'en'),(211,1,'three',4,'en'),(212,1,'3',1,'en'),(213,1,'james',2,'en'),(214,1,'wilson',4,'en'),(215,1,'assocciate',1,'en'),(216,1,'professor',1,'en'),(217,1,'jazz',7,'en'),(218,1,'piano',9,'en'),(219,1,'also',2,'en'),(220,1,'like',1,'en'),(221,1,'charge',1,'en'),(222,1,'elements',6,'en'),(223,1,'mr',3,'en'),(224,1,'however',1,'en'),(225,1,'go',2,'en'),(226,1,'option',1,'en'),(227,1,'assign',1,'en'),(228,1,'which',2,'en'),(229,1,'should',2,'en'),(230,1,'seen',1,'en'),(231,1,'when',3,'en'),(232,1,'were',2,'en'),(233,1,'logged',4,'en'),(234,1,'here',3,'en'),(235,1,'set',3,'en'),(236,1,'owner',1,'en'),(237,1,'ways',1,'en'),(238,1,'relate',1,'en'),(239,1,'who',3,'en'),(240,1,'owns',2,'en'),(241,1,'someone',1,'en'),(242,1,'else',1,'en'),(243,1,'similar',1,'en'),(244,1,'unix',1,'en'),(245,1,'chmod',1,'en'),(246,1,'utility',1,'en'),(247,1,'belongs',1,'en'),(248,1,'something',1,'en'),(249,1,'with',1,'en'),(250,1,'remember',1,'en'),(251,1,'time',1,'en'),(252,1,'4',1,'en'),(253,1,'john',2,'en'),(254,1,'smith',2,'en'),(255,1,'student',2,'en'),(256,1,'attends',2,'en'),(257,1,'wilson\'s',1,'en'),(258,1,'recognize',1,'en'),(259,1,'additional',1,'en'),(260,1,'menu',1,'en'),(261,1,'before',1,'en'),(262,1,'my',2,'en'),(263,1,'logout',1,'en'),(264,1,'protected',3,'en'),(265,1,'guests',1,'en'),(266,1,'again',1,'en'),(267,1,'find',1,'en'),(268,1,'options',1,'en'),(269,1,'protect',1,'en'),(270,1,'member',2,'en'),(271,1,'let',1,'en'),(272,1,'grant',1,'en'),(273,1,'choose',2,'en'),(274,1,'members',1,'en'),(275,1,'donna',3,'en'),(276,1,'evans',3,'en'),(277,1,'5',1,'en'),(278,1,'change',2,'en'),(279,1,'personal',2,'en'),(280,1,'data',2,'en'),(281,1,'using',1,'en'),(282,1,'note',1,'en'),(283,1,'provide',1,'en'),(284,1,'different',1,'en'),(285,1,'functionality',1,'en'),(286,1,'rule',1,'en'),(287,1,'up',1,'en'),(288,1,'layout',11,'en'),(289,1,'includes',1,'en'),(290,1,'style',3,'en'),(291,1,'sheets',3,'en'),(292,1,'thus',1,'en'),(293,1,'following',1,'en'),(294,1,'order',2,'en'),(295,1,'necessary',2,'en'),(296,1,'b',1,'en'),(297,1,'c',1,'en'),(298,1,'include',2,'en'),(299,1,'d',1,'en'),(300,1,'layouts',1,'en'),(301,1,'between',1,'en'),(302,1,'column',4,'en'),(303,1,'two',1,'en'),(304,1,'add',2,'en'),(305,1,'optional',1,'en'),(306,1,'header',1,'en'),(307,1,'footer',1,'en'),(308,1,'framework',1,'en'),(309,1,'divide',1,'en'),(310,1,'selected',1,'en'),(311,1,'sections',2,'en'),(312,1,'once',1,'en'),(313,1,'shown',1,'en'),(314,1,'below',2,'en'),(315,1,'other',1,'en'),(316,1,'so',1,'en'),(317,1,'within',1,'en'),(318,1,'screenshot',1,'en'),(319,1,'music',1,'en'),(320,1,'calendars',1,'en'),(321,1,'pagemounts',1,'en'),(322,2,'our',1,'en'),(323,2,'teachers',3,'en'),(324,2,'here',1,'en'),(325,2,'is',3,'en'),(326,2,'another',1,'en'),(327,2,'new',2,'en'),(328,2,'feature',1,'en'),(329,2,'in',4,'en'),(330,2,'version',1,'en'),(331,2,'2.5',1,'en'),(332,2,'article',10,'en'),(333,2,'teasers',1,'en'),(334,2,'you',2,'en'),(335,2,'can',2,'en'),(336,2,'add',1,'en'),(337,2,'a',5,'en'),(338,2,'teaser',5,'en'),(339,2,'text',4,'en'),(340,2,'to',5,'en'),(341,2,'each',1,'en'),(342,2,'and',4,'en'),(343,2,'make',1,'en'),(344,2,'contao',1,'en'),(345,2,'display',2,'en'),(346,2,'it',1,'en'),(347,2,'automatically',1,'en'),(348,2,'if',1,'en'),(349,2,'there',1,'en'),(350,2,'are',1,'en'),(351,2,'multiple',1,'en'),(352,2,'articles',1,'en'),(353,2,'on',1,'en'),(354,2,'page',1,'en'),(355,2,'or',1,'en'),(356,2,'use',1,'en'),(357,2,'the',11,'en'),(358,2,'content',1,'en'),(359,2,'element',1,'en'),(360,2,'of',4,'en'),(361,2,'particular',1,'en'),(362,2,'followed',1,'en'),(363,2,'by',1,'en'),(364,2,'read',9,'en'),(365,2,'more..',3,'en'),(366,2,'link',1,'en'),(367,2,'helen',4,'en'),(368,2,'lewis',5,'en'),(369,2,'this',2,'en'),(370,2,'about',2,'en'),(371,2,'mrs',1,'en'),(372,2,'has',3,'en'),(373,2,'been',2,'en'),(374,2,'teaching',1,'en'),(375,2,'at',1,'en'),(376,2,'music',4,'en'),(377,2,'academy',3,'en'),(378,2,'for',1,'en'),(379,2,'nearly',1,'en'),(380,2,'10',1,'en'),(381,2,'years',1,'en'),(382,2,'she',1,'en'),(383,2,'member',1,'en'),(384,2,'association',1,'en'),(385,2,'since',2,'en'),(386,2,'its',1,'en'),(387,2,'inception',1,'en'),(388,2,'click',2,'en'),(389,2,'more',2,'en'),(390,2,'james',4,'en'),(391,2,'wilson',5,'en'),(392,2,'mr',1,'en'),(393,2,'graduated',1,'en'),(394,2,'from',1,'en'),(395,2,'1968',1,'en'),(396,2,'enjoyed',1,'en'),(397,2,'international',1,'en'),(398,2,'renown',1,'en'),(399,2,'then',1,'en'),(400,2,'he',1,'en'),(401,2,'returned',1,'en'),(402,2,'2010',1,'en'),(403,2,'give',1,'en'),(404,2,'lessons',1,'en'),(405,2,'traditional',1,'en'),(406,2,'contemporary',1,'en'),(407,2,'jazz',1,'en'),(408,2,'piano',1,'en'),(409,3,'news',5,'en'),(410,3,'and',3,'en'),(411,3,'updates',1,'en'),(412,3,'protected',2,'en'),(413,3,'if',2,'en'),(414,3,'you',3,'en'),(415,3,'are',2,'en'),(416,3,'viewing',1,'en'),(417,3,'the',5,'en'),(418,3,'front',3,'en'),(419,3,'end',5,'en'),(420,3,'without',1,'en'),(421,3,'being',1,'en'),(422,3,'logged',1,'en'),(423,3,'in',3,'en'),(424,3,'to',6,'en'),(425,3,'back',2,'en'),(426,3,'will',2,'en'),(427,3,'see',1,'en'),(428,3,'that',2,'en'),(429,3,'james',1,'en'),(430,3,'wilson',1,'en'),(431,3,'returns',1,'en'),(432,3,'is',2,'en'),(433,3,'most',1,'en'),(434,3,'recent',1,'en'),(435,3,'item',2,'en'),(436,3,'however',1,'en'),(437,3,'log',1,'en'),(438,3,'as',1,'en'),(439,3,'donna',1,'en'),(440,3,'evans',1,'en'),(441,3,'or',1,'en'),(442,3,'john',1,'en'),(443,3,'smith',1,'en'),(444,3,'another',1,'en'),(445,3,'appear',1,'en'),(446,3,'has',1,'en'),(447,3,'not',1,'en'),(448,3,'been',1,'en'),(449,3,'visible',1,'en'),(450,3,'before',1,'en'),(451,3,'try',1,'en'),(452,3,'their',2,'en'),(453,3,'accounts',1,'en'),(454,3,'find',2,'en'),(455,3,'out',2,'en'),(456,3,'who',1,'en'),(457,3,'going',1,'en'),(458,3,'perform',1,'en'),(459,3,'live',1,'en'),(460,3,'at',2,'en'),(461,3,'music',2,'en'),(462,3,'academy',2,'en'),(463,3,'february',1,'en'),(464,3,'2010',1,'en'),(465,3,'since',1,'en'),(466,3,'version',1,'en'),(467,3,'2.5',1,'en'),(468,3,'contao',1,'en'),(469,3,'allows',1,'en'),(470,3,'protect',1,'en'),(471,3,'archives',2,'en'),(472,3,'show',1,'en'),(473,3,'items',1,'en'),(474,3,'a',2,'en'),(475,3,'particular',1,'en'),(476,3,'user',1,'en'),(477,3,'group',1,'en'),(478,3,'only',1,'en'),(479,3,'take',1,'en'),(480,3,'look',1,'en'),(481,3,'how',1,'en'),(482,3,'new',1,'en'),(483,3,'set',1,'en'),(484,3,'up',1,'en'),(485,4,'events',9,'en'),(486,4,'and',1,'en'),(487,4,'schedules',1,'en'),(488,4,'calendar',4,'en'),(489,4,'here',4,'en'),(490,4,'is',2,'en'),(491,4,'a',6,'en'),(492,4,'quick',1,'en'),(493,4,'example',5,'en'),(494,4,'of',3,'en'),(495,4,'how',2,'en'),(496,4,'to',9,'en'),(497,4,'use',3,'en'),(498,4,'the',6,'en'),(499,4,'module',1,'en'),(500,4,'you',3,'en'),(501,4,'can',3,'en'),(502,4,'either',2,'en'),(503,4,'display',1,'en'),(504,4,'or',4,'en'),(505,4,'an',2,'en'),(506,4,'event',3,'en'),(507,4,'list',7,'en'),(508,4,'together',2,'en'),(509,4,'with',2,'en'),(510,4,'mini-calendar',2,'en'),(511,4,'following',1,'en'),(512,4,'uses',1,'en'),(513,4,'show',1,'en'),(514,4,'click',2,'en'),(515,4,'go',1,'en'),(516,4,'january',2,'en'),(517,4,'2010',2,'en'),(518,4,'contains',1,'en'),(519,4,'data',1,'en'),(520,4,'all',3,'en'),(521,4,'day',1,'en'),(522,4,'week',1,'en'),(523,4,'year',1,'en'),(524,4,'upcoming',1,'en'),(525,4,'only',1,'en'),(526,4,'again',1,'en'),(527,4,'log',1,'en'),(528,4,'in',1,'en'),(529,4,'as',1,'en'),(530,4,'donna',1,'en'),(531,4,'evans',1,'en'),(532,4,'john',1,'en'),(533,4,'smith',1,'en'),(534,4,'see',1,'en'),(535,4,'protected',2,'en'),(536,4,'have',1,'en'),(537,4,'been',1,'en'),(538,4,'added',1,'en'),(539,4,'contao',1,'en'),(540,4,'version',1,'en'),(541,4,'2.5',1,'en'),(542,4,'open',1,'en'),(543,4,'music',1,'en'),(544,4,'academy',1,'en'),(545,5,'welcome',2,'en'),(546,5,'to',13,'en'),(547,5,'music',4,'en'),(548,5,'academy',6,'en'),(549,5,'contao',6,'en'),(550,5,'demo',1,'en'),(551,5,'website',7,'en'),(552,5,'a',14,'en'),(553,5,'content',2,'en'),(554,5,'management',2,'en'),(555,5,'system',2,'en'),(556,5,'is',1,'en'),(557,5,'usually',1,'en'),(558,5,'divided',1,'en'),(559,5,'into',1,'en'),(560,5,'two',2,'en'),(561,5,'areas',1,'en'),(562,5,'the',13,'en'),(563,5,'back',11,'en'),(564,5,'end',21,'en'),(565,5,'administration',1,'en'),(566,5,'area',1,'en'),(567,5,'and',9,'en'),(568,5,'front',10,'en'),(569,5,'if',1,'en'),(570,5,'you',5,'en'),(571,5,'are',5,'en'),(572,5,'reading',1,'en'),(573,5,'this',1,'en'),(574,5,'currently',2,'en'),(575,5,'viewing',2,'en'),(576,5,'log',4,'en'),(577,5,'in',5,'en'),(578,5,'simply',1,'en'),(579,5,'add',1,'en'),(580,5,'your',1,'en'),(581,5,'url',1,'en'),(582,5,'http',1,'en'),(583,5,'localhost',1,'en'),(584,5,'core',1,'en'),(585,5,'when',1,'en'),(586,5,'i',3,'en'),(587,5,'was',1,'en'),(588,5,'creating',1,'en'),(589,5,'example',2,'en'),(590,5,'give',1,'en'),(591,5,'people',1,'en'),(592,5,'an',1,'en'),(593,5,'idea',1,'en'),(594,5,'of',4,'en'),(595,5,'what',3,'en'),(596,5,'can',6,'en'),(597,5,'be',2,'en'),(598,5,'done',2,'en'),(599,5,'with',5,'en'),(600,5,'tried',1,'en'),(601,5,'find',2,'en'),(602,5,'real',1,'en'),(603,5,'world',1,'en'),(604,5,'scenario',1,'en'),(605,5,'that',4,'en'),(606,5,'involved',1,'en'),(607,5,'more',2,'en'),(608,5,'than',1,'en'),(609,5,'one',1,'en'),(610,5,'person',1,'en'),(611,5,'there',1,'en'),(612,5,'lot',3,'en'),(613,5,'different',4,'en'),(614,5,'scenarios',1,'en'),(615,5,'from',2,'en'),(616,5,'simple',1,'en'),(617,5,'managed',1,'en'),(618,5,'by',1,'en'),(619,5,'single',1,'en'),(620,5,'administrator',2,'en'),(621,5,'community',1,'en'),(622,5,'members',1,'en'),(623,5,'users',7,'en'),(624,5,'or',2,'en'),(625,5,'company',1,'en'),(626,5,'intranet',1,'en'),(627,5,'internet',1,'en'),(628,5,'finally',1,'en'),(629,5,'came',1,'en'),(630,5,'up',1,'en'),(631,5,'college',1,'en'),(632,5,'has',2,'en'),(633,5,'includes',1,'en'),(634,5,'three',1,'en'),(635,5,'employees',2,'en'),(636,5,'students',2,'en'),(637,5,'each',1,'en'),(638,5,'user',9,'en'),(639,5,'role',6,'en'),(640,5,'their',2,'en'),(641,5,'accounts',2,'en'),(642,5,'see',1,'en'),(643,5,'how',2,'en'),(644,5,'looks',1,'en'),(645,5,'perspective',1,'en'),(646,5,'please',1,'en'),(647,5,'note',1,'en'),(648,5,'only',2,'en'),(649,5,'username',5,'en'),(650,5,'k.jones',1,'en'),(651,5,'password',5,'en'),(652,5,'kevinjones',1,'en'),(653,5,'h.lewis',1,'en'),(654,5,'helenlewis',1,'en'),(655,5,'j.wilson',1,'en'),(656,5,'jameswilson',1,'en'),(657,5,'j.smith',1,'en'),(658,5,'johnsmith',1,'en'),(659,5,'d.evans',1,'en'),(660,5,'donnaevans',1,'en'),(661,5,'previous',1,'en'),(662,5,'next',2,'en'),(663,5,'roles',2,'en'),(664,5,'permissions',1,'en'),(665,5,'on',1,'en'),(666,5,'page',1,'en'),(667,5,'we',2,'en'),(668,5,'will',2,'en'),(669,5,'take',2,'en'),(670,5,'closer',2,'en'),(671,5,'look',2,'en'),(672,5,'at',2,'en'),(673,5,'out',1,'en'),(674,5,'our',1,'en'),(675,5,'allowed',1,'en'),(676,5,'do',2,'en'),(677,5,'they',1,'en'),(678,5,'cannot',1,'en'),(679,5,'then',1,'en'),(680,5,'these',1,'en'),(681,5,'access',1,'en'),(682,5,'restrictions',1,'en'),(683,5,'have',1,'en'),(684,5,'been',1,'en'),(685,5,'implemented',1,'en'),(686,5,'make',1,'en'),(687,5,'sure',1,'en'),(688,5,'visit',2,'en'),(689,5,'https',1,'en'),(690,5,'contao.org',2,'en'),(691,5,'for',1,'en'),(692,5,'information',1,'en'),(1594,6,'either',1,'en'),(1593,6,'extension',1,'en'),(1592,6,'gdlib',1,'en'),(1591,6,'using',1,'en'),(1590,6,'thumbnails',1,'en'),(1589,6,'generates',1,'en'),(1588,6,'automatically',1,'en'),(1587,6,'contao',1,'en'),(1586,6,'building',2,'en'),(1585,6,'historical',2,'en'),(1584,6,'library',2,'en'),(1583,6,'hall',2,'en'),(1582,6,'lincoln',2,'en'),(1581,6,'overview',1,'en'),(1580,6,'load',1,'en'),(1579,6,'time',1,'en'),(1578,6,'less',1,'en'),(1577,6,'takes',1,'en'),(1576,6,'it',1,'en'),(1575,6,'so',1,'en'),(1574,6,'pages',1,'en'),(1573,6,'multiple',1,'en'),(1572,6,'into',1,'en'),(1571,6,'split',1,'en'),(1570,6,'can',3,'en'),(1569,6,'you',3,'en'),(1568,6,'2.5',1,'en'),(1567,6,'version',1,'en'),(1566,6,'since',1,'en'),(1565,6,'size',1,'en'),(1564,6,'full',1,'en'),(1563,6,'in',1,'en'),(1562,6,'images',1,'en'),(1561,6,'show',1,'en'),(1560,6,'to',2,'en'),(1559,6,'mediabox',1,'en'),(1558,6,'called',1,'en'),(1557,6,'gallery',2,'en'),(1556,6,'image',4,'en'),(1555,6,'based',1,'en'),(1554,6,'mootools',1,'en'),(1553,6,'uses',1,'en'),(1552,6,'example',1,'en'),(1551,6,'this',1,'en'),(1550,6,'the',3,'en'),(1549,6,'of',1,'en'),(1548,6,'few',1,'en'),(1547,6,'a',2,'en'),(1546,6,'are',1,'en'),(1545,6,'here',1,'en'),(1544,6,'impressions',3,'en'),(1543,6,'campus',7,'en'),(760,7,'helen',4,'en'),(761,7,'lewis',5,'en'),(762,7,'this',4,'en'),(763,7,'is',3,'en'),(764,7,'the',7,'en'),(765,7,'teaser',1,'en'),(766,7,'text',1,'en'),(767,7,'of',2,'en'),(768,7,'article',5,'en'),(769,7,'about',3,'en'),(770,7,'mrs',1,'en'),(771,7,'has',3,'en'),(772,7,'been',2,'en'),(773,7,'teaching',2,'en'),(774,7,'at',1,'en'),(775,7,'music',3,'en'),(776,7,'academy',2,'en'),(777,7,'for',1,'en'),(778,7,'nearly',1,'en'),(779,7,'10',1,'en'),(780,7,'years',1,'en'),(781,7,'and',2,'en'),(782,7,'she',1,'en'),(783,7,'a',3,'en'),(784,7,'member',1,'en'),(785,7,'teachers',1,'en'),(786,7,'full',1,'en'),(787,7,'you',3,'en'),(788,7,'could',1,'en'),(789,7,'add',1,'en'),(790,7,'her',2,'en'),(791,7,'curriculum',1,'en'),(792,7,'vitae',1,'en'),(793,7,'or',1,'en'),(794,7,'write',1,'en'),(795,7,'something',2,'en'),(796,7,'skills',1,'en'),(797,7,'since',1,'en'),(798,7,'only',1,'en'),(799,7,'an',1,'en'),(800,7,'example',1,'en'),(801,7,'i',1,'en'),(802,7,'rather',1,'en'),(803,7,'point',1,'en'),(804,7,'out',1,'en'),(805,7,'else',1,'en'),(806,7,'might',1,'en'),(807,7,'have',1,'en'),(808,7,'noticed',1,'en'),(809,7,'that',1,'en'),(810,7,'its',1,'en'),(811,7,'own',1,'en'),(812,7,'url',2,'en'),(813,7,'built',1,'en'),(814,7,'from',1,'en'),(815,7,'page',1,'en'),(816,7,'alias',2,'en'),(817,7,'new',1,'en'),(818,7,'in',1,'en'),(819,7,'version',1,'en'),(820,7,'2.5',1,'en'),(821,7,'can',1,'en'),(822,7,'use',1,'en'),(823,7,'unique',1,'en'),(824,7,'as',1,'en'),(825,7,'permanent',1,'en'),(826,7,'link',2,'en'),(827,7,'to',2,'en'),(828,7,'directly',1,'en'),(829,7,'particular',1,'en'),(830,8,'james',6,'en'),(831,8,'wilson',7,'en'),(832,8,'this',2,'en'),(833,8,'is',2,'en'),(834,8,'the',6,'en'),(835,8,'teaser',1,'en'),(836,8,'text',1,'en'),(837,8,'of',3,'en'),(838,8,'article',2,'en'),(839,8,'about',2,'en'),(840,8,'mr',1,'en'),(841,8,'graduated',1,'en'),(842,8,'from',1,'en'),(843,8,'music',2,'en'),(844,8,'academy',2,'en'),(845,8,'in',3,'en'),(846,8,'1968',1,'en'),(847,8,'and',4,'en'),(848,8,'has',2,'en'),(849,8,'enjoyed',1,'en'),(850,8,'international',1,'en'),(851,8,'renown',1,'en'),(852,8,'since',2,'en'),(853,8,'then',1,'en'),(854,8,'he',1,'en'),(855,8,'returned',1,'en'),(856,8,'2010',1,'en'),(857,8,'to',1,'en'),(858,8,'full',1,'en'),(859,8,'stage',1,'en'),(860,8,'have',1,'en'),(861,8,'been',2,'en'),(862,8,'lifelong',1,'en'),(863,8,'partners',1,'en'),(864,8,'jazz',1,'en'),(865,8,'pianist',1,'en'),(866,8,'youngest',1,'en'),(867,8,'son',1,'en'),(868,8,'a',3,'en'),(869,8,'preacher',1,'en'),(870,8,'began',1,'en'),(871,8,'playing',1,'en'),(872,8,'his',2,'en'),(873,8,'father\'s',1,'en'),(874,8,'church',1,'en'),(875,8,'as',1,'en'),(876,8,'preschooler',1,'en'),(877,8,'took',1,'en'),(878,8,'first',1,'en'),(879,8,'solo',1,'en'),(880,8,'at',1,'en'),(881,8,'age',1,'en'),(882,8,'six',1,'en'),(883,8,'lead',1,'en'),(884,8,'performer',1,'en'),(885,8,'ever',1,'en'),(886,9,'courses',3,'en'),(887,9,'overview',2,'en'),(888,9,'here',1,'en'),(889,9,'is',2,'en'),(890,9,'a',3,'en'),(891,9,'quick',1,'en'),(892,9,'of',7,'en'),(893,9,'some',1,'en'),(894,9,'course',2,'en'),(895,9,'students',1,'en'),(896,9,'begin',2,'en'),(897,9,'tuition',1,'en'),(898,9,'fee',1,'en'),(899,9,'violin',1,'en'),(900,9,'master',1,'en'),(901,9,'class',2,'en'),(902,9,'10',1,'en'),(903,9,'2010-03-02',1,'en'),(904,9,'360',1,'en'),(905,9,'elements',1,'en'),(906,9,'jazz',1,'en'),(907,9,'piano',1,'en'),(908,9,'12',1,'en'),(909,9,'2010-03-04',1,'en'),(910,9,'450',1,'en'),(911,9,'rock',2,'en'),(912,9,'guitar',2,'en'),(913,9,'basics',1,'en'),(914,9,'8',2,'en'),(915,9,'2010-03-11',1,'en'),(916,9,'300',1,'en'),(917,9,'secrets',1,'en'),(918,9,'2010-03-12',1,'en'),(919,9,'380',1,'en'),(920,9,'modern',1,'en'),(921,9,'drum',1,'en'),(922,9,'grooves',1,'en'),(923,9,'16',1,'en'),(924,9,'2010-04-02',1,'en'),(925,9,'340',1,'en'),(926,9,'contemporary',1,'en'),(927,9,'bass',1,'en'),(928,9,'styles',1,'en'),(929,9,'14',1,'en'),(930,9,'2010-04-06',1,'en'),(931,9,'320',1,'en'),(932,9,'by',3,'en'),(933,9,'default',1,'en'),(934,9,'the',7,'en'),(935,9,'table',2,'en'),(936,9,'sorted',1,'en'),(937,9,'date',1,'en'),(938,9,'clicking',1,'en'),(939,9,'one',1,'en'),(940,9,'column',1,'en'),(941,9,'headers',1,'en'),(942,9,'you',4,'en'),(943,9,'can',1,'en'),(944,9,'resort',1,'en'),(945,9,'it',2,'en'),(946,9,'javascript',1,'en'),(947,9,'required',1,'en'),(948,9,'has',1,'en'),(949,9,'been',1,'en'),(950,9,'styled',1,'en'),(951,9,'with',1,'en'),(952,9,'css',1,'en'),(953,9,'do',1,'en'),(954,9,'not',1,'en'),(955,9,'forget',1,'en'),(956,9,'to',3,'en'),(957,9,'provide',1,'en'),(958,9,'small',1,'en'),(959,9,'summary',1,'en'),(960,9,'table\'s',1,'en'),(961,9,'content',1,'en'),(962,9,'in',2,'en'),(963,9,'order',1,'en'),(964,9,'make',1,'en'),(965,9,'accessible',1,'en'),(966,9,'if',1,'en'),(967,9,'log',1,'en'),(968,9,'front',1,'en'),(969,9,'end',1,'en'),(970,9,'as',2,'en'),(971,9,'donna',1,'en'),(972,9,'evans',1,'en'),(973,9,'or',1,'en'),(974,9,'john',1,'en'),(975,9,'smith',1,'en'),(976,9,'should',1,'en'),(977,9,'see',1,'en'),(978,9,'protected',1,'en'),(979,9,'page',2,'en'),(980,9,'are',1,'en'),(981,9,'attending',1,'en'),(982,9,'subpage',1,'en'),(983,9,'this',1,'en'),(984,9,'music',1,'en'),(985,9,'academy',1,'en'),(986,10,'services',2,'en'),(987,10,'and',2,'en'),(988,10,'support',1,'en'),(989,10,'welcome',1,'en'),(990,10,'to',1,'en'),(991,10,'the',7,'en'),(992,10,'music',2,'en'),(993,10,'academy',2,'en'),(994,10,'service',1,'en'),(995,10,'desk',1,'en'),(996,10,'here',1,'en'),(997,10,'you',2,'en'),(998,10,'can',2,'en'),(999,10,'hand',1,'en'),(1000,10,'in',4,'en'),(1001,10,'your',1,'en'),(1002,10,'term',1,'en'),(1003,10,'paper',1,'en'),(1004,10,'by',1,'en'),(1005,10,'filling',1,'en'),(1006,10,'form',4,'en'),(1007,10,'below',1,'en'),(1008,10,'has',1,'en'),(1009,10,'been',1,'en'),(1010,10,'created',1,'en'),(1011,10,'with',1,'en'),(1012,10,'contao',1,'en'),(1013,10,'generator',2,'en'),(1014,10,'which',1,'en'),(1015,10,'find',1,'en'),(1016,10,'back',1,'en'),(1017,10,'end',1,'en'),(1018,10,'automatially',1,'en'),(1019,10,'validates',1,'en'),(1020,10,'user',1,'en'),(1021,10,'input',1,'en'),(1022,10,'checks',1,'en'),(1023,10,'that',1,'en'),(1024,10,'all',1,'en'),(1025,10,'mandatory',1,'en'),(1026,10,'fields',1,'en'),(1027,10,'are',1,'en'),(1028,10,'filled',1,'en'),(1029,11,'new',3,'en'),(1030,11,'navigation',22,'en'),(1031,11,'features',1,'en'),(1032,11,'menus',1,'en'),(1033,11,'another',1,'en'),(1034,11,'brand',1,'en'),(1035,11,'and',6,'en'),(1036,11,'very',1,'en'),(1037,11,'powerful',1,'en'),(1038,11,'feature',1,'en'),(1039,11,'in',2,'en'),(1040,11,'version',1,'en'),(1041,11,'2.5',1,'en'),(1042,11,'is',6,'en'),(1043,11,'the',33,'en'),(1044,11,'improved',1,'en'),(1045,11,'menu',18,'en'),(1046,11,'you',11,'en'),(1047,11,'can',3,'en'),(1048,11,'now',4,'en'),(1049,11,'define',1,'en'),(1050,11,'a',4,'en'),(1051,11,'start',6,'en'),(1052,11,'level',16,'en'),(1053,11,'stop',8,'en'),(1054,11,'thus',1,'en'),(1055,11,'create',1,'en'),(1056,11,'any',3,'en'),(1057,11,'kind',1,'en'),(1058,11,'of',3,'en'),(1059,11,'want',2,'en'),(1060,11,'fact',1,'en'),(1061,11,'do',1,'en'),(1062,11,'not',2,'en'),(1063,11,'even',2,'en'),(1064,11,'need',1,'en'),(1065,11,'main',6,'en'),(1066,11,'items',5,'en'),(1067,11,'submenu',4,'en'),(1068,11,'modules',1,'en'),(1069,11,'more',1,'en'),(1070,11,'example',1,'en'),(1071,11,'site',2,'en'),(1072,11,'structure',3,'en'),(1073,11,'home',4,'en'),(1074,11,'music',7,'en'),(1075,11,'genres',8,'en'),(1076,11,'rock',4,'en'),(1077,11,'pop',7,'en'),(1078,11,'artists',3,'en'),(1079,11,'mrs',4,'en'),(1080,11,'x',3,'en'),(1081,11,'y',3,'en'),(1082,11,'movies',4,'en'),(1083,11,'action',1,'en'),(1084,11,'fantasy',1,'en'),(1085,11,'actors',2,'en'),(1086,11,'mr',2,'en'),(1087,11,'contact',4,'en'),(1088,11,'default',2,'en'),(1089,11,'by',2,'en'),(1090,11,'simply',2,'en'),(1091,11,'displays',2,'en'),(1092,11,'whole',1,'en'),(1093,11,'1',6,'en'),(1094,11,'if',4,'en'),(1095,11,'set',2,'en'),(1096,11,'to',7,'en'),(1097,11,'will',1,'en'),(1098,11,'only',1,'en'),(1099,11,'display',1,'en'),(1100,11,'first',4,'en'),(1101,11,'all',1,'en'),(1102,11,'active',2,'en'),(1103,11,'pages',2,'en'),(1104,11,'here',3,'en'),(1105,11,'what',2,'en'),(1106,11,'looks',3,'en'),(1107,11,'like',3,'en'),(1108,11,'when',1,'en'),(1109,11,'are',2,'en'),(1110,11,'viewing',1,'en'),(1111,11,'page',4,'en'),(1112,11,'with',5,'en'),(1113,11,'hard',3,'en'),(1114,11,'limit',3,'en'),(1115,11,'almost',1,'en'),(1116,11,'module',3,'en'),(1117,11,'does',1,'en'),(1118,11,'except',1,'en'),(1119,11,'for',1,'en'),(1120,11,'always',1,'en'),(1121,11,'being',1,'en'),(1122,11,'shown',1,'en'),(1123,11,'beyond',2,'en'),(1124,11,'choose',1,'en'),(1125,11,'option',1,'en'),(1126,11,'never',1,'en'),(1127,11,'shows',1,'en'),(1128,11,'ouput',1,'en'),(1129,11,'exacly',1,'en'),(1130,11,'same',2,'en'),(1131,11,'as',4,'en'),(1132,11,'however',1,'en'),(1133,11,'limited',1,'en'),(1134,11,'anymore',1,'en'),(1135,11,'2',3,'en'),(1136,11,'lot',1,'en'),(1137,11,'people',1,'en'),(1138,11,'have',1,'en'),(1139,11,'requested',1,'en'),(1140,11,'that',2,'en'),(1141,11,'allows',1,'en'),(1142,11,'them',1,'en'),(1143,11,'show',1,'en'),(1144,11,'two',3,'en'),(1145,11,'levels',4,'en'),(1146,11,'horizontal',1,'en'),(1147,11,'other',1,'en'),(1148,11,'optional',1,'en'),(1149,11,'vertical',1,'en'),(1150,11,'accomplish',2,'en'),(1151,11,'basically',1,'en'),(1152,11,'renders',1,'en'),(1153,11,'from',1,'en'),(1154,11,'second',1,'en'),(1155,11,'using',1,'en'),(1156,11,'current',1,'en'),(1157,11,'item',1,'en'),(1158,11,'starting',1,'en'),(1159,11,'point',1,'en'),(1160,11,'setting',1,'en'),(1161,11,'how',2,'en'),(1162,11,'on',2,'en'),(1163,11,'your',2,'en'),(1164,11,'includes',1,'en'),(1165,11,'an',1,'en'),(1166,11,'offset',1,'en'),(1167,11,'which',1,'en'),(1168,11,'equivalent',1,'en'),(1169,11,'academy',1,'en'),(1170,12,'associate',2,'en'),(1171,12,'professor',2,'en'),(1172,12,'james',8,'en'),(1173,12,'wilson',8,'en'),(1174,12,'returns',4,'en'),(1175,12,'jazz',4,'en'),(1176,12,'pianist',3,'en'),(1177,12,'to',10,'en'),(1178,12,'music',4,'en'),(1179,12,'academy',4,'en'),(1180,12,'give',1,'en'),(1181,12,'lessons',1,'en'),(1182,12,'in',6,'en'),(1183,12,'traditional',1,'en'),(1184,12,'and',6,'en'),(1185,12,'contemporary',1,'en'),(1186,12,'piano',1,'en'),(1187,12,'2010-02-04',1,'en'),(1188,12,'10:30',1,'en'),(1189,12,'by',3,'en'),(1190,12,'kevin',1,'en'),(1191,12,'jones',1,'en'),(1192,12,'veteran',1,'en'),(1193,12,'has',3,'en'),(1194,12,'enjoyed',1,'en'),(1195,12,'international',1,'en'),(1196,12,'renown',1,'en'),(1197,12,'since',3,'en'),(1198,12,'graduating',1,'en'),(1199,12,'from',1,'en'),(1200,12,'1968',1,'en'),(1201,12,'the',9,'en'),(1202,12,'stage',1,'en'),(1203,12,'have',2,'en'),(1204,12,'been',3,'en'),(1205,12,'lifelong',1,'en'),(1206,12,'partners',1,'en'),(1207,12,'youngest',1,'en'),(1208,12,'son',1,'en'),(1209,12,'of',2,'en'),(1210,12,'a',7,'en'),(1211,12,'preacher',1,'en'),(1212,12,'began',1,'en'),(1213,12,'playing',1,'en'),(1214,12,'his',2,'en'),(1215,12,'father\'s',1,'en'),(1216,12,'church',1,'en'),(1217,12,'as',2,'en'),(1218,12,'preschooler',1,'en'),(1219,12,'took',1,'en'),(1220,12,'first',1,'en'),(1221,12,'solo',1,'en'),(1222,12,'at',3,'en'),(1223,12,'age',1,'en'),(1224,12,'six',1,'en'),(1225,12,'lead',1,'en'),(1226,12,'performer',1,'en'),(1227,12,'ever',1,'en'),(1228,12,'add',1,'en'),(1229,12,'comment',2,'en'),(1230,12,'john',3,'en'),(1231,12,'smith',2,'en'),(1232,12,'2007-12-02',1,'en'),(1233,12,'it',1,'en'),(1234,12,'is',4,'en'),(1235,12,'great',1,'en'),(1236,12,'him',1,'en'),(1237,12,'back',4,'en'),(1238,12,'he',1,'en'),(1239,12,'best',1,'en'),(1240,12,'reply',1,'en'),(1241,12,'thanks',1,'en'),(1242,12,'lot',1,'en'),(1243,12,'i',1,'en'),(1244,12,'am',1,'en'),(1245,12,'happy',1,'en'),(1246,12,'be',1,'en'),(1247,12,'protected',2,'en'),(1248,12,'news',4,'en'),(1249,12,'if',2,'en'),(1250,12,'you',3,'en'),(1251,12,'are',2,'en'),(1252,12,'viewing',1,'en'),(1253,12,'front',3,'en'),(1254,12,'end',5,'en'),(1255,12,'without',1,'en'),(1256,12,'being',1,'en'),(1257,12,'logged',1,'en'),(1258,12,'will',2,'en'),(1259,12,'see',1,'en'),(1260,12,'that',2,'en'),(1261,12,'most',1,'en'),(1262,12,'recent',1,'en'),(1263,12,'item',2,'en'),(1264,12,'however',1,'en'),(1265,12,'log',1,'en'),(1266,12,'donna',1,'en'),(1267,12,'evans',1,'en'),(1268,12,'or',1,'en'),(1269,12,'another',1,'en'),(1270,12,'appear',1,'en'),(1271,12,'not',1,'en'),(1272,12,'visible',1,'en'),(1273,12,'before',1,'en'),(1274,12,'try',1,'en'),(1275,12,'their',2,'en'),(1276,12,'accounts',1,'en'),(1277,12,'find',2,'en'),(1278,12,'out',2,'en'),(1279,12,'who',1,'en'),(1280,12,'going',1,'en'),(1281,12,'perform',1,'en'),(1282,12,'live',1,'en'),(1283,12,'february',1,'en'),(1284,12,'2010',1,'en'),(1285,12,'version',1,'en'),(1286,12,'2.5',1,'en'),(1287,12,'contao',1,'en'),(1288,12,'allows',1,'en'),(1289,12,'protect',1,'en'),(1290,12,'archives',2,'en'),(1291,12,'show',1,'en'),(1292,12,'items',1,'en'),(1293,12,'particular',1,'en'),(1294,12,'user',1,'en'),(1295,12,'group',1,'en'),(1296,12,'only',1,'en'),(1297,12,'take',1,'en'),(1298,12,'look',1,'en'),(1299,12,'how',1,'en'),(1300,12,'new',1,'en'),(1301,12,'set',1,'en'),(1302,12,'up',1,'en'),(1303,13,'open',4,'en'),(1304,13,'days',2,'en'),(1305,13,'every',2,'en'),(1306,13,'friday',2,'en'),(1307,13,'in',5,'en'),(1308,13,'february',3,'en'),(1309,13,'2010',3,'en'),(1310,13,'the',11,'en'),(1311,13,'gates',2,'en'),(1312,13,'of',5,'en'),(1313,13,'music',6,'en'),(1314,13,'academy\'s',2,'en'),(1315,13,'campus',3,'en'),(1316,13,'will',4,'en'),(1317,13,'be',2,'en'),(1318,13,'thrown',2,'en'),(1319,13,'wide',2,'en'),(1320,13,'to',9,'en'),(1321,13,'welcome',3,'en'),(1322,13,'everyone',2,'en'),(1323,13,'for',2,'en'),(1324,13,'a',6,'en'),(1325,13,'day',2,'en'),(1326,13,'filled',2,'en'),(1327,13,'with',2,'en'),(1328,13,'fun',2,'en'),(1329,13,'and',8,'en'),(1330,13,'interest',2,'en'),(1331,13,'2010-01-28',1,'en'),(1332,13,'09:15',1,'en'),(1333,13,'by',2,'en'),(1334,13,'helen',1,'en'),(1335,13,'lewis',1,'en'),(1336,13,'everybody',1,'en'),(1337,13,'academy',3,'en'),(1338,13,'programme',1,'en'),(1339,13,'includes',1,'en'),(1340,13,'showcase',1,'en'),(1341,13,'events',1,'en'),(1342,13,'demonstrations',1,'en'),(1343,13,'activities',2,'en'),(1344,13,'organised',1,'en'),(1345,13,'each',1,'en'),(1346,13,'academic',1,'en'),(1347,13,'units',1,'en'),(1348,13,'courses',2,'en'),(1349,13,'information',1,'en'),(1350,13,'advice',1,'en'),(1351,13,'about',1,'en'),(1352,13,'studying',1,'en'),(1353,13,'details',1,'en'),(1354,13,'ma',1,'en'),(1355,13,'lectures',1,'en'),(1356,13,'series',1,'en'),(1357,13,'illustrated',1,'en'),(1358,13,'talks',1,'en'),(1359,13,'on',1,'en'),(1360,13,'interesting',1,'en'),(1361,13,'topical',1,'en'),(1362,13,'issues',1,'en'),(1363,13,'entertainment',1,'en'),(1364,13,'tour',1,'en'),(1365,13,'buffet',1,'en'),(1366,13,'add',1,'en'),(1367,13,'comment',1,'en'),(1368,13,'protected',2,'en'),(1369,13,'news',4,'en'),(1370,13,'if',2,'en'),(1371,13,'you',3,'en'),(1372,13,'are',2,'en'),(1373,13,'viewing',1,'en'),(1374,13,'front',3,'en'),(1375,13,'end',5,'en'),(1376,13,'without',1,'en'),(1377,13,'being',1,'en'),(1378,13,'logged',1,'en'),(1379,13,'back',2,'en'),(1380,13,'see',1,'en'),(1381,13,'that',2,'en'),(1382,13,'james',1,'en'),(1383,13,'wilson',1,'en'),(1384,13,'returns',1,'en'),(1385,13,'is',2,'en'),(1386,13,'most',1,'en'),(1387,13,'recent',1,'en'),(1388,13,'item',2,'en'),(1389,13,'however',1,'en'),(1390,13,'log',1,'en'),(1391,13,'as',1,'en'),(1392,13,'donna',1,'en'),(1393,13,'evans',1,'en'),(1394,13,'or',1,'en'),(1395,13,'john',1,'en'),(1396,13,'smith',1,'en'),(1397,13,'another',1,'en'),(1398,13,'appear',1,'en'),(1399,13,'has',1,'en'),(1400,13,'not',1,'en'),(1401,13,'been',1,'en'),(1402,13,'visible',1,'en'),(1403,13,'before',1,'en'),(1404,13,'try',1,'en'),(1405,13,'their',2,'en'),(1406,13,'accounts',1,'en'),(1407,13,'find',2,'en'),(1408,13,'out',2,'en'),(1409,13,'who',1,'en'),(1410,13,'going',1,'en'),(1411,13,'perform',1,'en'),(1412,13,'live',1,'en'),(1413,13,'at',2,'en'),(1414,13,'since',1,'en'),(1415,13,'version',1,'en'),(1416,13,'2.5',1,'en'),(1417,13,'contao',1,'en'),(1418,13,'allows',1,'en'),(1419,13,'protect',1,'en'),(1420,13,'archives',2,'en'),(1421,13,'show',1,'en'),(1422,13,'items',1,'en'),(1423,13,'particular',1,'en'),(1424,13,'user',1,'en'),(1425,13,'group',1,'en'),(1426,13,'only',1,'en'),(1427,13,'take',1,'en'),(1428,13,'look',1,'en'),(1429,13,'how',1,'en'),(1430,13,'new',1,'en'),(1431,13,'set',1,'en'),(1432,13,'up',1,'en'),(1433,14,'scholarship',5,'en'),(1434,14,'program',5,'en'),(1435,14,'music',6,'en'),(1436,14,'academy',6,'en'),(1437,14,'debuts',2,'en'),(1438,14,'a',7,'en'),(1439,14,'new',4,'en'),(1440,14,'that',4,'en'),(1441,14,'will',5,'en'),(1442,14,'cover',2,'en'),(1443,14,'all',3,'en'),(1444,14,'tuition',2,'en'),(1445,14,'and',4,'en'),(1446,14,'housing',2,'en'),(1447,14,'fees',3,'en'),(1448,14,'2009-12-20',1,'en'),(1449,14,'16:00',1,'en'),(1450,14,'by',1,'en'),(1451,14,'kevin',1,'en'),(1452,14,'jones',1,'en'),(1453,14,'in',4,'en'),(1454,14,'major',1,'en'),(1455,14,'initiative',1,'en'),(1456,14,'to',8,'en'),(1457,14,'attract',1,'en'),(1458,14,'the',6,'en'),(1459,14,'best',1,'en'),(1460,14,'young',1,'en'),(1461,14,'musicians',1,'en'),(1462,14,'regardless',1,'en'),(1463,14,'of',1,'en'),(1464,14,'their',3,'en'),(1465,14,'ability',1,'en'),(1466,14,'pay',1,'en'),(1467,14,'has',2,'en'),(1468,14,'announced',1,'en'),(1469,14,'scholars',1,'en'),(1470,14,'attend',1,'en'),(1471,14,'for',1,'en'),(1472,14,'four',1,'en'),(1473,14,'years',1,'en'),(1474,14,'with',1,'en'),(1475,14,'provided',1,'en'),(1476,14,'at',3,'en'),(1477,14,'no',1,'en'),(1478,14,'charge',1,'en'),(1479,14,'add',1,'en'),(1480,14,'comment',1,'en'),(1481,14,'protected',2,'en'),(1482,14,'news',4,'en'),(1483,14,'if',2,'en'),(1484,14,'you',3,'en'),(1485,14,'are',2,'en'),(1486,14,'viewing',1,'en'),(1487,14,'front',3,'en'),(1488,14,'end',5,'en'),(1489,14,'without',1,'en'),(1490,14,'being',1,'en'),(1491,14,'logged',1,'en'),(1492,14,'back',2,'en'),(1493,14,'see',1,'en'),(1494,14,'james',1,'en'),(1495,14,'wilson',1,'en'),(1496,14,'returns',1,'en'),(1497,14,'is',2,'en'),(1498,14,'most',1,'en'),(1499,14,'recent',1,'en'),(1500,14,'item',2,'en'),(1501,14,'however',1,'en'),(1502,14,'log',1,'en'),(1503,14,'as',1,'en'),(1504,14,'donna',1,'en'),(1505,14,'evans',1,'en'),(1506,14,'or',1,'en'),(1507,14,'john',1,'en'),(1508,14,'smith',1,'en'),(1509,14,'another',1,'en'),(1510,14,'appear',1,'en'),(1511,14,'not',1,'en'),(1512,14,'been',1,'en'),(1513,14,'visible',1,'en'),(1514,14,'before',1,'en'),(1515,14,'try',1,'en'),(1516,14,'accounts',1,'en'),(1517,14,'find',2,'en'),(1518,14,'out',2,'en'),(1519,14,'who',1,'en'),(1520,14,'going',1,'en'),(1521,14,'perform',1,'en'),(1522,14,'live',1,'en'),(1523,14,'february',1,'en'),(1524,14,'2010',1,'en'),(1525,14,'since',1,'en'),(1526,14,'version',1,'en'),(1527,14,'2.5',1,'en'),(1528,14,'contao',1,'en'),(1529,14,'allows',1,'en'),(1530,14,'protect',1,'en'),(1531,14,'archives',2,'en'),(1532,14,'show',1,'en'),(1533,14,'items',1,'en'),(1534,14,'particular',1,'en'),(1535,14,'user',1,'en'),(1536,14,'group',1,'en'),(1537,14,'only',1,'en'),(1538,14,'take',1,'en'),(1539,14,'look',1,'en'),(1540,14,'how',1,'en'),(1541,14,'set',1,'en'),(1542,14,'up',1,'en'),(1595,6,'resize',1,'en'),(1596,6,'an',2,'en'),(1597,6,'by',2,'en'),(1598,6,'entering',2,'en'),(1599,6,'width',1,'en'),(1600,6,'or',2,'en'),(1601,6,'height',1,'en'),(1602,6,'crop',1,'en'),(1603,6,'both',1,'en'),(1604,6,'values',1,'en'),(1605,6,'music',5,'en'),(1606,6,'academy',5,'en'),(1607,6,'main',1,'en'),(1608,6,'bulding',1,'en'),(1609,6,'on',1,'en'),(1610,15,'welcome',2,'en'),(1611,15,'to',13,'en'),(1612,15,'music',4,'en'),(1613,15,'academy',6,'en'),(1614,15,'contao',5,'en'),(1615,15,'demo',1,'en'),(1616,15,'website',7,'en'),(1617,15,'a',14,'en'),(1618,15,'content',2,'en'),(1619,15,'management',2,'en'),(1620,15,'system',2,'en'),(1621,15,'is',1,'en'),(1622,15,'usually',1,'en'),(1623,15,'divided',1,'en'),(1624,15,'into',1,'en'),(1625,15,'two',2,'en'),(1626,15,'areas',1,'en'),(1627,15,'the',13,'en'),(1628,15,'back',11,'en'),(1629,15,'end',21,'en'),(1630,15,'administration',1,'en'),(1631,15,'area',1,'en'),(1632,15,'and',9,'en'),(1633,15,'front',10,'en'),(1634,15,'if',1,'en'),(1635,15,'you',5,'en'),(1636,15,'are',5,'en'),(1637,15,'reading',1,'en'),(1638,15,'this',1,'en'),(1639,15,'currently',2,'en'),(1640,15,'viewing',2,'en'),(1641,15,'log',4,'en'),(1642,15,'in',5,'en'),(1643,15,'simply',1,'en'),(1644,15,'add',1,'en'),(1645,15,'your',1,'en'),(1646,15,'url',1,'en'),(1647,15,'http',1,'en'),(1648,15,'127.0.0.1',1,'en'),(1649,15,'contao-3.2.4',1,'en'),(1650,15,'when',1,'en'),(1651,15,'i',3,'en'),(1652,15,'was',1,'en'),(1653,15,'creating',1,'en'),(1654,15,'example',2,'en'),(1655,15,'give',1,'en'),(1656,15,'people',1,'en'),(1657,15,'an',1,'en'),(1658,15,'idea',1,'en'),(1659,15,'of',4,'en'),(1660,15,'what',3,'en'),(1661,15,'can',6,'en'),(1662,15,'be',2,'en'),(1663,15,'done',2,'en'),(1664,15,'with',5,'en'),(1665,15,'tried',1,'en'),(1666,15,'find',2,'en'),(1667,15,'real',1,'en'),(1668,15,'world',1,'en'),(1669,15,'scenario',1,'en'),(1670,15,'that',4,'en'),(1671,15,'involved',1,'en'),(1672,15,'more',2,'en'),(1673,15,'than',1,'en'),(1674,15,'one',1,'en'),(1675,15,'person',1,'en'),(1676,15,'there',1,'en'),(1677,15,'lot',3,'en'),(1678,15,'different',4,'en'),(1679,15,'scenarios',1,'en'),(1680,15,'from',2,'en'),(1681,15,'simple',1,'en'),(1682,15,'managed',1,'en'),(1683,15,'by',1,'en'),(1684,15,'single',1,'en'),(1685,15,'administrator',2,'en'),(1686,15,'community',1,'en'),(1687,15,'members',1,'en'),(1688,15,'users',7,'en'),(1689,15,'or',2,'en'),(1690,15,'company',1,'en'),(1691,15,'intranet',1,'en'),(1692,15,'internet',1,'en'),(1693,15,'finally',1,'en'),(1694,15,'came',1,'en'),(1695,15,'up',1,'en'),(1696,15,'college',1,'en'),(1697,15,'has',2,'en'),(1698,15,'includes',1,'en'),(1699,15,'three',1,'en'),(1700,15,'employees',2,'en'),(1701,15,'students',2,'en'),(1702,15,'each',1,'en'),(1703,15,'user',9,'en'),(1704,15,'role',6,'en'),(1705,15,'their',2,'en'),(1706,15,'accounts',2,'en'),(1707,15,'see',1,'en'),(1708,15,'how',2,'en'),(1709,15,'looks',1,'en'),(1710,15,'perspective',1,'en'),(1711,15,'please',1,'en'),(1712,15,'note',1,'en'),(1713,15,'only',2,'en'),(1714,15,'username',5,'en'),(1715,15,'k.jones',1,'en'),(1716,15,'password',5,'en'),(1717,15,'kevinjones',1,'en'),(1718,15,'h.lewis',1,'en'),(1719,15,'helenlewis',1,'en'),(1720,15,'j.wilson',1,'en'),(1721,15,'jameswilson',1,'en'),(1722,15,'j.smith',1,'en'),(1723,15,'johnsmith',1,'en'),(1724,15,'d.evans',1,'en'),(1725,15,'donnaevans',1,'en'),(1726,15,'previous',1,'en'),(1727,15,'next',2,'en'),(1728,15,'roles',2,'en'),(1729,15,'permissions',1,'en'),(1730,15,'on',1,'en'),(1731,15,'page',1,'en'),(1732,15,'we',2,'en'),(1733,15,'will',2,'en'),(1734,15,'take',2,'en'),(1735,15,'closer',2,'en'),(1736,15,'look',2,'en'),(1737,15,'at',2,'en'),(1738,15,'out',1,'en'),(1739,15,'our',1,'en'),(1740,15,'allowed',1,'en'),(1741,15,'do',2,'en'),(1742,15,'they',1,'en'),(1743,15,'cannot',1,'en'),(1744,15,'then',1,'en'),(1745,15,'these',1,'en'),(1746,15,'access',1,'en'),(1747,15,'restrictions',1,'en'),(1748,15,'have',1,'en'),(1749,15,'been',1,'en'),(1750,15,'implemented',1,'en'),(1751,15,'make',1,'en'),(1752,15,'sure',1,'en'),(1753,15,'visit',2,'en'),(1754,15,'https',1,'en'),(1755,15,'contao.org',2,'en'),(1756,15,'for',1,'en'),(1757,15,'information',1,'en');
/*!40000 ALTER TABLE `tl_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_session`
--

DROP TABLE IF EXISTS `tl_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `sessionID` varchar(128) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `su` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_session`
--

LOCK TABLES `tl_session` WRITE;
/*!40000 ALTER TABLE `tl_session` DISABLE KEYS */;
INSERT INTO `tl_session` VALUES (1,1,1634276170,'BE_USER_AUTH','7rakifgkcvo4rtpgikqskpdlm4','2cd89e55dd7a299742019c877cd3a295eed154d7','127.0.0.1','');
/*!40000 ALTER TABLE `tl_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_style`
--

DROP TABLE IF EXISTS `tl_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_style` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `selector` varchar(1022) NOT NULL DEFAULT '',
  `category` varchar(32) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `size` char(1) NOT NULL DEFAULT '',
  `width` varchar(64) NOT NULL DEFAULT '',
  `height` varchar(64) NOT NULL DEFAULT '',
  `minwidth` varchar(64) NOT NULL DEFAULT '',
  `minheight` varchar(64) NOT NULL DEFAULT '',
  `maxwidth` varchar(64) NOT NULL DEFAULT '',
  `maxheight` varchar(64) NOT NULL DEFAULT '',
  `positioning` char(1) NOT NULL DEFAULT '',
  `trbl` varchar(128) NOT NULL DEFAULT '',
  `position` varchar(32) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `clear` varchar(32) NOT NULL DEFAULT '',
  `overflow` varchar(32) NOT NULL DEFAULT '',
  `display` varchar(32) NOT NULL DEFAULT '',
  `alignment` char(1) NOT NULL DEFAULT '',
  `margin` varchar(128) NOT NULL DEFAULT '',
  `padding` varchar(128) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  `verticalalign` varchar(32) NOT NULL DEFAULT '',
  `textalign` varchar(32) NOT NULL DEFAULT '',
  `whitespace` varchar(8) NOT NULL DEFAULT '',
  `background` char(1) NOT NULL DEFAULT '',
  `bgcolor` varchar(64) NOT NULL DEFAULT '',
  `bgimage` varchar(255) NOT NULL DEFAULT '',
  `bgposition` varchar(32) NOT NULL DEFAULT '',
  `bgrepeat` varchar(32) NOT NULL DEFAULT '',
  `shadowsize` varchar(128) NOT NULL DEFAULT '',
  `shadowcolor` varchar(64) NOT NULL DEFAULT '',
  `gradientAngle` varchar(32) NOT NULL DEFAULT '',
  `gradientColors` varchar(128) NOT NULL DEFAULT '',
  `border` char(1) NOT NULL DEFAULT '',
  `borderwidth` varchar(128) NOT NULL DEFAULT '',
  `borderstyle` varchar(32) NOT NULL DEFAULT '',
  `bordercolor` varchar(64) NOT NULL DEFAULT '',
  `borderradius` varchar(128) NOT NULL DEFAULT '',
  `bordercollapse` varchar(32) NOT NULL DEFAULT '',
  `borderspacing` varchar(64) NOT NULL DEFAULT '',
  `font` char(1) NOT NULL DEFAULT '',
  `fontfamily` varchar(255) NOT NULL DEFAULT '',
  `fontsize` varchar(64) NOT NULL DEFAULT '',
  `fontcolor` varchar(64) NOT NULL DEFAULT '',
  `lineheight` varchar(64) NOT NULL DEFAULT '',
  `fontstyle` varchar(255) NOT NULL DEFAULT '',
  `texttransform` varchar(32) NOT NULL DEFAULT '',
  `textindent` varchar(64) NOT NULL DEFAULT '',
  `letterspacing` varchar(64) NOT NULL DEFAULT '',
  `wordspacing` varchar(64) NOT NULL DEFAULT '',
  `list` char(1) NOT NULL DEFAULT '',
  `liststyletype` varchar(32) NOT NULL DEFAULT '',
  `liststyleimage` varchar(255) NOT NULL DEFAULT '',
  `own` text,
  `invisible` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_style`
--

LOCK TABLES `tl_style` WRITE;
/*!40000 ALTER TABLE `tl_style` DISABLE KEYS */;
INSERT INTO `tl_style` VALUES (1,1,128,1306752824,'body','Layout','','','','','','','','','','','','','','','','','a:5:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','1','$bg','files/music_academy/background.gif','center top','repeat-y','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','',''),(28,1,2048,1343122284,'.mod_navigation','Navigation','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"200\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"43\";s:4:\"unit\";s:2:\"px\";}','absolute','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','z-index:999;',''),(3,1,768,1306752841,'.mod_breadcrumb','Breadcrumb','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"24\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"7\";s:4:\"left\";s:1:\"3\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}','','','','','1','$bg','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','',''),(10,2,1152,1140196527,'img','','','','','','','','','','','','','','','','','1','a:5:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','middle','','','','','','','','','','','','1','a:5:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','',''),(5,1,384,1338302364,'#top_image img','Layout','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','right','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(11,2,896,1140196862,'a','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a84204','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:1:{i:0;s:13:\"notUnderlined\";}','','','','','','','','',''),(7,2,128,1337869588,'body','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(8,2,384,1324304938,'a, body, div, em, input, label, legend, li, ol, p, select, span, strong, td, th, textarea, u, ul','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','Ubuntu,sans-serif','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(9,2,512,1324304969,'a, body, div, input, label, li, legend, ol, p, select, td, th, textarea, u, ul','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"12\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(12,2,1024,1140196874,'a:hover','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a84204','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:1:{i:0;s:9:\"underline\";}','','','','','','','','',''),(13,2,1280,1140524883,'p, pre, form, figure','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(128,1,7936,1306753117,'table.calendar td','Calendar','','1','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:2:\"14\";}','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"72\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"1\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','','top','','','1','fff','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"20\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','',NULL,''),(17,2,640,1324305009,'h1','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"14\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:4:\"bold\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(18,2,768,1324305014,'h2','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"6\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"12\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:4:\"bold\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(19,1,2176,1306753518,'.mod_navigation ul','Navigation','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','$brown','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','1','none','','',''),(20,1,2304,1306753537,'.mod_navigation li','Navigation','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','solid','$brown','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','1','none','','',''),(23,1,2944,1324305098,'.mod_navigation a, .mod_navigation li, .mod_navigation span','Navigation','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"14\";}','a:2:{i:0;s:6:\"000000\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:4:\"bold\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(25,1,2816,1177883510,'.mod_navigation .level_2 li','Navigation','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"3\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','',''),(26,1,2688,1177883487,'.mod_navigation .level_2','Navigation','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"9\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','',''),(27,1,3072,1324305103,'.mod_navigation .level_2 a, .mod_navigation .level_2 li, .mod_navigation .level_2 span','Navigation','','','','','','','','','','','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"12\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:6:\"normal\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(127,1,7424,1306753072,'table.calendar','Calendar','','1','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:3:\"100\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"1\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','',NULL,''),(29,1,256,1140261340,'#left','Layout','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"52\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','',''),(30,1,3840,1306752856,'.mod_login','Login form','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}','','','','','1','$bg','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','',''),(31,1,3968,1259350412,'.mod_login label','Login form','','1','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','block','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"4\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(32,1,4096,1140265047,'.mod_login .submit_container','Login form','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"4\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"8\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(35,1,4992,1140263187,'.mod_newslist p','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"4\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(34,1,4480,1306752886,'.mod_newsmenu,.mod_eventmenu','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"20\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}','','','','','1','$bg','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','',''),(36,1,5504,1306753542,'.mod_newslist .layout_short','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"8\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"6\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','$brown','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','','',''),(37,1,5376,1324305115,'.mod_newslist .info, .mod_newsreader .info','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"6\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:3:\"999\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(38,1,640,1324305091,'div.error, p.error','Article','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"10\";}','a:2:{i:0;s:3:\"f00\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(39,1,5760,1142249662,'.mod_article, .mod_newsreader','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(40,1,5888,1140273371,'.mod_newsreader h2','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(42,1,6656,1306752914,'.mod_search .header','Search','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"24\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:2:\"18\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"4\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','right','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','$bg','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','','',''),(41,1,5120,1196602728,'.mod_newsreader .back','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"24\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"12\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(43,1,6016,1195922974,'.mod_search','Search','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(104,1,6272,1302624305,'.mod_search .radio_container','Search','','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"240\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','',''),(45,1,6144,1329238754,'.mod_search .text','Search','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"240\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','-webkit-appearance:none;',''),(46,1,6784,1140279252,'.mod_search h3','Search','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(47,1,6912,1141648433,'.mod_search .context','Search','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"3\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(48,1,7168,1324305119,'.mod_search .relevance','Search','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"12\";}','a:2:{i:0;s:6:\"$brown\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:6:\"normal\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(49,1,7040,1306753550,'.mod_search .url','Search','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','$brown','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(57,1,10496,1172601505,'.mod_personalData','Personal data','','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"424\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"36\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(56,1,11776,1140449560,'.mod_personalData td','Personal data','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"160\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"6\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(59,1,512,1195841841,'.ce_text, .teaser','Article','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:3:\"1.5\";}','','','','','','','','','',''),(61,1,5632,1140527046,'.mod_newsreader .ce_text','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"16\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(83,1,13824,1141753279,'#tps .explanation','Tables','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:2:\"24\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(82,1,13312,1141752131,'#tps td','Tables','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:1:\"4\";s:5:\"right\";s:1:\"4\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(81,1,12928,1306753419,'.ce_table th','Tables','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:1:\"8\";s:5:\"right\";s:1:\"8\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','','','','','1','e6e6e6','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','','',''),(80,1,12544,1306753405,'.ce_table','Tables','','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"24\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"24\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"1\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','','',''),(79,1,12672,1306753412,'.ce_table td','Tables','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:1:\"8\";s:5:\"right\";s:1:\"8\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','','',''),(77,1,4864,1259754411,'.mod_newsmenu .year,.mod_eventmenu .year','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:4:\"bold\";}','','','','','','','','',''),(75,1,4608,1259754391,'.mod_newsmenu ul,.mod_newsmenu li,.mod_eventmenu ul,.mod_eventmenu li','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','none','','',''),(85,1,13568,1141752143,'#tps .col_0','Tables','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"80\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(86,1,1664,1160579624,'.ce_list ul','Listing','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(87,1,1792,1160579906,'.ce_list li','Listing','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:2:\"22\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"16\";}','','','','','','','','','',''),(89,1,12032,1171307907,'.mod_personalData .text, .mod_personalData .password','Personal data','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"200\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"6\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(90,1,12160,1160580363,'.mod_personalData select','Personal data','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"204\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"6\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(94,1,12800,1302624256,'*+html .ce_list li','Listing','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:2:\"26\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"16\";}','','','','','','','','','',''),(95,1,13184,1164060568,'.pagination li','Pagination','','1','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','inline','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','none','','',''),(96,1,13440,1306752967,'.pagination','Pagination','','1','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"22\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"4\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','solid','$bg','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','','',''),(97,1,13696,1168623115,'.pagination p','Pagination','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"160\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','left','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"3\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','left','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(98,1,13952,1168623129,'.pagination ul','Pagination','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"240\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','right','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"3\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','right','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(99,1,3200,1166780087,'.ce_accordion','Accordion','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:2:\"16\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a84204','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(100,1,3584,1196603033,'.toggler_first:hover','Accordion','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a84204','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:9:\"underline\";}','','','','','','','','cursor:pointer;',''),(101,1,3712,1166780207,'.accordion div','Accordion','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"8\";s:4:\"left\";s:2:\"15\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"6\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"16\";}','','','','','','','','','',''),(102,1,3456,1166779569,'.toggler_first','Accordion','','','','','','','','','','','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"3\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a84204','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(103,1,3328,1166780069,'.toggler','Accordion','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a84204','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(105,1,6528,1168952901,'.mod_search .radio_container label','Search','','1','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:2:\"-2\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"-2\";s:4:\"unit\";s:2:\"px\";}','relative','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(107,1,13056,1306753425,'.ce_table th a','Tables','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','000000','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(108,1,4224,1306752871,'#request_password','Login form','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:2:\"10\";s:4:\"left\";s:1:\"6\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','1','$bg','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','',''),(109,1,4352,1324305111,'#request_password a','Login form','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:3:\"999\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(110,1,1024,1170871126,'.mod_lostPassword','Lost password','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"24\";s:4:\"left\";s:2:\"24\";s:5:\"right\";s:2:\"24\";s:3:\"top\";s:2:\"24\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(111,1,1152,1170870958,'.mod_lostPassword td','Lost password','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"3\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"6\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(112,1,1280,1170871009,'.mod_lostPassword .text, .mod_lostPassword .password','Lost password','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"210\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(113,1,7296,1170872668,'.mod_search .highlight','Search','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:4:\"bold\";}','','','','','','','','',''),(114,1,10624,1171307185,'.mod_personalData fieldset','Personal data','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"400\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','block','1','a:5:{s:6:\"bottom\";s:2:\"24\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:2:\"12\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:2:\"12\";s:5:\"right\";s:2:\"12\";s:3:\"top\";s:2:\"12\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(116,1,11008,1171307057,'.mod_personalData legend','Personal data','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','0000e6','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(118,1,11392,1171307809,'.mod_personalData .submit_container','Personal data','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"428\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','right','','','ff0000','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(120,1,10880,1302624209,'*+html .mod_personalData fieldset','Personal data','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:3:\"-12\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(122,1,11648,1302624229,'*+html .mod_personalData .submit_container','Personal data','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"434\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','right','','','ff0000','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(123,1,12416,1302624246,'*+html .mod_personalData select','Personal data','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"206\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"6\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(124,1,1408,1172600601,'.mod_lostPassword .captcha','Lost password','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"40\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(125,1,1536,1306753254,'.mod_lostPassword .captcha_text','Lost password','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','666','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(126,1,896,1306753209,'.ce_gallery .caption','Gallery','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','999','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','',''),(129,1,8448,1324305130,'table.calendar td .header','Calendar','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','1','a:2:{i:0;s:6:\"e0e0e0\";i:1;s:0:\"\";}','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(130,1,8576,1324305134,'table.calendar td .event a','Calendar','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(131,1,8064,1356011720,'table.calendar td.weekend','Calendar','','','','','','','','','','','','','','','','','','','','','','','1','f6f6f6','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(132,1,8192,1356011720,'table.calendar td.today','Calendar','','','','','','','','','','','','','','','','','','','','','','','1','ffc','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','',NULL,''),(133,1,8320,1180640687,'table.calendar .empty, table.calendar .empty .header','Calendar','','','','','','','','','','','','','','','','','','','','','','','1','f6f6f6','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(134,1,7808,1324305125,'table.calendar .label','Calendar','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"4\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','','','center','','1','a:2:{i:0;s:3:\"bbb\";i:1;s:0:\"\";}','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','a:2:{i:0;s:3:\"ccc\";i:1;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:3:\"fff\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:4:\"bold\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(135,1,7552,1306753088,'table.calendar .head','Calendar','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"4\";s:4:\"unit\";s:2:\"px\";}','','','center','','1','f6f6f6','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','',NULL,''),(139,1,8832,1306753265,'table.minicalendar','Mini calendar','','1','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:3:\"100\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','ece4d9','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"1\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','',NULL,''),(137,1,7680,1306753096,'table.calendar .current','Calendar','','','','','','','','','','','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','right','','1','ffc','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','cccccc','','','','','','','','','','','','','','','','',NULL,''),(138,1,8704,1306752931,'#minicalendar','Mini calendar','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"20\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:2:\"10\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}','','','','','1','$bg','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','',NULL,''),(140,1,8960,1306753274,'table.minicalendar td','Mini calendar','','1','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:2:\"14\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"3\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','','','center','','1','fff','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"10\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','',NULL,''),(141,1,9088,1356011720,'table.minicalendar td.weekend','Mini calendar','','','','','','','','','','','','','','','','','','','','','','','1','f6f6f6','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(142,1,9216,1356011720,'table.minicalendar td.today','Mini calendar','','','','','','','','','','','','','','','','','','','','','','','1','ffc','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','',NULL,''),(143,1,9344,1324305144,'table.minicalendar .label','Mini calendar','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"3\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','','','center','','1','a:2:{i:0;s:6:\"c3c3c3\";i:1;s:0:\"\";}','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','a:2:{i:0;s:3:\"ccc\";i:1;s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:3:\"fff\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(144,1,9472,1306753300,'table.minicalendar .head','Mini calendar','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"4\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','','','center','','1','f9f9f9','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','',NULL,''),(145,1,9600,1306753307,'table.minicalendar .current','Mini calendar','','','','','','','','','','','','','','','','','','','','','','','1','ffc','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','',NULL,''),(146,1,9856,1306753161,'.mod_eventlist .header','Events','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"4\";s:4:\"left\";s:1:\"6\";s:5:\"right\";s:1:\"6\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','','','','','1','e6e6e6','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"1\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:4:\"bold\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(147,1,9728,1180686769,'.mod_eventlist','Events','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"6\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','solid','cccccc','','','','','','','','','','','','','','','','',NULL,''),(148,1,9984,1306753176,'.mod_eventlist .event','Events','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:1:\"6\";s:5:\"right\";s:1:\"6\";s:3:\"top\";s:2:\"10\";s:4:\"unit\";s:2:\"px\";}','','','','','','ffffff','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"1\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','',NULL,''),(149,1,10112,1306753183,'.mod_eventlist .time','Events','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"6\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"-6\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','999','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:1:{i:0;s:6:\"normal\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(150,1,9920,1306753168,'.mod_eventlist .header.first','Events','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','solid','ccc','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','',NULL,''),(151,1,10176,1324305148,'.mod_eventreader .info','Events','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:3:\"-12\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:3:\"999\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(152,1,10208,1180687197,'.mod_eventreader .back','Events','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"18\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(156,3,640,1181047031,'h1','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"18\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"18\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(158,3,896,1181046940,'a','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a84204','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:1:{i:0;s:13:\"notUnderlined\";}','','','','','','','','',''),(155,3,512,1181047006,'*','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','helvetica','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(302,1,4032,1273405873,'.mod_login .checkbox_container label','Login form','','1','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','inline','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(153,3,128,1181046976,'body','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"24\";s:4:\"left\";s:2:\"24\";s:5:\"right\";s:2:\"24\";s:3:\"top\";s:2:\"24\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','',''),(162,1,960,1273405667,'.mod_article .pdf_link','Article','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"-3\";s:4:\"unit\";s:2:\"px\";}','relative','','','','','1','a:5:{s:6:\"bottom\";s:3:\"-16\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','right','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(163,1,992,1273405696,'.mod_article .pdf_link a','Article','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"1\";s:5:\"right\";s:1:\"1\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','',NULL,''),(165,1,9024,1324305137,'table.minicalendar td, table.minicalendar .active a','Mini calendar','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(166,1,10192,1324305151,'.mod_eventreader .recurring','Events','','','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:2:\"50\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','ffffcc','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:2:\"11\";}','a:2:{i:0;s:3:\"090\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','',NULL,''),(168,1,10200,1195914500,'.mod_eventreader .ce_text','Events','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"15\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(169,1,704,1195920849,'.mod_article .back','Article','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"18\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(170,1,5952,1196602690,'.mod_newsreader .comment_default','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(171,1,5984,1196602663,'.mod_newsreader .comment','News','','','','','','','','','','','','','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:3:\"1.5\";}','','','','','','','','','',''),(172,1,6000,1196602869,'.mod_newsreader .form','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"24\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(173,1,6008,1196602913,'.mod_newsreader .widget','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(174,1,6012,1196602954,'.mod_newsreader .textarea','News','','1','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"360\";}','a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"120\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','a:5:{s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"1\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(175,1,736,1197480924,'.mod_article .more','Article','','1','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','inline','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(301,1,4544,1306753340,'#breaking_news','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"20\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:2:\"20\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:1:\"5\";s:3:\"top\";s:1:\"5\";s:4:\"unit\";s:2:\"px\";}','','','','','1','$bg','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','',''),(303,1,4000,1273405924,'.mod_login .checkbox_container','Login form','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(304,2,1408,1302529845,'table','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','border-spacing:0;',''),(305,1,12480,1306416924,'fieldset.radio_container,fieldset.checkbox_container','Personal data','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','',NULL,''),(306,1,5992,1308647195,'.mod_newsreader .reply','News','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:2:\"12\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:2:\"18\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(307,2,1536,1312895039,':focus','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','outline:0;',''),(309,1,224,1338302331,'#main .inside','Layout','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:2:\"20\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(310,4,128,1337956489,'.mod_navigation','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"em\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','width:inherit;\nposition:inherit;',''),(311,4,256,1337957045,'.mod_article,.mod_eventlist,.mod_newsarchive,.mod_newsreader','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"5\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(312,4,64,1337956598,'#wrapper','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(313,4,384,1337957348,'textarea','','','','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:2:\"90\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"2\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','width:96% !important;',''),(314,4,512,1337957489,'fieldset','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','width:90% !important;',''),(315,1,320,1344345475,'#top_image','Layout','','','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:3:\"100\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:3:\"200\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(316,4,96,1338302809,'#top_image','','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(318,1,160,1338386358,'#wrapper','','','1','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:3:\"100\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(319,1,832,1343391649,'.mod_breadcrumb ul','Breadcrumb','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','hidden','','1','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:3:\"top\";s:1:\"0\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','none','',NULL,''),(320,1,864,1343392398,'.mod_breadcrumb li','Breadcrumb','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','left','','','','','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(321,1,880,1343402291,'.mod_breadcrumb li:after','Breadcrumb','','','','','','','','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:1:\"1\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','content:\" > \"',''),(323,1,888,1343402348,'.mod_breadcrumb li.active:after','Breadcrumb','','','','','','','','','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','','','none','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,''),(324,1,352,1344345300,'#top_image:after','','','1','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:1:\"0\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1','a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"unit\";s:0:\"\";}','','','both','','block','','','','','','','','','','','','','','','','','','','','','','','','1','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:1:\"0\";}','','','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','content:\".\";\nvisibility:hidden;',''),(325,1,336,1344345486,'#top_image img','','','1','a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:3:\"100\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,'');
/*!40000 ALTER TABLE `tl_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_style_sheet`
--

DROP TABLE IF EXISTS `tl_style_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_style_sheet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `disablePie` char(1) NOT NULL DEFAULT '',
  `embedImages` int(10) unsigned NOT NULL DEFAULT '0',
  `cc` varchar(32) NOT NULL DEFAULT '',
  `media` varchar(255) NOT NULL DEFAULT '',
  `mediaQuery` text,
  `vars` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_style_sheet`
--

LOCK TABLES `tl_style_sheet` WRITE;
/*!40000 ALTER TABLE `tl_style_sheet` DISABLE KEYS */;
INSERT INTO `tl_style_sheet` VALUES (1,1,1337956405,'default','',0,'','a:1:{i:0;s:3:\"all\";}','','a:0:{}'),(2,1,1306069304,'basic','',0,'','a:1:{i:0;s:3:\"all\";}','',NULL),(3,1,1306069304,'print','',0,'','a:1:{i:0;s:5:\"print\";}','',NULL),(4,1,1337957472,'mobile','',0,'','a:1:{i:0;s:3:\"all\";}','','a:0:{}');
/*!40000 ALTER TABLE `tl_style_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_theme`
--

DROP TABLE IF EXISTS `tl_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `folders` blob,
  `screenshot` binary(16) DEFAULT NULL,
  `templates` varchar(255) NOT NULL DEFAULT '',
  `vars` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_theme`
--

LOCK TABLES `tl_theme` WRITE;
/*!40000 ALTER TABLE `tl_theme` DISABLE KEYS */;
INSERT INTO `tl_theme` VALUES (1,1343055575,'Music Academy','Leo Feyer',_binary 'a:1:{i:0;s:16:\"\Ã÷©ä„∫ó\0&ªd=B\";}',_binary '\Ã\◊añä„∫ó\0&ªd=B','','a:2:{i:0;a:2:{s:3:\"key\";s:3:\"$bg\";s:5:\"value\";s:6:\"ece4d9\";}i:1;a:2:{s:3:\"key\";s:6:\"$brown\";s:5:\"value\";s:6:\"c6ad8d\";}}');
/*!40000 ALTER TABLE `tl_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_undo`
--

DROP TABLE IF EXISTS `tl_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_undo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `query` text,
  `affectedRows` smallint(5) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_undo`
--

LOCK TABLES `tl_undo` WRITE;
/*!40000 ALTER TABLE `tl_undo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_user`
--

DROP TABLE IF EXISTS `tl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `google` varchar(64) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `backendTheme` varchar(32) NOT NULL DEFAULT '',
  `uploader` varchar(32) NOT NULL DEFAULT '',
  `showHelp` char(1) NOT NULL DEFAULT '',
  `thumbnails` char(1) NOT NULL DEFAULT '',
  `useRTE` char(1) NOT NULL DEFAULT '',
  `useCE` char(1) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `pwChange` char(1) NOT NULL DEFAULT '',
  `admin` char(1) NOT NULL DEFAULT '',
  `groups` blob,
  `inherit` varchar(12) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `session` blob,
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `loginCount` smallint(5) unsigned NOT NULL DEFAULT '3',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_user`
--

LOCK TABLES `tl_user` WRITE;
/*!40000 ALTER TABLE `tl_user` DISABLE KEYS */;
INSERT INTO `tl_user` VALUES (1,1326191615,'k.jones','Kevin Jones','k.jones@example.com','','en','default','FileUpload','1','1','1','1','$6$f6a9581ccc9240f4$1uSh0e9WdLfaZXm0NSfHWmdo35IpSkZ4DLvoIal4bbb.y0FMwHc.XPPn7biS7O3QthIIsWhjfi0Y8SEzebNiU0','','1','','','',NULL,_binary 'a:0:{}',NULL,_binary 'a:0:{}','',NULL,NULL,'','','',_binary 'a:3:{s:7:\"referer\";a:2:{s:8:\"5d6166e2\";a:2:{s:4:\"last\";s:0:\"\";s:7:\"current\";s:15:\"contao/main.php\";}s:8:\"c8425cc2\";a:2:{s:10:\"tl_article\";s:26:\"contao/main.php?do=article\";s:7:\"current\";s:26:\"contao/main.php?do=article\";}}s:23:\"tl_article_tl_page_tree\";a:1:{i:1;i:0;}s:7:\"CURRENT\";a:1:{s:3:\"IDS\";a:0:{}}}',1257428510,1383910916,1634276164,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1302529708,'j.wilson','James Wilson','j.wilson@example.com','','en','default','','1','1','1','1','babe801666efc8a28081c9b6a0d5fc50eac7de87','','',_binary 'a:1:{i:0;s:1:\"1\";}','extend',_binary 'a:5:{i:0;s:7:\"article\";i:1;s:4:\"news\";i:2;s:8:\"calendar\";i:3;s:4:\"page\";i:4;s:5:\"files\";}',NULL,NULL,_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:8:\"redirect\";i:2;s:7:\"forward\";}',_binary 'a:1:{i:0;N;}',_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,NULL,'','','','',1259754527,0,0,3,0,_binary 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"1\";}',NULL,NULL,NULL,NULL,NULL,_binary 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"1\";}',NULL,NULL,NULL,NULL,NULL),(3,1302529708,'h.lewis','Helen Lewis','h.lewis@example.com','','en','default','','1','1','1','1','22cce67837ea3e18b1ce6b323d1e281e434e1a71','','',_binary 'a:1:{i:0;s:1:\"1\";}','extend',_binary 'a:5:{i:0;s:7:\"article\";i:1;s:4:\"news\";i:2;s:8:\"calendar\";i:3;s:4:\"page\";i:4;s:5:\"files\";}',NULL,NULL,_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:8:\"redirect\";i:2;s:7:\"forward\";}',_binary 'a:1:{i:0;N;}',_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}','',NULL,'','','','',1259754527,0,0,3,0,_binary 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}',NULL,NULL,NULL,NULL,NULL,_binary 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}',NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `tl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_user_group`
--

DROP TABLE IF EXISTS `tl_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `forms` blob,
  `formp` blob,
  `alexf` blob,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_user_group`
--

LOCK TABLES `tl_user_group` WRITE;
/*!40000 ALTER TABLE `tl_user_group` DISABLE KEYS */;
INSERT INTO `tl_user_group` VALUES (1,1333985828,'Editors',_binary 'a:5:{i:0;s:7:\"article\";i:1;s:4:\"news\";i:2;s:8:\"calendar\";i:3;s:4:\"page\";i:4;s:5:\"files\";}',NULL,_binary '4',_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}',_binary 'a:1:{i:0;s:16:\"\Ã÷∏êä„∫ó\0&ªd=B\";}',_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,NULL,_binary 'a:189:{i:0;s:17:\"tl_article::title\";i:1;s:17:\"tl_article::alias\";i:2;s:18:\"tl_article::author\";i:3;s:20:\"tl_article::inColumn\";i:4;s:20:\"tl_article::keywords\";i:5;s:22:\"tl_article::showTeaser\";i:6;s:23:\"tl_article::teaserCssID\";i:7;s:18:\"tl_article::teaser\";i:8;s:21:\"tl_article::printable\";i:9;s:17:\"tl_article::cssID\";i:10;s:17:\"tl_article::space\";i:11;s:18:\"tl_calendar::title\";i:12;s:19:\"tl_calendar::jumpTo\";i:13;s:22:\"tl_calendar::protected\";i:14;s:19:\"tl_calendar::groups\";i:15;s:26:\"tl_calendar::allowComments\";i:16;s:19:\"tl_calendar::notify\";i:17;s:22:\"tl_calendar::sortOrder\";i:18;s:20:\"tl_calendar::perPage\";i:19;s:21:\"tl_calendar::moderate\";i:20;s:19:\"tl_calendar::bbcode\";i:21;s:25:\"tl_calendar::requireLogin\";i:22;s:27:\"tl_calendar::disableCaptcha\";i:23;s:25:\"tl_calendar_events::title\";i:24;s:25:\"tl_calendar_events::alias\";i:25;s:26:\"tl_calendar_events::author\";i:26;s:27:\"tl_calendar_events::addTime\";i:27;s:29:\"tl_calendar_events::startTime\";i:28;s:27:\"tl_calendar_events::endTime\";i:29;s:29:\"tl_calendar_events::startDate\";i:30;s:27:\"tl_calendar_events::endDate\";i:31;s:26:\"tl_calendar_events::teaser\";i:32;s:27:\"tl_calendar_events::details\";i:33;s:28:\"tl_calendar_events::addImage\";i:34;s:29:\"tl_calendar_events::singleSRC\";i:35;s:23:\"tl_calendar_events::alt\";i:36;s:24:\"tl_calendar_events::size\";i:37;s:31:\"tl_calendar_events::imagemargin\";i:38;s:28:\"tl_calendar_events::imageUrl\";i:39;s:28:\"tl_calendar_events::fullsize\";i:40;s:27:\"tl_calendar_events::caption\";i:41;s:28:\"tl_calendar_events::floating\";i:42;s:29:\"tl_calendar_events::recurring\";i:43;s:30:\"tl_calendar_events::repeatEach\";i:44;s:31:\"tl_calendar_events::recurrences\";i:45;s:32:\"tl_calendar_events::addEnclosure\";i:46;s:29:\"tl_calendar_events::enclosure\";i:47;s:26:\"tl_calendar_events::source\";i:48;s:26:\"tl_calendar_events::jumpTo\";i:49;s:29:\"tl_calendar_events::articleId\";i:50;s:23:\"tl_calendar_events::url\";i:51;s:26:\"tl_calendar_events::target\";i:52;s:28:\"tl_calendar_events::cssClass\";i:53;s:30:\"tl_calendar_events::noComments\";i:54;s:16:\"tl_content::type\";i:55;s:20:\"tl_content::headline\";i:56;s:16:\"tl_content::text\";i:57;s:20:\"tl_content::addImage\";i:58;s:21:\"tl_content::singleSRC\";i:59;s:15:\"tl_content::alt\";i:60;s:17:\"tl_content::title\";i:61;s:16:\"tl_content::size\";i:62;s:23:\"tl_content::imagemargin\";i:63;s:20:\"tl_content::imageUrl\";i:64;s:20:\"tl_content::fullsize\";i:65;s:19:\"tl_content::caption\";i:66;s:20:\"tl_content::floating\";i:67;s:16:\"tl_content::html\";i:68;s:20:\"tl_content::listtype\";i:69;s:21:\"tl_content::listitems\";i:70;s:22:\"tl_content::tableitems\";i:71;s:19:\"tl_content::summary\";i:72;s:17:\"tl_content::thead\";i:73;s:17:\"tl_content::tfoot\";i:74;s:17:\"tl_content::tleft\";i:75;s:20:\"tl_content::sortable\";i:76;s:21:\"tl_content::sortIndex\";i:77;s:21:\"tl_content::sortOrder\";i:78;s:19:\"tl_content::mooType\";i:79;s:23:\"tl_content::mooHeadline\";i:80;s:20:\"tl_content::mooStyle\";i:81;s:22:\"tl_content::mooClasses\";i:82;s:21:\"tl_content::highlight\";i:83;s:19:\"tl_content::shClass\";i:84;s:16:\"tl_content::code\";i:85;s:15:\"tl_content::url\";i:86;s:18:\"tl_content::target\";i:87;s:21:\"tl_content::linkTitle\";i:88;s:17:\"tl_content::embed\";i:89;s:15:\"tl_content::rel\";i:90;s:20:\"tl_content::useImage\";i:91;s:20:\"tl_content::multiSRC\";i:92;s:22:\"tl_content::useHomeDir\";i:93;s:18:\"tl_content::perRow\";i:94;s:19:\"tl_content::perPage\";i:95;s:25:\"tl_content::numberOfItems\";i:96;s:18:\"tl_content::sortBy\";i:97;s:22:\"tl_content::galleryTpl\";i:98;s:20:\"tl_content::cteAlias\";i:99;s:24:\"tl_content::articleAlias\";i:100;s:19:\"tl_content::article\";i:101;s:16:\"tl_content::form\";i:102;s:18:\"tl_content::module\";i:103;s:21:\"tl_content::protected\";i:104;s:18:\"tl_content::groups\";i:105;s:18:\"tl_content::guests\";i:106;s:17:\"tl_content::cssID\";i:107;s:17:\"tl_content::space\";i:108;s:21:\"tl_content::com_order\";i:109;s:23:\"tl_content::com_perPage\";i:110;s:24:\"tl_content::com_moderate\";i:111;s:22:\"tl_content::com_bbcode\";i:112;s:30:\"tl_content::com_disableCaptcha\";i:113;s:28:\"tl_content::com_requireLogin\";i:114;s:24:\"tl_content::com_template\";i:115;s:17:\"tl_news::headline\";i:116;s:14:\"tl_news::alias\";i:117;s:15:\"tl_news::author\";i:118;s:13:\"tl_news::date\";i:119;s:13:\"tl_news::time\";i:120;s:20:\"tl_news::subheadline\";i:121;s:15:\"tl_news::teaser\";i:122;s:13:\"tl_news::text\";i:123;s:17:\"tl_news::addImage\";i:124;s:18:\"tl_news::singleSRC\";i:125;s:12:\"tl_news::alt\";i:126;s:13:\"tl_news::size\";i:127;s:20:\"tl_news::imagemargin\";i:128;s:17:\"tl_news::imageUrl\";i:129;s:17:\"tl_news::fullsize\";i:130;s:16:\"tl_news::caption\";i:131;s:17:\"tl_news::floating\";i:132;s:21:\"tl_news::addEnclosure\";i:133;s:18:\"tl_news::enclosure\";i:134;s:15:\"tl_news::source\";i:135;s:15:\"tl_news::jumpTo\";i:136;s:18:\"tl_news::articleId\";i:137;s:12:\"tl_news::url\";i:138;s:15:\"tl_news::target\";i:139;s:17:\"tl_news::cssClass\";i:140;s:19:\"tl_news::noComments\";i:141;s:17:\"tl_news::featured\";i:142;s:22:\"tl_news_archive::title\";i:143;s:23:\"tl_news_archive::jumpTo\";i:144;s:26:\"tl_news_archive::protected\";i:145;s:23:\"tl_news_archive::groups\";i:146;s:30:\"tl_news_archive::allowComments\";i:147;s:23:\"tl_news_archive::notify\";i:148;s:26:\"tl_news_archive::sortOrder\";i:149;s:24:\"tl_news_archive::perPage\";i:150;s:25:\"tl_news_archive::moderate\";i:151;s:23:\"tl_news_archive::bbcode\";i:152;s:29:\"tl_news_archive::requireLogin\";i:153;s:31:\"tl_news_archive::disableCaptcha\";i:154;s:14:\"tl_page::title\";i:155;s:14:\"tl_page::alias\";i:156;s:13:\"tl_page::type\";i:157;s:18:\"tl_page::pageTitle\";i:158;s:17:\"tl_page::language\";i:159;s:15:\"tl_page::robots\";i:160;s:20:\"tl_page::description\";i:161;s:17:\"tl_page::redirect\";i:162;s:15:\"tl_page::jumpTo\";i:163;s:12:\"tl_page::url\";i:164;s:15:\"tl_page::target\";i:165;s:12:\"tl_page::dns\";i:166;s:15:\"tl_page::mobile\";i:167;s:17:\"tl_page::fallback\";i:168;s:19:\"tl_page::adminEmail\";i:169;s:19:\"tl_page::dateFormat\";i:170;s:19:\"tl_page::timeFormat\";i:171;s:20:\"tl_page::datimFormat\";i:172;s:22:\"tl_page::createSitemap\";i:173;s:20:\"tl_page::sitemapName\";i:174;s:15:\"tl_page::useSSL\";i:175;s:20:\"tl_page::autoforward\";i:176;s:18:\"tl_page::protected\";i:177;s:15:\"tl_page::groups\";i:178;s:22:\"tl_page::includeLayout\";i:179;s:15:\"tl_page::layout\";i:180;s:21:\"tl_page::includeCache\";i:181;s:14:\"tl_page::cache\";i:182;s:17:\"tl_page::noSearch\";i:183;s:17:\"tl_page::cssClass\";i:184;s:16:\"tl_page::sitemap\";i:185;s:13:\"tl_page::hide\";i:186;s:15:\"tl_page::guests\";i:187;s:17:\"tl_page::tabindex\";i:188;s:18:\"tl_page::accesskey\";}','','','',_binary 'a:1:{i:0;s:1:\"1\";}',NULL,NULL,NULL,NULL,NULL,_binary 'a:1:{i:0;s:1:\"1\";}',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tl_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_version`
--

DROP TABLE IF EXISTS `tl_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `version` smallint(5) unsigned NOT NULL DEFAULT '1',
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editUrl` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `data` mediumblob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `fromTable` (`fromTable`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_version`
--

LOCK TABLES `tl_version` WRITE;
/*!40000 ALTER TABLE `tl_version` DISABLE KEYS */;
INSERT INTO `tl_version` VALUES (1,4,1333986005,1,'tl_news',3,'h.lewis','Hilary Hahn performs at Music Academy','contao/main.php?do=news&table=tl_news&id=4&act=edit&rt=ba6180f2bf25dd674e6d6cc8dc8451f1','',_binary 'a:33:{s:2:\"id\";s:1:\"4\";s:3:\"pid\";s:1:\"2\";s:6:\"tstamp\";s:10:\"1333985766\";s:8:\"headline\";s:37:\"Hilary Hahn performs at Music Academy\";s:5:\"alias\";s:37:\"hilary-hahn-performs-at-music-academy\";s:6:\"author\";s:1:\"3\";s:4:\"date\";s:10:\"1265375700\";s:4:\"time\";s:10:\"1265375700\";s:11:\"subheadline\";s:112:\"The Grammy-winning violinist Hilary Hahn is going to perform live at Music Academy on the 13th of February 2010.\";s:6:\"teaser\";s:90:\"<p>The Grammy-winning violinist Hilary Hahn is going to perform live at Music Academy.</p>\";s:4:\"text\";s:467:\"<p>At the age of 27, Grammy Award-winning violinist Hilary Hahn is one of the most compelling artists on the international concert circuit. Renowned for her intellectual and emotional maturity, she was named \"America\'s Best\" young classical musician by Time Magazine in 2001, and appears on a regular basis with the world\'s great orchestras in Europe, Asia, and North America.<br> <br> Watch Hilary Hahn perform live at Music Academy on the 13th of February 2010!</p>\";s:8:\"addImage\";s:0:\"\";s:9:\"singleSRC\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"size\";s:0:\"\";s:11:\"imagemargin\";s:0:\"\";s:8:\"imageUrl\";s:0:\"\";s:8:\"fullsize\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:8:\"floating\";s:0:\"\";s:12:\"addEnclosure\";s:0:\"\";s:9:\"enclosure\";s:0:\"\";s:6:\"source\";s:7:\"default\";s:6:\"jumpTo\";s:1:\"0\";s:9:\"articleId\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:10:\"noComments\";s:0:\"\";s:8:\"featured\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";}'),(2,4,1333986029,2,'tl_news',3,'h.lewis','Hilary Hahn performs at Music Academy','contao/main.php?do=news&table=tl_news&id=4&act=edit&rt=ba6180f2bf25dd674e6d6cc8dc8451f1','1',_binary 'a:33:{s:2:\"id\";s:1:\"4\";s:3:\"pid\";s:1:\"2\";s:6:\"tstamp\";s:10:\"1333985766\";s:8:\"headline\";s:37:\"Hilary Hahn performs at Music Academy\";s:5:\"alias\";s:37:\"hilary-hahn-performs-at-music-academy\";s:6:\"author\";s:1:\"3\";s:4:\"date\";s:10:\"1265375700\";s:4:\"time\";s:10:\"1265375700\";s:11:\"subheadline\";s:112:\"The Grammy-winning violinist Hilary Hahn is going to perform live at Music Academy on the 12th of February 2010.\";s:6:\"teaser\";s:90:\"<p>The Grammy-winning violinist Hilary Hahn is going to perform live at Music Academy.</p>\";s:4:\"text\";s:465:\"<p>At the age of 27, Grammy Award-winning violinist Hilary Hahn is one of the most compelling artists on the international concert circuit. Renowned for her intellectual and emotional maturity, she was named \"America\'s Best\" young classical musician by Time Magazine in 2001, and appears on a regular basis with the world\'s great orchestras in Europe, Asia, and North America.</p>\n<p>Watch Hilary Hahn perform live at Music Academy on the 12th of February 2010!</p>\";s:8:\"addImage\";s:0:\"\";s:9:\"singleSRC\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:4:\"size\";s:0:\"\";s:11:\"imagemargin\";s:0:\"\";s:8:\"imageUrl\";s:0:\"\";s:8:\"fullsize\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:8:\"floating\";s:0:\"\";s:12:\"addEnclosure\";s:0:\"\";s:9:\"enclosure\";s:0:\"\";s:6:\"source\";s:7:\"default\";s:6:\"jumpTo\";s:1:\"0\";s:9:\"articleId\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:10:\"noComments\";s:0:\"\";s:8:\"featured\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";}'),(3,1,1333986091,1,'tl_news',1,'k.jones','Associate Professor James Wilson returns','contao/main.php?do=news&table=tl_news&act=edit&id=1&rt=ba6180f2bf25dd674e6d6cc8dc8451f1','',_binary 'a:33:{s:2:\"id\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:6:\"tstamp\";s:10:\"1333986068\";s:8:\"headline\";s:40:\"Associate Professor James Wilson returns\";s:5:\"alias\";s:20:\"james-wilson-returns\";s:6:\"author\";s:1:\"1\";s:4:\"date\";s:10:\"1265275800\";s:4:\"time\";s:10:\"1265275800\";s:11:\"subheadline\";s:111:\"Veteran Jazz pianist James Wilson has enjoyed international renown since graduating from Music Academy in 1968.\";s:6:\"teaser\";s:117:\"<p>Jazz pianist James Wilson returns to Music Academy to give lessons in traditional and contemporary Jazz Piano.</p>\";s:4:\"text\";s:246:\"<p>James Wilson and the stage have been lifelong parnters. The jazz pianist and youngest son of a preacher began playing in his father\'s church as a preschooler, took his first solo at the age of six, and has been a lead performer ever since.</p>\";s:8:\"addImage\";s:1:\"1\";s:9:\"singleSRC\";s:2:\"12\";s:3:\"alt\";s:12:\"James Wilson\";s:4:\"size\";s:55:\"a:3:{i:0;s:3:\"120\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}\";s:11:\"imagemargin\";s:102:\"a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}\";s:8:\"imageUrl\";s:0:\"\";s:8:\"fullsize\";s:1:\"1\";s:7:\"caption\";s:0:\"\";s:8:\"floating\";s:4:\"left\";s:12:\"addEnclosure\";s:0:\"\";s:9:\"enclosure\";s:0:\"\";s:6:\"source\";s:7:\"default\";s:6:\"jumpTo\";s:2:\"13\";s:9:\"articleId\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:10:\"noComments\";s:0:\"\";s:8:\"featured\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";}'),(4,1,1333986091,2,'tl_news',1,'k.jones','Associate Professor James Wilson returns','contao/main.php?do=news&table=tl_news&act=edit&id=1&rt=ba6180f2bf25dd674e6d6cc8dc8451f1','',_binary 'a:33:{s:2:\"id\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:6:\"tstamp\";s:10:\"1333986068\";s:8:\"headline\";s:40:\"Associate Professor James Wilson returns\";s:5:\"alias\";s:20:\"james-wilson-returns\";s:6:\"author\";s:1:\"1\";s:4:\"date\";s:10:\"1265275800\";s:4:\"time\";s:10:\"1265275800\";s:11:\"subheadline\";s:111:\"Veteran Jazz pianist James Wilson has enjoyed international renown since graduating from Music Academy in 1968.\";s:6:\"teaser\";s:117:\"<p>Jazz pianist James Wilson returns to Music Academy to give lessons in traditional and contemporary Jazz Piano.</p>\";s:4:\"text\";s:246:\"<p>James Wilson and the stage have been lifelong partners. The jazz pianist and youngest son of a preacher began playing in his father\'s church as a preschooler, took his first solo at the age of six, and has been a lead performer ever since.</p>\";s:8:\"addImage\";s:1:\"1\";s:9:\"singleSRC\";s:2:\"12\";s:3:\"alt\";s:12:\"James Wilson\";s:4:\"size\";s:55:\"a:3:{i:0;s:3:\"120\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}\";s:11:\"imagemargin\";s:102:\"a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}\";s:8:\"imageUrl\";s:0:\"\";s:8:\"fullsize\";s:1:\"1\";s:7:\"caption\";s:0:\"\";s:8:\"floating\";s:4:\"left\";s:12:\"addEnclosure\";s:0:\"\";s:9:\"enclosure\";s:0:\"\";s:6:\"source\";s:7:\"default\";s:6:\"jumpTo\";s:2:\"13\";s:9:\"articleId\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:10:\"noComments\";s:0:\"\";s:8:\"featured\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";}'),(5,1,1339146974,3,'tl_news',1,'k.jones','Associate Professor James Wilson returns','contao/main.php?do=news&table=tl_news&act=edit&id=1&rt=ba6180f2bf25dd674e6d6cc8dc8451f1','1',_binary 'a:33:{s:2:\"id\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:6:\"tstamp\";s:10:\"1333986091\";s:8:\"headline\";s:40:\"Associate Professor James Wilson returns\";s:5:\"alias\";s:20:\"james-wilson-returns\";s:6:\"author\";s:1:\"1\";s:4:\"date\";s:10:\"1265275800\";s:4:\"time\";s:10:\"1265275800\";s:11:\"subheadline\";s:111:\"Veteran Jazz pianist James Wilson has enjoyed international renown since graduating from Music Academy in 1968.\";s:6:\"teaser\";s:117:\"<p>Jazz pianist James Wilson returns to Music Academy to give lessons in traditional and contemporary Jazz Piano.</p>\";s:4:\"text\";s:246:\"<p>James Wilson and the stage have been lifelong partners. The jazz pianist and youngest son of a preacher began playing in his father\'s church as a preschooler, took his first solo at the age of six, and has been a lead performer ever since.</p>\";s:8:\"addImage\";s:1:\"1\";s:9:\"singleSRC\";s:2:\"11\";s:3:\"alt\";s:12:\"James Wilson\";s:4:\"size\";s:55:\"a:3:{i:0;s:3:\"120\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}\";s:11:\"imagemargin\";s:102:\"a:5:{s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:1:\"3\";s:3:\"top\";s:1:\"3\";s:4:\"unit\";s:2:\"px\";}\";s:8:\"imageUrl\";s:0:\"\";s:8:\"fullsize\";s:1:\"1\";s:7:\"caption\";s:0:\"\";s:8:\"floating\";s:4:\"left\";s:12:\"addEnclosure\";s:0:\"\";s:9:\"enclosure\";s:0:\"\";s:6:\"source\";s:7:\"default\";s:6:\"jumpTo\";s:2:\"13\";s:9:\"articleId\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:10:\"noComments\";s:0:\"\";s:8:\"featured\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";}');
/*!40000 ALTER TABLE `tl_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15  6:14:58
