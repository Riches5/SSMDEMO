/*
 Navicat Premium Data Transfer

 Source Server         : jeesite
 Source Server Type    : MySQL
 Source Server Version : 50715
 Source Host           : localhost:3306
 Source Schema         : life_info_service

 Target Server Type    : MySQL
 Target Server Version : 50715
 File Encoding         : 65001

 Date: 24/09/2019 17:57:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for info_classification
-- ----------------------------
DROP TABLE IF EXISTS `info_classification`;
CREATE TABLE `info_classification`  (
  `classification_id` int(3) NOT NULL AUTO_INCREMENT COMMENT '信息分类id',
  `classification_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '信息分类名称',
  `classification_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '信息分类描述',
  `classification_level` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '信息分类级别',
  PRIMARY KEY (`classification_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '信息分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for info_member
-- ----------------------------
DROP TABLE IF EXISTS `info_member`;
CREATE TABLE `info_member`  (
  `member_id` int(3) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `member_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员账号',
  `member_password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员密码',
  `member_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `member_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员手机号',
  `member_address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员地址',
  PRIMARY KEY (`member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for info_release
-- ----------------------------
DROP TABLE IF EXISTS `info_release`;
CREATE TABLE `info_release`  (
  `release_id` int(3) NOT NULL AUTO_INCREMENT COMMENT '信息发布id',
  `user_id` int(3) NULL DEFAULT NULL COMMENT '发布者id',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布者名称',
  `release_content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布内容',
  `release_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `release_review` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布审核（0:已通过；1:未通过）',
  PRIMARY KEY (`release_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '信息发布管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for info_review
-- ----------------------------
DROP TABLE IF EXISTS `info_review`;
CREATE TABLE `info_review`  (
  `review_id` int(3) NOT NULL COMMENT '评论id',
  `user_id` int(3) NULL DEFAULT NULL COMMENT '评论者id',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论者名称',
  `review_content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `review_time` datetime(0) NULL DEFAULT NULL COMMENT '评论时间',
  `comment_review` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论审核（0:已通过；1未通过）',
  PRIMARY KEY (`review_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '信息评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for info_user
-- ----------------------------
DROP TABLE IF EXISTS `info_user`;
CREATE TABLE `info_user`  (
  `user_id` int(3) NOT NULL COMMENT '用户id',
  `user_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `user_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户地址',
  `user_sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户性别',
  `is_member` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否会员（0:是；1:否）',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
