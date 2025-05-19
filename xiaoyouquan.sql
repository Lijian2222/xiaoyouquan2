/*
 Navicat Premium Data Transfer

 Source Server         : ali
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : 39.107.221.247:3306
 Source Schema         : xiaoyouquan

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 19/05/2025 19:45:05
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for deliver
-- ----------------------------
DROP TABLE IF EXISTS `deliver`;
CREATE TABLE `deliver`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL,
  `job_id` bigint NULL DEFAULT NULL,
  `is_deleted` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deliver
-- ----------------------------
INSERT INTO `deliver` VALUES (1, 4, 1, 0);
INSERT INTO `deliver` VALUES (2, 4, 2, 0);
INSERT INTO `deliver` VALUES (3, 4, 3, 0);
INSERT INTO `deliver` VALUES (4, 4, 4, 0);
INSERT INTO `deliver` VALUES (5, 4, 5, 0);
INSERT INTO `deliver` VALUES (6, 4, 6, 0);
INSERT INTO `deliver` VALUES (7, 4, 7, 0);
INSERT INTO `deliver` VALUES (8, 4, 8, 0);
INSERT INTO `deliver` VALUES (9, -1, 1, 0);

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL COMMENT '0表示concern关注的是用户id,1表示concern关注的是岗位id',
  `concerned` int NULL DEFAULT NULL,
  `is_deleted` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES (1, 1, 1, 2, 0);
INSERT INTO `favorite` VALUES (2, 1, 1, 3, 0);
INSERT INTO `favorite` VALUES (3, 1, 1, 4, 0);
INSERT INTO `favorite` VALUES (4, 4, 1, 1, 1);
INSERT INTO `favorite` VALUES (5, 4, 1, 2, 1);
INSERT INTO `favorite` VALUES (6, 4, 1, 3, 1);
INSERT INTO `favorite` VALUES (7, 4, 1, 4, 1);
INSERT INTO `favorite` VALUES (8, 4, 1, 5, 1);
INSERT INTO `favorite` VALUES (9, 4, 1, 6, 0);
INSERT INTO `favorite` VALUES (10, 4, 1, 7, 0);
INSERT INTO `favorite` VALUES (11, 4, 1, 8, 1);
INSERT INTO `favorite` VALUES (13, 1, 1, 5, 0);
INSERT INTO `favorite` VALUES (14, 4, 1, 2, 0);
INSERT INTO `favorite` VALUES (15, 4, 1, 4, 0);
INSERT INTO `favorite` VALUES (16, -1, 1, 7, 1);

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `is_deleted` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (1, 1, '量化金融开发工程师', '这里是测试数据', '深圳', '私企', '本科', '3-5年', '互联网', '2025-02-07 15:00:55', 20000, 30000, 14, 0);
INSERT INTO `job` VALUES (2, 1, '大数据开发', '这里是测试数据', '杭州', '私企', '本科', '1-3年', '互联网', '2025-01-31 15:00:59', 15000, 20000, 16, 0);
INSERT INTO `job` VALUES (3, 2, '软件开发', '这里是测试数据', '上海', '国企', '本科', '应届生', '互联网', '2025-02-18 15:01:04', 10000, 15000, 12, 0);
INSERT INTO `job` VALUES (4, 2, '平面设计', '这里是测试数据', '惠州', '私企', '专科', '不限', '工程建造', '2025-02-03 15:01:07', 8000, 10000, 13, 0);
INSERT INTO `job` VALUES (5, 3, '前台', '这里是测试数据', '全国', '私企', '专科', '不限', '服务业', '2025-02-02 15:01:18', 4000, 6000, 12, 0);
INSERT INTO `job` VALUES (6, 5, '密码学大学教师', '国防科技大学密码研究中心招收大学教师（包括定向培养低年级博士生）、博士生、硕士生，诚邀海内外英才加盟！\n中心位于湖南长沙，主要研究方向包括\n1.密码基础理论\n2.下一代无线网络安全\n3.安全芯片\n4.安全测评\n5.数字化与人工智能\n正在上述研究方向相关专业学习研究、有志在上述方向开展工作的其他理工类专业均可报名联系。\n联系方式（微信同号）：\n袁老师 18810335627\n马老师 15574986142\n刘老师 13467628370\n单位简介、待遇详情等参见下图', '长沙', '国企', '硕士', '不限', '教育', '2025-02-17 18:31:39', 15000, 40000, 12, 0);
INSERT INTO `job` VALUES (7, 4, '开发工程师', '这里是微信开发者工具的测试', '深圳', '私企', '本科', '不限', '互联网', '2025-05-14 17:29:28', 1000, 5000, 12, 0);
INSERT INTO `job` VALUES (8, 4, '测试岗', '这里是测试数据', '北京', '国企', '本科', '不限', '互联网', '2025-05-17 17:29:24', 1000, 5000, 12, 0);

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int NOT NULL,
  `publish_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `good_nums` int NULL DEFAULT 0,
  `view_nums` int NULL DEFAULT 0,
  `is_deleted` int NULL DEFAULT 0,
  `comment_nums` int NULL DEFAULT 0,
  `retweet` int NULL DEFAULT 0 COMMENT '转发量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1, '睡不着了,哥们国企开出6*12...', 1, '2024-12-17 15:21:34', 124, 1001, 0, 22, 0);
INSERT INTO `post` VALUES (2, '人人都在说大厂,有没有值得去的中小厂推荐?', 2, '2024-12-10 15:22:18', 232, 2000, 0, 255, 0);
INSERT INTO `post` VALUES (3, '家人们,现在大环境咋样了啊?', 3, '2024-12-13 19:23:01', 222, 50000, 0, 45, 0);
INSERT INTO `post` VALUES (4, '华子给我发offer了', 4, '2025-05-17 14:45:16', 670, 3525, 0, 22, 0);
INSERT INTO `post` VALUES (5, '我是IDEA添加的数据', 1, '2024-12-18 15:03:28', 11, 4, 0, 0, 0);
INSERT INTO `post` VALUES (6, '有一说一，今年这春季实习真的卷，不仅是来的早，而且大家好像都很在意的样子。经历了第一波校招的毒打，现在已经哀嚎一片。', 6, '2025-04-10 23:24:10', 33, 22, 0, 55, 0);
INSERT INTO `post` VALUES (7, '实习经历不是给HR看的，你只要写了实习经历，HR是不对你实习经历进行过滤的，除非你不会写写的非常敷衍。', 3, '2025-05-12 12:36:25', 67, 68, 0, 0, 0);
INSERT INTO `post` VALUES (8, '实习，不要迷恋大厂光环，与其在大厂打杂不如去中小厂找一个业务结合紧密的项目，干点实事', 7, '2025-04-02 23:27:38', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (9, '大厂就像可口可乐，它只是在货架上放着都没到你手里你就知道它味道错不了。', 7, '2025-04-11 23:29:18', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (10, '小厂就像杂牌小甜水，可能给你意想不到的惊喜，但也有概率给你难以预料的惊吓。', 7, '2025-04-05 23:30:32', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (11, '真心建议大家海投，把面试当成升级打怪，面一个挂一个后我也是练就超厚脸皮法！！！', 8, '2025-04-17 23:31:50', 2, 2, 0, 0, 0);
INSERT INTO `post` VALUES (12, '求求各位hr看看我吧', 4, '2025-05-12 12:37:27', 1, 5, 0, 0, 0);
INSERT INTO `post` VALUES (13, '毁灭吧！真的毕业即失业了。还是没有进展，我真的哭了', 9, '2025-04-10 23:35:22', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (14, '学Java的下场，学吧，这就是下场。', 9, '2025-04-09 23:36:30', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (15, '目前投了很多大厂，就是毫无头绪的海投，感觉作为一个双非工科女真的完蛋了。', 10, '2025-05-12 12:33:35', 0, 4, 0, 0, 0);
INSERT INTO `post` VALUES (16, '大一大二的暑假全用来打暑假工了，做的是活动摄影师的工作，完全没想到可以找专业相关的实习。', 10, '2025-05-16 05:31:49', 1, 2, 0, 0, 0);
INSERT INTO `post` VALUES (17, '上个月投了鹅厂的商务产品实习生，当时乱投的，没有了解这是个销售岗位，然后被邀请进了群面。', 10, '2025-05-12 12:35:58', 1, 15, 0, 0, 0);
INSERT INTO `post` VALUES (18, '今天骑电动车被交警抓了', 1, '2025-05-18 15:35:39', 1, 4, 0, 0, 0);
INSERT INTO `post` VALUES (19, '长沙扬沙天气这么严重没人管吗', 1, '2025-05-18 15:35:59', 1, 7, 0, 0, 0);
INSERT INTO `post` VALUES (20, '这是测试帖子', 1, '2025-05-19 07:56:32', 1, 18, 0, 0, 0);
INSERT INTO `post` VALUES (21, '写论文是个体力活', 4, '2025-05-19 08:42:22', 0, 1, 0, 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `post_good` VALUES (22, 1, 12, 0);
INSERT INTO `post_good` VALUES (23, 1, 17, 0);
INSERT INTO `post_good` VALUES (24, 1, 7, 0);
INSERT INTO `post_good` VALUES (25, 1, 19, 0);
INSERT INTO `post_good` VALUES (26, 1, 18, 0);
INSERT INTO `post_good` VALUES (27, 1, 20, 0);
INSERT INTO `post_good` VALUES (28, 1, 16, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '邪恶栀子花', 0, 18, '如果迷茫，请远离人群', 0, '哈尔滨工业大学', '郑州大学', NULL, NULL, NULL, NULL, '本科', '硕士', NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (2, '大朗该喝药了', 0, 23, ' 平安喜乐', 0, '哈尔滨工业大学', NULL, NULL, NULL, NULL, NULL, '本科', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (3, 'QiQi', 0, 24, 'If you feel lost, stay away from the crowd', 0, '哈尔滨工业大学', NULL, NULL, NULL, NULL, NULL, '本科', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (4, '熊大爱睡觉', 1, 24, 'do not say no', 0, '郑州大学', '哈尔滨工业大学', '国防科技大学', NULL, NULL, NULL, '本科', '本科', '硕士', NULL, NULL, NULL, '../../static/userHeader1.png', '18639552024', '123456', 0);
INSERT INTO `user` VALUES (5, '袁老师', 1, 42, '暂无', 0, '国防科技大学', NULL, NULL, NULL, NULL, NULL, '本科', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (6, '图拉丁吧吧主', 1, 33, '可是我的自卑胜过了一切爱我的', 0, '哈尔滨工业大学', '湖南大学', NULL, NULL, NULL, NULL, '本科', '硕士', NULL, NULL, NULL, NULL, NULL, '18142862054', '123456', 0);
INSERT INTO `user` VALUES (7, '薄荷撞晚风', 0, 22, '菜就要练', 0, '郑州大学', '哈尔滨工业大学', NULL, NULL, NULL, NULL, '本科', '本科', NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (8, '牛客大斯兄', 1, 25, '这就是计算机吗', 0, '郑州大学', '哈尔滨工业大学', NULL, NULL, NULL, NULL, '本科', '硕士', NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (9, '你不许说话', 0, 21, '土木狗都不学', 0, '郑州大学', '国防科技大学', NULL, NULL, NULL, NULL, '本科', '硕士', NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);
INSERT INTO `user` VALUES (10, '找工作的茶叶蛋', 1, 26, '正在求职', 0, '郑州大学', '哈尔滨工业大学', NULL, NULL, NULL, NULL, '本科', '本科', NULL, NULL, NULL, NULL, NULL, '18204697635', '123456', 0);
INSERT INTO `user` VALUES (15, '田老师', 1, 33, '麦当福', 0, '郑州大学', '哈尔滨工业大学', '国防科技大学', NULL, NULL, NULL, '本科', '硕士', '博士', NULL, NULL, NULL, NULL, '13845108972', '123456', 0);
INSERT INTO `user` VALUES (16, '嘘嘘嘘', 1, 22, '我啥也不知道', 0, '郑州大学', NULL, NULL, NULL, NULL, NULL, '本科', NULL, NULL, NULL, NULL, NULL, '../.../static/userHeader2.png', '13203791618', '123456', 0);
INSERT INTO `user` VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '118639552024', '123456', 0);
INSERT INTO `user` VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '186395520245', '123456', 0);

-- ----------------------------
-- Table structure for user_item
-- ----------------------------
DROP TABLE IF EXISTS `user_item`;
CREATE TABLE `user_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL COMMENT '0代表帖子，1代表岗位',
  `score` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_item
-- ----------------------------
INSERT INTO `user_item` VALUES (1, 1, 1, 0, 4);
INSERT INTO `user_item` VALUES (2, 1, 2, 0, 0);
INSERT INTO `user_item` VALUES (3, 1, 3, 0, 2);
INSERT INTO `user_item` VALUES (4, 1, 4, 0, 0);
INSERT INTO `user_item` VALUES (5, 1, 5, 0, 1);
INSERT INTO `user_item` VALUES (6, 2, 1, 0, 0);
INSERT INTO `user_item` VALUES (7, 2, 2, 0, 2);
INSERT INTO `user_item` VALUES (8, 2, 3, 0, 3);
INSERT INTO `user_item` VALUES (9, 2, 4, 0, 0);
INSERT INTO `user_item` VALUES (10, 2, 5, 0, 0);
INSERT INTO `user_item` VALUES (11, 3, 1, 0, 1);
INSERT INTO `user_item` VALUES (12, 3, 2, 0, 0);
INSERT INTO `user_item` VALUES (13, 3, 3, 0, 2);
INSERT INTO `user_item` VALUES (14, 3, 4, 0, 4);
INSERT INTO `user_item` VALUES (15, 3, 5, 0, 0);
INSERT INTO `user_item` VALUES (16, 4, 1, 0, 5);
INSERT INTO `user_item` VALUES (17, 4, 2, 0, 0);
INSERT INTO `user_item` VALUES (18, 4, 3, 0, 0);
INSERT INTO `user_item` VALUES (19, 4, 4, 0, 3);
INSERT INTO `user_item` VALUES (20, 4, 5, 0, 1);
INSERT INTO `user_item` VALUES (21, 5, 1, 0, 0);
INSERT INTO `user_item` VALUES (22, 5, 2, 0, 0);
INSERT INTO `user_item` VALUES (23, 5, 3, 0, 1);
INSERT INTO `user_item` VALUES (24, 5, 4, 0, 5);
INSERT INTO `user_item` VALUES (25, 5, 5, 0, 1);
INSERT INTO `user_item` VALUES (26, 6, 1, 0, 0);
INSERT INTO `user_item` VALUES (27, 6, 2, 0, 3);
INSERT INTO `user_item` VALUES (28, 6, 3, 0, 2);
INSERT INTO `user_item` VALUES (29, 6, 4, 0, 4);
INSERT INTO `user_item` VALUES (30, 6, 5, 0, 1);

-- ----------------------------
-- Table structure for user_job_record
-- ----------------------------
DROP TABLE IF EXISTS `user_job_record`;
CREATE TABLE `user_job_record`  (
  `id` bigint NOT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '岗位名称',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司名称',
  `salary` int NULL DEFAULT NULL COMMENT '薪资',
  `work_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作地点',
  `belonging` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属行业',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `campus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户学校',
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_job_record
-- ----------------------------
INSERT INTO `user_job_record` VALUES (1, '数据库工程师', '字节跳动', 75000, '北京', '环保', 93758, '山东大学', '生物工程');
INSERT INTO `user_job_record` VALUES (2, '测试工程师', '京东', 60000, '济南', '咨询', 97296, '南京航空航天大学', '集成电路设计与集成系统');
INSERT INTO `user_job_record` VALUES (3, '教师', '滴滴出行', 15000, '呼和浩特', '家电', 78889, '厦门大学', '材料物理');
INSERT INTO `user_job_record` VALUES (4, '项目经理', '科大讯飞', 30000, '重庆', '交通', 28519, '西安交通大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (5, '测试工程师', '中国移动', 90000, '呼和浩特', '通信', 53277, '四川大学', '教育学');
INSERT INTO `user_job_record` VALUES (6, '财务专员', '华为', 25000, '青岛', '医疗', 49091, '北京师范大学', '儿科学');
INSERT INTO `user_job_record` VALUES (7, '人工智能工程师', '百度', 30000, '南京', '能源', 50335, '南京大学', '法医学');
INSERT INTO `user_job_record` VALUES (8, '机械工程师', '小米', 120000, '长春', '物流', 71051, '重庆大学', '光电信息科学与工程');
INSERT INTO `user_job_record` VALUES (9, '全栈工程师', '华为', 45000, '银川', '军工', 14247, '四川大学', '放射医学');
INSERT INTO `user_job_record` VALUES (10, '编辑', '用友网络', 25000, '福州', '人工智能', 92316, '中国人民大学', '飞行器制造工程');
INSERT INTO `user_job_record` VALUES (11, '运营专员', '海尔', 120000, '呼和浩特', '新能源', 59282, '湖南大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (12, '自然语言处理工程师', '拼多多', 50000, '济南', '医疗', 54873, '山东大学', '儿科学');
INSERT INTO `user_job_record` VALUES (13, '机器学习工程师', '科大讯飞', 8000, '太原', '法律', 87759, '天津大学', '云计算技术');
INSERT INTO `user_job_record` VALUES (14, '运维工程师', '中国石油', 12000, '大连', '保险', 44753, '天津大学', '物联网工程');
INSERT INTO `user_job_record` VALUES (15, '后端开发', '旷视科技', 90000, '福州', '基金', 18995, '东南大学', '基础医学');
INSERT INTO `user_job_record` VALUES (16, '市场专员', '小米', 45000, '哈尔滨', '家电', 76521, '中国农业大学', '物理学');
INSERT INTO `user_job_record` VALUES (17, '医生', '寒武纪', 55000, '杭州', '新能源', 81097, '东北师范大学', '电子信息工程');
INSERT INTO `user_job_record` VALUES (18, '后端开发', '平安保险', 55000, '乌鲁木齐', '环保', 99484, '南京航空航天大学', '汉语言文学');
INSERT INTO `user_job_record` VALUES (19, '机器学习工程师', '科大讯飞', 25000, '哈尔滨', '建筑', 41088, '中南大学', '大数据技术');
INSERT INTO `user_job_record` VALUES (20, '翻译', '华为', 70000, '拉萨', '半导体', 79635, '同济大学', '精神医学');
INSERT INTO `user_job_record` VALUES (21, '后端开发', '新浪', 35000, '天津', '家电', 29420, '湖南大学', '生物制药');
INSERT INTO `user_job_record` VALUES (22, '医生', '中国银行', 100000, '银川', '保险', 19414, '大连理工大学', '风景园林');
INSERT INTO `user_job_record` VALUES (23, '算法工程师', '旷视科技', 180000, '哈尔滨', '物联网', 34624, '复旦大学', '智能制造工程');
INSERT INTO `user_job_record` VALUES (24, '数据库工程师', '平安保险', 30000, '合肥', '农业', 67935, '华中科技大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (25, '算法工程师', '中国移动', 8000, '长沙', '证券', 90113, '中国农业大学', '材料化学');
INSERT INTO `user_job_record` VALUES (26, '翻译', '中兴通讯', 28000, '郑州', '家电', 38210, '北京理工大学', '飞行器环境与生命保障工程');
INSERT INTO `user_job_record` VALUES (27, '律师', '小米', 45000, '苏州', '物联网', 20457, '四川大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (28, '算法工程师', '金山软件', 25000, '长沙', '互联网', 58067, '浙江大学', '中药学');
INSERT INTO `user_job_record` VALUES (29, '全栈工程师', '海尔', 180000, '济南', '体育', 96836, '吉林大学', '中药学');
INSERT INTO `user_job_record` VALUES (30, '计算机视觉工程师', '平安保险', 30000, '哈尔滨', '家电', 15257, '东北大学', '光电信息科学与工程');
INSERT INTO `user_job_record` VALUES (31, '软件工程师', '美团', 90000, '济南', '交通', 33722, '杭州电子科技大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (32, '网络安全工程师', '小米', 12000, '福州', '投资', 35686, '西安电子科技大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (33, 'UI设计师', '蚂蚁金服', 95000, '兰州', '云计算', 34332, '北京航空航天大学', '能源化学工程');
INSERT INTO `user_job_record` VALUES (34, '机器学习工程师', '蔚来汽车', 60000, '乌鲁木齐', '传媒', 73166, '华南理工大学', '通信工程');
INSERT INTO `user_job_record` VALUES (35, '建筑师', '拼多多', 12000, '石家庄', '证券', 74225, '南京大学', '电气工程及其自动化');
INSERT INTO `user_job_record` VALUES (36, '产品经理', '荣耀', 95000, '海口', '文化娱乐', 64008, '厦门大学', '儿科学');
INSERT INTO `user_job_record` VALUES (37, '网络安全工程师', '比亚迪', 22000, '苏州', '云计算', 84722, '湖南大学', '集成电路设计与集成系统');
INSERT INTO `user_job_record` VALUES (38, '软件工程师', '理想汽车', 35000, '拉萨', '区块链', 54383, '东北师范大学', '土木工程');
INSERT INTO `user_job_record` VALUES (39, '编辑', '网易', 70000, '厦门', '半导体', 82601, '南京邮电大学', '教育学');
INSERT INTO `user_job_record` VALUES (40, '律师', '美团', 15000, '苏州', '游戏', 63830, '武汉大学', '心理学');
INSERT INTO `user_job_record` VALUES (41, '市场专员', '用友网络', 30000, '北京', '证券', 75711, '厦门大学', '精神医学');
INSERT INTO `user_job_record` VALUES (42, '数据库工程师', 'OPPO', 22000, '乌鲁木齐', '半导体', 25857, '西北工业大学', '人工智能');
INSERT INTO `user_job_record` VALUES (43, 'UI设计师', '360', 60000, '广州', '餐饮', 84806, '厦门大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (44, '机械工程师', '中兴通讯', 100000, '广州', '通信', 26576, '中国科学技术大学', '食品质量与安全');
INSERT INTO `user_job_record` VALUES (45, '人力资源', 'OPPO', 20000, '福州', '金融', 73290, '西安电子科技大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (46, '教师', '科大讯飞', 25000, '合肥', '体育', 47550, '哈尔滨工业大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (47, '财务专员', '滴滴出行', 60000, '深圳', '环保', 81301, '厦门大学', '建筑学');
INSERT INTO `user_job_record` VALUES (48, '翻译', '金山软件', 18000, '海口', '咨询', 12415, '哈尔滨工业大学', '机械工程');
INSERT INTO `user_job_record` VALUES (49, '运维工程师', '360', 200000, '海口', '投资', 58149, '西北工业大学', '儿科学');
INSERT INTO `user_job_record` VALUES (50, '计算机视觉工程师', 'OPPO', 75000, '武汉', '人工智能', 43535, '东北师范大学', '软件工程');
INSERT INTO `user_job_record` VALUES (51, '网络安全工程师', '拼多多', 95000, '呼和浩特', '家电', 97800, '杭州电子科技大学', '飞行器环境与生命保障工程');
INSERT INTO `user_job_record` VALUES (52, 'UI设计师', '搜狐', 150000, '贵阳', '基金', 14566, '南开大学', '儿科学');
INSERT INTO `user_job_record` VALUES (53, 'UI设计师', '搜狐', 150000, '合肥', '物流', 94206, '西安电子科技大学', '眼视光学');
INSERT INTO `user_job_record` VALUES (54, '软件工程师', '用友网络', 95000, '海口', '证券', 90647, '浙江大学', '环境生态工程');
INSERT INTO `user_job_record` VALUES (55, '市场专员', '阿里巴巴', 200000, '乌鲁木齐', '通信', 23093, '杭州电子科技大学', '放射医学');
INSERT INTO `user_job_record` VALUES (56, '计算机视觉工程师', '海尔', 95000, '武汉', '农业', 79632, '东南大学', '通信工程');
INSERT INTO `user_job_record` VALUES (57, '医生', '百度', 60000, '海口', '新能源', 68294, '北京邮电大学', '智能科学与技术');
INSERT INTO `user_job_record` VALUES (58, '软件工程师', '字节跳动', 22000, '济南', '金融', 35450, '兰州大学', '智能科学与技术');
INSERT INTO `user_job_record` VALUES (59, '翻译', 'vivo', 50000, '厦门', '云计算', 78093, '中国农业大学', '电子科学与技术');
INSERT INTO `user_job_record` VALUES (60, '算法工程师', '网易', 75000, '长春', '餐饮', 10529, '同济大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (61, '医生', '小马智行', 60000, '太原', '教育', 67012, '华南理工大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (62, '人工智能工程师', '寒武纪', 60000, '南宁', '传媒', 16601, '东南大学', '临床医学');
INSERT INTO `user_job_record` VALUES (63, '建筑师', '小鹏汽车', 100000, '乌鲁木齐', '保险', 88195, '西安电子科技大学', '集成电路设计与集成系统');
INSERT INTO `user_job_record` VALUES (64, '算法工程师', '拼多多', 65000, '西安', '制造', 35190, '电子科技大学', '高分子材料与工程');
INSERT INTO `user_job_record` VALUES (65, '数据分析师', '联想', 45000, '西宁', '保险', 61054, '同济大学', '材料化学');
INSERT INTO `user_job_record` VALUES (66, '编辑', '科大讯飞', 90000, '呼和浩特', '大数据', 32937, '复旦大学', '精神医学');
INSERT INTO `user_job_record` VALUES (67, '深度学习工程师', '中国移动', 50000, '呼和浩特', '政府', 83580, '南京邮电大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (68, '前端开发', '旷视科技', 8000, '乌鲁木齐', '电子商务', 76110, '山东大学', '机器人工程');
INSERT INTO `user_job_record` VALUES (69, '后端开发', '美团', 200000, '西宁', '互联网', 31692, '浙江大学', '物理学');
INSERT INTO `user_job_record` VALUES (70, '产品经理', '联想', 12000, '厦门', '投资', 28651, '复旦大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (71, '算法工程师', '中兴通讯', 100000, '武汉', '文化娱乐', 80638, '电子科技大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (72, '深度学习工程师', '平安保险', 10000, '乌鲁木齐', '通信', 58205, '清华大学', '药学');
INSERT INTO `user_job_record` VALUES (73, '测试工程师', '平安保险', 10000, '合肥', '政府', 57946, '华南理工大学', '区块链工程');
INSERT INTO `user_job_record` VALUES (74, '计算机视觉工程师', '用友网络', 30000, '西宁', '通信', 44350, '东南大学', '化学工程');
INSERT INTO `user_job_record` VALUES (75, '医生', '网易游戏', 8000, '合肥', '体育', 83694, '杭州电子科技大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (76, '自然语言处理工程师', '中国银行', 120000, '兰州', '餐饮', 94418, '哈尔滨工业大学', '信息安全');
INSERT INTO `user_job_record` VALUES (77, '人力资源', '荣耀', 45000, '长沙', '建筑', 63469, '华中科技大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (78, '建筑师', '京东', 28000, '海口', '云计算', 12908, '复旦大学', '海洋资源开发技术');
INSERT INTO `user_job_record` VALUES (79, '产品经理', '商汤科技', 55000, '哈尔滨', '半导体', 18892, '同济大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (80, '律师', '小鹏汽车', 75000, '石家庄', '旅游', 60905, '东北大学', '心理学');
INSERT INTO `user_job_record` VALUES (81, '运营专员', '网易游戏', 90000, '武汉', '物流', 61237, '东南大学', '医学检验技术');
INSERT INTO `user_job_record` VALUES (82, 'UI设计师', '中国移动', 35000, '台北', '餐饮', 89170, '中国农业大学', '材料科学');
INSERT INTO `user_job_record` VALUES (83, '翻译', '蔚来汽车', 10000, '青岛', '基金', 63400, '中国农业大学', '飞行器动力工程');
INSERT INTO `user_job_record` VALUES (84, '编辑', '蔚来汽车', 55000, '沈阳', '互联网', 46649, '哈尔滨工程大学', '康复治疗学');
INSERT INTO `user_job_record` VALUES (85, '产品经理', '联想', 100000, '南宁', '人工智能', 61883, '中山大学', '人工智能');
INSERT INTO `user_job_record` VALUES (86, '运营专员', '海尔', 12000, '上海', '零售', 66351, '南京理工大学', '飞行器动力工程');
INSERT INTO `user_job_record` VALUES (87, '项目经理', '蔚来汽车', 150000, '太原', '家电', 33408, '大连理工大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (88, '律师', '百度', 30000, '天津', '房地产', 60587, '电子科技大学', '教育学');
INSERT INTO `user_job_record` VALUES (89, '机器学习工程师', '360', 10000, '呼和浩特', '农业', 79501, '北京航空航天大学', '基础医学');
INSERT INTO `user_job_record` VALUES (90, '网络安全工程师', 'OPPO', 50000, '石家庄', '互联网', 51815, '中南大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (91, '自然语言处理工程师', '科大讯飞', 95000, '长春', '大数据', 18991, '厦门大学', '电气工程及其自动化');
INSERT INTO `user_job_record` VALUES (92, '人工智能工程师', '搜狐', 40000, '深圳', '电子商务', 43352, '东南大学', '能源与动力工程');
INSERT INTO `user_job_record` VALUES (93, '教师', '用友网络', 75000, '济南', '旅游', 99314, '哈尔滨工业大学', '机械工程');
INSERT INTO `user_job_record` VALUES (94, '人工智能工程师', 'vivo', 90000, '香港', '人工智能', 17870, '西北工业大学', '放射医学');
INSERT INTO `user_job_record` VALUES (95, '全栈工程师', '理想汽车', 200000, '台北', '农业', 65454, '电子科技大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (96, '机械工程师', '商汤科技', 75000, '澳门', '证券', 89462, '北京大学', '基础医学');
INSERT INTO `user_job_record` VALUES (97, '市场专员', '一加', 55000, '贵阳', '广告', 71903, '北京师范大学', '航空航天工程');
INSERT INTO `user_job_record` VALUES (98, '机械工程师', '浪潮集团', 65000, '天津', '人工智能', 61835, '杭州电子科技大学', '医学实验技术');
INSERT INTO `user_job_record` VALUES (99, '运维工程师', '科大讯飞', 55000, '济南', '投资', 20088, '中国农业大学', '金融学');
INSERT INTO `user_job_record` VALUES (100, '机械工程师', '蔚来汽车', 55000, '哈尔滨', '房地产', 36656, '南京理工大学', '生物工程');
INSERT INTO `user_job_record` VALUES (101, '自然语言处理工程师', '美团', 70000, '杭州', '能源', 58347, '华东师范大学', '儿科学');
INSERT INTO `user_job_record` VALUES (102, 'UI设计师', '中国石油', 75000, '广州', '房地产', 86080, '杭州电子科技大学', '电气工程及其自动化');
INSERT INTO `user_job_record` VALUES (103, '编辑', '滴滴出行', 90000, '南宁', '互联网', 56941, '华南理工大学', '数字媒体技术');
INSERT INTO `user_job_record` VALUES (104, 'UI设计师', '蔚来汽车', 65000, '拉萨', '游戏', 96455, '武汉大学', '物理学');
INSERT INTO `user_job_record` VALUES (105, '建筑师', '百度', 100000, '澳门', '云计算', 12885, '重庆邮电大学', '儿科学');
INSERT INTO `user_job_record` VALUES (106, '人工智能工程师', '美团', 18000, '成都', '环保', 48364, '东北大学', '云计算技术');
INSERT INTO `user_job_record` VALUES (107, '销售代表', '海尔', 150000, '石家庄', '大数据', 82107, '东北大学', '环境生态工程');
INSERT INTO `user_job_record` VALUES (108, '医生', '拼多多', 85000, '南京', '体育', 68866, '南京航空航天大学', '眼视光学');
INSERT INTO `user_job_record` VALUES (109, '市场专员', '商汤科技', 60000, '成都', '人工智能', 89468, '复旦大学', '生物技术');
INSERT INTO `user_job_record` VALUES (110, '数据库工程师', '百度', 8000, '呼和浩特', '农业', 15359, '杭州电子科技大学', '临床医学');
INSERT INTO `user_job_record` VALUES (111, '建筑师', '携程', 15000, '长春', '人工智能', 62251, '西南交通大学', '资源循环科学与工程');
INSERT INTO `user_job_record` VALUES (112, '人力资源', '中国移动', 75000, '济南', '新能源', 48472, '西安交通大学', '生物技术');
INSERT INTO `user_job_record` VALUES (113, '产品经理', '新浪', 90000, '南宁', '文化娱乐', 53318, '山东大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (114, '测试工程师', '网易', 120000, '海口', '投资', 30867, '北京理工大学', '通信工程');
INSERT INTO `user_job_record` VALUES (115, '人工智能工程师', '蚂蚁金服', 40000, '合肥', '建筑', 59548, '西安交通大学', '新能源材料与器件');
INSERT INTO `user_job_record` VALUES (116, '律师', '一加', 18000, '重庆', '保险', 83304, '天津大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (117, '全栈工程师', '地平线', 70000, '济南', '军工', 38132, '华南理工大学', '土木工程');
INSERT INTO `user_job_record` VALUES (118, '医生', '360', 28000, '台北', '文化娱乐', 47190, '西北工业大学', '云计算技术');
INSERT INTO `user_job_record` VALUES (119, '数据分析师', '地平线', 150000, '西宁', '房地产', 51738, '杭州电子科技大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (120, '数据库工程师', '金山软件', 45000, '福州', '政府', 58926, '山东大学', '土木工程');
INSERT INTO `user_job_record` VALUES (121, '自然语言处理工程师', '小鹏汽车', 30000, '青岛', '交通', 51085, '上海交通大学', '集成电路设计与集成系统');
INSERT INTO `user_job_record` VALUES (122, '教师', '拼多多', 150000, '济南', '环保', 44484, '中国农业大学', '风景园林');
INSERT INTO `user_job_record` VALUES (123, '测试工程师', 'OPPO', 10000, '深圳', '军工', 81022, '北京邮电大学', '智能制造工程');
INSERT INTO `user_job_record` VALUES (124, 'UI设计师', 'vivo', 150000, '哈尔滨', '生物医药', 11901, '电子科技大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (125, '全栈工程师', '科大讯飞', 10000, '呼和浩特', '文化娱乐', 98578, '上海交通大学', '基础医学');
INSERT INTO `user_job_record` VALUES (126, '数据库工程师', '商汤科技', 90000, '青岛', '政府', 26055, '上海交通大学', '精神医学');
INSERT INTO `user_job_record` VALUES (127, '市场专员', '金山软件', 25000, '兰州', '家电', 11127, '北京理工大学', '光电信息科学与工程');
INSERT INTO `user_job_record` VALUES (128, '网络安全工程师', '搜狐', 200000, '海口', '餐饮', 63951, '中国人民大学', '精神医学');
INSERT INTO `user_job_record` VALUES (129, '计算机视觉工程师', '浪潮集团', 55000, '深圳', '医疗', 85324, '南京大学', '物联网工程');
INSERT INTO `user_job_record` VALUES (130, '翻译', '阿里巴巴', 8000, '西宁', '文化娱乐', 89815, '南京大学', '护理学');
INSERT INTO `user_job_record` VALUES (131, '教师', '小米', 22000, '乌鲁木齐', '交通', 45846, '杭州电子科技大学', '英语');
INSERT INTO `user_job_record` VALUES (132, '项目经理', '华为', 12000, '合肥', '汽车', 34463, '北京邮电大学', '机械工程');
INSERT INTO `user_job_record` VALUES (133, '项目经理', '中国银行', 180000, '上海', '游戏', 43525, '重庆邮电大学', '英语');
INSERT INTO `user_job_record` VALUES (134, '全栈工程师', '中国银行', 28000, '福州', '传媒', 35932, '东北师范大学', '儿科学');
INSERT INTO `user_job_record` VALUES (135, '销售代表', '中国建筑', 40000, '台北', '人工智能', 88307, '大连理工大学', '飞行器环境与生命保障工程');
INSERT INTO `user_job_record` VALUES (136, '数据分析师', '小马智行', 60000, '杭州', '传媒', 75679, '东北大学', '食品质量与安全');
INSERT INTO `user_job_record` VALUES (137, '计算机视觉工程师', '商汤科技', 15000, '杭州', '房地产', 43823, '华南师范大学', '生物科学');
INSERT INTO `user_job_record` VALUES (138, '网络安全工程师', '旷视科技', 40000, '南京', '房地产', 26612, '同济大学', '法医学');
INSERT INTO `user_job_record` VALUES (139, '数据分析师', '携程', 25000, '广州', '大数据', 41527, '东北大学', '儿科学');
INSERT INTO `user_job_record` VALUES (140, '运营专员', '字节跳动', 85000, '石家庄', '传媒', 19796, '同济大学', '精神医学');
INSERT INTO `user_job_record` VALUES (141, '产品经理', '阿里巴巴', 70000, '天津', '农业', 57126, '浙江大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (142, '全栈工程师', '比亚迪', 90000, '北京', '零售', 25628, '南京理工大学', '会计学');
INSERT INTO `user_job_record` VALUES (143, '算法工程师', '小马智行', 95000, '天津', '能源', 54820, '西南交通大学', '自动化');
INSERT INTO `user_job_record` VALUES (144, '教师', '拼多多', 90000, '天津', '新能源', 23001, '中国科学技术大学', '电子科学与技术');
INSERT INTO `user_job_record` VALUES (145, '产品经理', '阿里巴巴', 15000, '太原', '医疗', 35478, '西北工业大学', '精神医学');
INSERT INTO `user_job_record` VALUES (146, '全栈工程师', '联想', 95000, '昆明', '生物医药', 34942, '哈尔滨工程大学', '生物工程');
INSERT INTO `user_job_record` VALUES (147, '后端开发', '拼多多', 12000, '天津', '教育', 80876, '大连理工大学', '区块链工程');
INSERT INTO `user_job_record` VALUES (148, '人力资源', '用友网络', 10000, '银川', '电子商务', 37766, '天津大学', '工业设计');
INSERT INTO `user_job_record` VALUES (149, '运营专员', '京东', 8000, '西宁', '证券', 55636, '湖南大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (150, '全栈工程师', '京东', 85000, '石家庄', '房地产', 98862, '杭州电子科技大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (151, '律师', '地平线', 28000, '乌鲁木齐', '零售', 65469, '中山大学', '临床医学');
INSERT INTO `user_job_record` VALUES (152, '运维工程师', '360', 22000, '长春', '证券', 44079, '中国人民大学', '康复治疗学');
INSERT INTO `user_job_record` VALUES (153, '算法工程师', '网易游戏', 70000, '南宁', '家电', 34989, '武汉大学', '自动化');
INSERT INTO `user_job_record` VALUES (154, '数据分析师', '小鹏汽车', 8000, '天津', '能源', 51335, '哈尔滨工业大学', '法医学');
INSERT INTO `user_job_record` VALUES (155, '运营专员', '京东', 70000, '上海', '文化娱乐', 54384, '厦门大学', '风景园林');
INSERT INTO `user_job_record` VALUES (156, '医生', '携程', 65000, '郑州', '大数据', 35158, '南开大学', '生物医学工程');
INSERT INTO `user_job_record` VALUES (157, '人工智能工程师', '字节跳动', 75000, '北京', '新能源', 85639, '四川大学', '基础医学');
INSERT INTO `user_job_record` VALUES (158, '销售代表', '寒武纪', 45000, '杭州', '房地产', 99769, '中南大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (159, '机器学习工程师', '小马智行', 150000, '台北', '服装', 69919, '北京师范大学', '核工程与核技术');
INSERT INTO `user_job_record` VALUES (160, '项目经理', '中国建筑', 75000, '乌鲁木齐', '互联网', 60891, '中国科学技术大学', '微电子科学与工程');
INSERT INTO `user_job_record` VALUES (161, '机械工程师', '金山软件', 95000, '长春', '餐饮', 35206, '大连理工大学', '统计学');
INSERT INTO `user_job_record` VALUES (162, '教师', '中国石油', 90000, '银川', '区块链', 45264, '华中科技大学', '材料科学');
INSERT INTO `user_job_record` VALUES (163, '数据库工程师', '网易游戏', 90000, '银川', '云计算', 78778, '天津大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (164, '全栈工程师', '金山软件', 22000, '太原', '交通', 56377, '湖南大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (165, '人力资源', '携程', 40000, '海口', '零售', 86460, '东北大学', '医学实验技术');
INSERT INTO `user_job_record` VALUES (166, '数据库工程师', '小马智行', 15000, '海口', '服装', 17304, '中山大学', '机器人工程');
INSERT INTO `user_job_record` VALUES (167, '运维工程师', '联想', 200000, '青岛', '通信', 35165, '厦门大学', '临床医学');
INSERT INTO `user_job_record` VALUES (168, '自然语言处理工程师', '360', 50000, '北京', '交通', 78538, '中国科学技术大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (169, '财务专员', '搜狐', 18000, '石家庄', '医疗', 56613, '南京航空航天大学', '数学');
INSERT INTO `user_job_record` VALUES (170, '律师', '中国建筑', 50000, '深圳', '大数据', 64656, '北京航空航天大学', '精神医学');
INSERT INTO `user_job_record` VALUES (171, '算法工程师', '蔚来汽车', 70000, '沈阳', '物流', 71169, '北京大学', '生物技术');
INSERT INTO `user_job_record` VALUES (172, '机器学习工程师', '中兴通讯', 25000, '北京', '旅游', 55821, '北京师范大学', '生物医学工程');
INSERT INTO `user_job_record` VALUES (173, '销售代表', '滴滴出行', 35000, '长春', '政府', 73807, '北京科技大学', '医学实验技术');
INSERT INTO `user_job_record` VALUES (174, '机械工程师', '浪潮集团', 50000, '石家庄', '法律', 47026, '中国科学技术大学', '护理学');
INSERT INTO `user_job_record` VALUES (175, '深度学习工程师', 'vivo', 25000, '昆明', '投资', 38839, '南京邮电大学', '法医学');
INSERT INTO `user_job_record` VALUES (176, '教师', '比亚迪', 150000, '贵阳', '保险', 45052, '电子科技大学', '风景园林');
INSERT INTO `user_job_record` VALUES (177, '运营专员', '金山软件', 8000, '苏州', '生物医药', 29735, '北京航空航天大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (178, '机器学习工程师', '旷视科技', 40000, '深圳', '金融', 97371, '四川大学', '工业设计');
INSERT INTO `user_job_record` VALUES (179, '运维工程师', '网易', 100000, '重庆', '区块链', 11505, '四川大学', '放射医学');
INSERT INTO `user_job_record` VALUES (180, '机器学习工程师', '中国移动', 12000, '西宁', '政府', 38731, '中国科学技术大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (181, '算法工程师', '中兴通讯', 18000, '太原', '服装', 34905, '中山大学', '环境工程');
INSERT INTO `user_job_record` VALUES (182, '数据分析师', '网易', 40000, '贵阳', '交通', 29482, '电子科技大学', '医学实验技术');
INSERT INTO `user_job_record` VALUES (183, '算法工程师', '小米', 20000, '呼和浩特', '半导体', 59594, '华南理工大学', '中药学');
INSERT INTO `user_job_record` VALUES (184, '市场专员', '网易游戏', 120000, '苏州', '云计算', 85771, '武汉大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (185, '深度学习工程师', '中国银行', 180000, '成都', '服装', 15855, '南京邮电大学', '智能制造工程');
INSERT INTO `user_job_record` VALUES (186, '全栈工程师', '小米', 60000, '天津', '咨询', 71514, '中国人民大学', '口腔医学');
INSERT INTO `user_job_record` VALUES (187, '产品经理', '阿里巴巴', 40000, '兰州', '云计算', 35465, '厦门大学', '电子科学与技术');
INSERT INTO `user_job_record` VALUES (188, '机械工程师', '京东', 40000, '南宁', '家电', 73021, '西安交通大学', '人工智能');
INSERT INTO `user_job_record` VALUES (189, '教师', '旷视科技', 180000, '太原', '零售', 27467, '南开大学', '汉语言文学');
INSERT INTO `user_job_record` VALUES (190, '运维工程师', '理想汽车', 15000, '大连', '生物医药', 16733, '中国科学技术大学', '材料科学');
INSERT INTO `user_job_record` VALUES (191, '销售代表', '华为', 35000, '济南', '家电', 40652, '重庆大学', '放射医学');
INSERT INTO `user_job_record` VALUES (192, '运营专员', '中国银行', 15000, '天津', '农业', 83811, '东南大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (193, '算法工程师', '地平线', 150000, '兰州', '大数据', 47336, '哈尔滨工业大学', '中西医临床医学');
INSERT INTO `user_job_record` VALUES (194, '测试工程师', '理想汽车', 70000, '南宁', '通信', 55696, '大连理工大学', '新能源材料与器件');
INSERT INTO `user_job_record` VALUES (195, '律师', 'OPPO', 50000, '上海', '教育', 62407, '东北大学', '飞行器环境与生命保障工程');
INSERT INTO `user_job_record` VALUES (196, '后端开发', 'vivo', 80000, '天津', '物联网', 57986, '吉林大学', '信息安全');
INSERT INTO `user_job_record` VALUES (197, '销售代表', '理想汽车', 30000, '兰州', '传媒', 45220, '北京理工大学', '新闻学');
INSERT INTO `user_job_record` VALUES (198, '机械工程师', '小马智行', 70000, '沈阳', '广告', 59603, '武汉大学', '化学');
INSERT INTO `user_job_record` VALUES (199, '深度学习工程师', 'vivo', 60000, '乌鲁木齐', '房地产', 19283, '东南大学', '信息安全');
INSERT INTO `user_job_record` VALUES (200, '运营专员', '平安保险', 8000, '石家庄', '旅游', 58955, '西安电子科技大学', '风景园林');
INSERT INTO `user_job_record` VALUES (201, '自然语言处理工程师', '小马智行', 10000, '济南', '军工', 61155, '杭州电子科技大学', '材料物理');
INSERT INTO `user_job_record` VALUES (202, '机械工程师', '商汤科技', 12000, '合肥', '建筑', 58500, '华中科技大学', '精神医学');
INSERT INTO `user_job_record` VALUES (203, '销售代表', '寒武纪', 22000, '北京', '环保', 70024, '湖南大学', '法医学');
INSERT INTO `user_job_record` VALUES (204, '计算机视觉工程师', '小米', 70000, '南宁', '家电', 39610, '中国人民大学', '物理学');
INSERT INTO `user_job_record` VALUES (205, '深度学习工程师', '金山软件', 8000, '天津', '建筑', 53363, '南开大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (206, '数据库工程师', '海尔', 55000, '香港', '建筑', 54584, '南京大学', '工业设计');
INSERT INTO `user_job_record` VALUES (207, '翻译', '理想汽车', 100000, '沈阳', '基金', 38997, '吉林大学', '儿科学');
INSERT INTO `user_job_record` VALUES (208, '人工智能工程师', '地平线', 45000, '北京', '咨询', 20389, '清华大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (209, '财务专员', '网易游戏', 85000, '深圳', '生物医药', 35835, '重庆邮电大学', '数据科学');
INSERT INTO `user_job_record` VALUES (210, '全栈工程师', '地平线', 90000, '杭州', '咨询', 42162, '重庆大学', '药学');
INSERT INTO `user_job_record` VALUES (211, '医生', '用友网络', 12000, '长春', '农业', 14244, '西安交通大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (212, '运维工程师', '蚂蚁金服', 20000, '杭州', '零售', 34859, '南京理工大学', '环境工程');
INSERT INTO `user_job_record` VALUES (213, '项目经理', '比亚迪', 45000, '青岛', '互联网', 84241, '北京大学', '自动化');
INSERT INTO `user_job_record` VALUES (214, '运维工程师', '蚂蚁金服', 70000, '杭州', '投资', 77647, '南京大学', '预防医学');
INSERT INTO `user_job_record` VALUES (215, '财务专员', '滴滴出行', 120000, '海口', '保险', 80581, '山东大学', '智能制造工程');
INSERT INTO `user_job_record` VALUES (216, '数据分析师', '搜狐', 30000, '香港', '物联网', 51698, '四川大学', '儿科学');
INSERT INTO `user_job_record` VALUES (217, '前端开发', '中国移动', 8000, '澳门', '金融', 85337, '清华大学', '化学工程');
INSERT INTO `user_job_record` VALUES (218, '深度学习工程师', '小米', 70000, '长沙', '物联网', 33080, '中国人民大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (219, '医生', '一加', 30000, '海口', '区块链', 55377, '中国农业大学', '大数据技术');
INSERT INTO `user_job_record` VALUES (220, '人工智能工程师', 'vivo', 22000, '武汉', '大数据', 22380, '西安电子科技大学', '机器人工程');
INSERT INTO `user_job_record` VALUES (221, '全栈工程师', '理想汽车', 150000, '澳门', '广告', 48418, '中国人民大学', '电子信息工程');
INSERT INTO `user_job_record` VALUES (222, '软件工程师', '比亚迪', 50000, '西宁', '能源', 44600, '中国科学技术大学', '云计算技术');
INSERT INTO `user_job_record` VALUES (223, '前端开发', '旷视科技', 20000, '深圳', '旅游', 63808, '西北工业大学', '微电子科学与工程');
INSERT INTO `user_job_record` VALUES (224, '人工智能工程师', '字节跳动', 95000, '天津', '房地产', 17057, '清华大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (225, '运营专员', '中国石油', 45000, '上海', '旅游', 39239, '中国农业大学', '基础医学');
INSERT INTO `user_job_record` VALUES (226, '算法工程师', '浪潮集团', 120000, '澳门', '医疗', 68643, '北京大学', '新能源材料与器件');
INSERT INTO `user_job_record` VALUES (227, '编辑', '联想', 70000, '青岛', '广告', 24664, '重庆邮电大学', '儿科学');
INSERT INTO `user_job_record` VALUES (228, '人力资源', '商汤科技', 150000, '重庆', '金融', 14228, '北京师范大学', '会计学');
INSERT INTO `user_job_record` VALUES (229, '项目经理', '寒武纪', 20000, '成都', '汽车', 99094, '清华大学', '医学影像技术');
INSERT INTO `user_job_record` VALUES (230, '测试工程师', '拼多多', 18000, '南京', '大数据', 56661, '武汉大学', '飞行器制造工程');
INSERT INTO `user_job_record` VALUES (231, '建筑师', '小鹏汽车', 28000, '广州', '医疗', 37454, '山东大学', '精神医学');
INSERT INTO `user_job_record` VALUES (232, '数据分析师', '搜狐', 12000, '乌鲁木齐', '物联网', 93513, '南京邮电大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (233, '律师', '拼多多', 18000, '银川', '新能源', 14744, '武汉大学', '飞行器动力工程');
INSERT INTO `user_job_record` VALUES (234, '测试工程师', '金山软件', 30000, '重庆', '咨询', 58765, '厦门大学', '儿科学');
INSERT INTO `user_job_record` VALUES (235, '翻译', '招商银行', 120000, '深圳', '云计算', 60952, '重庆邮电大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (236, '软件工程师', '理想汽车', 60000, '贵阳', '电子商务', 55713, '南京大学', '生物科学');
INSERT INTO `user_job_record` VALUES (237, '建筑师', '小鹏汽车', 95000, '西安', '云计算', 90627, '华南师范大学', '飞行器环境与生命保障工程');
INSERT INTO `user_job_record` VALUES (238, '软件工程师', '阿里巴巴', 150000, '南京', '广告', 11569, '华南理工大学', '海洋资源开发技术');
INSERT INTO `user_job_record` VALUES (239, '后端开发', '荣耀', 10000, '南宁', '教育', 85206, '大连理工大学', '生物工程');
INSERT INTO `user_job_record` VALUES (240, '算法工程师', '新浪', 40000, '西安', '教育', 33138, '复旦大学', '康复治疗学');
INSERT INTO `user_job_record` VALUES (241, 'UI设计师', '招商银行', 20000, '昆明', '云计算', 87971, '重庆大学', '法医学');
INSERT INTO `user_job_record` VALUES (242, '深度学习工程师', '腾讯', 55000, '北京', '零售', 72125, '上海交通大学', '金融学');
INSERT INTO `user_job_record` VALUES (243, '测试工程师', '中国石油', 120000, '南京', '生物医药', 36786, '四川大学', '土木工程');
INSERT INTO `user_job_record` VALUES (244, '建筑师', 'OPPO', 95000, '香港', '云计算', 55527, '华南师范大学', '飞行器设计与工程');
INSERT INTO `user_job_record` VALUES (245, '律师', '滴滴出行', 180000, '郑州', '法律', 89528, '上海交通大学', '基础医学');
INSERT INTO `user_job_record` VALUES (246, '编辑', '快手', 10000, '杭州', '旅游', 24941, '华中科技大学', '生物制药');
INSERT INTO `user_job_record` VALUES (247, '数据分析师', '蔚来汽车', 100000, '贵阳', '大数据', 24780, '哈尔滨工程大学', '教育学');
INSERT INTO `user_job_record` VALUES (248, '计算机视觉工程师', '携程', 60000, '银川', '军工', 62601, '南京航空航天大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (249, '软件工程师', '蚂蚁金服', 50000, '深圳', '咨询', 56567, '清华大学', '智能科学与技术');
INSERT INTO `user_job_record` VALUES (250, '计算机视觉工程师', '科大讯飞', 65000, '昆明', '通信', 97498, '清华大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (251, '项目经理', 'OPPO', 60000, '济南', '医疗', 61616, '兰州大学', '会计学');
INSERT INTO `user_job_record` VALUES (252, '项目经理', '拼多多', 8000, '沈阳', '汽车', 67883, '东南大学', '会计学');
INSERT INTO `user_job_record` VALUES (253, '运营专员', '金山软件', 30000, '香港', '环保', 12765, '华南师范大学', '法学');
INSERT INTO `user_job_record` VALUES (254, '全栈工程师', '比亚迪', 200000, '重庆', '证券', 69830, '西安电子科技大学', '汉语言文学');
INSERT INTO `user_job_record` VALUES (255, '全栈工程师', '阿里巴巴', 100000, '西安', '区块链', 11119, '华南理工大学', '生物科学');
INSERT INTO `user_job_record` VALUES (256, '教师', '比亚迪', 18000, '贵阳', '电子商务', 60437, '北京理工大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (257, '医生', '旷视科技', 45000, '青岛', '金融', 60206, '吉林大学', '航空航天工程');
INSERT INTO `user_job_record` VALUES (258, '产品经理', '小鹏汽车', 12000, '拉萨', '教育', 80631, '东北师范大学', '生物技术');
INSERT INTO `user_job_record` VALUES (259, '全栈工程师', '理想汽车', 25000, '澳门', '物联网', 87611, '南京邮电大学', '物理学');
INSERT INTO `user_job_record` VALUES (260, '机器学习工程师', '荣耀', 120000, '台北', '军工', 81392, '湖南大学', '法医学');
INSERT INTO `user_job_record` VALUES (261, '翻译', '百度', 200000, '杭州', '房地产', 39856, '电子科技大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (262, '销售代表', '地平线', 25000, '石家庄', '建筑', 98732, '南京邮电大学', '智能科学与技术');
INSERT INTO `user_job_record` VALUES (263, '自然语言处理工程师', '比亚迪', 85000, '合肥', '投资', 57891, '北京邮电大学', '土木工程');
INSERT INTO `user_job_record` VALUES (264, '财务专员', '小鹏汽车', 95000, '广州', '文化娱乐', 51645, '电子科技大学', '机械工程');
INSERT INTO `user_job_record` VALUES (265, '计算机视觉工程师', '搜狐', 35000, '哈尔滨', '文化娱乐', 67158, '北京理工大学', '机器人工程');
INSERT INTO `user_job_record` VALUES (266, '算法工程师', '美团', 8000, '重庆', '家电', 54038, '西安交通大学', '药学');
INSERT INTO `user_job_record` VALUES (267, '测试工程师', 'vivo', 50000, '武汉', '咨询', 12315, '北京邮电大学', '飞行器环境与生命保障工程');
INSERT INTO `user_job_record` VALUES (268, '教师', '搜狐', 20000, '昆明', '服装', 44885, '大连理工大学', '医学检验技术');
INSERT INTO `user_job_record` VALUES (269, '运维工程师', '中国银行', 60000, '合肥', '医疗', 34895, '北京航空航天大学', '临床医学');
INSERT INTO `user_job_record` VALUES (270, '产品经理', 'vivo', 20000, '武汉', '人工智能', 12871, '西南交通大学', '物理学');
INSERT INTO `user_job_record` VALUES (271, '编辑', '蚂蚁金服', 20000, '南宁', '物联网', 27332, '哈尔滨工业大学', '儿科学');
INSERT INTO `user_job_record` VALUES (272, '翻译', '阿里巴巴', 15000, '西安', '区块链', 24025, '中南大学', '放射医学');
INSERT INTO `user_job_record` VALUES (273, '市场专员', '拼多多', 200000, '银川', '咨询', 47910, '华南理工大学', '工业设计');
INSERT INTO `user_job_record` VALUES (274, '全栈工程师', '中国移动', 120000, '苏州', '服装', 21650, '东北师范大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (275, '网络安全工程师', '蚂蚁金服', 180000, '海口', '新能源', 39711, '北京师范大学', '卫生检验与检疫');
INSERT INTO `user_job_record` VALUES (276, '建筑师', '美团', 30000, '南宁', '物流', 30084, '西北工业大学', '信息安全');
INSERT INTO `user_job_record` VALUES (277, '数据分析师', '网易游戏', 25000, '海口', '投资', 71473, '清华大学', '新闻学');
INSERT INTO `user_job_record` VALUES (278, '建筑师', '中国建筑', 80000, '北京', '区块链', 16564, '南京航空航天大学', '临床医学');
INSERT INTO `user_job_record` VALUES (279, '教师', 'OPPO', 18000, '长春', '农业', 76270, '电子科技大学', '卫生检验与检疫');
INSERT INTO `user_job_record` VALUES (280, '前端开发', '地平线', 35000, '银川', '旅游', 21920, '西安电子科技大学', '儿科学');
INSERT INTO `user_job_record` VALUES (281, '测试工程师', '华为', 200000, '成都', '医疗', 46458, '华东师范大学', '生物技术');
INSERT INTO `user_job_record` VALUES (282, '机器学习工程师', '联想', 8000, '北京', '文化娱乐', 16580, '杭州电子科技大学', '智能科学与技术');
INSERT INTO `user_job_record` VALUES (283, '数据库工程师', '商汤科技', 75000, '长沙', '投资', 60580, '清华大学', '康复治疗学');
INSERT INTO `user_job_record` VALUES (284, '产品经理', '滴滴出行', 55000, '南京', '汽车', 31972, '南京大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (285, '财务专员', '京东', 150000, '银川', '物流', 27394, '南京大学', '土木工程');
INSERT INTO `user_job_record` VALUES (286, '产品经理', '京东', 55000, '昆明', '物联网', 22299, '华南师范大学', '化学工程与工艺');
INSERT INTO `user_job_record` VALUES (287, '算法工程师', '小米', 80000, '南京', '医疗', 39375, '北京科技大学', '海洋资源开发技术');
INSERT INTO `user_job_record` VALUES (288, '产品经理', '快手', 8000, '合肥', '环保', 49973, '南京大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (289, '项目经理', '理想汽车', 35000, '成都', '体育', 34650, '吉林大学', '基础医学');
INSERT INTO `user_job_record` VALUES (290, '翻译', '中国银行', 90000, '成都', '军工', 23176, '北京大学', '能源与动力工程');
INSERT INTO `user_job_record` VALUES (291, '数据库工程师', '蚂蚁金服', 25000, '青岛', '广告', 78836, '西北工业大学', '飞行器制造工程');
INSERT INTO `user_job_record` VALUES (292, '软件工程师', '携程', 8000, '厦门', '新能源', 48821, '华中科技大学', '食品科学与工程');
INSERT INTO `user_job_record` VALUES (293, '数据分析师', '阿里巴巴', 80000, '银川', '通信', 99640, '西安电子科技大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (294, '测试工程师', '搜狐', 35000, '海口', '生物医药', 38886, '中国人民大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (295, '后端开发', '一加', 200000, '重庆', '政府', 48393, '重庆大学', '航空航天工程');
INSERT INTO `user_job_record` VALUES (296, '测试工程师', '滴滴出行', 200000, '西安', '零售', 80909, '上海交通大学', '汉语言文学');
INSERT INTO `user_job_record` VALUES (297, '市场专员', '网易', 18000, '武汉', '农业', 97217, '中南大学', '大数据技术');
INSERT INTO `user_job_record` VALUES (298, '数据分析师', '小马智行', 65000, '昆明', '基金', 66643, '四川大学', '自动化');
INSERT INTO `user_job_record` VALUES (299, '数据库工程师', '网易', 12000, '武汉', '旅游', 17206, '武汉大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (300, '数据库工程师', '腾讯', 45000, '南京', '物流', 80649, '哈尔滨工程大学', '网络工程');
INSERT INTO `user_job_record` VALUES (301, '网络安全工程师', '腾讯', 100000, '乌鲁木齐', '生物医药', 39458, '华南理工大学', '汉语言文学');
INSERT INTO `user_job_record` VALUES (302, '软件工程师', '字节跳动', 55000, '昆明', '咨询', 69194, '复旦大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (303, '自然语言处理工程师', '旷视科技', 35000, '合肥', '云计算', 19057, '西南交通大学', '飞行器环境与生命保障工程');
INSERT INTO `user_job_record` VALUES (304, '数据分析师', '商汤科技', 100000, '苏州', '传媒', 40958, '东北师范大学', '电子科学与技术');
INSERT INTO `user_job_record` VALUES (305, '运维工程师', '中国移动', 100000, '重庆', '物流', 16796, '同济大学', '人工智能');
INSERT INTO `user_job_record` VALUES (306, '数据库工程师', '浪潮集团', 10000, '乌鲁木齐', '游戏', 62512, '南开大学', '建筑学');
INSERT INTO `user_job_record` VALUES (307, '数据分析师', '蔚来汽车', 20000, '沈阳', '军工', 70310, '华中科技大学', '口腔医学');
INSERT INTO `user_job_record` VALUES (308, '销售代表', '浪潮集团', 80000, '成都', '投资', 61799, '清华大学', '航空航天工程');
INSERT INTO `user_job_record` VALUES (309, '教师', '腾讯', 28000, '澳门', '交通', 63517, '杭州电子科技大学', '物联网工程');
INSERT INTO `user_job_record` VALUES (310, '测试工程师', 'vivo', 95000, '拉萨', '建筑', 99506, '北京师范大学', '人工智能');
INSERT INTO `user_job_record` VALUES (311, '数据分析师', '地平线', 85000, '大连', '汽车', 43647, '南开大学', '法医学');
INSERT INTO `user_job_record` VALUES (312, '运营专员', '360', 28000, '武汉', '汽车', 68859, '中南大学', '法医学');
INSERT INTO `user_job_record` VALUES (313, '网络安全工程师', '旷视科技', 28000, '广州', '医疗', 36699, '西安交通大学', '统计学');
INSERT INTO `user_job_record` VALUES (314, '运维工程师', '字节跳动', 25000, '沈阳', '汽车', 92989, '东北大学', '护理学');
INSERT INTO `user_job_record` VALUES (315, '律师', '商汤科技', 180000, '太原', '大数据', 17976, '浙江大学', '通信工程');
INSERT INTO `user_job_record` VALUES (316, '测试工程师', '一加', 80000, '银川', '新能源', 68710, '中南大学', '信息安全');
INSERT INTO `user_job_record` VALUES (317, '产品经理', '网易游戏', 28000, '天津', '家电', 31071, '重庆邮电大学', '基础医学');
INSERT INTO `user_job_record` VALUES (318, '律师', '一加', 95000, '厦门', '人工智能', 17900, '中国科学技术大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (319, '编辑', '腾讯', 150000, '太原', '咨询', 80476, '武汉大学', '飞行器动力工程');
INSERT INTO `user_job_record` VALUES (320, '人力资源', '浪潮集团', 25000, '上海', '法律', 38208, '哈尔滨工程大学', '数字媒体技术');
INSERT INTO `user_job_record` VALUES (321, '全栈工程师', '海尔', 40000, '西安', '家电', 69152, '山东大学', '放射医学');
INSERT INTO `user_job_record` VALUES (322, '翻译', 'vivo', 200000, '银川', '医疗', 32893, '东南大学', '航空航天工程');
INSERT INTO `user_job_record` VALUES (323, '医生', '理想汽车', 15000, '厦门', '投资', 90656, '南京理工大学', '区块链工程');
INSERT INTO `user_job_record` VALUES (324, '前端开发', '寒武纪', 85000, '呼和浩特', '体育', 30702, '清华大学', '生物医学工程');
INSERT INTO `user_job_record` VALUES (325, '数据库工程师', '中国石油', 90000, '银川', '交通', 28342, '中南大学', '汉语言文学');
INSERT INTO `user_job_record` VALUES (326, '编辑', '荣耀', 20000, '呼和浩特', '通信', 83541, '西安电子科技大学', '儿科学');
INSERT INTO `user_job_record` VALUES (327, '深度学习工程师', '中国移动', 85000, '广州', '政府', 17320, '吉林大学', '新能源材料与器件');
INSERT INTO `user_job_record` VALUES (328, '律师', '金山软件', 55000, '青岛', '制造', 20462, '北京师范大学', '口腔医学技术');
INSERT INTO `user_job_record` VALUES (329, '计算机视觉工程师', '京东', 22000, '成都', '游戏', 56468, '南开大学', '能源与动力工程');
INSERT INTO `user_job_record` VALUES (330, '机械工程师', '网易游戏', 8000, '北京', '游戏', 65372, '中山大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (331, '软件工程师', '携程', 30000, '兰州', '法律', 38264, '哈尔滨工程大学', '临床医学');
INSERT INTO `user_job_record` VALUES (332, '自然语言处理工程师', '旷视科技', 100000, '南宁', '环保', 60834, '哈尔滨工业大学', '药学');
INSERT INTO `user_job_record` VALUES (333, '全栈工程师', '小鹏汽车', 15000, '深圳', '游戏', 22881, '北京邮电大学', '微电子科学与工程');
INSERT INTO `user_job_record` VALUES (334, '销售代表', 'OPPO', 45000, '福州', '环保', 41822, '东南大学', '基础医学');
INSERT INTO `user_job_record` VALUES (335, '计算机视觉工程师', '一加', 35000, '厦门', '能源', 81803, '哈尔滨工业大学', '飞行器动力工程');
INSERT INTO `user_job_record` VALUES (336, '测试工程师', '科大讯飞', 40000, '石家庄', '电子商务', 39559, '清华大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (337, '自然语言处理工程师', '小鹏汽车', 22000, '西宁', '房地产', 71008, '西南交通大学', '中医学');
INSERT INTO `user_job_record` VALUES (338, '编辑', '金山软件', 65000, '深圳', '交通', 61781, '武汉大学', '眼视光学');
INSERT INTO `user_job_record` VALUES (339, '软件工程师', '字节跳动', 35000, '广州', '咨询', 86325, '南京大学', '物理学');
INSERT INTO `user_job_record` VALUES (340, '项目经理', '招商银行', 30000, '沈阳', '通信', 52329, '山东大学', '高分子材料与工程');
INSERT INTO `user_job_record` VALUES (341, '编辑', '招商银行', 150000, '银川', '环保', 87232, '南京邮电大学', '口腔医学');
INSERT INTO `user_job_record` VALUES (342, '运营专员', '科大讯飞', 75000, '香港', '教育', 84204, '中山大学', '儿科学');
INSERT INTO `user_job_record` VALUES (343, '软件工程师', '搜狐', 100000, '石家庄', '房地产', 24467, '西安电子科技大学', '药学');
INSERT INTO `user_job_record` VALUES (344, '数据库工程师', '中兴通讯', 35000, '西安', '通信', 14795, '湖南大学', '精神医学');
INSERT INTO `user_job_record` VALUES (345, 'UI设计师', '中兴通讯', 30000, '合肥', '军工', 46470, '西安电子科技大学', '电子科学与技术');
INSERT INTO `user_job_record` VALUES (346, '教师', '新浪', 40000, '沈阳', '传媒', 96434, '中南大学', '核工程与核技术');
INSERT INTO `user_job_record` VALUES (347, '机械工程师', '拼多多', 65000, '台北', '服装', 72746, '上海交通大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (348, '产品经理', '寒武纪', 85000, '兰州', '旅游', 72218, '华中科技大学', '软件工程');
INSERT INTO `user_job_record` VALUES (349, '产品经理', '网易', 60000, '呼和浩特', '区块链', 93677, '华南理工大学', '飞行器动力工程');
INSERT INTO `user_job_record` VALUES (350, '人力资源', '网易游戏', 100000, '兰州', '半导体', 45715, '中国科学技术大学', '心理学');
INSERT INTO `user_job_record` VALUES (351, '数据库工程师', '美团', 28000, '深圳', '保险', 82728, '华中科技大学', '精神医学');
INSERT INTO `user_job_record` VALUES (352, '教师', 'vivo', 40000, '拉萨', '能源', 98468, '武汉大学', '数字媒体技术');
INSERT INTO `user_job_record` VALUES (353, '运维工程师', '旷视科技', 150000, '贵阳', '通信', 97183, '中国农业大学', '康复治疗学');
INSERT INTO `user_job_record` VALUES (354, '律师', '用友网络', 40000, '重庆', '投资', 48984, '中国科学技术大学', '微电子科学与工程');
INSERT INTO `user_job_record` VALUES (355, '人工智能工程师', '360', 50000, '上海', '体育', 15649, '湖南大学', '康复治疗学');
INSERT INTO `user_job_record` VALUES (356, '深度学习工程师', '一加', 18000, '济南', '建筑', 53319, '杭州电子科技大学', '飞行器动力工程');
INSERT INTO `user_job_record` VALUES (357, '产品经理', '携程', 8000, '大连', '生物医药', 81381, '华东师范大学', '食品质量与安全');
INSERT INTO `user_job_record` VALUES (358, '医生', '科大讯飞', 60000, '北京', '军工', 92533, '电子科技大学', '医学检验技术');
INSERT INTO `user_job_record` VALUES (359, '翻译', '蚂蚁金服', 85000, '贵阳', '体育', 36529, '吉林大学', '会计学');
INSERT INTO `user_job_record` VALUES (360, '软件工程师', '华为', 15000, '长春', '零售', 46223, '厦门大学', '生物技术');
INSERT INTO `user_job_record` VALUES (361, '建筑师', '小马智行', 15000, '合肥', '房地产', 36061, '清华大学', '口腔医学技术');
INSERT INTO `user_job_record` VALUES (362, '翻译', '搜狐', 70000, '天津', '军工', 85309, '东北大学', '精神医学');
INSERT INTO `user_job_record` VALUES (363, '教师', 'vivo', 180000, '深圳', '半导体', 47084, '大连理工大学', '药学');
INSERT INTO `user_job_record` VALUES (364, '算法工程师', '寒武纪', 100000, '武汉', '生物医药', 46316, '重庆大学', '法医学');
INSERT INTO `user_job_record` VALUES (365, '自然语言处理工程师', '联想', 80000, '哈尔滨', '基金', 84744, '中山大学', '光电信息科学与工程');
INSERT INTO `user_job_record` VALUES (366, '教师', '美团', 90000, '成都', '农业', 32522, '浙江大学', '法医学');
INSERT INTO `user_job_record` VALUES (367, '人力资源', '百度', 80000, '武汉', '家电', 10592, '电子科技大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (368, '市场专员', '科大讯飞', 12000, '上海', '制造', 78140, '同济大学', '物联网工程');
INSERT INTO `user_job_record` VALUES (369, '测试工程师', '荣耀', 22000, '乌鲁木齐', '汽车', 24136, '同济大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (370, '机械工程师', '360', 90000, '武汉', '体育', 11217, '电子科技大学', '儿科学');
INSERT INTO `user_job_record` VALUES (371, '软件工程师', 'OPPO', 8000, '哈尔滨', '证券', 67735, '西安电子科技大学', '心理学');
INSERT INTO `user_job_record` VALUES (372, '市场专员', '华为', 18000, '深圳', '体育', 58514, '厦门大学', '物理学');
INSERT INTO `user_job_record` VALUES (373, '机器学习工程师', '寒武纪', 55000, '长沙', '文化娱乐', 48770, '华东师范大学', '材料物理');
INSERT INTO `user_job_record` VALUES (374, '网络安全工程师', '用友网络', 25000, '成都', '证券', 92078, '华东师范大学', '护理学');
INSERT INTO `user_job_record` VALUES (375, '编辑', '滴滴出行', 70000, '广州', '服装', 42358, '大连理工大学', '智能制造工程');
INSERT INTO `user_job_record` VALUES (376, '数据分析师', '华为', 50000, '北京', '区块链', 21149, '南京邮电大学', '中医学');
INSERT INTO `user_job_record` VALUES (377, '后端开发', '中兴通讯', 12000, '大连', '区块链', 41506, '华南理工大学', '数字媒体技术');
INSERT INTO `user_job_record` VALUES (378, '软件工程师', 'vivo', 40000, '太原', '交通', 32325, '兰州大学', '法学');
INSERT INTO `user_job_record` VALUES (379, '机器学习工程师', '科大讯飞', 60000, '沈阳', '制造', 82750, '华中科技大学', '化学工程与工艺');
INSERT INTO `user_job_record` VALUES (380, '人工智能工程师', '中国石油', 90000, '郑州', '广告', 55687, '西北工业大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (381, '教师', '中国建筑', 20000, '澳门', '能源', 88337, '浙江大学', '应用化学');
INSERT INTO `user_job_record` VALUES (382, '人工智能工程师', '平安保险', 80000, '沈阳', '教育', 14405, '南京大学', '儿科学');
INSERT INTO `user_job_record` VALUES (383, '运维工程师', '寒武纪', 18000, '合肥', '环保', 69607, '中国人民大学', '化学工程与工艺');
INSERT INTO `user_job_record` VALUES (384, '人力资源', '中国建筑', 18000, '苏州', '金融', 30514, '上海交通大学', '放射医学');
INSERT INTO `user_job_record` VALUES (385, '律师', 'vivo', 60000, '南宁', '军工', 88537, '北京大学', '放射医学');
INSERT INTO `user_job_record` VALUES (386, '建筑师', '海尔', 65000, '西安', '生物医药', 74790, '湖南大学', '电子信息工程');
INSERT INTO `user_job_record` VALUES (387, '人工智能工程师', '百度', 90000, '拉萨', '军工', 56682, '兰州大学', '大数据技术');
INSERT INTO `user_job_record` VALUES (388, 'UI设计师', '阿里巴巴', 30000, '沈阳', '环保', 61519, '天津大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (389, '市场专员', '中国石油', 12000, '合肥', '医疗', 88059, '南京邮电大学', '临床医学');
INSERT INTO `user_job_record` VALUES (390, '财务专员', '用友网络', 22000, '南京', '物联网', 72949, '清华大学', '基础医学');
INSERT INTO `user_job_record` VALUES (391, '前端开发', '京东', 10000, '武汉', '人工智能', 41824, '北京邮电大学', '区块链工程');
INSERT INTO `user_job_record` VALUES (392, '翻译', '快手', 8000, '长春', '物联网', 21251, '武汉大学', '制药工程');
INSERT INTO `user_job_record` VALUES (393, '自然语言处理工程师', '京东', 65000, '大连', '基金', 42150, '中国农业大学', '区块链工程');
INSERT INTO `user_job_record` VALUES (394, '自然语言处理工程师', '360', 10000, '昆明', '环保', 63577, '西南交通大学', '环境工程');
INSERT INTO `user_job_record` VALUES (395, '市场专员', '联想', 20000, '天津', '投资', 17659, '西安电子科技大学', '人工智能');
INSERT INTO `user_job_record` VALUES (396, '自然语言处理工程师', '快手', 30000, '成都', '文化娱乐', 58703, '华南理工大学', '化学工程');
INSERT INTO `user_job_record` VALUES (397, '计算机视觉工程师', '滴滴出行', 10000, '太原', '房地产', 33690, '华东师范大学', '资源循环科学与工程');
INSERT INTO `user_job_record` VALUES (398, '测试工程师', '中国石油', 100000, '重庆', '政府', 75176, '重庆邮电大学', '环境工程');
INSERT INTO `user_job_record` VALUES (399, '后端开发', '中国建筑', 12000, '西安', '制造', 22182, '重庆大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (400, '市场专员', '拼多多', 18000, '北京', '咨询', 56742, '武汉大学', '卫生检验与检疫');
INSERT INTO `user_job_record` VALUES (401, '教师', '旷视科技', 85000, '银川', '基金', 93357, '同济大学', '法医学');
INSERT INTO `user_job_record` VALUES (402, '后端开发', '招商银行', 150000, '郑州', '新能源', 89154, '西北工业大学', '数据科学');
INSERT INTO `user_job_record` VALUES (403, '网络安全工程师', '浪潮集团', 90000, '天津', '金融', 20664, '北京邮电大学', '飞行器制造工程');
INSERT INTO `user_job_record` VALUES (404, '项目经理', '联想', 22000, '重庆', '保险', 16664, '大连理工大学', '光电信息科学与工程');
INSERT INTO `user_job_record` VALUES (405, '自然语言处理工程师', '快手', 90000, '大连', '云计算', 77605, '北京邮电大学', '能源与动力工程');
INSERT INTO `user_job_record` VALUES (406, '算法工程师', '旷视科技', 200000, '南京', '新能源', 34686, '浙江大学', '化学');
INSERT INTO `user_job_record` VALUES (407, '自然语言处理工程师', 'vivo', 200000, '杭州', '教育', 18606, '北京航空航天大学', '儿科学');
INSERT INTO `user_job_record` VALUES (408, '运维工程师', '滴滴出行', 90000, '呼和浩特', '物流', 54299, '华南理工大学', '电子科学与技术');
INSERT INTO `user_job_record` VALUES (409, '律师', '中国银行', 75000, '天津', '人工智能', 63666, '重庆邮电大学', '飞行器环境与生命保障工程');
INSERT INTO `user_job_record` VALUES (410, '算法工程师', '用友网络', 200000, '南京', '物流', 60422, '中国农业大学', '制药工程');
INSERT INTO `user_job_record` VALUES (411, '前端开发', 'OPPO', 80000, '台北', '餐饮', 33352, '华南理工大学', '人工智能');
INSERT INTO `user_job_record` VALUES (412, '销售代表', '京东', 12000, '呼和浩特', '互联网', 53489, '四川大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (413, '人工智能工程师', '360', 95000, '郑州', '制造', 60809, '浙江大学', '材料科学');
INSERT INTO `user_job_record` VALUES (414, '产品经理', '旷视科技', 75000, '西安', '半导体', 94168, '杭州电子科技大学', '精神医学');
INSERT INTO `user_job_record` VALUES (415, '前端开发', '小鹏汽车', 85000, '西宁', '半导体', 47228, '南开大学', '飞行器设计与工程');
INSERT INTO `user_job_record` VALUES (416, '计算机视觉工程师', '360', 40000, '重庆', '新能源', 11343, '华南师范大学', '法医学');
INSERT INTO `user_job_record` VALUES (417, '编辑', 'vivo', 65000, '厦门', '基金', 16268, '重庆邮电大学', '材料物理');
INSERT INTO `user_job_record` VALUES (418, '翻译', '拼多多', 12000, '苏州', '投资', 94930, '山东大学', '化学工程与工艺');
INSERT INTO `user_job_record` VALUES (419, 'UI设计师', '蔚来汽车', 30000, '武汉', '法律', 44964, '北京大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (420, '律师', '网易', 75000, '青岛', '能源', 62040, '天津大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (421, '销售代表', '蔚来汽车', 12000, '长春', '军工', 35788, '中国科学技术大学', '医学影像技术');
INSERT INTO `user_job_record` VALUES (422, '人力资源', '荣耀', 30000, '昆明', '农业', 69699, '哈尔滨工业大学', '儿科学');
INSERT INTO `user_job_record` VALUES (423, '自然语言处理工程师', '联想', 50000, '广州', '电子商务', 94877, '北京航空航天大学', '食品科学与工程');
INSERT INTO `user_job_record` VALUES (424, '编辑', '小鹏汽车', 12000, '武汉', '建筑', 80142, '西安交通大学', '海洋资源开发技术');
INSERT INTO `user_job_record` VALUES (425, '律师', '小鹏汽车', 120000, '大连', '传媒', 40766, '中南大学', '智能制造工程');
INSERT INTO `user_job_record` VALUES (426, 'UI设计师', '科大讯飞', 35000, '北京', '文化娱乐', 89667, '大连理工大学', '儿科学');
INSERT INTO `user_job_record` VALUES (427, '测试工程师', '网易', 35000, '西宁', '基金', 94908, '东北师范大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (428, '编辑', '拼多多', 75000, '银川', '汽车', 12653, '东南大学', '中医学');
INSERT INTO `user_job_record` VALUES (429, '教师', '小米', 50000, '合肥', '电子商务', 83276, '清华大学', '法医学');
INSERT INTO `user_job_record` VALUES (430, '人力资源', '浪潮集团', 20000, '哈尔滨', '云计算', 43560, '清华大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (431, '深度学习工程师', '荣耀', 70000, '长春', '汽车', 14198, '北京邮电大学', '眼视光医学');
INSERT INTO `user_job_record` VALUES (432, '建筑师', '美团', 90000, '天津', '军工', 92543, '大连理工大学', '麻醉学');
INSERT INTO `user_job_record` VALUES (433, 'UI设计师', '小鹏汽车', 22000, '深圳', '投资', 81920, '清华大学', '工业设计');
INSERT INTO `user_job_record` VALUES (434, '数据库工程师', '中国银行', 30000, '兰州', '体育', 84243, '清华大学', '资源循环科学与工程');
INSERT INTO `user_job_record` VALUES (435, '前端开发', '快手', 80000, '海口', '军工', 75850, '东北师范大学', '计算机科学与技术');
INSERT INTO `user_job_record` VALUES (436, '后端开发', '拼多多', 100000, '贵阳', '医疗', 49422, '南京大学', '医学实验技术');
INSERT INTO `user_job_record` VALUES (437, '建筑师', '蔚来汽车', 200000, '大连', '物联网', 96541, '北京大学', '资源循环科学与工程');
INSERT INTO `user_job_record` VALUES (438, '运维工程师', '新浪', 25000, '武汉', '云计算', 27260, '东南大学', '海洋资源开发技术');
INSERT INTO `user_job_record` VALUES (439, '数据库工程师', '快手', 80000, '深圳', '教育', 62732, '清华大学', '心理学');
INSERT INTO `user_job_record` VALUES (440, '编辑', '一加', 8000, '天津', '咨询', 81257, '重庆大学', '风景园林');
INSERT INTO `user_job_record` VALUES (441, '数据分析师', '旷视科技', 28000, '沈阳', '军工', 21902, '西安交通大学', '眼视光学');
INSERT INTO `user_job_record` VALUES (442, 'UI设计师', '联想', 20000, '西安', '通信', 75594, '北京师范大学', '制药工程');
INSERT INTO `user_job_record` VALUES (443, '医生', '小鹏汽车', 12000, '贵阳', '物流', 56346, '清华大学', '心理学');
INSERT INTO `user_job_record` VALUES (444, '教师', '中国移动', 65000, '澳门', '服装', 75666, '西安交通大学', '药学');
INSERT INTO `user_job_record` VALUES (445, '销售代表', '360', 200000, '济南', '零售', 80463, '中国科学技术大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (446, '数据库工程师', '寒武纪', 8000, '西安', '咨询', 71622, '北京理工大学', '区块链工程');
INSERT INTO `user_job_record` VALUES (447, '人工智能工程师', '腾讯', 30000, '福州', '政府', 47106, '东南大学', '制药工程');
INSERT INTO `user_job_record` VALUES (448, '数据分析师', '招商银行', 50000, '广州', '咨询', 53295, '复旦大学', '光电信息科学与工程');
INSERT INTO `user_job_record` VALUES (449, '机械工程师', '新浪', 70000, '呼和浩特', '物联网', 99797, '复旦大学', '法医学');
INSERT INTO `user_job_record` VALUES (450, '前端开发', '地平线', 22000, '福州', '政府', 63918, '吉林大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (451, '全栈工程师', '地平线', 18000, '广州', '环保', 91647, '复旦大学', '飞行器制造工程');
INSERT INTO `user_job_record` VALUES (452, '软件工程师', '用友网络', 35000, '大连', '游戏', 31913, '重庆大学', '新能源材料与器件');
INSERT INTO `user_job_record` VALUES (453, '教师', '京东', 70000, '西宁', '基金', 42195, '哈尔滨工程大学', '金融学');
INSERT INTO `user_job_record` VALUES (454, '网络安全工程师', '一加', 40000, '武汉', '传媒', 73058, '东北大学', '医学影像技术');
INSERT INTO `user_job_record` VALUES (455, '人力资源', '理想汽车', 120000, '拉萨', '法律', 17943, '中国人民大学', '城乡规划');
INSERT INTO `user_job_record` VALUES (456, '财务专员', '搜狐', 90000, '南宁', '文化娱乐', 62389, '南京航空航天大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (457, '律师', '滴滴出行', 70000, '海口', '游戏', 36025, '北京理工大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (458, '后端开发', '网易游戏', 70000, '大连', '农业', 11898, '西安电子科技大学', '精神医学');
INSERT INTO `user_job_record` VALUES (459, '前端开发', '用友网络', 15000, '银川', '旅游', 57407, '厦门大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (460, '销售代表', '小马智行', 55000, '南宁', '广告', 88408, '东南大学', '海洋资源开发技术');
INSERT INTO `user_job_record` VALUES (461, '教师', '用友网络', 100000, '青岛', '生物医药', 49892, '四川大学', '高分子材料与工程');
INSERT INTO `user_job_record` VALUES (462, '市场专员', '联想', 80000, '西宁', '云计算', 61679, '杭州电子科技大学', '医学影像学');
INSERT INTO `user_job_record` VALUES (463, '运维工程师', '蚂蚁金服', 40000, '香港', '基金', 97390, '东南大学', '能源化学工程');
INSERT INTO `user_job_record` VALUES (464, '市场专员', '中国移动', 30000, '石家庄', '基金', 27244, '哈尔滨工业大学', '材料化学');
INSERT INTO `user_job_record` VALUES (465, '自然语言处理工程师', '网易游戏', 85000, '大连', '电子商务', 60077, '中国人民大学', '药学');
INSERT INTO `user_job_record` VALUES (466, '网络安全工程师', '一加', 10000, '福州', '广告', 52941, '华东师范大学', '食品科学与工程');
INSERT INTO `user_job_record` VALUES (467, '人力资源', '新浪', 28000, '贵阳', '制造', 58787, '重庆大学', '预防医学');
INSERT INTO `user_job_record` VALUES (468, '财务专员', '蚂蚁金服', 95000, '太原', '农业', 36655, '厦门大学', '康复治疗学');
INSERT INTO `user_job_record` VALUES (469, '网络安全工程师', '地平线', 40000, '哈尔滨', '制造', 85629, '武汉大学', '电子科学与技术');
INSERT INTO `user_job_record` VALUES (470, '医生', '美团', 150000, '厦门', '汽车', 11072, '中山大学', '英语');
INSERT INTO `user_job_record` VALUES (471, '全栈工程师', '中国石油', 15000, '太原', '游戏', 34782, '厦门大学', '精神医学');
INSERT INTO `user_job_record` VALUES (472, '软件工程师', 'vivo', 90000, '长沙', '电子商务', 67618, '西北工业大学', '机械工程');
INSERT INTO `user_job_record` VALUES (473, '全栈工程师', '海尔', 90000, '成都', '餐饮', 49148, '武汉大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (474, '软件工程师', '美团', 120000, '乌鲁木齐', '通信', 25107, '华东师范大学', '临床医学');
INSERT INTO `user_job_record` VALUES (475, '数据库工程师', '中国建筑', 40000, '银川', '文化娱乐', 80602, '哈尔滨工业大学', '医学信息工程');
INSERT INTO `user_job_record` VALUES (476, '市场专员', '地平线', 70000, '苏州', '通信', 75113, '大连理工大学', '智能医学工程');
INSERT INTO `user_job_record` VALUES (477, '销售代表', '荣耀', 80000, '呼和浩特', '环保', 48917, '东北大学', '新闻学');
INSERT INTO `user_job_record` VALUES (478, '医生', '百度', 28000, '大连', '生物医药', 59543, '杭州电子科技大学', '光电信息科学与工程');
INSERT INTO `user_job_record` VALUES (479, '网络安全工程师', '小米', 200000, '南京', '医疗', 73635, '杭州电子科技大学', '精神医学');
INSERT INTO `user_job_record` VALUES (480, '翻译', '网易游戏', 20000, '长沙', '新能源', 10440, '四川大学', '制药工程');
INSERT INTO `user_job_record` VALUES (481, 'UI设计师', '360', 22000, '北京', '半导体', 93530, '西南交通大学', '生物医学科学');
INSERT INTO `user_job_record` VALUES (482, '产品经理', '用友网络', 85000, '兰州', '物流', 48578, '山东大学', '通信工程');
INSERT INTO `user_job_record` VALUES (483, '运维工程师', '腾讯', 22000, '长春', '证券', 75783, '北京邮电大学', '能源与动力工程');
INSERT INTO `user_job_record` VALUES (484, '项目经理', '京东', 95000, '北京', '零售', 89089, '吉林大学', '海洋资源开发技术');
INSERT INTO `user_job_record` VALUES (485, '医生', '寒武纪', 180000, '长春', '证券', 10899, '湖南大学', '医学实验技术');
INSERT INTO `user_job_record` VALUES (486, '律师', '网易游戏', 45000, '昆明', '传媒', 78231, '武汉大学', '化学工程与工艺');
INSERT INTO `user_job_record` VALUES (487, '产品经理', '京东', 100000, '兰州', '能源', 24440, '南开大学', '生物科学');
INSERT INTO `user_job_record` VALUES (488, '测试工程师', '寒武纪', 8000, '海口', '法律', 93258, '武汉大学', '精神医学');
INSERT INTO `user_job_record` VALUES (489, '销售代表', '商汤科技', 22000, '拉萨', '半导体', 69072, '杭州电子科技大学', '精神医学');
INSERT INTO `user_job_record` VALUES (490, '运营专员', '蚂蚁金服', 35000, '西安', '物联网', 85127, '浙江大学', '卫生检验与检疫');
INSERT INTO `user_job_record` VALUES (491, '软件工程师', '中国银行', 200000, '银川', '房地产', 18681, '东南大学', '基础医学');
INSERT INTO `user_job_record` VALUES (492, '教师', '小马智行', 95000, '拉萨', '咨询', 46021, '浙江大学', '会计学');
INSERT INTO `user_job_record` VALUES (493, '项目经理', '理想汽车', 90000, '拉萨', '新能源', 58367, '吉林大学', '光电信息科学与工程');
INSERT INTO `user_job_record` VALUES (494, '深度学习工程师', '滴滴出行', 25000, '北京', '金融', 72417, '华中科技大学', '生物技术');
INSERT INTO `user_job_record` VALUES (495, '教师', '小鹏汽车', 65000, '兰州', '交通', 38031, '湖南大学', '新能源材料与器件');
INSERT INTO `user_job_record` VALUES (496, '数据库工程师', '中国移动', 10000, '大连', '物流', 31051, '杭州电子科技大学', '食品质量与安全');
INSERT INTO `user_job_record` VALUES (497, '前端开发', '京东', 85000, '广州', '房地产', 64708, '西南交通大学', '化学工程与工艺');
INSERT INTO `user_job_record` VALUES (498, '市场专员', '平安保险', 8000, '银川', '物流', 58000, '西北工业大学', '机器人工程');
INSERT INTO `user_job_record` VALUES (499, '机器学习工程师', '用友网络', 35000, '西安', '物流', 51738, '北京航空航天大学', '建筑学');
INSERT INTO `user_job_record` VALUES (500, '深度学习工程师', '美团', 20000, '成都', '家电', 91537, '华南理工大学', '飞行器环境与生命保障工程');

SET FOREIGN_KEY_CHECKS = 1;
