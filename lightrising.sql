/*
SQLyog Community v9.63 
MySQL - 5.5.27-log : Database - lightrising
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lightrising` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lightrising`;

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `joined` date NOT NULL,
  `kills` int(10) unsigned NOT NULL DEFAULT '0',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `lastrevive` date NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '',
  `deaths` int(11) unsigned NOT NULL DEFAULT '0',
  `revives` int(11) unsigned NOT NULL DEFAULT '0',
  `frags` int(10) unsigned NOT NULL DEFAULT '1',
  `settlement_id` int(32) NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0',
  `corp_name` varchar(24) NOT NULL DEFAULT 'None',
  `corp_desc` text NOT NULL,
  `corp_image` varchar(100) NOT NULL,
  `force` int(10) unsigned NOT NULL DEFAULT '0',
  `total_frags` int(10) unsigned NOT NULL DEFAULT '0',
  `temp_sett_id` int(10) unsigned NOT NULL DEFAULT '0',
  `when_sett_joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `accounts` */

/*Table structure for table `animals` */

DROP TABLE IF EXISTS `animals`;

CREATE TABLE `animals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(16) NOT NULL,
  `x` int(11) NOT NULL DEFAULT '10',
  `y` int(11) NOT NULL DEFAULT '-10',
  `z` tinyint(1) NOT NULL,
  `hp` smallint(4) NOT NULL DEFAULT '10',
  `region_id` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `MapSelect` (`id`,`type_id`,`x`,`y`,`z`)
) ENGINE=MyISAM AUTO_INCREMENT=16026 DEFAULT CHARSET=utf8;

/*Data for the table `animals` */

/*Table structure for table `grid` */

DROP TABLE IF EXISTS `grid`;

CREATE TABLE `grid` (
  `x` smallint(6) NOT NULL,
  `y` smallint(6) NOT NULL,
  `region_id` int(11) NOT NULL DEFAULT '1',
  `hp` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `terrain` smallint(6) unsigned NOT NULL DEFAULT '3',
  `building_id` smallint(6) NOT NULL DEFAULT '0',
  `building_hp` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`x`,`y`,`region_id`,`terrain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `grid` */

/*Table structure for table `inventories` */

DROP TABLE IF EXISTS `inventories`;

CREATE TABLE `inventories` (
  `user_id` int(11) unsigned NOT NULL,
  `item_id` smallint(5) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `inventories` */

/*Table structure for table `ips` */

DROP TABLE IF EXISTS `ips`;

CREATE TABLE `ips` (
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ips` */

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `speaker_id` int(11) NOT NULL DEFAULT '0',
  `target_id` int(11) NOT NULL DEFAULT '0',
  `x` smallint(6) NOT NULL,
  `y` smallint(6) NOT NULL,
  `z` tinyint(4) NOT NULL,
  `type` enum('whisper','talk','shout','distant','reply','action','game','persistent','slash_me','chat','visible_all') NOT NULL DEFAULT 'action',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `x` (`x`,`y`,`z`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=307129 DEFAULT CHARSET=utf8;

/*Data for the table `messages` */

/*Table structure for table `settlements` */

DROP TABLE IF EXISTS `settlements`;

CREATE TABLE `settlements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `x` smallint(6) NOT NULL,
  `y` smallint(6) NOT NULL,
  `founded` date NOT NULL,
  `type` enum('village','town','city','metropolis') NOT NULL DEFAULT 'village',
  `description` text NOT NULL,
  `motto` tinytext NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(32) NOT NULL DEFAULT 'Leader',
  `leader_id` int(11) NOT NULL,
  `website` varchar(100) NOT NULL,
  `allow_new_users` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `settlements` */

/*Table structure for table `skills` */

DROP TABLE IF EXISTS `skills`;

CREATE TABLE `skills` (
  `user_id` int(11) unsigned NOT NULL,
  `skill_id` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `user_id` (`user_id`,`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `skills` */

/*Table structure for table `stockpiles` */

DROP TABLE IF EXISTS `stockpiles`;

CREATE TABLE `stockpiles` (
  `x` smallint(6) NOT NULL,
  `y` smallint(6) NOT NULL,
  `item_id` smallint(5) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  KEY `x_y` (`x`,`y`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `stockpiles` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL,
  `password` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `x` smallint(6) NOT NULL DEFAULT '0',
  `y` smallint(6) NOT NULL DEFAULT '0',
  `z` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hp` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `maxhp` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `ap` float(4,1) NOT NULL DEFAULT '250.0',
  `hunger` tinyint(3) unsigned NOT NULL DEFAULT '9',
  `lastaction` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `craft_xp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `warrior_xp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `herbal_xp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wander_xp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `donated` tinyint(1) NOT NULL DEFAULT '0',
  `donation_amount` smallint(2) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `chat` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `username` (`name`),
  KEY `MapSelect` (`active`,`x`,`y`,`z`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=895 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

/*Table structure for table `writings` */

DROP TABLE IF EXISTS `writings`;

CREATE TABLE `writings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` tinyint(3) unsigned NOT NULL,
  `message` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=599 DEFAULT CHARSET=utf8;

/*Data for the table `writings` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
