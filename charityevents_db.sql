/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : charityevents_db

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 28/09/2025 19:55:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `organizer_id` int NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `target_price` decimal(10, 2) NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organizer`(`organizer_id` ASC) USING BTREE,
  CONSTRAINT `organizer` FOREIGN KEY (`organizer_id`) REFERENCES `organization` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES (1, '爱心助学计划', '2025-06-15 09:00:00', '教育资助', 1, 0.00, 1000000.00, '为山区贫困学生提供学费、书本费和营养餐补助，帮助孩子们完成学业梦想', '已完成');
INSERT INTO `events` VALUES (2, '温暖冬日行动', '2025-11-20 10:00:00', '老人关怀', 2, 0.00, 300000.00, '为社区孤寡老人提供冬季衣物、取暖设备和日常用品，让老人们温暖过冬', '进行中');
INSERT INTO `events` VALUES (3, '医疗救助基金', '2025-07-11 00:00:00', '医疗救助', 3, 0.00, 1500000.00, '为贫困家庭的重病患者提供手术和治疗费用支持，挽救生命守护健康', '已完成');
INSERT INTO `events` VALUES (4, '环保公益行', '2025-09-28 00:00:00', '环境保护', 4, 0.00, 500000.00, '组织志愿者进行垃圾分类、植树造林等环保活动，共建绿色家园', '进行中');
INSERT INTO `events` VALUES (5, '灾区紧急救援', '2025-10-07 00:00:00', '灾害救援', 5, 0.00, 2000000.00, '为近期洪涝灾害受灾群众提供食品、饮用水和临时住所，紧急救助受灾同胞', '进行中');
INSERT INTO `events` VALUES (6, '爱心图书馆', '2025-11-28 00:00:00', '教育资助', 1, 0.00, 800000.00, '在偏远地区学校建立爱心图书室，提供图书和学习资料，丰富孩子们的课余生活', '进行中');
INSERT INTO `events` VALUES (7, '残疾人士就业培训', '2025-10-24 00:00:00', '就业援助', 6, 0.00, 600000.00, '为残疾人士提供职业技能培训，帮助他们获得就业机会，实现自我价值', '进行中');
INSERT INTO `events` VALUES (8, '流浪动物救助', '2025-11-27 00:00:00', '动物保护', 7, 0.00, 400000.00, '救助流浪猫狗，提供医疗、绝育和领养服务，给流浪动物一个温暖的家', '进行中');

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES (1, '爱心教育基金会', '123@qq.com');
INSERT INTO `organization` VALUES (2, '温暖老人关怀中心', '123@qq.com');
INSERT INTO `organization` VALUES (3, '健康医疗救助协会', '123@qq.com');
INSERT INTO `organization` VALUES (4, '绿色环保联盟', '123@qq.com');
INSERT INTO `organization` VALUES (5, '紧急救援基金会', '123@qq.com');
INSERT INTO `organization` VALUES (6, '希望就业援助中心', '123@qq.com');
INSERT INTO `organization` VALUES (7, '动物保护协会', '123@qq.com');
INSERT INTO `organization` VALUES (8, '儿童福利基金会', '123@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
