/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - veggiebox
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`veggiebox` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `veggiebox`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_mail` varchar(30) DEFAULT NULL,
  `cust_cont` decimal(20,0) DEFAULT NULL,
  `cust_addr` varchar(30) DEFAULT NULL,
  `pro_name` varchar(20) DEFAULT NULL,
  `pro_qua` decimal(30,0) DEFAULT NULL,
  `price` decimal(30,0) DEFAULT NULL,
  `total_pri` decimal(30,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`cust_name`,`cust_mail`,`cust_cont`,`cust_addr`,`pro_name`,`pro_qua`,`price`,`total_pri`) values ('Sam','sam@gmail.com','787878787878','US','Tomato','5','500',NULL),('Sam','sam@gmail.com','787878787878','US','Onion','7','630',NULL),('William','wili@gmail.com','2345678234','UK','Onion','10','900',NULL),('William','wili@gmail.com','2345678234','UK','Potato','8','560',NULL),('William','wili@gmail.com','2345678234','UK','Tomato','7','700',NULL),('Ram','rr@gmail.com','1111111111','India','Onion','10','900',NULL),('Ram','rr@gmail.com','1111111111','India','Tomato','9','900',NULL),('idid','diwjdijdiwj','5678767','iwniwcniw','Tomato','10','1000',NULL),('ndwuw','uebcu','878878787','ueuqeu','Onion','10','900',NULL),('gyft','dfguhugyt','765456787','ijhugyftfyg','Tomato','10','1000',NULL),('iucnwin','jievniinc','67767767767','fefec','Onion','10','900',NULL),('hguyfjn','fytyguhjh','876567876','hjihgg','Tomato','10','1000',NULL),('hguyfjn','fytyguhjh','876567876','hjihgg','Potato','20','1400',NULL),('hguyfjn','fytyguhjh','876567876','hjihgg','Onion','7','630',NULL),('sijccn','jeifwic','87898789','wifhwifj','Onion','10','900',NULL),('sijccn','jeifwic','87898789','wifhwifj','Potato','8','560',NULL),('arpit','arpit@gmail.com','787878877878','lucknow','Onion','9','630',NULL),('adarsh','adarsh12','76767676','Lucknow','Onion','9','630',NULL),('adarsh','adarsh12','76767676','Lucknow','Capsicum','5','200',NULL),('adarsh','adarsh12','76767676','Lucknow','carrot','15','1050',NULL),('ram','ram12@3','7897989','UK','carrot','10','700',NULL),('ram','ram12@3','7897989','UK','Onion','4','280',NULL);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `type` varchar(30) DEFAULT NULL,
  `id` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `age` decimal(30,0) DEFAULT NULL,
  `adhaarid` decimal(15,0) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`type`,`id`,`name`,`contact`,`address`,`age`,`adhaarid`,`password`) values ('Admin','admin','sam','7867564638','lucknow','21','123456789009','admin'),('Employee','user1','abc','6767678777','uk','25','8878787878','user1'),('Employee','user2','def','263738838','MP','28','78799799898','user2'),('Employee','user3','ghij','787898689','US','26','6767678987','user32'),('Employee','user4','jsndd','9788907987','lnlndwk','18','7686786878','user4'),('Employee','user5','jkbkjeqb','878977','lqenlqn','37','8686776','user5'),('Employee','user6','jebfkqef','86979769','kjqhffqbe','19','88586568','user6'),('Employee','user7','jkwbefjkeb','98697986789','ljnqnd','22','769676787','user7'),('Employee','user8','wefwofeu','87676876','jwdee','78','876876876','user8');

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `cust_name` varchar(30) DEFAULT NULL,
  `cust_cont` decimal(20,0) DEFAULT NULL,
  `total_pri` decimal(20,0) DEFAULT NULL,
  `total_qua` decimal(20,0) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sale` */

insert  into `sale`(`cust_name`,`cust_cont`,`total_pri`,`total_qua`,`date`) values ('Yonik','67897656662','4650','52','10-01-2024'),('Yonik','67897656662','4650','52','10-01-2024'),('yonik','67897656662','4650','52','10-01-2024'),('Yonik','67897656662','4650','52','10-01-2024'),('Yonik','67897656662','4650','52','10-01-2024'),('arpit','787878877878','630','17','10-01-2024'),('adarsh','76767676','1880','30','13-02-2024'),('ram','7897989','980','14','13-02-2024');

/*Table structure for table `seler` */

DROP TABLE IF EXISTS `seler`;

CREATE TABLE `seler` (
  `id` decimal(20,0) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `addr` varchar(30) DEFAULT NULL,
  `cont` decimal(20,0) DEFAULT NULL,
  `pro_date` varchar(20) DEFAULT NULL,
  `pro_name` varchar(20) DEFAULT NULL,
  `pro_qua` varchar(20) DEFAULT NULL,
  `pro_price` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `seler` */

insert  into `seler`(`id`,`sname`,`addr`,`cont`,`pro_date`,`pro_name`,`pro_qua`,`pro_price`) values ('2','sam','UK','5678092378','2-3-2023','Tomato','200','80'),('889','Tony','UK','6765654589','20/02/2024','Ginger','200','70');

/*Table structure for table `veggie` */

DROP TABLE IF EXISTS `veggie`;

CREATE TABLE `veggie` (
  `pro_id` decimal(20,0) NOT NULL,
  `pro_name` varchar(20) DEFAULT NULL,
  `pro_qua` decimal(30,0) DEFAULT NULL,
  `pro_price` decimal(30,0) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `veggie` */

insert  into `veggie`(`pro_id`,`pro_name`,`pro_qua`,`pro_price`) values ('2','Tomato','50','100'),('3','Onion','80','70'),('4','Ginger','90','70'),('5','Capsicum','100','40'),('7','carrot','110','70');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
