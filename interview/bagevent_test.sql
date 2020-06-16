/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.0.22-community-nt : Database - bagevent_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bagevent_test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bagevent_test`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL auto_increment,
  `user_name` varchar(20) default NULL,
  `email` varchar(20) default NULL,
  `cellphone` varchar(20) default NULL,
  `password` varchar(300) default NULL,
  `salt` varchar(20) default NULL,
  `state` char(2) NOT NULL,
  `create_time` date NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`email`,`cellphone`,`password`,`salt`,`state`,`create_time`) values (5,NULL,NULL,'13382011134','8C7CADAEAF70D3C1F1A3E6619E23A486',NULL,'1','2020-06-14'),(6,NULL,NULL,'18551013668','8C7CADAEAF70D3C1F1A3E6619E23A486',NULL,'1','2020-06-14'),(7,NULL,NULL,'15050918311','8C7CADAEAF70D3C1F1A3E6619E23A486',NULL,'1','2020-06-15');

/*Table structure for table `userloginlog` */

CREATE TABLE `userloginlog` (
  `login_id` int(20) NOT NULL auto_increment,
  `user_id` int(20) NOT NULL,
  `login_time` date NOT NULL,
  `login_ip` varchar(20) default NULL,
  PRIMARY KEY  (`login_id`),
  KEY `UserLoginLog_USER_fk` (`user_id`),
  CONSTRAINT `UserLoginLog_USER_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `userloginlog` */

insert  into `userloginlog`(`login_id`,`user_id`,`login_time`,`login_ip`) values (1,5,'2020-06-14','13382011134'),(2,5,'2020-06-14','13382011134'),(3,5,'2020-06-14','13382011134'),(4,5,'2020-06-14','13382011134'),(5,5,'2020-06-14','13382011134'),(6,5,'2020-06-14','13382011134'),(7,5,'2020-06-14','13382011134'),(8,5,'2020-06-14','13382011134'),(9,6,'2020-06-14','18551013668'),(10,5,'2020-06-15','13382011134'),(11,7,'2020-06-15','15050918311'),(12,5,'2020-06-15','13382011134');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
