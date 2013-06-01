# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.10)
# Database: foodshare
# Generation Time: 2013-06-01 21:59:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table donation_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `donation_status`;

CREATE TABLE `donation_status` (
  `donation_status_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `donation_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`donation_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table donation_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `donation_types`;

CREATE TABLE `donation_types` (
  `donation_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `donation_type_desc` int(11) NOT NULL,
  PRIMARY KEY (`donation_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table location_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `location_types`;

CREATE TABLE `location_types` (
  `location_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `location_type` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`location_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `location_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address1` int(11) DEFAULT NULL,
  `address2` int(11) NOT NULL,
  `city` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `phone1` int(11) NOT NULL,
  `phone2` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  `location_email` int(11) DEFAULT NULL,
  `exec_director` int(11) DEFAULT NULL,
  `location_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table donations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `donations`;

CREATE TABLE `donations` (
  `donation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `donation_type_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `pr_seq_id` int(11) NOT NULL,
  `pickup_window_id` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `perishable` tinyint(1) DEFAULT NULL,
  `description` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table locations_properties
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locations_properties`;

CREATE TABLE `locations_properties` (
  `location_property_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `drop_off` tinyint(1) NOT NULL DEFAULT '0',
  `num_beds` int(11) NOT NULL DEFAULT '0',
  `daycare` tinyint(1) NOT NULL DEFAULT '0',
  `rehab` tinyint(1) NOT NULL DEFAULT '0',
  `soup_kitchen` tinyint(1) NOT NULL DEFAULT '0',
  `emergency` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table parties
# ------------------------------------------------------------

DROP TABLE IF EXISTS `parties`;

CREATE TABLE `parties` (
  `party_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `phone_mobile` varchar(120) DEFAULT NULL,
  `phone_home` varchar(120) DEFAULT NULL,
  `phone_work` varchar(120) DEFAULT NULL,
  `email` varchar(120) NOT NULL DEFAULT '',
  `password` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;

INSERT INTO `parties` (`party_id`, `first_name`, `last_name`, `phone_mobile`, `phone_home`, `phone_work`, `email`, `password`)
VALUES
	(1,'Jeff','Stansberry','865-384-3917',NULL,NULL,'jeffrey.stansberry@digitalreasoning.com','password');

/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table party_reationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `party_reationships`;

CREATE TABLE `party_reationships` (
  `pr_seq_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `party_id` int(11) DEFAULT NULL,
  `party_role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pr_seq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table party_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `party_roles`;

CREATE TABLE `party_roles` (
  `party_role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role` int(11) DEFAULT NULL,
  `role_description` int(11) DEFAULT NULL,
  PRIMARY KEY (`party_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pickup_windows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickup_windows`;

CREATE TABLE `pickup_windows` (
  `pickup_window_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` int(11) DEFAULT NULL,
  `pickup_monday` int(11) DEFAULT NULL,
  `pickup_tuesday` int(11) DEFAULT NULL,
  `pickup_wednesday` int(11) DEFAULT NULL,
  `pickup_thursday` int(11) DEFAULT NULL,
  `pickup_friday` int(11) DEFAULT NULL,
  `pickup_saturday` int(11) DEFAULT NULL,
  `pickup_sunday` int(11) DEFAULT NULL,
  `pickup_morning` int(11) DEFAULT NULL,
  `pickup_afternoon` int(11) DEFAULT NULL,
  `pickup_evening` int(11) DEFAULT NULL,
  `pickup_anytime` int(11) DEFAULT NULL,
  PRIMARY KEY (`pickup_window_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table states
# ------------------------------------------------------------

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `state_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state_abbrev` int(11) DEFAULT NULL,
  `state_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
