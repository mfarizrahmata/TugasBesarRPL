/*
SQLyog Community v13.1.8 (64 bit)
MySQL - 5.7.36 : Database - restaurant
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restaurant` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `restaurant`;

/*Table structure for table `auth_activation_attempts` */

DROP TABLE IF EXISTS `auth_activation_attempts`;

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `auth_activation_attempts` */

/*Table structure for table `auth_groups` */

DROP TABLE IF EXISTS `auth_groups`;

CREATE TABLE `auth_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `auth_groups` */

insert  into `auth_groups`(`id`,`name`,`description`) values 
(1,'pelayan','Site Pelayan'),
(2,'koki','Site Koki'),
(3,'kasir','Site Kasir');

/*Table structure for table `auth_groups_permissions` */

DROP TABLE IF EXISTS `auth_groups_permissions`;

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `permission_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  KEY `group_id_permission_id` (`group_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `auth_groups_permissions` */

/*Table structure for table `auth_groups_users` */

DROP TABLE IF EXISTS `auth_groups_users`;

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_groups_users_user_id_foreign` (`user_id`),
  KEY `group_id_user_id` (`group_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `auth_groups_users` */

insert  into `auth_groups_users`(`group_id`,`user_id`) values 
(1,3),
(2,2),
(3,1);

/*Table structure for table `auth_logins` */

DROP TABLE IF EXISTS `auth_logins`;

CREATE TABLE `auth_logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `auth_logins` */

insert  into `auth_logins`(`id`,`ip_address`,`email`,`user_id`,`date`,`success`) values 
(1,'::1','asd@gmail.com',1,'2022-04-23 04:18:27',1),
(2,'::1','irfanca',NULL,'2022-04-23 04:20:19',0),
(3,'::1','asd@gmail.com',2,'2022-04-23 04:24:44',1),
(4,'::1','asd@gmail.com',1,'2022-04-23 04:39:59',1),
(5,'::1','asd@gmail.com',1,'2022-04-23 04:41:09',1),
(6,'::1','asd@gmail.com',1,'2022-04-23 23:21:41',1),
(7,'::1','asd@gmail.com',1,'2022-04-23 23:56:08',1),
(8,'::1','pelayan',NULL,'2022-04-23 23:58:45',0),
(9,'::1','asd@gmail.com',1,'2022-04-23 23:58:54',1),
(10,'::1','pelayan',NULL,'2022-04-23 23:59:41',0),
(11,'::1','asd@gmail.com',1,'2022-04-24 00:00:11',1),
(12,'::1','asd@gmail.com',1,'2022-04-24 00:13:52',1),
(13,'::1','asd@gmail.com',1,'2022-04-24 00:15:46',1),
(14,'::1','asd@gmail.com',1,'2022-04-24 00:16:01',1),
(15,'::1','asd@gmail.com',1,'2022-04-24 00:25:10',1),
(16,'::1','asd@gmail.com',1,'2022-04-24 00:25:51',1),
(17,'::1','asd@gmail.com',1,'2022-04-24 00:28:51',1),
(18,'::1','asd@gmail.com',1,'2022-04-24 00:30:58',1),
(19,'::1','asd@gmail.com',1,'2022-04-24 00:31:38',1),
(20,'::1','asd@gmail.com',1,'2022-04-24 00:38:40',1),
(21,'::1','asd@gmail.com',1,'2022-04-24 02:10:58',1),
(22,'::1','asd@gmail.com',1,'2022-04-24 02:14:06',1),
(23,'::1','asd@gmail.com',1,'2022-04-24 02:16:53',1),
(24,'::1','ujang.ganteng@gmail.com',2,'2022-04-24 02:17:57',1),
(25,'::1','asdasd@gmail.com',3,'2022-04-24 02:19:02',1),
(26,'::1','asdasd@gmail.com',3,'2022-04-24 02:37:48',1),
(27,'::1','asd@gmail.com',1,'2022-04-24 02:38:11',1),
(28,'::1','ujang.ganteng@gmail.com',2,'2022-04-24 02:38:23',1),
(29,'::1','asdasd@gmail.com',3,'2022-04-24 02:38:57',1),
(30,'::1','ujang.ganteng@gmail.com',2,'2022-04-24 02:39:17',1),
(31,'::1','asd@gmail.com',1,'2022-04-24 02:39:38',1),
(32,'::1','koki',NULL,'2022-04-24 02:41:18',0),
(33,'::1','ujang.ganteng@gmail.com',2,'2022-04-24 02:41:24',1),
(34,'::1','asdasd@gmail.com',3,'2022-04-24 03:26:53',1),
(35,'::1','asd@gmail.com',1,'2022-04-24 03:27:27',1);

/*Table structure for table `auth_permissions` */

DROP TABLE IF EXISTS `auth_permissions`;

CREATE TABLE `auth_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permissions` */

insert  into `auth_permissions`(`id`,`name`,`description`) values 
(1,'manage-profile','mencarikan meja dan kursi yang bisa ditempati oleh\r\npelanggan sesuai dengan jumlah orang yang datang'),
(2,'manage-profile','Membuat menu untuk setiap makanan atau minuman di katalog menu'),
(3,'manage-profile','Bertugas untuk menghitung total harga untuk setiap pesanan yang dilakukan\r\nbeserta mencetak nota pesanan untuk pelanggan.\r\n');

/*Table structure for table `auth_reset_attempts` */

DROP TABLE IF EXISTS `auth_reset_attempts`;

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `auth_reset_attempts` */

/*Table structure for table `auth_tokens` */

DROP TABLE IF EXISTS `auth_tokens`;

CREATE TABLE `auth_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_tokens_user_id_foreign` (`user_id`),
  KEY `selector` (`selector`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `auth_tokens` */

/*Table structure for table `auth_users_permissions` */

DROP TABLE IF EXISTS `auth_users_permissions`;

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `permission_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  KEY `user_id_permission_id` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `auth_users_permissions` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`version`,`class`,`group`,`namespace`,`time`,`batch`) values 
(1,'2017-11-20-223112','Myth\\Auth\\Database\\Migrations\\CreateAuthTables','default','Myth\\Auth',1650699986,1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'user.png',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`username`,`fullname`,`user_image`,`password_hash`,`reset_hash`,`reset_at`,`reset_expires`,`activate_hash`,`status`,`status_message`,`active`,`force_pass_reset`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'asd@gmail.com','kasir',NULL,'user.png','$2y$10$Wb7ZkfmfZZjgew8qWDc.yuYpCzu.2ZvY9kxZs5QWDG7AjW9exu1wq',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-04-24 00:03:57','2022-04-24 00:03:57',NULL),
(2,'ujang.ganteng@gmail.com','koki',NULL,'user.png','$2y$10$QUzgg73GNCBvSu9Q6rgLOurui1IXtP8Bbkj7OobJ.PbKVi.KXXUtS',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-04-24 02:17:50','2022-04-24 02:17:50',NULL),
(3,'asdasd@gmail.com','pelayan',NULL,'user.png','$2y$10$KRwVb/APwceYbCTcEtTae.zsbhAHRHlQz.O5Z./j4syhnGnuk5hYe',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2022-04-24 02:18:55','2022-04-24 02:18:55',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
