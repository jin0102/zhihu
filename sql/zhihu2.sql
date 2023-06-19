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

 Date: 19/06/2023 09:53:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` bigint NOT NULL,
  `answer_ctnt` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `answer_time` datetime NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `question_id` bigint NULL DEFAULT NULL,
  `good` varchar(45) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (1, 'qqq', NULL, 23, 9, NULL);
INSERT INTO `answer` VALUES (2, 'qwe', NULL, 23, 9, NULL);
INSERT INTO `answer` VALUES (3, '年轻人，跟你说句真话，没有什么书是必读的。你这么问，国学迷会跟你说四书必读，科学迷会跟你说时间简史必读，文学迷会跟你说百年孤独必读，信教的会跟你说圣经必读...', NULL, 26, 9, '112');
INSERT INTO `answer` VALUES (4, 'qw', NULL, 23, 9, NULL);
INSERT INTO `answer` VALUES (61, '我认为人工智能在最近几年突然成井喷式发展最重要的推动力就是Nvidia黄夹克家的CUDA之GPU将算力直接以几何级数的级别提升了，使能够真正在算力的加持下验证>改进>验证实现了螺旋上升...', NULL, 25, 9, '2333');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (1, 26, 27, 'nihao', '2023-06-18 19:13:35');
INSERT INTO `chat` VALUES (2, 27, 26, '你好', '2023-06-18 19:14:15');
INSERT INTO `chat` VALUES (3, 26, 27, '哈哈哈', '2023-06-18 19:14:41');
INSERT INTO `chat` VALUES (4, 27, 26, '嘿嘿嘿', '2023-06-18 19:14:56');
INSERT INTO `chat` VALUES (5, 1, 26, 'ggg', '2023-06-19 09:06:08');
INSERT INTO `chat` VALUES (6, 26, 1, 'ffff', '2023-06-19 09:06:20');

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
INSERT INTO `collect` VALUES (1, 3, 26);
INSERT INTO `collect` VALUES (2, 1, 23);
INSERT INTO `collect` VALUES (3, 2, 23);
INSERT INTO `collect` VALUES (4, 4, 23);

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
INSERT INTO `follow` VALUES (1, 23, 25);
INSERT INTO `follow` VALUES (2, 23, 26);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imageurl` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `image_title` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `question` VALUES (9, '如果人工智能迎来下一个寒冬，你认为会是卡在什么问题上？', 25, '2333');
INSERT INTO `question` VALUES (16, '有哪些书非常有利于年轻人未来发展？', 23, '18');

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
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of session
-- ----------------------------

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '戴拓', '123', '123456', NULL);
INSERT INTO `user` VALUES (2, '胡筠琛', '456', '123456', NULL);
INSERT INTO `user` VALUES (3, '章佳兵', '789', '123456', NULL);
INSERT INTO `user` VALUES (23, 'Lelouch', '333', '333', 'http://localhost:8080/images/icon4.jpg');
INSERT INTO `user` VALUES (24, '德克萨斯', NULL, NULL, NULL);
INSERT INTO `user` VALUES (25, 'SilverBullet', NULL, NULL, 'http://localhost:8080/images/icon5.jpg');
INSERT INTO `user` VALUES (26, 'hjc', '222', '222', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJDMqDIaicrd54D1Z1Tnf75iaavlf9CTBcPfQibIIxmzUDg8StzZiaicAf8sCQ0Br3lkxdcxuzz3UQnBgA/132');
INSERT INTO `user` VALUES (27, 'dt', '111', '111', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIO6eRuuA6V33GgQpIqnsAVXOuibYS0ibpQ4ev547iaHthIjFtqK0x2hDnSm5pWhVXicR2ZEYKQ5o9HMQ/132');

SET FOREIGN_KEY_CHECKS = 1;
