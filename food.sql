/*
SQLyog Ultimate v8.32 
MySQL - 8.0.18 : Database - food
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`food` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `food`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`categoryname`) values (1,'饮品'),(2,'蛋糕'),(3,'甜点'),(4,'熟菜'),(5,'早餐');

/*Table structure for table `commentary` */

DROP TABLE IF EXISTS `commentary`;

CREATE TABLE `commentary` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `FK_fid` (`fid`),
  KEY `FK_uid` (`uid`),
  CONSTRAINT `FK_fid` FOREIGN KEY (`fid`) REFERENCES `food` (`fid`),
  CONSTRAINT `FK_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `commentary` */

insert  into `commentary`(`cid`,`content`,`time`,`fid`,`uid`) values (17,'好想吃啊','2020年04月25日 23:30:45',31,1);

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `description` varchar(2555) DEFAULT NULL,
  `img` varchar(400) DEFAULT NULL,
  `imgdetail` varchar(400) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `cid` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `FK_food` (`uid`),
  KEY `FK_FC` (`cid`),
  CONSTRAINT `FK_FC` FOREIGN KEY (`cid`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_food` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

/*Data for the table `food` */

insert  into `food`(`fid`,`title`,`description`,`img`,`imgdetail`,`time`,`uid`,`cid`) values (31,'慕斯蛋糕','三色慕斯作为午后的甜点，很适宜，虽说已入东很久，但这些天确实特别的暖和，所以这个甜点绝对可以接受的，晒着太阳，品着甜点，很适合。这款慕斯主要是由三个部分组成，分为巧克力和芒果还有草莓的，让慕斯的口感更丰富，用勺子挖下去，有层层的惊喜哦','upload/ms1.png','upload/sansemusibeizuofa.png','2020-04-15 01:27:02',1,1),(53,'豆角烧茄子','豆角烧茄子','upload/5a97ef5188804836b00ea95d4ead7118.png','upload/5a97ef5188804836b00ea95d4ead7118_detail.png','2020-04-29 08:49:19',2,4),(54,'木瓜牛奶冻','这是一道好吃的木瓜牛奶冻','upload/4ab32456db2b4024ab10ecac4ccb2a49.png','upload/4ab32456db2b4024ab10ecac4ccb2a49_detail.png','2020-04-29 08:59:42',3,3),(55,'培根手抓早餐饼','昨天晚上在网上买的手抓饼、拿回来稍微自己DIY一下就OK了。简单方便别说现在网购挺给力的、附近门店下单30分钟 左右就可以到送到家、太方便啦','upload/06f71481b3034f7e91c2ec02884642e9.png','upload/06f71481b3034f7e91c2ec02884642e9_detail.png','2020-04-29 10:45:56',1,5),(56,'春笋丁炒毛豆','微辣咸香，营养丰富。','upload/f5c8cc38ae0947fd8e02160166447d1e.png','upload/f5c8cc38ae0947fd8e02160166447d1e_detail.png','2020-04-29 10:55:44',1,4),(57,'春笋玉米胡萝卜瘦肉汤','雨后的春笋鲜嫩，无论它的高蛋白低脂肪低淀粉还是粗纤维，都是现代人健康养生所追求的。春天喝汤除了春笋的鲜嫩之外，还加了玉米的甜和润。五彩玉米的特点是糯香，而且煲出来的汤特别清甜，因为比较硬，用来煲汤就最好了。','upload/65669a8c6f954bf1a8eaeb4727005b45.png','upload/65669a8c6f954bf1a8eaeb4727005b45_detail.png','2020-04-30 12:37:33',1,4);

/*Table structure for table `illustration` */

DROP TABLE IF EXISTS `illustration`;

CREATE TABLE `illustration` (
  `iid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `makingdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `illustration` */

insert  into `illustration`(`iid`,`name`,`makingdesc`,`img`) values (1,'春笋','不论你发觉没发觉，春天都已经照常来到。现在这个时节的笋是最嫩的，无论哪种笋，揭去外面的几片硬壳，用小刀子尖在里面横一道口，两手反方向一搓，里头的几层壳也就下来了。鲜嫩美味的“笋野”，吃在嘴里满满的是春天的味道。懂得春日尝鲜的餐桌上，少了春笋这一口就一定不会完整！','upload/bg1.jpg'),(2,'慕斯蛋糕','慕斯蛋糕是一种奶冻式的甜点，口味变化丰富，其性质较布丁更柔软，入口即化。','upload/cake.jpg'),(3,'早餐饼','你每天有好好吃早餐吗？这些简单易做，营养丰富，不可错过的快手早餐饼来啦，吃货们赶紧马了试试吧！ ','upload/bg3.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `store` varchar(12) DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`store`,`checked`) values (1,'1740129116','123','这是我的第一个餐馆',NULL),(2,'1840129358','123','这是我的第二个餐馆',NULL),(3,'1740129208','123','这是我的第三个餐馆',NULL),(4,'admin','admin',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
