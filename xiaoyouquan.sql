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

 Date: 11/04/2025 11:02:21
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
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '0表示concern关注的是用户id,1表示concern关注的是岗位id',
  `concerned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `publish_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `good_nums` int NOT NULL DEFAULT 0,
  `view_nums` int NOT NULL DEFAULT 0,
  `is_deleted` int NOT NULL DEFAULT 0,
  `comment_nums` int NOT NULL DEFAULT 0,
  `retweet` int NOT NULL DEFAULT 0 COMMENT '转发量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1, '睡不着了,哥们国企开出6*12...', 1, '2024-12-17 15:21:34', 124, 1001, 0, 22, 0);
INSERT INTO `post` VALUES (2, '人人都在说大厂,有没有值得去的中小厂推荐?', 2, '2024-12-10 15:22:18', 232, 2000, 0, 255, 0);
INSERT INTO `post` VALUES (3, '家人们,现在大环境咋样了啊?', 3, '2024-12-13 19:23:01', 222, 50000, 0, 45, 0);
INSERT INTO `post` VALUES (4, '华子给我发offer了', 4, '2024-12-14 08:23:59', 670, 3523, 0, 22, 0);
INSERT INTO `post` VALUES (5, '我是IDEA添加的数据', 1, '2024-12-18 15:03:28', 11, 4, 0, 0, 0);
INSERT INTO `post` VALUES (6, '有一说一，今年这春季实习真的卷，不仅是来的早，而且大家好像都很在意的样子。经历了第一波校招的毒打，现在已经哀嚎一片。', 6, '2025-04-10 23:24:10', 33, 22, 0, 55, 0);
INSERT INTO `post` VALUES (7, '实习经历不是给HR看的，你只要写了实习经历，HR是不对你实习经历进行过滤的，除非你不会写写的非常敷衍。', 3, '2025-04-09 23:26:03', 66, 66, 0, 0, 0);
INSERT INTO `post` VALUES (8, '实习，不要迷恋大厂光环，与其在大厂打杂不如去中小厂找一个业务结合紧密的项目，干点实事', 7, '2025-04-02 23:27:38', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (9, '大厂就像可口可乐，它只是在货架上放着都没到你手里你就知道它味道错不了。', 7, '2025-04-11 23:29:18', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (10, '小厂就像杂牌小甜水，可能给你意想不到的惊喜，但也有概率给你难以预料的惊吓。', 7, '2025-04-05 23:30:32', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (11, '真心建议大家海投，把面试当成升级打怪，面一个挂一个后我也是练就超厚脸皮法！！！', 8, '2025-04-17 23:31:50', 2, 2, 0, 0, 0);
INSERT INTO `post` VALUES (12, '求求各位hr看看我吧', 4, '2025-04-12 23:32:58', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (13, '毁灭吧！真的毕业即失业了。还是没有进展，我真的哭了', 9, '2025-04-10 23:35:22', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (14, '学Java的下场，学吧，这就是下场。', 9, '2025-04-09 23:36:30', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (15, '目前投了很多大厂，就是毫无头绪的海投，感觉作为一个双非工科女真的完蛋了。', 10, '2025-04-09 23:42:53', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (16, '大一大二的暑假全用来打暑假工了，做的是活动摄影师的工作，完全没想到可以找专业相关的实习。', 10, '2025-04-10 23:44:19', 0, 0, 0, 0, 0);
INSERT INTO `post` VALUES (17, '上个月投了鹅厂的商务产品实习生，当时乱投的，没有了解这是个销售岗位，然后被邀请进了群面。', 10, '2025-04-10 23:45:53', 0, 0, 0, 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `user` VALUES (10, '找工作的茶叶蛋', 1, 26, '正在求职', 0, '郑州大学', '哈尔滨工业大学', NULL, NULL, NULL, NULL, '本科', '本科', NULL, NULL, NULL, NULL, NULL, NULL, '123456', 0);

SET FOREIGN_KEY_CHECKS = 1;
