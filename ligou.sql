# Host: localhost  (Version: 5.5.45)
# Date: 2017-04-14 13:47:30
# Generator: MySQL-Front 5.3  (Build 4.214)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "aboutustext"
#

DROP TABLE IF EXISTS `aboutustext`;
CREATE TABLE `aboutustext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

#
# Data for table "aboutustext"
#

/*!40000 ALTER TABLE `aboutustext` DISABLE KEYS */;
/*!40000 ALTER TABLE `aboutustext` ENABLE KEYS */;

#
# Structure for table "brandsort"
#

DROP TABLE IF EXISTS `brandsort`;
CREATE TABLE `brandsort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandname` char(50) DEFAULT NULL,
  `oneclass` char(20) DEFAULT NULL,
  `productsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "brandsort"
#

/*!40000 ALTER TABLE `brandsort` DISABLE KEYS */;
INSERT INTO `brandsort` VALUES (1,'nike','clothes',45),(2,'lining','clothes',NULL),(3,'puma','clothes',NULL),(4,'simple','clothes',NULL);
/*!40000 ALTER TABLE `brandsort` ENABLE KEYS */;

#
# Structure for table "color"
#

DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productsid` int(11) DEFAULT '0',
  `blue` int(1) DEFAULT '0',
  `yellow` int(1) DEFAULT '0',
  `black` int(1) DEFAULT '0',
  `white` int(1) DEFAULT '0',
  `red` int(1) DEFAULT '0',
  `purple` int(1) DEFAULT '0',
  `gray` int(1) DEFAULT '0',
  `pink` int(1) DEFAULT '0',
  `orange` int(1) DEFAULT '0',
  `green` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "color"
#

INSERT INTO `color` VALUES (1,13,0,1,0,0,0,0,0,0,0,0),(2,14,0,0,0,0,0,0,0,0,0,0),(3,15,1,1,0,0,0,0,0,0,0,0);

#
# Structure for table "colorsort"
#

DROP TABLE IF EXISTS `colorsort`;
CREATE TABLE `colorsort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(15) DEFAULT NULL,
  `chinesename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "colorsort"
#

INSERT INTO `colorsort` VALUES (1,'blue','蓝色'),(2,'yellow','黄色'),(3,'black','黑色'),(4,'white','白色'),(5,'red','红色'),(6,'purple','紫色'),(7,'gray','灰色'),(8,'pink','粉色'),(9,'orange','橙色'),(10,'green','绿色');

#
# Structure for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `newsid` int(11) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `parentid` int(11) DEFAULT '0',
  `floor` int(11) DEFAULT '0',
  `parentusername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `newsid` (`newsid`),
  KEY `fk_1` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

#
# Data for table "comment"
#

/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

#
# Structure for table "commoninfo"
#

DROP TABLE IF EXISTS `commoninfo`;
CREATE TABLE `commoninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introducetitle` varchar(50) DEFAULT NULL,
  `introducecontent` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobilephone` varchar(20) DEFAULT NULL,
  `icpnumber` varchar(50) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `hotline` varchar(20) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `emailme` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "commoninfo"
#

INSERT INTO `commoninfo` VALUES (2,'nfgntn',NULL,'address@some.com   ','  12365498798 ','86787646',1,'rghdthd','364537','jftjfyj','j45345','qq邮我组件 ytuityj   ');

#
# Structure for table "costsort"
#

DROP TABLE IF EXISTS `costsort`;
CREATE TABLE `costsort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begincost` int(11) DEFAULT NULL,
  `endcost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "costsort"
#

/*!40000 ALTER TABLE `costsort` DISABLE KEYS */;
INSERT INTO `costsort` VALUES (1,50,99),(2,100,499),(3,500,799),(4,800,999),(5,1000,1499);
/*!40000 ALTER TABLE `costsort` ENABLE KEYS */;

#
# Structure for table "customer"
#

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(255) DEFAULT '',
  `contact` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "customer"
#

INSERT INTO `customer` VALUES (1,'小王','15534212123','大连','2017-04-11 11:33:42'),(2,'小李','15534212123','大连','2017-04-11 12:33:42'),(3,'小于','15534212123','大连','2017-04-11 13:33:42'),(4,'小赵','15534212123','大连','2017-04-11 14:33:42'),(5,'小孙','15534212123','大连','2017-04-11 15:33:42'),(9,'fwef34534','wefwe','wefwe','2017-04-11 16:33:42'),(10,'dfgfgersg','23454654','dfgsdfgdf','2017-04-11 10:33:42'),(11,'dfgdfgdsgsdgfd','gdfgdf','fgdsfgsd','2017-04-11 18:34:21'),(12,'cxvxc','cvsdv','dvs','2017-04-11 18:35:59'),(13,'fbgdg','fdgdf','dfgdsf','2017-04-11 18:38:29'),(14,'dsf','esfs','fesfs','2017-04-11 18:38:54'),(15,'ghhhjj','fghjhhj','fgjhgj','2017-04-11 18:47:57'),(16,'kjljkl','jkljkl','jkl;jkjkllkj','2017-04-11 18:48:47'),(17,'aaaa','fdfgfg','bbbdfgdfds','2017-04-11 18:49:58');

#
# Structure for table "deal"
#

DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) NOT NULL DEFAULT '0',
  `ispaid` int(1) NOT NULL DEFAULT '0',
  `iscuttail100` int(1) NOT NULL DEFAULT '0',
  `iscuttail1000` int(1) NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '1',
  `vat` double DEFAULT '0',
  `subtotal` double DEFAULT '0',
  `total` double DEFAULT '0',
  `note` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `salepersonid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "deal"
#

INSERT INTO `deal` VALUES (1,1,0,0,0,0,0,0,0,NULL,'2017-04-10 18:49:19',0),(2,2,0,0,0,0,0,0,0,NULL,'2017-04-10 18:51:09',0),(3,3,0,0,0,0,0,0,0,NULL,'2017-04-10 18:51:59',0),(4,4,0,0,0,0,0,0,0,NULL,'2017-04-11 08:50:49',0),(5,5,0,0,0,0,0,0,0,NULL,'2017-04-11 08:51:55',0),(6,3,0,0,0,0,0,0,0,NULL,NULL,13),(7,17,0,0,0,0,0,0,0,NULL,NULL,11),(8,15,0,0,0,0,0,0,0,NULL,'2017-04-14 12:03:24',9),(9,15,0,0,0,0,0,0,0,NULL,'2017-04-14 12:12:29',9),(10,14,0,0,0,0,0,0,0,NULL,'2017-04-14 13:40:14',11),(11,17,0,0,0,0,0,0,0,NULL,'2017-04-14 13:43:03',13);

#
# Structure for table "f_pic"
#

DROP TABLE IF EXISTS `f_pic`;
CREATE TABLE `f_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picName` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `addDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "f_pic"
#


#
# Structure for table "f_user"
#

DROP TABLE IF EXISTS `f_user`;
CREATE TABLE `f_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` char(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `headpic` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "f_user"
#

INSERT INTO `f_user` VALUES (3,'fwer','123','ferewer',NULL,'u','15546546879','231234213','1899-12-29 00:00:00','1473562526673.jpg','sdfwer@163.com'),(4,'dlrenjie','123','renjie',NULL,'u','15546546879','23423432','2016-09-05 00:00:00','1474001045807.jpg','3234223@qq.com'),(5,'joyou','123','youyou',NULL,'u','15546246532','3423422','2016-09-05 00:00:00','','3423422@qq.com'),(6,'qiqi','123','qiqi',NULL,'u','15546243546','2342323','1994-07-18 00:00:00','1474945700726.jpg','2342323@qq.com'),(7,'xiaohua','123','xiaohua',NULL,'u','15524678899','2345678','1998-11-17 00:00:00','1475204199608.jpg','2345678@qq.com'),(8,'haha','123','haha',NULL,'u','15526543216','3423455','2016-09-08 00:00:00','1475227658718.jpg','3423455@qq.com');

#
# Structure for table "img"
#

DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productsid` int(11) DEFAULT NULL,
  `imgname` varchar(50) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `colorname` char(15) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

#
# Data for table "img"
#

INSERT INTO `img` VALUES (23,NULL,'yellow_1474797237375','.jpg','yellow'),(25,NULL,'white_1474797255230','.jpg','white'),(26,NULL,'white_1474797290603','.jpg','white'),(28,NULL,'blue_1474848581988','.jpg','blue'),(29,NULL,'blue_1474893929047','.jpg','blue'),(30,NULL,'white_1474893942491','.jpg','white'),(31,NULL,'white_1474893959787','.jpg','white'),(35,NULL,'yellow_1474938132717','.jpg','yellow'),(37,NULL,'white_1474938150476','.jpg','white'),(38,NULL,'yellow_1474938171006','.jpg','yellow'),(40,NULL,'yellow_1474938194300','.jpg','yellow'),(41,NULL,'yellow_1474938205370','.jpg','yellow'),(42,NULL,'yellow_1474938219731','.jpg','yellow'),(43,NULL,'blue_1474938229637','.jpg','blue'),(44,NULL,'blue_1474938241333','.jpg','blue'),(45,NULL,'yellow_1475220825298','.jpg','yellow'),(47,NULL,'yellow_1475220849543','.PNG','yellow'),(49,NULL,'yellow_1475220879731','.PNG','yellow'),(51,NULL,'white_1475220899486','.jpg','white'),(52,NULL,'blue_1475220912235','.jpg','blue'),(54,NULL,'yellow_1475220931810','.jpg','yellow'),(55,41,'yellow_1475226963759','.jpg','yellow'),(56,41,'blue_1475226972657','.jpg','blue'),(57,41,'blue_1475226984380','.jpg','blue'),(58,42,'white_1475227000916','.jpg','white'),(59,42,'blue_1475227010619','.jpg','blue'),(60,42,'blue_1475227018627','.jpg','blue'),(61,43,'white_1475227047821','.jpg','white'),(62,43,'yellow_1475227057525','.jpg','yellow');

#
# Structure for table "invoice"
#

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `deposit` double DEFAULT '0',
  `balance` double DEFAULT '0',
  `note` text,
  `paymentmethod` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1cash2bank3cheque',
  `chequenumber` char(50) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dealid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "invoice"
#

INSERT INTO `invoice` VALUES (1,2000,3000,'ffgfgdsdgert',1,'141234','2017-04-10 18:51:09',1);

#
# Structure for table "news"
#

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `imgname` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `sortid` int(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `viewtimes` int(11) DEFAULT NULL,
  `recommended` int(1) DEFAULT NULL,
  `commentcount` int(11) DEFAULT NULL,
  `productsid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "news"
#

INSERT INTO `news` VALUES (20,NULL,'<p>thfthrth</p>','new_1475227546806.jpg','2016-09-30 17:25:46',5,NULL,NULL,NULL,NULL,NULL,0);

#
# Structure for table "newssort"
#

DROP TABLE IF EXISTS `newssort`;
CREATE TABLE `newssort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortname` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "newssort"
#

/*!40000 ALTER TABLE `newssort` DISABLE KEYS */;
INSERT INTO `newssort` VALUES (1,'信息技术'),(2,'生活百科'),(3,'吉它知识'),(4,'汽车'),(5,'英语');
/*!40000 ALTER TABLE `newssort` ENABLE KEYS */;

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) DEFAULT '',
  `introduce` text,
  `price` double DEFAULT '0',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'这是产品名称。玻璃。','这里是介绍',0,'2017-04-10 18:51:09'),(2,'这是产品名称。玻璃。','这里是介绍',0,'2017-04-10 18:51:59'),(3,'这是产品名称。玻璃。','这里是介绍',0,'2017-04-11 08:50:49'),(4,'这是产品名称。玻璃。','这里是介绍',0,'2017-04-11 08:51:55'),(6,'fgsdfgdfsg','<p>产品介绍内容fg</p>',0,'2017-04-12 09:25:33'),(7,'fsdghdfg','<p>gfhfghfgh</p>',0,'2017-04-12 09:29:44'),(8,'ghfg','<p>产品介绍内容ghfhfgh</p>',0,'2017-04-12 09:30:20'),(9,'fdgdf','<p>产品介绍内容fdg</p>',0,'2017-04-12 09:32:33'),(10,'dcgdsf','<p>产品介绍内容fds</p>',0,'2017-04-12 09:35:24'),(11,'fgsdfg','<p>产品介绍内容fdsghdfg</p>',0,'2017-04-12 09:35:47'),(12,'sdfsda','<p>产品介绍内容df</p>',0,'2017-04-12 09:36:32'),(13,'fgfdg','<p>产品介绍内容3</p>',0,'2017-04-12 09:38:49'),(14,'gfdgdsf','<p>产品介绍内容fd</p>',0,'2017-04-12 09:40:07'),(15,'dfgdfsg','<p>产品介绍内容vbgsdf</p>',0,'2017-04-12 09:42:07'),(16,'gfdfg','<p>产品介绍内容dfg</p>',23452234,'2017-04-12 09:46:15'),(17,'gfddgre','<p>产品介绍内容fdg</p>',2345344,'2017-04-12 09:46:58'),(18,'sdfsae','fefsefdfsdaf',23,'2017-04-12 09:54:16');

#
# Structure for table "product2"
#

DROP TABLE IF EXISTS `product2`;
CREATE TABLE `product2` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL DEFAULT '0',
  `product2long` int(11) DEFAULT '0',
  `product2width` int(11) DEFAULT '0',
  `product2thick` int(11) DEFAULT '0',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dealid` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "product2"
#

INSERT INTO `product2` VALUES (1,1,200,30,3,'2017-04-10 18:51:09',2,0),(2,2,200,30,3,'2017-04-10 18:51:59',3,0),(3,3,200,30,3,'2017-04-11 08:50:49',4,0),(4,4,200,30,3,'2017-04-11 08:51:55',5,0),(5,18,444,244,2,'2017-04-13 18:10:12',6,345),(6,16,233,323,2,'2017-04-14 08:29:17',7,4423),(7,1,244,444,2,'2017-04-14 08:29:17',7,2344),(8,6,532,344,2,'2017-04-14 08:29:17',7,3455),(9,17,34,34,2,'2017-04-14 12:12:29',9,2312),(10,18,2,2,2,'2017-04-14 13:40:14',10,8),(11,16,3,3,3,'2017-04-14 13:40:14',10,27),(12,17,2,2,2,'2017-04-14 13:43:03',11,8),(13,18,3,3,3,'2017-04-14 13:43:03',11,27);

#
# Structure for table "products"
#

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productsname` varchar(50) DEFAULT NULL,
  `description` text,
  `addtime` datetime DEFAULT NULL,
  `sortid` int(2) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `recommended` int(1) DEFAULT NULL,
  `imgname` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `beforemoney` int(11) DEFAULT NULL,
  `brandsortid` int(11) DEFAULT NULL,
  `secondsortid` int(11) DEFAULT NULL,
  `thirdsortid` int(11) DEFAULT NULL,
  `scoreid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

#
# Data for table "products"
#

INSERT INTO `products` VALUES (41,'34erwwer','<p>商品介绍内容fdfds</p>','2016-09-30 17:14:38',1,NULL,NULL,'new_1475226875346.jpg',NULL,88,1,6,NULL,NULL),(42,'fdwef','<p>商品介绍内容dsf</p>','2016-09-30 17:15:15',1,NULL,NULL,'new_1475226915387.jpg',NULL,233,2,5,NULL,NULL),(43,'ewfre','<p>商品介绍内容fgrge</p>','2016-09-30 17:15:49',1,NULL,NULL,'new_1475226949679.jpg',NULL,988,3,1,1,NULL);

#
# Structure for table "productscomment"
#

DROP TABLE IF EXISTS `productscomment`;
CREATE TABLE `productscomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `floor` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productsid` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "productscomment"
#

INSERT INTO `productscomment` VALUES (2,'<p>sdfew</p>',2,5,NULL,'2016-09-26 10:40:11'),(4,'<p>fef</p>',4,5,NULL,'2016-09-26 10:40:29'),(6,'<p>sdfe</p>',6,5,NULL,'2016-09-26 10:40:40'),(8,'<p>fe</p>',8,5,NULL,'2016-09-26 10:40:47'),(9,'<p>ertert</p>',1,6,30,'2016-09-27 11:12:01'),(10,'<p>6453t3</p>',2,7,30,'2016-09-30 11:00:07'),(11,'<p>ffsxh</p>',3,5,30,'2016-09-30 12:21:35'),(12,'<p>ry5y</p>',1,5,41,'2016-09-30 17:20:02'),(13,'<p>ererw</p>',2,8,41,'2016-09-30 17:28:07'),(14,'<p>htrterer</p>',3,8,41,'2016-09-30 17:28:16');

#
# Structure for table "saleperson"
#

DROP TABLE IF EXISTS `saleperson`;
CREATE TABLE `saleperson` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `salepersonname` varchar(255) DEFAULT '',
  `contact` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "saleperson"
#

INSERT INTO `saleperson` VALUES (5,'salepersonnamenamename','23235234','saleperson addressaddress','2017-04-11 16:38:24'),(8,'gerghe','5565673','erhreheryer','2017-04-12 08:32:51'),(9,'gerghe','5565673','erhreheryer','2017-04-12 08:34:58'),(10,'hjtgh','hjgh','jkhkgj','2017-04-12 08:36:14'),(11,'fdhfgh','hjghjhjk','kyukytuk','2017-04-12 08:38:10'),(12,'fgjgh','jghk','jhkjhkuy','2017-04-12 08:38:34'),(13,'fdgerg','regerg','ergre','2017-04-12 09:19:18');

#
# Structure for table "scoretb"
#

DROP TABLE IF EXISTS `scoretb`;
CREATE TABLE `scoretb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(1) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_score` (`userid`),
  KEY `fk_products_score` (`productsid`),
  CONSTRAINT `fk_products_score` FOREIGN KEY (`productsid`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_user_score` FOREIGN KEY (`userid`) REFERENCES `f_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

#
# Data for table "scoretb"
#

INSERT INTO `scoretb` VALUES (16,4,5,NULL),(18,4,5,NULL),(21,3,5,NULL),(24,4,5,NULL),(25,3,5,NULL),(26,4,5,NULL),(28,4,8,42),(29,3,8,41);

#
# Structure for table "products_score"
#

DROP TABLE IF EXISTS `products_score`;
CREATE TABLE `products_score` (
  `productsid` int(11) NOT NULL,
  `scoreid` int(11) NOT NULL,
  PRIMARY KEY (`productsid`,`scoreid`),
  KEY `idx_products` (`productsid`),
  KEY `idx_score` (`scoreid`),
  CONSTRAINT `fk_s_products` FOREIGN KEY (`productsid`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_s_score` FOREIGN KEY (`scoreid`) REFERENCES `scoretb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "products_score"
#


#
# Structure for table "secondsort"
#

DROP TABLE IF EXISTS `secondsort`;
CREATE TABLE `secondsort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortname` char(20) DEFAULT NULL,
  `onesortid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "secondsort"
#

/*!40000 ALTER TABLE `secondsort` DISABLE KEYS */;
INSERT INTO `secondsort` VALUES (1,'皮装',1),(2,'童装',2),(3,'衬衫',3),(4,'休闲装',4),(5,'风衣',1),(6,'毛衣',1);
/*!40000 ALTER TABLE `secondsort` ENABLE KEYS */;

#
# Structure for table "size"
#

DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sizename` char(15) DEFAULT NULL,
  `productsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "size"
#


#
# Structure for table "sizename"
#

DROP TABLE IF EXISTS `sizename`;
CREATE TABLE `sizename` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "sizename"
#

INSERT INTO `sizename` VALUES (1,'L'),(2,'XL'),(3,'XXL');

#
# Structure for table "products_size"
#

DROP TABLE IF EXISTS `products_size`;
CREATE TABLE `products_size` (
  `productsid` int(11) NOT NULL,
  `sizeid` int(11) NOT NULL,
  PRIMARY KEY (`productsid`,`sizeid`),
  KEY `idx_products` (`productsid`),
  KEY `idx` (`sizeid`),
  CONSTRAINT `fk_products` FOREIGN KEY (`productsid`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_size` FOREIGN KEY (`sizeid`) REFERENCES `sizename` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "products_size"
#

INSERT INTO `products_size` VALUES (41,1),(41,2),(41,3),(42,2),(42,3),(43,1),(43,2);

#
# Structure for table "sort"
#

DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "sort"
#

INSERT INTO `sort` VALUES (1,'衬衫'),(2,'裤子'),(3,'外套'),(4,'其它');

#
# Structure for table "thirdsort"
#

DROP TABLE IF EXISTS `thirdsort`;
CREATE TABLE `thirdsort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortname` char(20) DEFAULT NULL,
  `secondsortid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "thirdsort"
#

/*!40000 ALTER TABLE `thirdsort` DISABLE KEYS */;
INSERT INTO `thirdsort` VALUES (1,'夹克衫',1),(2,'牛仔装',2),(3,'格子纹',3),(4,'连衣帽类',4);
/*!40000 ALTER TABLE `thirdsort` ENABLE KEYS */;

#
# Structure for table "user_products"
#

DROP TABLE IF EXISTS `user_products`;
CREATE TABLE `user_products` (
  `userid` int(11) NOT NULL,
  `productsid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`productsid`),
  KEY `idx_user` (`userid`),
  KEY `idx_u_products` (`productsid`),
  CONSTRAINT `fk_user` FOREIGN KEY (`userid`) REFERENCES `f_user` (`id`),
  CONSTRAINT `fk_u_products` FOREIGN KEY (`productsid`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user_products"
#

