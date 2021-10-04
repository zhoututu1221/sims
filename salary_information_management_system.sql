DROP DATABASE IF EXISTS `salary_information_management_system`;
CREATE DATABASE `salary_information_management_system`;
USE `salary_information_management_system`;

-- ----------------------------
-- Table structure for admin_
-- ----------------------------
DROP TABLE IF EXISTS `admin_`;
CREATE TABLE `admin_` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`,`admin_name`)
);

-- ----------------------------
-- Records of admin_
-- ----------------------------
INSERT INTO `admin_` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for notice_
-- ----------------------------
DROP TABLE IF EXISTS `notice_`;
CREATE TABLE `notice_` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_userId` varchar(255) NOT NULL,
  `notice_content` text,
  `notice_time` varchar(255) DEFAULT NULL,
  `notice_isRead` varchar(255) DEFAULT 'false',
  PRIMARY KEY (`notice_id`)
);

-- ----------------------------
-- Records of notice_
-- ----------------------------
INSERT INTO `notice_` VALUES ('1', '1', '通知测试', '2020-03-09 12:20:21', 'true');
INSERT INTO `notice_` VALUES ('2', '1', '通知测试1', '2020-03-09 12:21:21', 'true');
INSERT INTO `notice_` VALUES ('3', '1', '通知测试2', '2020-03-10 12:21:20', 'true');

-- ----------------------------
-- Table structure for sector_
-- ----------------------------
DROP TABLE IF EXISTS `sector_`;
CREATE TABLE `sector_` (
  `sector_name` varchar(255) NOT NULL,
  PRIMARY KEY (`sector_name`)
);

-- ----------------------------
-- Records of sector_
-- ----------------------------
INSERT INTO `sector_` VALUES ('技术部');
INSERT INTO `sector_` VALUES ('销售部');

-- ----------------------------
-- Table structure for user_
-- ----------------------------
DROP TABLE IF EXISTS `user_`;
CREATE TABLE `user_` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_password` varchar(255) DEFAULT NULL,
  `user_picture` text,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sector` varchar(255) DEFAULT NULL,
  `user_named` varchar(255) DEFAULT NULL,
  `user_time` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
);

-- ----------------------------
-- Records of user_
-- ----------------------------
INSERT INTO `user_` VALUES ('1', '123456', null, '张三', '技术部', '技术总监', '2020-03-09 12:20:21', '18899999990', '女');
INSERT INTO `user_` VALUES ('6', '123456', null, '测试账号1', '技术部', '销售经理', '2020-03-12 14:28:48', '13888888888', '女');

-- ----------------------------
-- Table structure for wage_
-- ----------------------------
DROP TABLE IF EXISTS `wage_`;
CREATE TABLE `wage_` (
  `wage_id` int(11) NOT NULL AUTO_INCREMENT,
  `wage_userId` varchar(255) NOT NULL,
  `wage_time` varchar(255) DEFAULT NULL,
  `wage_basic` varchar(255) DEFAULT NULL,
  `wage_bonus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wage_id`)
);

-- ----------------------------
-- Records of wage_
-- ----------------------------
INSERT INTO `wage_` VALUES ('1', '1', '2020-01-20 12:12:12', '3000', '500');
INSERT INTO `wage_` VALUES ('2', '1', '2020-03-10 21:43:19', '2300', '300');
INSERT INTO `wage_` VALUES ('3', '1', '2019-03-10 21:43:19', '2300', '300');
