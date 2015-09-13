/*
Navicat MySQL Data Transfer

Source Server         : adwise
Source Server Version : 50514
Source Host           : localhost:3306
Source Database       : pariseba

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2015-09-13 17:31:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `agent`
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of agent
-- ----------------------------
INSERT INTO `agent` VALUES ('1', 'Agent1', '67868778', 'hjkhkj', 'ghhj@gmail.com');

-- ----------------------------
-- Table structure for `booking`
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `booking_date` datetime NOT NULL,
  `pname` varchar(250) NOT NULL,
  `pgender` varchar(6) DEFAULT NULL,
  `page` int(3) DEFAULT NULL,
  `pcontactno` varchar(15) DEFAULT NULL,
  `paddress` varchar(250) DEFAULT NULL,
  `pemail` varchar(250) DEFAULT '',
  `totalamount` float(8,2) NOT NULL DEFAULT '0.00',
  `discount_amount` float(8,2) NOT NULL DEFAULT '0.00',
  `advance_amount` float(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `fk_dr` (`doctor_id`),
  KEY `fk_test` (`test_id`),
  KEY `fk_agent` (`agent_id`),
  CONSTRAINT `fk_agent` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`id`),
  CONSTRAINT `fk_dr` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
  CONSTRAINT `fk_test` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES ('1', '1', '2', '1', '2015-09-09 17:29:57', 'asdqsd', 'male', '22', '2342342', 'rftyfyg', 'fgfgh@gmail.com', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `contactno` varchar(15) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `degree` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('1', 'Dr.XYX', 'male', '2015-09-07', 'hjkh', '67879879879', 'fdfdfg@gmail.com', 'MBBS,MD');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `code` varchar(20) NOT NULL,
  `cost` float(5,2) NOT NULL,
  `duration` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'Test1', 'T1', '200.00', '2');
INSERT INTO `test` VALUES ('2', 'Test2', 'T2', '300.00', '6');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isadmin` int(1) NOT NULL DEFAULT '0',
  `isactive` int(1) NOT NULL DEFAULT '0',
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', 'admin', '1234');
