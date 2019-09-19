/*
Navicat MySQL Data Transfer

Source Server         : work
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-09-19 10:21:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `marketingci`
-- ----------------------------
DROP TABLE IF EXISTS `marketingci`;
CREATE TABLE `marketingci` (
  `marketingci_cname` varchar(32) DEFAULT NULL,
  `marketingci_outline` varchar(32) DEFAULT NULL,
  `marketingci_contacts` varchar(32) DEFAULT NULL,
  `marketingci_tel` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of marketingci
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userinfo_name` varchar(32) DEFAULT NULL,
  `userinfo_pwd` varchar(16) DEFAULT NULL,
  `userinfo_id` varchar(16) NOT NULL,
  PRIMARY KEY (`userinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
