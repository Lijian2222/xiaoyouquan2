/*
 Navicat Premium Data Transfer

 Source Server         : mysql.3306
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : 192.168.206.130:3306
 Source Schema         : xiaoyouquan

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 24/03/2025 18:34:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `publish_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `reply_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '0表示concern关注的是用户id,1表示concern关注的是岗位id',
  `concerned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES ('1', '1', '0', '2');
INSERT INTO `favorite` VALUES ('2', '1', '0', '3');
INSERT INTO `favorite` VALUES ('3', '1', '0', '4');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `job_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `position` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作地点',
  `nature` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '企业性质',
  `academic_acquired` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历要求',
  `experience_acquired` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '经验要求',
  `job_belonging` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属行业',
  `publish_time` timestamp NULL DEFAULT NULL,
  `salary_start` int NULL DEFAULT NULL,
  `salary_end` int NULL DEFAULT NULL,
  `salary_nums` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (1, 1, '量化金融开发工程师', NULL, '深圳', '私企', '本科', '3-5年', '互联网', '2025-02-07 15:00:55', 20000, 30000, 14);
INSERT INTO `job` VALUES (2, 1, '大数据开发', NULL, '杭州', '私企', '本科', '1-3年', '互联网', '2025-01-31 15:00:59', 15000, 20000, 16);
INSERT INTO `job` VALUES (3, 2, '软件开发', NULL, '上海', '国企', '本科', '应届生', '互联网', '2025-02-18 15:01:04', 10000, 15000, 12);
INSERT INTO `job` VALUES (4, 2, '平面设计', NULL, '惠州', '私企', '专科', '不限', '工程建造', '2025-02-03 15:01:07', 8000, 10000, 13);
INSERT INTO `job` VALUES (5, 3, '前台', NULL, '全国', '私企', '专科', '不限', '服务业', '2025-02-02 15:01:18', 4000, 6000, 12);
INSERT INTO `job` VALUES (6, 5, '密码学大学教师', '国防科技大学密码研究中心招收大学教师（包括定向培养低年级博士生）、博士生、硕士生，诚邀海内外英才加盟！\n中心位于湖南长沙，主要研究方向包括\n1.密码基础理论\n2.下一代无线网络安全\n3.安全芯片\n4.安全测评\n5.数字化与人工智能\n正在上述研究方向相关专业学习研究、有志在上述方向开展工作的其他理工类专业均可报名联系。\n联系方式（微信同号）：\n袁老师 18810335627\n马老师 15574986142\n刘老师 13467628370\n单位简介、待遇详情等参见下图', '长沙', '国企', '硕士', '不限', '教育', '2025-02-17 18:31:39', 15000, 40000, 12);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `send_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `recv_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int NOT NULL,
  `publish_time` datetime NOT NULL,
  `good_nums` int NOT NULL,
  `view_nums` int NOT NULL,
  `is_deleted` int NOT NULL,
  `comment_nums` int NOT NULL,
  `retweet` int NOT NULL COMMENT '转发量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1, '睡不着了,哥们国企开出6*12...', 1, '2024-12-17 15:21:34', 124, 1001, 0, 22, 0);
INSERT INTO `post` VALUES (2, '人人都在说大厂,有没有值得去的中小厂推荐?', 2, '2024-12-10 15:22:18', 232, 2000, 0, 255, 0);
INSERT INTO `post` VALUES (3, '家人们,现在大环境咋样了啊?', 3, '2024-12-13 19:23:01', 222, 50000, 0, 45, 0);
INSERT INTO `post` VALUES (4, '华子给我发offer了', 4, '2024-12-14 08:23:59', 670, 3523, 0, 22, 0);
INSERT INTO `post` VALUES (5, '我是IDEA添加的数据', 1, '2024-12-18 15:03:28', 11, 2, 0, 0, 0);

-- ----------------------------
-- Table structure for post_good
-- ----------------------------
DROP TABLE IF EXISTS `post_good`;
CREATE TABLE `post_good`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `post_id` int NULL DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '0表示未删除，1表示已经删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_good
-- ----------------------------
INSERT INTO `post_good` VALUES (1, 1, 1, 0);
INSERT INTO `post_good` VALUES (2, 1, 3, 0);
INSERT INTO `post_good` VALUES (3, 1, 5, 0);
INSERT INTO `post_good` VALUES (5, 1, 2, 1);
INSERT INTO `post_good` VALUES (6, 1, 4, 0);
INSERT INTO `post_good` VALUES (12, 1, NULL, 0);
INSERT INTO `post_good` VALUES (13, 1, NULL, 0);
INSERT INTO `post_good` VALUES (14, 1, NULL, 0);
INSERT INTO `post_good` VALUES (15, 1, NULL, 0);
INSERT INTO `post_good` VALUES (16, 1, NULL, 0);
INSERT INTO `post_good` VALUES (17, 1, NULL, 0);
INSERT INTO `post_good` VALUES (18, 1, NULL, 0);
INSERT INTO `post_good` VALUES (19, 1, NULL, 0);
INSERT INTO `post_good` VALUES (20, 1, NULL, 0);
INSERT INTO `post_good` VALUES (21, 1, NULL, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` int NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `campus1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `campus2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `campus3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `campus4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `campus5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `campus6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `academic_degree1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `academic_degree2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `academic_degree3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `academic_degree4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `academic_degree5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `academic_degree6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '123456',
  `is_deleted` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '邪恶栀子花', 0, 18, '如果迷茫，请远离人群', 0, '哈尔滨工业大学', '郑州大学', NULL, NULL, NULL, NULL, '本科', '硕士', NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (2, '大朗该喝药了', 0, 23, ' 平安喜乐', 0, '哈尔滨工业大学', NULL, NULL, NULL, NULL, NULL, '本科', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (3, 'QiQi', 0, 24, 'If you feel lost, stay away from the crowd', 0, '哈尔滨工业大学', NULL, NULL, NULL, NULL, NULL, '本科', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (4, '熊大爱睡觉', 1, 24, 'do not say no', 0, '郑州大学', '哈尔滨工业大学', '国防科技大学', NULL, NULL, NULL, '本科', '本科', '硕士', NULL, NULL, NULL, '../../static/userHeader1.png', '18639552024', '123456', 0);
INSERT INTO `user` VALUES (5, '袁老师', 1, 42, '暂无', 0, '国防科技大学', NULL, NULL, NULL, NULL, NULL, '本科', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);

SET FOREIGN_KEY_CHECKS = 1;
