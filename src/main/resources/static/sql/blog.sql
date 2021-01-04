/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 04/01/2021 17:50:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `first_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `views` int(11) NULL DEFAULT NULL,
  `type_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK292449gwg5yf7ocdlmswv9w4j`(`type_id`) USING BTREE,
  INDEX `FK8ky5rrsxh01nkhctmo7d48p82`(`user_id`) USING BTREE,
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (1, b'1', b'1', '## XWPFDocument读取word模板，经常遇到 {{参数名}} 没有被识别在一个XWPFRun中，导致参数替换失败。XWPFDocument读取word模板，经常遇到 {{参数名}} 没有被识别在一个XWPFRun中，导致参数替换失败。\r\n        本文只解决word模板参数问题，具体用word模板生成word文档，用word模板生成pdf文档，请参考其它博客，或者上网自行搜索。\r\n**第一步，打开ceshi.docx模板，将模板文件另存为ceshi.xml。**\r\n', '2019-02-28 17:06:02', 'https://picsum.photos/id/1047/800/450', NULL, b'0', b'1', b'0', '新增博客测试', '2019-02-28 17:06:02', 4, 16, 1, NULL);
INSERT INTO `t_blog` VALUES (2, b'1', b'0', 'XWPFDocument读取word模板，经常遇到 {{参数名}} 没有被识别在一个XWPFRun中，导致参数替换失败。\r\n        本文只解决word模板参数问题，具体用word模板生成word文档，用word模板生成pdf文档，请参考其它博客，或者上网自行搜索。\r\n第一步，打开ceshi.docx模板，将模板文件另存为ceshi.xml。\r\n————————————————\r\n版权声明：本文为CSDN博主「… …」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/weixin_43770790/article/details/86672962XWPFDocument读取word模板，经常遇到 {{参数名}} 没有被识别在一个XWPFRun中，导致参数替换失败。\r\n        本文只解决word模板参数问题，具体用word模板生成word文档，用word模板生成pdf文档，请参考其它博客，或者上网自行搜索。\r\n第一步，打开ceshi.docx模板，将模板文件另存为ceshi.xml。\r\n————————————————\r\n版权声明：本文为CSDN博主「… …」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/weixin_43770790/article/details/86672962XWPFDocument读取word模板，经常遇到 {{参数名}} 没有被识别在一个XWPFRun中，导致参数替换失败。\r\n        本文只解决word模板参数问题，具体用word模板生成word文档，用word模板生成pdf文档，请参考其它博客，或者上网自行搜索。\r\n第一步，打开ceshi.docx模板，将模板文件另存为ceshi.xml。\r\n————————————————\r\n版权声明：本文为CSDN博主「… …」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/weixin_43770790/article/details/86672962', '2020-02-28 17:10:47', 'https://picsum.photos/id/1047/800/450', NULL, b'1', b'1', b'0', '新增博客测试2', '2020-02-28 17:10:47', 2, 12, 1, NULL);
INSERT INTO `t_blog` VALUES (3, b'0', b'0', 'test', '2020-03-20 16:55:06', 'https://picsum.photos/id/1047/800/450', NULL, b'0', b'1', b'0', '可以', '2020-03-20 16:55:06', 0, 12, 1, NULL);
INSERT INTO `t_blog` VALUES (4, b'0', b'0', 'test', '2020-03-20 16:56:02', 'https://picsum.photos/id/1047/800/450', NULL, b'1', b'1', b'0', '可以', '2020-03-20 16:56:02', 3, 12, 1, NULL);
INSERT INTO `t_blog` VALUES (5, b'0', b'0', 'ssss', '2020-03-20 16:56:20', 'https://picsum.photos/id/1047/800/450', NULL, b'0', b'1', b'0', 'aaaaaaa', '2020-03-20 16:56:20', 0, 13, 1, NULL);

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  INDEX `FK5feau0gb4lq47fdb03uboswm8`(`tags_id`) USING BTREE,
  INDEX `FKh4pacwjwofrugxa9hpwaxg6mr`(`blogs_id`) USING BTREE,
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (1, 2);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `blog_id` bigint(20) NULL DEFAULT NULL,
  `parent_comment_id` bigint(20) NULL DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id`) USING BTREE,
  INDEX `FK4jj284r3pb7japogvo6h72q95`(`parent_comment_id`) USING BTREE,
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, 'https://picsum.photos/id/1047/100/100', 'ttttt', '2020-12-31 17:15:18', 'zhangyibing@bmsoft.com.cn', NULL, 1, NULL, b'1', '六个字带个点丶');
INSERT INTO `t_comment` VALUES (2, 'https://picsum.photos/id/1047/100/100', '1231', '2020-12-31 17:15:40', '11@bmsoft.com.cn', NULL, 1, NULL, b'1', '111');
INSERT INTO `t_comment` VALUES (3, 'https://picsum.photos/id/1047/100/100', 'asda', '2020-12-31 17:16:05', '11@bmsoft.com.cn', NULL, 1, 1, b'1', '111');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (2, 'aasc');
INSERT INTO `t_tag` VALUES (3, 'a');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (12, 'java');
INSERT INTO `t_type` VALUES (13, 'test');
INSERT INTO `t_type` VALUES (14, 'asd');
INSERT INTO `t_type` VALUES (15, 'asdaa');
INSERT INTO `t_type` VALUES (16, 'aaaa');
INSERT INTO `t_type` VALUES (17, 'cacca');
INSERT INTO `t_type` VALUES (19, 'avasdas');
INSERT INTO `t_type` VALUES (20, 'avdsasda');
INSERT INTO `t_type` VALUES (21, 'asvasda');
INSERT INTO `t_type` VALUES (22, 'ascasda');
INSERT INTO `t_type` VALUES (23, 'scfa');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'https://picsum.photos/id/1047/100/100', '2020-02-01 23:29:44', 'zhangyibing@bmsoft.com.cn', '张逸冰', '96e79218965eb72c92a549dd5a330112', 1, NULL, 'zhangyibing', NULL);

SET FOREIGN_KEY_CHECKS = 1;
