# Host: localhost  (Version: 5.5.45)
# Date: 2017-04-25 13:50:21
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "customer"
#

INSERT INTO `customer` VALUES (1,'小王','15534212123','大连','2017-04-11 11:33:42'),(2,'小李','15534212123','大连','2017-04-11 12:33:42'),(4,'大赵','1551456456','青岛','2017-04-19 11:16:30'),(5,'hjjjj','2342523','武汉','2017-04-20 10:46:25'),(6,'ajibax','23525255','mushin','2017-04-20 14:56:37');

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
  `chequenumber` char(50) DEFAULT '',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dealid` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

#
# Data for table "invoice"
#

INSERT INTO `invoice` VALUES (34,50,504.4,'附加信息 ',1,NULL,'2017-04-19 18:51:10',99);

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
  `thick` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (2,'这是产品名称。玻璃222。','产品介绍内容 ',12,'2017-04-19 11:32:56',3),(3,'这是产品名称。玻璃3。','这里是介绍',32,'2017-04-11 08:50:49',1),(20,'产品4','产品介绍内容 ',5,'2017-04-18 16:02:27',1),(21,'glass123123','产品介绍内容 ',25,'2017-04-20 13:46:09',1);

#
# Structure for table "product2"
#

DROP TABLE IF EXISTS `product2`;
CREATE TABLE `product2` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL DEFAULT '0',
  `product2long` int(11) DEFAULT '0',
  `product2width` int(11) DEFAULT '0',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dealid` int(11) DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `product2thick` int(11) DEFAULT '0',
  `price` double DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `product2toproduct_fk` (`productid`),
  CONSTRAINT `product2toproduct_fk` FOREIGN KEY (`productid`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

#
# Data for table "product2"
#

INSERT INTO `product2` VALUES (140,3,3,3,'2017-04-19 18:50:27',99,9,1,32,288),(141,2,4,5,'2017-04-19 18:50:27',99,20,3,12,240),(142,3,3,4,'2017-04-20 10:42:27',100,12,1,32,384);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "saleperson"
#

INSERT INTO `saleperson` VALUES (5,'salepersonnamenamename','23235234','saleperson addressaddress','2017-04-11 16:38:24'),(8,'gergheee','5565673234','erhreheryer','2017-04-19 11:36:51'),(11,'fdhfgh','hjghjhjk','kyukytuk','2017-04-12 08:38:10'),(12,'sssss','234234','四川','2017-04-20 13:45:21');

#
# Structure for table "deal"
#

DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT '0',
  `ispaid` int(1) DEFAULT '0' COMMENT '0为支付未完成1为支付已完成',
  `iscuttail100` int(1) NOT NULL DEFAULT '0',
  `iscuttail1000` int(1) NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '1',
  `vat` double DEFAULT '0',
  `subtotal` double DEFAULT '0',
  `total` double DEFAULT '0',
  `note` text,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `salepersonid` int(11) DEFAULT '0',
  `balance` double DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `dealtocustomer` (`customerid`),
  KEY `dealtosaleperson` (`salepersonid`),
  CONSTRAINT `dealtocustomer` FOREIGN KEY (`customerid`) REFERENCES `customer` (`Id`),
  CONSTRAINT `dealtosaleperson` FOREIGN KEY (`salepersonid`) REFERENCES `saleperson` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

#
# Data for table "deal"
#

INSERT INTO `deal` VALUES (99,2,0,0,0,0,26.4,528,554.4,'添加信息 ','2017-04-19 18:50:27',5,504.4),(100,2,0,0,0,0,19.2,384,403.2,'添加信息 ','2017-04-20 10:42:27',12,403.2);

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
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `phone` char(25) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `description` text,
  `regtime` datetime DEFAULT NULL,
  `issuper` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (2,'rrr中文','123','dfgrerw@163.com',1,'123423223','上海','个人介绍内容 aaa','2017-04-19 15:24:33',0),(3,'sss中文','123','drdeefee@163.com',1,'23443345','北京','个人介绍内容 geeref','2017-04-19 15:25:13',0),(4,'ggg中文','123','eerfef@163.com',0,'34234523423','深圳','个人介绍内容 fgdsg','2017-04-19 15:26:03',0),(5,'www','123','hgfdgdf@163.com',1,'45234234','杭州','dfdddfdfe','2017-04-19 15:30:31',1);

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

