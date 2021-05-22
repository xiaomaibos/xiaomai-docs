/*
 Navicat Premium Data Transfer

 Source Server         : flyme.ink
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : damai

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 19/05/2021 08:14:00
*/

SET NAMES utf8mb4;
create database damai;
use damai;

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `is_delete` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_address_user_id` (`user_id`),
  CONSTRAINT `FK_address_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for attender
-- ----------------------------
DROP TABLE IF EXISTS `attender`;
CREATE TABLE `attender` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_num` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `is_delete` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_attender_user_id` (`user_id`),
  CONSTRAINT `FK_attender_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, '舞蹈芭蕾', 1170);
INSERT INTO `category` VALUES (2, '儿童亲子', 1058);
INSERT INTO `category` VALUES (3, '展览休闲', 971);
INSERT INTO `category` VALUES (4, '曲苑杂坛', 715);
INSERT INTO `category` VALUES (5, '二次元', 681);
INSERT INTO `category` VALUES (6, '演唱会', 481);
INSERT INTO `category` VALUES (7, '体育', 64);
INSERT INTO `category` VALUES (8, '音乐会', 28);
INSERT INTO `category` VALUES (9, '话剧歌剧', 9);
INSERT INTO `category` VALUES (10, '旅游演艺', 1);
COMMIT;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of city
-- ----------------------------
BEGIN;
INSERT INTO `city` VALUES (1, '上海', NULL, 782);
INSERT INTO `city` VALUES (2, '北京', NULL, 715);
INSERT INTO `city` VALUES (3, '杭州', NULL, 251);
INSERT INTO `city` VALUES (4, '天津', NULL, 243);
INSERT INTO `city` VALUES (5, '成都', NULL, 225);
INSERT INTO `city` VALUES (6, '深圳', NULL, 193);
INSERT INTO `city` VALUES (7, '苏州', NULL, 182);
INSERT INTO `city` VALUES (8, '西安', NULL, 170);
INSERT INTO `city` VALUES (9, '广州', NULL, 167);
INSERT INTO `city` VALUES (10, '南京', NULL, 140);
INSERT INTO `city` VALUES (11, '重庆', NULL, 132);
INSERT INTO `city` VALUES (12, '武汉', NULL, 124);
INSERT INTO `city` VALUES (13, '长沙', NULL, 100);
INSERT INTO `city` VALUES (14, '沈阳', NULL, 99);
INSERT INTO `city` VALUES (15, '郑州', NULL, 96);
INSERT INTO `city` VALUES (16, '青岛', NULL, 90);
INSERT INTO `city` VALUES (17, '宁波', NULL, 79);
INSERT INTO `city` VALUES (18, '大连', NULL, 71);
INSERT INTO `city` VALUES (19, '厦门', NULL, 68);
INSERT INTO `city` VALUES (20, '合肥', NULL, 66);
INSERT INTO `city` VALUES (21, '佛山', NULL, 60);
INSERT INTO `city` VALUES (22, '哈尔滨', NULL, 53);
INSERT INTO `city` VALUES (23, '济南', NULL, 53);
INSERT INTO `city` VALUES (24, '昆明', NULL, 48);
INSERT INTO `city` VALUES (25, '南宁', NULL, 45);
INSERT INTO `city` VALUES (26, '珠海', NULL, 44);
INSERT INTO `city` VALUES (27, '太原', NULL, 43);
INSERT INTO `city` VALUES (28, '呼和浩特', NULL, 38);
INSERT INTO `city` VALUES (29, '无锡', NULL, 38);
INSERT INTO `city` VALUES (30, '绍兴', NULL, 36);
INSERT INTO `city` VALUES (31, '长春', NULL, 36);
INSERT INTO `city` VALUES (32, '福州', NULL, 35);
INSERT INTO `city` VALUES (33, '石家庄', NULL, 34);
INSERT INTO `city` VALUES (34, '南昌', NULL, 30);
INSERT INTO `city` VALUES (35, '海口', NULL, 29);
INSERT INTO `city` VALUES (36, '秦皇岛', NULL, 28);
INSERT INTO `city` VALUES (37, '南通', NULL, 25);
INSERT INTO `city` VALUES (38, '舟山', NULL, 23);
INSERT INTO `city` VALUES (39, '贵阳', NULL, 19);
INSERT INTO `city` VALUES (40, '唐山', NULL, 18);
INSERT INTO `city` VALUES (41, '常州', NULL, 18);
INSERT INTO `city` VALUES (42, '温州', NULL, 14);
INSERT INTO `city` VALUES (43, '衡水', NULL, 14);
INSERT INTO `city` VALUES (44, '东莞', NULL, 13);
INSERT INTO `city` VALUES (45, '南阳', NULL, 13);
INSERT INTO `city` VALUES (46, '烟台', NULL, 13);
INSERT INTO `city` VALUES (47, '潍坊', NULL, 12);
INSERT INTO `city` VALUES (48, '菏泽', NULL, 12);
INSERT INTO `city` VALUES (49, '银川', NULL, 12);
INSERT INTO `city` VALUES (50, '包头', NULL, 11);
INSERT INTO `city` VALUES (51, '马鞍山', NULL, 11);
INSERT INTO `city` VALUES (52, '台州', NULL, 10);
INSERT INTO `city` VALUES (53, '济宁', NULL, 10);
INSERT INTO `city` VALUES (54, '鞍山', NULL, 10);
INSERT INTO `city` VALUES (55, '兴安盟', NULL, 9);
INSERT INTO `city` VALUES (56, '徐州', NULL, 9);
INSERT INTO `city` VALUES (57, '泉州', NULL, 9);
INSERT INTO `city` VALUES (58, '洛阳', NULL, 9);
INSERT INTO `city` VALUES (59, '聊城', NULL, 9);
INSERT INTO `city` VALUES (60, '赣州', NULL, 9);
INSERT INTO `city` VALUES (61, '廊坊', NULL, 8);
INSERT INTO `city` VALUES (62, '惠州', NULL, 8);
INSERT INTO `city` VALUES (63, '淄博', NULL, 8);
INSERT INTO `city` VALUES (64, '湖州', NULL, 8);
INSERT INTO `city` VALUES (65, '遵义', NULL, 8);
INSERT INTO `city` VALUES (66, '金华', NULL, 8);
INSERT INTO `city` VALUES (67, '中山', NULL, 7);
INSERT INTO `city` VALUES (68, '兰州', NULL, 7);
INSERT INTO `city` VALUES (69, '宿迁', NULL, 7);
INSERT INTO `city` VALUES (70, '滨州', NULL, 7);
INSERT INTO `city` VALUES (71, '盐城', NULL, 7);
INSERT INTO `city` VALUES (72, '黄冈', NULL, 7);
INSERT INTO `city` VALUES (73, '河源', NULL, 6);
INSERT INTO `city` VALUES (74, '辽阳', NULL, 5);
INSERT INTO `city` VALUES (75, '乌鲁木齐', NULL, 4);
INSERT INTO `city` VALUES (76, '保定', NULL, 4);
INSERT INTO `city` VALUES (77, '宜昌', NULL, 4);
INSERT INTO `city` VALUES (78, '延安', NULL, 4);
INSERT INTO `city` VALUES (79, '扬州', NULL, 4);
INSERT INTO `city` VALUES (80, '柳州', NULL, 4);
INSERT INTO `city` VALUES (81, '江门', NULL, 4);
INSERT INTO `city` VALUES (82, '西宁', NULL, 4);
INSERT INTO `city` VALUES (83, '鄂尔多斯', NULL, 4);
INSERT INTO `city` VALUES (84, '丽水', NULL, 3);
INSERT INTO `city` VALUES (85, '九江', NULL, 3);
INSERT INTO `city` VALUES (86, '北海', NULL, 3);
INSERT INTO `city` VALUES (87, '吉安', NULL, 3);
INSERT INTO `city` VALUES (88, '咸阳', NULL, 3);
INSERT INTO `city` VALUES (89, '嘉兴', NULL, 3);
INSERT INTO `city` VALUES (90, '牡丹江', NULL, 3);
INSERT INTO `city` VALUES (91, '绵阳', NULL, 3);
INSERT INTO `city` VALUES (92, '芜湖', NULL, 3);
INSERT INTO `city` VALUES (93, '酒泉', NULL, 3);
INSERT INTO `city` VALUES (94, '镇江', NULL, 3);
INSERT INTO `city` VALUES (95, '中国澳门', NULL, 2);
INSERT INTO `city` VALUES (96, '乌兰察布', NULL, 2);
INSERT INTO `city` VALUES (97, '宁德', NULL, 2);
INSERT INTO `city` VALUES (98, '株洲', NULL, 2);
INSERT INTO `city` VALUES (99, '沧州', NULL, 2);
INSERT INTO `city` VALUES (100, '泰州', NULL, 2);
INSERT INTO `city` VALUES (101, '莆田', NULL, 2);
INSERT INTO `city` VALUES (102, '营口', NULL, 2);
INSERT INTO `city` VALUES (103, '蚌埠', NULL, 2);
INSERT INTO `city` VALUES (104, '赤峰', NULL, 2);
INSERT INTO `city` VALUES (105, '通化', NULL, 2);
INSERT INTO `city` VALUES (106, '三亚', NULL, 1);
INSERT INTO `city` VALUES (107, '上饶', NULL, 1);
INSERT INTO `city` VALUES (108, '东营', NULL, 1);
INSERT INTO `city` VALUES (109, '临汾', NULL, 1);
INSERT INTO `city` VALUES (110, '乐山', NULL, 1);
INSERT INTO `city` VALUES (111, '亳州', NULL, 1);
INSERT INTO `city` VALUES (112, '佳木斯', NULL, 1);
INSERT INTO `city` VALUES (113, '六盘水', NULL, 1);
INSERT INTO `city` VALUES (114, '南充', NULL, 1);
INSERT INTO `city` VALUES (115, '吉林', NULL, 1);
INSERT INTO `city` VALUES (116, '安庆', NULL, 1);
INSERT INTO `city` VALUES (117, '宝鸡', NULL, 1);
INSERT INTO `city` VALUES (118, '广元', NULL, 1);
INSERT INTO `city` VALUES (119, '张家口', NULL, 1);
INSERT INTO `city` VALUES (120, '德州', NULL, 1);
INSERT INTO `city` VALUES (121, '德阳', NULL, 1);
INSERT INTO `city` VALUES (122, '恩施', NULL, 1);
INSERT INTO `city` VALUES (123, '抚顺', NULL, 1);
INSERT INTO `city` VALUES (124, '拉萨', NULL, 1);
INSERT INTO `city` VALUES (125, '新乡', NULL, 1);
INSERT INTO `city` VALUES (126, '桂林', NULL, 1);
INSERT INTO `city` VALUES (127, '淮北', NULL, 1);
INSERT INTO `city` VALUES (128, '玉溪', NULL, 1);
INSERT INTO `city` VALUES (129, '荆州', NULL, 1);
INSERT INTO `city` VALUES (130, '襄阳', NULL, 1);
INSERT INTO `city` VALUES (131, '达州', NULL, 1);
INSERT INTO `city` VALUES (132, '邢台', NULL, 1);
INSERT INTO `city` VALUES (133, '邯郸', NULL, 1);
INSERT INTO `city` VALUES (134, '铜陵', NULL, 1);
INSERT INTO `city` VALUES (135, '阜阳', NULL, 1);
INSERT INTO `city` VALUES (136, '随州', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `total_count` int(10) unsigned DEFAULT NULL,
  `left_count` int(10) unsigned DEFAULT NULL,
  `limit_count` int(10) unsigned DEFAULT NULL,
  `seat` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_level_show_id` (`show_id`),
  CONSTRAINT `FK_level_show_id` FOREIGN KEY (`show_id`) REFERENCES `show` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=960 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of level
-- ----------------------------
BEGIN;
INSERT INTO `level` VALUES (1, '套票69.9元（艺术馆+解压馆）', 69, 80, 80, 6, NULL, 1);
INSERT INTO `level` VALUES (2, '单人票59.9元（含5个摔碗）', 59, 80, 80, 6, NULL, 1);
INSERT INTO `level` VALUES (3, '儿童票29.9元（1.2米-1.4米）', 29, 80, 80, 6, NULL, 1);
INSERT INTO `level` VALUES (4, '单人票39.9元', 39, 80, 80, 6, NULL, 1);
INSERT INTO `level` VALUES (5, '60元', 60, 80, 80, 6, NULL, 2);
INSERT INTO `level` VALUES (6, '80元', 80, 80, 80, 6, NULL, 2);
INSERT INTO `level` VALUES (7, '60元', 60, 80, 80, 6, NULL, 3);
INSERT INTO `level` VALUES (8, '80元', 80, 80, 80, 6, NULL, 3);
INSERT INTO `level` VALUES (9, '60元', 60, 80, 80, 6, NULL, 4);
INSERT INTO `level` VALUES (10, '80元', 80, 80, 80, 6, NULL, 4);
INSERT INTO `level` VALUES (11, '60元', 60, 80, 80, 6, NULL, 5);
INSERT INTO `level` VALUES (12, '80元', 80, 80, 80, 6, NULL, 5);
INSERT INTO `level` VALUES (13, '60元', 60, 80, 80, 6, NULL, 6);
INSERT INTO `level` VALUES (14, '80元', 80, 80, 80, 6, NULL, 6);
INSERT INTO `level` VALUES (15, '260元', 260, 80, 80, 6, NULL, 7);
INSERT INTO `level` VALUES (16, '360元', 360, 80, 80, 6, NULL, 7);
INSERT INTO `level` VALUES (17, '88元', 88, 80, 80, 0, NULL, 7);
INSERT INTO `level` VALUES (18, '160元', 160, 80, 80, 6, NULL, 7);
INSERT INTO `level` VALUES (19, '788元（内场VIP )', 788, 80, 80, 6, NULL, 8);
INSERT INTO `level` VALUES (20, '1288元（内场VIP )', 1288, 80, 80, 6, NULL, 8);
INSERT INTO `level` VALUES (21, '再见青春988元（原价588*2）', 988, 80, 80, 3, NULL, 8);
INSERT INTO `level` VALUES (22, '188元（看台 )', 188, 80, 80, 0, NULL, 8);
INSERT INTO `level` VALUES (23, '588元（看台 )', 588, 80, 80, 6, NULL, 8);
INSERT INTO `level` VALUES (24, '988元（内场VIP )', 988, 80, 80, 6, NULL, 8);
INSERT INTO `level` VALUES (25, '388元（看台 )', 388, 80, 80, 6, NULL, 8);
INSERT INTO `level` VALUES (26, '飞得更高1718元（原价988*2）', 1718, 80, 80, 3, NULL, 8);
INSERT INTO `level` VALUES (27, '预售票128元', 128, 80, 80, 6, NULL, 9);
INSERT INTO `level` VALUES (28, '现场票168元', 168, 80, 80, 0, NULL, 9);
INSERT INTO `level` VALUES (29, '早鸟个人基础148元/人', 148, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (30, '早鸟双人基础 268元/2人', 268, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (31, '家庭豪华 458元/3人', 458, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (32, '个人豪华 268元/人', 268, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (33, '早鸟家庭基础358元/3人', 358, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (34, '家庭基础 398元/3人', 398, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (35, '早鸟个人豪华248元/人', 248, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (36, '个人基础 168元/人', 168, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (37, '双人基础 298元/2人', 298, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (38, '早鸟家庭豪华  398元/3人', 398, 80, 80, 6, NULL, 10);
INSERT INTO `level` VALUES (39, '早鸟个人基础148元/人', 148, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (40, '早鸟双人基础 268元/2人', 268, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (41, '家庭豪华 458元/3人', 458, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (42, '个人豪华 268元/人', 268, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (43, '早鸟家庭基础358元/3人', 358, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (44, '家庭基础 398元/3人', 398, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (45, '早鸟个人豪华248元/人', 248, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (46, '个人基础 168元/人', 168, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (47, '双人基础 298元/2人', 298, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (48, '早鸟家庭豪华  398元/3人', 398, 80, 80, 6, NULL, 11);
INSERT INTO `level` VALUES (49, '早鸟个人基础148元/人', 148, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (50, '早鸟双人基础 268元/2人', 268, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (51, '家庭豪华 458元/3人', 458, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (52, '个人豪华 268元/人', 268, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (53, '早鸟家庭基础358元/3人', 358, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (54, '家庭基础 398元/3人', 398, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (55, '早鸟个人豪华248元/人', 248, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (56, '个人基础 168元/人', 168, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (57, '双人基础 298元/2人', 298, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (58, '早鸟家庭豪华  398元/3人', 398, 80, 80, 6, NULL, 12);
INSERT INTO `level` VALUES (59, '早鸟个人基础148元/人', 148, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (60, '早鸟双人基础 268元/2人', 268, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (61, '家庭豪华 458元/3人', 458, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (62, '个人豪华 268元/人', 268, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (63, '早鸟家庭基础358元/3人', 358, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (64, '家庭基础 398元/3人', 398, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (65, '早鸟个人豪华248元/人', 248, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (66, '个人基础 168元/人', 168, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (67, '双人基础 298元/2人', 298, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (68, '早鸟家庭豪华  398元/3人', 398, 80, 80, 6, NULL, 13);
INSERT INTO `level` VALUES (69, '早鸟票100元', 100, 80, 80, 0, NULL, 14);
INSERT INTO `level` VALUES (70, '预售票160元', 160, 80, 80, 0, NULL, 14);
INSERT INTO `level` VALUES (71, '现场票220元', 220, 80, 80, 6, NULL, 14);
INSERT INTO `level` VALUES (72, '280.00', 280, 80, 80, 6, NULL, 15);
INSERT INTO `level` VALUES (73, '680.00', 680, 80, 80, 6, NULL, 15);
INSERT INTO `level` VALUES (74, '100.00', 100, 80, 80, 0, NULL, 15);
INSERT INTO `level` VALUES (75, '480.00', 480, 80, 80, 6, NULL, 15);
INSERT INTO `level` VALUES (76, '380.00', 380, 80, 80, 6, NULL, 15);
INSERT INTO `level` VALUES (77, '180.00', 180, 80, 80, 6, NULL, 15);
INSERT INTO `level` VALUES (78, '880.00', 880, 80, 80, 6, NULL, 15);
INSERT INTO `level` VALUES (79, '280.00', 280, 80, 80, 6, NULL, 16);
INSERT INTO `level` VALUES (80, '680.00', 680, 80, 80, 6, NULL, 16);
INSERT INTO `level` VALUES (81, '100.00', 100, 80, 80, 0, NULL, 16);
INSERT INTO `level` VALUES (82, '480.00', 480, 80, 80, 6, NULL, 16);
INSERT INTO `level` VALUES (83, '380.00', 380, 80, 80, 6, NULL, 16);
INSERT INTO `level` VALUES (84, '180.00', 180, 80, 80, 6, NULL, 16);
INSERT INTO `level` VALUES (85, '880.00', 880, 80, 80, 6, NULL, 16);
INSERT INTO `level` VALUES (86, '280.00', 280, 80, 80, 6, NULL, 17);
INSERT INTO `level` VALUES (87, '680.00', 680, 80, 80, 6, NULL, 17);
INSERT INTO `level` VALUES (88, '100.00', 100, 80, 80, 0, NULL, 17);
INSERT INTO `level` VALUES (89, '480.00', 480, 80, 80, 6, NULL, 17);
INSERT INTO `level` VALUES (90, '380.00', 380, 80, 80, 6, NULL, 17);
INSERT INTO `level` VALUES (91, '180.00', 180, 80, 80, 6, NULL, 17);
INSERT INTO `level` VALUES (92, '880.00', 880, 80, 80, 6, NULL, 17);
INSERT INTO `level` VALUES (93, '180（180.00）', 180, 80, 80, 0, NULL, 18);
INSERT INTO `level` VALUES (94, '580（580.00）', 580, 80, 80, 0, NULL, 18);
INSERT INTO `level` VALUES (95, '380（380.00）', 380, 80, 80, 6, NULL, 18);
INSERT INTO `level` VALUES (96, '280（280.00）', 280, 80, 80, 6, NULL, 18);
INSERT INTO `level` VALUES (97, '180（180.00）', 180, 80, 80, 0, NULL, 19);
INSERT INTO `level` VALUES (98, '580（580.00）', 580, 80, 80, 0, NULL, 19);
INSERT INTO `level` VALUES (99, '380（380.00）', 380, 80, 80, 6, NULL, 19);
INSERT INTO `level` VALUES (100, '280（280.00）', 280, 80, 80, 6, NULL, 19);
INSERT INTO `level` VALUES (101, '二区（150.00）', 150, 80, 80, 6, NULL, 20);
INSERT INTO `level` VALUES (102, '一区（180.00）', 180, 80, 80, 6, NULL, 20);
INSERT INTO `level` VALUES (103, '三区（100.00）', 100, 80, 80, 6, NULL, 20);
INSERT INTO `level` VALUES (104, '前区B区票450元', 450, 80, 80, 6, NULL, 21);
INSERT INTO `level` VALUES (105, '前区A区票450元', 450, 80, 80, 6, NULL, 21);
INSERT INTO `level` VALUES (106, '普通区票380元', 380, 80, 80, 0, NULL, 21);
INSERT INTO `level` VALUES (107, '前区B区票450元', 450, 80, 80, 6, NULL, 22);
INSERT INTO `level` VALUES (108, '前区A区票450元', 450, 80, 80, 6, NULL, 22);
INSERT INTO `level` VALUES (109, '普通区票380元', 380, 80, 80, 0, NULL, 22);
INSERT INTO `level` VALUES (110, '二等票（80.00）', 80, 80, 80, 0, NULL, 23);
INSERT INTO `level` VALUES (111, '三等票（50.00）', 50, 80, 80, 6, NULL, 23);
INSERT INTO `level` VALUES (112, '一等票（120.00）', 120, 80, 80, 6, NULL, 23);
INSERT INTO `level` VALUES (113, 'VIP票（180.00）', 180, 80, 80, 0, NULL, 23);
INSERT INTO `level` VALUES (114, '二等票（80.00）', 80, 80, 80, 0, NULL, 24);
INSERT INTO `level` VALUES (115, '三等票（50.00）', 50, 80, 80, 6, NULL, 24);
INSERT INTO `level` VALUES (116, '一等票（120.00）', 120, 80, 80, 6, NULL, 24);
INSERT INTO `level` VALUES (117, 'VIP票（180.00）', 180, 80, 80, 0, NULL, 24);
INSERT INTO `level` VALUES (118, '480元', 480, 80, 80, 6, NULL, 25);
INSERT INTO `level` VALUES (119, '680元', 680, 80, 80, 0, NULL, 25);
INSERT INTO `level` VALUES (120, '280元', 280, 80, 80, 2, NULL, 25);
INSERT INTO `level` VALUES (121, '第二张半价420元（280元*2）', 420, 80, 80, 1, NULL, 25);
INSERT INTO `level` VALUES (122, '第二张半价1020元（680元*2）', 1020, 80, 80, 0, NULL, 25);
INSERT INTO `level` VALUES (123, '第二张半价570元（380元*2）', 570, 80, 80, 3, NULL, 25);
INSERT INTO `level` VALUES (124, '第二张半价720元（480元*2）', 720, 80, 80, 3, NULL, 25);
INSERT INTO `level` VALUES (125, '380元', 380, 80, 80, 6, NULL, 25);
INSERT INTO `level` VALUES (126, '180元', 180, 80, 80, 0, NULL, 25);
INSERT INTO `level` VALUES (127, '第二张半价270元（180元*2）', 270, 80, 80, 0, NULL, 25);
INSERT INTO `level` VALUES (128, '第二张半价870元（580元*2）', 870, 80, 80, 3, NULL, 25);
INSERT INTO `level` VALUES (129, '580元', 580, 80, 80, 6, NULL, 25);
INSERT INTO `level` VALUES (130, '480元', 480, 80, 80, 6, NULL, 26);
INSERT INTO `level` VALUES (131, '680元', 680, 80, 80, 0, NULL, 26);
INSERT INTO `level` VALUES (132, '280元', 280, 80, 80, 2, NULL, 26);
INSERT INTO `level` VALUES (133, '第二张半价420元（280元*2）', 420, 80, 80, 1, NULL, 26);
INSERT INTO `level` VALUES (134, '第二张半价1020元（680元*2）', 1020, 80, 80, 0, NULL, 26);
INSERT INTO `level` VALUES (135, '第二张半价570元（380元*2）', 570, 80, 80, 3, NULL, 26);
INSERT INTO `level` VALUES (136, '第二张半价720元（480元*2）', 720, 80, 80, 3, NULL, 26);
INSERT INTO `level` VALUES (137, '380元', 380, 80, 80, 6, NULL, 26);
INSERT INTO `level` VALUES (138, '180元', 180, 80, 80, 0, NULL, 26);
INSERT INTO `level` VALUES (139, '第二张半价270元（180元*2）', 270, 80, 80, 0, NULL, 26);
INSERT INTO `level` VALUES (140, '第二张半价870元（580元*2）', 870, 80, 80, 3, NULL, 26);
INSERT INTO `level` VALUES (141, '580元', 580, 80, 80, 6, NULL, 26);
INSERT INTO `level` VALUES (142, '480元', 480, 80, 80, 6, NULL, 27);
INSERT INTO `level` VALUES (143, '680元', 680, 80, 80, 0, NULL, 27);
INSERT INTO `level` VALUES (144, '280元', 280, 80, 80, 2, NULL, 27);
INSERT INTO `level` VALUES (145, '第二张半价420元（280元*2）', 420, 80, 80, 1, NULL, 27);
INSERT INTO `level` VALUES (146, '第二张半价1020元（680元*2）', 1020, 80, 80, 0, NULL, 27);
INSERT INTO `level` VALUES (147, '第二张半价570元（380元*2）', 570, 80, 80, 3, NULL, 27);
INSERT INTO `level` VALUES (148, '第二张半价720元（480元*2）', 720, 80, 80, 3, NULL, 27);
INSERT INTO `level` VALUES (149, '380元', 380, 80, 80, 6, NULL, 27);
INSERT INTO `level` VALUES (150, '180元', 180, 80, 80, 0, NULL, 27);
INSERT INTO `level` VALUES (151, '第二张半价270元（180元*2）', 270, 80, 80, 0, NULL, 27);
INSERT INTO `level` VALUES (152, '第二张半价870元（580元*2）', 870, 80, 80, 3, NULL, 27);
INSERT INTO `level` VALUES (153, '580元', 580, 80, 80, 6, NULL, 27);
INSERT INTO `level` VALUES (154, '128元（128.00）', 128, 80, 80, 6, NULL, 28);
INSERT INTO `level` VALUES (155, '268元（268.00）', 268, 80, 80, 6, NULL, 28);
INSERT INTO `level` VALUES (156, '188元（188.00）', 188, 80, 80, 6, NULL, 28);
INSERT INTO `level` VALUES (157, '68元（68.00）', 68, 80, 80, 6, NULL, 28);
INSERT INTO `level` VALUES (158, '星巢舞台·站立C区/全价票888元', 888, 80, 80, 0, NULL, 29);
INSERT INTO `level` VALUES (159, '开放区E区/预售票688元', 688, 80, 80, 0, NULL, 29);
INSERT INTO `level` VALUES (160, '秘境舞台·站立B区/全价票888元', 888, 80, 80, 0, NULL, 29);
INSERT INTO `level` VALUES (161, 'VIP秘境舞台M区（第二批）1280元', 1280, 80, 80, 1, NULL, 29);
INSERT INTO `level` VALUES (162, '第三批票种开票待定888元', 888, 80, 80, 1, NULL, 29);
INSERT INTO `level` VALUES (163, 'VIP星巢舞台S区（第二批）1280元', 1280, 80, 80, 1, NULL, 29);
INSERT INTO `level` VALUES (164, '秘境舞台·站立D区/全价票888元', 888, 80, 80, 0, NULL, 29);
INSERT INTO `level` VALUES (165, '星巢舞台·站立A区/全价票888元', 888, 80, 80, 0, NULL, 29);
INSERT INTO `level` VALUES (166, '480元', 480, 80, 80, 6, NULL, 30);
INSERT INTO `level` VALUES (167, '680元', 680, 80, 80, 6, NULL, 30);
INSERT INTO `level` VALUES (168, '880元', 880, 80, 80, 6, NULL, 30);
INSERT INTO `level` VALUES (169, '280元', 280, 80, 80, 0, NULL, 30);
INSERT INTO `level` VALUES (170, '180元', 180, 80, 80, 0, NULL, 30);
INSERT INTO `level` VALUES (171, '成人票 15元/人', 15, 80, 80, 6, NULL, 31);
INSERT INTO `level` VALUES (172, '学生票 10元/人', 10, 80, 80, 6, NULL, 31);
INSERT INTO `level` VALUES (173, '成人票 15元/人', 15, 80, 80, 6, NULL, 32);
INSERT INTO `level` VALUES (174, '学生票 10元/人', 10, 80, 80, 6, NULL, 32);
INSERT INTO `level` VALUES (175, '成人票 15元/人', 15, 80, 80, 6, NULL, 33);
INSERT INTO `level` VALUES (176, '学生票 10元/人', 10, 80, 80, 6, NULL, 33);
INSERT INTO `level` VALUES (177, '480元', 480, 80, 80, 6, NULL, 34);
INSERT INTO `level` VALUES (178, '680元（VIP）', 680, 80, 80, 6, NULL, 34);
INSERT INTO `level` VALUES (179, '380元', 380, 80, 80, 1, NULL, 34);
INSERT INTO `level` VALUES (180, '50元', 50, 80, 80, 0, NULL, 34);
INSERT INTO `level` VALUES (181, '100元', 100, 80, 80, 6, NULL, 34);
INSERT INTO `level` VALUES (182, '280元', 280, 80, 80, 5, NULL, 34);
INSERT INTO `level` VALUES (183, '三人套票800元（280*3）', 800, 80, 80, 2, NULL, 35);
INSERT INTO `level` VALUES (184, '单人票 280元', 280, 80, 80, 6, NULL, 35);
INSERT INTO `level` VALUES (185, '双人套票550元（280*2）', 550, 80, 80, 3, NULL, 35);
INSERT INTO `level` VALUES (186, '三人套票800元（280*3）', 800, 80, 80, 2, NULL, 36);
INSERT INTO `level` VALUES (187, '单人票 280元', 280, 80, 80, 6, NULL, 36);
INSERT INTO `level` VALUES (188, '双人套票550元（280*2）', 550, 80, 80, 3, NULL, 36);
INSERT INTO `level` VALUES (189, '三人套票800元（280*3）', 800, 80, 80, 2, NULL, 37);
INSERT INTO `level` VALUES (190, '单人票 280元', 280, 80, 80, 6, NULL, 37);
INSERT INTO `level` VALUES (191, '双人套票550元（280*2）', 550, 80, 80, 3, NULL, 37);
INSERT INTO `level` VALUES (192, '120.0元', 120, 80, 80, 6, NULL, 38);
INSERT INTO `level` VALUES (193, '190.0元', 190, 80, 80, 6, NULL, 38);
INSERT INTO `level` VALUES (194, '160.0元', 160, 80, 80, 6, NULL, 38);
INSERT INTO `level` VALUES (195, '120.0元', 120, 80, 80, 6, NULL, 39);
INSERT INTO `level` VALUES (196, '190.0元', 190, 80, 80, 6, NULL, 39);
INSERT INTO `level` VALUES (197, '160.0元', 160, 80, 80, 6, NULL, 39);
INSERT INTO `level` VALUES (198, '120.0元', 120, 80, 80, 6, NULL, 40);
INSERT INTO `level` VALUES (199, '190.0元', 190, 80, 80, 6, NULL, 40);
INSERT INTO `level` VALUES (200, '160.0元', 160, 80, 80, 6, NULL, 40);
INSERT INTO `level` VALUES (201, '120.0元', 120, 80, 80, 6, NULL, 41);
INSERT INTO `level` VALUES (202, '190.0元', 190, 80, 80, 6, NULL, 41);
INSERT INTO `level` VALUES (203, '160.0元', 160, 80, 80, 6, NULL, 41);
INSERT INTO `level` VALUES (204, '120.0元', 120, 80, 80, 6, NULL, 42);
INSERT INTO `level` VALUES (205, '190.0元', 190, 80, 80, 6, NULL, 42);
INSERT INTO `level` VALUES (206, '160.0元', 160, 80, 80, 6, NULL, 42);
INSERT INTO `level` VALUES (207, '120.0元', 120, 80, 80, 6, NULL, 43);
INSERT INTO `level` VALUES (208, '190.0元', 190, 80, 80, 6, NULL, 43);
INSERT INTO `level` VALUES (209, '160.0元', 160, 80, 80, 6, NULL, 43);
INSERT INTO `level` VALUES (210, '单人票39元', 39, 80, 80, 6, NULL, 44);
INSERT INTO `level` VALUES (211, '儿童票10元', 10, 80, 80, 6, NULL, 44);
INSERT INTO `level` VALUES (212, '单人票39元', 39, 80, 80, 6, NULL, 45);
INSERT INTO `level` VALUES (213, '儿童票10元', 10, 80, 80, 6, NULL, 45);
INSERT INTO `level` VALUES (214, '单人票39元', 39, 80, 80, 6, NULL, 46);
INSERT INTO `level` VALUES (215, '儿童票10元', 10, 80, 80, 6, NULL, 46);
INSERT INTO `level` VALUES (216, '单人票39元', 39, 80, 80, 6, NULL, 47);
INSERT INTO `level` VALUES (217, '儿童票10元', 10, 80, 80, 6, NULL, 47);
INSERT INTO `level` VALUES (218, '全价票：120元', 120, 80, 80, 6, NULL, 48);
INSERT INTO `level` VALUES (219, '预售票：100元', 100, 80, 80, 6, NULL, 48);
INSERT INTO `level` VALUES (220, '480元', 480, 80, 80, 6, NULL, 49);
INSERT INTO `level` VALUES (221, '680元', 680, 80, 80, 6, NULL, 49);
INSERT INTO `level` VALUES (222, '380元', 380, 80, 80, 6, NULL, 49);
INSERT INTO `level` VALUES (223, '180元', 180, 80, 80, 0, NULL, 49);
INSERT INTO `level` VALUES (224, '双日预售718元', 718, 80, 80, 2, NULL, 50);
INSERT INTO `level` VALUES (225, '双日全价918元', 918, 80, 80, 0, NULL, 50);
INSERT INTO `level` VALUES (226, '双日预售718元', 718, 80, 80, 2, NULL, 51);
INSERT INTO `level` VALUES (227, '双日全价918元', 918, 80, 80, 0, NULL, 51);
INSERT INTO `level` VALUES (228, '双日预售718元', 718, 80, 80, 2, NULL, 52);
INSERT INTO `level` VALUES (229, '双日全价918元', 918, 80, 80, 0, NULL, 52);
INSERT INTO `level` VALUES (230, '四区（80.00）', 80, 80, 80, 6, NULL, 53);
INSERT INTO `level` VALUES (231, '二区（180.00）', 180, 80, 80, 6, NULL, 53);
INSERT INTO `level` VALUES (232, 'VIP（380.00）', 380, 80, 80, 6, NULL, 53);
INSERT INTO `level` VALUES (233, '三区（120.00）', 120, 80, 80, 6, NULL, 53);
INSERT INTO `level` VALUES (234, '一区（280.00）', 280, 80, 80, 6, NULL, 53);
INSERT INTO `level` VALUES (235, '乙级票 100元', 100, 80, 80, 6, NULL, 54);
INSERT INTO `level` VALUES (236, '甲级票 150元', 150, 80, 80, 6, NULL, 54);
INSERT INTO `level` VALUES (237, '丙级票 50元', 50, 80, 80, 6, NULL, 54);
INSERT INTO `level` VALUES (238, 'VIP票100元', 100, 80, 80, 6, NULL, 55);
INSERT INTO `level` VALUES (239, '30元（他山他人他海展）', 30, 80, 80, 6, NULL, 55);
INSERT INTO `level` VALUES (240, '25元（他山他人展）', 25, 80, 80, 6, NULL, 55);
INSERT INTO `level` VALUES (241, '50元', 50, 80, 80, 6, NULL, 56);
INSERT INTO `level` VALUES (242, '180元', 180, 80, 80, 6, NULL, 56);
INSERT INTO `level` VALUES (243, '120元', 120, 80, 80, 6, NULL, 56);
INSERT INTO `level` VALUES (244, '280元', 280, 80, 80, 6, NULL, 56);
INSERT INTO `level` VALUES (245, '一等票380（380.00）', 380, 80, 80, 6, NULL, 57);
INSERT INTO `level` VALUES (246, '贵宾票480（480.00）', 480, 80, 80, 6, NULL, 57);
INSERT INTO `level` VALUES (247, '二等票280（280.00）', 280, 80, 80, 6, NULL, 57);
INSERT INTO `level` VALUES (248, '三等票180（180.00）', 180, 80, 80, 6, NULL, 57);
INSERT INTO `level` VALUES (249, '380元', 380, 80, 80, 0, NULL, 58);
INSERT INTO `level` VALUES (250, '980元', 980, 80, 80, 4, NULL, 58);
INSERT INTO `level` VALUES (251, '580元', 580, 80, 80, 0, NULL, 58);
INSERT INTO `level` VALUES (252, '1280元', 1280, 80, 80, 4, NULL, 58);
INSERT INTO `level` VALUES (253, '180元', 180, 80, 80, 0, NULL, 58);
INSERT INTO `level` VALUES (254, '780元', 780, 80, 80, 4, NULL, 58);
INSERT INTO `level` VALUES (255, '早鸟票68元', 68, 80, 80, 6, NULL, 59);
INSERT INTO `level` VALUES (256, '早鸟票68元', 68, 80, 80, 6, NULL, 60);
INSERT INTO `level` VALUES (257, '二层预售票298元（原价368元）', 298, 80, 80, 2, NULL, 61);
INSERT INTO `level` VALUES (258, '二层看台全价368元', 368, 80, 80, 2, NULL, 61);
INSERT INTO `level` VALUES (259, '四层预售票198元（原价268元）', 198, 80, 80, 2, NULL, 61);
INSERT INTO `level` VALUES (260, '四层看台全价268元', 268, 80, 80, 2, NULL, 61);
INSERT INTO `level` VALUES (261, '二层预售票298元（原价368元）', 298, 80, 80, 2, NULL, 62);
INSERT INTO `level` VALUES (262, '二层看台全价368元', 368, 80, 80, 2, NULL, 62);
INSERT INTO `level` VALUES (263, '四层预售票198元（原价268元）', 198, 80, 80, 2, NULL, 62);
INSERT INTO `level` VALUES (264, '四层看台全价268元', 268, 80, 80, 2, NULL, 62);
INSERT INTO `level` VALUES (265, '二层预售票298元（原价368元）', 298, 80, 80, 2, NULL, 63);
INSERT INTO `level` VALUES (266, '二层看台全价368元', 368, 80, 80, 2, NULL, 63);
INSERT INTO `level` VALUES (267, '四层预售票198元（原价268元）', 198, 80, 80, 2, NULL, 63);
INSERT INTO `level` VALUES (268, '四层看台全价268元', 268, 80, 80, 2, NULL, 63);
INSERT INTO `level` VALUES (269, '双旦盲盒礼包99元（含线上演出）', 99, 80, 80, 1, NULL, 64);
INSERT INTO `level` VALUES (270, '双旦盲盒礼包99元（含线上演出）', 99, 80, 80, 1, NULL, 65);
INSERT INTO `level` VALUES (271, '剧院+好奇心视角50元', 50, 80, 80, 20, NULL, 66);
INSERT INTO `level` VALUES (272, '剧院+好奇心视角50元', 50, 80, 80, 20, NULL, 67);
INSERT INTO `level` VALUES (273, '五折优惠90元（原价180）', 90, 80, 80, 6, NULL, 68);
INSERT INTO `level` VALUES (274, '五折优惠40元（原价80）', 40, 80, 80, 6, NULL, 68);
INSERT INTO `level` VALUES (275, '五折优惠140元（原价280）', 140, 80, 80, 6, NULL, 68);
INSERT INTO `level` VALUES (276, '180元', 180, 80, 80, 6, NULL, 68);
INSERT INTO `level` VALUES (277, '五折优惠60元（原价120）', 60, 80, 80, 6, NULL, 68);
INSERT INTO `level` VALUES (278, '120元', 120, 80, 80, 6, NULL, 68);
INSERT INTO `level` VALUES (279, '280元', 280, 80, 80, 6, NULL, 68);
INSERT INTO `level` VALUES (280, '80元', 80, 80, 80, 6, NULL, 68);
INSERT INTO `level` VALUES (281, '五折优惠90元（原价180）', 90, 80, 80, 6, NULL, 69);
INSERT INTO `level` VALUES (282, '五折优惠40元（原价80）', 40, 80, 80, 6, NULL, 69);
INSERT INTO `level` VALUES (283, '五折优惠140元（原价280）', 140, 80, 80, 6, NULL, 69);
INSERT INTO `level` VALUES (284, '180元', 180, 80, 80, 6, NULL, 69);
INSERT INTO `level` VALUES (285, '五折优惠60元（原价120）', 60, 80, 80, 6, NULL, 69);
INSERT INTO `level` VALUES (286, '120元', 120, 80, 80, 6, NULL, 69);
INSERT INTO `level` VALUES (287, '280元', 280, 80, 80, 6, NULL, 69);
INSERT INTO `level` VALUES (288, '80元', 80, 80, 80, 6, NULL, 69);
INSERT INTO `level` VALUES (289, '单人早鸟386元（原价480）', 386, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (290, '480元', 480, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (291, '双人套票700元（原价380*2）', 700, 80, 80, 3, NULL, 70);
INSERT INTO `level` VALUES (292, '家庭套票1280元（原价480*3）', 1280, 80, 80, 2, NULL, 70);
INSERT INTO `level` VALUES (293, '单人早鸟96元（原价120）', 96, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (294, '单人早鸟306元（原价380）', 306, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (295, '120元', 120, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (296, '280元', 280, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (297, '单人早鸟246元（原价280）', 246, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (298, '双人套票900元（原价480*2）', 900, 80, 80, 3, NULL, 70);
INSERT INTO `level` VALUES (299, '单人早鸟146元（原价180）', 146, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (300, '180元', 180, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (301, '家庭套票1000元（原价380*3）', 1000, 80, 80, 2, NULL, 70);
INSERT INTO `level` VALUES (302, '380元', 380, 80, 80, 6, NULL, 70);
INSERT INTO `level` VALUES (303, '单人早鸟386元（原价480）', 386, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (304, '480元', 480, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (305, '双人套票700元（原价380*2）', 700, 80, 80, 3, NULL, 71);
INSERT INTO `level` VALUES (306, '家庭套票1280元（原价480*3）', 1280, 80, 80, 2, NULL, 71);
INSERT INTO `level` VALUES (307, '单人早鸟96元（原价120）', 96, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (308, '单人早鸟306元（原价380）', 306, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (309, '120元', 120, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (310, '280元', 280, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (311, '单人早鸟246元（原价280）', 246, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (312, '双人套票900元（原价480*2）', 900, 80, 80, 3, NULL, 71);
INSERT INTO `level` VALUES (313, '单人早鸟146元（原价180）', 146, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (314, '180元', 180, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (315, '家庭套票1000元（原价380*3）', 1000, 80, 80, 2, NULL, 71);
INSERT INTO `level` VALUES (316, '380元', 380, 80, 80, 6, NULL, 71);
INSERT INTO `level` VALUES (317, '280.00元', 280, 80, 80, 6, NULL, 72);
INSERT INTO `level` VALUES (318, '480.00元', 480, 80, 80, 6, NULL, 72);
INSERT INTO `level` VALUES (319, '180.00元', 180, 80, 80, 6, NULL, 72);
INSERT INTO `level` VALUES (320, '80.00元', 80, 80, 80, 0, NULL, 72);
INSERT INTO `level` VALUES (321, '380.00元', 380, 80, 80, 6, NULL, 72);
INSERT INTO `level` VALUES (322, '580.00元', 580, 80, 80, 6, NULL, 72);
INSERT INTO `level` VALUES (323, '280.00元', 280, 80, 80, 6, NULL, 73);
INSERT INTO `level` VALUES (324, '480.00元', 480, 80, 80, 6, NULL, 73);
INSERT INTO `level` VALUES (325, '180.00元', 180, 80, 80, 6, NULL, 73);
INSERT INTO `level` VALUES (326, '80.00元', 80, 80, 80, 0, NULL, 73);
INSERT INTO `level` VALUES (327, '380.00元', 380, 80, 80, 6, NULL, 73);
INSERT INTO `level` VALUES (328, '580.00元', 580, 80, 80, 6, NULL, 73);
INSERT INTO `level` VALUES (329, '单人票68元', 68, 80, 80, 20, NULL, 74);
INSERT INTO `level` VALUES (330, '学生票48元（凭学生证）', 48, 80, 80, 20, NULL, 74);
INSERT INTO `level` VALUES (331, '双人票108元', 108, 80, 80, 20, NULL, 74);
INSERT INTO `level` VALUES (332, '成人陪伴早鸟票 38元/人（38.00）', 38, 80, 80, 6, NULL, 75);
INSERT INTO `level` VALUES (333, '儿童单人早鸟票 160元（160.00）', 160, 80, 80, 6, NULL, 75);
INSERT INTO `level` VALUES (334, '成人陪伴早鸟票 38元/人（38.00）', 38, 80, 80, 6, NULL, 76);
INSERT INTO `level` VALUES (335, '儿童单人早鸟票 160元（160.00）', 160, 80, 80, 6, NULL, 76);
INSERT INTO `level` VALUES (336, '成人陪伴早鸟票 38元/人（38.00）', 38, 80, 80, 6, NULL, 77);
INSERT INTO `level` VALUES (337, '儿童单人早鸟票 160元（160.00）', 160, 80, 80, 6, NULL, 77);
INSERT INTO `level` VALUES (338, '成人陪伴早鸟票 38元/人（38.00）', 38, 80, 80, 6, NULL, 78);
INSERT INTO `level` VALUES (339, '儿童单人早鸟票 160元（160.00）', 160, 80, 80, 6, NULL, 78);
INSERT INTO `level` VALUES (340, '成人陪伴早鸟票 38元/人（38.00）', 38, 80, 80, 6, NULL, 79);
INSERT INTO `level` VALUES (341, '儿童单人早鸟票 160元（160.00）', 160, 80, 80, 6, NULL, 79);
INSERT INTO `level` VALUES (342, '成人陪伴早鸟票 38元/人（38.00）', 38, 80, 80, 6, NULL, 80);
INSERT INTO `level` VALUES (343, '儿童单人早鸟票 160元（160.00）', 160, 80, 80, 6, NULL, 80);
INSERT INTO `level` VALUES (344, '80（80.00）', 80, 80, 80, 0, NULL, 81);
INSERT INTO `level` VALUES (345, '180（180.00）', 180, 80, 80, 6, NULL, 81);
INSERT INTO `level` VALUES (346, '480（480.00）', 480, 80, 80, 6, NULL, 81);
INSERT INTO `level` VALUES (347, '380（380.00）', 380, 80, 80, 6, NULL, 81);
INSERT INTO `level` VALUES (348, '280（280.00）', 280, 80, 80, 6, NULL, 81);
INSERT INTO `level` VALUES (349, '120（120.00）', 120, 80, 80, 6, NULL, 81);
INSERT INTO `level` VALUES (350, '80（80.00）', 80, 80, 80, 0, NULL, 82);
INSERT INTO `level` VALUES (351, '180（180.00）', 180, 80, 80, 6, NULL, 82);
INSERT INTO `level` VALUES (352, '480（480.00）', 480, 80, 80, 6, NULL, 82);
INSERT INTO `level` VALUES (353, '380（380.00）', 380, 80, 80, 6, NULL, 82);
INSERT INTO `level` VALUES (354, '280（280.00）', 280, 80, 80, 6, NULL, 82);
INSERT INTO `level` VALUES (355, '120（120.00）', 120, 80, 80, 6, NULL, 82);
INSERT INTO `level` VALUES (356, '80（80.00）', 80, 80, 80, 0, NULL, 83);
INSERT INTO `level` VALUES (357, '180（180.00）', 180, 80, 80, 6, NULL, 83);
INSERT INTO `level` VALUES (358, '480（480.00）', 480, 80, 80, 6, NULL, 83);
INSERT INTO `level` VALUES (359, '380（380.00）', 380, 80, 80, 6, NULL, 83);
INSERT INTO `level` VALUES (360, '280（280.00）', 280, 80, 80, 6, NULL, 83);
INSERT INTO `level` VALUES (361, '120（120.00）', 120, 80, 80, 6, NULL, 83);
INSERT INTO `level` VALUES (362, '80（80.00）', 80, 80, 80, 0, NULL, 84);
INSERT INTO `level` VALUES (363, '580（580.00）', 580, 80, 80, 6, NULL, 84);
INSERT INTO `level` VALUES (364, '480（480.00）', 480, 80, 80, 6, NULL, 84);
INSERT INTO `level` VALUES (365, '680（680.00）', 680, 80, 80, 6, NULL, 84);
INSERT INTO `level` VALUES (366, '380（380.00）', 380, 80, 80, 6, NULL, 84);
INSERT INTO `level` VALUES (367, '880（880.00）', 880, 80, 80, 6, NULL, 84);
INSERT INTO `level` VALUES (368, '280（280.00）', 280, 80, 80, 6, NULL, 84);
INSERT INTO `level` VALUES (369, '80（80.00）', 80, 80, 80, 0, NULL, 85);
INSERT INTO `level` VALUES (370, '580（580.00）', 580, 80, 80, 6, NULL, 85);
INSERT INTO `level` VALUES (371, '480（480.00）', 480, 80, 80, 6, NULL, 85);
INSERT INTO `level` VALUES (372, '680（680.00）', 680, 80, 80, 6, NULL, 85);
INSERT INTO `level` VALUES (373, '380（380.00）', 380, 80, 80, 6, NULL, 85);
INSERT INTO `level` VALUES (374, '880（880.00）', 880, 80, 80, 6, NULL, 85);
INSERT INTO `level` VALUES (375, '280（280.00）', 280, 80, 80, 6, NULL, 85);
INSERT INTO `level` VALUES (376, '280.00元', 280, 80, 80, 6, NULL, 86);
INSERT INTO `level` VALUES (377, '480.00元', 480, 80, 80, 6, NULL, 86);
INSERT INTO `level` VALUES (378, '180.00元', 180, 80, 80, 6, NULL, 86);
INSERT INTO `level` VALUES (379, '380.00元', 380, 80, 80, 6, NULL, 86);
INSERT INTO `level` VALUES (380, '580.00元', 580, 80, 80, 6, NULL, 86);
INSERT INTO `level` VALUES (381, '380.00元-B', 380, 80, 80, 6, NULL, 86);
INSERT INTO `level` VALUES (382, '280.00元', 280, 80, 80, 6, NULL, 87);
INSERT INTO `level` VALUES (383, '480.00元', 480, 80, 80, 6, NULL, 87);
INSERT INTO `level` VALUES (384, '180.00元', 180, 80, 80, 6, NULL, 87);
INSERT INTO `level` VALUES (385, '380.00元', 380, 80, 80, 6, NULL, 87);
INSERT INTO `level` VALUES (386, '580.00元', 580, 80, 80, 6, NULL, 87);
INSERT INTO `level` VALUES (387, '380.00元-B', 380, 80, 80, 6, NULL, 87);
INSERT INTO `level` VALUES (388, 'C(380.0)', 380, 80, 80, 6, NULL, 88);
INSERT INTO `level` VALUES (389, 'B(480.0)', 480, 80, 80, 6, NULL, 88);
INSERT INTO `level` VALUES (390, 'D(280.0)', 280, 80, 80, 6, NULL, 88);
INSERT INTO `level` VALUES (391, 'E(180.0)', 180, 80, 80, 6, NULL, 88);
INSERT INTO `level` VALUES (392, 'A(680.0)', 680, 80, 80, 6, NULL, 88);
INSERT INTO `level` VALUES (393, 'C(380.0)', 380, 80, 80, 6, NULL, 89);
INSERT INTO `level` VALUES (394, 'B(480.0)', 480, 80, 80, 6, NULL, 89);
INSERT INTO `level` VALUES (395, 'D(280.0)', 280, 80, 80, 6, NULL, 89);
INSERT INTO `level` VALUES (396, 'E(180.0)', 180, 80, 80, 6, NULL, 89);
INSERT INTO `level` VALUES (397, 'A(680.0)', 680, 80, 80, 6, NULL, 89);
INSERT INTO `level` VALUES (398, '180.0元', 180, 80, 80, 0, NULL, 90);
INSERT INTO `level` VALUES (399, '880.0元', 880, 80, 80, 6, NULL, 90);
INSERT INTO `level` VALUES (400, '480.0元', 480, 80, 80, 6, NULL, 90);
INSERT INTO `level` VALUES (401, '680.0元', 680, 80, 80, 6, NULL, 90);
INSERT INTO `level` VALUES (402, '280.0元', 280, 80, 80, 0, NULL, 90);
INSERT INTO `level` VALUES (403, '180.0元', 180, 80, 80, 0, NULL, 91);
INSERT INTO `level` VALUES (404, '880.0元', 880, 80, 80, 6, NULL, 91);
INSERT INTO `level` VALUES (405, '480.0元', 480, 80, 80, 6, NULL, 91);
INSERT INTO `level` VALUES (406, '680.0元', 680, 80, 80, 6, NULL, 91);
INSERT INTO `level` VALUES (407, '280.0元', 280, 80, 80, 0, NULL, 91);
INSERT INTO `level` VALUES (408, '180.0元', 180, 80, 80, 0, NULL, 92);
INSERT INTO `level` VALUES (409, '880.0元', 880, 80, 80, 6, NULL, 92);
INSERT INTO `level` VALUES (410, '480.0元', 480, 80, 80, 6, NULL, 92);
INSERT INTO `level` VALUES (411, '680.0元', 680, 80, 80, 6, NULL, 92);
INSERT INTO `level` VALUES (412, '280.0元', 280, 80, 80, 0, NULL, 92);
INSERT INTO `level` VALUES (413, '480元', 480, 80, 80, 6, NULL, 93);
INSERT INTO `level` VALUES (414, '180元', 180, 80, 80, 6, NULL, 93);
INSERT INTO `level` VALUES (415, '380元', 380, 80, 80, 6, NULL, 93);
INSERT INTO `level` VALUES (416, '280元', 280, 80, 80, 6, NULL, 93);
INSERT INTO `level` VALUES (417, '80元', 80, 80, 80, 6, NULL, 93);
INSERT INTO `level` VALUES (418, '580元', 580, 80, 80, 6, NULL, 93);
INSERT INTO `level` VALUES (419, '480元', 480, 80, 80, 6, NULL, 94);
INSERT INTO `level` VALUES (420, '180元', 180, 80, 80, 6, NULL, 94);
INSERT INTO `level` VALUES (421, '380元', 380, 80, 80, 6, NULL, 94);
INSERT INTO `level` VALUES (422, '280元', 280, 80, 80, 6, NULL, 94);
INSERT INTO `level` VALUES (423, '80元', 80, 80, 80, 6, NULL, 94);
INSERT INTO `level` VALUES (424, '580元', 580, 80, 80, 6, NULL, 94);
INSERT INTO `level` VALUES (425, '80（80.00）', 80, 80, 80, 0, NULL, 95);
INSERT INTO `level` VALUES (426, '580（580.00）', 580, 80, 80, 6, NULL, 95);
INSERT INTO `level` VALUES (427, '480（480.00）', 480, 80, 80, 6, NULL, 95);
INSERT INTO `level` VALUES (428, '380（380.00）', 380, 80, 80, 6, NULL, 95);
INSERT INTO `level` VALUES (429, '280（280.00）', 280, 80, 80, 6, NULL, 95);
INSERT INTO `level` VALUES (430, '80（80.00）', 80, 80, 80, 0, NULL, 96);
INSERT INTO `level` VALUES (431, '580（580.00）', 580, 80, 80, 6, NULL, 96);
INSERT INTO `level` VALUES (432, '480（480.00）', 480, 80, 80, 6, NULL, 96);
INSERT INTO `level` VALUES (433, '380（380.00）', 380, 80, 80, 6, NULL, 96);
INSERT INTO `level` VALUES (434, '280（280.00）', 280, 80, 80, 6, NULL, 96);
INSERT INTO `level` VALUES (435, '120.0元', 120, 80, 80, 6, NULL, 97);
INSERT INTO `level` VALUES (436, '200.0元', 200, 80, 80, 6, NULL, 97);
INSERT INTO `level` VALUES (437, '100.0元', 100, 80, 80, 6, NULL, 97);
INSERT INTO `level` VALUES (438, '150.0元', 150, 80, 80, 6, NULL, 97);
INSERT INTO `level` VALUES (439, '120.0元', 120, 80, 80, 6, NULL, 98);
INSERT INTO `level` VALUES (440, '200.0元', 200, 80, 80, 6, NULL, 98);
INSERT INTO `level` VALUES (441, '100.0元', 100, 80, 80, 6, NULL, 98);
INSERT INTO `level` VALUES (442, '150.0元', 150, 80, 80, 6, NULL, 98);
INSERT INTO `level` VALUES (443, '300元（300.00）', 300, 80, 80, 6, NULL, 99);
INSERT INTO `level` VALUES (444, '500元（500.00）', 500, 80, 80, 6, NULL, 99);
INSERT INTO `level` VALUES (445, '380元（380.00）', 380, 80, 80, 6, NULL, 99);
INSERT INTO `level` VALUES (446, '160元（160.00）', 160, 80, 80, 6, NULL, 99);
INSERT INTO `level` VALUES (447, '80元（80.00）', 80, 80, 80, 0, NULL, 99);
INSERT INTO `level` VALUES (448, '220元（220.00）', 220, 80, 80, 6, NULL, 99);
INSERT INTO `level` VALUES (449, '300元（300.00）', 300, 80, 80, 6, NULL, 100);
INSERT INTO `level` VALUES (450, '500元（500.00）', 500, 80, 80, 6, NULL, 100);
INSERT INTO `level` VALUES (451, '380元（380.00）', 380, 80, 80, 6, NULL, 100);
INSERT INTO `level` VALUES (452, '160元（160.00）', 160, 80, 80, 6, NULL, 100);
INSERT INTO `level` VALUES (453, '80元（80.00）', 80, 80, 80, 0, NULL, 100);
INSERT INTO `level` VALUES (454, '220元（220.00）', 220, 80, 80, 6, NULL, 100);
INSERT INTO `level` VALUES (455, '380.00元', 380, 80, 80, 0, NULL, 101);
INSERT INTO `level` VALUES (456, '180.00元', 180, 80, 80, 0, NULL, 101);
INSERT INTO `level` VALUES (457, '880.00元', 880, 80, 80, 0, NULL, 101);
INSERT INTO `level` VALUES (458, '680.00元', 680, 80, 80, 0, NULL, 101);
INSERT INTO `level` VALUES (459, '480.00元', 480, 80, 80, 0, NULL, 101);
INSERT INTO `level` VALUES (460, '280.00元', 280, 80, 80, 0, NULL, 101);
INSERT INTO `level` VALUES (461, '380.00元', 380, 80, 80, 0, NULL, 102);
INSERT INTO `level` VALUES (462, '180.00元', 180, 80, 80, 0, NULL, 102);
INSERT INTO `level` VALUES (463, '880.00元', 880, 80, 80, 0, NULL, 102);
INSERT INTO `level` VALUES (464, '680.00元', 680, 80, 80, 0, NULL, 102);
INSERT INTO `level` VALUES (465, '480.00元', 480, 80, 80, 0, NULL, 102);
INSERT INTO `level` VALUES (466, '280.00元', 280, 80, 80, 0, NULL, 102);
INSERT INTO `level` VALUES (467, '380.00元', 380, 80, 80, 0, NULL, 103);
INSERT INTO `level` VALUES (468, '180.00元', 180, 80, 80, 0, NULL, 103);
INSERT INTO `level` VALUES (469, '880.00元', 880, 80, 80, 0, NULL, 103);
INSERT INTO `level` VALUES (470, '680.00元', 680, 80, 80, 0, NULL, 103);
INSERT INTO `level` VALUES (471, '480.00元', 480, 80, 80, 0, NULL, 103);
INSERT INTO `level` VALUES (472, '280.00元', 280, 80, 80, 0, NULL, 103);
INSERT INTO `level` VALUES (473, '100元', 100, 80, 80, 0, NULL, 104);
INSERT INTO `level` VALUES (474, '200元', 200, 80, 80, 6, NULL, 104);
INSERT INTO `level` VALUES (475, '早鸟票160元（原价200）', 160, 80, 80, 6, NULL, 104);
INSERT INTO `level` VALUES (476, '早鸟票224元（原价280）', 224, 80, 80, 6, NULL, 104);
INSERT INTO `level` VALUES (477, '早鸟票128元（原价160）', 128, 80, 80, 6, NULL, 104);
INSERT INTO `level` VALUES (478, '380元', 380, 80, 80, 6, NULL, 104);
INSERT INTO `level` VALUES (479, '160元', 160, 80, 80, 6, NULL, 104);
INSERT INTO `level` VALUES (480, '280元', 280, 80, 80, 6, NULL, 104);
INSERT INTO `level` VALUES (481, '早鸟票304元（原价380）', 304, 80, 80, 6, NULL, 104);
INSERT INTO `level` VALUES (482, '早鸟票80元（原价100）', 80, 80, 80, 0, NULL, 104);
INSERT INTO `level` VALUES (483, '100元', 100, 80, 80, 0, NULL, 105);
INSERT INTO `level` VALUES (484, '200元', 200, 80, 80, 6, NULL, 105);
INSERT INTO `level` VALUES (485, '早鸟票160元（原价200）', 160, 80, 80, 6, NULL, 105);
INSERT INTO `level` VALUES (486, '早鸟票224元（原价280）', 224, 80, 80, 6, NULL, 105);
INSERT INTO `level` VALUES (487, '早鸟票128元（原价160）', 128, 80, 80, 6, NULL, 105);
INSERT INTO `level` VALUES (488, '380元', 380, 80, 80, 6, NULL, 105);
INSERT INTO `level` VALUES (489, '160元', 160, 80, 80, 6, NULL, 105);
INSERT INTO `level` VALUES (490, '280元', 280, 80, 80, 6, NULL, 105);
INSERT INTO `level` VALUES (491, '早鸟票304元（原价380）', 304, 80, 80, 6, NULL, 105);
INSERT INTO `level` VALUES (492, '早鸟票80元（原价100）', 80, 80, 80, 0, NULL, 105);
INSERT INTO `level` VALUES (493, '280.00', 280, 80, 80, 6, NULL, 106);
INSERT INTO `level` VALUES (494, '380.00', 380, 80, 80, 6, NULL, 106);
INSERT INTO `level` VALUES (495, '180.00', 180, 80, 80, 6, NULL, 106);
INSERT INTO `level` VALUES (496, '80.00', 80, 80, 80, 6, NULL, 106);
INSERT INTO `level` VALUES (497, '280.00', 280, 80, 80, 6, NULL, 107);
INSERT INTO `level` VALUES (498, '380.00', 380, 80, 80, 6, NULL, 107);
INSERT INTO `level` VALUES (499, '180.00', 180, 80, 80, 6, NULL, 107);
INSERT INTO `level` VALUES (500, '80.00', 80, 80, 80, 6, NULL, 107);
INSERT INTO `level` VALUES (501, '280.00', 280, 80, 80, 6, NULL, 108);
INSERT INTO `level` VALUES (502, '380.00', 380, 80, 80, 6, NULL, 108);
INSERT INTO `level` VALUES (503, '180.00', 180, 80, 80, 6, NULL, 108);
INSERT INTO `level` VALUES (504, '80.00', 80, 80, 80, 6, NULL, 108);
INSERT INTO `level` VALUES (505, '280.00', 280, 80, 80, 6, NULL, 109);
INSERT INTO `level` VALUES (506, '380.00', 380, 80, 80, 6, NULL, 109);
INSERT INTO `level` VALUES (507, '180.00', 180, 80, 80, 6, NULL, 109);
INSERT INTO `level` VALUES (508, '80.00', 80, 80, 80, 6, NULL, 109);
INSERT INTO `level` VALUES (509, '一等票（380.00）', 380, 80, 80, 6, NULL, 110);
INSERT INTO `level` VALUES (510, '贵宾票（480.00）', 480, 80, 80, 6, NULL, 110);
INSERT INTO `level` VALUES (511, '三等票（180.00）', 180, 80, 80, 6, NULL, 110);
INSERT INTO `level` VALUES (512, '二等票（280.00）', 280, 80, 80, 6, NULL, 110);
INSERT INTO `level` VALUES (513, '180价位（180.00）', 180, 80, 80, 6, NULL, 111);
INSERT INTO `level` VALUES (514, '280价位（280.00）', 280, 80, 80, 6, NULL, 111);
INSERT INTO `level` VALUES (515, '380价位（380.00）', 380, 80, 80, 6, NULL, 111);
INSERT INTO `level` VALUES (516, '180价位（180.00）', 180, 80, 80, 6, NULL, 112);
INSERT INTO `level` VALUES (517, '280价位（280.00）', 280, 80, 80, 6, NULL, 112);
INSERT INTO `level` VALUES (518, '380价位（380.00）', 380, 80, 80, 6, NULL, 112);
INSERT INTO `level` VALUES (519, '180价位（180.00）', 180, 80, 80, 6, NULL, 113);
INSERT INTO `level` VALUES (520, '280价位（280.00）', 280, 80, 80, 6, NULL, 113);
INSERT INTO `level` VALUES (521, '380价位（380.00）', 380, 80, 80, 6, NULL, 113);
INSERT INTO `level` VALUES (522, '100元', 100, 80, 80, 0, NULL, 114);
INSERT INTO `level` VALUES (523, '180元', 180, 80, 80, 4, NULL, 114);
INSERT INTO `level` VALUES (524, '双人套票520元（280元*2）', 520, 80, 80, 3, NULL, 114);
INSERT INTO `level` VALUES (525, '380元', 380, 80, 80, 6, NULL, 114);
INSERT INTO `level` VALUES (526, '三人套票760元（280元*3）', 760, 80, 80, 2, NULL, 114);
INSERT INTO `level` VALUES (527, '280元', 280, 80, 80, 6, NULL, 114);
INSERT INTO `level` VALUES (528, '100元', 100, 80, 80, 0, NULL, 115);
INSERT INTO `level` VALUES (529, '180元', 180, 80, 80, 4, NULL, 115);
INSERT INTO `level` VALUES (530, '双人套票520元（280元*2）', 520, 80, 80, 3, NULL, 115);
INSERT INTO `level` VALUES (531, '380元', 380, 80, 80, 6, NULL, 115);
INSERT INTO `level` VALUES (532, '三人套票760元（280元*3）', 760, 80, 80, 2, NULL, 115);
INSERT INTO `level` VALUES (533, '280元', 280, 80, 80, 6, NULL, 115);
INSERT INTO `level` VALUES (534, '480元', 480, 80, 80, 6, NULL, 116);
INSERT INTO `level` VALUES (535, '三人亲子套票1499元（原价580*3）', 1499, 80, 80, 2, NULL, 116);
INSERT INTO `level` VALUES (536, '双人亲子套票1180元（原价680*2）', 1180, 80, 80, 3, NULL, 116);
INSERT INTO `level` VALUES (537, '280元', 280, 80, 80, 6, NULL, 116);
INSERT INTO `level` VALUES (538, '双人亲子套票500元（原价280*2）', 500, 80, 80, 3, NULL, 116);
INSERT INTO `level` VALUES (539, '580元', 580, 80, 80, 6, NULL, 116);
INSERT INTO `level` VALUES (540, '双人亲子套票700元（原价380*2）', 700, 80, 80, 3, NULL, 116);
INSERT INTO `level` VALUES (541, '双人亲子套票800元（原价480*2）', 800, 80, 80, 3, NULL, 116);
INSERT INTO `level` VALUES (542, '三人亲子套票1780元（原价680*3）', 1780, 80, 80, 2, NULL, 116);
INSERT INTO `level` VALUES (543, '三人亲子套票1200元（原价480*3）', 1200, 80, 80, 2, NULL, 116);
INSERT INTO `level` VALUES (544, '680元', 680, 80, 80, 6, NULL, 116);
INSERT INTO `level` VALUES (545, '180元', 180, 80, 80, 6, NULL, 116);
INSERT INTO `level` VALUES (546, '380元', 380, 80, 80, 6, NULL, 116);
INSERT INTO `level` VALUES (547, '三人亲子套票999元（原价380*3）', 999, 80, 80, 2, NULL, 116);
INSERT INTO `level` VALUES (548, '双人亲子套票999元（原价580*2）', 999, 80, 80, 3, NULL, 116);
INSERT INTO `level` VALUES (549, '三人亲子套票750元（原价280*3）', 750, 80, 80, 2, NULL, 116);
INSERT INTO `level` VALUES (550, '480元', 480, 80, 80, 6, NULL, 117);
INSERT INTO `level` VALUES (551, '三人亲子套票1499元（原价580*3）', 1499, 80, 80, 2, NULL, 117);
INSERT INTO `level` VALUES (552, '双人亲子套票1180元（原价680*2）', 1180, 80, 80, 3, NULL, 117);
INSERT INTO `level` VALUES (553, '280元', 280, 80, 80, 6, NULL, 117);
INSERT INTO `level` VALUES (554, '双人亲子套票500元（原价280*2）', 500, 80, 80, 3, NULL, 117);
INSERT INTO `level` VALUES (555, '580元', 580, 80, 80, 6, NULL, 117);
INSERT INTO `level` VALUES (556, '双人亲子套票700元（原价380*2）', 700, 80, 80, 3, NULL, 117);
INSERT INTO `level` VALUES (557, '双人亲子套票800元（原价480*2）', 800, 80, 80, 3, NULL, 117);
INSERT INTO `level` VALUES (558, '三人亲子套票1780元（原价680*3）', 1780, 80, 80, 2, NULL, 117);
INSERT INTO `level` VALUES (559, '三人亲子套票1200元（原价480*3）', 1200, 80, 80, 2, NULL, 117);
INSERT INTO `level` VALUES (560, '680元', 680, 80, 80, 6, NULL, 117);
INSERT INTO `level` VALUES (561, '180元', 180, 80, 80, 6, NULL, 117);
INSERT INTO `level` VALUES (562, '380元', 380, 80, 80, 6, NULL, 117);
INSERT INTO `level` VALUES (563, '三人亲子套票999元（原价380*3）', 999, 80, 80, 2, NULL, 117);
INSERT INTO `level` VALUES (564, '双人亲子套票999元（原价580*2）', 999, 80, 80, 3, NULL, 117);
INSERT INTO `level` VALUES (565, '三人亲子套票750元（原价280*3）', 750, 80, 80, 2, NULL, 117);
INSERT INTO `level` VALUES (566, '480元', 480, 80, 80, 6, NULL, 118);
INSERT INTO `level` VALUES (567, '三人亲子套票1499元（原价580*3）', 1499, 80, 80, 2, NULL, 118);
INSERT INTO `level` VALUES (568, '双人亲子套票1180元（原价680*2）', 1180, 80, 80, 3, NULL, 118);
INSERT INTO `level` VALUES (569, '280元', 280, 80, 80, 6, NULL, 118);
INSERT INTO `level` VALUES (570, '双人亲子套票500元（原价280*2）', 500, 80, 80, 3, NULL, 118);
INSERT INTO `level` VALUES (571, '580元', 580, 80, 80, 6, NULL, 118);
INSERT INTO `level` VALUES (572, '双人亲子套票700元（原价380*2）', 700, 80, 80, 3, NULL, 118);
INSERT INTO `level` VALUES (573, '双人亲子套票800元（原价480*2）', 800, 80, 80, 3, NULL, 118);
INSERT INTO `level` VALUES (574, '三人亲子套票1780元（原价680*3）', 1780, 80, 80, 2, NULL, 118);
INSERT INTO `level` VALUES (575, '三人亲子套票1200元（原价480*3）', 1200, 80, 80, 2, NULL, 118);
INSERT INTO `level` VALUES (576, '680元', 680, 80, 80, 6, NULL, 118);
INSERT INTO `level` VALUES (577, '180元', 180, 80, 80, 6, NULL, 118);
INSERT INTO `level` VALUES (578, '380元', 380, 80, 80, 6, NULL, 118);
INSERT INTO `level` VALUES (579, '三人亲子套票999元（原价380*3）', 999, 80, 80, 2, NULL, 118);
INSERT INTO `level` VALUES (580, '双人亲子套票999元（原价580*2）', 999, 80, 80, 3, NULL, 118);
INSERT INTO `level` VALUES (581, '三人亲子套票750元（原价280*3）', 750, 80, 80, 2, NULL, 118);
INSERT INTO `level` VALUES (582, '480元', 480, 80, 80, 6, NULL, 119);
INSERT INTO `level` VALUES (583, '三人亲子套票1499元（原价580*3）', 1499, 80, 80, 2, NULL, 119);
INSERT INTO `level` VALUES (584, '双人亲子套票1180元（原价680*2）', 1180, 80, 80, 3, NULL, 119);
INSERT INTO `level` VALUES (585, '280元', 280, 80, 80, 6, NULL, 119);
INSERT INTO `level` VALUES (586, '双人亲子套票500元（原价280*2）', 500, 80, 80, 3, NULL, 119);
INSERT INTO `level` VALUES (587, '580元', 580, 80, 80, 6, NULL, 119);
INSERT INTO `level` VALUES (588, '双人亲子套票700元（原价380*2）', 700, 80, 80, 3, NULL, 119);
INSERT INTO `level` VALUES (589, '双人亲子套票800元（原价480*2）', 800, 80, 80, 3, NULL, 119);
INSERT INTO `level` VALUES (590, '三人亲子套票1780元（原价680*3）', 1780, 80, 80, 2, NULL, 119);
INSERT INTO `level` VALUES (591, '三人亲子套票1200元（原价480*3）', 1200, 80, 80, 2, NULL, 119);
INSERT INTO `level` VALUES (592, '680元', 680, 80, 80, 6, NULL, 119);
INSERT INTO `level` VALUES (593, '180元', 180, 80, 80, 6, NULL, 119);
INSERT INTO `level` VALUES (594, '380元', 380, 80, 80, 6, NULL, 119);
INSERT INTO `level` VALUES (595, '三人亲子套票999元（原价380*3）', 999, 80, 80, 2, NULL, 119);
INSERT INTO `level` VALUES (596, '双人亲子套票999元（原价580*2）', 999, 80, 80, 3, NULL, 119);
INSERT INTO `level` VALUES (597, '三人亲子套票750元（原价280*3）', 750, 80, 80, 2, NULL, 119);
INSERT INTO `level` VALUES (598, '80元', 80, 80, 80, 0, NULL, 120);
INSERT INTO `level` VALUES (599, '三人套票240元（原价120*3张）', 240, 80, 80, 2, NULL, 120);
INSERT INTO `level` VALUES (600, '双人套票180元（原价120*2张）', 180, 80, 80, 3, NULL, 120);
INSERT INTO `level` VALUES (601, '三人套票300元（原价180*3张）', 300, 80, 80, 0, NULL, 120);
INSERT INTO `level` VALUES (602, '三人套票180元（原价80*3张）', 180, 80, 80, 0, NULL, 120);
INSERT INTO `level` VALUES (603, '180元', 180, 80, 80, 0, NULL, 120);
INSERT INTO `level` VALUES (604, '120元', 120, 80, 80, 6, NULL, 120);
INSERT INTO `level` VALUES (605, '双人套票140元（原价80*2张）', 140, 80, 80, 0, NULL, 120);
INSERT INTO `level` VALUES (606, '双人套票220元（原价180元*2张）', 220, 80, 80, 0, NULL, 120);
INSERT INTO `level` VALUES (607, '80元', 80, 80, 80, 0, NULL, 121);
INSERT INTO `level` VALUES (608, '三人套票240元（原价120*3张）', 240, 80, 80, 2, NULL, 121);
INSERT INTO `level` VALUES (609, '双人套票180元（原价120*2张）', 180, 80, 80, 3, NULL, 121);
INSERT INTO `level` VALUES (610, '三人套票300元（原价180*3张）', 300, 80, 80, 0, NULL, 121);
INSERT INTO `level` VALUES (611, '三人套票180元（原价80*3张）', 180, 80, 80, 0, NULL, 121);
INSERT INTO `level` VALUES (612, '180元', 180, 80, 80, 0, NULL, 121);
INSERT INTO `level` VALUES (613, '120元', 120, 80, 80, 6, NULL, 121);
INSERT INTO `level` VALUES (614, '双人套票140元（原价80*2张）', 140, 80, 80, 0, NULL, 121);
INSERT INTO `level` VALUES (615, '双人套票220元（原价180元*2张）', 220, 80, 80, 0, NULL, 121);
INSERT INTO `level` VALUES (616, '80元', 80, 80, 80, 0, NULL, 122);
INSERT INTO `level` VALUES (617, '三人套票240元（原价120*3张）', 240, 80, 80, 2, NULL, 122);
INSERT INTO `level` VALUES (618, '双人套票180元（原价120*2张）', 180, 80, 80, 3, NULL, 122);
INSERT INTO `level` VALUES (619, '三人套票300元（原价180*3张）', 300, 80, 80, 0, NULL, 122);
INSERT INTO `level` VALUES (620, '三人套票180元（原价80*3张）', 180, 80, 80, 0, NULL, 122);
INSERT INTO `level` VALUES (621, '180元', 180, 80, 80, 0, NULL, 122);
INSERT INTO `level` VALUES (622, '120元', 120, 80, 80, 6, NULL, 122);
INSERT INTO `level` VALUES (623, '双人套票140元（原价80*2张）', 140, 80, 80, 0, NULL, 122);
INSERT INTO `level` VALUES (624, '双人套票220元（原价180元*2张）', 220, 80, 80, 0, NULL, 122);
INSERT INTO `level` VALUES (625, '80元', 80, 80, 80, 0, NULL, 123);
INSERT INTO `level` VALUES (626, '三人套票240元（原价120*3张）', 240, 80, 80, 2, NULL, 123);
INSERT INTO `level` VALUES (627, '双人套票180元（原价120*2张）', 180, 80, 80, 3, NULL, 123);
INSERT INTO `level` VALUES (628, '三人套票300元（原价180*3张）', 300, 80, 80, 0, NULL, 123);
INSERT INTO `level` VALUES (629, '三人套票180元（原价80*3张）', 180, 80, 80, 0, NULL, 123);
INSERT INTO `level` VALUES (630, '180元', 180, 80, 80, 0, NULL, 123);
INSERT INTO `level` VALUES (631, '120元', 120, 80, 80, 6, NULL, 123);
INSERT INTO `level` VALUES (632, '双人套票140元（原价80*2张）', 140, 80, 80, 0, NULL, 123);
INSERT INTO `level` VALUES (633, '双人套票220元（原价180元*2张）', 220, 80, 80, 0, NULL, 123);
INSERT INTO `level` VALUES (634, '80元', 80, 80, 80, 0, NULL, 124);
INSERT INTO `level` VALUES (635, '三人套票240元（原价120*3张）', 240, 80, 80, 2, NULL, 124);
INSERT INTO `level` VALUES (636, '双人套票180元（原价120*2张）', 180, 80, 80, 3, NULL, 124);
INSERT INTO `level` VALUES (637, '三人套票300元（原价180*3张）', 300, 80, 80, 0, NULL, 124);
INSERT INTO `level` VALUES (638, '三人套票180元（原价80*3张）', 180, 80, 80, 0, NULL, 124);
INSERT INTO `level` VALUES (639, '180元', 180, 80, 80, 0, NULL, 124);
INSERT INTO `level` VALUES (640, '120元', 120, 80, 80, 6, NULL, 124);
INSERT INTO `level` VALUES (641, '双人套票140元（原价80*2张）', 140, 80, 80, 0, NULL, 124);
INSERT INTO `level` VALUES (642, '双人套票220元（原价180元*2张）', 220, 80, 80, 0, NULL, 124);
INSERT INTO `level` VALUES (643, '80元', 80, 80, 80, 0, NULL, 125);
INSERT INTO `level` VALUES (644, '三人套票240元（原价120*3张）', 240, 80, 80, 2, NULL, 125);
INSERT INTO `level` VALUES (645, '双人套票180元（原价120*2张）', 180, 80, 80, 3, NULL, 125);
INSERT INTO `level` VALUES (646, '三人套票300元（原价180*3张）', 300, 80, 80, 0, NULL, 125);
INSERT INTO `level` VALUES (647, '三人套票180元（原价80*3张）', 180, 80, 80, 0, NULL, 125);
INSERT INTO `level` VALUES (648, '180元', 180, 80, 80, 0, NULL, 125);
INSERT INTO `level` VALUES (649, '120元', 120, 80, 80, 6, NULL, 125);
INSERT INTO `level` VALUES (650, '双人套票140元（原价80*2张）', 140, 80, 80, 0, NULL, 125);
INSERT INTO `level` VALUES (651, '双人套票220元（原价180元*2张）', 220, 80, 80, 0, NULL, 125);
INSERT INTO `level` VALUES (652, '480元', 480, 80, 80, 6, NULL, 126);
INSERT INTO `level` VALUES (653, '680元', 680, 80, 80, 0, NULL, 126);
INSERT INTO `level` VALUES (654, '280元', 280, 80, 80, 2, NULL, 126);
INSERT INTO `level` VALUES (655, '第二张半价420元（280元*2）', 420, 80, 80, 1, NULL, 126);
INSERT INTO `level` VALUES (656, '第二张半价1020元（680元*2）', 1020, 80, 80, 0, NULL, 126);
INSERT INTO `level` VALUES (657, '第二张半价570元（380元*2）', 570, 80, 80, 3, NULL, 126);
INSERT INTO `level` VALUES (658, '第二张半价720元（480元*2）', 720, 80, 80, 3, NULL, 126);
INSERT INTO `level` VALUES (659, '380元', 380, 80, 80, 6, NULL, 126);
INSERT INTO `level` VALUES (660, '180元', 180, 80, 80, 0, NULL, 126);
INSERT INTO `level` VALUES (661, '第二张半价270元（180元*2）', 270, 80, 80, 0, NULL, 126);
INSERT INTO `level` VALUES (662, '第二张半价870元（580元*2）', 870, 80, 80, 3, NULL, 126);
INSERT INTO `level` VALUES (663, '580元', 580, 80, 80, 6, NULL, 126);
INSERT INTO `level` VALUES (664, '480元', 480, 80, 80, 6, NULL, 127);
INSERT INTO `level` VALUES (665, '680元', 680, 80, 80, 0, NULL, 127);
INSERT INTO `level` VALUES (666, '280元', 280, 80, 80, 2, NULL, 127);
INSERT INTO `level` VALUES (667, '第二张半价420元（280元*2）', 420, 80, 80, 1, NULL, 127);
INSERT INTO `level` VALUES (668, '第二张半价1020元（680元*2）', 1020, 80, 80, 0, NULL, 127);
INSERT INTO `level` VALUES (669, '第二张半价570元（380元*2）', 570, 80, 80, 3, NULL, 127);
INSERT INTO `level` VALUES (670, '第二张半价720元（480元*2）', 720, 80, 80, 3, NULL, 127);
INSERT INTO `level` VALUES (671, '380元', 380, 80, 80, 6, NULL, 127);
INSERT INTO `level` VALUES (672, '180元', 180, 80, 80, 0, NULL, 127);
INSERT INTO `level` VALUES (673, '第二张半价270元（180元*2）', 270, 80, 80, 0, NULL, 127);
INSERT INTO `level` VALUES (674, '第二张半价870元（580元*2）', 870, 80, 80, 3, NULL, 127);
INSERT INTO `level` VALUES (675, '580元', 580, 80, 80, 6, NULL, 127);
INSERT INTO `level` VALUES (676, '480元', 480, 80, 80, 6, NULL, 128);
INSERT INTO `level` VALUES (677, '680元', 680, 80, 80, 0, NULL, 128);
INSERT INTO `level` VALUES (678, '280元', 280, 80, 80, 2, NULL, 128);
INSERT INTO `level` VALUES (679, '第二张半价420元（280元*2）', 420, 80, 80, 1, NULL, 128);
INSERT INTO `level` VALUES (680, '第二张半价1020元（680元*2）', 1020, 80, 80, 0, NULL, 128);
INSERT INTO `level` VALUES (681, '第二张半价570元（380元*2）', 570, 80, 80, 3, NULL, 128);
INSERT INTO `level` VALUES (682, '第二张半价720元（480元*2）', 720, 80, 80, 3, NULL, 128);
INSERT INTO `level` VALUES (683, '380元', 380, 80, 80, 6, NULL, 128);
INSERT INTO `level` VALUES (684, '180元', 180, 80, 80, 0, NULL, 128);
INSERT INTO `level` VALUES (685, '第二张半价270元（180元*2）', 270, 80, 80, 0, NULL, 128);
INSERT INTO `level` VALUES (686, '第二张半价870元（580元*2）', 870, 80, 80, 3, NULL, 128);
INSERT INTO `level` VALUES (687, '580元', 580, 80, 80, 6, NULL, 128);
INSERT INTO `level` VALUES (688, '120.00', 120, 80, 80, 6, NULL, 129);
INSERT INTO `level` VALUES (689, '160.00', 160, 80, 80, 6, NULL, 129);
INSERT INTO `level` VALUES (690, '80.00', 80, 80, 80, 6, NULL, 129);
INSERT INTO `level` VALUES (691, '120.00', 120, 80, 80, 6, NULL, 130);
INSERT INTO `level` VALUES (692, '160.00', 160, 80, 80, 6, NULL, 130);
INSERT INTO `level` VALUES (693, '80.00', 80, 80, 80, 6, NULL, 130);
INSERT INTO `level` VALUES (694, '120.00', 120, 80, 80, 6, NULL, 131);
INSERT INTO `level` VALUES (695, '160.00', 160, 80, 80, 6, NULL, 131);
INSERT INTO `level` VALUES (696, '80.00', 80, 80, 80, 6, NULL, 131);
INSERT INTO `level` VALUES (697, '180元（180.00）', 180, 80, 80, 6, NULL, 132);
INSERT INTO `level` VALUES (698, '280元（280.00）', 280, 80, 80, 6, NULL, 132);
INSERT INTO `level` VALUES (699, '380元（380.00）', 380, 80, 80, 6, NULL, 132);
INSERT INTO `level` VALUES (700, '280.00', 280, 80, 80, 6, NULL, 133);
INSERT INTO `level` VALUES (701, '580.00', 580, 80, 80, 6, NULL, 133);
INSERT INTO `level` VALUES (702, '380.00', 380, 80, 80, 6, NULL, 133);
INSERT INTO `level` VALUES (703, '180.00', 180, 80, 80, 6, NULL, 133);
INSERT INTO `level` VALUES (704, '80.00', 80, 80, 80, 6, NULL, 133);
INSERT INTO `level` VALUES (705, '1080.00', 1080, 80, 80, 6, NULL, 133);
INSERT INTO `level` VALUES (706, '280.00', 280, 80, 80, 6, NULL, 134);
INSERT INTO `level` VALUES (707, '580.00', 580, 80, 80, 6, NULL, 134);
INSERT INTO `level` VALUES (708, '380.00', 380, 80, 80, 6, NULL, 134);
INSERT INTO `level` VALUES (709, '180.00', 180, 80, 80, 6, NULL, 134);
INSERT INTO `level` VALUES (710, '80.00', 80, 80, 80, 6, NULL, 134);
INSERT INTO `level` VALUES (711, '1080.00', 1080, 80, 80, 6, NULL, 134);
INSERT INTO `level` VALUES (712, '280.00', 280, 80, 80, 6, NULL, 135);
INSERT INTO `level` VALUES (713, '580.00', 580, 80, 80, 6, NULL, 135);
INSERT INTO `level` VALUES (714, '380.00', 380, 80, 80, 6, NULL, 135);
INSERT INTO `level` VALUES (715, '180.00', 180, 80, 80, 6, NULL, 135);
INSERT INTO `level` VALUES (716, '80.00', 80, 80, 80, 6, NULL, 135);
INSERT INTO `level` VALUES (717, '1080.00', 1080, 80, 80, 6, NULL, 135);
INSERT INTO `level` VALUES (718, '1280元（1280.00）', 1280, 80, 80, 6, NULL, 136);
INSERT INTO `level` VALUES (719, '380元（380.00）', 380, 80, 80, 6, NULL, 136);
INSERT INTO `level` VALUES (720, '580元（580.00）', 580, 80, 80, 6, NULL, 136);
INSERT INTO `level` VALUES (721, '780元（780.00）', 780, 80, 80, 6, NULL, 136);
INSERT INTO `level` VALUES (722, '980元（980.00）', 980, 80, 80, 6, NULL, 136);
INSERT INTO `level` VALUES (723, '280元（280.00）', 280, 80, 80, 0, NULL, 136);
INSERT INTO `level` VALUES (724, '1280元（1280.00）', 1280, 80, 80, 6, NULL, 137);
INSERT INTO `level` VALUES (725, '380元（380.00）', 380, 80, 80, 6, NULL, 137);
INSERT INTO `level` VALUES (726, '580元（580.00）', 580, 80, 80, 6, NULL, 137);
INSERT INTO `level` VALUES (727, '780元（780.00）', 780, 80, 80, 6, NULL, 137);
INSERT INTO `level` VALUES (728, '980元（980.00）', 980, 80, 80, 6, NULL, 137);
INSERT INTO `level` VALUES (729, '280元（280.00）', 280, 80, 80, 0, NULL, 137);
INSERT INTO `level` VALUES (730, '280.00', 280, 80, 80, 6, NULL, 138);
INSERT INTO `level` VALUES (731, '680.00', 680, 80, 80, 6, NULL, 138);
INSERT INTO `level` VALUES (732, '80.00', 80, 80, 80, 0, NULL, 138);
INSERT INTO `level` VALUES (733, '480.00', 480, 80, 80, 6, NULL, 138);
INSERT INTO `level` VALUES (734, '380.00', 380, 80, 80, 6, NULL, 138);
INSERT INTO `level` VALUES (735, '180.00', 180, 80, 80, 6, NULL, 138);
INSERT INTO `level` VALUES (736, '880.00', 880, 80, 80, 6, NULL, 138);
INSERT INTO `level` VALUES (737, '280.00', 280, 80, 80, 6, NULL, 139);
INSERT INTO `level` VALUES (738, '680.00', 680, 80, 80, 6, NULL, 139);
INSERT INTO `level` VALUES (739, '80.00', 80, 80, 80, 0, NULL, 139);
INSERT INTO `level` VALUES (740, '480.00', 480, 80, 80, 6, NULL, 139);
INSERT INTO `level` VALUES (741, '380.00', 380, 80, 80, 6, NULL, 139);
INSERT INTO `level` VALUES (742, '180.00', 180, 80, 80, 6, NULL, 139);
INSERT INTO `level` VALUES (743, '880.00', 880, 80, 80, 6, NULL, 139);
INSERT INTO `level` VALUES (744, '280.00', 280, 80, 80, 6, NULL, 140);
INSERT INTO `level` VALUES (745, '680.00', 680, 80, 80, 6, NULL, 140);
INSERT INTO `level` VALUES (746, '80.00', 80, 80, 80, 0, NULL, 140);
INSERT INTO `level` VALUES (747, '480.00', 480, 80, 80, 6, NULL, 140);
INSERT INTO `level` VALUES (748, '380.00', 380, 80, 80, 6, NULL, 140);
INSERT INTO `level` VALUES (749, '180.00', 180, 80, 80, 6, NULL, 140);
INSERT INTO `level` VALUES (750, '880.00', 880, 80, 80, 6, NULL, 140);
INSERT INTO `level` VALUES (751, '280.00', 280, 80, 80, 6, NULL, 141);
INSERT INTO `level` VALUES (752, '680.00', 680, 80, 80, 6, NULL, 141);
INSERT INTO `level` VALUES (753, '80.00', 80, 80, 80, 0, NULL, 141);
INSERT INTO `level` VALUES (754, '480.00', 480, 80, 80, 6, NULL, 141);
INSERT INTO `level` VALUES (755, '380.00', 380, 80, 80, 6, NULL, 141);
INSERT INTO `level` VALUES (756, '180.00', 180, 80, 80, 6, NULL, 141);
INSERT INTO `level` VALUES (757, '880.00', 880, 80, 80, 6, NULL, 141);
INSERT INTO `level` VALUES (758, '四等票（280.00）', 280, 80, 80, 6, NULL, 142);
INSERT INTO `level` VALUES (759, '三等票（380.00）', 380, 80, 80, 6, NULL, 142);
INSERT INTO `level` VALUES (760, '二等票（480.00）', 480, 80, 80, 6, NULL, 142);
INSERT INTO `level` VALUES (761, '五等票（180.00）', 180, 80, 80, 0, NULL, 142);
INSERT INTO `level` VALUES (762, '一等票（580.00）', 580, 80, 80, 6, NULL, 142);
INSERT INTO `level` VALUES (763, '四等票（280.00）', 280, 80, 80, 6, NULL, 143);
INSERT INTO `level` VALUES (764, '三等票（380.00）', 380, 80, 80, 6, NULL, 143);
INSERT INTO `level` VALUES (765, '二等票（480.00）', 480, 80, 80, 6, NULL, 143);
INSERT INTO `level` VALUES (766, '五等票（180.00）', 180, 80, 80, 0, NULL, 143);
INSERT INTO `level` VALUES (767, '一等票（580.00）', 580, 80, 80, 6, NULL, 143);
INSERT INTO `level` VALUES (768, '180（180.00）', 180, 80, 80, 0, NULL, 144);
INSERT INTO `level` VALUES (769, '720（720.00）', 720, 80, 80, 6, NULL, 144);
INSERT INTO `level` VALUES (770, '280（280.00）', 280, 80, 80, 0, NULL, 144);
INSERT INTO `level` VALUES (771, '880（880.00）', 880, 80, 80, 6, NULL, 144);
INSERT INTO `level` VALUES (772, '600（600.00）', 600, 80, 80, 6, NULL, 144);
INSERT INTO `level` VALUES (773, '480（480.00）', 480, 80, 80, 0, NULL, 144);
INSERT INTO `level` VALUES (774, '180（180.00）', 180, 80, 80, 0, NULL, 145);
INSERT INTO `level` VALUES (775, '720（720.00）', 720, 80, 80, 6, NULL, 145);
INSERT INTO `level` VALUES (776, '280（280.00）', 280, 80, 80, 0, NULL, 145);
INSERT INTO `level` VALUES (777, '880（880.00）', 880, 80, 80, 6, NULL, 145);
INSERT INTO `level` VALUES (778, '600（600.00）', 600, 80, 80, 6, NULL, 145);
INSERT INTO `level` VALUES (779, '480（480.00）', 480, 80, 80, 0, NULL, 145);
INSERT INTO `level` VALUES (780, '80（80.00）', 80, 80, 80, 6, NULL, 146);
INSERT INTO `level` VALUES (781, '180（180.00）', 180, 80, 80, 6, NULL, 146);
INSERT INTO `level` VALUES (782, '480（480.00）', 480, 80, 80, 6, NULL, 146);
INSERT INTO `level` VALUES (783, '680（680.00）', 680, 80, 80, 6, NULL, 146);
INSERT INTO `level` VALUES (784, '380（380.00）', 380, 80, 80, 6, NULL, 146);
INSERT INTO `level` VALUES (785, '280（280.00）', 280, 80, 80, 6, NULL, 146);
INSERT INTO `level` VALUES (786, '80（80.00）', 80, 80, 80, 6, NULL, 147);
INSERT INTO `level` VALUES (787, '180（180.00）', 180, 80, 80, 6, NULL, 147);
INSERT INTO `level` VALUES (788, '480（480.00）', 480, 80, 80, 6, NULL, 147);
INSERT INTO `level` VALUES (789, '680（680.00）', 680, 80, 80, 6, NULL, 147);
INSERT INTO `level` VALUES (790, '380（380.00）', 380, 80, 80, 6, NULL, 147);
INSERT INTO `level` VALUES (791, '280（280.00）', 280, 80, 80, 6, NULL, 147);
INSERT INTO `level` VALUES (792, '80（80.00）', 80, 80, 80, 6, NULL, 148);
INSERT INTO `level` VALUES (793, '180（180.00）', 180, 80, 80, 6, NULL, 148);
INSERT INTO `level` VALUES (794, '380（380.00）', 380, 80, 80, 6, NULL, 148);
INSERT INTO `level` VALUES (795, '280（280.00）', 280, 80, 80, 6, NULL, 148);
INSERT INTO `level` VALUES (796, '120（120.00）', 120, 80, 80, 6, NULL, 148);
INSERT INTO `level` VALUES (797, '80（80.00）', 80, 80, 80, 6, NULL, 149);
INSERT INTO `level` VALUES (798, '180（180.00）', 180, 80, 80, 6, NULL, 149);
INSERT INTO `level` VALUES (799, '380（380.00）', 380, 80, 80, 6, NULL, 149);
INSERT INTO `level` VALUES (800, '280（280.00）', 280, 80, 80, 6, NULL, 149);
INSERT INTO `level` VALUES (801, '120（120.00）', 120, 80, 80, 6, NULL, 149);
INSERT INTO `level` VALUES (802, 'A档  100元（100.00）', 100, 80, 80, 6, NULL, 150);
INSERT INTO `level` VALUES (803, 'C档  60元（60.00）', 60, 80, 80, 0, NULL, 150);
INSERT INTO `level` VALUES (804, 'B档  80元（80.00）', 80, 80, 80, 6, NULL, 150);
INSERT INTO `level` VALUES (805, 'A档  100元（100.00）', 100, 80, 80, 6, NULL, 151);
INSERT INTO `level` VALUES (806, 'C档  60元（60.00）', 60, 80, 80, 0, NULL, 151);
INSERT INTO `level` VALUES (807, 'B档  80元（80.00）', 80, 80, 80, 6, NULL, 151);
INSERT INTO `level` VALUES (808, '100元', 100, 80, 80, 0, NULL, 152);
INSERT INTO `level` VALUES (809, '200元', 200, 80, 80, 6, NULL, 152);
INSERT INTO `level` VALUES (810, '260元', 260, 80, 80, 6, NULL, 152);
INSERT INTO `level` VALUES (811, '380元', 380, 80, 80, 6, NULL, 152);
INSERT INTO `level` VALUES (812, '160元', 160, 80, 80, 6, NULL, 152);
INSERT INTO `level` VALUES (813, '320元', 320, 80, 80, 6, NULL, 152);
INSERT INTO `level` VALUES (814, '80元', 80, 80, 80, 6, NULL, 153);
INSERT INTO `level` VALUES (815, '套票550元（280*2）', 550, 80, 80, 3, NULL, 154);
INSERT INTO `level` VALUES (816, '豪华贵宾票150元', 150, 80, 80, 6, NULL, 154);
INSERT INTO `level` VALUES (817, '爆笑有梗票60元', 60, 80, 80, 6, NULL, 154);
INSERT INTO `level` VALUES (818, '喜剧VIP票99元', 99, 80, 80, 6, NULL, 154);
INSERT INTO `level` VALUES (819, '套票180元（99*2）', 180, 80, 80, 3, NULL, 154);
INSERT INTO `level` VALUES (820, '北喜体验票9.9元', 9, 80, 80, 0, NULL, 154);
INSERT INTO `level` VALUES (821, '至尊贵宾票280元', 280, 80, 80, 6, NULL, 154);
INSERT INTO `level` VALUES (822, '套票118元（60*2）', 118, 80, 80, 3, NULL, 154);
INSERT INTO `level` VALUES (823, '套票280元（150*2）', 280, 80, 80, 3, NULL, 154);
INSERT INTO `level` VALUES (824, '普通票（119.00）', 119, 80, 80, 6, NULL, 155);
INSERT INTO `level` VALUES (825, '早鸟票（99.00）', 99, 80, 80, 0, NULL, 155);
INSERT INTO `level` VALUES (826, '特惠双人套票（188.00）', 188, 80, 80, 0, NULL, 155);
INSERT INTO `level` VALUES (827, '130（130.00）', 130, 80, 80, 6, NULL, 156);
INSERT INTO `level` VALUES (828, '80（80.00）', 80, 80, 80, 6, NULL, 156);
INSERT INTO `level` VALUES (829, '180（180.00）', 180, 80, 80, 6, NULL, 156);
INSERT INTO `level` VALUES (830, '成人票49.9元', 49, 80, 80, 6, NULL, 157);
INSERT INTO `level` VALUES (831, '学生票45元（23岁以下，持证）', 45, 80, 80, 6, NULL, 157);
INSERT INTO `level` VALUES (832, '双展票98元（失恋+星空）', 98, 80, 80, 6, NULL, 157);
INSERT INTO `level` VALUES (833, '成人票49.9元', 49, 80, 80, 6, NULL, 158);
INSERT INTO `level` VALUES (834, '学生票45元（23岁以下，持证）', 45, 80, 80, 6, NULL, 158);
INSERT INTO `level` VALUES (835, '双展票98元（失恋+星空）', 98, 80, 80, 6, NULL, 158);
INSERT INTO `level` VALUES (836, '1大1小 126元（原价180元）', 126, 80, 80, 6, NULL, 159);
INSERT INTO `level` VALUES (837, '90元（原价120元）', 90, 80, 80, 6, NULL, 159);
INSERT INTO `level` VALUES (838, '2大2小 252元 （原价360元）', 252, 80, 80, 6, NULL, 159);
INSERT INTO `level` VALUES (839, '半价票45元（1.4米以上未成年购买）', 45, 80, 80, 6, NULL, 159);
INSERT INTO `level` VALUES (840, '2大1小 210元（原价300元）', 210, 80, 80, 6, NULL, 159);
INSERT INTO `level` VALUES (841, 'B区30元', 30, 80, 80, 6, NULL, 160);
INSERT INTO `level` VALUES (842, 'C区25元', 25, 80, 80, 6, NULL, 160);
INSERT INTO `level` VALUES (843, 'A区40元', 40, 80, 80, 6, NULL, 160);
INSERT INTO `level` VALUES (844, '单人票199元', 199, 80, 80, 6, NULL, 161);
INSERT INTO `level` VALUES (845, '双人票299元', 299, 80, 80, 6, NULL, 161);
INSERT INTO `level` VALUES (846, '早鸟票88元（含礼品A）', 88, 80, 80, 20, NULL, 162);
INSERT INTO `level` VALUES (847, '早鸟票88元（含礼品A）', 88, 80, 80, 20, NULL, 163);
INSERT INTO `level` VALUES (848, '假日成人票288元', 288, 80, 80, 1, NULL, 164);
INSERT INTO `level` VALUES (849, '优享套票假日398元', 398, 80, 80, 6, NULL, 164);
INSERT INTO `level` VALUES (850, '58元体验票（49.90）', 49, 80, 80, 6, NULL, 165);
INSERT INTO `level` VALUES (851, '128元畅玩票（99.00）', 99, 80, 80, 6, NULL, 165);
INSERT INTO `level` VALUES (852, '98元演出票（69.90）', 69, 80, 80, 6, NULL, 165);
INSERT INTO `level` VALUES (853, '双人票98元', 98, 80, 80, 6, NULL, 166);
INSERT INTO `level` VALUES (854, '单人票58元', 58, 80, 80, 6, NULL, 166);
INSERT INTO `level` VALUES (855, '亲子票 49元', 49, 80, 80, 6, NULL, 167);
INSERT INTO `level` VALUES (856, '单人票29元', 29, 80, 80, 6, NULL, 167);
INSERT INTO `level` VALUES (857, '50元（50.00）', 50, 80, 80, 6, NULL, 168);
INSERT INTO `level` VALUES (858, '800元（800.00）', 800, 80, 80, 4, NULL, 168);
INSERT INTO `level` VALUES (859, '80元（80.00）', 80, 80, 80, 6, NULL, 168);
INSERT INTO `level` VALUES (860, '200元（200.00）', 200, 80, 80, 6, NULL, 168);
INSERT INTO `level` VALUES (861, '300元（300.00）', 300, 80, 80, 6, NULL, 168);
INSERT INTO `level` VALUES (862, '100元（100.00）', 100, 80, 80, 6, NULL, 168);
INSERT INTO `level` VALUES (863, '爆笑开心票（60.00）', 60, 80, 80, 6, NULL, 169);
INSERT INTO `level` VALUES (864, '喜剧乐享票（99.00）', 99, 80, 80, 6, NULL, 169);
INSERT INTO `level` VALUES (865, '豪华贵宾票（150.00）', 150, 80, 80, 6, NULL, 169);
INSERT INTO `level` VALUES (866, '至尊贵宾票（200.00）', 200, 80, 80, 6, NULL, 169);
INSERT INTO `level` VALUES (867, '爆笑开心票（60.00）', 60, 80, 80, 6, NULL, 170);
INSERT INTO `level` VALUES (868, '喜剧乐享票（99.00）', 99, 80, 80, 6, NULL, 170);
INSERT INTO `level` VALUES (869, '豪华贵宾票（150.00）', 150, 80, 80, 6, NULL, 170);
INSERT INTO `level` VALUES (870, '至尊贵宾票（200.00）', 200, 80, 80, 6, NULL, 170);
INSERT INTO `level` VALUES (871, '爆笑开心票（60.00）', 60, 80, 80, 6, NULL, 171);
INSERT INTO `level` VALUES (872, '喜剧乐享票（99.00）', 99, 80, 80, 6, NULL, 171);
INSERT INTO `level` VALUES (873, '豪华贵宾票（150.00）', 150, 80, 80, 6, NULL, 171);
INSERT INTO `level` VALUES (874, '至尊贵宾票（200.00）', 200, 80, 80, 6, NULL, 171);
INSERT INTO `level` VALUES (875, '单人票79元', 79, 80, 80, 6, NULL, 172);
INSERT INTO `level` VALUES (876, '二楼全景体验票19元', 19, 80, 80, 6, NULL, 172);
INSERT INTO `level` VALUES (877, '双人票150元', 150, 80, 80, 6, NULL, 172);
INSERT INTO `level` VALUES (878, '160（160.00）', 160, 80, 80, 6, NULL, 173);
INSERT INTO `level` VALUES (879, '80（80.00）', 80, 80, 80, 6, NULL, 173);
INSERT INTO `level` VALUES (880, '50（50.00）', 50, 80, 80, 0, NULL, 173);
INSERT INTO `level` VALUES (881, '120（120.00）', 120, 80, 80, 6, NULL, 173);
INSERT INTO `level` VALUES (882, '160（160.00）', 160, 80, 80, 6, NULL, 174);
INSERT INTO `level` VALUES (883, '80（80.00）', 80, 80, 80, 6, NULL, 174);
INSERT INTO `level` VALUES (884, '50（50.00）', 50, 80, 80, 0, NULL, 174);
INSERT INTO `level` VALUES (885, '120（120.00）', 120, 80, 80, 6, NULL, 174);
INSERT INTO `level` VALUES (886, '38元区（38.00）', 38, 80, 80, 6, NULL, 175);
INSERT INTO `level` VALUES (887, '50元区（50.00）', 50, 80, 80, 6, NULL, 175);
INSERT INTO `level` VALUES (888, '30元区（30.00）', 30, 80, 80, 6, NULL, 175);
INSERT INTO `level` VALUES (889, '38元区（38.00）', 38, 80, 80, 6, NULL, 176);
INSERT INTO `level` VALUES (890, '50元区（50.00）', 50, 80, 80, 6, NULL, 176);
INSERT INTO `level` VALUES (891, '30元区（30.00）', 30, 80, 80, 6, NULL, 176);
INSERT INTO `level` VALUES (892, '38元区（38.00）', 38, 80, 80, 6, NULL, 177);
INSERT INTO `level` VALUES (893, '50元区（50.00）', 50, 80, 80, 6, NULL, 177);
INSERT INTO `level` VALUES (894, '30元区（30.00）', 30, 80, 80, 6, NULL, 177);
INSERT INTO `level` VALUES (895, '单人票60元', 60, 80, 80, 6, NULL, 178);
INSERT INTO `level` VALUES (896, '学生儿童票40元', 40, 80, 80, 6, NULL, 178);
INSERT INTO `level` VALUES (897, '双人票110元', 110, 80, 80, 6, NULL, 178);
INSERT INTO `level` VALUES (898, '80', 80, 80, 80, 6, NULL, 179);
INSERT INTO `level` VALUES (899, '220', 220, 80, 80, 6, NULL, 179);
INSERT INTO `level` VALUES (900, '180', 180, 80, 80, 6, NULL, 179);
INSERT INTO `level` VALUES (901, '120', 120, 80, 80, 6, NULL, 179);
INSERT INTO `level` VALUES (902, '看台680元', 680, 80, 80, 6, NULL, 180);
INSERT INTO `level` VALUES (903, '内场1580元', 1580, 80, 80, 6, NULL, 180);
INSERT INTO `level` VALUES (904, '看台480元', 480, 80, 80, 6, NULL, 180);
INSERT INTO `level` VALUES (905, '看台（主席台）1280元', 1280, 80, 80, 0, NULL, 180);
INSERT INTO `level` VALUES (906, '内场1280元', 1280, 80, 80, 6, NULL, 180);
INSERT INTO `level` VALUES (907, '看台880元', 880, 80, 80, 6, NULL, 180);
INSERT INTO `level` VALUES (908, 'A（180.00）', 180, 80, 80, 6, NULL, 181);
INSERT INTO `level` VALUES (909, 'D（100.00）', 100, 80, 80, 6, NULL, 181);
INSERT INTO `level` VALUES (910, 'B（150.00）', 150, 80, 80, 6, NULL, 181);
INSERT INTO `level` VALUES (911, 'C（120.00）', 120, 80, 80, 6, NULL, 181);
INSERT INTO `level` VALUES (912, 'A（180.00）', 180, 80, 80, 6, NULL, 182);
INSERT INTO `level` VALUES (913, 'D（100.00）', 100, 80, 80, 6, NULL, 182);
INSERT INTO `level` VALUES (914, 'B（150.00）', 150, 80, 80, 6, NULL, 182);
INSERT INTO `level` VALUES (915, 'C（120.00）', 120, 80, 80, 6, NULL, 182);
INSERT INTO `level` VALUES (916, 'D（80.00）', 80, 80, 80, 0, NULL, 183);
INSERT INTO `level` VALUES (917, 'C（100.00）', 100, 80, 80, 6, NULL, 183);
INSERT INTO `level` VALUES (918, 'A（150.00）', 150, 80, 80, 6, NULL, 183);
INSERT INTO `level` VALUES (919, 'B（120.00）', 120, 80, 80, 6, NULL, 183);
INSERT INTO `level` VALUES (920, '380元', 380, 80, 80, 0, NULL, 184);
INSERT INTO `level` VALUES (921, '180元', 180, 80, 80, 6, NULL, 184);
INSERT INTO `level` VALUES (922, '280元', 280, 80, 80, 6, NULL, 184);
INSERT INTO `level` VALUES (923, '80元', 80, 80, 80, 6, NULL, 184);
INSERT INTO `level` VALUES (924, '260元', 260, 80, 80, 6, NULL, 185);
INSERT INTO `level` VALUES (925, '360元', 360, 80, 80, 6, NULL, 185);
INSERT INTO `level` VALUES (926, '160元', 160, 80, 80, 6, NULL, 185);
INSERT INTO `level` VALUES (927, '80元', 80, 80, 80, 6, NULL, 185);
INSERT INTO `level` VALUES (928, '全价票88元', 88, 80, 80, 6, NULL, 186);
INSERT INTO `level` VALUES (929, '预售票68元', 68, 80, 80, 6, NULL, 186);
INSERT INTO `level` VALUES (930, '甲级票（200.00）', 200, 80, 80, 6, NULL, 187);
INSERT INTO `level` VALUES (931, '丙级票（80.00）', 80, 80, 80, 6, NULL, 187);
INSERT INTO `level` VALUES (932, '乙级票（120.00）', 120, 80, 80, 6, NULL, 187);
INSERT INTO `level` VALUES (933, '150元', 150, 80, 80, 6, NULL, 188);
INSERT INTO `level` VALUES (934, '100元', 100, 80, 80, 6, NULL, 188);
INSERT INTO `level` VALUES (935, '50元', 50, 80, 80, 2, NULL, 188);
INSERT INTO `level` VALUES (936, '180元', 180, 80, 80, 5, NULL, 189);
INSERT INTO `level` VALUES (937, '50元', 50, 80, 80, 0, NULL, 189);
INSERT INTO `level` VALUES (938, '380元', 380, 80, 80, 5, NULL, 189);
INSERT INTO `level` VALUES (939, '100元', 100, 80, 80, 5, NULL, 189);
INSERT INTO `level` VALUES (940, '80元', 80, 80, 80, 3, NULL, 189);
INSERT INTO `level` VALUES (941, '280元', 280, 80, 80, 5, NULL, 189);
INSERT INTO `level` VALUES (942, '50元', 50, 80, 80, 5, NULL, 190);
INSERT INTO `level` VALUES (943, '180元', 180, 80, 80, 5, NULL, 190);
INSERT INTO `level` VALUES (944, '100元', 100, 80, 80, 5, NULL, 190);
INSERT INTO `level` VALUES (945, '280元', 280, 80, 80, 5, NULL, 190);
INSERT INTO `level` VALUES (946, '80元', 80, 80, 80, 5, NULL, 190);
INSERT INTO `level` VALUES (947, '学生票：25元', 25, 80, 80, 0, NULL, 191);
INSERT INTO `level` VALUES (948, '成人票：45元', 45, 80, 80, 6, NULL, 191);
INSERT INTO `level` VALUES (949, '预售票（80.00）', 80, 80, 80, 6, NULL, 192);
INSERT INTO `level` VALUES (950, '双人票（120.00）', 120, 80, 80, 6, NULL, 192);
INSERT INTO `level` VALUES (951, '早鸟票：100元', 100, 80, 80, 0, NULL, 193);
INSERT INTO `level` VALUES (952, '现场票：220元', 220, 80, 80, 6, NULL, 193);
INSERT INTO `level` VALUES (953, '预售票：160元', 160, 80, 80, 6, NULL, 193);
INSERT INTO `level` VALUES (954, '180元', 180, 80, 80, 6, NULL, 194);
INSERT INTO `level` VALUES (955, '380元', 380, 80, 80, 6, NULL, 194);
INSERT INTO `level` VALUES (956, '120元', 120, 80, 80, 6, NULL, 194);
INSERT INTO `level` VALUES (957, '280元', 280, 80, 80, 6, NULL, 194);
INSERT INTO `level` VALUES (958, '评书60元', 60, 80, 80, 6, NULL, 195);
INSERT INTO `level` VALUES (959, '评书80元', 80, 80, 80, 6, NULL, 195);
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `status_info` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_count` int(10) unsigned DEFAULT NULL,
  `total_price` int(10) unsigned DEFAULT NULL,
  `linkman` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linknum` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attender` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `show_id` int(10) DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_order_user_id` (`user_id`),
  KEY `FK_order_show_id` (`show_id`),
  CONSTRAINT `FK_order_show_id` FOREIGN KEY (`show_id`) REFERENCES `show` (`id`),
  CONSTRAINT `FK_order_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for program
-- ----------------------------
DROP TABLE IF EXISTS `program`;
CREATE TABLE `program` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `low_price` int(10) unsigned DEFAULT NULL,
  `high_price` int(10) unsigned DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explain` text COLLATE utf8_unicode_ci,
  `detail` text COLLATE utf8_unicode_ci,
  `notice` text COLLATE utf8_unicode_ci,
  `image_url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(10) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_program_city_id` (`city_id`),
  KEY `FK_program_category_id` (`category_id`),
  CONSTRAINT `FK_program_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_program_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of program
-- ----------------------------
BEGIN;
INSERT INTO `program` VALUES (1, '【杭州】星空恋爱解压馆（湖滨银泰in77旗舰店）', 29, 69, '2021-05-13 10:35:00', '2021-05-15 10:35:00', '湖滨银泰in77(D区负二楼)', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/637879137617.jpg', 3, 3);
INSERT INTO `program` VALUES (2, '【苏州】《久石让 · 宫崎骏》音乐会', 60, 80, '2021-05-11 13:35:00', '2021-05-13 13:35:00', '苏州市歌舞剧院小剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/641313072155.jpg', 7, 8);
INSERT INTO `program` VALUES (3, '【苏州】菊次郎的夏天—久石让轻音乐之旅钢琴音乐会', 88, 360, '2021-05-12 16:13:00', '2021-05-14 16:13:00', '苏州昆剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642571390891.jpg', 7, 8);
INSERT INTO `program` VALUES (4, '【苏州】2021汪峰UNFOLLOW巡回演唱会首演·苏州站', 188, 1718, '2021-05-07 14:58:00', '2021-05-09 14:58:00', '苏州奥林匹克体育中心体育场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642840780725.jpg', 7, 6);
INSERT INTO `program` VALUES (5, '【广州】地下8英里·大学说唱联赛 正赛 广州站', 128, 168, '2021-05-12 18:20:00', '2021-05-14 18:20:00', '太空间livehouse', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643099090757.jpg', 9, 2);
INSERT INTO `program` VALUES (6, '【广州】小黄人趣跑-广州站', 148, 458, '2021-05-12 07:43:00', '2021-05-14 07:43:00', '广州海珠湿地公园北门', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643496877301.jpg', 9, 7);
INSERT INTO `program` VALUES (7, '【上海】万晓利「呼吸2021」2021全国巡演 上海站', 100, 220, '2021-05-13 13:38:00', '2021-05-15 13:38:00', 'Modernsky lab上海', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643806955757.jpg', 1, 2);
INSERT INTO `program` VALUES (8, '【武汉】开心麻花经典爆笑舞台剧《乌龙山伯爵》', 100, 880, '2021-05-07 10:19:00', '2021-05-09 10:19:00', '湖北剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644226518356.jpg', 12, 9);
INSERT INTO `program` VALUES (9, '【上海】阿加莎·克里斯蒂现场广播剧《声临阿加莎》', 180, 580, '2021-05-07 10:22:00', '2021-05-09 10:22:00', '人民大舞台', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644517675087.jpg', 1, 9);
INSERT INTO `program` VALUES (10, '【江门】钢琴的诉说者—徐起钢琴独奏音乐会', 100, 180, '2021-05-08 11:58:00', '2021-05-10 11:58:00', '江门演艺中心水岸音乐厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/640170520954.jpg', 81, 8);
INSERT INTO `program` VALUES (11, '【上海】东方美谷∙2021花海美妆嘉年华', 380, 450, '2021-05-10 20:31:00', '2021-05-12 20:31:00', '上海之鱼奉贤青年艺术公园', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/641755116221.jpg', 1, 7);
INSERT INTO `program` VALUES (12, '【广州】粤剧《还金记》', 50, 180, '2021-05-08 10:00:00', '2021-05-10 10:00:00', '广东粤剧艺术中心', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642910817608.jpg', 9, 3);
INSERT INTO `program` VALUES (13, '【天津】【天津】奥特曼系列舞台秀《奥特英雄银河格斗——粉碎阴谋》', 180, 1020, '2021-05-11 16:19:00', '2021-05-13 16:19:00', '天津滨湖剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643267433202.jpg', 4, 2);
INSERT INTO `program` VALUES (14, '【广州】《黄俊英领衔主演年度笑剧“笑爷新说”》', 68, 268, '2021-05-07 14:00:00', '2021-05-09 14:00:00', '广州中山纪念堂', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643497821072.jpg', 9, 4);
INSERT INTO `program` VALUES (15, '【上海】2021星巢秘境音乐节—上海站', 688, 1280, '2021-05-10 23:28:00', '2021-05-12 23:28:00', '上海国际音乐村(光明生态园内)', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644073327389.jpg', 1, 7);
INSERT INTO `program` VALUES (16, '【北京】「单立人喜剧」刘旸教主《伊卡洛斯》脱口秀专场-北京站', 180, 880, '2021-05-08 10:00:00', '2021-05-10 10:00:00', '世纪剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644243526344.jpg', 2, 4);
INSERT INTO `program` VALUES (17, '【北京】2021中央美院毕业季', 10, 15, '2021-05-08 19:36:00', '2021-05-10 19:36:00', '中央美术学院美术馆', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644676231207.jpg', 2, 3);
INSERT INTO `program` VALUES (18, '【苏州】【万有音乐系】《仙剑奇侠传视听音乐会》', 50, 680, '2021-05-07 11:43:00', '2021-05-09 11:43:00', '苏州聚橙尹山湖大剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/640750657352.jpg', 7, 8);
INSERT INTO `program` VALUES (19, '【北京】《海洋你好——翕翕的奇幻之旅》 大型沉浸式亲子互动秀', 252, 800, '2021-05-13 00:11:00', '2021-05-15 00:11:00', '北京海洋馆', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642746445540.jpg', 2, 2);
INSERT INTO `program` VALUES (20, '【上海】《欢乐马戏》专场（2021年5月）', 120, 190, '2021-05-14 00:55:00', '2021-05-16 00:55:00', '上海马戏城', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642980627980.jpg', 1, 2);
INSERT INTO `program` VALUES (21, '【杭州】Into The Woods艺术节', 10, 89, '2021-05-13 10:54:00', '2021-05-15 10:54:00', '杭州植物园', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643374792431.jpg', 3, 3);
INSERT INTO `program` VALUES (22, '【中山】【友达以上 恋人未满】Monster KaR不插电音乐会 |《大湾区的浪漫》中山站', 100, 120, '2021-05-12 17:39:00', '2021-05-14 17:39:00', 'SUN LIVE SPACE (中山)', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643718014361.jpg', 67, 2);
INSERT INTO `program` VALUES (23, '【上海】「单立人喜剧」刘旸教主《天生有意思》脱口秀专场', 180, 680, '2021-05-10 15:06:00', '2021-05-12 15:06:00', '上海话剧艺术中心-艺术剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644298786708.jpg', 1, 4);
INSERT INTO `program` VALUES (24, '【天津】2021 天津·麦浪嘉年华', 388, 918, '2021-05-13 13:50:00', '2021-05-15 13:50:00', '天津玛雅海滩水公园', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644685535999.jpg', 4, 7);
INSERT INTO `program` VALUES (25, '【江门】大型古装粤剧《玉簪记》', 80, 380, '2021-05-12 18:11:00', '2021-05-14 18:11:00', '江门演艺中心侨都大剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/641214942932.jpg', 81, 3);
INSERT INTO `program` VALUES (26, '【广州】2021中国平安中超联赛【天河体育场】', 50, 150, '2021-05-12 00:01:00', '2021-05-14 00:01:00', '广州天河体育中心体育场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642556350660.jpg', 9, 3);
INSERT INTO `program` VALUES (27, '【杭州】他山 他人 他海', 25, 100, '2021-05-07 23:00:00', '2021-05-09 23:00:00', '杭州重启计划', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642763679827.jpg', 3, 3);
INSERT INTO `program` VALUES (28, '【苏州】“直到世界尽头”——流行钢琴动漫音乐会', 50, 280, '2021-05-07 19:34:00', '2021-05-09 19:34:00', '苏州聚橙尹山湖大剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643055939959.jpg', 7, 8);
INSERT INTO `program` VALUES (29, '【中山】“大道之行  永远的丰碑”名家名篇音乐诗文咏诵会', 180, 480, '2021-05-13 18:18:00', '2021-05-15 18:18:00', '中山市文化艺术中心大剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643451317349.jpg', 67, 9);
INSERT INTO `program` VALUES (30, '【北京】麒麟剧社五周年庆典（北京站）京剧专场演出——济公活佛', 180, 1280, '2021-05-07 10:00:00', '2021-05-09 10:00:00', '长安大戏院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643799514294.jpg', 2, 3);
INSERT INTO `program` VALUES (31, '【杭州】致敬达芬奇全球光影艺术体验大展•杭州站', 68, 280, '2021-05-08 16:59:00', '2021-05-10 16:59:00', '杭州宝龙艺术中心', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644217779464.jpg', 3, 3);
INSERT INTO `program` VALUES (32, '【济南】Sony music “贴地飞行”室内音乐节—济南站（看台票）', 198, 580, '2021-05-07 18:40:00', '2021-05-09 18:40:00', '济南奥体中心体育馆', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644431227376.jpg', 23, 7);
INSERT INTO `program` VALUES (33, '我相信于是我坚持-追光线上音乐会', 28, 99, '2021-05-07 11:00:00', '2021-05-09 11:00:00', '请到大麦APP和优酷APP观看', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/634936102243.jpg', 2, 5);
INSERT INTO `program` VALUES (34, '躺赢2021彩虹合唱团跨年线上音乐会(直播)', 30, 50, '2021-05-13 10:43:00', '2021-05-15 10:43:00', '平行麦现场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/633802426140.jpg', 2, 8);
INSERT INTO `program` VALUES (35, '【北京】大型魔幻互动亲子舞台剧《白雪公主》', 40, 280, '2021-05-12 17:12:00', '2021-05-14 17:12:00', '首钢体育大厦剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643721642185.jpg', 2, 2);
INSERT INTO `program` VALUES (36, '【上海】大型原创亲子魔幻儿童舞台剧《冰雪奇缘》', 96, 1280, '2021-05-07 16:54:00', '2021-05-09 16:54:00', '上海商城剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642718517944.jpg', 1, 2);
INSERT INTO `program` VALUES (37, '【上海】小猪佩奇中文版舞台剧第二季《完美的下雨天》', 80, 580, '2021-05-13 16:59:00', '2021-05-15 16:59:00', '东方艺术中心-歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642986491304.jpg', 1, 2);
INSERT INTO `program` VALUES (38, '【上海】身材焦虑主题展', 48, 108, '2021-05-08 07:33:00', '2021-05-10 07:33:00', '上海喜玛拉雅美术馆', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643032044200.jpg', 1, 3);
INSERT INTO `program` VALUES (39, '【上海】【趣探秘】喔！人类原来这样飞上天！与孩子们一起感受中国宇航科技！【重磅回归】', 38, 160, '2021-05-11 14:51:00', '2021-05-13 14:51:00', '趣探秘活动中心(虹桥天地)', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644524231117.jpg', 1, 5);
INSERT INTO `program` VALUES (40, '【上海】舞剧《朱鹮》', 80, 480, '2021-05-10 10:19:00', '2021-05-12 10:19:00', '九棵树未来艺术中心-大剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642560069689.jpg', 1, 1);
INSERT INTO `program` VALUES (41, '【上海】舞剧《杜甫》', 80, 880, '2021-05-10 13:18:00', '2021-05-12 13:18:00', '九棵树未来艺术中心-大剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643883109590.jpg', 1, 1);
INSERT INTO `program` VALUES (42, '【上海】胡沈员现代舞作品《流浪》', 180, 580, '2021-05-09 15:40:00', '2021-05-11 15:40:00', '东方艺术中心-歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643037137807.jpg', 1, 1);
INSERT INTO `program` VALUES (43, '【上海】舞剧《大饭店》（091921）', 180, 680, '2021-05-12 16:49:00', '2021-05-14 16:49:00', '上海大剧院-大剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642221037299.jpg', 1, 1);
INSERT INTO `program` VALUES (44, '【上海】芭蕾舞剧《红色娘子军》', 180, 880, '2021-05-07 13:49:00', '2021-05-09 13:49:00', '美琪大戏院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642087910420.jpg', 1, 1);
INSERT INTO `program` VALUES (45, '【上海】原创现代芭蕾《起点--足迹》', 80, 580, '2021-05-11 15:13:00', '2021-05-13 15:13:00', '上海国际舞蹈中心-大剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643229589570.jpg', 1, 1);
INSERT INTO `program` VALUES (46, '【上海】上海芭蕾舞团经典芭蕾舞剧《白毛女》', 80, 580, '2021-05-12 09:04:00', '2021-05-14 09:04:00', '九棵树未来艺术中心-大剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/640876377261.jpg', 1, 1);
INSERT INTO `program` VALUES (47, '【上海】鹰剧场作品《神曲》Divine', 100, 200, '2021-05-13 23:10:00', '2021-05-15 23:10:00', '上海国际舞蹈中心-实验剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644338318689.jpg', 1, 1);
INSERT INTO `program` VALUES (48, '【上海】赵梁艺术工作室出品 《幻茶谜经》', 80, 500, '2021-05-13 10:35:00', '2021-05-15 10:35:00', '上海大宁剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/640003632597.jpg', 1, 1);
INSERT INTO `program` VALUES (49, '【上海】杨丽萍作品 舞蹈剧场《十面埋伏》', 180, 880, '2021-05-07 17:48:00', '2021-05-09 17:48:00', '东方艺术中心-歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642379437880.jpg', 1, 1);
INSERT INTO `program` VALUES (50, '【深圳】麦田文化·原版绘本小兔汤姆改编舞台剧《嗨！我是汤姆》', 80, 380, '2021-05-07 00:17:00', '2021-05-09 00:17:00', '华夏艺术中心', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643118341595.jpg', 6, 2);
INSERT INTO `program` VALUES (51, '【深圳】开心麻花合家欢音乐剧《三只小猪》', 80, 380, '2021-05-12 14:35:00', '2021-05-14 14:35:00', '深圳开心麻花红山剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/641741253262.jpg', 6, 2);
INSERT INTO `program` VALUES (52, '【深圳】《冰雪奇缘》2021深圳亲子动漫视听交响音乐会', 180, 480, '2021-05-07 11:08:00', '2021-05-09 11:08:00', '深圳大剧院大剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642227269766.jpg', 6, 8);
INSERT INTO `program` VALUES (53, '【深圳】大船文化·木娃的音乐会响叮当 ——欧洲儿童绘本创意互动音乐会', 180, 380, '2021-05-10 15:00:00', '2021-05-12 15:00:00', '万象天地剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642767094729.jpg', 6, 2);
INSERT INTO `program` VALUES (54, '【深圳】互动亲子剧《大卫，不可以》', 100, 760, '2021-05-13 13:44:00', '2021-05-15 13:44:00', '华夏艺术中心', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/640850909124.jpg', 6, 2);
INSERT INTO `program` VALUES (55, '【成都】日本圆谷正版引进 新创华正版授权《奥特曼传奇之英雄归来》', 180, 1780, '2021-05-07 16:51:00', '2021-05-09 16:51:00', '成都国际剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642836821001.jpg', 5, 2);
INSERT INTO `program` VALUES (56, '【成都】大型冰雪奇幻儿童音乐剧《冰雪女王》', 80, 300, '2021-05-13 17:49:00', '2021-05-15 17:49:00', '阿尔法影城4楼阿尔法剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642231685640.jpg', 5, 2);
INSERT INTO `program` VALUES (57, '【天津】【天津】奥特曼系列舞台秀《奥特英雄银河格斗——粉碎阴谋》', 180, 1020, '2021-05-11 16:19:00', '2021-05-13 16:19:00', '天津滨湖剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643267433202.jpg', 4, 2);
INSERT INTO `program` VALUES (58, '【天津】【天津】开心麻花儿童剧团《怪物马戏团》', 80, 160, '2021-05-07 19:20:00', '2021-05-09 19:20:00', '天津南开大悦城4F金逸影城歌剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642387449314.jpg', 4, 2);
INSERT INTO `program` VALUES (59, '【天津】加拿大原版音乐启蒙·全场互动亲子剧《你是演奏家2·超级金贝鼓》', 180, 380, '2021-05-08 08:00:00', '2021-05-10 08:00:00', '天津滨海演艺中心歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642513492391.jpg', 4, 2);
INSERT INTO `program` VALUES (60, '【天津】【天津】开心麻花首部悬疑惊悚喜剧《醉后赢家》', 80, 1080, '2021-05-10 16:27:00', '2021-05-12 16:27:00', '天津滨湖剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643818967202.jpg', 4, 9);
INSERT INTO `program` VALUES (61, '【天津】杨丽萍作品大型多媒体舞台剧《平潭映象》', 280, 1280, '2021-05-08 00:14:00', '2021-05-10 00:14:00', '天津大礼堂', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643436503568.jpg', 4, 10);
INSERT INTO `program` VALUES (62, '【南京】开心麻花爆笑喜剧《旋转卡门》', 80, 880, '2021-05-09 18:36:00', '2021-05-11 18:36:00', '南京文化艺术中心大剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643402526580.jpg', 10, 9);
INSERT INTO `program` VALUES (63, '【广州】阿加莎·克里斯蒂经典悬疑剧《无人生还》广州站（小说结尾版）', 180, 580, '2021-05-13 15:43:00', '2021-05-15 15:43:00', '广东艺术剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643439844003.jpg', 9, 9);
INSERT INTO `program` VALUES (64, '【西安】何炅、黄忆慈主演、赖声川导演明星大剧《水中之书》', 180, 880, '2021-05-07 11:00:00', '2021-05-09 11:00:00', '陕西大剧院-歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642637578303.jpg', 8, 9);
INSERT INTO `program` VALUES (65, '【苏州】纪念鲁迅先生诞辰一百四十周年 克里斯蒂安·陆帕导演戏剧作品《狂人日记》（试演）', 80, 680, '2021-05-09 07:00:00', '2021-05-11 07:00:00', '苏州湾大剧院-歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642668483057.jpg', 7, 9);
INSERT INTO `program` VALUES (66, '【苏州】高分喜剧《蒋公的面子》', 80, 380, '2021-05-10 10:07:00', '2021-05-12 10:07:00', '苏州湾大剧院-歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643061547289.jpg', 7, 9);
INSERT INTO `program` VALUES (67, '【天津】水上剧场相声专场', 60, 100, '2021-05-09 14:00:00', '2021-05-11 14:00:00', '天津水上剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643723902099.jpg', 4, 4);
INSERT INTO `program` VALUES (68, '【哈尔滨】严值高全国脱口秀巡演《风月无边》哈尔滨站', 100, 380, '2021-05-07 10:00:00', '2021-05-09 10:00:00', '哈尔滨国际会展体育中心环球剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644139171796.jpg', 22, 4);
INSERT INTO `program` VALUES (69, '【沈阳】【Laugh喜剧】周末爆炸脱口秀-沈阳站', 80, 180, '2021-05-12 16:14:00', '2021-05-14 16:14:00', 'Laugh娱乐工厂', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642659697486.jpg', 14, 4);
INSERT INTO `program` VALUES (70, '【北京】【脱口秀专场】周日精品单口秀｜喜剧中心--开心笑大会', 9, 550, '2021-05-09 16:00:00', '2021-05-11 16:00:00', '隆福剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642309517554.jpg', 2, 4);
INSERT INTO `program` VALUES (71, '【上海】解压周末|硬核喜剧脱口秀', 99, 188, '2021-05-09 16:00:00', '2021-05-11 16:00:00', '288 livehouse泰康店', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/641891337185.jpg', 1, 4);
INSERT INTO `program` VALUES (72, '【重庆】扯馆儿——于悦雪飞·“悦”“飞”越高·相声专场', 80, 180, '2021-05-07 11:13:00', '2021-05-09 11:13:00', '重演时代艺术中心', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643432816313.jpg', 11, 4);
INSERT INTO `program` VALUES (73, '【上海】上海星空艺术馆 悦荟广场旗舰店', 45, 98, '2021-05-07 20:00:00', '2021-05-09 20:00:00', '悦荟广场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/636129258304.jpg', 1, 3);
INSERT INTO `program` VALUES (74, '【贵阳】【延展至5月19日】平天下——秦的统一 贵州省博物馆兵马俑展 贵阳', 45, 252, '2021-05-07 00:14:00', '2021-05-09 00:14:00', '贵州省博物馆B1层6号厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/634103721168.jpg', 39, 3);
INSERT INTO `program` VALUES (75, '【沈阳】缘春社相声茶馆', 25, 50, '2021-05-09 21:00:00', '2021-05-11 21:00:00', '缘春社相声茶馆', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/631068448053.jpg', 14, 5);
INSERT INTO `program` VALUES (76, '【上海】夏日缤纷白·葡萄酒市集', 199, 299, '2021-05-08 00:04:00', '2021-05-10 00:04:00', '红樽坊上海展厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643570076750.jpg', 1, 5);
INSERT INTO `program` VALUES (77, '【上海】fafa世界主题艺术IP跨界展', 88, 188, '2021-05-08 19:24:00', '2021-05-10 19:24:00', '花博小镇商业区C4-C5', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643983905098.jpg', 1, 3);
INSERT INTO `program` VALUES (78, '【武汉】长江首部漂移式多维体验剧《知音号》', 218, 398, '2021-05-13 16:00:00', '2021-05-15 16:00:00', '知音号', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/625204991916.jpg', 12, 5);
INSERT INTO `program` VALUES (79, '【天津】戏质实景体验馆', 49, 99, '2021-05-14 09:00:00', '2021-05-16 09:00:00', '爱秀伙伴 I SHOW PARTNER', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643274193368.jpg', 4, 5);
INSERT INTO `program` VALUES (80, '【北京】活的3D博物馆（单馆）', 58, 98, '2021-05-10 18:23:00', '2021-05-12 18:23:00', '北京·751活的3D博物馆', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/637691409725.jpg', 2, 3);
INSERT INTO `program` VALUES (81, '【咸阳】沉浸式体验展“拾萬迷密”', 29, 49, '2021-05-12 17:37:00', '2021-05-14 17:37:00', '丫丫艺术馆', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642985996309.jpg', 88, 3);
INSERT INTO `program` VALUES (82, '【北京】长安大戏院6月17日 京剧《赵氏孤儿》', 50, 800, '2021-05-10 17:18:00', '2021-05-12 17:18:00', '长安大戏院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643137485882.jpg', 2, 3);
INSERT INTO `program` VALUES (83, '【成都】《北京喜剧联盟》周末脱口秀喜剧开心吐槽爆笑解压专场', 60, 200, '2021-05-10 11:25:00', '2021-05-12 11:25:00', '阿尔法影城4楼阿尔法剧场', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643630398647.jpg', 5, 4);
INSERT INTO `program` VALUES (84, '【昆明】【脱口秀】不止喜剧&麦瑟尔夫人之夜', 19, 150, '2021-05-11 11:19:00', '2021-05-13 11:19:00', '云南艺术剧院艺术空间', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644523094223.jpg', 24, 4);
INSERT INTO `program` VALUES (85, '【邯郸】猪猪侠之救援大行动', 50, 160, '2021-05-12 11:29:00', '2021-05-14 11:29:00', '邯郸大剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/641341001764.jpg', 133, 2);
INSERT INTO `program` VALUES (86, '【邢台】雅趣轩曲艺社辛丑年五月相声专场演出', 30, 50, '2021-05-08 19:00:00', '2021-05-10 19:00:00', '邢台市雅趣轩曲艺社', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643026593891.jpg', 132, 4);
INSERT INTO `program` VALUES (87, '【荆州】撩角创意空间——“迷宫的异想世界”创意装置展', 40, 110, '2021-05-12 11:06:00', '2021-05-14 11:06:00', '(撩角创意空间)荆州卓尔城一期第六区3楼', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/634314620262.jpg', 129, 3);
INSERT INTO `program` VALUES (88, '【蚌埠】【蚌埠Q聚场】智趣成长系列舞台剧《米小圈之李白白不白》', 80, 220, '2021-05-07 20:10:00', '2021-05-09 20:10:00', '蚌埠大剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642169438440.jpg', 103, 2);
INSERT INTO `program` VALUES (89, '【蚌埠】2020李宗盛『有歌之年』巡回演唱会-蚌埠站', 480, 1580, '2021-05-10 16:40:00', '2021-05-12 16:40:00', '蚌埠市体育中心体育馆', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/611407643839.jpg', 103, 6);
INSERT INTO `program` VALUES (90, '【牡丹江】儿童剧《冰雪奇缘》', 100, 180, '2021-05-07 19:09:00', '2021-05-09 19:09:00', '牡丹江大剧院-歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/644215915416.jpg', 90, 9);
INSERT INTO `program` VALUES (91, '【牡丹江】《音乐后花园》钢琴爵士乐三重奏音乐会', 80, 150, '2021-05-13 14:54:00', '2021-05-15 14:54:00', '牡丹江大剧院-音乐厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643500175898.jpg', 90, 8);
INSERT INTO `program` VALUES (92, '【莆田】日本圆谷版奥特曼系列舞台剧·《奥特传奇之英雄归来》', 80, 380, '2021-05-13 00:14:00', '2021-05-15 00:14:00', '莆仙大剧院歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/641995346860.jpg', 101, 2);
INSERT INTO `program` VALUES (93, '【莆田】互动亲子剧《大卫，不可以》', 80, 360, '2021-05-07 15:39:00', '2021-05-09 15:39:00', '莆仙大剧院歌剧厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642371257396.jpg', 101, 2);
INSERT INTO `program` VALUES (94, '【台州】黑屋乐队2021巡演|独立不孤行', 68, 88, '2021-05-12 00:49:00', '2021-05-14 00:49:00', '黄色潜水艇酒吧-椒江店', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642999814496.jpg', 52, 2);
INSERT INTO `program` VALUES (95, '【台州】红楼梦', 80, 200, '2021-05-10 00:03:00', '2021-05-12 00:03:00', '三门剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642186032224.jpg', 52, 3);
INSERT INTO `program` VALUES (96, '【滨州】非虚构戏剧《 辅德里 》-滨州站', 50, 150, '2021-05-10 16:28:00', '2021-05-12 16:28:00', '滨州保利大剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643269123569.jpg', 70, 9);
INSERT INTO `program` VALUES (97, '【黄冈】话剧《上甘岭》-黄冈站', 50, 380, '2021-05-07 17:13:00', '2021-05-09 17:13:00', '黄冈黄梅戏大剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/641859110692.jpg', 72, 9);
INSERT INTO `program` VALUES (98, '【黄冈】话剧《燃烧的疯人院》-黄冈站', 50, 280, '2021-05-07 17:53:00', '2021-05-09 17:53:00', '黄冈黄梅戏大剧院', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/638653736772.jpg', 72, 9);
INSERT INTO `program` VALUES (99, '【呼和浩特】《异地登录》当代艺术展', 25, 45, '2021-05-10 08:58:00', '2021-05-12 08:58:00', '呼和浩特捌柒画廊', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642011778008.jpg', 28, 3);
INSERT INTO `program` VALUES (100, '【呼和浩特】天火乐队巡演呼和浩特站', 80, 120, '2021-05-09 15:24:00', '2021-05-11 15:24:00', 'WHOHOT LIVEHOUSE', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643048029095.jpg', 28, 2);
INSERT INTO `program` VALUES (101, '【长沙】万晓利「呼吸2021」2021全国巡演 长沙站', 100, 220, '2021-05-13 11:30:00', '2021-05-15 11:30:00', '46LIVEHOUSE', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643229829247.jpg', 13, 2);
INSERT INTO `program` VALUES (102, '【长沙】长沙首届非遗音乐周开幕式 “世界上最古老的【阿卡贝拉】——侗族大歌”音乐会', 120, 380, '2021-05-12 18:42:00', '2021-05-14 18:42:00', '长沙音乐厅', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/643373641519.jpg', 13, 8);
INSERT INTO `program` VALUES (103, '【长沙】半趣斋评书', 60, 80, '2021-05-13 20:00:00', '2021-05-15 20:00:00', '半趣斋茶社', '不支持退票...', '演出介绍...', '需要提前入场...', 'damFile/program/642517100249.jpg', 13, 4);
COMMIT;

-- ----------------------------
-- Table structure for show
-- ----------------------------
DROP TABLE IF EXISTS `show`;
CREATE TABLE `show` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `program_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_show_program_id` (`program_id`),
  CONSTRAINT `FK_show_program_id` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of show
-- ----------------------------
BEGIN;
INSERT INTO `show` VALUES (1, '2021.02.09-2021.05.31 10:00-22:00（21:30停止入场）', '2021-02-09 10:00:00', 1);
INSERT INTO `show` VALUES (2, '2021-05-22 周六 19:30', '2021-05-22 19:30:00', 2);
INSERT INTO `show` VALUES (3, '2021-06-19 周六 19:30', '2021-06-19 19:30:00', 2);
INSERT INTO `show` VALUES (4, '2021-06-12 周六 19:30', '2021-06-12 19:30:00', 2);
INSERT INTO `show` VALUES (5, '2021-06-01 周二 19:30', '2021-06-01 19:30:00', 2);
INSERT INTO `show` VALUES (6, '2021-05-15 周六 19:30', '2021-05-15 19:30:00', 2);
INSERT INTO `show` VALUES (7, '2021-08-14 周六 19:30', '2021-08-14 19:30:00', 3);
INSERT INTO `show` VALUES (8, '2021-07-03 周六 19:30', '2021-07-03 19:30:00', 4);
INSERT INTO `show` VALUES (9, '2021-05-16 周日 20:00', '2021-05-16 20:00:00', 5);
INSERT INTO `show` VALUES (10, '2021-05-23 周日 08:30', '2021-05-23 08:30:00', 6);
INSERT INTO `show` VALUES (11, '2021-05-22 周六 08:30', '2021-05-22 08:30:00', 6);
INSERT INTO `show` VALUES (12, '2021-05-22 周六 13:00', '2021-05-22 13:00:00', 6);
INSERT INTO `show` VALUES (13, '2021-05-23 周日 13:00', '2021-05-23 13:00:00', 6);
INSERT INTO `show` VALUES (14, '2021-06-25 周五 20:00', '2021-06-25 20:00:00', 7);
INSERT INTO `show` VALUES (15, '2021-07-24周六19:30:00', '2021-07-24 19:30:00', 8);
INSERT INTO `show` VALUES (16, '2021-07-23周五19:30:00', '2021-07-23 19:30:00', 8);
INSERT INTO `show` VALUES (17, '2021-07-24周六14:30:00', '2021-07-24 14:30:00', 8);
INSERT INTO `show` VALUES (18, '2021-08-31 星期二 19:30', '2021-08-31 19:30:00', 9);
INSERT INTO `show` VALUES (19, '2021-09-01 星期三 19:30', '2021-09-01 19:30:00', 9);
INSERT INTO `show` VALUES (20, '2021-05-21 星期五 20:00', '2021-05-21 20:00:00', 10);
INSERT INTO `show` VALUES (21, '2021-05-22 周六 14:00', '2021-05-22 14:00:00', 11);
INSERT INTO `show` VALUES (22, '2021-05-23 周日 14:00', '2021-05-23 14:00:00', 11);
INSERT INTO `show` VALUES (23, '2021-05-18 星期二 19:30', '2021-05-18 19:30:00', 12);
INSERT INTO `show` VALUES (24, '2021-05-19 星期三 19:30', '2021-05-19 19:30:00', 12);
INSERT INTO `show` VALUES (25, '2021-05-30 周日 10:30', '2021-05-30 10:30:00', 13);
INSERT INTO `show` VALUES (26, '2021-05-29 周六 10:30', '2021-05-29 10:30:00', 13);
INSERT INTO `show` VALUES (27, '2021-05-29 周六 19:30', '2021-05-29 19:30:00', 13);
INSERT INTO `show` VALUES (28, '2021-08-14 星期六 19:30', '2021-08-14 19:30:00', 14);
INSERT INTO `show` VALUES (29, '2021-05-29 周六 10:30', '2021-05-29 10:30:00', 15);
INSERT INTO `show` VALUES (30, '2021-06-05 周六 19:30', '2021-06-05 19:30:00', 16);
INSERT INTO `show` VALUES (31, '「本科生毕业展2」2021年6月8日-6月20日', '2021-06-08 09:30:00', 17);
INSERT INTO `show` VALUES (32, '「本科生毕业展1」2021年5月25日-6月4日', '2021-05-25 09:30:00', 17);
INSERT INTO `show` VALUES (33, '「研究生毕业展」2021年5月9日-5月20日', '2021-05-09 09:30:00', 17);
INSERT INTO `show` VALUES (34, '2021-05-28 周五 19:30', '2021-05-28 19:30:00', 18);
INSERT INTO `show` VALUES (35, '2021-05-15 周六 20:30', '2021-05-15 20:30:00', 19);
INSERT INTO `show` VALUES (36, '2021-05-15 周六 18:30', '2021-05-15 18:30:00', 19);
INSERT INTO `show` VALUES (37, '2021-05-15 周六 19:30', '2021-05-15 19:30:00', 19);
INSERT INTO `show` VALUES (38, '2021-05-16 14:00', '2021-05-16 14:00:00', 20);
INSERT INTO `show` VALUES (39, '2021-05-29 14:00', '2021-05-29 14:00:00', 20);
INSERT INTO `show` VALUES (40, '2021-05-15 14:00', '2021-05-15 14:00:00', 20);
INSERT INTO `show` VALUES (41, '2021-05-22 14:00', '2021-05-22 14:00:00', 20);
INSERT INTO `show` VALUES (42, '2021-05-23 14:00', '2021-05-23 14:00:00', 20);
INSERT INTO `show` VALUES (43, '2021-05-30 14:00', '2021-05-30 14:00:00', 20);
INSERT INTO `show` VALUES (44, '2021.5.14-5.16 11:00 (三日联票）', '2021-05-14 11:00:00', 21);
INSERT INTO `show` VALUES (45, '2021-05-15 周六 11:00', '2021-05-15 11:00:00', 21);
INSERT INTO `show` VALUES (46, '2021-05-16 周日 11:00', '2021-05-16 11:00:00', 21);
INSERT INTO `show` VALUES (47, '2021-05-14 周五 11:00', '2021-05-14 11:00:00', 21);
INSERT INTO `show` VALUES (48, '2021-05-29 周六 20:30', '2021-05-29 20:30:00', 22);
INSERT INTO `show` VALUES (49, '2021-05-29 周六 15:30', '2021-05-29 15:30:00', 23);
INSERT INTO `show` VALUES (50, '2021-05-15 14:00', '2021-05-15 14:00:00', 24);
INSERT INTO `show` VALUES (51, '2021-05-16 14:00', '2021-05-16 14:00:00', 24);
INSERT INTO `show` VALUES (52, '2021年5月15日-5月16日双日通票', '2021-05-15 14:00:00', 24);
INSERT INTO `show` VALUES (53, '2021-05-15 星期六 15:00', '2021-05-15 15:00:00', 25);
INSERT INTO `show` VALUES (54, '青岛队VS重庆两江竞技 2021年5月15日18：00', '2021-05-15 18:00:00', 26);
INSERT INTO `show` VALUES (55, '2021年4月17—5月15日（上午10点-晚上9点）', '2021-04-17 10:00:00', 27);
INSERT INTO `show` VALUES (56, '2021-06-06 周日 19:30', '2021-06-06 19:30:00', 28);
INSERT INTO `show` VALUES (57, '2021年6月12日 星期六 20:00', '2021-06-12 20:00:00', 29);
INSERT INTO `show` VALUES (58, '2021-05-22 周六 19:30', '2021-05-22 19:30:00', 30);
INSERT INTO `show` VALUES (59, '2021.5.28-10.07 10:00-21:00  (20:30后禁止入场）', '2021-05-28 10:00:00', 31);
INSERT INTO `show` VALUES (60, '2021.5.28-06.20 10:00-21:00  (早鸟场，20:30后禁止入场）', '2021-05-28 10:00:00', 31);
INSERT INTO `show` VALUES (61, '2021-05-22 周六 15:30', '2021-05-22 15:30:00', 32);
INSERT INTO `show` VALUES (62, '两日通票2021年5月22日-23日15:30', '2021-05-22 15:30:00', 32);
INSERT INTO `show` VALUES (63, '2021-05-23 周日 15:30', '2021-05-23 15:30:00', 32);
INSERT INTO `show` VALUES (64, '线上演出+盲盒包邮', '2020-12-25 11:00:00', 33);
INSERT INTO `show` VALUES (65, '线上演出', '2020-12-25 11:00:00', 33);
INSERT INTO `show` VALUES (66, '剧院+好奇心视角', '2020-12-31 22:00:00', 34);
INSERT INTO `show` VALUES (67, '剧院视角', '2020-12-31 22:00:00', 34);
INSERT INTO `show` VALUES (68, '2021-05-30 周日 16:30', '2021-05-30 16:30:00', 35);
INSERT INTO `show` VALUES (69, '2021-05-28 周五 19:00', '2021-05-28 19:00:00', 35);
INSERT INTO `show` VALUES (70, '2021-07-24 周六 14:30', '2021-07-24 14:30:00', 36);
INSERT INTO `show` VALUES (71, '2021-07-24 周六 10:20', '2021-07-24 10:20:00', 36);
INSERT INTO `show` VALUES (72, '2021-07-10 14:00:00', '2021-07-10 14:00:00', 37);
INSERT INTO `show` VALUES (73, '2021-07-11 10:00:00', '2021-07-11 10:00:00', 37);
INSERT INTO `show` VALUES (74, '2021.5.14-2021.6.13', '2021-05-14 10:00:00', 38);
INSERT INTO `show` VALUES (75, '2021-06-13 星期日 10:30', '2021-06-13 10:30:00', 39);
INSERT INTO `show` VALUES (76, '2021-06-13 星期日 14:00', '2021-06-13 14:00:00', 39);
INSERT INTO `show` VALUES (77, '2021-06-12 星期六 10:30', '2021-06-12 10:30:00', 39);
INSERT INTO `show` VALUES (78, '2021-06-12 星期六 17:00', '2021-06-12 17:00:00', 39);
INSERT INTO `show` VALUES (79, '2021-06-13 星期日 17:00', '2021-06-13 17:00:00', 39);
INSERT INTO `show` VALUES (80, '2021-06-12 星期六 14:00', '2021-06-12 14:00:00', 39);
INSERT INTO `show` VALUES (81, '2021-06-05 星期六 19:00', '2021-06-05 19:00:00', 40);
INSERT INTO `show` VALUES (82, '2021-06-03 星期四 19:00', '2021-06-03 19:00:00', 40);
INSERT INTO `show` VALUES (83, '2021-06-04 星期五 19:00', '2021-06-04 19:00:00', 40);
INSERT INTO `show` VALUES (84, '2021-08-14 星期六 19:00', '2021-08-14 19:00:00', 41);
INSERT INTO `show` VALUES (85, '2021-08-13 星期五 19:00', '2021-08-13 19:00:00', 41);
INSERT INTO `show` VALUES (86, '2021-06-10 19:15:00', '2021-06-10 19:15:00', 42);
INSERT INTO `show` VALUES (87, '2021-06-11 19:15:00', '2021-06-11 19:15:00', 42);
INSERT INTO `show` VALUES (88, '2021-09-20 19:30', '2021-09-20 19:30:00', 43);
INSERT INTO `show` VALUES (89, '2021-09-19 19:30', '2021-09-19 19:30:00', 43);
INSERT INTO `show` VALUES (90, '2021-06-27 19:30', '2021-06-27 19:30:00', 44);
INSERT INTO `show` VALUES (91, '2021-06-25 19:30', '2021-06-25 19:30:00', 44);
INSERT INTO `show` VALUES (92, '2021-06-26 19:30', '2021-06-26 19:30:00', 44);
INSERT INTO `show` VALUES (93, '2021-05-22 周六 19:30', '2021-05-22 19:30:00', 45);
INSERT INTO `show` VALUES (94, '2021-05-21 周五 19:30', '2021-05-21 19:30:00', 45);
INSERT INTO `show` VALUES (95, '2021-05-21 星期五 19:00', '2021-05-21 19:00:00', 46);
INSERT INTO `show` VALUES (96, '2021-05-22 星期六 14:00', '2021-05-22 14:00:00', 46);
INSERT INTO `show` VALUES (97, '2021-06-18 19:30', '2021-06-18 19:30:00', 47);
INSERT INTO `show` VALUES (98, '2021-06-19 19:30', '2021-06-19 19:30:00', 47);
INSERT INTO `show` VALUES (99, '2021-06-13 星期日 19:30', '2021-06-13 19:30:00', 48);
INSERT INTO `show` VALUES (100, '2021-06-12 星期六 19:30', '2021-06-12 19:30:00', 48);
INSERT INTO `show` VALUES (101, '2021-07-16 19:15:00', '2021-07-16 19:15:00', 49);
INSERT INTO `show` VALUES (102, '2021-07-17 19:15:00', '2021-07-17 19:15:00', 49);
INSERT INTO `show` VALUES (103, '2021-07-15 19:15:00', '2021-07-15 19:15:00', 49);
INSERT INTO `show` VALUES (104, '2021-07-03 周六 10:30', '2021-07-03 10:30:00', 50);
INSERT INTO `show` VALUES (105, '2021-07-03 周六 15:00', '2021-07-03 15:00:00', 50);
INSERT INTO `show` VALUES (106, '2021-05-30周日15:00:00', '2021-05-30 15:00:00', 51);
INSERT INTO `show` VALUES (107, '2021-05-29周六10:00:00', '2021-05-29 10:00:00', 51);
INSERT INTO `show` VALUES (108, '2021-05-29周六15:00:00', '2021-05-29 15:00:00', 51);
INSERT INTO `show` VALUES (109, '2021-05-30周日10:00:00', '2021-05-30 10:00:00', 51);
INSERT INTO `show` VALUES (110, '2021-06-01 星期二 20:00', '2021-06-01 20:00:00', 52);
INSERT INTO `show` VALUES (111, '2021-06-01 星期二 19:30', '2021-06-01 19:30:00', 53);
INSERT INTO `show` VALUES (112, '2021-06-01 星期二 10:30', '2021-06-01 10:30:00', 53);
INSERT INTO `show` VALUES (113, '2021-06-01 星期二 15:30', '2021-06-01 15:30:00', 53);
INSERT INTO `show` VALUES (114, '2021-05-16 周日 10:30', '2021-05-16 10:30:00', 54);
INSERT INTO `show` VALUES (115, '2021-05-16 周日 15:30', '2021-05-16 15:30:00', 54);
INSERT INTO `show` VALUES (116, '2021-06-26 周六 15:00', '2021-06-26 15:00:00', 55);
INSERT INTO `show` VALUES (117, '2021-06-26 周六 10:30', '2021-06-26 10:30:00', 55);
INSERT INTO `show` VALUES (118, '2021-06-27 周日 10:30', '2021-06-27 10:30:00', 55);
INSERT INTO `show` VALUES (119, '2021-06-27 周日 15:00', '2021-06-27 15:00:00', 55);
INSERT INTO `show` VALUES (120, '2021-05-22 周六 14:30', '2021-05-22 14:30:00', 56);
INSERT INTO `show` VALUES (121, '2021-05-22 周六 11:00', '2021-05-22 11:00:00', 56);
INSERT INTO `show` VALUES (122, '2021-05-22 周六 16:30', '2021-05-22 16:30:00', 56);
INSERT INTO `show` VALUES (123, '2021-06-01 周二 16:30', '2021-06-01 16:30:00', 56);
INSERT INTO `show` VALUES (124, '2021-06-01 周二 11:00', '2021-06-01 11:00:00', 56);
INSERT INTO `show` VALUES (125, '2021-06-01 周二 14:30', '2021-06-01 14:30:00', 56);
INSERT INTO `show` VALUES (126, '2021-05-30 周日 10:30', '2021-05-30 10:30:00', 57);
INSERT INTO `show` VALUES (127, '2021-05-29 周六 10:30', '2021-05-29 10:30:00', 57);
INSERT INTO `show` VALUES (128, '2021-05-29 周六 19:30', '2021-05-29 19:30:00', 57);
INSERT INTO `show` VALUES (129, '2021-05-30周日14:30:00', '2021-05-30 14:30:00', 58);
INSERT INTO `show` VALUES (130, '2021-05-29周六14:30:00', '2021-05-29 14:30:00', 58);
INSERT INTO `show` VALUES (131, '2021-05-30周日10:30:00', '2021-05-30 10:30:00', 58);
INSERT INTO `show` VALUES (132, '2021-06-06 星期日 15:30', '2021-06-06 15:30:00', 59);
INSERT INTO `show` VALUES (133, '2021-06-04周五19:30:00', '2021-06-04 19:30:00', 60);
INSERT INTO `show` VALUES (134, '2021-06-05周六19:30:00', '2021-06-05 19:30:00', 60);
INSERT INTO `show` VALUES (135, '2021-06-06周日19:30:00', '2021-06-06 19:30:00', 60);
INSERT INTO `show` VALUES (136, '2021-05-28 星期五 19:30', '2021-05-28 19:30:00', 61);
INSERT INTO `show` VALUES (137, '2021-05-29 星期六 19:30', '2021-05-29 19:30:00', 61);
INSERT INTO `show` VALUES (138, '2021-06-05周六14:30:00', '2021-06-05 14:30:00', 62);
INSERT INTO `show` VALUES (139, '2021-06-04周五19:30:00', '2021-06-04 19:30:00', 62);
INSERT INTO `show` VALUES (140, '2021-06-05周六19:30:00', '2021-06-05 19:30:00', 62);
INSERT INTO `show` VALUES (141, '2021-06-06周日19:30:00', '2021-06-06 19:30:00', 62);
INSERT INTO `show` VALUES (142, '2021-07-31 星期六 19:30', '2021-07-31 19:30:00', 63);
INSERT INTO `show` VALUES (143, '2021-07-30 星期五 19:30', '2021-07-30 19:30:00', 63);
INSERT INTO `show` VALUES (144, '2021-07-31 星期六 19:30', '2021-07-31 19:30:00', 64);
INSERT INTO `show` VALUES (145, '2021-07-30 星期五 19:45', '2021-07-30 19:45:00', 64);
INSERT INTO `show` VALUES (146, '2021-05-29 星期六 14:00', '2021-05-29 14:00:00', 65);
INSERT INTO `show` VALUES (147, '2021-05-30 星期日 14:00', '2021-05-30 14:00:00', 65);
INSERT INTO `show` VALUES (148, '2021-05-16 星期日 19:30', '2021-05-16 19:30:00', 66);
INSERT INTO `show` VALUES (149, '2021-05-15 星期六 19:30', '2021-05-15 19:30:00', 66);
INSERT INTO `show` VALUES (150, '2021-05-15 星期六 19:30', '2021-05-15 19:30:00', 67);
INSERT INTO `show` VALUES (151, '2021-05-15 星期六 14:30', '2021-05-15 14:30:00', 67);
INSERT INTO `show` VALUES (152, '2021-07-10 周六 19:30', '2021-07-10 19:30:00', 68);
INSERT INTO `show` VALUES (153, '2021-05-14 周五 19:30', '2021-05-14 19:30:00', 69);
INSERT INTO `show` VALUES (154, '2021-05-16 周日 19:30', '2021-05-16 19:30:00', 70);
INSERT INTO `show` VALUES (155, '2021-05-14 星期五 19:30', '2021-05-14 19:30:00', 71);
INSERT INTO `show` VALUES (156, '2021-05-22 星期六 19:30', '2021-05-22 19:30:00', 72);
INSERT INTO `show` VALUES (157, '2021.05.01-2021.05.31 10:00-22:00（提前30分钟停止验票）', '2021-05-01 10:00:00', 73);
INSERT INTO `show` VALUES (158, '2021.06.01-2021.06.30 10:00-22:00（提前30分钟停止验票）', '2021-06-01 10:00:00', 73);
INSERT INTO `show` VALUES (159, '2021年4月7日-5月19日每周二至周日（节假日不休）9:00—17:00（16:00停止入馆）', '2021-04-07 09:00:00', 74);
INSERT INTO `show` VALUES (160, '2021-05-15 周六 19:00', '2021-05-15 19:00:00', 75);
INSERT INTO `show` VALUES (161, '2021-05-22 周六 14:00', '2021-05-22 14:00:00', 76);
INSERT INTO `show` VALUES (162, '展期（2021.5.22-2021.7.2）', '2021-05-22 10:00:00', 77);
INSERT INTO `show` VALUES (163, '早鸟场（限2021.5.22-2021.6.30使用）', '2021-05-22 10:00:00', 77);
INSERT INTO `show` VALUES (164, '2021-05-14 周五 19:30（假日场）', '2021-05-14 19:30:00', 78);
INSERT INTO `show` VALUES (165, '2021-05-15 星期六 09:00', '2021-05-15 09:00:00', 79);
INSERT INTO `show` VALUES (166, '2021.2.14 - 2021.12.31   10:00-17:00', '2021-02-14 10:00:00', 80);
INSERT INTO `show` VALUES (167, '2021年4月29日至2021年9月5日 11:00-21:00', '2021-04-29 11:00:00', 81);
INSERT INTO `show` VALUES (168, '2021-06-17 《赵氏孤儿》星期四 19:30', '2021-06-17 19:30:00', 82);
INSERT INTO `show` VALUES (169, '2021-05-15 星期六 19:30', '2021-05-15 19:30:00', 83);
INSERT INTO `show` VALUES (170, '2021-05-29 星期六 19:30', '2021-05-29 19:30:00', 83);
INSERT INTO `show` VALUES (171, '2021-06-19 星期六 19:30', '2021-06-19 19:30:00', 83);
INSERT INTO `show` VALUES (172, '2021-05-29 周六 20:00', '2021-05-29 20:00:00', 84);
INSERT INTO `show` VALUES (173, '2021-05-30 星期日 15:00', '2021-05-30 15:00:00', 85);
INSERT INTO `show` VALUES (174, '2021-05-30 星期日 19:30', '2021-05-30 19:30:00', 85);
INSERT INTO `show` VALUES (175, '2021-05-29 星期六 19:30 第一百六十七场', '2021-05-29 19:30:00', 86);
INSERT INTO `show` VALUES (176, '2021-05-15 星期六 19:30 第一百六十五场', '2021-05-15 19:30:00', 86);
INSERT INTO `show` VALUES (177, '2021-05-22 星期六 19:30 第一百六十六场', '2021-05-22 19:30:00', 86);
INSERT INTO `show` VALUES (178, '2020年12月24日-2021年12月31日 (10:00-22:00)', '2020-12-24 10:00:00', 87);
INSERT INTO `show` VALUES (179, '2021-05-14 19:30:00', '2021-05-14 19:30:00', 88);
INSERT INTO `show` VALUES (180, '2020-03-27 周五 19:30 （延期）', '2020-03-27 19:30:00', 89);
INSERT INTO `show` VALUES (181, '2021-05-29 星期六 18:00', '2021-05-29 18:00:00', 90);
INSERT INTO `show` VALUES (182, '2021-05-28 星期五 19:00', '2021-05-28 19:00:00', 90);
INSERT INTO `show` VALUES (183, '2021-05-15 星期六 19:00', '2021-05-15 19:00:00', 91);
INSERT INTO `show` VALUES (184, '2021-06-19 周六 19:30', '2021-06-19 19:30:00', 92);
INSERT INTO `show` VALUES (185, '2021-05-28 周五 19:30', '2021-05-28 19:30:00', 93);
INSERT INTO `show` VALUES (186, '2021-06-04 周五 20:00', '2021-06-04 20:00:00', 94);
INSERT INTO `show` VALUES (187, '2021-05-22 星期六 19:00', '2021-05-22 19:00:00', 95);
INSERT INTO `show` VALUES (188, '2021-05-19 周三 19:30', '2021-05-19 19:30:00', 96);
INSERT INTO `show` VALUES (189, '2021-05-30 周日 19:30', '2021-05-30 19:30:00', 97);
INSERT INTO `show` VALUES (190, '2021-05-21 周五 19:30', '2021-05-21 19:30:00', 98);
INSERT INTO `show` VALUES (191, '2021.4.10—2021.6.5 9:30-17:30', '2021-04-10 09:30:00', 99);
INSERT INTO `show` VALUES (192, '2021-05-15 星期六 20:30', '2021-05-15 20:30:00', 100);
INSERT INTO `show` VALUES (193, '2021-07-17 周六 20:00', '2021-07-17 20:00:00', 101);
INSERT INTO `show` VALUES (194, '2021-06-06 周日 19:30', '2021-06-06 19:30:00', 102);
INSERT INTO `show` VALUES (195, '2021-05-14 周五 20:00', '2021-05-14 20:00:00', 103);
COMMIT;

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `price` int(10) unsigned DEFAULT NULL,
  `seat_num` int(10) unsigned DEFAULT NULL,
  `seat_info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valid` int(10) unsigned NOT NULL DEFAULT '1',
  `order_id` int(10) DEFAULT NULL,
  `level_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ticket_order_id` (`order_id`),
  KEY `FK_ticket_level_id` (`level_id`),
  CONSTRAINT `FK_ticket_level_id` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`),
  CONSTRAINT `FK_ticket_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(10) unsigned NOT NULL DEFAULT '0',
  `birthday` datetime DEFAULT NULL,
  `identity` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privilege` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'hypocriticalfish', 'lovexin1314', NULL, 0, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (2, 'username', 'password', NULL, 0, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (3, 'tester', 'test', NULL, 0, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (4, 'r56ygyu', 'qwe123', NULL, 0, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (5, 'qwe123', 'qwe123', NULL, 0, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (6, '111111', '111111', NULL, 0, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (7, '1111111', '1111111', NULL, 0, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (8, 'zzzz76', '123456ecnu', NULL, 0, NULL, NULL, NULL, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
