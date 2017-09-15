/*
Navicat MySQL Data Transfer

Source Server         : rikagaku.vn
Source Server Version : 50552
Source Host           : rikagaku.vn:3306
Source Database       : rikagaku_rikagaku

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-08-17 17:22:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attributes
-- ----------------------------
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of attributes
-- ----------------------------
INSERT INTO `attributes` VALUES ('4', 'Mã sản phẩm (SKU)', 'product', 'sku', 'text', '', '2014-12-04 03:21:23', '2014-12-04 03:59:02');
INSERT INTO `attributes` VALUES ('5', 'Giá sản phẩm', 'product', 'price', 'text', '', '2014-12-04 03:21:57', '2014-12-04 03:21:57');
INSERT INTO `attributes` VALUES ('6', 'Thuế VAT', 'product', 'vat', 'select', '[\"Thu\\u1ebf 10%\",\"Thu\\u1ebf 5%\"]', '2014-12-04 04:00:28', '2014-12-04 04:00:28');
INSERT INTO `attributes` VALUES ('7', 'Giao hàng', 'product', 'giao-hang', 'select', '[\"Giao T\\u1ea1i nh\\u00e0\",\"M\\u00e1y bay\",\"T\\u00e0u h\\u1ecfa\"]', '2014-12-04 10:26:43', '2014-12-07 03:16:20');

-- ----------------------------
-- Table structure for baogia
-- ----------------------------
DROP TABLE IF EXISTS `baogia`;
CREATE TABLE `baogia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of baogia
-- ----------------------------
INSERT INTO `baogia` VALUES ('1', '53', 'Báo giá Kim Văn Kim Lũ cập nhật ngày 14-1-2014', 'baogia/bao-gia-kim-van-kim-lu-cap-nhat-ngay-14-1-2014.T1X.xls', '2014-01-13 14:52:54', '2014-01-13 16:31:30');

-- ----------------------------
-- Table structure for category_product
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `category_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`category_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category_product
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `reply_to` int(11) NOT NULL DEFAULT '0',
  `post` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES ('2', 'contact', 'full-name', 'Rikagaku - Phấn Viết Bảng Nhật Bản', '2014-11-17 08:12:04', '2017-07-18 13:55:38');
INSERT INTO `configs` VALUES ('3', 'contact', 'address', 'Tầng 6, 146 Hoàng Văn Thái, Thanh Xuân, Hà Nội', '2014-11-17 08:14:31', '2017-08-16 10:27:38');
INSERT INTO `configs` VALUES ('8', 'website', 'title', 'Rikagaku - Phấn Không Bụi Số 1 Nhật Bản', '2014-11-17 09:12:53', '2017-08-16 10:30:54');
INSERT INTO `configs` VALUES ('9', 'website', 'keywords', 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', '2014-11-17 09:13:32', '2017-07-17 15:36:28');
INSERT INTO `configs` VALUES ('10', 'website', 'description', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, ít bụi và nguyên liệu an toàn cho sức khoẻ.', '2014-11-17 09:13:53', '2017-08-16 10:36:23');
INSERT INTO `configs` VALUES ('11', 'posts', 'image_width', '870', '2014-11-17 09:15:22', '2017-07-07 04:33:04');
INSERT INTO `configs` VALUES ('12', 'posts', 'image_height', '400', '2014-11-17 09:15:49', '2017-07-07 04:33:08');
INSERT INTO `configs` VALUES ('15', 'website', 'domain', 'rikagaku.vn', '2014-11-17 09:23:40', '2017-07-24 10:11:27');
INSERT INTO `configs` VALUES ('16', 'website', 'name', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, ít bụi và nguyên liệu an toàn cho sức khoẻ.', '2014-11-17 09:24:51', '2017-08-16 10:36:09');
INSERT INTO `configs` VALUES ('18', 'product', 'image_width', '370', '2014-12-05 04:59:35', '2017-07-07 03:37:40');
INSERT INTO `configs` VALUES ('19', 'product', 'image_height', '450', '2014-12-05 05:00:29', '2017-07-07 03:37:43');
INSERT INTO `configs` VALUES ('20', 'contact', 'phone', '0123.649.4605', '2014-12-07 14:55:48', '2017-07-18 13:56:52');
INSERT INTO `configs` VALUES ('21', 'contact', 'fax', '', '2014-12-07 14:56:21', '2015-06-16 07:28:42');
INSERT INTO `configs` VALUES ('22', 'contact', 'email', 'rikagaku.vietnam@gmail.com', '2014-12-07 14:57:12', '2017-07-18 13:57:24');
INSERT INTO `configs` VALUES ('26', 'website', 'theme', 'default', '2015-04-20 09:44:58', '2017-07-24 08:18:53');
INSERT INTO `configs` VALUES ('27', 'website', 'facebook', 'https://www.facebook.com/phankhongbuii', '2015-06-30 09:39:29', '2017-07-17 15:43:54');
INSERT INTO `configs` VALUES ('28', 'website', 'google', '#', '2015-06-30 09:39:37', '2015-06-30 09:39:37');
INSERT INTO `configs` VALUES ('29', 'website', 'youtube', '#', '2015-06-30 09:39:46', '2015-06-30 09:39:46');
INSERT INTO `configs` VALUES ('30', 'contact', 'day_one', '08:30 => 18:00', '2017-07-17 09:08:54', '2017-08-16 10:44:56');
INSERT INTO `configs` VALUES ('31', 'contact', 'day_two', '08:30 => 12:30', '2017-07-17 09:09:34', '2017-08-16 10:45:30');
INSERT INTO `configs` VALUES ('32', 'contact', 'day_three', 'Đóng Cửa', '2017-07-17 09:10:07', '2017-07-18 13:57:53');
INSERT INTO `configs` VALUES ('33', 'website', 'slogan', 'Rikagaku cung cấp các sản phẩm uy tín và chất lượng từ Nhật Bản. Chủ đạo là phấn viết bảng làm từ vỏ sò hoàn toàn không gây hại cho sức khỏe với các tính năng vượt trội cùng các sản phẩm sử dụng trong trường học khác. Mọi người đều nói hàng Nhật tốt nhưng', '0000-00-00 00:00:00', '2017-07-24 08:24:04');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `readed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('5', 'Liên', null, 'rikagaku.vietnam@gmail.com', null, null, null, null, '', '2017-07-25 07:07:56', '2017-08-16 10:26:00', '5');

-- ----------------------------
-- Table structure for contents
-- ----------------------------
DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'vi',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contents
-- ----------------------------
INSERT INTO `contents` VALUES ('1', 'gioi-thieu-ngan-ve-cua-hang', 'vi', 'Giới thiệu ngắn về Rikagaku', 'Rikagaku cung cấp các sản phẩm uy tín và chất lượng từ Nhật Bản. Chủ đạo là phấn viết bảng làm từ vỏ sò hoàn toàn không gây hại cho sức khỏe với các tính năng vượt trội cùng các sản phẩm sử dụng trong trường học khác. Mọi người đều nói hàng Nhật tốt nhưng chúng tôi còn mang tới cho bạn những sản phẩm tốt nhất của \"hàng Nhật\".', '2015-06-11 09:31:07', '2017-07-24 08:17:19');

-- ----------------------------
-- Table structure for cunits
-- ----------------------------
DROP TABLE IF EXISTS `cunits`;
CREATE TABLE `cunits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_level` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cunits
-- ----------------------------
INSERT INTO `cunits` VALUES ('1', 'CunitsController', 'Quản lý các Controller', '0', '0000-00-00 00:00:00', '2013-06-06 19:18:18');
INSERT INTO `cunits` VALUES ('9', 'Menus Controller', 'Quản lý menu', '0', '0000-00-00 00:00:00', '2013-06-06 22:46:58');
INSERT INTO `cunits` VALUES ('11', 'AdminController', 'Trang chủ cho Admin', '0', '0000-00-00 00:00:00', '2013-06-07 14:04:44');
INSERT INTO `cunits` VALUES ('14', 'UsersController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('15', 'DomainsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('17', 'SlidersController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('18', 'PostsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('19', 'PostcatalogsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('20', 'PagesController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('21', 'PagecatsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('22', 'ImagesController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('23', 'ProductcatsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('24', 'SlidersetsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('25', 'TagsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('26', 'CommentsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('27', 'GroupsController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cunits` VALUES ('28', 'RolesController', 'No title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for detailcarts
-- ----------------------------
DROP TABLE IF EXISTS `detailcarts`;
CREATE TABLE `detailcarts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detailcarts
-- ----------------------------
INSERT INTO `detailcarts` VALUES ('1', '1', '409', '1', '130000', '2017-06-05 09:02:03', '2017-06-05 09:02:03');
INSERT INTO `detailcarts` VALUES ('2', '2', '419', '4', '1200000', '2017-06-05 10:30:20', '2017-06-05 10:30:20');
INSERT INTO `detailcarts` VALUES ('3', '3', '423', '2', '4130000', '2017-06-05 17:17:50', '2017-06-05 17:17:50');
INSERT INTO `detailcarts` VALUES ('4', '4', '420', '1', '42000000', '2017-06-06 01:24:44', '2017-06-06 01:24:44');
INSERT INTO `detailcarts` VALUES ('5', '5', '457', '10', '1200000', '2017-07-19 04:59:59', '2017-07-19 04:59:59');
INSERT INTO `detailcarts` VALUES ('6', '5', '455', '2', '1000000', '2017-07-19 04:59:59', '2017-07-19 04:59:59');
INSERT INTO `detailcarts` VALUES ('7', '6', '456', '2', '1000000', '2017-07-21 06:51:42', '2017-07-21 06:51:42');
INSERT INTO `detailcarts` VALUES ('8', '7', '458', '2', '1200000', '2017-07-21 06:54:29', '2017-07-21 06:54:29');
INSERT INTO `detailcarts` VALUES ('9', '7', '457', '2', '1200000', '2017-07-21 06:54:29', '2017-07-21 06:54:29');
INSERT INTO `detailcarts` VALUES ('10', '7', '456', '2', '1000000', '2017-07-21 06:54:29', '2017-07-21 06:54:29');
INSERT INTO `detailcarts` VALUES ('11', '8', '458', '1', '1200000', '2017-07-21 06:55:50', '2017-07-21 06:55:50');
INSERT INTO `detailcarts` VALUES ('12', '8', '455', '2', '1000000', '2017-07-21 06:55:50', '2017-07-21 06:55:50');
INSERT INTO `detailcarts` VALUES ('13', '9', '458', '1', '1200000', '2017-07-21 07:00:05', '2017-07-21 07:00:05');
INSERT INTO `detailcarts` VALUES ('14', '9', '457', '1', '1200000', '2017-07-21 07:00:05', '2017-07-21 07:00:05');
INSERT INTO `detailcarts` VALUES ('15', '9', '456', '1', '1000000', '2017-07-21 07:00:05', '2017-07-21 07:00:05');
INSERT INTO `detailcarts` VALUES ('16', '10', '458', '2', '1200000', '2017-07-21 07:13:56', '2017-07-21 07:13:56');
INSERT INTO `detailcarts` VALUES ('17', '10', '457', '2', '1200000', '2017-07-21 07:13:56', '2017-07-21 07:13:56');
INSERT INTO `detailcarts` VALUES ('18', '10', '456', '2', '1000000', '2017-07-21 07:13:56', '2017-07-21 07:13:56');
INSERT INTO `detailcarts` VALUES ('19', '11', '458', '2', '1200000', '2017-07-21 07:18:17', '2017-07-21 07:18:17');
INSERT INTO `detailcarts` VALUES ('20', '11', '457', '2', '1200000', '2017-07-21 07:18:17', '2017-07-21 07:18:17');
INSERT INTO `detailcarts` VALUES ('21', '11', '456', '2', '1000000', '2017-07-21 07:18:17', '2017-07-21 07:18:17');
INSERT INTO `detailcarts` VALUES ('22', '12', '458', '4', '1200000', '2017-07-21 07:40:51', '2017-07-21 07:40:51');
INSERT INTO `detailcarts` VALUES ('23', '12', '457', '2', '1200000', '2017-07-21 07:40:51', '2017-07-21 07:40:51');
INSERT INTO `detailcarts` VALUES ('24', '12', '456', '6', '1000000', '2017-07-21 07:40:51', '2017-07-21 07:40:51');
INSERT INTO `detailcarts` VALUES ('25', '13', '458', '2', '1200000', '2017-07-21 07:42:25', '2017-07-21 07:42:25');
INSERT INTO `detailcarts` VALUES ('26', '13', '457', '2', '1200000', '2017-07-21 07:42:25', '2017-07-21 07:42:25');
INSERT INTO `detailcarts` VALUES ('27', '13', '456', '2', '1000000', '2017-07-21 07:42:25', '2017-07-21 07:42:25');
INSERT INTO `detailcarts` VALUES ('28', '14', '458', '1', '1200000', '2017-07-21 08:11:24', '2017-07-21 08:11:24');
INSERT INTO `detailcarts` VALUES ('29', '14', '457', '3', '1200000', '2017-07-21 08:11:24', '2017-07-21 08:11:24');
INSERT INTO `detailcarts` VALUES ('30', '15', '458', '2', '1200000', '2017-07-21 08:14:10', '2017-07-21 08:14:10');
INSERT INTO `detailcarts` VALUES ('31', '15', '457', '3', '1200000', '2017-07-21 08:14:10', '2017-07-21 08:14:10');
INSERT INTO `detailcarts` VALUES ('32', '15', '456', '2', '1000000', '2017-07-21 08:14:10', '2017-07-21 08:14:10');
INSERT INTO `detailcarts` VALUES ('33', '16', '458', '2', '1200000', '2017-07-21 09:13:43', '2017-07-21 09:13:43');
INSERT INTO `detailcarts` VALUES ('34', '16', '457', '2', '1200000', '2017-07-21 09:13:43', '2017-07-21 09:13:43');
INSERT INTO `detailcarts` VALUES ('35', '17', '458', '1', '1200000', '2017-07-21 10:14:21', '2017-07-21 10:14:21');
INSERT INTO `detailcarts` VALUES ('36', '17', '457', '2', '1200000', '2017-07-21 10:14:21', '2017-07-21 10:14:21');
INSERT INTO `detailcarts` VALUES ('37', '18', '458', '1', '1200000', '2017-07-25 06:33:28', '2017-07-25 06:33:28');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('2', 'Administrator', '{\"admin\":1,\"users\":1}', '2013-09-27 11:45:19', '2013-10-07 17:11:51');

-- ----------------------------
-- Table structure for mediacats
-- ----------------------------
DROP TABLE IF EXISTS `mediacats`;
CREATE TABLE `mediacats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mediacats
-- ----------------------------
INSERT INTO `mediacats` VALUES ('2', 'test', null, '0', 'test', '2013-09-18 11:34:12', '2013-09-18 11:34:12');
INSERT INTO `mediacats` VALUES ('3', 'fdfdf', null, '0', 'fdfdf', '2013-11-04 14:52:28', '2013-11-04 14:52:28');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#',
  `parent` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `postion` int(11) NOT NULL DEFAULT '0',
  `cunit` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `pack` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Quản lý người dùng', '#', '0', '5', '0', '0', 'Hiển thị các thành phần cài đặt', '1', '2013-06-06 20:08:52', '2017-07-24 08:34:07', '<i class=\"icon-group\"></i>');
INSERT INTO `menus` VALUES ('4', 'Quản lý bài viết', '#', '0', '1', '0', '0', 'Quản lý các Module tin tức trên Front End', '1', '2013-06-07 09:31:38', '2017-07-24 08:34:07', '<i class=\"icon-paste\"></i>');
INSERT INTO `menus` VALUES ('11', 'Người dùng', 'admin/users', '1', '0', '0', '14', 'Quản lý thông tin người dùng', '1', '2013-06-13 19:10:44', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('13', 'Bảng quản trị', 'admin', '0', '0', '0', '11', 'Bảng điều khiển', '1', '2013-06-17 07:13:51', '2017-07-24 08:34:07', '<i class=\"icon-home\"></i>');
INSERT INTO `menus` VALUES ('14', 'Sliders', 'admin/sliderspacks', '69', '0', '0', '0', 'Quản lý slider', '1', '2013-06-17 07:45:29', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('15', 'Bài viết', 'admin/posts', '4', '1', '0', '18', 'Quản lý bài viết', '1', '2013-06-18 03:08:33', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('69', 'Quảng cáo', '#', '0', '2', '0', '0', '', '1', '2013-09-13 14:20:36', '2017-07-24 08:34:07', '<i class=\"icon-bullhorn\"></i>');
INSERT INTO `menus` VALUES ('70', 'Menus', 'admin/menuspacks', '0', '3', '0', '0', '', '1', '2013-09-13 14:23:59', '2017-07-24 08:34:07', '<i class=\"icon-tasks\"></i>');
INSERT INTO `menus` VALUES ('71', 'Thiết lập trang chủ', 'admin/postcatalogs', '4', '0', '0', '0', '', '1', '2013-09-13 14:27:32', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('95', 'Cửa hàng', 'cua-hang', '0', '0', '0', '0', '', '0', '2014-02-17 15:05:31', '2014-02-17 15:05:31', '');
INSERT INTO `menus` VALUES ('99', 'Giới thiệu', '', '99', '1', '0', '0', '', '2', '2014-02-17 17:35:34', '2014-02-26 21:49:45', '');
INSERT INTO `menus` VALUES ('127', 'Config', 'admin/configs', '0', '4', '0', '0', '', '1', '2014-11-17 09:18:44', '2017-07-24 08:34:07', '<i class=\"icon-cogs\"></i>');
INSERT INTO `menus` VALUES ('128', 'Bài viết', 'admin/configs?group=posts', '127', '0', '0', '0', '', '1', '2014-11-17 10:08:12', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('129', 'Website', 'admin/configs?group=website', '127', '2', '0', '0', '', '1', '2014-11-17 10:08:49', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('130', 'Contact', 'admin/configs?group=contact', '127', '3', '0', '0', '', '1', '2014-11-17 10:09:26', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('131', 'Bảng quản trị', 'admin/shop', '0', '0', '0', '0', '', '3', '2014-11-18 03:49:20', '2014-12-05 04:58:55', 'fa fa-bar-chart-o');
INSERT INTO `menus` VALUES ('132', 'Danh mục sản phẩm', 'admin/shop/categories', '0', '1', '0', '0', '', '3', '2014-11-18 03:51:58', '2014-12-05 04:58:55', 'fa fa-folder-open-o');
INSERT INTO `menus` VALUES ('133', 'Sản phẩm', 'admin/shop/products', '0', '2', '0', '0', '', '3', '2014-11-18 03:53:29', '2014-12-05 04:58:55', 'fa fa-heart');
INSERT INTO `menus` VALUES ('135', 'Config', 'admin/configs', '0', '3', '0', '0', '', '3', '2014-12-05 04:58:46', '2014-12-05 04:58:55', 'fa fa-gears');
INSERT INTO `menus` VALUES ('136', 'Sản phẩm', 'admin/configs?group=product', '127', '1', '0', '0', '', '1', '2014-12-05 05:01:57', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('138', 'News', '/news', '0', '2', '0', '0', '', '4', '2014-12-07 14:51:13', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('139', 'Recruitment', '/', '0', '3', '0', '0', '', '4', '2014-12-07 14:51:33', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('140', 'Contact Us', '/', '0', '4', '0', '0', '', '4', '2014-12-07 14:52:08', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('142', 'Liên hệ', 'lien-he', '0', '5', '0', '0', '', '2', '2015-01-20 06:51:48', '2015-07-15 10:02:26', '');
INSERT INTO `menus` VALUES ('152', 'Home', '/', '0', '0', '0', '0', '', '4', '2015-04-13 01:05:01', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('153', 'Products', '/products', '0', '1', '0', '0', '', '4', '2015-04-13 02:11:12', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('156', 'Danh mục sản phẩm', 'admin/postcatalogs?type=product', '4', '2', '0', '0', '', '1', '2015-05-20 08:16:13', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('157', 'Sản phẩm', 'admin/posts?type=product', '4', '3', '0', '0', '', '1', '2015-05-20 08:16:42', '2017-07-24 08:34:07', '');
INSERT INTO `menus` VALUES ('171', 'Tin tức', 'tin-tuc', '0', '3', '0', '0', null, '2', '2015-06-11 02:45:52', '2015-07-15 10:02:26', '');
INSERT INTO `menus` VALUES ('172', 'Trang chủ', '', '0', '0', '0', '0', '', '2', '2015-06-11 03:36:51', '2015-07-15 10:02:26', '');
INSERT INTO `menus` VALUES ('174', 'Giới thiệu', '/gioi-thieu', '0', '1', '0', '0', '', '2', '2015-06-15 07:16:39', '2015-08-17 05:03:32', '');
INSERT INTO `menus` VALUES ('177', 'Hướng dẫn mua hàng', '/huong-dan-mua-hang', '0', '4', '0', '0', 'Hướng dẫn mua hàng tại showroom nội thất I - Home Hải Phòng', '2', '2015-06-23 09:46:10', '2015-08-20 08:20:10', '');
INSERT INTO `menus` VALUES ('195', 'Sản phẩm', '/san-pham', '0', '0', '0', '0', '', '2', '2015-08-16 17:41:11', '2015-08-20 11:35:57', '');
INSERT INTO `menus` VALUES ('196', 'Sản phẩm', 'san-pham', '0', '0', '0', '0', null, '2', '2017-07-18 02:06:16', '2017-07-18 02:06:16', '');

-- ----------------------------
-- Table structure for menuspacks
-- ----------------------------
DROP TABLE IF EXISTS `menuspacks`;
CREATE TABLE `menuspacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menuspacks
-- ----------------------------
INSERT INTO `menuspacks` VALUES ('1', 'Admin Left Menu', null, '2013-09-13 13:55:48', '2013-09-13 13:55:48');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2013_06_09_193152_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2013_06_18_144139_create_sliders_table', '1');
INSERT INTO `migrations` VALUES ('2013_07_16_210436_create_pages_table', '2');
INSERT INTO `migrations` VALUES ('2013_08_23_092446_create_sliderpack_table', '2');
INSERT INTO `migrations` VALUES ('2013_08_24_104519_create_menuspacks_table', '2');
INSERT INTO `migrations` VALUES ('2013_08_25_024215_create_sliderspacks_table', '2');
INSERT INTO `migrations` VALUES ('2013_08_28_044040_create_mediacats_table', '2');
INSERT INTO `migrations` VALUES ('2013_09_14_115201_create_menus_table', '3');
INSERT INTO `migrations` VALUES ('2013_09_14_115946_create_cunits_table', '4');
INSERT INTO `migrations` VALUES ('2013_09_14_120428_add_icon_to_menus_table', '5');
INSERT INTO `migrations` VALUES ('2013_09_20_113215_add_to_pages_table', '6');
INSERT INTO `migrations` VALUES ('2013_09_21_032914_add_homepage_column_to_pages_table', '6');
INSERT INTO `migrations` VALUES ('2013_09_21_100503_drop_category_column_from_pages_table', '6');
INSERT INTO `migrations` VALUES ('2013_09_24_075521_add_link_column_to_sliders_table', '7');
INSERT INTO `migrations` VALUES ('2013_09_24_225521_create_tags_table', '8');
INSERT INTO `migrations` VALUES ('2013_09_24_225736_create_tag_instance_table', '9');
INSERT INTO `migrations` VALUES ('2013_09_25_011231_add_deleted_at_to_pages_table', '10');
INSERT INTO `migrations` VALUES ('2013_09_25_024232_create_viewnotes_table', '11');
INSERT INTO `migrations` VALUES ('2013_09_26_145639_add_metal_keywords_to_pages_table', '12');
INSERT INTO `migrations` VALUES ('2012_12_06_225921_migration_cartalyst_sentry_install_users', '13');
INSERT INTO `migrations` VALUES ('2012_12_06_225929_migration_cartalyst_sentry_install_groups', '13');
INSERT INTO `migrations` VALUES ('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', '13');
INSERT INTO `migrations` VALUES ('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', '13');
INSERT INTO `migrations` VALUES ('2013_09_28_230800_create_comments_table', '14');
INSERT INTO `migrations` VALUES ('2013_10_07_163557_create_roles_table', '15');
INSERT INTO `migrations` VALUES ('2013_09_30_111737_create_rsliders_table', '16');
INSERT INTO `migrations` VALUES ('2013_09_30_152615_create_sliders_elements_table', '16');
INSERT INTO `migrations` VALUES ('2014_01_09_111212_Create_PostsImages_table', '17');
INSERT INTO `migrations` VALUES ('2013_10_16_152553_create_partners_table', '18');
INSERT INTO `migrations` VALUES ('2014_01_13_145846_Create_Baogia_Table', '18');
INSERT INTO `migrations` VALUES ('2014_11_18_065415_create_configs_table', '19');
INSERT INTO `migrations` VALUES ('2014_06_08_014706_CreateFacebookMembersTable', '20');
INSERT INTO `migrations` VALUES ('2014_12_03_102414_create_page_attribute_table', '20');
INSERT INTO `migrations` VALUES ('2014_12_03_102742_create_attributes_table', '20');
INSERT INTO `migrations` VALUES ('2014_12_03_095352_create_product_category_table', '21');
INSERT INTO `migrations` VALUES ('2014_12_03_102414_create_attributes_table', '22');
INSERT INTO `migrations` VALUES ('2014_12_03_102742_create_page_attribute_table', '22');
INSERT INTO `migrations` VALUES ('2014_12_05_084053_create_page_properties_table', '23');
INSERT INTO `migrations` VALUES ('2015_01_19_031439_create_contacts_table', '24');
INSERT INTO `migrations` VALUES ('2015_05_13_083905_create_properties_table', '25');
INSERT INTO `migrations` VALUES ('2015_05_26_100349_create_properties_table', '26');
INSERT INTO `migrations` VALUES ('2015_05_27_085052_add_name_colummn_to_properties_table', '27');

-- ----------------------------
-- Table structure for page_attribute
-- ----------------------------
DROP TABLE IF EXISTS `page_attribute`;
CREATE TABLE `page_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `page_attribute_attribute_id_index` (`attribute_id`),
  KEY `page_attribute_page_id_index` (`page_id`),
  CONSTRAINT `page_attribute_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `page_attribute_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of page_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for page_images
-- ----------------------------
DROP TABLE IF EXISTS `page_images`;
CREATE TABLE `page_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of page_images
-- ----------------------------
INSERT INTO `page_images` VALUES ('12', '178', 'nha-may-bia-viet-nam.wRQ.jpg', 'images/posts/nha-may-bia-viet-nam.wRQ.jpg', '0', '2015-03-10 03:10:03', '2015-03-10 03:10:03');
INSERT INTO `page_images` VALUES ('13', '257', 'phong-thuy-1.nOq.jpg', 'images/posts/phong-thuy-1.nOq.jpg', '0', '2015-05-28 20:30:27', '2015-05-28 20:30:27');
INSERT INTO `page_images` VALUES ('14', '257', 'phong-thuy-1.Qhg.jpg', 'images/posts/phong-thuy-1.Qhg.jpg', '0', '2015-05-28 20:30:35', '2015-05-28 20:30:35');
INSERT INTO `page_images` VALUES ('15', '257', 'phong-thuy-1.cN4.jpg', 'images/posts/phong-thuy-1.cN4.jpg', '0', '2015-05-28 20:30:43', '2015-05-28 20:30:43');
INSERT INTO `page_images` VALUES ('16', '383', 'b2214576d7fb83b14fd66e4c271f4b61.jpg', 'images/posts\\b2214576d7fb83b14fd66e4c271f4b61.jpg', '0', '2017-05-26 01:46:58', '2017-05-26 01:46:58');
INSERT INTO `page_images` VALUES ('17', '383', '210226d151e9f452d84e2a3528981043.jpg', 'images/posts\\210226d151e9f452d84e2a3528981043.jpg', '0', '2017-05-26 01:46:58', '2017-05-26 01:46:58');
INSERT INTO `page_images` VALUES ('18', '385', 'd102e3ba4e0dde1dfd55bb1b42028a7d.jpg', '/images/posts/d102e3ba4e0dde1dfd55bb1b42028a7d.jpg', '0', '2017-05-26 07:45:29', '2017-05-26 07:45:29');
INSERT INTO `page_images` VALUES ('19', '385', 'd646b1d19a27e5d9c6885c656fa4a98b.jpg', '/images/posts/d646b1d19a27e5d9c6885c656fa4a98b.jpg', '0', '2017-05-26 07:45:29', '2017-05-26 07:45:29');
INSERT INTO `page_images` VALUES ('20', '385', 'acb2d17965f62ab84ec4ef52510550a0.jpg', '/images/posts/acb2d17965f62ab84ec4ef52510550a0.jpg', '0', '2017-05-26 07:45:29', '2017-05-26 07:45:29');
INSERT INTO `page_images` VALUES ('21', '386', '9150be959ddd154b46f56cfe3498a642.jpg', '/images/posts/9150be959ddd154b46f56cfe3498a642.jpg', '0', '2017-05-29 03:56:23', '2017-05-29 03:56:23');
INSERT INTO `page_images` VALUES ('22', '386', '068db59728e9cf1d5811f6d4bdfca62e.jpg', '/images/posts/068db59728e9cf1d5811f6d4bdfca62e.jpg', '0', '2017-05-29 03:56:23', '2017-05-29 03:56:23');
INSERT INTO `page_images` VALUES ('23', '386', '51d852eb5a7c50f5f460dff4b2a25404.jpg', '/images/posts/51d852eb5a7c50f5f460dff4b2a25404.jpg', '0', '2017-05-29 03:56:23', '2017-05-29 03:56:23');
INSERT INTO `page_images` VALUES ('24', '386', 'b72166fa4652377916b78e3ff5a122da.jpg', '/images/posts/b72166fa4652377916b78e3ff5a122da.jpg', '0', '2017-05-29 03:56:23', '2017-05-29 03:56:23');
INSERT INTO `page_images` VALUES ('25', '386', '5551bb3bde3c40ed07b187844c5a36b9.jpg', '/images/posts/5551bb3bde3c40ed07b187844c5a36b9.jpg', '0', '2017-05-29 03:56:23', '2017-05-29 03:56:23');
INSERT INTO `page_images` VALUES ('26', '386', '522020ad08a6fa493b14326ca6a0f320.jpg', '/images/posts/522020ad08a6fa493b14326ca6a0f320.jpg', '0', '2017-05-29 03:56:24', '2017-05-29 03:56:24');
INSERT INTO `page_images` VALUES ('27', '387', '6cba508afb0130cedf71bb2c8aaa7f45.jpg', '/images/posts/6cba508afb0130cedf71bb2c8aaa7f45.jpg', '0', '2017-05-29 04:32:51', '2017-05-29 04:32:51');
INSERT INTO `page_images` VALUES ('28', '387', 'cf96b5fee3c51949ada17a27472dd077.jpg', '/images/posts/cf96b5fee3c51949ada17a27472dd077.jpg', '0', '2017-05-29 04:32:51', '2017-05-29 04:32:51');
INSERT INTO `page_images` VALUES ('29', '387', '69a1b9a24b671f7a80f76ced050e9b00.jpg', '/images/posts/69a1b9a24b671f7a80f76ced050e9b00.jpg', '0', '2017-05-29 04:32:51', '2017-05-29 04:32:51');
INSERT INTO `page_images` VALUES ('30', '387', '393f5f00ba27dd9783b9be7871fddfe5.jpg', '/images/posts/393f5f00ba27dd9783b9be7871fddfe5.jpg', '0', '2017-05-29 04:32:51', '2017-05-29 04:32:51');
INSERT INTO `page_images` VALUES ('31', '357', '27aefb39a23cfd462cfa188387b25040.jpg', 'images/posts/27aefb39a23cfd462cfa188387b25040.jpg', '0', '2017-05-29 07:41:43', '2017-05-29 07:41:43');
INSERT INTO `page_images` VALUES ('32', '357', '3fa5435206d8173d36a47f2750e55016.jpg', 'images/posts/3fa5435206d8173d36a47f2750e55016.jpg', '0', '2017-05-29 07:41:43', '2017-05-29 07:41:43');
INSERT INTO `page_images` VALUES ('33', '357', '48415334348731566a901316ce1f77da.jpg', 'images/posts/48415334348731566a901316ce1f77da.jpg', '0', '2017-05-29 07:41:43', '2017-05-29 07:41:43');
INSERT INTO `page_images` VALUES ('34', '357', 'e3c352381a92d7039e3394a9de546526.jpg', 'images/posts/e3c352381a92d7039e3394a9de546526.jpg', '0', '2017-05-29 07:41:43', '2017-05-29 07:41:43');
INSERT INTO `page_images` VALUES ('35', '392', '5db7e8c7b609e5587c961c31783bd9ad.jpg', '/images/posts/5db7e8c7b609e5587c961c31783bd9ad.jpg', '0', '2017-05-29 07:47:04', '2017-05-29 07:47:04');
INSERT INTO `page_images` VALUES ('36', '392', '86d2fb91225afbb6c7deb86ab973ebea.jpg', '/images/posts/86d2fb91225afbb6c7deb86ab973ebea.jpg', '0', '2017-05-29 07:47:04', '2017-05-29 07:47:04');
INSERT INTO `page_images` VALUES ('37', '392', '5562a63eec438511fa033ffc0b85be9d.jpg', '/images/posts/5562a63eec438511fa033ffc0b85be9d.jpg', '0', '2017-05-29 07:47:04', '2017-05-29 07:47:04');
INSERT INTO `page_images` VALUES ('38', '392', '07f078b6b974b26dc319ef0ad2f9dc9c.jpg', '/images/posts/07f078b6b974b26dc319ef0ad2f9dc9c.jpg', '0', '2017-05-29 07:47:04', '2017-05-29 07:47:04');
INSERT INTO `page_images` VALUES ('39', '393', 'b9d7732b82b91e18240e43e3e0158db1.jpg', '/images/posts/b9d7732b82b91e18240e43e3e0158db1.jpg', '0', '2017-05-29 08:19:08', '2017-05-29 08:19:08');
INSERT INTO `page_images` VALUES ('40', '393', 'de7c7d04c53d1f8f9daa27a320f9ae97.jpg', '/images/posts/de7c7d04c53d1f8f9daa27a320f9ae97.jpg', '0', '2017-05-29 08:19:08', '2017-05-29 08:19:08');
INSERT INTO `page_images` VALUES ('41', '393', '83f439453af77fb7d3cceaaee88bddbc.jpg', 'images/posts/83f439453af77fb7d3cceaaee88bddbc.jpg', '0', '2017-05-29 08:28:51', '2017-05-29 08:28:51');
INSERT INTO `page_images` VALUES ('42', '393', '63799fd84f25a69092ad7bb19235da0a.jpg', 'images/posts/63799fd84f25a69092ad7bb19235da0a.jpg', '0', '2017-05-29 08:28:52', '2017-05-29 08:28:52');
INSERT INTO `page_images` VALUES ('43', '393', '3dd37f0573052c69801d9965170d2bba.jpg', 'images/posts/3dd37f0573052c69801d9965170d2bba.jpg', '0', '2017-05-29 10:06:48', '2017-05-29 10:06:48');
INSERT INTO `page_images` VALUES ('44', '393', 'f4ae3618db0196146250147e4dde83ca.jpg', 'images/posts/f4ae3618db0196146250147e4dde83ca.jpg', '0', '2017-05-29 10:06:48', '2017-05-29 10:06:48');
INSERT INTO `page_images` VALUES ('45', '394', '02895474664d868b212e6100ae21acb8.jpg', '/images/posts/02895474664d868b212e6100ae21acb8.jpg', '0', '2017-05-29 10:09:13', '2017-05-29 10:09:13');
INSERT INTO `page_images` VALUES ('46', '394', '04af0673c01c7febf93cdbbea47eae1e.jpg', '/images/posts/04af0673c01c7febf93cdbbea47eae1e.jpg', '0', '2017-05-29 10:09:13', '2017-05-29 10:09:13');
INSERT INTO `page_images` VALUES ('47', '395', '02b3585aaf026e934bc9e39a6f4cd436.jpg', '/images/posts/02b3585aaf026e934bc9e39a6f4cd436.jpg', '0', '2017-05-29 10:16:53', '2017-05-29 10:16:53');
INSERT INTO `page_images` VALUES ('48', '397', '770e33685b0309e92eac6c9b4fb7784b.jpg', 'images/posts/770e33685b0309e92eac6c9b4fb7784b.jpg', '0', '2017-05-29 10:21:29', '2017-05-29 10:21:29');
INSERT INTO `page_images` VALUES ('49', '397', '96930a82520ef0736fb215e9fe9265eb.jpg', 'images/posts/96930a82520ef0736fb215e9fe9265eb.jpg', '0', '2017-05-29 10:21:29', '2017-05-29 10:21:29');
INSERT INTO `page_images` VALUES ('50', '398', '42d57347d04d33b449855a6541ac1148.jpg', '/images/posts/42d57347d04d33b449855a6541ac1148.jpg', '0', '2017-05-30 01:17:59', '2017-05-30 01:17:59');
INSERT INTO `page_images` VALUES ('51', '398', '9a352de4c72e913058e217a671a58788.jpg', '/images/posts/9a352de4c72e913058e217a671a58788.jpg', '0', '2017-05-30 01:17:59', '2017-05-30 01:17:59');
INSERT INTO `page_images` VALUES ('52', '398', '63c400ea0eb9f119df9e840675a3d569.jpg', '/images/posts/63c400ea0eb9f119df9e840675a3d569.jpg', '0', '2017-05-30 01:17:59', '2017-05-30 01:17:59');
INSERT INTO `page_images` VALUES ('53', '391', '936c07445a8cf4c270e74a31ac5fe976.jpg', '/images/posts/936c07445a8cf4c270e74a31ac5fe976.jpg', '0', '2017-05-30 01:45:46', '2017-05-30 01:45:46');
INSERT INTO `page_images` VALUES ('54', '385', 'c9ac2abcb8bf799c27ff3ab36de6d5aa.jpg', '/images/posts/c9ac2abcb8bf799c27ff3ab36de6d5aa.jpg', '0', '2017-05-30 01:55:20', '2017-05-30 01:55:20');
INSERT INTO `page_images` VALUES ('55', '385', 'e0fe5f4ca790747793a85b108f17e9c9.jpg', '/images/posts/e0fe5f4ca790747793a85b108f17e9c9.jpg', '0', '2017-05-30 01:55:20', '2017-05-30 01:55:20');
INSERT INTO `page_images` VALUES ('56', '385', 'bcab94defb878a24547f1f8d8851de0e.jpg', '/images/posts/bcab94defb878a24547f1f8d8851de0e.jpg', '0', '2017-05-30 01:55:20', '2017-05-30 01:55:20');
INSERT INTO `page_images` VALUES ('57', '369', '33084e19dd232d118398d39f359f7dc1.jpg', '/images/posts/33084e19dd232d118398d39f359f7dc1.jpg', '0', '2017-05-30 01:56:13', '2017-05-30 01:56:13');
INSERT INTO `page_images` VALUES ('58', '369', 'fd85acbaac33839de3d5a64e6d3b5db1.jpg', '/images/posts/fd85acbaac33839de3d5a64e6d3b5db1.jpg', '0', '2017-05-30 01:56:13', '2017-05-30 01:56:13');
INSERT INTO `page_images` VALUES ('59', '369', 'ce2d32c0119fdd86cef1cde14acdec64.jpg', '/images/posts/ce2d32c0119fdd86cef1cde14acdec64.jpg', '0', '2017-05-30 01:56:13', '2017-05-30 01:56:13');
INSERT INTO `page_images` VALUES ('60', '369', 'e35c76c24b8ed0316eb13aabc4bc6278.jpg', '/images/posts/e35c76c24b8ed0316eb13aabc4bc6278.jpg', '0', '2017-05-30 01:56:13', '2017-05-30 01:56:13');
INSERT INTO `page_images` VALUES ('61', '398', '57bd5e3292eeac297cecc68e896b9838.jpg', '/images/posts/57bd5e3292eeac297cecc68e896b9838.jpg', '0', '2017-05-30 01:57:17', '2017-05-30 01:57:17');
INSERT INTO `page_images` VALUES ('62', '398', 'd4082f590ab96ca13f948e4d2a4da2a3.jpg', '/images/posts/d4082f590ab96ca13f948e4d2a4da2a3.jpg', '0', '2017-05-30 01:57:17', '2017-05-30 01:57:17');
INSERT INTO `page_images` VALUES ('63', '398', '411f35d91ee9163138c405770e822155.jpg', '/images/posts/411f35d91ee9163138c405770e822155.jpg', '0', '2017-05-30 01:57:17', '2017-05-30 01:57:17');
INSERT INTO `page_images` VALUES ('64', '398', '0a0e97814ba928ad5447c6aafb882ac5.jpg', '/images/posts/0a0e97814ba928ad5447c6aafb882ac5.jpg', '0', '2017-05-30 01:57:17', '2017-05-30 01:57:17');
INSERT INTO `page_images` VALUES ('65', '396', 'f7e39e90c9529fe5ee68e02040c82ff6.jpg', '/images/posts/f7e39e90c9529fe5ee68e02040c82ff6.jpg', '0', '2017-05-30 01:58:15', '2017-05-30 01:58:15');
INSERT INTO `page_images` VALUES ('66', '396', '3b1a33ac685d3ea33c932c8049bb65a9.jpg', '/images/posts/3b1a33ac685d3ea33c932c8049bb65a9.jpg', '0', '2017-05-30 01:58:15', '2017-05-30 01:58:15');
INSERT INTO `page_images` VALUES ('67', '396', '1b0ee6d292e4caf5cdc7f546e770bb36.jpg', '/images/posts/1b0ee6d292e4caf5cdc7f546e770bb36.jpg', '0', '2017-05-30 01:58:15', '2017-05-30 01:58:15');
INSERT INTO `page_images` VALUES ('68', '396', '4eefdaee335a152fc9dc3d41165bbaa4.jpg', '/images/posts/4eefdaee335a152fc9dc3d41165bbaa4.jpg', '0', '2017-05-30 01:58:15', '2017-05-30 01:58:15');
INSERT INTO `page_images` VALUES ('69', '387', '7cc9b9ba516789610e0ef6b1523e38e8.jpg', '/images/posts/7cc9b9ba516789610e0ef6b1523e38e8.jpg', '0', '2017-05-30 01:59:45', '2017-05-30 01:59:45');
INSERT INTO `page_images` VALUES ('70', '387', 'b57fcd0a42872a7d5b9ef590615eec56.jpg', '/images/posts/b57fcd0a42872a7d5b9ef590615eec56.jpg', '0', '2017-05-30 01:59:45', '2017-05-30 01:59:45');
INSERT INTO `page_images` VALUES ('71', '387', '68e23240d0ad8d0cbab06e20770c736e.jpg', '/images/posts/68e23240d0ad8d0cbab06e20770c736e.jpg', '0', '2017-05-30 01:59:45', '2017-05-30 01:59:45');
INSERT INTO `page_images` VALUES ('72', '387', '86228c4a980c0541ee069e2a689514b1.jpg', '/images/posts/86228c4a980c0541ee069e2a689514b1.jpg', '0', '2017-05-30 01:59:45', '2017-05-30 01:59:45');
INSERT INTO `page_images` VALUES ('73', '386', 'a7c0b7ba22b7b78ee071979f053382cb.jpg', '/images/posts/a7c0b7ba22b7b78ee071979f053382cb.jpg', '0', '2017-05-30 02:00:15', '2017-05-30 02:00:15');
INSERT INTO `page_images` VALUES ('74', '386', '65f447d4d1daed2d41b0c32f8f05e63d.jpg', '/images/posts/65f447d4d1daed2d41b0c32f8f05e63d.jpg', '0', '2017-05-30 02:00:15', '2017-05-30 02:00:15');
INSERT INTO `page_images` VALUES ('75', '386', 'eb51c08ed9a202268b59d9b98429a573.jpg', '/images/posts/eb51c08ed9a202268b59d9b98429a573.jpg', '0', '2017-05-30 02:00:16', '2017-05-30 02:00:16');
INSERT INTO `page_images` VALUES ('76', '386', '05165610e62c4dd57b59c2d02a38a37d.jpg', '/images/posts/05165610e62c4dd57b59c2d02a38a37d.jpg', '0', '2017-05-30 02:00:16', '2017-05-30 02:00:16');
INSERT INTO `page_images` VALUES ('77', '360', '43fe057ac2f16ce4c22ebfdf908994bc.jpg', '/images/posts/43fe057ac2f16ce4c22ebfdf908994bc.jpg', '0', '2017-05-30 02:01:01', '2017-05-30 02:01:01');
INSERT INTO `page_images` VALUES ('78', '398', '1264d95bb35608c79b7de4f80d1eb0ba.jpg', '/images/posts/1264d95bb35608c79b7de4f80d1eb0ba.jpg', '0', '2017-05-30 02:08:37', '2017-05-30 02:08:37');
INSERT INTO `page_images` VALUES ('79', '398', '6a451ee9ab4f120f1edc008bd2d22ad9.jpg', '/images/posts/6a451ee9ab4f120f1edc008bd2d22ad9.jpg', '0', '2017-05-30 02:08:37', '2017-05-30 02:08:37');
INSERT INTO `page_images` VALUES ('80', '398', '4db35a3cf439150528822feb74ef3e8d.jpg', '/images/posts/4db35a3cf439150528822feb74ef3e8d.jpg', '0', '2017-05-30 02:08:37', '2017-05-30 02:08:37');
INSERT INTO `page_images` VALUES ('81', '398', 'fcac6645aa5f29ccd6dfdd1a5894af83.jpg', '/images/posts/fcac6645aa5f29ccd6dfdd1a5894af83.jpg', '0', '2017-05-30 02:08:37', '2017-05-30 02:08:37');
INSERT INTO `page_images` VALUES ('82', '400', '6e6999f0d4ef4ba247dd3089f0366f37.jpg', '/images/posts/6e6999f0d4ef4ba247dd3089f0366f37.jpg', '0', '2017-05-30 02:11:42', '2017-05-30 02:11:42');
INSERT INTO `page_images` VALUES ('83', '400', '38c5b8e45fddaef4b738cb8db1385175.jpg', '/images/posts/38c5b8e45fddaef4b738cb8db1385175.jpg', '0', '2017-05-30 02:11:42', '2017-05-30 02:11:42');
INSERT INTO `page_images` VALUES ('84', '400', 'ab5aabf007c77439cf04124b64ffa7e5.jpg', '/images/posts/ab5aabf007c77439cf04124b64ffa7e5.jpg', '0', '2017-05-30 02:11:42', '2017-05-30 02:11:42');
INSERT INTO `page_images` VALUES ('85', '400', '14c0a52a5cf58e73fc3bb00b1939c781.jpg', '/images/posts/14c0a52a5cf58e73fc3bb00b1939c781.jpg', '0', '2017-05-30 02:11:42', '2017-05-30 02:11:42');
INSERT INTO `page_images` VALUES ('86', '401', '09214b57977b44ab111e8a56d6311e5d.jpg', '/images/posts/09214b57977b44ab111e8a56d6311e5d.jpg', '0', '2017-05-30 02:15:10', '2017-05-30 02:15:10');
INSERT INTO `page_images` VALUES ('87', '401', '361f45466f50bc0428a564f1d19001bd.jpg', '/images/posts/361f45466f50bc0428a564f1d19001bd.jpg', '0', '2017-05-30 02:15:10', '2017-05-30 02:15:10');
INSERT INTO `page_images` VALUES ('88', '401', 'd92a15dc479ba11fe5708797203c04b6.jpg', '/images/posts/d92a15dc479ba11fe5708797203c04b6.jpg', '0', '2017-05-30 02:15:10', '2017-05-30 02:15:10');
INSERT INTO `page_images` VALUES ('89', '401', '60ebbdb230d64411e4d2d06dea9ba688.jpg', '/images/posts/60ebbdb230d64411e4d2d06dea9ba688.jpg', '0', '2017-05-30 02:15:10', '2017-05-30 02:15:10');
INSERT INTO `page_images` VALUES ('90', '402', '70ed9cc97d6e1af6717f34fd9f8c7267.jpg', '/images/posts/70ed9cc97d6e1af6717f34fd9f8c7267.jpg', '0', '2017-05-30 02:17:17', '2017-05-30 02:17:17');
INSERT INTO `page_images` VALUES ('91', '402', 'c8f652df49a7f1639f0905b2013392d8.jpg', '/images/posts/c8f652df49a7f1639f0905b2013392d8.jpg', '0', '2017-05-30 02:17:17', '2017-05-30 02:17:17');
INSERT INTO `page_images` VALUES ('92', '402', '7066cfe8a74a2c31104278e6346b53e4.jpg', '/images/posts/7066cfe8a74a2c31104278e6346b53e4.jpg', '0', '2017-05-30 02:17:17', '2017-05-30 02:17:17');
INSERT INTO `page_images` VALUES ('93', '402', '4bb2a0e92a782ab349733012d1f3f31c.jpg', '/images/posts/4bb2a0e92a782ab349733012d1f3f31c.jpg', '0', '2017-05-30 02:17:17', '2017-05-30 02:17:17');
INSERT INTO `page_images` VALUES ('94', '403', 'acaff65cf9bdc49e485711da791bbc13.jpg', '/images/posts/acaff65cf9bdc49e485711da791bbc13.jpg', '0', '2017-05-30 03:39:19', '2017-05-30 03:39:19');
INSERT INTO `page_images` VALUES ('95', '403', 'fbff55648000b64b0d01d8e4ebbee309.jpg', '/images/posts/fbff55648000b64b0d01d8e4ebbee309.jpg', '0', '2017-05-30 03:39:19', '2017-05-30 03:39:19');
INSERT INTO `page_images` VALUES ('96', '403', '303a49d36fc86b0f9d2929717001af31.jpg', '/images/posts/303a49d36fc86b0f9d2929717001af31.jpg', '0', '2017-05-30 03:39:19', '2017-05-30 03:39:19');
INSERT INTO `page_images` VALUES ('97', '403', '850832d73e835757f36d7d4c4c43caaa.jpg', '/images/posts/850832d73e835757f36d7d4c4c43caaa.jpg', '0', '2017-05-30 03:39:19', '2017-05-30 03:39:19');
INSERT INTO `page_images` VALUES ('98', '364', '8c2c6951a3ee76527b31d54ae44d4134.jpg', '/images/posts/8c2c6951a3ee76527b31d54ae44d4134.jpg', '0', '2017-05-30 03:53:32', '2017-05-30 03:53:32');
INSERT INTO `page_images` VALUES ('99', '364', '7fcb89c7721a295add9b55710f11abf5.jpg', '/images/posts/7fcb89c7721a295add9b55710f11abf5.jpg', '0', '2017-05-30 03:53:32', '2017-05-30 03:53:32');
INSERT INTO `page_images` VALUES ('100', '364', '00b3d71d3028397a4ef4d2d35126243a.jpg', '/images/posts/00b3d71d3028397a4ef4d2d35126243a.jpg', '0', '2017-05-30 03:53:32', '2017-05-30 03:53:32');
INSERT INTO `page_images` VALUES ('101', '364', '4885a758667711b7a61f1d3ad565bbd9.jpg', '/images/posts/4885a758667711b7a61f1d3ad565bbd9.jpg', '0', '2017-05-30 03:53:32', '2017-05-30 03:53:32');
INSERT INTO `page_images` VALUES ('102', '395', 'debd8ccf85c0cfac10cd92aa677f7a90.jpg', '/images/posts/debd8ccf85c0cfac10cd92aa677f7a90.jpg', '0', '2017-05-30 06:27:27', '2017-05-30 06:27:27');
INSERT INTO `page_images` VALUES ('103', '395', '72c3c415ff00ec804ef5562ac1261329.jpg', '/images/posts/72c3c415ff00ec804ef5562ac1261329.jpg', '0', '2017-05-30 06:27:27', '2017-05-30 06:27:27');
INSERT INTO `page_images` VALUES ('104', '395', '85e197a86cbf3febf179d0c9059dcc35.jpg', '/images/posts/85e197a86cbf3febf179d0c9059dcc35.jpg', '0', '2017-05-30 06:27:27', '2017-05-30 06:27:27');
INSERT INTO `page_images` VALUES ('105', '395', 'f1a0e7d9bf8d558b69357ca29f69da83.jpg', '/images/posts/f1a0e7d9bf8d558b69357ca29f69da83.jpg', '0', '2017-05-30 06:27:27', '2017-05-30 06:27:27');
INSERT INTO `page_images` VALUES ('106', '349', 'dc35979efd6ff9d484590c1034571b13.jpg', '/images/posts/dc35979efd6ff9d484590c1034571b13.jpg', '0', '2017-05-30 06:27:59', '2017-05-30 06:27:59');
INSERT INTO `page_images` VALUES ('107', '349', 'b8a3123e395d9d26885248608f0d750e.jpg', '/images/posts/b8a3123e395d9d26885248608f0d750e.jpg', '0', '2017-05-30 06:27:59', '2017-05-30 06:27:59');
INSERT INTO `page_images` VALUES ('108', '349', 'e68f1f40d01d1580852f76f114b12fba.jpg', '/images/posts/e68f1f40d01d1580852f76f114b12fba.jpg', '0', '2017-05-30 06:27:59', '2017-05-30 06:27:59');
INSERT INTO `page_images` VALUES ('109', '349', '171bf978f9be092a8a53c86cdb0879a5.jpg', '/images/posts/171bf978f9be092a8a53c86cdb0879a5.jpg', '0', '2017-05-30 06:27:59', '2017-05-30 06:27:59');
INSERT INTO `page_images` VALUES ('110', '357', 'ecdce21165db258a7a68fdd6fc576eb3.jpg', '/images/posts/ecdce21165db258a7a68fdd6fc576eb3.jpg', '0', '2017-05-30 06:28:33', '2017-05-30 06:28:33');
INSERT INTO `page_images` VALUES ('111', '357', '1e6cefe8428ee120a0a95d66a83e2fb1.jpg', '/images/posts/1e6cefe8428ee120a0a95d66a83e2fb1.jpg', '0', '2017-05-30 06:28:33', '2017-05-30 06:28:33');
INSERT INTO `page_images` VALUES ('112', '357', 'c69f4102e68ef581df230e4de5f6bbc2.jpg', '/images/posts/c69f4102e68ef581df230e4de5f6bbc2.jpg', '0', '2017-05-30 06:28:33', '2017-05-30 06:28:33');
INSERT INTO `page_images` VALUES ('113', '357', '97802682d029ce10eab470cc362e6374.jpg', '/images/posts/97802682d029ce10eab470cc362e6374.jpg', '0', '2017-05-30 06:28:33', '2017-05-30 06:28:33');
INSERT INTO `page_images` VALUES ('114', '366', 'fb9af0c1e9261acafe7a5c7b83bd3659.jpg', '/images/posts/fb9af0c1e9261acafe7a5c7b83bd3659.jpg', '0', '2017-05-30 06:28:57', '2017-05-30 06:28:57');
INSERT INTO `page_images` VALUES ('115', '366', '967dafdac43860fe1ecec9531b4bb1f6.jpg', '/images/posts/967dafdac43860fe1ecec9531b4bb1f6.jpg', '0', '2017-05-30 06:28:57', '2017-05-30 06:28:57');
INSERT INTO `page_images` VALUES ('116', '366', 'b0c2de41352bd5652dcf0de27d7c9b8b.jpg', '/images/posts/b0c2de41352bd5652dcf0de27d7c9b8b.jpg', '0', '2017-05-30 06:28:57', '2017-05-30 06:28:57');
INSERT INTO `page_images` VALUES ('117', '366', '127e2bcacb87c04538efb406eaad4da6.jpg', '/images/posts/127e2bcacb87c04538efb406eaad4da6.jpg', '0', '2017-05-30 06:28:57', '2017-05-30 06:28:57');
INSERT INTO `page_images` VALUES ('118', '403', '592f7c6406f9eb0c6f2fa0a12c2b8197.jpg', '/images/posts/592f7c6406f9eb0c6f2fa0a12c2b8197.jpg', '0', '2017-05-30 10:20:04', '2017-05-30 10:20:04');
INSERT INTO `page_images` VALUES ('119', '403', 'da941728caf334906cc7267fdde3c5da.jpg', '/images/posts/da941728caf334906cc7267fdde3c5da.jpg', '0', '2017-05-30 10:20:04', '2017-05-30 10:20:04');
INSERT INTO `page_images` VALUES ('120', '403', '92e2c5cf1365ca42180c51ba3d11ba38.jpg', '/images/posts/92e2c5cf1365ca42180c51ba3d11ba38.jpg', '0', '2017-05-30 10:20:05', '2017-05-30 10:20:05');
INSERT INTO `page_images` VALUES ('121', '403', 'd5c06020afc902b7e1148adc9ef4ff92.jpg', '/images/posts/d5c06020afc902b7e1148adc9ef4ff92.jpg', '0', '2017-05-30 10:20:05', '2017-05-30 10:20:05');
INSERT INTO `page_images` VALUES ('122', '401', '00dcb7296657c523b81c73f5ad6a72f2.jpg', '/images/posts/00dcb7296657c523b81c73f5ad6a72f2.jpg', '0', '2017-05-30 10:20:18', '2017-05-30 10:20:18');
INSERT INTO `page_images` VALUES ('123', '401', '07d80e35eeb1ee8a019ef8edcb743e7e.jpg', '/images/posts/07d80e35eeb1ee8a019ef8edcb743e7e.jpg', '0', '2017-05-30 10:20:18', '2017-05-30 10:20:18');
INSERT INTO `page_images` VALUES ('124', '401', 'e96576162e335b0a61ca9401ca565ff6.jpg', '/images/posts/e96576162e335b0a61ca9401ca565ff6.jpg', '0', '2017-05-30 10:20:18', '2017-05-30 10:20:18');
INSERT INTO `page_images` VALUES ('125', '401', '7cf182fe7e0622066b968997e47bf158.jpg', '/images/posts/7cf182fe7e0622066b968997e47bf158.jpg', '0', '2017-05-30 10:20:18', '2017-05-30 10:20:18');
INSERT INTO `page_images` VALUES ('126', '400', '2d8fe21e6e3b0b1388fbfd84ba8a8929.jpg', '/images/posts/2d8fe21e6e3b0b1388fbfd84ba8a8929.jpg', '0', '2017-05-30 10:20:29', '2017-05-30 10:20:29');
INSERT INTO `page_images` VALUES ('127', '400', '2b9f4c9e13d05db891102aac0ee0d738.jpg', '/images/posts/2b9f4c9e13d05db891102aac0ee0d738.jpg', '0', '2017-05-30 10:20:29', '2017-05-30 10:20:29');
INSERT INTO `page_images` VALUES ('128', '400', 'c751b604353245adf2167b9284e09259.jpg', '/images/posts/c751b604353245adf2167b9284e09259.jpg', '0', '2017-05-30 10:20:29', '2017-05-30 10:20:29');
INSERT INTO `page_images` VALUES ('129', '400', '237b9071dd1a641bec781c9341bdc121.jpg', '/images/posts/237b9071dd1a641bec781c9341bdc121.jpg', '0', '2017-05-30 10:20:29', '2017-05-30 10:20:29');
INSERT INTO `page_images` VALUES ('130', '397', '09a8deb88539448d7f7ffb15de9a7ef5.jpg', '/images/posts/09a8deb88539448d7f7ffb15de9a7ef5.jpg', '0', '2017-05-30 10:21:26', '2017-05-30 10:21:26');
INSERT INTO `page_images` VALUES ('131', '397', 'd37e9b8205f2e1ba9304aa509464eaf9.jpg', '/images/posts/d37e9b8205f2e1ba9304aa509464eaf9.jpg', '0', '2017-05-30 10:21:26', '2017-05-30 10:21:26');
INSERT INTO `page_images` VALUES ('132', '397', '01bd1aaaf3e6fda7fedb56aed4e02b02.jpg', '/images/posts/01bd1aaaf3e6fda7fedb56aed4e02b02.jpg', '0', '2017-05-30 10:21:26', '2017-05-30 10:21:26');
INSERT INTO `page_images` VALUES ('133', '397', '56b293060140b95b3595917424b6eae7.jpg', '/images/posts/56b293060140b95b3595917424b6eae7.jpg', '0', '2017-05-30 10:21:26', '2017-05-30 10:21:26');
INSERT INTO `page_images` VALUES ('134', '396', '2d236c7abbd8ca99bbdacc57adc88989.jpg', '/images/posts/2d236c7abbd8ca99bbdacc57adc88989.jpg', '0', '2017-05-30 10:21:45', '2017-05-30 10:21:45');
INSERT INTO `page_images` VALUES ('135', '396', '56c85ca1177f236f57c8d46e65903836.jpg', '/images/posts/56c85ca1177f236f57c8d46e65903836.jpg', '0', '2017-05-30 10:21:45', '2017-05-30 10:21:45');
INSERT INTO `page_images` VALUES ('136', '396', 'a741d65bbae53a99b3b45fc2bc350d41.jpg', '/images/posts/a741d65bbae53a99b3b45fc2bc350d41.jpg', '0', '2017-05-30 10:21:45', '2017-05-30 10:21:45');
INSERT INTO `page_images` VALUES ('137', '396', '5a5e00c4591cf2cb1b0be48730264d98.jpg', '/images/posts/5a5e00c4591cf2cb1b0be48730264d98.jpg', '0', '2017-05-30 10:21:45', '2017-05-30 10:21:45');
INSERT INTO `page_images` VALUES ('138', '394', 'b8081be47d8564e8a4c2fc69746ddd1b.jpg', '/images/posts/b8081be47d8564e8a4c2fc69746ddd1b.jpg', '0', '2017-05-30 10:22:40', '2017-05-30 10:22:40');
INSERT INTO `page_images` VALUES ('139', '394', '8050d97bf130eb564a96cf98aa87b030.jpg', '/images/posts/8050d97bf130eb564a96cf98aa87b030.jpg', '0', '2017-05-30 10:22:40', '2017-05-30 10:22:40');
INSERT INTO `page_images` VALUES ('140', '394', '8c706cd852a4495f43a668b08b92fa01.jpg', '/images/posts/8c706cd852a4495f43a668b08b92fa01.jpg', '0', '2017-05-30 10:22:40', '2017-05-30 10:22:40');
INSERT INTO `page_images` VALUES ('141', '394', 'bebb1950325b74b05b0724dcc76c7d5b.jpg', '/images/posts/bebb1950325b74b05b0724dcc76c7d5b.jpg', '0', '2017-05-30 10:22:40', '2017-05-30 10:22:40');
INSERT INTO `page_images` VALUES ('142', '393', 'a90b31ad0b97908da3682d83ca19b459.jpg', '/images/posts/a90b31ad0b97908da3682d83ca19b459.jpg', '0', '2017-05-30 10:23:00', '2017-05-30 10:23:00');
INSERT INTO `page_images` VALUES ('143', '393', '5aea5db7ff36be996310714eeb83eab7.jpg', '/images/posts/5aea5db7ff36be996310714eeb83eab7.jpg', '0', '2017-05-30 10:23:00', '2017-05-30 10:23:00');
INSERT INTO `page_images` VALUES ('144', '393', '582fe223da521dfeba57e7a29f023079.jpg', '/images/posts/582fe223da521dfeba57e7a29f023079.jpg', '0', '2017-05-30 10:23:00', '2017-05-30 10:23:00');
INSERT INTO `page_images` VALUES ('145', '393', '738edd4750fc97e3b777a88cb56171ac.jpg', '/images/posts/738edd4750fc97e3b777a88cb56171ac.jpg', '0', '2017-05-30 10:23:00', '2017-05-30 10:23:00');
INSERT INTO `page_images` VALUES ('146', '392', 'ba6fb31dc78b66ac7d5040a3a7992537.jpg', '/images/posts/ba6fb31dc78b66ac7d5040a3a7992537.jpg', '0', '2017-05-30 10:23:20', '2017-05-30 10:23:20');
INSERT INTO `page_images` VALUES ('147', '392', '73eb3fc4d9672854bc59d9858ad7213f.jpg', '/images/posts/73eb3fc4d9672854bc59d9858ad7213f.jpg', '0', '2017-05-30 10:23:20', '2017-05-30 10:23:20');
INSERT INTO `page_images` VALUES ('148', '392', '344720ec0e75f2a1dd611e55d6e5a296.jpg', '/images/posts/344720ec0e75f2a1dd611e55d6e5a296.jpg', '0', '2017-05-30 10:23:20', '2017-05-30 10:23:20');
INSERT INTO `page_images` VALUES ('149', '392', 'e481fb0fe51d5969fa72208a7454628a.jpg', '/images/posts/e481fb0fe51d5969fa72208a7454628a.jpg', '0', '2017-05-30 10:23:20', '2017-05-30 10:23:20');
INSERT INTO `page_images` VALUES ('150', '387', 'cd58d8461fd849620e16170549a6ae9f.jpg', '/images/posts/cd58d8461fd849620e16170549a6ae9f.jpg', '0', '2017-05-30 10:23:37', '2017-05-30 10:23:37');
INSERT INTO `page_images` VALUES ('151', '387', '20c33c6d01f2ebfc0df21eff4fdbacc5.jpg', '/images/posts/20c33c6d01f2ebfc0df21eff4fdbacc5.jpg', '0', '2017-05-30 10:23:37', '2017-05-30 10:23:37');
INSERT INTO `page_images` VALUES ('152', '387', '6605da04a867e0ca293277dd99b06ccd.jpg', '/images/posts/6605da04a867e0ca293277dd99b06ccd.jpg', '0', '2017-05-30 10:23:37', '2017-05-30 10:23:37');
INSERT INTO `page_images` VALUES ('153', '387', '7b76f30df6ae16243edecda40638671a.jpg', '/images/posts/7b76f30df6ae16243edecda40638671a.jpg', '0', '2017-05-30 10:23:37', '2017-05-30 10:23:37');
INSERT INTO `page_images` VALUES ('154', '386', 'bd30f61d8084c4c7e59770c1d8b7d491.jpg', '/images/posts/bd30f61d8084c4c7e59770c1d8b7d491.jpg', '0', '2017-05-30 10:23:55', '2017-05-30 10:23:55');
INSERT INTO `page_images` VALUES ('155', '386', 'a0cfa1c665a5c8bfbfc6ce5c21bc13ff.jpg', '/images/posts/a0cfa1c665a5c8bfbfc6ce5c21bc13ff.jpg', '0', '2017-05-30 10:23:55', '2017-05-30 10:23:55');
INSERT INTO `page_images` VALUES ('156', '386', '5c363c38b1564c43363cf2833d0f662b.jpg', '/images/posts/5c363c38b1564c43363cf2833d0f662b.jpg', '0', '2017-05-30 10:23:55', '2017-05-30 10:23:55');
INSERT INTO `page_images` VALUES ('157', '386', 'aa83bd43e40abbc825a54e34c46cbc6e.jpg', '/images/posts/aa83bd43e40abbc825a54e34c46cbc6e.jpg', '0', '2017-05-30 10:23:55', '2017-05-30 10:23:55');
INSERT INTO `page_images` VALUES ('158', '385', '62c33df4e531ce20e1ba4a03875ae5ad.jpg', '/images/posts/62c33df4e531ce20e1ba4a03875ae5ad.jpg', '0', '2017-05-30 10:24:14', '2017-05-30 10:24:14');
INSERT INTO `page_images` VALUES ('159', '385', 'de2c3cb436191540fbc8b6479496c503.jpg', '/images/posts/de2c3cb436191540fbc8b6479496c503.jpg', '0', '2017-05-30 10:24:14', '2017-05-30 10:24:14');
INSERT INTO `page_images` VALUES ('160', '385', 'c0d59e29516cb92a6998ba108af66016.jpg', '/images/posts/c0d59e29516cb92a6998ba108af66016.jpg', '0', '2017-05-30 10:24:14', '2017-05-30 10:24:14');
INSERT INTO `page_images` VALUES ('161', '385', '6d9088875d34bda53d0bb02a0c3cead8.jpg', '/images/posts/6d9088875d34bda53d0bb02a0c3cead8.jpg', '0', '2017-05-30 10:24:14', '2017-05-30 10:24:14');
INSERT INTO `page_images` VALUES ('162', '383', '87454800b58eae4aaf85d47be954472d.jpg', '/images/posts/87454800b58eae4aaf85d47be954472d.jpg', '0', '2017-05-30 10:24:47', '2017-05-30 10:24:47');
INSERT INTO `page_images` VALUES ('163', '383', 'e19e47b22d9ef333755661077b6889f2.jpg', '/images/posts/e19e47b22d9ef333755661077b6889f2.jpg', '0', '2017-05-30 10:24:47', '2017-05-30 10:24:47');
INSERT INTO `page_images` VALUES ('164', '383', '2e821641f6117285d61acc03092e2122.jpg', '/images/posts/2e821641f6117285d61acc03092e2122.jpg', '0', '2017-05-30 10:24:47', '2017-05-30 10:24:47');
INSERT INTO `page_images` VALUES ('165', '383', 'ae1ea5fe2e98e0922955f56a8280af59.jpg', '/images/posts/ae1ea5fe2e98e0922955f56a8280af59.jpg', '0', '2017-05-30 10:24:47', '2017-05-30 10:24:47');
INSERT INTO `page_images` VALUES ('166', '382', '12ff5c20362ae8eee298cc571b33a4e0.jpg', '/images/posts/12ff5c20362ae8eee298cc571b33a4e0.jpg', '0', '2017-05-30 10:25:38', '2017-05-30 10:25:38');
INSERT INTO `page_images` VALUES ('167', '382', '03c8df2b0916c6920c4aec839db31de6.jpg', '/images/posts/03c8df2b0916c6920c4aec839db31de6.jpg', '0', '2017-05-30 10:25:38', '2017-05-30 10:25:38');
INSERT INTO `page_images` VALUES ('168', '382', '87f257524b917af061be2697c68c64f1.jpg', '/images/posts/87f257524b917af061be2697c68c64f1.jpg', '0', '2017-05-30 10:25:39', '2017-05-30 10:25:39');
INSERT INTO `page_images` VALUES ('169', '382', 'ce2ba312a6f078d8cd4b8107ff31d8d6.jpg', '/images/posts/ce2ba312a6f078d8cd4b8107ff31d8d6.jpg', '0', '2017-05-30 10:25:39', '2017-05-30 10:25:39');
INSERT INTO `page_images` VALUES ('170', '369', 'fb7ae2743db6922ebe8a46a13d09e494.jpg', '/images/posts/fb7ae2743db6922ebe8a46a13d09e494.jpg', '0', '2017-05-30 10:26:00', '2017-05-30 10:26:00');
INSERT INTO `page_images` VALUES ('171', '369', '5948d5c2671a5813a126fe2f3ed2d639.jpg', '/images/posts/5948d5c2671a5813a126fe2f3ed2d639.jpg', '0', '2017-05-30 10:26:00', '2017-05-30 10:26:00');
INSERT INTO `page_images` VALUES ('172', '369', 'fbf7ad7873d1ff5edded0856f1fde46c.jpg', '/images/posts/fbf7ad7873d1ff5edded0856f1fde46c.jpg', '0', '2017-05-30 10:26:00', '2017-05-30 10:26:00');
INSERT INTO `page_images` VALUES ('173', '369', '367be890c67047cc893f55d79e5c00c1.jpg', '/images/posts/367be890c67047cc893f55d79e5c00c1.jpg', '0', '2017-05-30 10:26:00', '2017-05-30 10:26:00');
INSERT INTO `page_images` VALUES ('174', '368', '88a544617318e031ca43214b3d923ab2.jpg', '/images/posts/88a544617318e031ca43214b3d923ab2.jpg', '0', '2017-05-30 10:26:28', '2017-05-30 10:26:28');
INSERT INTO `page_images` VALUES ('175', '368', '7f9c0af846fb27299cf3db85e303d936.jpg', '/images/posts/7f9c0af846fb27299cf3db85e303d936.jpg', '0', '2017-05-30 10:26:28', '2017-05-30 10:26:28');
INSERT INTO `page_images` VALUES ('176', '368', '003cf6212dcbbca7044b6992a10a2343.jpg', '/images/posts/003cf6212dcbbca7044b6992a10a2343.jpg', '0', '2017-05-30 10:26:28', '2017-05-30 10:26:28');
INSERT INTO `page_images` VALUES ('177', '368', '3cdde05d09eebac4c462fd6a2a219279.jpg', '/images/posts/3cdde05d09eebac4c462fd6a2a219279.jpg', '0', '2017-05-30 10:26:28', '2017-05-30 10:26:28');
INSERT INTO `page_images` VALUES ('178', '367', '49b90e0da18c01c9797401b2ea5d6738.jpg', '/images/posts/49b90e0da18c01c9797401b2ea5d6738.jpg', '0', '2017-05-30 10:26:53', '2017-05-30 10:26:53');
INSERT INTO `page_images` VALUES ('179', '367', 'd80922f1c20e879e91e8b6317d4e61c2.jpg', '/images/posts/d80922f1c20e879e91e8b6317d4e61c2.jpg', '0', '2017-05-30 10:26:53', '2017-05-30 10:26:53');
INSERT INTO `page_images` VALUES ('180', '367', '7060fe3563be130fb589509d84279c7d.jpg', '/images/posts/7060fe3563be130fb589509d84279c7d.jpg', '0', '2017-05-30 10:26:54', '2017-05-30 10:26:54');
INSERT INTO `page_images` VALUES ('181', '367', '6c0353ce31fdb15e18ab83badb14c073.jpg', '/images/posts/6c0353ce31fdb15e18ab83badb14c073.jpg', '0', '2017-05-30 10:26:54', '2017-05-30 10:26:54');
INSERT INTO `page_images` VALUES ('182', '365', '69e9a4a9bc6cf26defef2a3b90da6a04.jpg', '/images/posts/69e9a4a9bc6cf26defef2a3b90da6a04.jpg', '0', '2017-05-30 10:27:35', '2017-05-30 10:27:35');
INSERT INTO `page_images` VALUES ('183', '365', '0ac8ca808d96cddf4a7540a657eeac81.jpg', '/images/posts/0ac8ca808d96cddf4a7540a657eeac81.jpg', '0', '2017-05-30 10:27:35', '2017-05-30 10:27:35');
INSERT INTO `page_images` VALUES ('184', '365', 'a35f13fd192d57c2d86e0081c4f92c93.jpg', '/images/posts/a35f13fd192d57c2d86e0081c4f92c93.jpg', '0', '2017-05-30 10:27:35', '2017-05-30 10:27:35');
INSERT INTO `page_images` VALUES ('185', '365', 'a3293b9ef0efd0cda8f4228ef895cbd9.jpg', '/images/posts/a3293b9ef0efd0cda8f4228ef895cbd9.jpg', '0', '2017-05-30 10:27:35', '2017-05-30 10:27:35');
INSERT INTO `page_images` VALUES ('186', '363', 'ec1dd205d69868d911fef5bf495b7f2a.jpg', '/images/posts/ec1dd205d69868d911fef5bf495b7f2a.jpg', '0', '2017-05-30 10:28:15', '2017-05-30 10:28:15');
INSERT INTO `page_images` VALUES ('187', '363', 'b33afcfc7d81ab9f2d1dd1f408ddffec.jpg', '/images/posts/b33afcfc7d81ab9f2d1dd1f408ddffec.jpg', '0', '2017-05-30 10:28:15', '2017-05-30 10:28:15');
INSERT INTO `page_images` VALUES ('188', '363', '8323b25ea295489f8b766b195dae5a50.jpg', '/images/posts/8323b25ea295489f8b766b195dae5a50.jpg', '0', '2017-05-30 10:28:15', '2017-05-30 10:28:15');
INSERT INTO `page_images` VALUES ('189', '363', '444c84397df3ecceaf8ff5175e3a2aca.jpg', '/images/posts/444c84397df3ecceaf8ff5175e3a2aca.jpg', '0', '2017-05-30 10:28:15', '2017-05-30 10:28:15');
INSERT INTO `page_images` VALUES ('190', '362', '01688e352ebdfb797947914d69d10bb0.jpg', '/images/posts/01688e352ebdfb797947914d69d10bb0.jpg', '0', '2017-05-30 10:28:49', '2017-05-30 10:28:49');
INSERT INTO `page_images` VALUES ('191', '362', '5aa50614b5e04627939b0979f5acb135.jpg', '/images/posts/5aa50614b5e04627939b0979f5acb135.jpg', '0', '2017-05-30 10:28:49', '2017-05-30 10:28:49');
INSERT INTO `page_images` VALUES ('192', '362', '53b0e6fbaf71c3a246036bd74df369b6.jpg', '/images/posts/53b0e6fbaf71c3a246036bd74df369b6.jpg', '0', '2017-05-30 10:28:49', '2017-05-30 10:28:49');
INSERT INTO `page_images` VALUES ('193', '362', 'e32ec7b3800c37180e1eb49ac7035f30.jpg', '/images/posts/e32ec7b3800c37180e1eb49ac7035f30.jpg', '0', '2017-05-30 10:28:49', '2017-05-30 10:28:49');
INSERT INTO `page_images` VALUES ('194', '361', 'b6d9ac240a14c1a1595faf21bdb9c2a0.jpg', '/images/posts/b6d9ac240a14c1a1595faf21bdb9c2a0.jpg', '0', '2017-05-30 10:29:13', '2017-05-30 10:29:13');
INSERT INTO `page_images` VALUES ('195', '361', '4f38f0a512ca37ce59e2b9547a3d51c8.jpg', '/images/posts/4f38f0a512ca37ce59e2b9547a3d51c8.jpg', '0', '2017-05-30 10:29:13', '2017-05-30 10:29:13');
INSERT INTO `page_images` VALUES ('196', '361', 'c1a8f29fe18c5e3e3cd24c2bd4daa54e.jpg', '/images/posts/c1a8f29fe18c5e3e3cd24c2bd4daa54e.jpg', '0', '2017-05-30 10:29:13', '2017-05-30 10:29:13');
INSERT INTO `page_images` VALUES ('197', '361', '640ece2eee99830c4b621c1271c6bbe2.jpg', '/images/posts/640ece2eee99830c4b621c1271c6bbe2.jpg', '0', '2017-05-30 10:29:13', '2017-05-30 10:29:13');
INSERT INTO `page_images` VALUES ('198', '404', 'ee0c6603935ca37697b95d28bca7b228.jpg', '/images/posts/ee0c6603935ca37697b95d28bca7b228.jpg', '0', '2017-05-31 03:12:04', '2017-05-31 03:12:04');
INSERT INTO `page_images` VALUES ('199', '404', '6d42f0b51fa53a8af61c4d3f841daa0b.jpg', '/images/posts/6d42f0b51fa53a8af61c4d3f841daa0b.jpg', '0', '2017-05-31 03:12:04', '2017-05-31 03:12:04');
INSERT INTO `page_images` VALUES ('200', '404', 'd8569e4030864d0fc6a67f54278e6396.jpg', '/images/posts/d8569e4030864d0fc6a67f54278e6396.jpg', '0', '2017-05-31 03:12:04', '2017-05-31 03:12:04');
INSERT INTO `page_images` VALUES ('201', '404', 'b4b83e3f3589e2be4c2ec7c886bf8e28.jpg', '/images/posts/b4b83e3f3589e2be4c2ec7c886bf8e28.jpg', '0', '2017-05-31 03:12:04', '2017-05-31 03:12:04');
INSERT INTO `page_images` VALUES ('202', '405', '748e253274aa16203399a46b3d0499bb.jpg', '/images/posts/748e253274aa16203399a46b3d0499bb.jpg', '0', '2017-05-31 03:13:18', '2017-05-31 03:13:18');
INSERT INTO `page_images` VALUES ('203', '405', 'e37efe59264d0dcf03c5b162e122b0bc.jpg', '/images/posts/e37efe59264d0dcf03c5b162e122b0bc.jpg', '0', '2017-05-31 03:13:18', '2017-05-31 03:13:18');
INSERT INTO `page_images` VALUES ('204', '405', 'fead7126a700bc7916d1d86f0a5231c8.jpg', '/images/posts/fead7126a700bc7916d1d86f0a5231c8.jpg', '0', '2017-05-31 03:13:18', '2017-05-31 03:13:18');
INSERT INTO `page_images` VALUES ('205', '405', '5f4a5f56979bf4da4811132bf68abd09.jpg', '/images/posts/5f4a5f56979bf4da4811132bf68abd09.jpg', '0', '2017-05-31 03:13:19', '2017-05-31 03:13:19');
INSERT INTO `page_images` VALUES ('206', '402', '98a582b20c0c1423b04405ec88540227.jpg', '/images/posts/98a582b20c0c1423b04405ec88540227.jpg', '0', '2017-05-31 03:30:06', '2017-05-31 03:30:06');
INSERT INTO `page_images` VALUES ('207', '402', '3af7744190a5517d09682cfd61efd387.jpg', '/images/posts/3af7744190a5517d09682cfd61efd387.jpg', '0', '2017-05-31 03:30:06', '2017-05-31 03:30:06');
INSERT INTO `page_images` VALUES ('208', '402', 'd6ed8dd2551249d662c54dc345345f23.jpg', '/images/posts/d6ed8dd2551249d662c54dc345345f23.jpg', '0', '2017-05-31 03:30:06', '2017-05-31 03:30:06');
INSERT INTO `page_images` VALUES ('209', '402', '1c9c365fe0341caea48b99c913574e55.jpg', '/images/posts/1c9c365fe0341caea48b99c913574e55.jpg', '0', '2017-05-31 03:30:06', '2017-05-31 03:30:06');
INSERT INTO `page_images` VALUES ('210', '403', '4bcba4ea9f94582509eefa8e5c425c84.jpg', '/images/posts/4bcba4ea9f94582509eefa8e5c425c84.jpg', '0', '2017-05-31 04:21:42', '2017-05-31 04:21:42');
INSERT INTO `page_images` VALUES ('211', '403', '7f3d32ecd85b5cb138de80117f491168.jpg', '/images/posts/7f3d32ecd85b5cb138de80117f491168.jpg', '0', '2017-05-31 04:21:42', '2017-05-31 04:21:42');
INSERT INTO `page_images` VALUES ('212', '403', '36f0cde25110880cf0a3c41713902b5e.jpg', '/images/posts/36f0cde25110880cf0a3c41713902b5e.jpg', '0', '2017-05-31 04:21:42', '2017-05-31 04:21:42');
INSERT INTO `page_images` VALUES ('213', '403', '261429471fc9e129549f803169cfd7d5.jpg', '/images/posts/261429471fc9e129549f803169cfd7d5.jpg', '0', '2017-05-31 04:21:42', '2017-05-31 04:21:42');
INSERT INTO `page_images` VALUES ('214', '407', '656568a1fefeb804bac6f3ea2f45d984.jpg', '/images/posts/656568a1fefeb804bac6f3ea2f45d984.jpg', '0', '2017-05-31 04:30:15', '2017-05-31 04:30:15');
INSERT INTO `page_images` VALUES ('215', '407', '705d042b4e128a7ebd6a53f8ddb92b80.jpg', '/images/posts/705d042b4e128a7ebd6a53f8ddb92b80.jpg', '0', '2017-05-31 04:30:15', '2017-05-31 04:30:15');
INSERT INTO `page_images` VALUES ('216', '407', 'c522a34a331bee7710bd5195829a5e49.jpg', '/images/posts/c522a34a331bee7710bd5195829a5e49.jpg', '0', '2017-05-31 04:30:15', '2017-05-31 04:30:15');
INSERT INTO `page_images` VALUES ('217', '407', '09bba7946e647f6b37daf76228e7c46d.jpg', '/images/posts/09bba7946e647f6b37daf76228e7c46d.jpg', '0', '2017-05-31 04:30:15', '2017-05-31 04:30:15');
INSERT INTO `page_images` VALUES ('218', '408', '072e7b454e71de6f3a17fcd06d86d408.jpg', '/images/posts/072e7b454e71de6f3a17fcd06d86d408.jpg', '0', '2017-05-31 04:30:50', '2017-05-31 04:30:50');
INSERT INTO `page_images` VALUES ('219', '408', 'd5648c426aaa05ed5455c672901b44cb.jpg', '/images/posts/d5648c426aaa05ed5455c672901b44cb.jpg', '0', '2017-05-31 04:30:50', '2017-05-31 04:30:50');
INSERT INTO `page_images` VALUES ('220', '408', '5c7e089c1ba1df0d347902ef5175f6ce.jpg', '/images/posts/5c7e089c1ba1df0d347902ef5175f6ce.jpg', '0', '2017-05-31 04:30:50', '2017-05-31 04:30:50');
INSERT INTO `page_images` VALUES ('221', '408', '2575545f7a21d8dbdbd6b4916aaad812.jpg', '/images/posts/2575545f7a21d8dbdbd6b4916aaad812.jpg', '0', '2017-05-31 04:30:50', '2017-05-31 04:30:50');
INSERT INTO `page_images` VALUES ('222', '409', '214c067ce951d46e8b3864a07b72411a.jpg', '/images/posts/214c067ce951d46e8b3864a07b72411a.jpg', '0', '2017-05-31 04:31:24', '2017-05-31 04:31:24');
INSERT INTO `page_images` VALUES ('223', '409', '6560824e871220bb52c381eccc472be8.jpg', '/images/posts/6560824e871220bb52c381eccc472be8.jpg', '0', '2017-05-31 04:31:24', '2017-05-31 04:31:24');
INSERT INTO `page_images` VALUES ('224', '409', 'ff863434e3b907b54aa94d92d7cffd05.jpg', '/images/posts/ff863434e3b907b54aa94d92d7cffd05.jpg', '0', '2017-05-31 04:31:24', '2017-05-31 04:31:24');
INSERT INTO `page_images` VALUES ('225', '409', '3bab74fa04c48c37c4675c60102c3399.jpg', '/images/posts/3bab74fa04c48c37c4675c60102c3399.jpg', '0', '2017-05-31 04:31:24', '2017-05-31 04:31:24');
INSERT INTO `page_images` VALUES ('226', '410', '6bff6a4b43359c74b81cdd618514b1ff.jpg', '/images/posts/6bff6a4b43359c74b81cdd618514b1ff.jpg', '0', '2017-05-31 09:29:29', '2017-05-31 09:29:29');
INSERT INTO `page_images` VALUES ('227', '410', '75f68f8a1224cc59de2bfe1c22bc824a.jpg', '/images/posts/75f68f8a1224cc59de2bfe1c22bc824a.jpg', '0', '2017-05-31 09:29:29', '2017-05-31 09:29:29');
INSERT INTO `page_images` VALUES ('228', '410', '5bef75622c1e82f72f77c031fb88d32f.jpg', '/images/posts/5bef75622c1e82f72f77c031fb88d32f.jpg', '0', '2017-05-31 09:29:29', '2017-05-31 09:29:29');
INSERT INTO `page_images` VALUES ('229', '410', '97c4e411c4781656466c88c03cce8d9c.jpg', '/images/posts/97c4e411c4781656466c88c03cce8d9c.jpg', '0', '2017-05-31 09:29:29', '2017-05-31 09:29:29');
INSERT INTO `page_images` VALUES ('230', '411', 'c92d6863848156cb42506e22906d9448.jpg', '/images/posts/c92d6863848156cb42506e22906d9448.jpg', '0', '2017-05-31 09:30:21', '2017-05-31 09:30:21');
INSERT INTO `page_images` VALUES ('231', '411', '62047ab47a46e609abc242acaa0b44e8.jpg', '/images/posts/62047ab47a46e609abc242acaa0b44e8.jpg', '0', '2017-05-31 09:30:21', '2017-05-31 09:30:21');
INSERT INTO `page_images` VALUES ('232', '411', '38f33adaf96bc01be34853992401bcdd.jpg', '/images/posts/38f33adaf96bc01be34853992401bcdd.jpg', '0', '2017-05-31 09:30:21', '2017-05-31 09:30:21');
INSERT INTO `page_images` VALUES ('233', '411', '85b82c51859723288beb152c58cc8433.jpg', '/images/posts/85b82c51859723288beb152c58cc8433.jpg', '0', '2017-05-31 09:30:21', '2017-05-31 09:30:21');
INSERT INTO `page_images` VALUES ('234', '414', '15b142373c1560886f35dfcb319de4ee.jpg', '/images/posts/15b142373c1560886f35dfcb319de4ee.jpg', '0', '2017-06-01 08:59:01', '2017-06-01 08:59:01');
INSERT INTO `page_images` VALUES ('235', '414', '4c8befb79396673b461a2a9895d54b81.jpg', '/images/posts/4c8befb79396673b461a2a9895d54b81.jpg', '0', '2017-06-01 08:59:01', '2017-06-01 08:59:01');
INSERT INTO `page_images` VALUES ('236', '414', '654cfbf98d04ae12588c1437ebaaafc1.jpg', '/images/posts/654cfbf98d04ae12588c1437ebaaafc1.jpg', '0', '2017-06-01 08:59:01', '2017-06-01 08:59:01');
INSERT INTO `page_images` VALUES ('237', '414', '71a0fae72f79e7f2505f4ebcdc420227.jpg', '/images/posts/71a0fae72f79e7f2505f4ebcdc420227.jpg', '0', '2017-06-01 08:59:01', '2017-06-01 08:59:01');
INSERT INTO `page_images` VALUES ('238', '415', '581da0c78e20c3f5f11da6187317f207.jpg', '/images/posts/581da0c78e20c3f5f11da6187317f207.jpg', '0', '2017-06-05 10:00:54', '2017-06-05 10:00:54');
INSERT INTO `page_images` VALUES ('239', '415', '20a2411d3eace47999953974593735e4.jpg', '/images/posts/20a2411d3eace47999953974593735e4.jpg', '0', '2017-06-05 10:00:54', '2017-06-05 10:00:54');
INSERT INTO `page_images` VALUES ('240', '416', '48702ac79eecf8823043925652cff035.jpg', '/images/posts/48702ac79eecf8823043925652cff035.jpg', '0', '2017-06-05 10:01:20', '2017-06-05 10:01:20');
INSERT INTO `page_images` VALUES ('241', '416', 'f65e46025ea694e4940bedba4f738e70.jpg', '/images/posts/f65e46025ea694e4940bedba4f738e70.jpg', '0', '2017-06-05 10:01:20', '2017-06-05 10:01:20');
INSERT INTO `page_images` VALUES ('242', '416', '92855aa34b118cce7464d89b732a80b4.jpg', '/images/posts/92855aa34b118cce7464d89b732a80b4.jpg', '0', '2017-06-05 10:01:20', '2017-06-05 10:01:20');
INSERT INTO `page_images` VALUES ('243', '417', '151e77cb0b92d9cb0aa02ad46da5a3bd.jpg', '/images/posts/151e77cb0b92d9cb0aa02ad46da5a3bd.jpg', '0', '2017-06-05 10:02:13', '2017-06-05 10:02:13');
INSERT INTO `page_images` VALUES ('244', '417', '0093569a5145cce40e54469c472bd6ee.jpg', '/images/posts/0093569a5145cce40e54469c472bd6ee.jpg', '0', '2017-06-05 10:02:13', '2017-06-05 10:02:13');
INSERT INTO `page_images` VALUES ('245', '417', 'f9a053ceb0f7c14ce8adca70277618f0.jpg', '/images/posts/f9a053ceb0f7c14ce8adca70277618f0.jpg', '0', '2017-06-05 10:02:13', '2017-06-05 10:02:13');
INSERT INTO `page_images` VALUES ('246', '417', '3447d73820f82c844dc0afa3432fa6a0.jpg', '/images/posts/3447d73820f82c844dc0afa3432fa6a0.jpg', '0', '2017-06-05 10:02:13', '2017-06-05 10:02:13');
INSERT INTO `page_images` VALUES ('247', '418', '557870442a51b57ffcbc4752dac36e08.jpg', '/images/posts/557870442a51b57ffcbc4752dac36e08.jpg', '0', '2017-06-05 10:23:38', '2017-06-05 10:23:38');
INSERT INTO `page_images` VALUES ('248', '418', 'cc504dd8df8b73a0fe5bc0b0e4caf003.jpg', '/images/posts/cc504dd8df8b73a0fe5bc0b0e4caf003.jpg', '0', '2017-06-05 10:23:38', '2017-06-05 10:23:38');
INSERT INTO `page_images` VALUES ('249', '418', '6d51f393ec48546c67e735d6ba527be3.jpg', '/images/posts/6d51f393ec48546c67e735d6ba527be3.jpg', '0', '2017-06-05 10:23:38', '2017-06-05 10:23:38');
INSERT INTO `page_images` VALUES ('250', '418', '42ec6b6abdedf903f2c844ff5cfa1920.jpg', '/images/posts/42ec6b6abdedf903f2c844ff5cfa1920.jpg', '0', '2017-06-05 10:23:38', '2017-06-05 10:23:38');
INSERT INTO `page_images` VALUES ('251', '419', 'c64e88b42d8034586a52d9e58dcf0430.jpg', '/images/posts/c64e88b42d8034586a52d9e58dcf0430.jpg', '0', '2017-06-05 10:25:27', '2017-06-05 10:25:27');
INSERT INTO `page_images` VALUES ('252', '419', '85ef3486ff98016382b792ff2d27ba69.jpg', '/images/posts/85ef3486ff98016382b792ff2d27ba69.jpg', '0', '2017-06-05 10:25:27', '2017-06-05 10:25:27');
INSERT INTO `page_images` VALUES ('253', '419', '8fb272d750fa55bcb17851d26faf4163.jpg', '/images/posts/8fb272d750fa55bcb17851d26faf4163.jpg', '0', '2017-06-05 10:25:27', '2017-06-05 10:25:27');
INSERT INTO `page_images` VALUES ('254', '420', '1b7f7c548aa73c40a830e48f3cf290d5.jpg', '/images/posts/1b7f7c548aa73c40a830e48f3cf290d5.jpg', '0', '2017-06-05 10:32:17', '2017-06-05 10:32:17');
INSERT INTO `page_images` VALUES ('255', '420', '7cfedfb204b2d0da8c18b0619ab2eb3d.jpg', '/images/posts/7cfedfb204b2d0da8c18b0619ab2eb3d.jpg', '0', '2017-06-05 10:32:17', '2017-06-05 10:32:17');
INSERT INTO `page_images` VALUES ('256', '420', 'd4153bf3f04b5446bb97c6cceccde88e.jpg', '/images/posts/d4153bf3f04b5446bb97c6cceccde88e.jpg', '0', '2017-06-05 10:32:17', '2017-06-05 10:32:17');
INSERT INTO `page_images` VALUES ('257', '420', '3d077b38c6923e25ff25d4de1ee8ea50.jpg', '/images/posts/3d077b38c6923e25ff25d4de1ee8ea50.jpg', '0', '2017-06-05 10:32:17', '2017-06-05 10:32:17');
INSERT INTO `page_images` VALUES ('258', '421', '1f7a96a4f32adaec7d971a1f4ee8f4dc.jpg', '/images/posts/1f7a96a4f32adaec7d971a1f4ee8f4dc.jpg', '0', '2017-06-05 10:34:03', '2017-06-05 10:34:03');
INSERT INTO `page_images` VALUES ('259', '421', '61b111d47145f11eb1789267e14ce9b8.jpg', '/images/posts/61b111d47145f11eb1789267e14ce9b8.jpg', '0', '2017-06-05 10:34:03', '2017-06-05 10:34:03');
INSERT INTO `page_images` VALUES ('260', '421', '5f1634cfd9f99339f1e7a2f2c7ca35b3.jpg', '/images/posts/5f1634cfd9f99339f1e7a2f2c7ca35b3.jpg', '0', '2017-06-05 10:34:03', '2017-06-05 10:34:03');
INSERT INTO `page_images` VALUES ('261', '421', 'f316e90aa5fdbf8ae2e046cf9950fe24.jpg', '/images/posts/f316e90aa5fdbf8ae2e046cf9950fe24.jpg', '0', '2017-06-05 10:34:03', '2017-06-05 10:34:03');
INSERT INTO `page_images` VALUES ('262', '422', 'b2956a6ec3aa68aebedb4d2a4a29a7fd.jpg', '/images/posts/b2956a6ec3aa68aebedb4d2a4a29a7fd.jpg', '0', '2017-06-05 10:35:08', '2017-06-05 10:35:08');
INSERT INTO `page_images` VALUES ('263', '422', '9f749154fae1eff635fd78a91a077bea.jpg', '/images/posts/9f749154fae1eff635fd78a91a077bea.jpg', '0', '2017-06-05 10:35:08', '2017-06-05 10:35:08');
INSERT INTO `page_images` VALUES ('264', '422', '3ff8f75fa40094053e9820b2d6d34306.jpg', '/images/posts/3ff8f75fa40094053e9820b2d6d34306.jpg', '0', '2017-06-05 10:35:08', '2017-06-05 10:35:08');
INSERT INTO `page_images` VALUES ('265', '422', '543cb964f67e6c6afcb4aa2e1a90a181.jpg', '/images/posts/543cb964f67e6c6afcb4aa2e1a90a181.jpg', '0', '2017-06-05 10:35:08', '2017-06-05 10:35:08');
INSERT INTO `page_images` VALUES ('266', '423', 'e411aa89140c98acbedb4d757a8648f5.jpg', '/images/posts/e411aa89140c98acbedb4d757a8648f5.jpg', '0', '2017-06-05 10:36:03', '2017-06-05 10:36:03');
INSERT INTO `page_images` VALUES ('267', '423', '15241b40cf8c552be078d04323facfaf.jpg', '/images/posts/15241b40cf8c552be078d04323facfaf.jpg', '0', '2017-06-05 10:36:03', '2017-06-05 10:36:03');
INSERT INTO `page_images` VALUES ('268', '423', 'b1a597254dce6d8d02cbce8b1b3533ef.jpg', '/images/posts/b1a597254dce6d8d02cbce8b1b3533ef.jpg', '0', '2017-06-05 10:36:03', '2017-06-05 10:36:03');
INSERT INTO `page_images` VALUES ('269', '423', '14cb44d951035928442ee4898554fc4e.jpg', '/images/posts/14cb44d951035928442ee4898554fc4e.jpg', '0', '2017-06-05 10:36:03', '2017-06-05 10:36:03');
INSERT INTO `page_images` VALUES ('270', '424', '6d60a6cf6ee537361e86835eceda2d27.jpg', '/images/posts/6d60a6cf6ee537361e86835eceda2d27.jpg', '0', '2017-06-05 10:37:04', '2017-06-05 10:37:04');
INSERT INTO `page_images` VALUES ('271', '424', '658bfcc91d3b8bdc0bd32a46609f0498.jpg', '/images/posts/658bfcc91d3b8bdc0bd32a46609f0498.jpg', '0', '2017-06-05 10:37:04', '2017-06-05 10:37:04');
INSERT INTO `page_images` VALUES ('272', '424', 'a782567cef1cb3f25a41601098a23cfe.jpg', '/images/posts/a782567cef1cb3f25a41601098a23cfe.jpg', '0', '2017-06-05 10:37:04', '2017-06-05 10:37:04');
INSERT INTO `page_images` VALUES ('273', '424', '3e9f07cef7410cb7c1ac74f4802488a5.jpg', '/images/posts/3e9f07cef7410cb7c1ac74f4802488a5.jpg', '0', '2017-06-05 10:37:04', '2017-06-05 10:37:04');
INSERT INTO `page_images` VALUES ('274', '425', 'd6817369d459e3645a5101518e307027.jpg', '/images/posts/d6817369d459e3645a5101518e307027.jpg', '0', '2017-06-05 10:37:49', '2017-06-05 10:37:49');
INSERT INTO `page_images` VALUES ('275', '425', 'ce6a29ff4de06c62dffc9e46a0a2e676.jpg', '/images/posts/ce6a29ff4de06c62dffc9e46a0a2e676.jpg', '0', '2017-06-05 10:37:49', '2017-06-05 10:37:49');
INSERT INTO `page_images` VALUES ('276', '425', '802d973fec341d7603b777971044c3ba.jpg', '/images/posts/802d973fec341d7603b777971044c3ba.jpg', '0', '2017-06-05 10:37:49', '2017-06-05 10:37:49');
INSERT INTO `page_images` VALUES ('277', '426', 'cfe85e464b21352bc8c1a1ab9ac60d67.jpg', '/images/posts/cfe85e464b21352bc8c1a1ab9ac60d67.jpg', '0', '2017-06-05 10:38:50', '2017-06-05 10:38:50');
INSERT INTO `page_images` VALUES ('278', '426', '9fb7ec6fbd4a9d4d47729c995cca2dda.jpg', '/images/posts/9fb7ec6fbd4a9d4d47729c995cca2dda.jpg', '0', '2017-06-05 10:38:50', '2017-06-05 10:38:50');
INSERT INTO `page_images` VALUES ('279', '426', 'e23889eb56feb1259fea8b1ebea78bd1.jpg', '/images/posts/e23889eb56feb1259fea8b1ebea78bd1.jpg', '0', '2017-06-05 10:38:50', '2017-06-05 10:38:50');
INSERT INTO `page_images` VALUES ('280', '426', '92c4765e22faef75338beb03560be0db.jpg', '/images/posts/92c4765e22faef75338beb03560be0db.jpg', '0', '2017-06-05 10:38:50', '2017-06-05 10:38:50');
INSERT INTO `page_images` VALUES ('281', '427', 'f4c30919c6ab39687626704d6cf338b3.jpg', '/images/posts/f4c30919c6ab39687626704d6cf338b3.jpg', '0', '2017-06-05 10:39:37', '2017-06-05 10:39:37');
INSERT INTO `page_images` VALUES ('282', '427', '1db1d89cfcaafd01b227f3938078a0d2.jpg', '/images/posts/1db1d89cfcaafd01b227f3938078a0d2.jpg', '0', '2017-06-05 10:39:37', '2017-06-05 10:39:37');
INSERT INTO `page_images` VALUES ('283', '427', 'ddee157452a8ff40d6939b632da29c11.jpg', '/images/posts/ddee157452a8ff40d6939b632da29c11.jpg', '0', '2017-06-05 10:39:37', '2017-06-05 10:39:37');
INSERT INTO `page_images` VALUES ('284', '427', '9e81e454d531e10849533376a71f62ce.jpg', '/images/posts/9e81e454d531e10849533376a71f62ce.jpg', '0', '2017-06-05 10:39:37', '2017-06-05 10:39:37');
INSERT INTO `page_images` VALUES ('285', '428', '7f838860f4dbdac68767f4d9385fc8fe.jpg', '/images/posts/7f838860f4dbdac68767f4d9385fc8fe.jpg', '0', '2017-06-05 10:40:27', '2017-06-05 10:40:27');
INSERT INTO `page_images` VALUES ('286', '428', '517dffb01c45a9c728c706275d77abb4.jpg', '/images/posts/517dffb01c45a9c728c706275d77abb4.jpg', '0', '2017-06-05 10:40:27', '2017-06-05 10:40:27');
INSERT INTO `page_images` VALUES ('287', '428', 'ab47735c890d6d7681f186106b64d741.jpg', '/images/posts/ab47735c890d6d7681f186106b64d741.jpg', '0', '2017-06-05 10:40:27', '2017-06-05 10:40:27');
INSERT INTO `page_images` VALUES ('288', '428', '1fc27791fbd9b221de78ec33db11a13c.jpg', '/images/posts/1fc27791fbd9b221de78ec33db11a13c.jpg', '0', '2017-06-05 10:40:27', '2017-06-05 10:40:27');
INSERT INTO `page_images` VALUES ('289', '429', '28a08af83ba014d5344846df7d25a8a9.jpg', '/images/posts/28a08af83ba014d5344846df7d25a8a9.jpg', '0', '2017-06-05 10:43:55', '2017-06-05 10:43:55');
INSERT INTO `page_images` VALUES ('290', '429', '0751d1c1daafdd7f66f2bc29ce923e5b.jpg', '/images/posts/0751d1c1daafdd7f66f2bc29ce923e5b.jpg', '0', '2017-06-05 10:43:55', '2017-06-05 10:43:55');
INSERT INTO `page_images` VALUES ('291', '429', 'd64df8418218a92fc78afffe396c8d23.jpg', '/images/posts/d64df8418218a92fc78afffe396c8d23.jpg', '0', '2017-06-05 10:43:55', '2017-06-05 10:43:55');
INSERT INTO `page_images` VALUES ('292', '429', '7a38015dbc441f7698b7d8f71e2e73fa.jpg', '/images/posts/7a38015dbc441f7698b7d8f71e2e73fa.jpg', '0', '2017-06-05 10:43:55', '2017-06-05 10:43:55');
INSERT INTO `page_images` VALUES ('293', '430', '3855155e64ff6235900175686f9c2718.jpg', '/images/posts/3855155e64ff6235900175686f9c2718.jpg', '0', '2017-06-16 09:11:17', '2017-06-16 09:11:17');
INSERT INTO `page_images` VALUES ('294', '430', 'aa2bac41e76833a6d623f3fd3132b414.jpg', '/images/posts/aa2bac41e76833a6d623f3fd3132b414.jpg', '0', '2017-06-16 09:11:17', '2017-06-16 09:11:17');
INSERT INTO `page_images` VALUES ('295', '430', '3f8bbbd7df05b6f04605f1cafc9912ff.jpg', '/images/posts/3f8bbbd7df05b6f04605f1cafc9912ff.jpg', '0', '2017-06-16 09:11:17', '2017-06-16 09:11:17');
INSERT INTO `page_images` VALUES ('296', '431', '218ca87f690895a3b6f0c881732becab.jpg', '/images/posts/218ca87f690895a3b6f0c881732becab.jpg', '0', '2017-06-16 09:15:32', '2017-06-16 09:15:32');
INSERT INTO `page_images` VALUES ('297', '431', 'f9630647359244f2e1727ef6a41bb7e9.jpg', '/images/posts/f9630647359244f2e1727ef6a41bb7e9.jpg', '0', '2017-06-16 09:15:32', '2017-06-16 09:15:32');
INSERT INTO `page_images` VALUES ('298', '431', '13b09d6f1c6ee74edd5ff6ee698ab99c.jpg', '/images/posts/13b09d6f1c6ee74edd5ff6ee698ab99c.jpg', '0', '2017-06-16 09:15:32', '2017-06-16 09:15:32');
INSERT INTO `page_images` VALUES ('299', '431', '846549cc68cafe8536cce68eef88b396.jpg', '/images/posts/846549cc68cafe8536cce68eef88b396.jpg', '0', '2017-06-16 09:15:32', '2017-06-16 09:15:32');
INSERT INTO `page_images` VALUES ('300', '432', '62c1473c5211a474c86ff61a7e20d087.jpg', '/images/posts/62c1473c5211a474c86ff61a7e20d087.jpg', '0', '2017-06-16 09:16:49', '2017-06-16 09:16:49');
INSERT INTO `page_images` VALUES ('301', '432', 'd93bcb77380ca6c43b68cffb0077d328.jpg', '/images/posts/d93bcb77380ca6c43b68cffb0077d328.jpg', '0', '2017-06-16 09:16:49', '2017-06-16 09:16:49');
INSERT INTO `page_images` VALUES ('302', '432', 'ee49e75b80a5c5a2dcc375dd37bc55fe.jpg', '/images/posts/ee49e75b80a5c5a2dcc375dd37bc55fe.jpg', '0', '2017-06-16 09:16:49', '2017-06-16 09:16:49');
INSERT INTO `page_images` VALUES ('303', '432', '626366eec94ab8f064a1f4dbb561e767.jpg', '/images/posts/626366eec94ab8f064a1f4dbb561e767.jpg', '0', '2017-06-16 09:16:49', '2017-06-16 09:16:49');
INSERT INTO `page_images` VALUES ('304', '433', 'f6178f1bbcdd16b33363c6758e57f050.jpg', '/images/posts/f6178f1bbcdd16b33363c6758e57f050.jpg', '0', '2017-06-16 09:18:01', '2017-06-16 09:18:01');
INSERT INTO `page_images` VALUES ('305', '433', 'cbcd3adefe66672f8f36a7b62c34c87f.jpg', '/images/posts/cbcd3adefe66672f8f36a7b62c34c87f.jpg', '0', '2017-06-16 09:18:01', '2017-06-16 09:18:01');
INSERT INTO `page_images` VALUES ('306', '433', '4257f80ca91575a044b19bf815c8f448.jpg', '/images/posts/4257f80ca91575a044b19bf815c8f448.jpg', '0', '2017-06-16 09:18:01', '2017-06-16 09:18:01');
INSERT INTO `page_images` VALUES ('307', '433', '4470286978c2babb40f459539d2ce257.jpg', '/images/posts/4470286978c2babb40f459539d2ce257.jpg', '0', '2017-06-16 09:18:01', '2017-06-16 09:18:01');
INSERT INTO `page_images` VALUES ('308', '434', '64ee7e17d15c996d1e0b371dfad772a8.jpg', '/images/posts/64ee7e17d15c996d1e0b371dfad772a8.jpg', '0', '2017-06-16 09:18:49', '2017-06-16 09:18:49');
INSERT INTO `page_images` VALUES ('309', '434', 'f4a773395960e35f599e98c06e19614b.jpg', '/images/posts/f4a773395960e35f599e98c06e19614b.jpg', '0', '2017-06-16 09:18:49', '2017-06-16 09:18:49');
INSERT INTO `page_images` VALUES ('310', '434', '8cb38dec7093885170cf28772e925df5.jpg', '/images/posts/8cb38dec7093885170cf28772e925df5.jpg', '0', '2017-06-16 09:18:49', '2017-06-16 09:18:49');
INSERT INTO `page_images` VALUES ('311', '434', '4635af4291a00e0b1cb156d0f01a8939.jpg', '/images/posts/4635af4291a00e0b1cb156d0f01a8939.jpg', '0', '2017-06-16 09:18:49', '2017-06-16 09:18:49');
INSERT INTO `page_images` VALUES ('312', '435', '7dc698d7ab133b4d01fa7cd3948a0b8b.jpg', '/images/posts/7dc698d7ab133b4d01fa7cd3948a0b8b.jpg', '0', '2017-06-16 09:34:12', '2017-06-16 09:34:12');
INSERT INTO `page_images` VALUES ('313', '435', 'ecbae74596eba84bc298ff767e927dd2.jpg', '/images/posts/ecbae74596eba84bc298ff767e927dd2.jpg', '0', '2017-06-16 09:34:12', '2017-06-16 09:34:12');
INSERT INTO `page_images` VALUES ('314', '435', 'f8238acdda1e798cd926f0ea24f6ada2.jpg', '/images/posts/f8238acdda1e798cd926f0ea24f6ada2.jpg', '0', '2017-06-16 09:34:12', '2017-06-16 09:34:12');
INSERT INTO `page_images` VALUES ('315', '435', '51b54ed797c8c6e611a5b9b773212721.jpg', '/images/posts/51b54ed797c8c6e611a5b9b773212721.jpg', '0', '2017-06-16 09:34:12', '2017-06-16 09:34:12');
INSERT INTO `page_images` VALUES ('316', '436', '7474659af995aa87956ebb5913051284.jpg', '/images/posts/7474659af995aa87956ebb5913051284.jpg', '0', '2017-06-16 09:40:43', '2017-06-16 09:40:43');
INSERT INTO `page_images` VALUES ('317', '436', 'ed382131ba3b234358017f1d5e6652df.jpg', '/images/posts/ed382131ba3b234358017f1d5e6652df.jpg', '0', '2017-06-16 09:40:43', '2017-06-16 09:40:43');
INSERT INTO `page_images` VALUES ('318', '436', '2bac5d04778ede976f832ddeda8f15a7.jpg', '/images/posts/2bac5d04778ede976f832ddeda8f15a7.jpg', '0', '2017-06-16 09:40:43', '2017-06-16 09:40:43');
INSERT INTO `page_images` VALUES ('319', '436', 'c398212cc80e29f2575de01bb1c97e68.jpg', '/images/posts/c398212cc80e29f2575de01bb1c97e68.jpg', '0', '2017-06-16 09:40:43', '2017-06-16 09:40:43');
INSERT INTO `page_images` VALUES ('320', '437', '7d028e2c048e8e76218c57421a511164.jpg', '/images/posts/7d028e2c048e8e76218c57421a511164.jpg', '0', '2017-06-16 09:41:31', '2017-06-16 09:41:31');
INSERT INTO `page_images` VALUES ('321', '437', '0b5aa43184cd94b9c19b06af57395e91.jpg', '/images/posts/0b5aa43184cd94b9c19b06af57395e91.jpg', '0', '2017-06-16 09:41:31', '2017-06-16 09:41:31');
INSERT INTO `page_images` VALUES ('322', '437', '1dadf30b0ed2ef6d8a84c3dd36cf312a.jpg', '/images/posts/1dadf30b0ed2ef6d8a84c3dd36cf312a.jpg', '0', '2017-06-16 09:41:31', '2017-06-16 09:41:31');
INSERT INTO `page_images` VALUES ('323', '437', 'c39cbb31f89e8ab6ed549788dda17f61.jpg', '/images/posts/c39cbb31f89e8ab6ed549788dda17f61.jpg', '0', '2017-06-16 09:41:31', '2017-06-16 09:41:31');
INSERT INTO `page_images` VALUES ('324', '438', 'ad1a8d34020add162adb915786b764eb.jpg', '/images/posts/ad1a8d34020add162adb915786b764eb.jpg', '0', '2017-06-16 09:43:03', '2017-06-16 09:43:03');
INSERT INTO `page_images` VALUES ('325', '438', '8ed04a6fa673a3beed0b7d7be24bc2ba.jpg', '/images/posts/8ed04a6fa673a3beed0b7d7be24bc2ba.jpg', '0', '2017-06-16 09:43:03', '2017-06-16 09:43:03');
INSERT INTO `page_images` VALUES ('326', '438', '6d991d8fa8e3c426960ad059eb0b2274.jpg', '/images/posts/6d991d8fa8e3c426960ad059eb0b2274.jpg', '0', '2017-06-16 09:43:03', '2017-06-16 09:43:03');
INSERT INTO `page_images` VALUES ('327', '438', '805f83b6dd44186cda2b0a52bba840e0.jpg', '/images/posts/805f83b6dd44186cda2b0a52bba840e0.jpg', '0', '2017-06-16 09:43:03', '2017-06-16 09:43:03');
INSERT INTO `page_images` VALUES ('328', '439', '1a4ca947ba50db31d0f9ee5eb8d2d353.jpg', '/images/posts/1a4ca947ba50db31d0f9ee5eb8d2d353.jpg', '0', '2017-06-16 09:43:59', '2017-06-16 09:43:59');
INSERT INTO `page_images` VALUES ('329', '439', '35d03c8d58ecf693fbe18e6cdb1a7681.jpg', '/images/posts/35d03c8d58ecf693fbe18e6cdb1a7681.jpg', '0', '2017-06-16 09:43:59', '2017-06-16 09:43:59');
INSERT INTO `page_images` VALUES ('330', '439', '3074eff2275c7cf02531c467d36cb890.jpg', '/images/posts/3074eff2275c7cf02531c467d36cb890.jpg', '0', '2017-06-16 09:43:59', '2017-06-16 09:43:59');
INSERT INTO `page_images` VALUES ('331', '439', '87fac8d700803cdde75fadbbd0e9ad3f.jpg', '/images/posts/87fac8d700803cdde75fadbbd0e9ad3f.jpg', '0', '2017-06-16 09:43:59', '2017-06-16 09:43:59');
INSERT INTO `page_images` VALUES ('332', '440', 'abb5f6286b988cbc311f2fc40ab1f2f2.jpg', '/images/posts/abb5f6286b988cbc311f2fc40ab1f2f2.jpg', '0', '2017-06-16 09:44:48', '2017-06-16 09:44:48');
INSERT INTO `page_images` VALUES ('333', '440', '6d76951cb72226667ed7563d12ad03e7.jpg', '/images/posts/6d76951cb72226667ed7563d12ad03e7.jpg', '0', '2017-06-16 09:44:48', '2017-06-16 09:44:48');
INSERT INTO `page_images` VALUES ('334', '440', '7d1541c1df04771a3480469c77e509ed.jpg', '/images/posts/7d1541c1df04771a3480469c77e509ed.jpg', '0', '2017-06-16 09:44:48', '2017-06-16 09:44:48');
INSERT INTO `page_images` VALUES ('335', '440', '78177f833da17dca8e50e184cbe6a8b9.jpg', '/images/posts/78177f833da17dca8e50e184cbe6a8b9.jpg', '0', '2017-06-16 09:44:48', '2017-06-16 09:44:48');
INSERT INTO `page_images` VALUES ('336', '441', '9a6ccf0cbbdeb42a378168e993ee6851.jpg', '/images/posts/9a6ccf0cbbdeb42a378168e993ee6851.jpg', '0', '2017-06-16 09:46:06', '2017-06-16 09:46:06');
INSERT INTO `page_images` VALUES ('337', '441', '4ae8a5be6e597367eeac0987aa6ae00b.jpg', '/images/posts/4ae8a5be6e597367eeac0987aa6ae00b.jpg', '0', '2017-06-16 09:46:06', '2017-06-16 09:46:06');
INSERT INTO `page_images` VALUES ('338', '441', 'ac057026334d811c1d2e544b98363fe2.jpg', '/images/posts/ac057026334d811c1d2e544b98363fe2.jpg', '0', '2017-06-16 09:46:06', '2017-06-16 09:46:06');
INSERT INTO `page_images` VALUES ('339', '441', '1dbfee105d23e60a6819564b71de19d2.jpg', '/images/posts/1dbfee105d23e60a6819564b71de19d2.jpg', '0', '2017-06-16 09:46:06', '2017-06-16 09:46:06');
INSERT INTO `page_images` VALUES ('340', '449', '5f484e6dee02d2cb8c71d30c4d0dfe21.png', '/images/posts/5f484e6dee02d2cb8c71d30c4d0dfe21.png', '0', '2017-07-07 03:45:19', '2017-07-07 03:45:19');
INSERT INTO `page_images` VALUES ('341', '449', 'c4b07b0f2e6fea4413a7624daa34ef2f.png', '/images/posts/c4b07b0f2e6fea4413a7624daa34ef2f.png', '0', '2017-07-07 03:45:19', '2017-07-07 03:45:19');
INSERT INTO `page_images` VALUES ('342', '449', '3baa89676097f918f71b7f71030143e0.png', '/images/posts/3baa89676097f918f71b7f71030143e0.png', '0', '2017-07-07 03:45:19', '2017-07-07 03:45:19');
INSERT INTO `page_images` VALUES ('343', '450', 'd2d458e766c5e74044fd3d4a6513f5b7.png', '/images/posts/d2d458e766c5e74044fd3d4a6513f5b7.png', '0', '2017-07-07 03:46:28', '2017-07-07 03:46:28');
INSERT INTO `page_images` VALUES ('344', '450', '0bcf50bf5a17c485ee6d44b52617d0f1.png', '/images/posts/0bcf50bf5a17c485ee6d44b52617d0f1.png', '0', '2017-07-07 03:46:28', '2017-07-07 03:46:28');
INSERT INTO `page_images` VALUES ('345', '450', '30127a1a529016a1190b616ce7dd1961.png', '/images/posts/30127a1a529016a1190b616ce7dd1961.png', '0', '2017-07-07 03:46:28', '2017-07-07 03:46:28');
INSERT INTO `page_images` VALUES ('346', '451', 'c2ef5935a4e7a79c10cea670091bb26a.png', '/images/posts/c2ef5935a4e7a79c10cea670091bb26a.png', '0', '2017-07-07 04:14:02', '2017-07-07 04:14:02');
INSERT INTO `page_images` VALUES ('347', '451', '892f19e6e8edf864ca9e560a100b1a54.png', '/images/posts/892f19e6e8edf864ca9e560a100b1a54.png', '0', '2017-07-07 04:14:02', '2017-07-07 04:14:02');
INSERT INTO `page_images` VALUES ('348', '451', '1d072752ba7a642f1208d8dffdb1bfa4.png', '/images/posts/1d072752ba7a642f1208d8dffdb1bfa4.png', '0', '2017-07-07 04:14:02', '2017-07-07 04:14:02');
INSERT INTO `page_images` VALUES ('349', '452', 'e504c700b1b9a1464a23b1f4d338cc81.png', '/images/posts/e504c700b1b9a1464a23b1f4d338cc81.png', '0', '2017-07-07 04:14:47', '2017-07-07 04:14:47');
INSERT INTO `page_images` VALUES ('350', '452', 'f30b8cf051f50305d5317d21fa46ada6.png', '/images/posts/f30b8cf051f50305d5317d21fa46ada6.png', '0', '2017-07-07 04:14:47', '2017-07-07 04:14:47');
INSERT INTO `page_images` VALUES ('351', '452', '345cb7b4a9eb27aab7310105406bad7d.png', '/images/posts/345cb7b4a9eb27aab7310105406bad7d.png', '0', '2017-07-07 04:14:47', '2017-07-07 04:14:47');
INSERT INTO `page_images` VALUES ('352', '453', 'e07e8e0f6749149365efadf042f59527.png', '/images/posts/e07e8e0f6749149365efadf042f59527.png', '0', '2017-07-07 04:15:33', '2017-07-07 04:15:33');
INSERT INTO `page_images` VALUES ('353', '453', 'bf68d4114ba88ceeb66bc68d2e3db90c.png', '/images/posts/bf68d4114ba88ceeb66bc68d2e3db90c.png', '0', '2017-07-07 04:15:33', '2017-07-07 04:15:33');
INSERT INTO `page_images` VALUES ('354', '453', '60cffe2d3a832065cd8d939c5207bf2e.png', '/images/posts/60cffe2d3a832065cd8d939c5207bf2e.png', '0', '2017-07-07 04:15:33', '2017-07-07 04:15:33');
INSERT INTO `page_images` VALUES ('355', '454', '6886529ad42eef0b5c784de9989f7663.png', '/images/posts/6886529ad42eef0b5c784de9989f7663.png', '0', '2017-07-07 04:16:16', '2017-07-07 04:16:16');
INSERT INTO `page_images` VALUES ('356', '454', 'bd758b93f487388fa6d28c70ac473616.png', '/images/posts/bd758b93f487388fa6d28c70ac473616.png', '0', '2017-07-07 04:16:16', '2017-07-07 04:16:16');
INSERT INTO `page_images` VALUES ('357', '454', '3fad6c873ce58f9e0a5249ac2bc008cd.png', '/images/posts/3fad6c873ce58f9e0a5249ac2bc008cd.png', '0', '2017-07-07 04:16:16', '2017-07-07 04:16:16');
INSERT INTO `page_images` VALUES ('358', '455', 'fa8f2bd6863abba7247b94601f0d4f54.png', '/images/posts/fa8f2bd6863abba7247b94601f0d4f54.png', '0', '2017-07-07 04:17:09', '2017-07-07 04:17:09');
INSERT INTO `page_images` VALUES ('359', '455', '1f381e27c845db1b9f0530204b142af2.png', '/images/posts/1f381e27c845db1b9f0530204b142af2.png', '0', '2017-07-07 04:17:09', '2017-07-07 04:17:09');
INSERT INTO `page_images` VALUES ('360', '455', 'edb52ef19e56a71e5a09861c2cde2a29.png', '/images/posts/edb52ef19e56a71e5a09861c2cde2a29.png', '0', '2017-07-07 04:17:09', '2017-07-07 04:17:09');
INSERT INTO `page_images` VALUES ('361', '456', '3fc5c81e9eb5d6e800f1e3e77cfa69a6.png', '/images/posts/3fc5c81e9eb5d6e800f1e3e77cfa69a6.png', '0', '2017-07-07 04:17:48', '2017-07-07 04:17:48');
INSERT INTO `page_images` VALUES ('362', '456', '916bdf771a73ebd3bd4cecba3dd5b892.png', '/images/posts/916bdf771a73ebd3bd4cecba3dd5b892.png', '0', '2017-07-07 04:17:48', '2017-07-07 04:17:48');
INSERT INTO `page_images` VALUES ('363', '456', 'aca6d484592dd006553dbd6f769f9062.png', '/images/posts/aca6d484592dd006553dbd6f769f9062.png', '0', '2017-07-07 04:17:48', '2017-07-07 04:17:48');
INSERT INTO `page_images` VALUES ('364', '457', 'a61d9e8d90ee652161bda26f1fd273ac.png', '/images/posts/a61d9e8d90ee652161bda26f1fd273ac.png', '0', '2017-07-07 04:18:27', '2017-07-07 04:18:27');
INSERT INTO `page_images` VALUES ('365', '457', '91dc2cf1d899edbfc113f685bf250f51.png', '/images/posts/91dc2cf1d899edbfc113f685bf250f51.png', '0', '2017-07-07 04:18:27', '2017-07-07 04:18:27');
INSERT INTO `page_images` VALUES ('366', '457', 'e8ee624a16d90bedf7d01e1453925d85.png', '/images/posts/e8ee624a16d90bedf7d01e1453925d85.png', '0', '2017-07-07 04:18:27', '2017-07-07 04:18:27');
INSERT INTO `page_images` VALUES ('367', '458', 'c78312511adea62d67c0c20d71e01922.png', '/images/posts/c78312511adea62d67c0c20d71e01922.png', '0', '2017-07-07 04:19:10', '2017-07-07 04:19:10');
INSERT INTO `page_images` VALUES ('368', '458', '944b23708d62095a120a8d540fcf9125.png', '/images/posts/944b23708d62095a120a8d540fcf9125.png', '0', '2017-07-07 04:19:10', '2017-07-07 04:19:10');
INSERT INTO `page_images` VALUES ('369', '458', '126950f7d7fc7ddb40a548e6e5668f07.png', '/images/posts/126950f7d7fc7ddb40a548e6e5668f07.png', '0', '2017-07-07 04:19:10', '2017-07-07 04:19:10');
INSERT INTO `page_images` VALUES ('370', '469', '03cf17aa9adcaf1e364b6fd33c4e5417.png', '/images/posts/03cf17aa9adcaf1e364b6fd33c4e5417.png', '0', '2017-07-14 01:32:49', '2017-07-14 01:32:49');
INSERT INTO `page_images` VALUES ('371', '469', '6b21198ae78d7f010ff2f5f26b4ef30e.png', '/images/posts/6b21198ae78d7f010ff2f5f26b4ef30e.png', '0', '2017-07-14 01:32:49', '2017-07-14 01:32:49');
INSERT INTO `page_images` VALUES ('372', '469', '330718ddb727bf6b8eb4a96196cbf053.png', '/images/posts/330718ddb727bf6b8eb4a96196cbf053.png', '0', '2017-07-14 01:32:49', '2017-07-14 01:32:49');
INSERT INTO `page_images` VALUES ('373', '469', '60d681a0cfe0334b27c4eee2881a7f2f.png', '/images/posts/60d681a0cfe0334b27c4eee2881a7f2f.png', '0', '2017-07-14 01:32:49', '2017-07-14 01:32:49');
INSERT INTO `page_images` VALUES ('374', '490', 'd5f27677a992790c7c1eb08a7b0ce2b1.png', '/images/posts/d5f27677a992790c7c1eb08a7b0ce2b1.png', '0', '2017-07-24 01:12:24', '2017-07-24 01:12:24');
INSERT INTO `page_images` VALUES ('375', '490', '412acfcf21bb5f68c7d99a0907113360.png', '/images/posts/412acfcf21bb5f68c7d99a0907113360.png', '0', '2017-07-24 01:12:24', '2017-07-24 01:12:24');
INSERT INTO `page_images` VALUES ('376', '490', '9dd1f62161c558743b38d574c0fa60e6.png', '/images/posts/9dd1f62161c558743b38d574c0fa60e6.png', '0', '2017-07-24 01:12:24', '2017-07-24 01:12:24');
INSERT INTO `page_images` VALUES ('377', '490', 'c16b9f18ce850a5c3b084cd01c593664.png', '/images/posts/c16b9f18ce850a5c3b084cd01c593664.png', '0', '2017-07-24 01:12:24', '2017-07-24 01:12:24');
INSERT INTO `page_images` VALUES ('378', '496', 'e98b85bfaf7af24a66a8857094cbe124.png', '/images/posts/e98b85bfaf7af24a66a8857094cbe124.png', '0', '2017-07-24 09:04:49', '2017-07-24 09:04:49');
INSERT INTO `page_images` VALUES ('379', '496', 'a6cc50a994c6ebf092b9055586efb0e8.png', '/images/posts/a6cc50a994c6ebf092b9055586efb0e8.png', '0', '2017-07-24 09:04:49', '2017-07-24 09:04:49');
INSERT INTO `page_images` VALUES ('380', '496', '07f31ca851e5a8ee03d34ed8bade34e7.png', '/images/posts/07f31ca851e5a8ee03d34ed8bade34e7.png', '0', '2017-07-24 09:04:49', '2017-07-24 09:04:49');
INSERT INTO `page_images` VALUES ('381', '496', 'd5c71a86e83acb05396c65bfc44525ce.png', '/images/posts/d5c71a86e83acb05396c65bfc44525ce.png', '0', '2017-07-24 09:04:49', '2017-07-24 09:04:49');
INSERT INTO `page_images` VALUES ('382', '458', 'fa4c2d36b572416e6e2de829ba0f6878.jpg', '/images/posts/fa4c2d36b572416e6e2de829ba0f6878.jpg', '0', '2017-08-16 08:19:07', '2017-08-16 08:19:07');
INSERT INTO `page_images` VALUES ('383', '501', '219d7dacab1a9532bc2eb553f37e8831.jpg', '/images/posts/219d7dacab1a9532bc2eb553f37e8831.jpg', '0', '2017-08-16 09:05:02', '2017-08-16 09:05:02');
INSERT INTO `page_images` VALUES ('384', '501', '117c8361f21d573ea3d62fa7e541342d.jpg', '/images/posts/117c8361f21d573ea3d62fa7e541342d.jpg', '0', '2017-08-16 09:05:02', '2017-08-16 09:05:02');
INSERT INTO `page_images` VALUES ('385', '501', '4b0513d0dc2ded104ac022dcf7be5fd6.PNG', '/images/posts/4b0513d0dc2ded104ac022dcf7be5fd6.PNG', '0', '2017-08-16 09:05:02', '2017-08-16 09:05:02');
INSERT INTO `page_images` VALUES ('386', '502', '89d696b6d75ad73dde3533ccf42385b3.jpg', '/images/posts/89d696b6d75ad73dde3533ccf42385b3.jpg', '0', '2017-08-16 09:14:42', '2017-08-16 09:14:42');
INSERT INTO `page_images` VALUES ('387', '502', 'f08f3b97b6e73e554e24f63e331edd7f.PNG', '/images/posts/f08f3b97b6e73e554e24f63e331edd7f.PNG', '0', '2017-08-16 09:14:42', '2017-08-16 09:14:42');
INSERT INTO `page_images` VALUES ('388', '503', '0901a3dedd1f43853a377420e81544f1.jpg', '/images/posts/0901a3dedd1f43853a377420e81544f1.jpg', '0', '2017-08-16 09:16:23', '2017-08-16 09:16:23');
INSERT INTO `page_images` VALUES ('389', '503', 'bb6cc508b85caf6c99907e33db5d0190.PNG', '/images/posts/bb6cc508b85caf6c99907e33db5d0190.PNG', '0', '2017-08-16 09:16:23', '2017-08-16 09:16:23');
INSERT INTO `page_images` VALUES ('390', '504', '9e0e95be4686ac588daaee1d626e081a.jpg', '/images/posts/9e0e95be4686ac588daaee1d626e081a.jpg', '0', '2017-08-16 09:17:33', '2017-08-16 09:17:33');
INSERT INTO `page_images` VALUES ('391', '504', '43fd13a86506b2b77a2e338cc552706f.PNG', '/images/posts/43fd13a86506b2b77a2e338cc552706f.PNG', '0', '2017-08-16 09:17:33', '2017-08-16 09:17:33');
INSERT INTO `page_images` VALUES ('392', '505', '52df9793e3b7ebfef7c180e2d0ee6430.jpg', '/images/posts/52df9793e3b7ebfef7c180e2d0ee6430.jpg', '0', '2017-08-16 09:18:38', '2017-08-16 09:18:38');
INSERT INTO `page_images` VALUES ('393', '517', 'a47b9c343d0b32972f1c7e0fdcdc856b.jpg', '/images/posts/a47b9c343d0b32972f1c7e0fdcdc856b.jpg', '0', '2017-08-16 10:22:58', '2017-08-16 10:22:58');
INSERT INTO `page_images` VALUES ('394', '517', 'e3942fe3c9ecb104316a3a6fa0de9af8.jpg', '/images/posts/e3942fe3c9ecb104316a3a6fa0de9af8.jpg', '0', '2017-08-16 10:22:58', '2017-08-16 10:22:58');
INSERT INTO `page_images` VALUES ('395', '518', 'bb491ee5c380bc6e86dc163433396e76.jpg', '/images/posts/bb491ee5c380bc6e86dc163433396e76.jpg', '0', '2017-08-16 10:24:41', '2017-08-16 10:24:41');
INSERT INTO `page_images` VALUES ('396', '518', '15c22b1d304e279a5fc52bb4d2222666.jpg', '/images/posts/15c22b1d304e279a5fc52bb4d2222666.jpg', '0', '2017-08-16 10:24:41', '2017-08-16 10:24:41');
INSERT INTO `page_images` VALUES ('397', '518', 'b6b4536c0d26bfc16261402a2b1b0c94.jpg', '/images/posts/b6b4536c0d26bfc16261402a2b1b0c94.jpg', '0', '2017-08-16 10:24:41', '2017-08-16 10:24:41');
INSERT INTO `page_images` VALUES ('398', '526', 'e9ed91b2677b83d773ce6f1f48c09ee3.png', '/images/posts/e9ed91b2677b83d773ce6f1f48c09ee3.png', '0', '2017-08-17 09:11:38', '2017-08-17 09:11:38');
INSERT INTO `page_images` VALUES ('399', '526', 'd76db02a70d40f9057f3b94c556db407.png', '/images/posts/d76db02a70d40f9057f3b94c556db407.png', '0', '2017-08-17 09:11:38', '2017-08-17 09:11:38');
INSERT INTO `page_images` VALUES ('400', '526', '7b1e64cac0758ea1bdcc8955206ae425.png', '/images/posts/7b1e64cac0758ea1bdcc8955206ae425.png', '0', '2017-08-17 09:11:38', '2017-08-17 09:11:38');
INSERT INTO `page_images` VALUES ('401', '526', 'b99f309bc3f413d4925984100d9e3521.png', '/images/posts/b99f309bc3f413d4925984100d9e3521.png', '0', '2017-08-17 09:11:38', '2017-08-17 09:11:38');
INSERT INTO `page_images` VALUES ('402', '526', 'e8d5d2f3a283d1b3b172c1f8c1c47e84.png', '/images/posts/e8d5d2f3a283d1b3b172c1f8c1c47e84.png', '0', '2017-08-17 09:12:59', '2017-08-17 09:12:59');
INSERT INTO `page_images` VALUES ('407', '518', '97a88110dc3dfe154f748afefd159e53.png', '/images/posts/97a88110dc3dfe154f748afefd159e53.png', '0', '2017-08-17 09:43:54', '2017-08-17 09:43:54');
INSERT INTO `page_images` VALUES ('408', '518', 'c6eeda919198f2e7e084d5387e1896b6.png', '/images/posts/c6eeda919198f2e7e084d5387e1896b6.png', '0', '2017-08-17 09:43:54', '2017-08-17 09:43:54');
INSERT INTO `page_images` VALUES ('409', '518', '6683d67962d0ed5dc6258a5fd6b0a331.png', '/images/posts/6683d67962d0ed5dc6258a5fd6b0a331.png', '0', '2017-08-17 09:43:54', '2017-08-17 09:43:54');

-- ----------------------------
-- Table structure for page_properties
-- ----------------------------
DROP TABLE IF EXISTS `page_properties`;
CREATE TABLE `page_properties` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of page_properties
-- ----------------------------
INSERT INTO `page_properties` VALUES ('sku', 'Thử xem nào', '138', '2014-12-04 09:20:18', '2014-12-04 09:20:18');
INSERT INTO `page_properties` VALUES ('price', '190000', '138', '2014-12-04 09:20:18', '2014-12-04 09:20:18');
INSERT INTO `page_properties` VALUES ('vat', 'Thuế 5%', '138', '2014-12-04 09:20:19', '2014-12-04 09:20:19');
INSERT INTO `page_properties` VALUES ('sku', 'GUN-AK-45', '139', '2014-12-05 03:00:57', '2014-12-05 03:00:57');
INSERT INTO `page_properties` VALUES ('price', '9000', '139', '2014-12-05 03:00:57', '2014-12-05 03:00:57');
INSERT INTO `page_properties` VALUES ('vat', 'Thuế 10%', '139', '2014-12-05 03:00:57', '2014-12-05 03:00:57');
INSERT INTO `page_properties` VALUES ('giao-hang', 'Giao Tại nhà', '139', '2014-12-05 03:00:57', '2014-12-05 03:00:57');
INSERT INTO `page_properties` VALUES ('sku', 'GUN-AK-45', '140', '2014-12-05 03:01:08', '2014-12-05 03:01:08');
INSERT INTO `page_properties` VALUES ('price', '9000', '140', '2014-12-05 03:01:08', '2014-12-05 03:01:08');
INSERT INTO `page_properties` VALUES ('vat', 'Thuế 10%', '140', '2014-12-05 03:01:08', '2014-12-05 03:01:08');
INSERT INTO `page_properties` VALUES ('giao-hang', 'Giao Tại nhà', '140', '2014-12-05 03:01:08', '2014-12-05 03:01:08');
INSERT INTO `page_properties` VALUES ('sku', 'tank-t71', '141', '2014-12-05 03:59:29', '2014-12-05 03:59:29');
INSERT INTO `page_properties` VALUES ('price', '900000', '141', '2014-12-05 03:59:29', '2014-12-05 03:59:29');
INSERT INTO `page_properties` VALUES ('vat', 'Thuế 10%', '141', '2014-12-05 03:59:29', '2014-12-05 03:59:29');
INSERT INTO `page_properties` VALUES ('giao-hang', 'Giao Tại nhà', '141', '2014-12-05 03:59:29', '2014-12-05 03:59:29');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `custom_head` text COLLATE utf8_unicode_ci,
  `custom_footer` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` int(3) NOT NULL DEFAULT '0',
  `subtype` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `status` int(2) DEFAULT '1',
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `hompage` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `homepage` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbaogia` tinyint(1) DEFAULT '0',
  `h1_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `robots` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'vi',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('261', '', '', 'liên hệ', 'lien-he', '', null, null, null, '0', '1', '2015-05-28 20:19:56', '2015-06-12 09:35:47', '0', 'post', '1', '0', '0', '0', '1', '0', null, 'noi that dep tai hai phong, tu nhua tai hai phong', 'Nội thất I - Home tại Hải Phòng', 'Nội thất nhựa, sang trọng đẹp, cá tính tại Hải Phòng', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('306', null, null, 'Sản Phẩm', 'san-pham', null, null, '', null, '0', '0', '2017-07-18 08:22:10', '2017-07-18 08:22:10', '1', 'product', '1', 'category_product', '0', '0', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Viết Bảng Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('474', null, null, 'Phấn viết bảng', 'phan-viet-bang', null, null, 'Phấn viết bảng', null, '306', '0', '2017-07-18 08:24:00', '2017-07-18 08:24:00', '1', 'product', '1', 'category_product', '0', '0', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Viết Bảng Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('475', null, null, 'Bút Bi', 'but-bi', null, null, 'Bút Bi', null, '306', '0', '2017-07-18 08:24:20', '2017-07-18 08:24:20', '1', 'product', '1', 'category_product', '0', '0', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Viết Bảng Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('485', null, null, 'Giới thiệu về Phấn Rikagaku số 1 Nhật Bản', 'gioi-thieu-phan-rikagaku-9yn-yo7-ztd_pKR', '<p style=\"text-align:center\">Bạn l&agrave; gi&aacute;o vi&ecirc;n? Bạn l&agrave; những b&agrave; mẹ c&oacute; con đang đi học?<br />\r\nBạn c&oacute; lo lắng rằng việc h&iacute;t nhiều bụi phấn chắc chắn sẽ g&acirc;y n&ecirc;n c&aacute;c BỆNH VỀ ĐƯỜNG H&Ocirc; HẤP cũng như l&agrave;m HẠI DA TAY?<br />\r\nBạn mong chờ g&igrave; từ một vi&ecirc;n phấn viết bảng?</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;* NGUY&Ecirc;N LIỆU AN TO&Agrave;N CHO SỨC KHOẺ, TH&Acirc;N THIỆN VỚI M&Ocirc;I TRƯỜNG</p>\r\n\r\n<p style=\"text-align:center\">* KH&Ocirc;NG BỤI (Thực tế l&agrave; &iacute;t bụi bởi kh&ocirc;ng bụi kh&ocirc;ng phải l&agrave; phấn)</p>\r\n\r\n<p style=\"text-align:center\">* GI&Uacute;P VIẾT N&Eacute;T THANH, N&Eacute;T ĐẬM</p>\r\n\r\n<p style=\"text-align:center\">* KH&Ocirc;NG G&Acirc;Y MỎI TAY KHI SỬ DỤNG TRONG THỜI GIAN D&Agrave;I</p>\r\n\r\n<p style=\"text-align:center\">* KH&Ocirc;NG DỄ G&Atilde;Y</p>\r\n\r\n<p style=\"text-align:center\">* ĐỘ HAO M&Ograve;N &Iacute;T, D&Ugrave;NG ĐƯỢC L&Acirc;U HƠN</p>\r\n\r\n<p style=\"text-align:center\"><strong>PHẤN RIKAGAKU NHẬT BẢN l&agrave; loại phấn đ&aacute;p ứng đầy đủ những mong đợi của bạn.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/IMG_4621.PNG\" style=\"height:200px; width:281px\" /></p>\r\n\r\n<p># Được l&agrave;m từ Canxi Cacbonat ch&iacute;nh l&agrave; chất cấu tạo n&ecirc;n xương v&agrave; răng ch&uacute;ng ta. Điểm đặc biệt hơn đ&acirc;y l&agrave; loại phấn đầu ti&ecirc;n được l&agrave;m từ NGUY&Ecirc;N LIỆU TỰ NHI&Ecirc;N VỎ S&Ograve; ĐIỆP, th&acirc;n thiện với m&ocirc;i trường v&agrave; g&oacute;p phần giảm thiểu r&aacute;c thải ra m&ocirc;i trường.</p>\r\n\r\n<p># Trọng lượng ph&acirc;n tử của phấn nặng n&ecirc;n BỤI SẼ RƠI NGAY XUỐNG ĐẤT chứ kh&ocirc;ng ph&acirc;n t&aacute;n trong kh&ocirc;ng kh&iacute; l&agrave;m bẩn quần &aacute;o v&agrave; mọi thứ xung quanh. Sẽ chỉ c&ograve;n t&igrave;nh trạng &quot;C&oacute; hạt bụi n&agrave;o, rơi tr&ecirc;n bục giảng&quot; chứ kh&ocirc;ng c&ograve;n &quot;C&oacute; hạt bụi n&agrave;o, vương tr&ecirc;n t&oacute;c thầy&quot; hay thậm ch&iacute; l&agrave; vương trong phổi của thầy v&agrave; tr&ograve;.</p>\r\n\r\n<p># Phấn c&oacute; một lớp phủ xung quanh để KH&Ocirc;NG L&Agrave;M BẨN V&Agrave; KH&Ocirc; DA TAY.</p>\r\n\r\n<p># Mật độ hạt phấn cao gi&uacute;p HẠN CHẾ HAO M&Ograve;N hơn, GẤP 2 LẦN phấn được l&agrave;m từ thạch cao.&nbsp;</p>\r\n\r\n<p># M&Agrave;U PHẤN TRẮNG, S&Aacute;NG hơn gi&uacute;p nh&igrave;n r&otilde; hơn nhất l&agrave; trong điều kiện &aacute;nh s&aacute;ng yếu.</p>\r\n\r\n<p># C&ocirc;ng nghệ Nhật Bản gi&uacute;p N&Eacute;T CHỮ MỀM MẠI, thanh tho&aacute;t v&agrave; nhất l&agrave; chỉ cần d&ugrave;ng một lực nhẹ l&agrave; n&eacute;t phấn đ&atilde; r&otilde; v&agrave; đậm n&ecirc;n KH&Ocirc;NG MỎI TAY khi viết nhiều.</p>\r\n\r\n<p style=\"text-align:center\"><strong>C&oacute; 2 loại&nbsp;PHẤN TRẮNG V&Agrave; PHẤN M&Agrave;U</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong>Trong PHẤN M&Agrave;U c&oacute; 2 loại:&nbsp;</strong></p>\r\n\r\n<p><strong>1. M&agrave;u THƯỜNG: m&agrave;u v&agrave;ng, hồng, t&iacute;m, xanh da trời, xanh l&aacute;, n&acirc;u.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/vd.jpg\" style=\"height:200px; width:235px\" /><br />\r\n<strong>2. M&agrave;u HUỲNH QUANG: m&agrave;u v&agrave;ng, hồng, t&iacute;m, danh da trời, xanh l&aacute;, cam.</strong><br />\r\nPhấn m&agrave;u HUỲNH QUANG c&oacute; m&agrave;u sắc n&eacute;t, c&oacute; t&aacute;c dụng PH&Aacute;T QUANG gi&uacute;p nh&igrave;n r&otilde; hơn trong điều kiện &aacute;nh s&aacute;ng tối hoặc thời điểm chiều muộn, gi&uacute;p học sinh bị cận thị vẫn c&oacute; thể nh&igrave;n r&otilde;.</p>\r\n\r\n<p><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/17553412_304657703287081_1062020915466058891_n.jpg\" style=\"height:200px; width:235px\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>Với tất cả những điều đ&oacute;, phấn Rikagaku chắc chắn sẽ l&agrave; người bạn đồng h&agrave;nh tuyệt vời tr&ecirc;n con đường trao v&agrave; nhận tri thức của bạn.</strong></p>\r\n', 'images/posts/gioi-thieu-ve-phan-rikagaku-so-1-nhat-ban_1.jpg', 'Bạn là giáo viên? Bạn là những bà mẹ có con đang đi học?\r\nBạn có lo lắng rằng việc hít nhiều bụi phấn chắc chắn sẽ gây nên các BỆNH VỀ ĐƯỜNG HÔ HẤP cũng như làm HẠI DA TAY?\r\nBạn mong chờ gì từ một viên phấn viết bảng?', null, '308', '0', '2017-07-18 09:02:25', '2017-08-17 04:27:19', '2', 'post', '1', 'post', '0', null, '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Viết Bảng Nhật Bản', 'Phấn Rikagaku số 1 Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, ít bụi rất an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('486', null, null, 'hướng dẫn mua hàng_sửa ko xóa', 'huong-dan-mua-hang-dgm-fte-xhp', '<h1>HƯỚNG DẪN MUA H&Agrave;NG</h1>\r\n\r\n<div class=\"clear\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; clear: both; color: rgb(112, 112, 112); font-family: arial, helvetica, clean, sans-serif; font-size: 12px;\">&nbsp;</div>\r\n\r\n<div class=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 10px; color: rgb(112, 112, 112); font-family: arial, helvetica, clean, sans-serif; font-size: 12px;\">\r\n<p><strong>THỜI GIAN L&Agrave;M VIỆC</strong></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,clean,sans-serif; font-size:12px\">Thứ hai - Thứ s&aacute;u:&nbsp;&nbsp; &nbsp; 8:30AM -&nbsp;&nbsp;6:00PM</span></p>\r\n\r\n<p>Thứ bảy: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8:30AM - 12:00AM</p>\r\n\r\n<p>Chủ nhật:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nghỉ (trừ khi c&oacute;&nbsp;th&ocirc;ng b&aacute;o kh&aacute;c)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>HƯỚNG DẪN MUA H&Agrave;NG:&nbsp;</strong></p>\r\n\r\n<p>Bước 1:&nbsp;Chọn sản phẩm ưng &yacute; (m&agrave;u sắc, k&iacute;ch cỡ, số lượng..)</p>\r\n\r\n<p>Bước 2: Gọi điện hoặc nhắn tin (Call/SMS) thống nhất đơn&nbsp;h&agrave;ng&nbsp;với Rikagaku th&ocirc;ng qua điện thoại:&nbsp;01236494605</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hoặc chat qua Facebook:&nbsp;https://www.facebook.com/phankhongbuii/</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&Igrave;NH THỨC THANH TO&Aacute;N</strong></p>\r\n\r\n<p>RIKAGAKU chấp nhận h&igrave;nh thức thanh to&aacute;n sau:</p>\r\n\r\n<p><strong><em>CHUYỂN KHOẢN</em>:</strong> Qu&iacute; kh&aacute;ch c&oacute; thể chuyển khoản v&agrave;o một trong những t&agrave;i khoản ng&acirc;n h&agrave;ng sau của RIKAGAKU</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;Ng&acirc;n h&agrave;ng Vietcombank&nbsp;(Ng&acirc;n h&agrave;ng TMCP Ngoại&nbsp;Thương Việt Nam)</p>\r\n\r\n<p>Chủ t&agrave;i khoản: Nguyễn Thị Phương Li&ecirc;n</p>\r\n\r\n<p>Số TK: 0521000691794</p>\r\n\r\n<p>Chi nh&aacute;nh Hạ Long</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;Ng&acirc;n h&agrave;ng BIDV (Ng&acirc;n h&agrave;ng TMCP Đầu tư v&agrave; Ph&aacute;t Triển Việt Nam)</p>\r\n\r\n<p>Chủ t&agrave;i khoản: <span style=\"font-family:arial,helvetica,clean,sans-serif; font-size:12px\">Nguyễn Thị Phương Li&ecirc;n</span></p>\r\n\r\n<p>Số TK: 28910000063104</p>\r\n\r\n<p>Chi nh&aacute;nh Ngọc Kh&aacute;nh</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;Ng&acirc;n h&agrave;ng SCB (Ng&acirc;n h&agrave;ng TMCP S&agrave;i G&ograve;n)</p>\r\n\r\n<p>Chủ t&agrave;i khoản: Đỗ Việt Mạnh</p>\r\n\r\n<p>Số TK: 0470106847480010</p>\r\n\r\n<p>Chi nh&aacute;nh H&agrave; Nội</p>\r\n\r\n<p><em><strong>THANH TO&Aacute;N TIỀN MẶT KHI NHẬN H&Agrave;NG</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>PHƯƠNG THỨC GIAO H&Agrave;NG</strong></p>\r\n\r\n<p>RIKAGAKU sẽ trao đổi v&agrave; thống nhất phương thức giao h&agrave;ng với kh&aacute;ch h&agrave;ng sao cho tiết kiệm v&agrave; thuận tiện nhất.</p>\r\n\r\n<p>Đối với c&aacute;c đơn h&agrave;ng ngo&agrave;i khu vực H&agrave; Nội v&agrave; kh&ocirc;ng cần gấp, ch&uacute;ng t&ocirc;i thường đề xuất sử dụng dịch vụ của Vnpost (bưu điện) để tiết kiệm chi ph&iacute; nhất cho kh&aacute;ch h&agrave;ng v&agrave; thời gian vận chuyển thường mất từ 5-7 ng&agrave;y l&agrave;m việc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>THU THẬP TH&Ocirc;NG TIN</strong></p>\r\n\r\n<p>RIKAGAKU&nbsp;l&agrave; chủ sở hữu duy nhất của th&ocirc;ng tin thu thập từ website. Ch&uacute;ng t&ocirc;i cam kết kh&ocirc;ng mua b&aacute;n, trao đổi hay cho thu&ecirc; những th&ocirc;ng tin n&agrave;y cho ph&aacute;p nh&acirc;n thứ 3, ngoại trừ những ph&aacute;p nh&acirc;n được ph&eacute;p chia sẻ như: H&atilde;ng vận chuyển v&agrave; Ng&acirc;n h&agrave;ng. Ch&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin kh&aacute;ch h&agrave;ng chỉ với mục đ&iacute;ch xử l&yacute; đơn đặt h&agrave;ng v&agrave; nhằm phục vụ kh&aacute;ch h&agrave;ng tốt hơn. Th&ocirc;ng tin thu thập bao gồm: họ t&ecirc;n, ng&agrave;y sinh, địa chỉ giao h&agrave;ng, số điện thoại, v&agrave; e-mail.</p>\r\n</div>\r\n', 'images/posts/huong-dan-mua-hang-sua-ko-xoa.jpg', '', null, '308', '0', '2017-07-18 09:17:47', '2017-08-17 04:24:47', '2', 'post', '1', 'post', '0', null, '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Viết Bảng Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('487', null, null, 'PHẤN MÀU HUỲNH QUANG - LỰA CHỌN THÔNG MINH CHO MENU & BIỂN QUẢNG CÁO', 'phan-mau-huynh-quang-menu-quang-cao-dc7-t1b-u9d-vza-vcj_gFC', '<p>D&ugrave;ng phấn để vẽ menu hay c&aacute;c bảng quảng c&aacute;o trong c&aacute;c nh&agrave; h&agrave;ng, qu&aacute;n c&agrave; ph&ecirc; kh&ocirc;ng c&ograve;n l&agrave; một &yacute; tưởng mới. Ưu điểm l&agrave; kh&ocirc;ng cần phải tốn k&eacute;m để phải in mới, in lại hay sửa mỗi khi c&oacute; sự thay đổi. Vậy một &yacute; tưởng kh&aacute;c l&agrave;m cho &yacute; tưởng vừa rồi c&agrave;ng trở n&ecirc;n sinh động v&agrave; phong c&aacute;ch th&igrave; sao nhỉ?</p>\r\n\r\n<p>Bạn c&oacute; thể l&agrave;m cho menu của m&igrave;nh ấn tượng hơn nhờ PHẤN HUỲNH QUANG c&oacute; m&agrave;u sắc n&eacute;t, c&oacute; t&aacute;c dụng PH&Aacute;T QUANG gi&uacute;p nh&igrave;n r&otilde; hơn trong điều kiện &aacute;nh s&aacute;ng tối.</p>\r\n\r\n<p><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/17990996_312010379218480_526955634738639265_n.jpg\" style=\"height:200px; width:277px\" />&nbsp;&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/17904109_312010375885147_6038622464301196292_n.jpg\" style=\"height:200px; width:200px\" />&nbsp;&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/17991781_312007789218739_7512804509668959036_n.jpg\" style=\"height:200px; width:273px\" /></p>\r\n\r\n<p>Đặc biệt nếu bạn sử dụng đ&egrave;n Black Light chiếu th&igrave; tấm biển sẽ cực k&igrave; nổi bật đấy.</p>\r\n\r\n<p><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18010494_311972432555608_6843762896177235226_n.jpg\" style=\"height:300px; width:450px\" /></p>\r\n', 'images/posts/phan-mau-huynh-quang-mot-lua-chon-thong-minh-cho-cac-cua-hang-khi-lam-menu-hay-bien-quang-cao.jpg', 'Hãy để phấn màu HUỲNH QUANG RIKAGAKU giúp bạn thu hút thêm khách hàng mà không cần tốn nhiều tiền nhé!', null, '308', '0', '2017-07-21 07:52:22', '2017-08-17 04:58:38', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi số 1 Nhật Bản', 'Phấn Rikagaku số 1 Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('491', null, null, 'trang-chu', 'trang-chu', null, null, null, null, '0', '2', '2017-07-24 08:16:24', '2017-07-24 08:16:24', '1', 'post', '1', '0', '0', '0', '1', '1', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('498', null, null, 'Tẩy chì', 'tay-chi', null, null, '', null, '306', '0', '2017-08-16 08:07:58', '2017-08-16 08:07:58', '1', 'product', '1', 'category_product', '0', '0', '1', '1', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('502', null, null, 'Phấn trắng Rikagaku 72 viên', 'phan-trang-rikagaku-72-vien', '', 'images/posts/cVH_phan-trang-rikagaku-72-vien.JPG', '', null, '474', '0', '2017-08-16 09:14:42', '2017-08-16 09:14:42', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('503', null, null, 'Phấn màu Rikagaku 72 viên', 'phan-mau-rikagaku-72-vien', '', 'images/posts/phan-mau-rikagaku-72-vien.jpg', '', null, '474', '0', '2017-08-16 09:16:23', '2017-08-16 09:16:23', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('504', null, null, 'Phấn màu huỳnh quang Rikagaku 72 viên', 'phan-mau-huynh-quang-rikagaku-72-vien', '', 'images/posts/phan-mau-huynh-quang-rikagaku-72-vien.jpg', '', null, '474', '0', '2017-08-16 09:17:33', '2017-08-16 09:17:33', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('505', null, null, 'Phấn trắng Rikagaku 6 viên', 'phan-trang-rikagaku-6-vien', '', 'images/posts/phan-trang-rikagaku-6-vien.jpg', '', null, '474', '0', '2017-08-16 09:18:38', '2017-08-16 09:18:38', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('506', null, null, 'Phấn màu Rikagaku 6 viên', 'phan-mau-rikagaku-6-vien', '', 'images/posts/phan-mau-rikagaku-6-vien.jpg', '', null, '474', '0', '2017-08-16 09:19:36', '2017-08-16 09:19:36', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('507', null, null, 'Phấn trắng Rikagaku (bán lẻ 1 viên)', 'phan-trang-rikagaku-ban-le-1-vien', '', 'images/posts/phan-trang-rikagaku-ban-le-1-vien.PNG', '', null, '474', '0', '2017-08-16 09:21:31', '2017-08-16 09:21:31', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('508', null, null, 'Phấn màu Rikagaku (bán lẻ 1 viên)', 'phan-mau-rikagaku-ban-le-1-vien', '', 'images/posts/phan-mau-rikagaku-ban-le-1-vien.PNG', '', null, '474', '0', '2017-08-16 09:22:11', '2017-08-16 09:22:11', '2', 'product', '1', 'post_product', '0', null, '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('509', null, null, 'Phấn màu huỳnh quang Rikagaku (bán lẻ 1 viên)', 'phan-mau-huynh-quang-rikagaku-ban-le-1-vien', '', 'images/posts/phan-mau-huynh-quang-rikagaku-ban-le-1-vien.PNG', '', null, '474', '0', '2017-08-16 09:22:51', '2017-08-16 09:22:51', '2', 'product', '1', 'post_product', '0', null, '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('510', null, null, 'Bút bi xóa được Frixion 0.5 (đen)', 'but-bi-xoa-duoc-frixion-tku-dce', '', 'images/posts/but-bi-xoa-duoc-frixion.png', '', null, '475', '0', '2017-08-16 09:24:33', '2017-08-16 09:34:10', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'butbi, butthanky, butbixoaduoc, frixion', 'Rikagaku - Phấn Không Bụi Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('511', null, null, 'Bút bi xóa được Frixion 0.5 (đỏ)', 'but-bi-xoa-duoc-frixion-do-28b', '', 'images/posts/but-bi-xoa-duoc-frixion-do.png', '', null, '475', '0', '2017-08-16 09:26:43', '2017-08-16 09:33:57', '2', 'product', '1', 'post_product', '0', null, '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('512', null, null, 'Bút bi xóa được Frixion 0.5 (xanh)', 'but-bi-xoa-duoc-frixion-xanh_tfO', '', 'images/posts/but-bi-xoa-duoc-frixion-xanh.png', '', null, '475', '0', '2017-08-16 09:29:58', '2017-08-16 09:33:46', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('513', null, null, 'Set 3 bút bi xóa được Frixion 0.5 (có thể chọn màu)', 'set-3-but-bi-xoa-duoc-frixion-05-co-the-chon-mau', '', 'images/posts/set-3-but-bi-xoa-duoc-frixion-05-co-the-chon-mau.png', '', null, '475', '0', '2017-08-16 09:31:30', '2017-08-16 09:31:30', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('514', null, null, 'BIG SALE - Bút bi xóa được Frixion 0.7 (đen)', 'sale-but-bi-xoa-duoc-frixion-07-den_pGt', '', 'images/posts/sale-but-bi-xoa-duoc-frixion-07-den.png', '', null, '475', '0', '2017-08-16 09:36:35', '2017-08-16 09:36:48', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('515', null, null, 'BIG SALE - Bút bi xóa được Frixion 0.7 (đỏ)', 'big-sale-but-bi-xoa-duoc-frixion-07-do', '', 'images/posts/big-sale-but-bi-xoa-duoc-frixion-07-do.png', '', null, '475', '0', '2017-08-16 09:37:21', '2017-08-16 09:37:21', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('516', null, null, 'BIG SALE - Bút bi xóa được Frixion 0.7 (xanh)', 'big-sale-but-bi-xoa-duoc-frixion-07-xanh', '', 'images/posts/big-sale-but-bi-xoa-duoc-frixion-07-xanh.png', '', null, '475', '0', '2017-08-16 09:38:20', '2017-08-16 09:38:20', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('517', null, null, 'Tẩy chì FOAM W', 'tay-chi-foam-w_Jil', '', 'images/posts/tay-chi-foam-w.jpg', '', null, '498', '0', '2017-08-16 10:22:06', '2017-08-16 10:22:58', '2', 'product', '1', 'post_product', '0', null, '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, không bụi rất an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('518', null, null, 'Set 5 tẩy chì FOAM W', 'set-5-tay-chi-foam-w_RWL', '', 'images/posts/set-5-tay-chi-foam-w.jpg', '', null, '498', '0', '2017-08-16 10:24:41', '2017-08-17 09:43:54', '2', 'product', '1', 'post_product', '0', '0', '1', '0', null, null, null, null, '0', null, null, null);
INSERT INTO `pages` VALUES ('522', null, null, 'TỔNG HỢP LINK CÁC BÀI VIẾT TRÊN FANPAGE', 'tong-hop-link-cac-bai-viet-tren-fanpage-hvz-phn-rlt_HC8', '<p><span style=\"font-family:helvetica,arial,sans-serif; font-size:14px\">Danh s&aacute;ch c&aacute;c b&agrave;i viết của Fanpage theo thứ tự từ cũ đến mới nhất gi&uacute;p cho kh&aacute;ch h&agrave;ng dễ d&agrave;ng t&igrave;m kiếm v&agrave; lựa chọn c&aacute;c b&agrave;i biết ph&ugrave; hợp với nhu cầu của m&igrave;nh.</span><br />\r\n<br />\r\n<strong><span style=\"font-family:helvetica,arial,sans-serif; font-size:0px\">BB&agrave;imdvfd</span><span style=\"font-family:helvetica,arial,sans-serif; font-size:14px\">B&agrave;i viết nổi bật: ***</span></strong><br />\r\n<br />\r\n<strong><span style=\"font-family:helvetica,arial,sans-serif; font-size:14px\">1. GIỚI THIỆU PHẤN RIKAGAKU ***</span></strong><br />\r\n<span style=\"font-family:helvetica,arial,sans-serif; font-size:14px\"><a href=\"https://www.facebook.com/phankhongbuii/posts/304657716620413\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>304657716620413</a><br />\r\n<br />\r\n2. CHALK ART 1: NGHỆ THUẬT VẼ BẰNG PHẤN<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/305552986530886/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>305552986530886/</a><br />\r\n<br />\r\n3. VIDEO: CHỨNG MINH PHẤN KH&Ocirc;NG L&Agrave;M BẨN TAY<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/309718966114288/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>309718966114288/</a><br />\r\n<br />\r\n4. GIỚI THIỆU PHẤN M&Agrave;U HUỲNH QUANG D&Ugrave;NG ĐỂ VẼ MENU, BẢNG QUẢNG C&Aacute;O<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/311977139221804\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>311977139221804</a><br />\r\n<br />\r\n<strong>5. ALBUM TỔNG HỢP FEEDBACK CỦA KH&Aacute;CH H&Agrave;NG&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/pg/phankhongbuii/photos/?tab=album&amp;album_id=312311532521698\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">pg/phankhongbuii/photos/</span><span style=\"font-family:inherit\">?tab=album&amp;album_id=3123115</span>32521698</a><br />\r\n<br />\r\n6. MỘT SỐ C&Acirc;U HỎI PHỐ BIẾN VỀ PHẤN<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/photos/a.304658313287020.1073741829.304620933290758/312394115846773/?type=3\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/photos/</span><span style=\"font-family:inherit\">a.304658313287020.107374182</span><span style=\"font-family:inherit\">9.304620933290758/</span>312394115846773/?type=3</a><br />\r\n<br />\r\n<strong>7. PHẤN RIKAGAKU ĐƯỢC L&Agrave;M TỪ VỎ S&Ograve; ĐIỆP&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/312836355802549\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>312836355802549</a><br />\r\n<br />\r\n8. SỰ KIỆN VẼ TRANH TẶNG C&Aacute;C HỌC SINH CẤP 3 SẮP TỐT NGHIỆP<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/313307265755458\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>313307265755458</a><br />\r\n<br />\r\n<strong>9. C&Aacute;C GIẢI THƯỞNG PHẤN RIKAGAKU Đ&Atilde; ĐẠT ĐƯỢC&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/313685065717678\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>313685065717678</a><br />\r\n<br />\r\n10. VIDEO QUY TR&Igrave;NH Đ&Oacute;NG G&Oacute;I PHẤN<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/314199185666266/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>314199185666266/</a><br />\r\n<br />\r\n11. MINI GAME KH&Ocirc;NG NH&Acirc;N DỊP 30/4-1/5<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/315630215523163\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>315630215523163</a><br />\r\n<br />\r\n12. CHALK ART 2: NGHỆ THUẬT VẼ BẰNG PHẤN<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/316027062150145/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>316027062150145/</a><br />\r\n<br />\r\n13. DANH S&Aacute;CH TR&Uacute;NG THƯỞNG MINI GAME KH&Ocirc;NG NH&Acirc;N DỊP 30/4-1/5<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/317205465365638\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>317205465365638</a><br />\r\n<br />\r\n<strong>14. PH&Acirc;N T&Iacute;CH VỀ PHẤN VIẾT BẢNG TH&Ocirc;NG THƯỜNG &amp; PHẤN RIKAGAKU NHẬT BẢN&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/320066475079537\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>320066475079537</a><br />\r\n<br />\r\n15. VIDEO: NO.1 GRADUATION SONG IN JAPAN 2016<br />\r\nB&Agrave;I H&Aacute;T VỀ LỄ TỐT NGHIỆP HAY NHẤT TẠI NHẬT NĂM 2016 VỚI SỰ Đ&Oacute;NG G&Oacute;P TO LỚN CỦA PHẤN RIKAGAKU<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/320438875042297/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>320438875042297/</a><br />\r\n<br />\r\n16. VIDEO: SO S&Aacute;NH CHUNG PHẤN RIKAGAKU V&Agrave; PHẤN THƯỜNG<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/321094204976764/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>321094204976764/</a><br />\r\n<br />\r\n<strong>17. VIDEO: Đ&Aacute;NH GI&Aacute; PHẤN RIKAGAKU TR&Ecirc;N TRANG B&Aacute;N H&Agrave;NG LỚN NHẤT THẾ GIỚI AMAZON&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/321617141591137/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>321617141591137/</a><br />\r\n<br />\r\n<strong>18. VIDEO: KH&Aacute;CH NƯỚC NGO&Agrave;I THỬ NGHIỆM &amp; Đ&Aacute;NH GI&Aacute; PHẤN RIKAGAKU&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/322278534858331/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>322278534858331/</a><br />\r\n<br />\r\n19. VIDEO: CH&Agrave;NG T&Acirc;Y H&Aacute;T &quot;BỤI PHẤN&quot; BẰNG TIẾNG ANH<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/323594401393411/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>323594401393411/</a><br />\r\n<br />\r\n<strong>20. VIDEO: GIỚI THIỆU B&Uacute;T BI X&Oacute;A ĐƯỢC NHẬT BẢN&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/325151847904333/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>325151847904333/</a><br />\r\n<br />\r\n21. VIDEO: SO S&Aacute;NH PHẤN M&Agrave;U THƯỜNG V&Agrave; PHẤN M&Agrave;U HUỲNH QUANG<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/326389431113908/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>326389431113908/</a><br />\r\n<br />\r\n21. CHUY&Ecirc;N MỤC SINH TH&Aacute;I HỌC: C&Aacute;CH T&Aacute;I CHẾ PHẤN SỐ 1<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/327193491033502\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>327193491033502</a><br />\r\n<br />\r\n22. CHƯƠNG TR&Igrave;NH KHUYẾN M&Atilde;I: SET QU&Agrave; 1/6<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/327622234323961\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>327622234323961</a><br />\r\n<br />\r\n<strong>23. VIDEO: SO S&Aacute;NH TẨY FOAM W NHẬT BẢN V&Agrave; TẨY THƯỜNG&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/328052044280980/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>328052044280980/</a><br />\r\n<br />\r\n24. CHUY&Ecirc;N MỤC SINH TH&Aacute;I HỌC: C&Aacute;CH T&Aacute;I CHẾ PHẤN SỐ 2<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/329512464134938\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>329512464134938</a><br />\r\n<br />\r\n25. CHUY&Ecirc;N MỤC SINH TH&Aacute;I HỌC: C&Aacute;CH T&Aacute;I CHẾ PHẤN SỐ 3<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/330228640729987\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>330228640729987</a><br />\r\n<br />\r\n26. CHUY&Ecirc;N MỤC SINH TH&Aacute;I HỌC: C&Aacute;CH T&Aacute;I CHẾ PHẤN SỐ 4<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/330608097358708\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>330608097358708</a><br />\r\n<br />\r\n27. VIDEO: QUẢNG C&Aacute;O C&Oacute; SỬ DỤNG PHẤN G&Acirc;Y X&Uacute;C ĐỘNG NGƯỜI XEM<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/333916790361172/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>333916790361172/</a><br />\r\n<br />\r\n28. BẰNG S&Aacute;NG CHẾ PHẤN VIẾT BẢNG TỪ VỎ S&Ograve; ĐIỆP<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/335719173514267\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>335719173514267</a><br />\r\n<br />\r\n29. &quot;HỌ L&Agrave; NHỮNG NGƯỜI L&Agrave;M RA PHẤN RIKAGAKU&quot;<br />\r\nCHUYẾN VIẾNG THĂM CỦA THỐNG ĐỐC TỈNH KANAGAWA V&Agrave; B&Agrave;I VIẾT TR&Ecirc;N FACEBOOK CỦA &Ocirc;NG<br />\r\n<a href=\"https://www.facebook.com/notes/ph%E1%BA%A5n-vi%E1%BA%BFt-b%E1%BA%A3ng-rikagaku-nh%E1%BA%ADt-b%E1%BA%A3n/h%E1%BB%8D-l%C3%A0-nh%E1%BB%AFng-ng%C6%B0%E1%BB%9Di-l%C3%A0m-ra-ph%E1%BA%A5n-rikagaku/336785686740949/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">notes/</span><span style=\"font-family:inherit\">phấn-viết-bảng-rikagaku-nhậ</span><span style=\"font-family:inherit\">t-bản/</span><span style=\"font-family:inherit\">họ-l&agrave;-những-người-l&agrave;m-ra-ph</span><span style=\"font-family:inherit\">ấn-rikagaku/</span>336785686740949/</a><br />\r\n<br />\r\n<strong>30. VIDEO: GIỚI THIỆU C&Ocirc;NG TY RIKAGAKU&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/337869269965924/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>337869269965924/</a><br />\r\n<br />\r\n<strong>31. VIDEO: NGƯỜI NHẬT SO S&Aacute;NH PHẤN RIKAGAKU V&Agrave; MỘT LOẠI PHẤN KH&Aacute;C ĐƯỢC B&Aacute;N Ở DAISO&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/videos/338216679931183/\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/videos/</span>338216679931183/</a><br />\r\n<br />\r\n32. TH&Ocirc;NG B&Aacute;O NHẬN ORDER BẢNG NHẬT<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/339038786515639\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>339038786515639</a><br />\r\n<br />\r\n33. SỰ KIỆN PARTY SỬ DỤNG PHẤN M&Agrave;U HUỲNH QUANG RIKAGAKU<br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/339430026476515\" rel=\"nofollow\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\"><span style=\"font-family:inherit\">https://www.facebook.com/</span><span style=\"font-family:inherit\">phankhongbuii/posts/</span>339430026476515</a><br />\r\n<br />\r\n34. VIDEO: SO S&Aacute;NH ĐỘ HAO M&Ograve;N GIỮA PHẤN RIKGAKU V&Agrave; PHẤN VIỆT NAM </span></p>\r\n\r\n<p><a class=\"profileLink\" href=\"https://www.facebook.com/phankhongbuii/videos/340423216377196/?fref=mentions\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/phankhongbuii/videos/340423216377196/</a></p>\r\n\r\n<p>35. TH&Ocirc;NG B&Aacute;O V&Agrave; CHƯƠNG TR&Igrave;NH KHUYẾN M&Atilde;I D&Agrave;NH CHO KH&Aacute;CH H&Agrave;NG KHU VỰC MIỀN NAM<br />\r\n<a class=\"profileLink\" href=\"https://www.facebook.com/phankhongbuii/photos/a.304658313287020.1073741829.304620933290758/342254469527404/?type=3&amp;fref=mentions\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/phankhongbuii/photos/a.304658313287020.1073741829.304620933290758/342254469527404/?type=3&amp;theater</a></p>\r\n\r\n<p>36. GIỚI THIỆU CUỐN S&Aacute;CH: &quot;C&Ocirc;NG TY ẤM &Aacute;P T&Igrave;NH NGƯỜI NHẤT NHẬT BẢN&quot; DO GI&Aacute;M ĐỐC C&Ocirc;NG TY VIẾT V&Agrave; B&Aacute;N ĐƯỢC 60,000 BẢN<br />\r\n<a class=\"profileLink\" href=\"https://www.facebook.com/phankhongbuii/photos/a.304658313287020.1073741829.304620933290758/347055742380610/?type=3&amp;fref=mentions\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/phankhongbuii/photos/a.304658313287020.1073741829.304620933290758/347055742380610/?type=3</a></p>\r\n\r\n<p>37. DỊCH S&Aacute;CH (PHẦN 1): &quot;MỞ ĐẦU&quot;<br />\r\n<a class=\"profileLink\" href=\"https://www.facebook.com/notes/ph%E1%BA%A5n-vi%E1%BA%BFt-b%E1%BA%A3ng-rikagaku-nh%E1%BA%ADt-b%E1%BA%A3n/h%E1%BB%8D-l%C3%A0-nh%E1%BB%AFng-ng%C6%B0%E1%BB%9Di-l%C3%A0m-ra-ph%E1%BA%A5n-rikagaku/336785686740949/?fref=mentions\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/notes/ph%E1%BA%A5n-vi%E1%BA%BFt-b%E1%BA%A3ng-rikagaku-nh%E1%BA%ADt-b%E1%BA%A3n/h%E1%BB%8D-l%C3%A0-nh%E1%BB%AFng-ng%C6%B0%E1%BB%9Di-l%C3%A0m-ra-ph%E1%BA%A5n-rikagaku/336785686740949/</a></p>\r\n\r\n<p><strong>38. VIDEO: SO S&Aacute;NH BỤI GIỮA PHẤN RIKAGAKU V&Agrave; PHẤN VIỆT NAM&nbsp;&nbsp;***</strong><br />\r\n<a class=\"profileLink\" href=\"https://www.facebook.com/phankhongbuii/videos/357069921379192/?fref=mentions\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/phankhongbuii/videos/357069921379192/</a></p>\r\n\r\n<p>39. DỊCH S&Aacute;CH (PHẦN 2): &quot;NIỀM MONG MỎI CỦA NGƯỜI MẸ&quot;<br />\r\n<a class=\"profileLink\" href=\"https://www.facebook.com/notes/ph%E1%BA%A5n-vi%E1%BA%BFt-b%E1%BA%A3ng-rikagaku-nh%E1%BA%ADt-b%E1%BA%A3n/c%C3%B4ng-ty-%E1%BA%A5m-%C3%A1p-t%C3%ACnh-ng%C6%B0%E1%BB%9Di-nh%E1%BA%A5t-nh%E1%BA%ADt-b%E1%BA%A3n-ph%E1%BA%A7n-2/358371164582401/?fref=mentions\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/notes/ph%E1%BA%A5n-vi%E1%BA%BFt-b%E1%BA%A3ng-rikagaku-nh%E1%BA%ADt-b%E1%BA%A3n/c%C3%B4ng-ty-%E1%BA%A5m-%C3%A1p-t%C3%ACnh-ng%C6%B0%E1%BB%9Di-nh%E1%BA%A5t-nh%E1%BA%ADt-b%E1%BA%A3n-ph%E1%BA%A7n-2/358371164582401/</a></p>\r\n\r\n<p><strong>40. VIDEO: HƯỚNG DẪN C&Aacute;CH MỞ HỘP PHẤN V&Agrave; CẦM PHẤN&nbsp;&nbsp;***</strong><br />\r\n<a class=\"profileLink\" href=\"https://www.facebook.com/phankhongbuii/videos/359903581095826/?fref=mentions\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/phankhongbuii/videos/359903581095826/</a></p>\r\n\r\n<p><strong>41. CHƯƠNG TR&Igrave;NH KHUYẾN M&Atilde;I: SALE B&Uacute;T BI X&Oacute;A ĐƯỢC GI&Aacute; RẺ NHẤT THỊ TRƯỜNG&nbsp;&nbsp;***</strong><br />\r\n<a href=\"https://www.facebook.com/phankhongbuii/posts/360224934397024\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/phankhongbuii/posts/360224934397024</a></p>\r\n\r\n<p><strong>42. CHƯƠNG TR&Igrave;NH KHUYẾN M&Atilde;I NH&Acirc;N DỊP NĂM HỌC MỚI&nbsp;&nbsp;***</strong><br />\r\n<a class=\"profileLink\" href=\"https://www.facebook.com/phankhongbuii/photos/a.304658313287020.1073741829.304620933290758/362953520790832/?type=3&amp;fref=mentions\" style=\"color: rgb(54, 88, 153); cursor: pointer; text-decoration-line: none; font-family: inherit;\">https://www.facebook.com/phankhongbuii/photos/a.304658313287020.1073741829.304620933290758/362953520790832/?type=3&amp;theater</a></p>\r\n', 'images/posts/tong-hop-link-cac-bai-viet-tren-fanpage.png', 'Danh sách các bài viết của Fanpage theo thứ tự từ cũ đến mới nhất', null, '308', '0', '2017-08-16 11:01:44', '2017-08-17 07:23:07', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Số 1 Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, ít bụi và nguyên liệu an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('523', null, null, 'PHẢN HỒI CỦA KHÁCH HÀNG', 'phan-hoi-cua-khach-hang-pwf-dvu_qEq', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/17973792_312311392521712_7802466390714939776_o%20(1).jpg\" style=\"height:500px; width:281px\" /></td>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18193220_318908781861973_1715030997856406141_o.jpg\" style=\"height:500px; width:282px\" /></td>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18209074_318908668528651_1668924251348791102_o.jpg\" style=\"height:500px; width:282px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18358744_321148541637997_8831305379270417915_o.jpg\" style=\"height:350px; width:300px\" /></td>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18403969_322248481528003_7100051910867772899_o.jpg\" style=\"height:500px; width:281px\" /></td>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18422885_322248458194672_6625296446051171725_o.jpg\" style=\"height:500px; width:281px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18518025_325682354517949_294731863047437634_o.jpg\" style=\"height:418px; width:300px\" /></td>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18558614_324871341265717_2461319072742668942_o.jpg\" style=\"height:500px; width:281px\" /></td>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/19238037_337659496653568_7645899517735685678_o.jpg\" style=\"height:500px; width:281px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/19390671_340697263016458_6218243436937561715_o.jpg\" style=\"height:500px; width:281px\" /></td>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/19390856_339901689762682_1923235925168862567_o.jpg\" style=\"height:500px; width:281px\" /></td>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/19466473_340700876349430_4040505496462148357_o.jpg\" style=\"height:500px; width:281px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><img alt=\"\" src=\"/public/packages/ecnet/admin/assets/elfinder/php/../files/18359288_322391518180366_5088271516365542743_o.jpg\" style=\"height:500px; width:281px\" /></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 'images/posts/phan-hoi-cua-khach-hang.jpg', 'Phản hồi của khách hàng là thước đo chất lượng đáng tin cậy nhất', null, '308', '0', '2017-08-17 04:24:06', '2017-08-17 04:57:23', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Số 1 Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, ít bụi và nguyên liệu an toàn cho sức khoẻ.', '0', null, null, null);
INSERT INTO `pages` VALUES ('524', null, null, 'CHƯƠNG TRÌNH KHUYẾN MÃI NHÂN DỊP NĂM HỌC MỚI', 'chuong-trinh-khuyen-mai-nhan-dip-nam-hoc-moi-g7c_MQK', '<p style=\"text-align:center\"><span style=\"font-family:helvetica,arial,sans-serif; font-size:14px\">Sắp bước v&agrave;o năm học mới rồi, shop xin gửi tặng tới&nbsp;qu&yacute; kh&aacute;ch h&agrave;ng l&agrave; những thầy c&ocirc;, </span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:helvetica,arial,sans-serif; font-size:14px\">l&agrave; c&aacute;c bậc phụ huynh quan t&acirc;m tới sức khỏe của bản th&acirc;n v&agrave; con em m&igrave;nh m&oacute;n qu&agrave; đầu năm học.&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:helvetica,arial,sans-serif; font-size:14px\">Ch&uacute;c c&aacute;c thầy c&ocirc; v&agrave; c&aacute;c em học sinh sẽ c&oacute; một năm học vui, khỏe v&agrave; &yacute; nghĩa c&ugrave;ng phấn Rikagaku Nhật Bản!</span></p>\r\n', 'images/posts/chuong-trinh-khuyen-mai-nhan-dip-nam-hoc-moi_1.png', 'Thời gian có hạn, hãy nhanh tay lên nhé!', null, '308', '0', '2017-08-17 04:55:58', '2017-08-17 07:28:04', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'rikagaku, phan viet bang nhat ban, phan khong bui, phan khong bui nhat ban', 'Rikagaku - Phấn Không Bụi Số 1 Nhật Bản', 'Phấn Rikagaku Nhật Bản là loại phấn đầu tiên trên thế giới làm từ vỏ sò điệp, có lớp phủ bảo vệ da tay, ít bụi và nguyên liệu an toàn cho sức khoẻ.', '0', null, null, null);

-- ----------------------------
-- Table structure for partners
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of partners
-- ----------------------------

-- ----------------------------
-- Table structure for properties
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'general',
  PRIMARY KEY (`id`),
  KEY `properties_template_id_foreign` (`template_id`),
  KEY `properties_page_id_foreign` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1217 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES ('71', '1', '243', 'Liên hệ', '2015-05-28 04:48:45', '2015-05-28 04:48:45', 'general');
INSERT INTO `properties` VALUES ('767', '1', '407', '1200000', '2017-05-31 04:30:15', '2017-05-31 04:30:15', 'price');
INSERT INTO `properties` VALUES ('768', '4', '407', '10000', '2017-05-31 04:30:15', '2017-05-31 04:30:15', 'discount');
INSERT INTO `properties` VALUES ('769', '5', '407', '12/12/2012', '2017-05-31 04:30:15', '2017-05-31 04:30:15', 'product_date');
INSERT INTO `properties` VALUES ('770', '7', '407', 'Viet Nam', '2017-05-31 04:30:15', '2017-05-31 04:30:15', 'product_place');
INSERT INTO `properties` VALUES ('771', '1', '408', '1000000', '2017-05-31 04:30:50', '2017-05-31 04:30:50', 'price');
INSERT INTO `properties` VALUES ('772', '4', '408', '1000', '2017-05-31 04:30:50', '2017-05-31 04:30:50', 'discount');
INSERT INTO `properties` VALUES ('773', '5', '408', '21/12/2016', '2017-05-31 04:30:50', '2017-05-31 04:30:50', 'product_date');
INSERT INTO `properties` VALUES ('774', '7', '408', 'Viet Nam', '2017-05-31 04:30:50', '2017-05-31 04:30:50', 'product_place');
INSERT INTO `properties` VALUES ('775', '1', '409', '130000', '2017-05-31 04:31:24', '2017-05-31 04:31:24', 'price');
INSERT INTO `properties` VALUES ('776', '4', '409', '1000', '2017-05-31 04:31:24', '2017-05-31 04:31:24', 'discount');
INSERT INTO `properties` VALUES ('777', '5', '409', '12/12/2012', '2017-05-31 04:31:24', '2017-05-31 04:31:24', 'product_date');
INSERT INTO `properties` VALUES ('778', '7', '409', 'Việt Nam', '2017-05-31 04:31:24', '2017-05-31 04:31:24', 'product_place');
INSERT INTO `properties` VALUES ('779', '1', '410', '1200000', '2017-05-31 09:29:29', '2017-05-31 09:29:29', 'price');
INSERT INTO `properties` VALUES ('780', '4', '410', '1000', '2017-05-31 09:29:29', '2017-05-31 09:29:29', 'discount');
INSERT INTO `properties` VALUES ('781', '5', '410', '12/12/2012', '2017-05-31 09:29:29', '2017-05-31 09:29:29', 'product_date');
INSERT INTO `properties` VALUES ('782', '7', '410', 'Việt Nam', '2017-05-31 09:29:29', '2017-05-31 09:29:29', 'product_place');
INSERT INTO `properties` VALUES ('783', '1', '411', '1200000', '2017-05-31 09:30:21', '2017-05-31 09:30:21', 'price');
INSERT INTO `properties` VALUES ('784', '4', '411', '1000', '2017-05-31 09:30:21', '2017-05-31 09:30:21', 'discount');
INSERT INTO `properties` VALUES ('785', '5', '411', '12/12/2012', '2017-05-31 09:30:21', '2017-05-31 09:30:21', 'product_date');
INSERT INTO `properties` VALUES ('786', '7', '411', 'Việt Nam', '2017-05-31 09:30:21', '2017-05-31 09:30:21', 'product_place');
INSERT INTO `properties` VALUES ('823', '1', '406', '12000', '2017-06-01 06:16:53', '2017-06-01 06:16:53', 'price');
INSERT INTO `properties` VALUES ('824', '4', '406', '1000', '2017-06-01 06:16:53', '2017-06-01 06:16:53', 'discount');
INSERT INTO `properties` VALUES ('825', '5', '406', '21/12/2016', '2017-06-01 06:16:53', '2017-06-01 06:16:53', 'product_date');
INSERT INTO `properties` VALUES ('826', '7', '406', 'Việt Nam', '2017-06-01 06:16:53', '2017-06-01 06:16:53', 'product_place');
INSERT INTO `properties` VALUES ('827', '1', '414', '1200000', '2017-06-01 08:59:01', '2017-06-01 08:59:01', 'price');
INSERT INTO `properties` VALUES ('828', '4', '414', '10000', '2017-06-01 08:59:01', '2017-06-01 08:59:01', 'discount');
INSERT INTO `properties` VALUES ('829', '5', '414', '12/12/2012', '2017-06-01 08:59:01', '2017-06-01 08:59:01', 'product_date');
INSERT INTO `properties` VALUES ('830', '7', '414', 'Viet Nam', '2017-06-01 08:59:01', '2017-06-01 08:59:01', 'product_place');
INSERT INTO `properties` VALUES ('831', '1', '415', '1200000', '2017-06-05 10:00:54', '2017-06-05 10:00:54', 'price');
INSERT INTO `properties` VALUES ('832', '4', '415', '1000', '2017-06-05 10:00:54', '2017-06-05 10:00:54', 'discount');
INSERT INTO `properties` VALUES ('833', '5', '415', '21/12/2016', '2017-06-05 10:00:54', '2017-06-05 10:00:54', 'product_date');
INSERT INTO `properties` VALUES ('834', '7', '415', 'Viet Nam', '2017-06-05 10:00:54', '2017-06-05 10:00:54', 'product_place');
INSERT INTO `properties` VALUES ('835', '1', '416', '1200000', '2017-06-05 10:01:20', '2017-06-05 10:01:20', 'price');
INSERT INTO `properties` VALUES ('836', '4', '416', '10000', '2017-06-05 10:01:20', '2017-06-05 10:01:20', 'discount');
INSERT INTO `properties` VALUES ('837', '5', '416', '12/12/2012', '2017-06-05 10:01:20', '2017-06-05 10:01:20', 'product_date');
INSERT INTO `properties` VALUES ('838', '7', '416', 'Viet Nam', '2017-06-05 10:01:20', '2017-06-05 10:01:20', 'product_place');
INSERT INTO `properties` VALUES ('839', '1', '417', '1200000', '2017-06-05 10:02:13', '2017-06-05 10:02:13', 'price');
INSERT INTO `properties` VALUES ('840', '4', '417', '1000', '2017-06-05 10:02:13', '2017-06-05 10:02:13', 'discount');
INSERT INTO `properties` VALUES ('841', '5', '417', '21/12/2016', '2017-06-05 10:02:13', '2017-06-05 10:02:13', 'product_date');
INSERT INTO `properties` VALUES ('842', '7', '417', 'Viet Nam', '2017-06-05 10:02:13', '2017-06-05 10:02:13', 'product_place');
INSERT INTO `properties` VALUES ('843', '1', '418', '1200000', '2017-06-05 10:23:38', '2017-06-05 10:23:38', 'price');
INSERT INTO `properties` VALUES ('844', '4', '418', '1000', '2017-06-05 10:23:38', '2017-06-05 10:23:38', 'discount');
INSERT INTO `properties` VALUES ('845', '5', '418', '12/12/2012', '2017-06-05 10:23:38', '2017-06-05 10:23:38', 'product_date');
INSERT INTO `properties` VALUES ('846', '7', '418', 'Viet Nam', '2017-06-05 10:23:38', '2017-06-05 10:23:38', 'product_place');
INSERT INTO `properties` VALUES ('847', '1', '419', '1200000', '2017-06-05 10:25:27', '2017-06-05 10:25:27', 'price');
INSERT INTO `properties` VALUES ('848', '4', '419', '1000', '2017-06-05 10:25:27', '2017-06-05 10:25:27', 'discount');
INSERT INTO `properties` VALUES ('849', '5', '419', '12/12/2012', '2017-06-05 10:25:27', '2017-06-05 10:25:27', 'product_date');
INSERT INTO `properties` VALUES ('850', '7', '419', 'Viet Nam', '2017-06-05 10:25:27', '2017-06-05 10:25:27', 'product_place');
INSERT INTO `properties` VALUES ('851', '1', '420', '42000000', '2017-06-05 10:32:17', '2017-06-05 10:32:17', 'price');
INSERT INTO `properties` VALUES ('852', '4', '420', '10000', '2017-06-05 10:32:17', '2017-06-05 10:32:17', 'discount');
INSERT INTO `properties` VALUES ('853', '5', '420', '21/12/2016', '2017-06-05 10:32:17', '2017-06-05 10:32:17', 'product_date');
INSERT INTO `properties` VALUES ('854', '7', '420', 'Viet Nam', '2017-06-05 10:32:17', '2017-06-05 10:32:17', 'product_place');
INSERT INTO `properties` VALUES ('855', '1', '421', '1000000', '2017-06-05 10:34:03', '2017-06-05 10:34:03', 'price');
INSERT INTO `properties` VALUES ('856', '4', '421', '10000', '2017-06-05 10:34:03', '2017-06-05 10:34:03', 'discount');
INSERT INTO `properties` VALUES ('857', '5', '421', '21/12/2016', '2017-06-05 10:34:03', '2017-06-05 10:34:03', 'product_date');
INSERT INTO `properties` VALUES ('858', '7', '421', 'Viet Nam', '2017-06-05 10:34:03', '2017-06-05 10:34:03', 'product_place');
INSERT INTO `properties` VALUES ('859', '1', '422', '3130000', '2017-06-05 10:35:08', '2017-06-05 10:35:08', 'price');
INSERT INTO `properties` VALUES ('860', '4', '422', '1000', '2017-06-05 10:35:08', '2017-06-05 10:35:08', 'discount');
INSERT INTO `properties` VALUES ('861', '5', '422', '21/11/2017', '2017-06-05 10:35:08', '2017-06-05 10:35:08', 'product_date');
INSERT INTO `properties` VALUES ('862', '7', '422', 'Viet Nam', '2017-06-05 10:35:08', '2017-06-05 10:35:08', 'product_place');
INSERT INTO `properties` VALUES ('863', '1', '423', '4130000', '2017-06-05 10:36:03', '2017-06-05 10:36:03', 'price');
INSERT INTO `properties` VALUES ('864', '4', '423', '10000', '2017-06-05 10:36:03', '2017-06-05 10:36:03', 'discount');
INSERT INTO `properties` VALUES ('865', '5', '423', '31/12/2016', '2017-06-05 10:36:03', '2017-06-05 10:36:03', 'product_date');
INSERT INTO `properties` VALUES ('866', '7', '423', 'Viet Nam', '2017-06-05 10:36:03', '2017-06-05 10:36:03', 'product_place');
INSERT INTO `properties` VALUES ('867', '1', '424', '2130000', '2017-06-05 10:37:04', '2017-06-05 10:37:04', 'price');
INSERT INTO `properties` VALUES ('868', '4', '424', '10000', '2017-06-05 10:37:04', '2017-06-05 10:37:04', 'discount');
INSERT INTO `properties` VALUES ('869', '5', '424', '31/12/2016', '2017-06-05 10:37:04', '2017-06-05 10:37:04', 'product_date');
INSERT INTO `properties` VALUES ('870', '7', '424', 'Viet Nam', '2017-06-05 10:37:04', '2017-06-05 10:37:04', 'product_place');
INSERT INTO `properties` VALUES ('871', '1', '425', '1200000', '2017-06-05 10:37:49', '2017-06-05 10:37:49', 'price');
INSERT INTO `properties` VALUES ('872', '4', '425', '1000', '2017-06-05 10:37:49', '2017-06-05 10:37:49', 'discount');
INSERT INTO `properties` VALUES ('873', '5', '425', '21/12/2016', '2017-06-05 10:37:49', '2017-06-05 10:37:49', 'product_date');
INSERT INTO `properties` VALUES ('874', '7', '425', 'Viet Nam', '2017-06-05 10:37:49', '2017-06-05 10:37:49', 'product_place');
INSERT INTO `properties` VALUES ('875', '1', '426', '3200000', '2017-06-05 10:38:51', '2017-06-05 10:38:51', 'price');
INSERT INTO `properties` VALUES ('876', '4', '426', '12000', '2017-06-05 10:38:51', '2017-06-05 10:38:51', 'discount');
INSERT INTO `properties` VALUES ('877', '5', '426', '21/12/2016', '2017-06-05 10:38:51', '2017-06-05 10:38:51', 'product_date');
INSERT INTO `properties` VALUES ('878', '7', '426', 'Viet Nam', '2017-06-05 10:38:51', '2017-06-05 10:38:51', 'product_place');
INSERT INTO `properties` VALUES ('879', '1', '427', '15000000', '2017-06-05 10:39:37', '2017-06-05 10:39:37', 'price');
INSERT INTO `properties` VALUES ('880', '4', '427', '10000', '2017-06-05 10:39:37', '2017-06-05 10:39:37', 'discount');
INSERT INTO `properties` VALUES ('881', '5', '427', '21/12/2016', '2017-06-05 10:39:37', '2017-06-05 10:39:37', 'product_date');
INSERT INTO `properties` VALUES ('882', '7', '427', 'Viet Nam', '2017-06-05 10:39:37', '2017-06-05 10:39:37', 'product_place');
INSERT INTO `properties` VALUES ('883', '1', '428', '4200000', '2017-06-05 10:40:27', '2017-06-05 10:40:27', 'price');
INSERT INTO `properties` VALUES ('884', '4', '428', '0', '2017-06-05 10:40:27', '2017-06-05 10:40:27', 'discount');
INSERT INTO `properties` VALUES ('885', '5', '428', '21/12/2016', '2017-06-05 10:40:27', '2017-06-05 10:40:27', 'product_date');
INSERT INTO `properties` VALUES ('886', '7', '428', 'Viet Nam', '2017-06-05 10:40:27', '2017-06-05 10:40:27', 'product_place');
INSERT INTO `properties` VALUES ('887', '1', '429', '1200000', '2017-06-05 10:43:55', '2017-06-05 10:43:55', 'price');
INSERT INTO `properties` VALUES ('888', '4', '429', '10000', '2017-06-05 10:43:55', '2017-06-05 10:43:55', 'discount');
INSERT INTO `properties` VALUES ('889', '5', '429', '21/12/2016', '2017-06-05 10:43:55', '2017-06-05 10:43:55', 'product_date');
INSERT INTO `properties` VALUES ('890', '7', '429', 'Viet Nam', '2017-06-05 10:43:55', '2017-06-05 10:43:55', 'product_place');
INSERT INTO `properties` VALUES ('891', '1', '430', '1200000', '2017-06-16 09:11:17', '2017-06-16 09:11:17', 'price');
INSERT INTO `properties` VALUES ('892', '4', '430', '1000', '2017-06-16 09:11:17', '2017-06-16 09:11:17', 'discount');
INSERT INTO `properties` VALUES ('893', '5', '430', '21/12/2016', '2017-06-16 09:11:17', '2017-06-16 09:11:17', 'product_date');
INSERT INTO `properties` VALUES ('894', '7', '430', 'Viet Nam', '2017-06-16 09:11:17', '2017-06-16 09:11:17', 'product_place');
INSERT INTO `properties` VALUES ('895', '1', '431', '15000000', '2017-06-16 09:15:32', '2017-06-16 09:15:32', 'price');
INSERT INTO `properties` VALUES ('896', '4', '431', '100000', '2017-06-16 09:15:32', '2017-06-16 09:15:32', 'discount');
INSERT INTO `properties` VALUES ('897', '5', '431', '12/12/2012', '2017-06-16 09:15:32', '2017-06-16 09:15:32', 'product_date');
INSERT INTO `properties` VALUES ('898', '7', '431', 'Viet Nam', '2017-06-16 09:15:32', '2017-06-16 09:15:32', 'product_place');
INSERT INTO `properties` VALUES ('899', '1', '432', '13000000', '2017-06-16 09:16:49', '2017-06-16 09:16:49', 'price');
INSERT INTO `properties` VALUES ('900', '4', '432', '150000', '2017-06-16 09:16:49', '2017-06-16 09:16:49', 'discount');
INSERT INTO `properties` VALUES ('901', '5', '432', '31/12/2016', '2017-06-16 09:16:49', '2017-06-16 09:16:49', 'product_date');
INSERT INTO `properties` VALUES ('902', '7', '432', 'Viet Nam', '2017-06-16 09:16:49', '2017-06-16 09:16:49', 'product_place');
INSERT INTO `properties` VALUES ('903', '1', '433', '2000000', '2017-06-16 09:18:01', '2017-06-16 09:18:01', 'price');
INSERT INTO `properties` VALUES ('904', '4', '433', '12000', '2017-06-16 09:18:01', '2017-06-16 09:18:01', 'discount');
INSERT INTO `properties` VALUES ('905', '5', '433', '29/5/2017', '2017-06-16 09:18:01', '2017-06-16 09:18:01', 'product_date');
INSERT INTO `properties` VALUES ('906', '7', '433', 'Viet Nam', '2017-06-16 09:18:01', '2017-06-16 09:18:01', 'product_place');
INSERT INTO `properties` VALUES ('907', '1', '434', '1000000', '2017-06-16 09:18:49', '2017-06-16 09:18:49', 'price');
INSERT INTO `properties` VALUES ('908', '4', '434', '1000', '2017-06-16 09:18:49', '2017-06-16 09:18:49', 'discount');
INSERT INTO `properties` VALUES ('909', '5', '434', '21/12/2016', '2017-06-16 09:18:49', '2017-06-16 09:18:49', 'product_date');
INSERT INTO `properties` VALUES ('910', '7', '434', 'Viet Nam', '2017-06-16 09:18:49', '2017-06-16 09:18:49', 'product_place');
INSERT INTO `properties` VALUES ('911', '1', '435', '1000000', '2017-06-16 09:34:12', '2017-06-16 09:34:12', 'price');
INSERT INTO `properties` VALUES ('912', '4', '435', '1000', '2017-06-16 09:34:12', '2017-06-16 09:34:12', 'discount');
INSERT INTO `properties` VALUES ('913', '5', '435', '21/12/2016', '2017-06-16 09:34:12', '2017-06-16 09:34:12', 'product_date');
INSERT INTO `properties` VALUES ('914', '7', '435', 'Viet Nam', '2017-06-16 09:34:12', '2017-06-16 09:34:12', 'product_place');
INSERT INTO `properties` VALUES ('915', '1', '436', '1200000', '2017-06-16 09:40:43', '2017-06-16 09:40:43', 'price');
INSERT INTO `properties` VALUES ('916', '4', '436', '1000', '2017-06-16 09:40:43', '2017-06-16 09:40:43', 'discount');
INSERT INTO `properties` VALUES ('917', '5', '436', '21/12/2016', '2017-06-16 09:40:43', '2017-06-16 09:40:43', 'product_date');
INSERT INTO `properties` VALUES ('918', '7', '436', 'Viet Nam', '2017-06-16 09:40:43', '2017-06-16 09:40:43', 'product_place');
INSERT INTO `properties` VALUES ('919', '1', '437', '1000000', '2017-06-16 09:41:31', '2017-06-16 09:41:31', 'price');
INSERT INTO `properties` VALUES ('920', '4', '437', '10000', '2017-06-16 09:41:31', '2017-06-16 09:41:31', 'discount');
INSERT INTO `properties` VALUES ('921', '5', '437', '21/12/2016', '2017-06-16 09:41:31', '2017-06-16 09:41:31', 'product_date');
INSERT INTO `properties` VALUES ('922', '7', '437', 'Viet Nam', '2017-06-16 09:41:31', '2017-06-16 09:41:31', 'product_place');
INSERT INTO `properties` VALUES ('923', '1', '438', '1000000', '2017-06-16 09:43:03', '2017-06-16 09:43:03', 'price');
INSERT INTO `properties` VALUES ('924', '4', '438', '12000', '2017-06-16 09:43:03', '2017-06-16 09:43:03', 'discount');
INSERT INTO `properties` VALUES ('925', '5', '438', '21/12/2016', '2017-06-16 09:43:03', '2017-06-16 09:43:03', 'product_date');
INSERT INTO `properties` VALUES ('926', '7', '438', 'Viet Nam', '2017-06-16 09:43:03', '2017-06-16 09:43:03', 'product_place');
INSERT INTO `properties` VALUES ('927', '1', '439', '1200000', '2017-06-16 09:43:59', '2017-06-16 09:43:59', 'price');
INSERT INTO `properties` VALUES ('928', '4', '439', '10000', '2017-06-16 09:43:59', '2017-06-16 09:43:59', 'discount');
INSERT INTO `properties` VALUES ('929', '5', '439', '21/12/2016', '2017-06-16 09:43:59', '2017-06-16 09:43:59', 'product_date');
INSERT INTO `properties` VALUES ('930', '7', '439', 'Viet Nam', '2017-06-16 09:43:59', '2017-06-16 09:43:59', 'product_place');
INSERT INTO `properties` VALUES ('931', '1', '440', '1000000', '2017-06-16 09:44:48', '2017-06-16 09:44:48', 'price');
INSERT INTO `properties` VALUES ('932', '4', '440', '10000', '2017-06-16 09:44:48', '2017-06-16 09:44:48', 'discount');
INSERT INTO `properties` VALUES ('933', '5', '440', '21/12/2016', '2017-06-16 09:44:48', '2017-06-16 09:44:48', 'product_date');
INSERT INTO `properties` VALUES ('934', '7', '440', 'Viet Nam', '2017-06-16 09:44:48', '2017-06-16 09:44:48', 'product_place');
INSERT INTO `properties` VALUES ('943', '1', '441', '130000', '2017-06-19 06:43:20', '2017-06-19 06:43:20', 'price');
INSERT INTO `properties` VALUES ('944', '4', '441', '1000', '2017-06-19 06:43:20', '2017-06-19 06:43:20', 'discount');
INSERT INTO `properties` VALUES ('945', '5', '441', '21/12/2016', '2017-06-19 06:43:20', '2017-06-19 06:43:20', 'product_date');
INSERT INTO `properties` VALUES ('946', '7', '441', 'Viet Nam', '2017-06-19 06:43:20', '2017-06-19 06:43:20', 'product_place');
INSERT INTO `properties` VALUES ('995', '1', '469', '1200000', '2017-07-14 01:32:49', '2017-07-14 01:32:49', 'price');
INSERT INTO `properties` VALUES ('996', '4', '469', '1000', '2017-07-14 01:32:49', '2017-07-14 01:32:49', 'discount');
INSERT INTO `properties` VALUES ('997', '7', '469', 'Viet Nam', '2017-07-14 01:32:49', '2017-07-14 01:32:49', 'product_place');
INSERT INTO `properties` VALUES ('1007', '1', '457', '1200000', '2017-07-18 08:25:23', '2017-07-18 08:25:23', 'price');
INSERT INTO `properties` VALUES ('1008', '4', '457', '1000', '2017-07-18 08:25:23', '2017-07-18 08:25:23', 'discount');
INSERT INTO `properties` VALUES ('1009', '7', '457', 'Viet Nam', '2017-07-18 08:25:23', '2017-07-18 08:25:23', 'product_place');
INSERT INTO `properties` VALUES ('1013', '1', '456', '1000000', '2017-07-18 08:25:32', '2017-07-18 08:25:32', 'price');
INSERT INTO `properties` VALUES ('1014', '4', '456', '1000', '2017-07-18 08:25:32', '2017-07-18 08:25:32', 'discount');
INSERT INTO `properties` VALUES ('1015', '7', '456', 'Viet Nam', '2017-07-18 08:25:32', '2017-07-18 08:25:32', 'product_place');
INSERT INTO `properties` VALUES ('1019', '1', '455', '1000000', '2017-07-18 08:25:41', '2017-07-18 08:25:41', 'price');
INSERT INTO `properties` VALUES ('1020', '4', '455', '1000', '2017-07-18 08:25:41', '2017-07-18 08:25:41', 'discount');
INSERT INTO `properties` VALUES ('1021', '7', '455', 'Viet Nam', '2017-07-18 08:25:41', '2017-07-18 08:25:41', 'product_place');
INSERT INTO `properties` VALUES ('1025', '1', '454', '1200000', '2017-07-18 08:25:49', '2017-07-18 08:25:49', 'price');
INSERT INTO `properties` VALUES ('1026', '4', '454', '1000', '2017-07-18 08:25:49', '2017-07-18 08:25:49', 'discount');
INSERT INTO `properties` VALUES ('1027', '7', '454', 'Viet Nam', '2017-07-18 08:25:49', '2017-07-18 08:25:49', 'product_place');
INSERT INTO `properties` VALUES ('1031', '1', '453', '1200000', '2017-07-18 08:25:57', '2017-07-18 08:25:57', 'price');
INSERT INTO `properties` VALUES ('1032', '4', '453', '1000', '2017-07-18 08:25:57', '2017-07-18 08:25:57', 'discount');
INSERT INTO `properties` VALUES ('1033', '7', '453', 'Viet Nam', '2017-07-18 08:25:57', '2017-07-18 08:25:57', 'product_place');
INSERT INTO `properties` VALUES ('1037', '1', '452', '1000000', '2017-07-18 08:26:04', '2017-07-18 08:26:04', 'price');
INSERT INTO `properties` VALUES ('1038', '4', '452', '1000', '2017-07-18 08:26:04', '2017-07-18 08:26:04', 'discount');
INSERT INTO `properties` VALUES ('1039', '7', '452', 'Viet Nam', '2017-07-18 08:26:04', '2017-07-18 08:26:04', 'product_place');
INSERT INTO `properties` VALUES ('1043', '1', '451', '1200000', '2017-07-18 08:26:11', '2017-07-18 08:26:11', 'price');
INSERT INTO `properties` VALUES ('1044', '4', '451', '1000', '2017-07-18 08:26:11', '2017-07-18 08:26:11', 'discount');
INSERT INTO `properties` VALUES ('1045', '7', '451', 'Viet Nam', '2017-07-18 08:26:11', '2017-07-18 08:26:11', 'product_place');
INSERT INTO `properties` VALUES ('1049', '1', '450', '1200000', '2017-07-18 08:26:18', '2017-07-18 08:26:18', 'price');
INSERT INTO `properties` VALUES ('1050', '4', '450', '1000', '2017-07-18 08:26:18', '2017-07-18 08:26:18', 'discount');
INSERT INTO `properties` VALUES ('1051', '7', '450', 'Viet Nam', '2017-07-18 08:26:18', '2017-07-18 08:26:18', 'product_place');
INSERT INTO `properties` VALUES ('1055', '1', '449', '1200000', '2017-07-18 08:26:24', '2017-07-18 08:26:24', 'price');
INSERT INTO `properties` VALUES ('1056', '4', '449', '1000', '2017-07-18 08:26:24', '2017-07-18 08:26:24', 'discount');
INSERT INTO `properties` VALUES ('1057', '7', '449', 'Viet Nam', '2017-07-18 08:26:24', '2017-07-18 08:26:24', 'product_place');
INSERT INTO `properties` VALUES ('1058', '1', '490', '24234324', '2017-07-24 01:12:24', '2017-07-24 01:12:24', 'price');
INSERT INTO `properties` VALUES ('1059', '4', '490', '0212121', '2017-07-24 01:12:24', '2017-07-24 01:12:24', 'discount');
INSERT INTO `properties` VALUES ('1060', '7', '490', 'dfsdfsd', '2017-07-24 01:12:24', '2017-07-24 01:12:24', 'product_place');
INSERT INTO `properties` VALUES ('1061', '1', '496', '21212', '2017-07-24 09:04:49', '2017-07-24 09:04:49', 'price');
INSERT INTO `properties` VALUES ('1062', '4', '496', '12121', '2017-07-24 09:04:49', '2017-07-24 09:04:49', 'discount');
INSERT INTO `properties` VALUES ('1063', '7', '496', 'fdgdfgdf', '2017-07-24 09:04:49', '2017-07-24 09:04:49', 'product_place');
INSERT INTO `properties` VALUES ('1073', '1', '458', '350000', '2017-08-16 08:19:07', '2017-08-16 08:19:07', 'price');
INSERT INTO `properties` VALUES ('1074', '4', '458', '', '2017-08-16 08:19:07', '2017-08-16 08:19:07', 'discount');
INSERT INTO `properties` VALUES ('1075', '7', '458', 'Nhật Bản', '2017-08-16 08:19:07', '2017-08-16 08:19:07', 'product_place');
INSERT INTO `properties` VALUES ('1076', '1', '501', '350000', '2017-08-16 09:05:03', '2017-08-16 09:05:03', 'price');
INSERT INTO `properties` VALUES ('1077', '4', '501', '0', '2017-08-16 09:05:03', '2017-08-16 09:05:03', 'discount');
INSERT INTO `properties` VALUES ('1078', '7', '501', 'Nhật Bản', '2017-08-16 09:05:03', '2017-08-16 09:05:03', 'product_place');
INSERT INTO `properties` VALUES ('1079', '1', '502', '350000', '2017-08-16 09:14:42', '2017-08-16 09:14:42', 'price');
INSERT INTO `properties` VALUES ('1080', '4', '502', '0', '2017-08-16 09:14:42', '2017-08-16 09:14:42', 'discount');
INSERT INTO `properties` VALUES ('1081', '7', '502', 'Nhật Bản', '2017-08-16 09:14:42', '2017-08-16 09:14:42', 'product_place');
INSERT INTO `properties` VALUES ('1082', '1', '503', '490000', '2017-08-16 09:16:23', '2017-08-16 09:16:23', 'price');
INSERT INTO `properties` VALUES ('1083', '4', '503', '0', '2017-08-16 09:16:23', '2017-08-16 09:16:23', 'discount');
INSERT INTO `properties` VALUES ('1084', '7', '503', 'Nhật Bản', '2017-08-16 09:16:23', '2017-08-16 09:16:23', 'product_place');
INSERT INTO `properties` VALUES ('1085', '1', '504', '550000', '2017-08-16 09:17:33', '2017-08-16 09:17:33', 'price');
INSERT INTO `properties` VALUES ('1086', '4', '504', '0', '2017-08-16 09:17:33', '2017-08-16 09:17:33', 'discount');
INSERT INTO `properties` VALUES ('1087', '7', '504', 'Nhật Bản', '2017-08-16 09:17:33', '2017-08-16 09:17:33', 'product_place');
INSERT INTO `properties` VALUES ('1088', '1', '505', '45000', '2017-08-16 09:18:38', '2017-08-16 09:18:38', 'price');
INSERT INTO `properties` VALUES ('1089', '4', '505', '0', '2017-08-16 09:18:38', '2017-08-16 09:18:38', 'discount');
INSERT INTO `properties` VALUES ('1090', '7', '505', 'Nhật Bản', '2017-08-16 09:18:38', '2017-08-16 09:18:38', 'product_place');
INSERT INTO `properties` VALUES ('1091', '1', '506', '60000', '2017-08-16 09:19:36', '2017-08-16 09:19:36', 'price');
INSERT INTO `properties` VALUES ('1092', '4', '506', '0', '2017-08-16 09:19:36', '2017-08-16 09:19:36', 'discount');
INSERT INTO `properties` VALUES ('1093', '7', '506', 'Nhật Bản', '2017-08-16 09:19:36', '2017-08-16 09:19:36', 'product_place');
INSERT INTO `properties` VALUES ('1094', '1', '507', '5000', '2017-08-16 09:21:31', '2017-08-16 09:21:31', 'price');
INSERT INTO `properties` VALUES ('1095', '4', '507', '0', '2017-08-16 09:21:31', '2017-08-16 09:21:31', 'discount');
INSERT INTO `properties` VALUES ('1096', '7', '507', 'Nhật Bản', '2017-08-16 09:21:31', '2017-08-16 09:21:31', 'product_place');
INSERT INTO `properties` VALUES ('1097', '1', '508', '7000', '2017-08-16 09:22:11', '2017-08-16 09:22:11', 'price');
INSERT INTO `properties` VALUES ('1098', '4', '508', '0', '2017-08-16 09:22:11', '2017-08-16 09:22:11', 'discount');
INSERT INTO `properties` VALUES ('1099', '7', '508', 'Nhật Bản', '2017-08-16 09:22:11', '2017-08-16 09:22:11', 'product_place');
INSERT INTO `properties` VALUES ('1100', '1', '509', '8000', '2017-08-16 09:22:51', '2017-08-16 09:22:51', 'price');
INSERT INTO `properties` VALUES ('1101', '4', '509', '0', '2017-08-16 09:22:51', '2017-08-16 09:22:51', 'discount');
INSERT INTO `properties` VALUES ('1102', '7', '509', 'Nhật Bản', '2017-08-16 09:22:51', '2017-08-16 09:22:51', 'product_place');
INSERT INTO `properties` VALUES ('1136', '1', '513', '180000', '2017-08-16 09:31:30', '2017-08-16 09:31:30', 'price');
INSERT INTO `properties` VALUES ('1137', '4', '513', '195000', '2017-08-16 09:31:30', '2017-08-16 09:31:30', 'discount');
INSERT INTO `properties` VALUES ('1138', '7', '513', 'Nhật Bản', '2017-08-16 09:31:30', '2017-08-16 09:31:30', 'product_place');
INSERT INTO `properties` VALUES ('1142', '1', '512', '65000', '2017-08-16 09:33:46', '2017-08-16 09:33:46', 'price');
INSERT INTO `properties` VALUES ('1143', '4', '512', '70000', '2017-08-16 09:33:46', '2017-08-16 09:33:46', 'discount');
INSERT INTO `properties` VALUES ('1144', '7', '512', 'Nhật Bản', '2017-08-16 09:33:46', '2017-08-16 09:33:46', 'product_place');
INSERT INTO `properties` VALUES ('1148', '1', '511', '65000', '2017-08-16 09:33:57', '2017-08-16 09:33:57', 'price');
INSERT INTO `properties` VALUES ('1149', '4', '511', '70000', '2017-08-16 09:33:57', '2017-08-16 09:33:57', 'discount');
INSERT INTO `properties` VALUES ('1150', '7', '511', 'Nhật Bản', '2017-08-16 09:33:57', '2017-08-16 09:33:57', 'product_place');
INSERT INTO `properties` VALUES ('1154', '1', '510', '65000', '2017-08-16 09:34:10', '2017-08-16 09:34:10', 'price');
INSERT INTO `properties` VALUES ('1155', '4', '510', '70000', '2017-08-16 09:34:10', '2017-08-16 09:34:10', 'discount');
INSERT INTO `properties` VALUES ('1156', '7', '510', 'Nhật Bản', '2017-08-16 09:34:10', '2017-08-16 09:34:10', 'product_place');
INSERT INTO `properties` VALUES ('1163', '1', '514', '55000', '2017-08-16 09:36:48', '2017-08-16 09:36:48', 'price');
INSERT INTO `properties` VALUES ('1164', '4', '514', '70000', '2017-08-16 09:36:48', '2017-08-16 09:36:48', 'discount');
INSERT INTO `properties` VALUES ('1165', '7', '514', 'Nhật Bản', '2017-08-16 09:36:48', '2017-08-16 09:36:48', 'product_place');
INSERT INTO `properties` VALUES ('1166', '1', '515', '55000', '2017-08-16 09:37:21', '2017-08-16 09:37:21', 'price');
INSERT INTO `properties` VALUES ('1167', '4', '515', '70000', '2017-08-16 09:37:21', '2017-08-16 09:37:21', 'discount');
INSERT INTO `properties` VALUES ('1168', '7', '515', 'Nhật Bản', '2017-08-16 09:37:21', '2017-08-16 09:37:21', 'product_place');
INSERT INTO `properties` VALUES ('1169', '1', '516', '55000', '2017-08-16 09:38:20', '2017-08-16 09:38:20', 'price');
INSERT INTO `properties` VALUES ('1170', '4', '516', '70000', '2017-08-16 09:38:20', '2017-08-16 09:38:20', 'discount');
INSERT INTO `properties` VALUES ('1171', '7', '516', 'Nhật Bản', '2017-08-16 09:38:20', '2017-08-16 09:38:20', 'product_place');
INSERT INTO `properties` VALUES ('1178', '1', '517', '30000', '2017-08-16 10:22:58', '2017-08-16 10:22:58', 'price');
INSERT INTO `properties` VALUES ('1179', '4', '517', '35000', '2017-08-16 10:22:58', '2017-08-16 10:22:58', 'discount');
INSERT INTO `properties` VALUES ('1180', '7', '517', 'Nhật Bản', '2017-08-16 10:22:58', '2017-08-16 10:22:58', 'product_place');
INSERT INTO `properties` VALUES ('1208', '1', '526', '1111', '2017-08-17 09:13:59', '2017-08-17 09:13:59', 'price');
INSERT INTO `properties` VALUES ('1209', '4', '526', '1111', '2017-08-17 09:13:59', '2017-08-17 09:13:59', 'discount');
INSERT INTO `properties` VALUES ('1210', '7', '526', '1111', '2017-08-17 09:13:59', '2017-08-17 09:13:59', 'product_place');
INSERT INTO `properties` VALUES ('1214', '1', '518', '125000', '2017-08-17 09:43:54', '2017-08-17 09:43:54', 'price');
INSERT INTO `properties` VALUES ('1215', '4', '518', '150000', '2017-08-17 09:43:54', '2017-08-17 09:43:54', 'discount');
INSERT INTO `properties` VALUES ('1216', '7', '518', 'Nhật Bản', '2017-08-17 09:43:54', '2017-08-17 09:43:54', 'product_place');

-- ----------------------------
-- Table structure for property_templates
-- ----------------------------
DROP TABLE IF EXISTS `property_templates`;
CREATE TABLE `property_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of property_templates
-- ----------------------------
INSERT INTO `property_templates` VALUES ('1', 'price', 'Giá sản phẩm', 'product', 'string', '', '2015-05-18 09:59:10', '2015-05-18 10:12:45');
INSERT INTO `property_templates` VALUES ('3', 'brand', 'Nhãn hiệu', 'project', 'string', '', '2015-05-18 10:19:35', '2017-07-18 02:13:38');
INSERT INTO `property_templates` VALUES ('4', 'discount', 'Giảm giá', 'product', 'string', '', '2015-05-25 08:55:35', '2015-05-25 08:55:35');
INSERT INTO `property_templates` VALUES ('7', 'product_place', 'Nơi sản xuất', 'product', 'string', '', '2015-08-15 19:31:08', '2015-08-15 19:31:08');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', '2013-10-06 18:39:16', '2013-10-06 18:39:16');
INSERT INTO `roles` VALUES ('2', 'users', '2013-10-06 18:39:26', '2013-10-06 18:39:26');

-- ----------------------------
-- Table structure for rsliders
-- ----------------------------
DROP TABLE IF EXISTS `rsliders`;
CREATE TABLE `rsliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transiton` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fade',
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of rsliders
-- ----------------------------
INSERT INTO `rsliders` VALUES ('1', 'fade', 'images/sliders/revolution/slider-bg1.jpg', '0', '2013-11-25 17:09:59', '2013-11-25 17:09:59');

-- ----------------------------
-- Table structure for rsliders_elements
-- ----------------------------
DROP TABLE IF EXISTS `rsliders_elements`;
CREATE TABLE `rsliders_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `speed` int(11) NOT NULL DEFAULT '0',
  `start` int(11) NOT NULL DEFAULT '0',
  `easing` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of rsliders_elements
-- ----------------------------

-- ----------------------------
-- Table structure for shopcarts
-- ----------------------------
DROP TABLE IF EXISTS `shopcarts`;
CREATE TABLE `shopcarts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shopcarts
-- ----------------------------

-- ----------------------------
-- Table structure for sliderpacks
-- ----------------------------
DROP TABLE IF EXISTS `sliderpacks`;
CREATE TABLE `sliderpacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_with` int(11) NOT NULL DEFAULT '0',
  `image_height` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliderpacks
-- ----------------------------

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `pack` int(11) NOT NULL DEFAULT '0',
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('75', 'banner', 'banner', '<p>banner</p>\r\n', '2', 'images/sliders/banner.png', '0', '2017-06-19 06:53:02', '2017-07-07 04:44:42', '/htc-u11_v8j');
INSERT INTO `sliders` VALUES ('76', 'slide1', 'slide1', '<p>slide1</p>\r\n', '1', 'images/sliders/slide1.png', '0', '2017-07-07 04:41:36', '2017-07-07 04:41:36', 'slide1');
INSERT INTO `sliders` VALUES ('77', 'slide2', 'slide2', '<p>slide2</p>\r\n', '1', 'images/sliders/slide2.png', '0', '2017-07-07 04:41:52', '2017-07-07 04:41:52', 'slide2');
INSERT INTO `sliders` VALUES ('78', 'slide3', 'slide3', '<p>slide3</p>\r\n', '1', 'images/sliders/slide3.png', '0', '2017-07-07 04:42:10', '2017-07-07 04:42:10', '');

-- ----------------------------
-- Table structure for sliderspacks
-- ----------------------------
DROP TABLE IF EXISTS `sliderspacks`;
CREATE TABLE `sliderspacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_width` int(11) NOT NULL DEFAULT '400',
  `image_height` int(11) NOT NULL DEFAULT '400',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliderspacks
-- ----------------------------
INSERT INTO `sliderspacks` VALUES ('1', 'Main slider', null, 'Slider chính ở trang chủ', '870', '450', '2013-09-21 12:09:26', '2017-06-05 10:46:11');
INSERT INTO `sliderspacks` VALUES ('2', 'banner', null, 'banner', '870', '146', '2017-06-19 06:52:34', '2017-06-19 06:52:34');

-- ----------------------------
-- Table structure for tag_instance
-- ----------------------------
DROP TABLE IF EXISTS `tag_instance`;
CREATE TABLE `tag_instance` (
  `tag` int(11) NOT NULL DEFAULT '0',
  `page` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tag_instance
-- ----------------------------

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for throttle
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of throttle
-- ----------------------------
INSERT INTO `throttle` VALUES ('1', '1', '127.0.0.1', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('2', '2', '127.0.0.1', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('3', '6', '127.0.0.1', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('4', '3', '127.0.0.1', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('5', '1', '113.179.73.117', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('6', '1', '123.26.188.80', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('7', '4', '123.26.188.80', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('8', '1', '192.168.1.223', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('9', '1', '113.179.115.207', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('10', '1', '113.167.75.123', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('11', '4', '113.167.75.123', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('12', '4', '123.26.135.161', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('13', '4', '113.179.71.175', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('14', '4', '113.179.85.199', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('15', '2', '117.7.138.250', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('16', '4', '123.26.140.157', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('17', '4', '118.71.241.45', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('18', '5', '118.71.241.45', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('19', '5', '117.1.80.174', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('20', '1', '118.70.171.229', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('21', '4', '113.179.106.105', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('22', '5', '117.1.89.98', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('23', '5', '42.114.20.216', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('24', '4', '113.179.114.108', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('25', '4', '123.26.144.227', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('26', '2', '118.70.171.229', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('27', '4', '113.179.91.201', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('28', '4', '113.179.104.54', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('29', '4', '113.179.115.143', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('30', '5', '117.1.70.16', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('31', '4', '113.179.64.225', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('32', '4', '123.26.164.229', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('33', '2', '192.168.1.197', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('34', '4', '123.26.141.197', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('35', '4', '123.27.192.131', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('36', '4', '113.167.78.197', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('37', '4', '42.114.30.17', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('38', '2', '113.178.51.22', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('39', '4', '123.27.200.91', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('40', '4', '123.26.135.77', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('41', '4', '113.167.73.101', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('42', '4', '123.26.161.209', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('43', '4', '117.1.64.21', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('44', '4', '117.1.78.23', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('45', '4', '123.26.176.87', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('46', '4', '123.26.159.136', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('47', '4', '117.1.70.12', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('48', '4', '123.26.155.194', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('49', '4', '123.26.129.149', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('50', '4', '123.26.184.25', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('51', '4', '123.26.146.177', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('52', '4', '117.1.100.133', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('53', '4', '113.179.66.155', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('54', '4', '113.179.89.48', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('55', '4', '123.27.192.165', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('56', '4', '113.179.124.69', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('57', '4', '123.26.137.187', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('58', '4', '113.179.102.211', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('59', '1', '192.168.1.197', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('60', '4', '123.26.168.237', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('61', '4', '113.179.109.108', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('62', '1', '117.6.86.155', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('63', '4', '123.26.135.230', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('64', '4', '123.26.163.111', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('65', '4', '123.26.153.228', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('66', '4', '123.26.185.104', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('67', '4', '113.179.71.208', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('68', '4', '123.26.188.69', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('69', '4', '113.179.127.186', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('70', '4', '123.26.174.166', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('71', '1', '118.70.131.15', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('72', '4', '123.26.184.72', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('73', '4', '123.26.180.73', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('74', '4', '123.26.184.147', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('75', '4', '123.26.189.108', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('76', '4', '113.179.67.211', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('77', '4', '113.179.121.45', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('78', '4', '113.179.108.197', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('79', '4', '113.179.116.158', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('80', '4', '113.179.67.186', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('81', '4', '123.26.167.169', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('82', '4', '123.26.178.56', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('83', '4', '113.179.103.31', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('84', '4', '123.26.180.141', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('85', '4', '113.179.112.117', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('86', '4', '113.179.69.154', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('87', '4', '123.26.152.1', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('88', '4', '113.167.78.214', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('89', '4', '113.167.72.146', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('90', '4', '113.179.108.95', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('91', '4', '123.26.186.67', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('92', '4', '113.179.127.47', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('93', '4', '123.26.149.141', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('94', '4', '123.26.164.4', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('95', '4', '113.179.125.122', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('96', '1', '117.0.192.190', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('97', '4', '113.179.92.247', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('98', '1', '112.72.70.222', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('99', '4', '123.26.142.100', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('100', '4', '113.179.95.110', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('101', '4', '113.179.97.175', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('102', '4', '113.179.98.2', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('103', '4', '123.26.150.181', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('104', '4', '123.26.156.5', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('105', '4', '113.179.91.196', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('106', '4', '123.26.158.97', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('107', '4', '113.179.77.196', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('108', '4', '113.179.84.145', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('109', '4', '113.179.69.218', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('110', '4', '113.179.103.122', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('111', '4', '123.26.189.175', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('112', '4', '113.179.110.85', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('113', '4', '113.179.114.155', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('114', '4', '113.179.80.83', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('115', '4', '123.26.137.160', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('116', '4', '123.18.55.181', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('117', '6', '123.18.55.181', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('118', '1', '112.72.71.223', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('119', '4', '113.179.85.73', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('120', '1', '117.7.149.146', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('121', '1', '118.70.129.182', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('122', '1', '113.22.7.217', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('123', '1', '14.162.181.15', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('124', '1', '113.22.69.200', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('125', '1', '1.55.175.36', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('126', '1', '42.112.150.121', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('127', '2', '118.70.129.182', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('128', '1', '222.254.9.218', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('129', '1', '14.162.152.34', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('130', '1', '42.112.55.200', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('131', '2', '113.190.239.46', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('132', '1', '118.71.106.67', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('133', '1', '118.71.137.81', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('134', '1', '14.177.230.161', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('135', '2', '123.24.197.86', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('136', '1', '117.6.112.99', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('137', '1', '113.179.94.18', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('138', '3', '113.179.94.18', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('139', '3', '113.179.72.54', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('140', '3', '113.179.84.81', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('141', '3', '113.179.68.86', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('142', '3', '113.179.85.163', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('143', '3', '113.179.79.59', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('144', '3', '123.26.177.147', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('145', '3', '113.179.78.26', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('146', '1', '113.190.238.59', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('147', '1', '::1', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('148', '1', '222.252.17.147', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('149', '1', '118.70.178.28', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('150', '1', '222.252.17.32', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('151', '1', '222.252.73.110', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('152', '1', '118.70.80.49', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('153', '4', '222.252.17.147', '0', '0', '0', null, null, null);
INSERT INTO `throttle` VALUES ('154', '4', '118.70.178.28', '0', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin@domain.com', '$2y$10$op94UbgXP3chsRL2Oed5v.ygLTU/wAx2xL1rV5Vw.9un30lZbu0YK', null, '1', null, null, '2017-08-17 09:47:39', '$2y$10$KOePUrCyhslKxjzDNx5RQeMyO8OjwquU/jThQibIt9SdAFVs6lGNO', null, 'Ngọc Anh', null, '2013-09-27 11:38:45', '2017-08-17 09:47:39', null);
INSERT INTO `users` VALUES ('2', 'simkbaio@gmail.com', '$2y$10$2YEBuNSoraim8LodXE5jN.6hJSuuu6yXkg6OxjQa70j6HhtTAsheq', null, '1', null, null, '2015-07-13 03:15:11', '$2y$10$kpA5hrinVkMpAkPcoKRdfOLed476VUVNOwEeGpT315/WE6Ye39Y9e', null, 'Ngoc', 'Anh', '2015-03-10 03:04:32', '2015-07-13 03:15:11', null);
INSERT INTO `users` VALUES ('3', 'ducviet.vt88@gmail.com', '$2y$10$IU0CeO.kKobdCoDm3gAB5e1pfYYZtWM90XXDDY3LIdpxph7McsPCS', null, '1', null, null, '2015-07-21 09:57:12', '$2y$10$T3Op6aklOAgFvuDuulLjPe41TXpVLcWPhBW9auPYEZuC5yFH37Wfy', null, 'Nguyễn Đức', 'Việt', '2015-06-12 09:20:53', '2015-07-21 09:57:12', null);
INSERT INTO `users` VALUES ('4', 't.nguyentuananh@gmail.com', '$2y$10$6342F5PBUd3w20zGMF9ktOAxYp61Min064rldXgdMhdaA0XPNmrM6', null, '1', null, null, '2017-08-16 07:58:35', '$2y$10$EVh9.zla8I29ktnoFhsMZOdz.9RGFtil.PjBj3OXMnMMnzeeykQPO', null, 'Nguyen', 'Tuan Anh', '2017-07-21 09:40:53', '2017-08-16 07:58:35', null);

-- ----------------------------
-- Table structure for users_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_groups
-- ----------------------------
INSERT INTO `users_groups` VALUES ('1', '2');
INSERT INTO `users_groups` VALUES ('2', '2');
INSERT INTO `users_groups` VALUES ('3', '2');
INSERT INTO `users_groups` VALUES ('3', '3');
INSERT INTO `users_groups` VALUES ('4', '2');
INSERT INTO `users_groups` VALUES ('4', '3');
INSERT INTO `users_groups` VALUES ('5', '2');
INSERT INTO `users_groups` VALUES ('5', '3');
INSERT INTO `users_groups` VALUES ('6', '3');

-- ----------------------------
-- Table structure for viewnotes
-- ----------------------------
DROP TABLE IF EXISTS `viewnotes`;
CREATE TABLE `viewnotes` (
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of viewnotes
-- ----------------------------
INSERT INTO `viewnotes` VALUES ('2015-02-26 08:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-02-27 02:00:00', '19');
INSERT INTO `viewnotes` VALUES ('2015-02-27 03:00:00', '19');
INSERT INTO `viewnotes` VALUES ('2015-02-27 04:00:00', '4');
INSERT INTO `viewnotes` VALUES ('2015-03-06 08:00:00', '10');
INSERT INTO `viewnotes` VALUES ('2015-03-07 02:00:00', '6');
INSERT INTO `viewnotes` VALUES ('2015-03-10 02:00:00', '12');
INSERT INTO `viewnotes` VALUES ('2015-03-10 03:00:00', '9');
INSERT INTO `viewnotes` VALUES ('2015-03-11 02:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-11 03:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-12 02:00:00', '4');
INSERT INTO `viewnotes` VALUES ('2015-03-12 03:00:00', '3');
INSERT INTO `viewnotes` VALUES ('2015-03-12 04:00:00', '17');
INSERT INTO `viewnotes` VALUES ('2015-03-12 05:00:00', '7');
INSERT INTO `viewnotes` VALUES ('2015-03-12 07:00:00', '14');
INSERT INTO `viewnotes` VALUES ('2015-03-13 02:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-13 03:00:00', '42');
INSERT INTO `viewnotes` VALUES ('2015-03-13 04:00:00', '49');
INSERT INTO `viewnotes` VALUES ('2015-03-13 05:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-16 01:00:00', '5');
INSERT INTO `viewnotes` VALUES ('2015-03-16 02:00:00', '5');
INSERT INTO `viewnotes` VALUES ('2015-03-16 03:00:00', '16');
INSERT INTO `viewnotes` VALUES ('2015-03-16 04:00:00', '6');
INSERT INTO `viewnotes` VALUES ('2015-03-16 06:00:00', '3');
INSERT INTO `viewnotes` VALUES ('2015-03-16 07:00:00', '7');
INSERT INTO `viewnotes` VALUES ('2015-03-16 08:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-17 02:00:00', '4');
INSERT INTO `viewnotes` VALUES ('2015-03-17 03:00:00', '19');
INSERT INTO `viewnotes` VALUES ('2015-03-17 04:00:00', '15');
INSERT INTO `viewnotes` VALUES ('2015-03-17 08:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-18 04:00:00', '3');
INSERT INTO `viewnotes` VALUES ('2015-03-19 01:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-19 04:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-20 03:00:00', '6');
INSERT INTO `viewnotes` VALUES ('2015-03-20 07:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-20 08:00:00', '3');
INSERT INTO `viewnotes` VALUES ('2015-03-23 04:00:00', '12');
INSERT INTO `viewnotes` VALUES ('2015-03-23 05:00:00', '3');
INSERT INTO `viewnotes` VALUES ('2015-03-23 06:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-23 08:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-26 04:00:00', '12');
INSERT INTO `viewnotes` VALUES ('2015-03-26 07:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-26 09:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-26 16:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-27 02:00:00', '11');
INSERT INTO `viewnotes` VALUES ('2015-03-27 04:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-27 09:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-27 12:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-27 15:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-27 18:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-03-30 02:00:00', '3');
INSERT INTO `viewnotes` VALUES ('2015-03-30 03:00:00', '11');
INSERT INTO `viewnotes` VALUES ('2015-03-30 07:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-30 12:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-31 02:00:00', '12');
INSERT INTO `viewnotes` VALUES ('2015-03-31 03:00:00', '21');
INSERT INTO `viewnotes` VALUES ('2015-03-31 04:00:00', '43');
INSERT INTO `viewnotes` VALUES ('2015-03-31 06:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-03-31 07:00:00', '12');
INSERT INTO `viewnotes` VALUES ('2015-04-01 02:00:00', '18');
INSERT INTO `viewnotes` VALUES ('2015-04-01 03:00:00', '11');
INSERT INTO `viewnotes` VALUES ('2015-04-02 02:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-03 03:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-04-03 04:00:00', '10');
INSERT INTO `viewnotes` VALUES ('2015-04-03 05:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-03 08:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-03 09:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-03 10:00:00', '24');
INSERT INTO `viewnotes` VALUES ('2015-04-03 11:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-04 02:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-04 03:00:00', '12');
INSERT INTO `viewnotes` VALUES ('2015-04-04 04:00:00', '12');
INSERT INTO `viewnotes` VALUES ('2015-04-06 02:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-06 04:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-07 03:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-07 04:00:00', '3');
INSERT INTO `viewnotes` VALUES ('2015-04-07 06:00:00', '8');
INSERT INTO `viewnotes` VALUES ('2015-04-07 07:00:00', '10');
INSERT INTO `viewnotes` VALUES ('2015-04-08 04:00:00', '3');
INSERT INTO `viewnotes` VALUES ('2015-04-08 07:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-08 08:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-09 02:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-04-09 03:00:00', '11');
INSERT INTO `viewnotes` VALUES ('2015-04-09 04:00:00', '21');
INSERT INTO `viewnotes` VALUES ('2015-04-09 05:00:00', '22');
INSERT INTO `viewnotes` VALUES ('2015-04-09 06:00:00', '6');
INSERT INTO `viewnotes` VALUES ('2015-04-09 07:00:00', '21');
INSERT INTO `viewnotes` VALUES ('2015-04-09 08:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-09 09:00:00', '22');
INSERT INTO `viewnotes` VALUES ('2015-04-10 07:00:00', '20');
INSERT INTO `viewnotes` VALUES ('2015-04-10 08:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-04-11 07:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-12 13:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-04-13 00:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-13 01:00:00', '4');
INSERT INTO `viewnotes` VALUES ('2015-04-13 02:00:00', '21');
INSERT INTO `viewnotes` VALUES ('2015-04-13 03:00:00', '62');
INSERT INTO `viewnotes` VALUES ('2015-04-13 04:00:00', '31');
INSERT INTO `viewnotes` VALUES ('2015-04-13 07:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-13 08:00:00', '16');
INSERT INTO `viewnotes` VALUES ('2015-04-14 02:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-04-14 04:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-04-14 05:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-14 07:00:00', '18');
INSERT INTO `viewnotes` VALUES ('2015-04-14 08:00:00', '13');
INSERT INTO `viewnotes` VALUES ('2015-04-14 09:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-15 02:00:00', '15');
INSERT INTO `viewnotes` VALUES ('2015-04-15 04:00:00', '6');
INSERT INTO `viewnotes` VALUES ('2015-04-15 05:00:00', '6');
INSERT INTO `viewnotes` VALUES ('2015-04-15 07:00:00', '42');
INSERT INTO `viewnotes` VALUES ('2015-04-15 08:00:00', '26');
INSERT INTO `viewnotes` VALUES ('2015-04-16 01:00:00', '5');
INSERT INTO `viewnotes` VALUES ('2015-04-17 03:00:00', '44');
INSERT INTO `viewnotes` VALUES ('2015-04-17 04:00:00', '16');
INSERT INTO `viewnotes` VALUES ('2015-04-17 10:00:00', '4');
INSERT INTO `viewnotes` VALUES ('2015-04-17 14:00:00', '7');
INSERT INTO `viewnotes` VALUES ('2015-04-17 20:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-04-20 09:00:00', '2');
INSERT INTO `viewnotes` VALUES ('2015-04-23 08:00:00', '1');
INSERT INTO `viewnotes` VALUES ('2015-04-23 09:00:00', '3');
