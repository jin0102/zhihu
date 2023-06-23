/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : zhihu

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 23/06/2023 16:52:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer_ctnt` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `answer_time` datetime NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `question_id` bigint NULL DEFAULT NULL,
  `good` bigint NULL DEFAULT NULL,
  `answer_comment` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (1, '很有力balabala', NULL, 1, 1, 256, 20);
INSERT INTO `answer` VALUES (2, '很无力balabalaaaaa', NULL, 1, 1, 130, 11);
INSERT INTO `answer` VALUES (3, '很无力balabala', NULL, 3, 2, 112, 35);
INSERT INTO `answer` VALUES (4, 'qw', NULL, 1, 2, 4000, 76);
INSERT INTO `answer` VALUES (5, '我认为人工智能在最近几年突然成井喷式发展最重要的推动力就是Nvidia黄夹克家的CUDA之GPU将算力直接以几何级数的级别提升了，使能够真正在算力的加持下验证>改进>验证实现了螺旋上升...', NULL, 2, 2, 2333, 118);
INSERT INTO `answer` VALUES (6, '没有问题', NULL, 3, 3, 5454, 1233);
INSERT INTO `answer` VALUES (7, '在当今的社会，许多人都感到赚钱变得越来越难。以下是一些可能导致这种感觉的原因：\n货币贬值：随着通货膨胀的不断加剧，货币的购买力逐渐减弱。即使你每年的薪资增加了，但如果物价上涨的速度更快，你的实际购买力仍然会下降，因此感觉赚钱变得更难了。\n竞争激烈：随着人口的增长和经济的发展，就业市场变得越来越竞争激烈。这意味着公司要求雇员更加专业化、技术更加先进，或者更加有经验，导致许多人可能难以找到合适的工作，或者需要不断提升自己的技能才能保持竞争力。\n生活成本上升：生活成本包括房价、食品、医疗保健等，也是导致人们感到赚钱越来越难的原因之一。房价、医疗保健费用和学费等日常开支的上升，可能迫使人们在努力工作的同时，还要寻找其他收入来源，这进一步增加了赚钱的难度。\n技术革新：随着技术的不断进步，许多工作变得可以自动化，这可能导致一些工作岗位的减少。例如，在过去，许多公司需要人手来搬运货物，但现在这些工作往往被自动化仓储和物流系统所取代。这可能会导致一些人失去工作，或者需要学习新的技能来适应这种变化。', NULL, 3, 3, 1233, 222);
INSERT INTO `answer` VALUES (8, 'hjhjhjhjhj', NULL, 1, 1, 0, 0);
INSERT INTO `answer` VALUES (9, 'jjjjj', NULL, 1, 1, 0, 0);
INSERT INTO `answer` VALUES (10, 'null', NULL, 1, 1, 0, 0);
INSERT INTO `answer` VALUES (11, 'null', NULL, 1, 1, 0, 0);
INSERT INTO `answer` VALUES (12, 'null', NULL, 1, 1, 0, 0);
INSERT INTO `answer` VALUES (13, 'null', NULL, 1, 1, 0, 0);

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `send_user_id` bigint NULL DEFAULT NULL,
  `receive_user_id` bigint NULL DEFAULT NULL,
  `content` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `send_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (1, 3, 1, 'nihao', '2023-06-18 19:13:35');
INSERT INTO `chat` VALUES (2, 3, 2, '你好', '2023-06-18 19:14:15');
INSERT INTO `chat` VALUES (3, 2, 3, '哈哈哈', '2023-06-18 19:14:41');
INSERT INTO `chat` VALUES (4, 1, 3, '嘿嘿嘿', '2023-06-18 19:14:56');
INSERT INTO `chat` VALUES (5, 1, 2, 'ggg', '2023-06-19 09:06:08');
INSERT INTO `chat` VALUES (6, 2, 1, 'ffff', '2023-06-19 09:06:20');
INSERT INTO `chat` VALUES (7, 1, 2, 'hhh', '2023-06-19 19:08:36');
INSERT INTO `chat` VALUES (8, 1, 2, 'ghgh', '2023-06-19 19:09:13');
INSERT INTO `chat` VALUES (9, 1, 27, 'yyyyyy', '2023-06-19 22:13:11');
INSERT INTO `chat` VALUES (10, 1, 28, 'uuuuuu', '2023-06-19 22:13:21');
INSERT INTO `chat` VALUES (11, 1, 27, 'y', '2023-06-19 22:46:13');
INSERT INTO `chat` VALUES (12, 2, 1, '你好傻逼', '2023-06-20 11:16:22');
INSERT INTO `chat` VALUES (13, 3, 1, '去你妈的', '2023-06-20 11:16:44');
INSERT INTO `chat` VALUES (14, 27, 1, '迷迷糊糊', '2023-06-20 11:17:06');
INSERT INTO `chat` VALUES (15, 28, 1, '啊实打实的婚纱的贺卡上啥叫看到啥结婚打算哈哈哈哈哈啊大苏打实打实', '2023-06-20 11:17:24');
INSERT INTO `chat` VALUES (17, 1, 28, '222', '2023-06-21 10:30:49');
INSERT INTO `chat` VALUES (18, 1, 28, '333', '2023-06-21 10:35:08');
INSERT INTO `chat` VALUES (19, 1, 28, '444', '2023-06-21 10:35:43');
INSERT INTO `chat` VALUES (20, 1, 28, '555', '2023-06-21 10:36:35');
INSERT INTO `chat` VALUES (21, 1, 28, '666', '2023-06-21 10:36:42');
INSERT INTO `chat` VALUES (22, 1, 28, '777', '2023-06-21 10:36:44');
INSERT INTO `chat` VALUES (23, 1, 28, '888', '2023-06-21 10:36:46');
INSERT INTO `chat` VALUES (24, 1, 28, '999', '2023-06-21 10:36:48');
INSERT INTO `chat` VALUES (25, 1, 28, '000', '2023-06-21 10:36:50');
INSERT INTO `chat` VALUES (26, 1, 28, 'aaa', '2023-06-21 10:36:53');
INSERT INTO `chat` VALUES (27, 1, 28, 'sss', '2023-06-21 10:36:55');
INSERT INTO `chat` VALUES (28, 1, 28, 'ddd', '2023-06-21 10:36:58');
INSERT INTO `chat` VALUES (29, 1, 28, 'fff', '2023-06-21 10:37:01');
INSERT INTO `chat` VALUES (30, 1, 28, 'ggg', '2023-06-21 10:37:06');
INSERT INTO `chat` VALUES (31, 1, 28, 'hhh', '2023-06-21 16:07:58');
INSERT INTO `chat` VALUES (32, 1, 28, 'jjj', '2023-06-21 16:08:01');
INSERT INTO `chat` VALUES (33, 1, 28, 'kkk', '2023-06-21 16:08:04');
INSERT INTO `chat` VALUES (34, 1, 28, 'llll', '2023-06-21 16:08:08');
INSERT INTO `chat` VALUES (35, 1, 28, 'shaniao', '2023-06-21 16:08:17');
INSERT INTO `chat` VALUES (36, 1, 3, '1', '2023-06-21 16:15:14');
INSERT INTO `chat` VALUES (37, 1, 3, '2', '2023-06-21 16:15:15');
INSERT INTO `chat` VALUES (38, 1, 3, '3', '2023-06-21 16:15:17');
INSERT INTO `chat` VALUES (39, 1, 3, '4', '2023-06-21 16:15:18');
INSERT INTO `chat` VALUES (40, 1, 3, '5', '2023-06-21 16:15:19');
INSERT INTO `chat` VALUES (41, 1, 3, '6', '2023-06-21 16:15:20');
INSERT INTO `chat` VALUES (42, 1, 3, '7', '2023-06-21 16:15:21');
INSERT INTO `chat` VALUES (43, 1, 3, '8', '2023-06-21 16:15:23');
INSERT INTO `chat` VALUES (44, 1, 3, '9', '2023-06-21 16:15:24');
INSERT INTO `chat` VALUES (45, 1, 3, '0', '2023-06-21 16:15:26');
INSERT INTO `chat` VALUES (46, 1, 3, '11', '2023-06-21 16:15:28');
INSERT INTO `chat` VALUES (47, 1, 3, '22', '2023-06-21 16:15:30');
INSERT INTO `chat` VALUES (48, 1, 3, '33', '2023-06-21 16:15:31');
INSERT INTO `chat` VALUES (49, 1, 3, '44', '2023-06-21 16:15:33');
INSERT INTO `chat` VALUES (50, 1, 3, '55', '2023-06-21 16:15:34');
INSERT INTO `chat` VALUES (51, 1, 3, '66', '2023-06-21 16:15:35');
INSERT INTO `chat` VALUES (52, 1, 3, '77', '2023-06-21 16:15:37');
INSERT INTO `chat` VALUES (53, 1, 3, '88', '2023-06-21 16:15:38');
INSERT INTO `chat` VALUES (54, 1, 3, '99', '2023-06-21 16:15:40');
INSERT INTO `chat` VALUES (55, 1, 3, 'qq', '2023-06-21 16:38:33');
INSERT INTO `chat` VALUES (56, 1, 3, 'ww', '2023-06-21 16:38:34');
INSERT INTO `chat` VALUES (57, 1, 3, 'ee', '2023-06-21 16:38:35');
INSERT INTO `chat` VALUES (58, 1, 3, 'rr', '2023-06-21 16:38:37');
INSERT INTO `chat` VALUES (59, 1, 3, 'tt', '2023-06-21 16:38:39');
INSERT INTO `chat` VALUES (60, 1, 3, 'yy', '2023-06-21 16:38:41');
INSERT INTO `chat` VALUES (61, 1, 3, 'uu', '2023-06-21 16:38:42');
INSERT INTO `chat` VALUES (62, 1, 3, 'ii', '2023-06-21 16:38:44');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 3, 3);
INSERT INTO `collect` VALUES (2, 1, 1);
INSERT INTO `collect` VALUES (3, 2, 1);
INSERT INTO `collect` VALUES (4, 4, 1);
INSERT INTO `collect` VALUES (5, 3, 1);

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL,
  `follower_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES (1, 1, 2);
INSERT INTO `follow` VALUES (2, 1, 3);
INSERT INTO `follow` VALUES (3, 1, 1);

-- ----------------------------
-- Table structure for followque
-- ----------------------------
DROP TABLE IF EXISTS `followque`;
CREATE TABLE `followque`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL,
  `question_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of followque
-- ----------------------------
INSERT INTO `followque` VALUES (1, 1, 1);
INSERT INTO `followque` VALUES (2, 1, 2);
INSERT INTO `followque` VALUES (3, 1, 1);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imageurl` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `image_title` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint NOT NULL,
  `notice_type` bigint NULL DEFAULT NULL,
  `notice_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_text` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `comment_num` varchar(45) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '如果人工智能迎来下一个寒冬，你认为会是卡在什么问题上？', 2, '2333');
INSERT INTO `question` VALUES (2, '有哪些书非常有利于年轻人未来发展？', 1, '18');
INSERT INTO `question` VALUES (3, '很大的问题', 3, '433');
INSERT INTO `question` VALUES (4, '为什么感觉现在挣钱很难？', 3, NULL);

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user1_id` bigint NULL DEFAULT NULL,
  `user2_id` bigint NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES (1, 1, 2, NULL);
INSERT INTO `session` VALUES (2, 1, 3, NULL);
INSERT INTO `session` VALUES (3, 2, 1, NULL);
INSERT INTO `session` VALUES (4, 2, 3, NULL);
INSERT INTO `session` VALUES (5, 1, 27, NULL);
INSERT INTO `session` VALUES (6, 1, 28, NULL);
INSERT INTO `session` VALUES (8, 3, 1, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `imageurl` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Lelouch', '111', '111', 'http://localhost:8080/images/icon4.jpg', '红红火火恍恍惚惚1112');
INSERT INTO `user` VALUES (2, 'SilverBullet', '222', '222', 'http://localhost:8080/images/icon5.jpg', '顶顶顶顶顶胆大妄为');
INSERT INTO `user` VALUES (3, 'hjc', '333', '333', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJDMqDIaicrd54D1Z1Tnf75iaavlf9CTBcPfQibIIxmzUDg8StzZiaicAf8sCQ0Br3lkxdcxuzz3UQnBgA/132', '地对地导弹都');
INSERT INTO `user` VALUES (27, 'asdasd', '555', '555', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIO6eRuuA6V33GgQpIqnsAVXOuibYS0ibpQ4ev547iaHthIjFtqK0x2hDnSm5pWhVXicR2ZEYKQ5o9HMQ/132', '尺寸v饿色色的但是');
INSERT INTO `user` VALUES (28, 'bbbbbb', '444', '444', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIO6eRuuA6V33GgQpIqnsAVXOuibYS0ibpQ4ev547iaHthIjFtqK0x2hDnSm5pWhVXicR2ZEYKQ5o9HMQ/132', '阿萨大大伟大的时代');

SET FOREIGN_KEY_CHECKS = 1;
