/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 02/06/2020 11:14:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publisher` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `record` datetime(0) NULL DEFAULT NULL,
  `remainNumber` int(11) NULL DEFAULT 1,
  `totalNumber` int(11) NULL DEFAULT 1,
  `status` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ISBN`(`isbn`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '9782361548551', '西游记', '施耐庵', '北京电子出版社', 1, '2019-11-15 00:00:00', 6, 7, 0);
INSERT INTO `book` VALUES (2, '9782361548884', '西游记', '施耐庵', '电子工业出版社', 1, '2019-11-15 00:00:00', 6, 7, 1);
INSERT INTO `book` VALUES (3, '9782361548695', '笑傲江湖', '金庸', '北京电子出版社', 2, '2019-11-07 00:00:00', 1, 1, 1);
INSERT INTO `book` VALUES (4, '9782361548697', '西游记之三打白骨精', '张艺谋', '江西电子出版社', 2, '2019-11-10 00:00:00', 1, 1, 1);
INSERT INTO `book` VALUES (10, '9787115386397', 'Spring MVC 学习指南', 'Paul Deck', '人民邮电出版社', 7, '2020-05-03 17:46:40', 1, 2, 0);
INSERT INTO `book` VALUES (11, '9782361548662', '西游记之大圣归来', '郭敬明', '上海大学出版社', 2, '2019-11-18 09:13:53', 2, 2, 1);
INSERT INTO `book` VALUES (12, '9782361548631', '数据结构与算法', '赵哲', '上海应用技术大学', 8, '2019-11-18 09:57:38', 0, 1, 0);
INSERT INTO `book` VALUES (13, '9782361548661', '西游记', '施耐庵', '上海电子出版社', 1, '2019-11-17 13:10:11', 6, 7, 1);
INSERT INTO `book` VALUES (14, '9782361548675', '西游记', '施耐庵', '上海应用技术大学', 1, '2019-11-15 00:00:00', 6, 7, 1);
INSERT INTO `book` VALUES (22, '9782361548666', '西游记', '发多少', '丰富', 3, '2020-05-20 23:37:17', 6, 7, 1);
INSERT INTO `book` VALUES (25, '9782366548669', '西游记', '辅导费得分', '随风而舞', 2, '2020-05-21 00:33:01', 6, 7, 1);
INSERT INTO `book` VALUES (28, '9782361548669', '西游记', '个废物', '威锋网', 2, '2020-05-21 10:52:45', 6, 7, 1);
INSERT INTO `book` VALUES (33, '9782361548601', 'Spring学习指南', 'gregf', 'ergeer', 3, '2020-05-21 20:42:06', 2, 2, 1);
INSERT INTO `book` VALUES (34, '9782361542902', 'Spring学习指南', 'grewgw', 'fewf', 2, '2020-05-21 20:42:06', 2, 2, 1);
INSERT INTO `book` VALUES (35, '9782361542903', '天行九歌', 'grewg', 'fewe', 2, '2020-05-21 20:42:06', 1, 1, 1);
INSERT INTO `book` VALUES (36, '9782361545521', '西游记之大圣归来', 'dfse', 'gweg', 3, '2020-05-21 20:42:06', 2, 2, 1);
INSERT INTO `book` VALUES (37, '9782366548653', '都市小说', 'grghw', 'gwgrw', 5, '2020-05-21 20:42:06', 1, 1, 1);
INSERT INTO `book` VALUES (38, '9782361542925', 'Spring MVC 学习指南', 'Paul', '电子工业出版社', 4, '2020-05-23 22:57:18', 1, 2, 1);
INSERT INTO `book` VALUES (40, '9787300273211', '从零开始学习大数据', '稻田修一', '清华大学出版社', 4, '2020-05-25 23:40:41', 1, 1, 1);

-- ----------------------------
-- Table structure for borrowbook
-- ----------------------------
DROP TABLE IF EXISTS `borrowbook`;
CREATE TABLE `borrowbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isbn` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `borrow_datetime` datetime(0) NULL DEFAULT NULL,
  `expect_return_datetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `book_id`(`isbn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrowbook
-- ----------------------------
INSERT INTO `borrowbook` VALUES (49, '1610400713', '9787115386397', '2020-05-29 10:06:43', '2020-06-29 10:06:43');
INSERT INTO `borrowbook` VALUES (50, '1610400713', '9782361548551', '2020-05-29 10:06:49', '2020-06-29 10:06:49');
INSERT INTO `borrowbook` VALUES (51, '1610400713', '9782361548631', '2020-05-30 00:40:54', '2020-06-30 00:40:54');

-- ----------------------------
-- Table structure for deletebook
-- ----------------------------
DROP TABLE IF EXISTS `deletebook`;
CREATE TABLE `deletebook`  (
  `id` int(11) NOT NULL,
  `bookId` int(10) NULL DEFAULT NULL,
  `bookIsbn` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookAuthor` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookPublisher` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookType_id` int(11) NULL DEFAULT NULL,
  `bookRecord` datetime(0) NULL DEFAULT NULL,
  `bookRemainNumber` int(11) NULL DEFAULT NULL,
  `booktatalNumber` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for returnbook
-- ----------------------------
DROP TABLE IF EXISTS `returnbook`;
CREATE TABLE `returnbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isbn` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `return_datetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of returnbook
-- ----------------------------
INSERT INTO `returnbook` VALUES (1, '1610400713', '9782361548601', '2020-05-23 16:38:37');
INSERT INTO `returnbook` VALUES (2, '1610400713', '9782366548653', '2020-05-23 16:39:18');
INSERT INTO `returnbook` VALUES (3, '1610400713', '9787115386397', '2020-05-23 18:26:21');
INSERT INTO `returnbook` VALUES (4, '1610400713', '00015', '2020-05-23 18:26:25');
INSERT INTO `returnbook` VALUES (5, '1610400713', '9782366548653', '2020-05-23 18:26:31');
INSERT INTO `returnbook` VALUES (6, 'baidu', '9782366548653', '2020-05-23 21:35:10');
INSERT INTO `returnbook` VALUES (7, '1610400713', '9782361542902', '2020-05-23 22:05:59');
INSERT INTO `returnbook` VALUES (8, '对酒当歌', '00015', '2020-05-23 22:45:45');
INSERT INTO `returnbook` VALUES (9, '1610400713', '0005', '2020-05-23 22:49:53');
INSERT INTO `returnbook` VALUES (10, '1610400713', '00016', '2020-05-23 22:56:22');
INSERT INTO `returnbook` VALUES (11, '1610400713', '9782361542903', '2020-05-25 22:26:02');
INSERT INTO `returnbook` VALUES (12, '1610400713', '9782361548601', '2020-05-25 22:26:05');
INSERT INTO `returnbook` VALUES (13, '1610400713', '9787115386397', '2020-05-25 22:26:07');
INSERT INTO `returnbook` VALUES (14, '5201314', '9782361548551', '2020-05-25 22:33:48');
INSERT INTO `returnbook` VALUES (15, '香山居士', '9782361542925', '2020-05-25 23:30:28');
INSERT INTO `returnbook` VALUES (16, '1610400713', '9782361548884', '2020-05-28 19:37:51');
INSERT INTO `returnbook` VALUES (17, '1610400713', '9782361545521', '2020-05-28 19:37:53');
INSERT INTO `returnbook` VALUES (18, '5201314', '9782361548662', '2020-05-29 10:00:18');
INSERT INTO `returnbook` VALUES (19, '5201314', '9787115386397', '2020-05-29 10:00:21');
INSERT INTO `returnbook` VALUES (20, '5201314', '9782361542903', '2020-05-29 10:00:23');
INSERT INTO `returnbook` VALUES (21, '5201314', '9782361542925', '2020-05-29 10:00:24');
INSERT INTO `returnbook` VALUES (22, '香山居士', '9782361548601', '2020-05-29 10:01:19');
INSERT INTO `returnbook` VALUES (23, '香山居士', '9782361548631', '2020-05-29 10:01:21');
INSERT INTO `returnbook` VALUES (24, 'yj-master', '9782361548551', '2020-05-29 10:02:08');
INSERT INTO `returnbook` VALUES (25, '1610400713', '9782361542903', '2020-05-30 00:40:46');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '四大名著');
INSERT INTO `type` VALUES (2, '小说');
INSERT INTO `type` VALUES (3, '历史');
INSERT INTO `type` VALUES (4, '学术');
INSERT INTO `type` VALUES (5, '言情');
INSERT INTO `type` VALUES (6, '动作');
INSERT INTO `type` VALUES (7, '现代');
INSERT INTO `type` VALUES (8, '家电');
INSERT INTO `type` VALUES (9, '日常用品');
INSERT INTO `type` VALUES (10, '数码');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `account` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号（用于登录）',
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `admin` tinyint(1) NULL DEFAULT 0 COMMENT '是否是管理员（0表示普通用户，1表示管理员）',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `account`(`account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'jack', 'admin', '666', 1, '2020-05-28 10:37:45');
INSERT INTO `user` VALUES (7, '夜郎自大', '1610400713', '108353', 0, '2020-05-09 10:38:02');
INSERT INTO `user` VALUES (11, '一曲长歌', '6', '6', 0, '2020-05-05 10:38:06');
INSERT INTO `user` VALUES (15, '法规', '对酒当歌', '123', 0, '2020-05-16 10:36:47');
INSERT INTO `user` VALUES (17, '嗯ヽ(○^㉨^)ﾉ♪', '天问', '123456', 0, '2020-05-15 10:36:35');
INSERT INTO `user` VALUES (19, '李小龙', '5201314', 'lx108353', 0, '2020-05-04 10:36:40');
INSERT INTO `user` VALUES (22, '杨*', 'yj-master', 'zx411520325', 0, '2020-05-28 10:36:22');
INSERT INTO `user` VALUES (24, '吉黑德', '神之塔', '123', 0, '2020-05-28 11:45:43');
INSERT INTO `user` VALUES (25, '益达', '白龙吟', '0000', 1, '2020-05-28 22:54:04');
INSERT INTO `user` VALUES (26, '吴彦祖', '万里长空', '123', 1, '2020-05-29 11:31:16');

SET FOREIGN_KEY_CHECKS = 1;
