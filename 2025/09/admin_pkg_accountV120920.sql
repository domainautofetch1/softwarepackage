/*
Navicat MySQL Data Transfer

Source Server         : 生产测试【47.242.251.131】
Source Server Version : 80043
Source Host           : 47.242.251.131:3336
Source Database       : data

Target Server Type    : MYSQL
Target Server Version : 80043
File Encoding         : 65001

Date: 2025-08-29 10:13:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_pkg_account
-- ----------------------------
DROP TABLE IF EXISTS `admin_pkg_account`;
CREATE TABLE `admin_pkg_account` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `store_id` bigint NOT NULL COMMENT '店铺ID（所属店）',
  `staff_id` bigint NOT NULL COMMENT '账号ID（用户/店主）',
  `user_type` tinyint NOT NULL COMMENT '用户类型：3=店主,4=店员,5=用户下单',
  `score_total` decimal(10,2) DEFAULT '0.00' COMMENT '积分账户-总积分',
  `score` decimal(10,2) DEFAULT '0.00' COMMENT '积分账户-当前积分(充值消费账户)',
  `commission_total` decimal(10,2) DEFAULT '0.00' COMMENT '佣金账户-总佣金',
  `commission` decimal(10,2) DEFAULT '0.00' COMMENT '佣金账户-当前佣金(提现，返现返獎账户)',
  `is_enabled` tinyint DEFAULT '1' COMMENT '是否启用：1=启用，0=禁用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_staff` (`staff_id`),
  KEY `idx_store` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户/店主账户主表：积分、佣金';

-- ----------------------------
-- Records of admin_pkg_account
-- ----------------------------
INSERT INTO `admin_pkg_account` VALUES ('2', '15', '15', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-15 17:25:18', '2025-07-16 18:56:46');
INSERT INTO `admin_pkg_account` VALUES ('3', '16', '16', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-15 17:37:16', '2025-07-16 18:56:44');
INSERT INTO `admin_pkg_account` VALUES ('4', '17', '10079', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-15 17:46:22', '2025-07-16 18:56:42');
INSERT INTO `admin_pkg_account` VALUES ('5', '18', '10080', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-15 17:56:45', '2025-07-16 18:56:41');
INSERT INTO `admin_pkg_account` VALUES ('6', '19', '10081', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-15 18:07:58', '2025-07-16 18:56:40');
INSERT INTO `admin_pkg_account` VALUES ('7', '20', '10082', '3', '1055.00', '1055.00', '1038.40', '1038.40', '1', '2025-07-15 18:18:13', '2025-08-12 11:19:39');
INSERT INTO `admin_pkg_account` VALUES ('8', '21', '10083', '3', '1580.50', '10209.40', '1137.56', '837.56', '1', '2025-07-16 09:18:19', '2025-08-12 11:03:23');
INSERT INTO `admin_pkg_account` VALUES ('9', '22', '10084', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-16 16:40:57', '2025-07-16 18:56:36');
INSERT INTO `admin_pkg_account` VALUES ('12', '101', '1002', '5', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-19 12:05:58', '2025-07-19 12:05:58');
INSERT INTO `admin_pkg_account` VALUES ('22', '32', '10094', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-20 19:20:09', '2025-07-20 19:20:09');
INSERT INTO `admin_pkg_account` VALUES ('23', '33', '10095', '3', '0.00', '538.00', '0.00', '0.00', '1', '2025-07-20 20:17:38', '2025-07-23 11:55:09');
INSERT INTO `admin_pkg_account` VALUES ('24', '34', '10099', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-07-25 18:02:26', '2025-07-25 18:02:26');
INSERT INTO `admin_pkg_account` VALUES ('25', '37', '10100', '5', '0.00', '0.00', '180.68', '180.68', '1', '2025-07-27 10:56:48', '2025-08-13 12:12:36');
INSERT INTO `admin_pkg_account` VALUES ('28', '37', '10103', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-05 14:22:25', '2025-08-05 14:22:25');
INSERT INTO `admin_pkg_account` VALUES ('29', '38', '10104', '3', '0.00', '0.00', '25.87', '25.87', '1', '2025-08-07 17:49:30', '2025-08-28 10:58:22');
INSERT INTO `admin_pkg_account` VALUES ('31', '40', '10106', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-12 15:22:59', '2025-08-12 15:22:59');
INSERT INTO `admin_pkg_account` VALUES ('32', '41', '10107', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-12 15:47:51', '2025-08-12 15:47:51');
INSERT INTO `admin_pkg_account` VALUES ('33', '42', '10108', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-12 15:56:04', '2025-08-12 15:56:04');
INSERT INTO `admin_pkg_account` VALUES ('35', '44', '10110', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-28 15:20:21', '2025-08-28 15:20:21');
INSERT INTO `admin_pkg_account` VALUES ('36', '44', '10111', '5', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-28 15:41:35', '2025-08-28 15:41:35');
INSERT INTO `admin_pkg_account` VALUES ('37', '45', '10112', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-28 15:56:43', '2025-08-28 15:56:43');
INSERT INTO `admin_pkg_account` VALUES ('38', '46', '10113', '3', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-28 15:57:13', '2025-08-28 15:57:13');
INSERT INTO `admin_pkg_account` VALUES ('40', '44', '10115', '5', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-28 18:27:30', '2025-08-28 18:27:30');
INSERT INTO `admin_pkg_account` VALUES ('41', '38', '10116', '5', '0.00', '0.00', '0.00', '0.00', '1', '2025-08-28 18:55:03', '2025-08-28 18:55:03');
