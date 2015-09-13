/*
Navicat MySQL Data Transfer

Source Server         : adwise
Source Server Version : 50514
Source Host           : localhost:3306
Source Database       : pariseba

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2015-09-13 16:23:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `isadmin` int(1) NOT NULL DEFAULT '0',
  `isactive` int(1) NOT NULL DEFAULT '0',
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '0', '0', 'dfgdg', 'uyuiyiu');
INSERT INTO `user` VALUES ('3', '0', '0', 'joi', ',n,kn');
