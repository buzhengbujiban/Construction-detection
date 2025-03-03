/*
 Navicat Premium Data Transfer

 Source Server         : aaa
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : dashboard_data

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 03/03/2025 23:32:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for echart1
-- ----------------------------
DROP TABLE IF EXISTS `echart1`;
CREATE TABLE `echart1`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart1
-- ----------------------------
INSERT INTO `echart1` VALUES (1, '钢筋班', 47);
INSERT INTO `echart1` VALUES (2, '混凝土班', 52);
INSERT INTO `echart1` VALUES (3, '房地产销售班', 90);
INSERT INTO `echart1` VALUES (4, '木工', 84);
INSERT INTO `echart1` VALUES (5, '水电工', 99);
INSERT INTO `echart1` VALUES (6, '放线工', 37);
INSERT INTO `echart1` VALUES (7, '抹灰工', 2);

-- ----------------------------
-- Table structure for echart2
-- ----------------------------
DROP TABLE IF EXISTS `echart2`;
CREATE TABLE `echart2`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart2
-- ----------------------------
INSERT INTO `echart2` VALUES (1, '张江', 47);
INSERT INTO `echart2` VALUES (2, '阮大师', 52);
INSERT INTO `echart2` VALUES (3, '孔祥华', 90);
INSERT INTO `echart2` VALUES (4, '季候', 84);
INSERT INTO `echart2` VALUES (5, '贝看', 99);
INSERT INTO `echart2` VALUES (6, '童泰', 37);
INSERT INTO `echart2` VALUES (7, '安鸿', 150);

-- ----------------------------
-- Table structure for echart4
-- ----------------------------
DROP TABLE IF EXISTS `echart4`;
CREATE TABLE `echart4`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` json NULL,
  `xAxis` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart4
-- ----------------------------
INSERT INTO `echart4` VALUES (1, '进度', '[3, 4, 3, 4, 3, 4, 3, 6, 2, 4, 2, 4, 3, 4, 3, 4, 3, 4, 3, 6, 2, 4, 4]', '[\"01\", \"02\", \"03\", \"04\", \"05\", \"06\", \"07\", \"08\", \"09\", \"11\", \"12\", \"13\", \"14\", \"15\", \"16\", \"17\", \"18\", \"19\", \"20\", \"21\", \"22\", \"23\", \"24\"]');
INSERT INTO `echart4` VALUES (2, '质量', '[5, 3, 5, 6, 1, 5, 3, 5, 6, 4, 6, 4, 8, 3, 5, 6, 1, 5, 3, 7, 2, 5, 8]', '[\"01\", \"02\", \"03\", \"04\", \"05\", \"06\", \"07\", \"08\", \"09\", \"11\", \"12\", \"13\", \"14\", \"15\", \"16\", \"17\", \"18\", \"19\", \"20\", \"21\", \"22\", \"23\", \"24\"]');

-- ----------------------------
-- Table structure for echart5
-- ----------------------------
DROP TABLE IF EXISTS `echart5`;
CREATE TABLE `echart5`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart5
-- ----------------------------
INSERT INTO `echart5` VALUES (1, '电工', 2);
INSERT INTO `echart5` VALUES (2, '木工', 3);
INSERT INTO `echart5` VALUES (3, '钢筋工', 3);
INSERT INTO `echart5` VALUES (4, '水工', 9);
INSERT INTO `echart5` VALUES (5, '搅拌工', 15);
INSERT INTO `echart5` VALUES (6, '向工', 18);
INSERT INTO `echart5` VALUES (7, '腻子工', 20);
INSERT INTO `echart5` VALUES (8, '灰工', 13);

-- ----------------------------
-- Table structure for echart6
-- ----------------------------
DROP TABLE IF EXISTS `echart6`;
CREATE TABLE `echart6`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` int(0) NULL DEFAULT NULL,
  `value2` int(0) NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `radius` json NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echart6
-- ----------------------------
INSERT INTO `echart6` VALUES (1, '场地放线', 80, 20, '01', '[\"59%\", \"70%\"]');
INSERT INTO `echart6` VALUES (2, '给水测量', 70, 30, '02', '[\"49%\", \"60%\"]');
INSERT INTO `echart6` VALUES (3, '工地绑扎', 65, 35, '03', '[\"39%\", \"50%\"]');
INSERT INTO `echart6` VALUES (4, '养护', 60, 40, '04', '[\"29%\", \"40%\"]');
INSERT INTO `echart6` VALUES (5, '砌筑', 50, 50, '05', '[\"20%\", \"30%\"]');

-- ----------------------------
-- Table structure for echarts3_1
-- ----------------------------
DROP TABLE IF EXISTS `echarts3_1`;
CREATE TABLE `echarts3_1`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echarts3_1
-- ----------------------------
INSERT INTO `echarts3_1` VALUES (1, '20db以下', 47);
INSERT INTO `echarts3_1` VALUES (2, '50-59', 52);
INSERT INTO `echarts3_1` VALUES (3, '30-39岁', 90);
INSERT INTO `echarts3_1` VALUES (4, '40-49岁', 84);
INSERT INTO `echarts3_1` VALUES (5, '50岁以上', 99);

-- ----------------------------
-- Table structure for echarts3_2
-- ----------------------------
DROP TABLE IF EXISTS `echarts3_2`;
CREATE TABLE `echarts3_2`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echarts3_2
-- ----------------------------
INSERT INTO `echarts3_2` VALUES (1, '流水线1', 10);
INSERT INTO `echarts3_2` VALUES (2, '流水线2', 20);
INSERT INTO `echarts3_2` VALUES (3, '并行线1', 20);
INSERT INTO `echarts3_2` VALUES (4, '并行线2', 30);
INSERT INTO `echarts3_2` VALUES (5, '主干线1', 40);
INSERT INTO `echarts3_2` VALUES (6, '主干线2', 50);

-- ----------------------------
-- Table structure for echarts3_3
-- ----------------------------
DROP TABLE IF EXISTS `echarts3_3`;
CREATE TABLE `echarts3_3`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of echarts3_3
-- ----------------------------
INSERT INTO `echarts3_3` VALUES (1, '堆场', 4);
INSERT INTO `echarts3_3` VALUES (2, '主体结构', 5);
INSERT INTO `echarts3_3` VALUES (3, '土方开挖', 9);
INSERT INTO `echarts3_3` VALUES (4, '人员工棚', 8);
INSERT INTO `echarts3_3` VALUES (5, '技术安防', 9);
INSERT INTO `echarts3_3` VALUES (6, '通道', 9);

-- ----------------------------
-- Table structure for map_1
-- ----------------------------
DROP TABLE IF EXISTS `map_1`;
CREATE TABLE `map_1`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_1
-- ----------------------------
INSERT INTO `map_1` VALUES (1, '重要性甲级', 239);
INSERT INTO `map_1` VALUES (2, '二等功', 231);
INSERT INTO `map_1` VALUES (3, '焊接质量验证', 203);

SET FOREIGN_KEY_CHECKS = 1;
