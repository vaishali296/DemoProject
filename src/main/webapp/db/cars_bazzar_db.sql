/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : cars_bazzar_db
Target Host     : localhost:3306
Target Database : cars_bazzar_db
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cars_tbl
-- ----------------------------
DROP TABLE IF EXISTS `cars_tbl`;
CREATE TABLE `cars_tbl` (
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `wheel` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cars_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for logins_tbl
-- ----------------------------
DROP TABLE IF EXISTS `logins_tbl`;
CREATE TABLE `logins_tbl` (
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(40) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `doe` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logins_tbl
-- ----------------------------
INSERT INTO `logins_tbl` VALUES ('dave', 'test', 'user', 'active', '2017-02-05 12:40:11');
INSERT INTO `logins_tbl` VALUES ('logix', 'test', 'admin', 'active', '2017-02-05 12:40:11');
INSERT INTO `logins_tbl` VALUES ('ravi', 'gupta', 'ceo', 'active', '2017-02-12 12:39:34');

-- ----------------------------
-- Table structure for mobiles_tbl
-- ----------------------------
DROP TABLE IF EXISTS `mobiles_tbl`;
CREATE TABLE `mobiles_tbl` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `vendor` varchar(30) DEFAULT NULL,
  `camera` varchar(4) DEFAULT NULL,
  `doe` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mobiles_tbl
-- ----------------------------
INSERT INTO `mobiles_tbl` VALUES ('1', 'OPOP', 'white', '22', 'samsung', '12MB', '2017-02-26 11:39:12');
INSERT INTO `mobiles_tbl` VALUES ('2', 'Jacker', 'red', '12', 'GIO', '10MB', '2017-02-26 11:40:00');
INSERT INTO `mobiles_tbl` VALUES ('3', 'OPE', 'silver', '222', 'HTC', '34MB', '2017-02-26 11:40:23');
