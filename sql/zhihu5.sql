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

 Date: 20/06/2023 11:22:23
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

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

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` bigint NOT NULL,
  `answer_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 3, 3);
INSERT INTO `collect` VALUES (2, 1, 1);
INSERT INTO `collect` VALUES (3, 2, 1);
INSERT INTO `collect` VALUES (4, 4, 1);

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `id` bigint NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `follower_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES (1, 1, 2);
INSERT INTO `follow` VALUES (2, 1, 3);

-- ----------------------------
-- Table structure for followque
-- ----------------------------
DROP TABLE IF EXISTS `followque`;
CREATE TABLE `followque`  (
  `id` bigint NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `question_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of followque
-- ----------------------------
INSERT INTO `followque` VALUES (1, 1, 1);
INSERT INTO `followque` VALUES (2, 1, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES (1, 1, 2, NULL);
INSERT INTO `session` VALUES (2, 1, 3, NULL);
INSERT INTO `session` VALUES (3, 2, 1, NULL);
INSERT INTO `session` VALUES (4, 2, 3, NULL);
INSERT INTO `session` VALUES (5, 1, 27, NULL);
INSERT INTO `session` VALUES (6, 1, 28, NULL);

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
INSERT INTO `user` VALUES (1, 'Lelouch', '111', '111', 'http://localhost:8080/images/icon4.jpg', NULL);
INSERT INTO `user` VALUES (2, 'SilverBullet', '222', '222', 'http://localhost:8080/images/icon5.jpg', NULL);
INSERT INTO `user` VALUES (3, 'hjc', '333', '333', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJDMqDIaicrd54D1Z1Tnf75iaavlf9CTBcPfQibIIxmzUDg8StzZiaicAf8sCQ0Br3lkxdcxuzz3UQnBgA/132', NULL);
INSERT INTO `user` VALUES (27, 'asdasd', '555', '555', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIO6eRuuA6V33GgQpIqnsAVXOuibYS0ibpQ4ev547iaHthIjFtqK0x2hDnSm5pWhVXicR2ZEYKQ5o9HMQ/132', NULL);
INSERT INTO `user` VALUES (28, 'bbbbbb', '444', '444', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIO6eRuuA6V33GgQpIqnsAVXOuibYS0ibpQ4ev547iaHthIjFtqK0x2hDnSm5pWhVXicR2ZEYKQ5o9HMQ/132', NULL);

SET FOREIGN_KEY_CHECKS = 1;
