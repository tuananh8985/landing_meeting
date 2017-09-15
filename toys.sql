/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : toys

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-06-22 09:43:48
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES ('2', 'contact', 'full-name', 'Nội thất I - Home', '2014-11-17 08:12:04', '2015-06-16 07:22:01');
INSERT INTO `configs` VALUES ('3', 'contact', 'address', '338 Ngô Gia Tự, Hải An, Hải Phòng', '2014-11-17 08:14:31', '2015-06-16 07:23:36');
INSERT INTO `configs` VALUES ('4', 'contact', 'Mobile', '0962 332 686', '2014-11-17 09:01:34', '2015-08-17 05:14:23');
INSERT INTO `configs` VALUES ('8', 'website', 'title', 'Hello Baby - Sectioned Shopify Theme', '2014-11-17 09:12:53', '2017-05-25 03:08:07');
INSERT INTO `configs` VALUES ('9', 'website', 'keywords', 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', '2014-11-17 09:13:32', '2015-07-16 08:23:15');
INSERT INTO `configs` VALUES ('10', 'website', 'description', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '2014-11-17 09:13:53', '2015-06-16 07:27:57');
INSERT INTO `configs` VALUES ('11', 'posts', 'image_width', '270', '2014-11-17 09:15:22', '2015-08-15 20:21:09');
INSERT INTO `configs` VALUES ('12', 'posts', 'image_height', '135', '2014-11-17 09:15:49', '2017-06-14 06:09:46');
INSERT INTO `configs` VALUES ('15', 'website', 'domain', 'noithatihome.vn', '2014-11-17 09:23:40', '2015-06-16 07:30:17');
INSERT INTO `configs` VALUES ('16', 'website', 'name', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', '2014-11-17 09:24:51', '2015-06-16 07:31:16');
INSERT INTO `configs` VALUES ('18', 'product', 'image_width', '422', '2014-12-05 04:59:35', '2017-06-21 03:56:33');
INSERT INTO `configs` VALUES ('19', 'product', 'image_height', '535', '2014-12-05 05:00:29', '2017-06-21 03:56:38');
INSERT INTO `configs` VALUES ('20', 'contact', 'phone', '047301 0169', '2014-12-07 14:55:48', '2017-06-14 06:37:26');
INSERT INTO `configs` VALUES ('21', 'contact', 'fax', '', '2014-12-07 14:56:21', '2015-06-16 07:28:42');
INSERT INTO `configs` VALUES ('22', 'contact', 'email', 'noithatihomehp@gmail.com', '2014-12-07 14:57:12', '2015-07-16 08:24:09');
INSERT INTO `configs` VALUES ('23', 'product', 'image_locate', 'posts', '2015-01-20 09:17:34', '2015-01-20 09:17:34');
INSERT INTO `configs` VALUES ('24', 'contact', 'web-name', 'noithatihome.vn', '2015-04-01 03:13:24', '2015-06-16 07:29:16');
INSERT INTO `configs` VALUES ('25', 'contact', 'address_en', '338 Ngo Gia Tu Str, Hai An Dis, Hai Phong City, Vietnam', '2015-04-13 02:57:23', '2015-06-16 07:29:51');
INSERT INTO `configs` VALUES ('26', 'website', 'theme', 'default', '2015-04-20 09:44:58', '2015-05-20 07:55:04');
INSERT INTO `configs` VALUES ('27', 'website', 'facebook', 'https://www.facebook.com/noithatihome.vn', '2015-06-30 09:39:29', '2015-07-13 03:17:47');
INSERT INTO `configs` VALUES ('28', 'website', 'google', '#', '2015-06-30 09:39:37', '2015-06-30 09:39:37');
INSERT INTO `configs` VALUES ('29', 'website', 'youtube', '#', '2015-06-30 09:39:46', '2015-06-30 09:39:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'Dương Ngọc Anh', 'ecnet', 'simkbaio@gmail.com', '', '097534323123', null, 'title', 'ádasdadasdasdas', '2015-01-18 03:47:44', '2015-01-25 21:48:47', '1');
INSERT INTO `contacts` VALUES ('2', 'dasdasdasdas', 'adasdasd', 'asdasdasdas', 'asdasdasd', 'asdasdasd', null, 'asdasdasd', 'asdasdasdasdasdasd', '2015-01-18 03:50:10', '2015-01-25 21:48:44', '1');
INSERT INTO `contacts` VALUES ('212', 'fsdfds', null, 'ddd@gmail.com', 'fdsfsdf', '12121212', null, 'fdsfsdf', 'fsdfsdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `contacts` VALUES ('213', '1', '', '2', '3', '4', '', '5', '6', '2017-06-07 09:35:47', '2017-06-07 09:35:47', '0');
INSERT INTO `contacts` VALUES ('214', 'tuan Nguyễn', '', 't.nguyentuananh@gmail.com', 't.nguyentuananh@gmail.com', '0966161017', '', 'Saấ', 'dfdfd', '2017-06-07 09:41:18', '2017-06-07 09:41:18', '0');
INSERT INTO `contacts` VALUES ('215', 'Nội thất I - Home chuyên thiết kế và thi công dòng sản phẩm chuyên biệt bằng gỗ thông tại Hải Phòng. Sản phẩm của I - Home vừa tiện dụng và mang phong cách riêng, cá tính của người sử dụng ddddddddd á tính của người sử dụng ddddddddd sử dụng ddddddddd ddd', '', '', '', '', '', '', '', '2017-06-07 09:44:59', '2017-06-07 09:44:59', '0');
INSERT INTO `contacts` VALUES ('216', 'Nội thất I - Home chuyên thiết kế và thi công dòng sản phẩm chuyên biệt bằng gỗ thông tại Hải Phòng. Sản phẩm của I - Home vừa tiện dụng và mang phong cách riêng, cá tính của người sử dụng ddddddddd á tính của người sử dụng ddddddddd sử dụng ddddddddd ddd', '', '', '', '', '', '', '', '2017-06-07 09:45:06', '2017-06-07 09:45:06', '0');
INSERT INTO `contacts` VALUES ('217', 'Nội thất I - Home chuyên thiết kế và thi công dòng sản phẩm chuyên biệt bằng gỗ thông tại Hải Phòng. Sản phẩm của I - Home vừa tiện dụng và mang phong cách riêng, cá tính của người sử dụng ddddddddd á tính của người sử dụng ddddddddd sử dụng ddddddddd ddd', '', '', '', '', '', '', '', '2017-06-07 09:45:52', '2017-06-07 09:45:52', '0');
INSERT INTO `contacts` VALUES ('218', 'Nội thất I - Home chuyên thiết kế và thi công dòng sản phẩm chuyên biệt bằng gỗ thông tại Hải Phòng. Sản phẩm của I - Home vừa tiện dụng và mang phong cách riêng, cá tính của người sử dụng ddddddddd á tính của người sử dụng ddddddddd sử dụng ddddddddd ddd', '', '', '', '', '', '', '', '2017-06-07 09:45:58', '2017-06-07 09:45:58', '0');
INSERT INTO `contacts` VALUES ('219', 'aaaaaaaa', '', '', '', '', '', '', '', '2017-06-07 09:46:04', '2017-06-07 09:46:04', '0');
INSERT INTO `contacts` VALUES ('220', 'aaaaaaa', '', '', '', '', '', '', '', '2017-06-07 09:46:28', '2017-06-07 09:46:28', '0');
INSERT INTO `contacts` VALUES ('221', 'jghjgh', '', '', '', '', '', '', '', '2017-06-07 09:47:38', '2017-06-07 09:47:38', '0');
INSERT INTO `contacts` VALUES ('222', 'fsdfsdf', '', 'fsdfsdf@gfgfg.com', 'fsdfsdf', '12121212', '', 'fsdfsdfsdf', 'fsdfsdfsdfsfs', '2017-06-07 09:48:59', '2017-06-07 09:48:59', '0');

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
INSERT INTO `contents` VALUES ('1', 'gioi-thieu-ngan-ve-cua-hang', 'vi', 'Giới thiệu ngắn về I - Home', 'Nội thất I - Home chuyên thiết kế và thi công dòng sản phẩm chuyên biệt bằng gỗ thông tại Hải Phòng. Sản phẩm của I - Home vừa tiện dụng và mang phong cách riêng, cá tính của người sử dụng.', '2015-06-11 09:31:07', '2015-06-23 04:16:48');

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
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of detailcarts
-- ----------------------------
INSERT INTO `detailcarts` VALUES ('0', '3', '441', '2', '1200000', '2017-06-15 08:15:07', '2017-06-15 08:15:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('2', 'Administrator', '{\"admin\":1,\"users\":1}', '2013-09-27 11:45:19', '2013-10-07 17:11:51');
INSERT INTO `groups` VALUES ('3', 'Thành viên', '{\"users\":1}', '2013-10-07 16:50:16', '2013-10-10 18:34:47');

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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Quản lý người dùng', '#', '0', '10', '0', '0', 'Hiển thị các thành phần cài đặt', '1', '2013-06-06 20:08:52', '2015-05-20 08:32:11', '<i class=\"icon-group\"></i>');
INSERT INTO `menus` VALUES ('4', 'Quản lý bài viết', '#', '0', '1', '0', '0', 'Quản lý các Module tin tức trên Front End', '1', '2013-06-07 09:31:38', '2015-05-20 08:32:10', '<i class=\"icon-paste\"></i>');
INSERT INTO `menus` VALUES ('11', 'Người dùng', 'admin/users', '1', '0', '0', '14', 'Quản lý thông tin người dùng', '1', '2013-06-13 19:10:44', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('13', 'Bảng quản trị', 'admin', '0', '0', '0', '11', 'Bảng điều khiển', '1', '2013-06-17 07:13:51', '2015-05-20 08:32:10', '<i class=\"icon-home\"></i>');
INSERT INTO `menus` VALUES ('14', 'Sliders', 'admin/sliderspacks', '69', '0', '0', '0', 'Quản lý slider', '1', '2013-06-17 07:45:29', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('15', 'Bài viết', 'admin/posts', '4', '1', '0', '18', 'Quản lý bài viết', '1', '2013-06-18 03:08:33', '2015-05-20 08:32:10', '');
INSERT INTO `menus` VALUES ('19', 'Thư viện', '#', '0', '8', '0', '0', 'Quản lý công cụ', '1', '2013-06-24 09:51:19', '2015-05-20 08:32:11', '<i class=\"icon-pencil\"></i>');
INSERT INTO `menus` VALUES ('21', 'Thư viện hình ảnh', 'admin/mediacats', '19', '0', '0', '22', '', '1', '2013-07-16 20:41:23', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('22', 'Quản lý trang đơn', '#', '0', '5', '0', '0', 'Quản lý các trang đơn', '1', '2013-07-17 03:04:08', '2015-05-20 08:32:11', '<i class=\"icon-book\"></i>');
INSERT INTO `menus` VALUES ('26', 'Trang đơn', 'admin/pages', '22', '0', '0', '20', 'Danh sách các trang đơn', '1', '2013-07-17 11:52:12', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('69', 'Quảng cáo', '#', '0', '4', '0', '0', '', '1', '2013-09-13 14:20:36', '2015-05-20 08:32:11', '<i class=\"icon-bullhorn\"></i>');
INSERT INTO `menus` VALUES ('70', 'Menus', 'admin/menuspacks', '0', '7', '0', '0', '', '1', '2013-09-13 14:23:59', '2015-05-20 08:32:11', '<i class=\"icon-tasks\"></i>');
INSERT INTO `menus` VALUES ('71', 'Danh mục bài viết', 'admin/postcatalogs', '4', '0', '0', '0', '', '1', '2013-09-13 14:27:32', '2015-05-20 08:32:10', '');
INSERT INTO `menus` VALUES ('75', 'Nhóm người dùng', 'admin/groups', '1', '1', '0', '27', '', '1', '2013-10-06 18:29:49', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('76', 'Roles', 'admin/roles', '1', '2', '0', '28', '', '1', '2013-10-06 18:40:03', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('95', 'Cửa hàng', 'cua-hang', '0', '0', '0', '0', '', '0', '2014-02-17 15:05:31', '2014-02-17 15:05:31', '');
INSERT INTO `menus` VALUES ('99', 'Giới thiệu', '', '99', '1', '0', '0', '', '2', '2014-02-17 17:35:34', '2014-02-26 21:49:45', '');
INSERT INTO `menus` VALUES ('127', 'Config', 'admin/configs', '0', '9', '0', '0', '', '1', '2014-11-17 09:18:44', '2015-05-20 08:32:11', '<i class=\"icon-cogs\"></i>');
INSERT INTO `menus` VALUES ('128', 'Bài viết', 'admin/configs?group=posts', '127', '0', '0', '0', '', '1', '2014-11-17 10:08:12', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('129', 'Website', 'admin/configs?group=website', '127', '2', '0', '0', '', '1', '2014-11-17 10:08:49', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('130', 'Contact', 'admin/configs?group=contact', '127', '3', '0', '0', '', '1', '2014-11-17 10:09:26', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('131', 'Bảng quản trị', 'admin/shop', '0', '0', '0', '0', '', '3', '2014-11-18 03:49:20', '2014-12-05 04:58:55', 'fa fa-bar-chart-o');
INSERT INTO `menus` VALUES ('132', 'Danh mục sản phẩm', 'admin/shop/categories', '0', '1', '0', '0', '', '3', '2014-11-18 03:51:58', '2014-12-05 04:58:55', 'fa fa-folder-open-o');
INSERT INTO `menus` VALUES ('133', 'Sản phẩm', 'admin/shop/products', '0', '2', '0', '0', '', '3', '2014-11-18 03:53:29', '2014-12-05 04:58:55', 'fa fa-heart');
INSERT INTO `menus` VALUES ('135', 'Config', 'admin/configs', '0', '3', '0', '0', '', '3', '2014-12-05 04:58:46', '2014-12-05 04:58:55', 'fa fa-gears');
INSERT INTO `menus` VALUES ('136', 'Sản phẩm', 'admin/configs?group=product', '127', '1', '0', '0', '', '1', '2014-12-05 05:01:57', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('138', 'News', '/news', '0', '2', '0', '0', '', '4', '2014-12-07 14:51:13', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('139', 'Recruitment', '/', '0', '3', '0', '0', '', '4', '2014-12-07 14:51:33', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('140', 'Contact Us', '/', '0', '4', '0', '0', '', '4', '2014-12-07 14:52:08', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('142', 'Liên hệ', 'lien-he', '0', '5', '0', '0', '', '2', '2015-01-20 06:51:48', '2015-07-15 10:02:26', '');
INSERT INTO `menus` VALUES ('149', 'Quản lý nội dung', 'admin/contents', '0', '3', '0', '0', '', '1', '2015-03-16 06:46:07', '2015-05-20 08:32:11', '<i class=\"icon-tags\"></i>');
INSERT INTO `menus` VALUES ('152', 'Home', '/', '0', '0', '0', '0', '', '4', '2015-04-13 01:05:01', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('153', 'Products', '/products', '0', '1', '0', '0', '', '4', '2015-04-13 02:11:12', '2015-04-13 02:11:23', '');
INSERT INTO `menus` VALUES ('154', 'Thuộc tính', '/admin/propertytemplates', '0', '2', '0', '0', '', '1', '2015-05-18 09:47:54', '2015-05-20 08:32:11', '<i class=\"icon-magic\"></i>');
INSERT INTO `menus` VALUES ('156', 'Danh mục sản phẩm', 'admin/postcatalogs?type=product', '4', '2', '0', '0', '', '1', '2015-05-20 08:16:13', '2015-05-20 08:32:10', '');
INSERT INTO `menus` VALUES ('157', 'Sản phẩm', 'admin/posts?type=product', '4', '3', '0', '0', '', '1', '2015-05-20 08:16:42', '2015-05-20 08:32:11', '');
INSERT INTO `menus` VALUES ('171', 'Tin tức', 'tin-tuc', '0', '3', '0', '0', null, '2', '2015-06-11 02:45:52', '2015-07-15 10:02:26', '');
INSERT INTO `menus` VALUES ('172', 'Trang chủ', '', '0', '0', '0', '0', '', '2', '2015-06-11 03:36:51', '2015-07-15 10:02:26', '');
INSERT INTO `menus` VALUES ('174', 'Giới thiệu', '/gioi-thieu', '0', '1', '0', '0', '', '2', '2015-06-15 07:16:39', '2015-08-17 05:03:32', '');
INSERT INTO `menus` VALUES ('177', 'Hướng dẫn mua hàng', '/huong-dan-mua-hang', '0', '4', '0', '0', 'Hướng dẫn mua hàng tại showroom nội thất I - Home Hải Phòng', '2', '2015-06-23 09:46:10', '2015-08-20 08:20:10', '');
INSERT INTO `menus` VALUES ('195', 'Sản phẩm', '/san-pham', '0', '0', '0', '0', '', '2', '2015-08-16 17:41:11', '2015-08-20 11:35:57', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menuspacks
-- ----------------------------
INSERT INTO `menuspacks` VALUES ('1', 'Admin Left Menu', null, '2013-09-13 13:55:48', '2013-09-13 13:55:48');
INSERT INTO `menuspacks` VALUES ('2', 'Frontend Menu', null, '2013-09-14 16:08:50', '2015-01-19 08:24:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('261', '', '', 'liên hệ', 'lien-he', '', null, null, null, '0', '1', '2015-05-28 20:19:56', '2015-06-12 09:35:47', '0', 'post', '1', '0', '0', '0', '1', '0', null, 'noi that dep tai hai phong, tu nhua tai hai phong', 'Nội thất I - Home tại Hải Phòng', 'Nội thất nhựa, sang trọng đẹp, cá tính tại Hải Phòng', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('262', null, null, 'Giới thiệu', 'gioi-thieu', '<p><strong>HNP - Thủ đ&ocirc; H&agrave; Nội nước Cộng h&ograve;a X&atilde; hội Chủ nghĩa Việt Nam, l&agrave; trung t&acirc;m đầu n&atilde;o về ch&iacute;nh trị, văn ho&aacute; v&agrave; khoa học kĩ thuật, đồng thời l&agrave; trung t&acirc;m lớn về giao dịch kinh tế v&agrave; quốc tế của cả nước. Trải qua 1.000 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, kể từ khi vua L&yacute; Th&aacute;i Tổ chọn khu đất Đại La b&ecirc;n cửa s&ocirc;ng T&ocirc; Lịch l&agrave;m nơi định đ&ocirc; cho mu&ocirc;n đời. H&agrave; Nội đ&atilde; chứng kiến sự thăng trầm của hầu hết c&aacute;c triều đại phong kiến Việt Nam từ L&yacute;- Trần - L&ecirc; - Mạc - Nguyễn&hellip; kinh th&agrave;nh Thăng Long l&agrave; nơi bu&ocirc;n b&aacute;n, trung t&acirc;m văn h&oacute;a, gi&aacute;o dục của cả miền Bắc.</strong></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://hanoi.gov.vn/image/image_gallery?img_id=1247421419311051242\" style=\"border:none; height:auto !important; margin-bottom:10px; max-width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:inherit\">Tượng đ&agrave;i L&yacute; Th&aacute;i Tổ tại hồ Ho&agrave;n Kiếm, H&agrave; Nội</span></p>\r\n\r\n<div class=\"han6-content-detail\" style=\"margin: 0px; padding: 0px; color: black; font-family: Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<p><strong>VỊ TR&Iacute; ĐỊA L&Iacute;</strong></p>\r\n\r\n<p style=\"text-align:left\"><strong>Tọa độ địa l&iacute;:</strong>&nbsp;H&agrave; Nội hiện nay c&oacute; vị tr&iacute; từ 20&deg;53&#39; đến 21&deg;23&#39; vĩ độ Bắc v&agrave; 105&deg;44&#39; đến 106&deg;02&#39; kinh độ Đ&ocirc;ng, tiếp gi&aacute;p với c&aacute;c tỉnh Th&aacute;i Nguy&ecirc;n - Vĩnh Ph&uacute;c ở ph&iacute;a Bắc; H&agrave; Nam - H&ograve;a B&igrave;nh ở ph&iacute;a Nam; Bắc Giang- Bắc Ninh- Hưng Y&ecirc;n ở ph&iacute;a Đ&ocirc;ng v&agrave; H&ograve;a B&igrave;nh- Ph&uacute; Thọ ở ph&iacute;a T&acirc;y.</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<img alt=\"\" src=\"http://hanoi.gov.vn/documents/14/10619120/48162.jpg?version=1.0\" style=\"border:1px solid rgb(203, 204, 206) !important; font-family:inherit; height:auto !important; margin:0px; max-width:100%; outline:0px; padding:0px; text-align:justify; vertical-align:top; width:500px\" /><br />\r\n&nbsp;<br />\r\n<span style=\"font-family:inherit\">Bản đồ địa giới H&agrave;nh ch&iacute;nh H&agrave; Nội&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Diện t&iacute;ch tự nhi&ecirc;n:</strong></p>\r\n\r\n<p>Thực hiện kết luận Hội nghị Trung ương 6 (kh&oacute;a X) v&agrave; Nghị quyết của Quốc hội kh&oacute;a XII, kỳ họp thứ 3, số 15/2008/NQ-QH12, ng&agrave;y 29 th&aacute;ng 05 năm 2008 v&agrave; Nghị quyết n&agrave;y c&oacute; hiệu lực thi h&agrave;nh từ ng&agrave;y 01 th&aacute;ng 8 năm 2008, to&agrave;n bộ hệ thống ch&iacute;nh trị của th&agrave;nh phố H&agrave; Nội sau hợp nhất, mở rộng địa giới h&agrave;nh ch&iacute;nh Thủ đ&ocirc;&nbsp; bao gồm: Th&agrave;nh phố H&agrave; Nội, tỉnh H&agrave; T&acirc;y, huyện M&ecirc; Linh - tỉnh Vĩnh Ph&uacute;c v&agrave; bốn x&atilde; thuộc huyện Lương Sơn - tỉnh H&ograve;a B&igrave;nh. Thủ đ&ocirc; H&agrave; Nội sau khi được mở rộng c&oacute; diện t&iacute;ch tự nhi&ecirc;n 334.470,02 ha, lớn gấp hơn 3 lần trước đ&acirc;y v&agrave; đứng v&agrave;o tốp 17 Thủ đ&ocirc; tr&ecirc;n thế giới c&oacute; diện t&iacute;ch rộng nhất; d&acirc;n số tăng hơn gấp rưỡi, hơn 6,2 triệu người, hiện nay l&agrave; hơn 7 triệu người; gồm 30 đơn vị h&agrave;nh ch&iacute;nh cấp quận, huyện, thị x&atilde;, 577 x&atilde;, phường, thị trấn.</p>\r\n\r\n<p>H&agrave; Nội hiện nay vừa c&oacute; n&uacute;i, c&oacute; đồi v&agrave; địa h&igrave;nh thấp dần từ Bắc xuống Nam, từ T&acirc;y sang Đ&ocirc;ng, trong đ&oacute; đồng bằng chiếm tới &frac34; diện t&iacute;ch tự nhi&ecirc;n của th&agrave;nh phố. Độ cao trung b&igrave;nh của H&agrave; Nội từ 5 đến 20 m&eacute;t so với mặt nước biển, c&aacute;c đồi n&uacute;i cao đều tập trung ở ph&iacute;a Bắc v&agrave; T&acirc;y. C&aacute;c đỉnh cao nhất l&agrave; Ba V&igrave; 1.281 m&eacute;t; Gia D&ecirc; 707 m&eacute;t; Ch&acirc;n Chim 462 m&eacute;t; Thanh Lanh 427 m&eacute;t v&agrave; Thi&ecirc;n Tr&ugrave; 378 m&eacute;t&hellip;Khu vực nội đ&ocirc; c&oacute; một số g&ograve; đồi thấp, như g&ograve; Đống Đa, n&uacute;i N&ugrave;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; Diện t&iacute;ch đất ph&acirc;n bổ sử dụng (332889,0 ha)</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất n&ocirc;ng, l&acirc;m nghiệp, thủy sản&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 188601,1 ha&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất phi n&ocirc;ng nghiệp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 134947,4 ha<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đất chưa sử dụng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 9340,5 ha&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n(Theo&ldquo;Ni&ecirc;n gi&aacute;m thống k&ecirc; H&agrave; Nội năm 2010&rdquo; của Cục Thống k&ecirc; th&agrave;nh phố H&agrave; Nội).</p>\r\n\r\n<p><strong>Thủy văn:</strong></p>\r\n\r\n<p>H&agrave; Nội được h&igrave;nh th&agrave;nh từ ch&acirc;u thổ s&ocirc;ng Hồng, n&eacute;t đặc trưng của v&ugrave;ng địa l&iacute; th&agrave;nh phố H&agrave; Nội l&agrave; &ldquo;Th&agrave;nh phố s&ocirc;ng hồ&rdquo; hay &ldquo;Th&agrave;nh phố trong s&ocirc;ng&rdquo;. Nhờ c&aacute;c con s&ocirc;ng lớn nhỏ đ&atilde; chảy miệt m&agrave;i h&agrave;ng vạn năm đem ph&ugrave; sa về bồi đắp n&ecirc;n v&ugrave;ng ch&acirc;u thổ ph&igrave; nhi&ecirc;u n&agrave;y. Hiện nay, c&oacute; 7 s&ocirc;ng chảy qua H&agrave; Nội: s&ocirc;ng Hồng, s&ocirc;ng Đuống, s&ocirc;ng Đ&agrave;, s&ocirc;ng Nhuệ, s&ocirc;ng Cầu, s&ocirc;ng Đ&aacute;y, s&ocirc;ng C&agrave; Lồ. Trong đ&oacute;, đoạn s&ocirc;ng Hồng chảy qua H&agrave; Nội d&agrave;i tới 163km (chiếm 1/3 chiều d&agrave;i của con s&ocirc;ng n&agrave;y chảy qua l&atilde;nh thổ Việt nam). Trong nội đ&ocirc; ngo&agrave;i 2 con s&ocirc;ng T&ocirc; Lịch v&agrave; s&ocirc;ng Kim ngưu c&ograve;n c&oacute; hệ thống hồ đầm l&agrave; những đường ti&ecirc;u tho&aacute;t nước thải của H&agrave; Nội.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://hanoi.gov.vn/documents/14/10619120/48202.jpg?version=1.0\" style=\"border:1px solid rgb(203, 204, 206) !important; font-family:inherit; height:auto !important; margin:0px; max-width:100%; outline:0px; padding:0px; text-align:justify; vertical-align:top; width:500px\" /><br />\r\n<span style=\"font-family:inherit\">Đường Thanh Ni&ecirc;n ngăn c&aacute;ch giữa Hồ T&acirc;y v&agrave; hồ Tr&uacute;c Bạch</span></p>\r\n\r\n<p>Ở thế kỉ trước c&oacute; tr&ecirc;n 100 hồ lớn nhỏ, phần nhiều l&agrave; hồ đầm tự nhi&ecirc;n, l&agrave; vết t&iacute;ch của những kh&uacute;c s&ocirc;ng chết để lại một số hồ nh&acirc;n tạo, cải tạo c&aacute;c c&aacute;nh đồng lầy thụt th&agrave;nh hồ. Hiện nay, d&ugrave; phần lớn đ&atilde; bị san lấp lấy mặt bằng x&acirc;y dựng, đến nay vẫn c&ograve;n tới h&agrave;ng trăm hồ đầm lớn nhỏ được ph&acirc;n bổ ở khắp c&aacute;c phường, x&atilde; của thủ đ&ocirc; H&agrave; Nội. Nổi tiếng nhất l&agrave; c&aacute;c hồ Ho&agrave;n Kiếm, Hồ T&acirc;y, Quảng B&aacute;,Tr&uacute;c Bạch, Thiền Quang, Bảy Mẫu, Thanh Nh&agrave;n, Linh Đ&agrave;m, Y&ecirc;n Sở, Giảng V&otilde;, Đồng M&ocirc;, Suối Hai&hellip;</p>\r\n\r\n<p>Những hồ đầm n&agrave;y của H&agrave; Nội kh&ocirc;ng những l&agrave; một kho nước lớn m&agrave; c&ograve;n l&agrave; hệ thống điều h&ograve;a nhiệt độ tự nhi&ecirc;n l&agrave;m cho v&ugrave;ng đ&ocirc; thị nội th&agrave;nh giảm bớt sức h&uacute;t nhiệt tỏa n&oacute;ng của khối b&ecirc; t&ocirc;ng, sắt th&eacute;p, nhựa đường v&agrave; c&aacute;c hoạt động của c&aacute;c nh&agrave; m&aacute;y&hellip; Hồ đầm của H&agrave; Nội kh&ocirc;ng những tạo ra cho th&agrave;nh phố kh&iacute; hậu m&aacute;t l&agrave;nh -&nbsp; tiểu kh&iacute; hậu đ&ocirc; thị m&agrave; c&ograve;n l&agrave; những danh lam thắng cảnh, những v&ugrave;ng văn h&oacute;a đặc sắc của Thăng Long -&nbsp; H&agrave; Nội.</p>\r\n\r\n<p><strong>Kh&iacute; hậu - Thời tiết:</strong></p>\r\n\r\n<p>Nằm trong v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a, kh&iacute; hậu H&agrave; Nội c&oacute; đặc trưng nổi bật l&agrave; gi&oacute; m&ugrave;a ẩm, n&oacute;ng v&agrave; mưa nhiều về m&ugrave;a h&egrave;, lạnh v&agrave; &iacute;t mưa về m&ugrave;a đ&ocirc;ng; được chia th&agrave;nh bốn m&ugrave;a r&otilde; rệt trong năm: Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng. M&ugrave;a xu&acirc;n bắt đầu v&agrave;o th&aacute;ng 2 (hay th&aacute;ng gi&ecirc;ng &acirc;m lịch) k&eacute;o d&agrave;i đến th&aacute;ng 4. M&ugrave;a hạ bắt đầu từ th&aacute;ng 5 đến th&aacute;ng 8, n&oacute;ng bức nhưng lại mưa nhiều. M&ugrave;a thu bắt đầu từ th&aacute;ng 8 đến th&aacute;ng 10, trời dịu m&aacute;t, l&aacute; v&agrave;ng rơi. M&ugrave;a đ&ocirc;ng bắt đầu từ th&aacute;ng 11 đến th&aacute;ng 1 năm sau, thời tiết gi&aacute; lạnh, kh&ocirc; hanh. Ranh giới ph&acirc;n chia bốn m&ugrave;a chỉ c&oacute; t&iacute;nh chất tương đối, v&igrave; H&agrave; Nội c&oacute; năm r&eacute;t sớm, c&oacute; năm r&eacute;t muộn, c&oacute; năm n&oacute;ng k&eacute;o d&agrave;i, nhiệt độ l&ecirc;n tới 40&deg;C, c&oacute; năm nhiệt độ xuống thấp dưới 5&deg;C.</p>\r\n\r\n<p>H&agrave; Nội quanh năm tiếp nhận được lượng bức xạ mặt trời kh&aacute; dồi d&agrave;o. Tổng lượng bức xạ trung b&igrave;nh h&agrave;ng năm khoảng 120 kcal/cm&sup2;, nhiệt độ trung b&igrave;nh năm 24,9&deg;C, độ ẩm trung b&igrave;nh 80 - 82%. Lượng mưa trung b&igrave;nh tr&ecirc;n 1700mm/năm (khoảng 114 ng&agrave;y mưa/năm).</p>\r\n\r\n<p>Trong lịch sử ph&aacute;t triển, H&agrave; Nội cũng đ&atilde; nhiều lần trải qua c&aacute;c biến đổi bất thường của kh&iacute; hậu - thời tiết. Th&aacute;ng 5 năm 1926, H&agrave; Nội chứng kiến một đợt nắng khủng khiếp c&oacute; ng&agrave;y nhiệt độ l&ecirc;n tới 42,8oC. Th&aacute;ng 1 năm 1955, m&ugrave;a đ&ocirc;ng gi&aacute; buốt nhất trong lịch sử, H&agrave; Nội sống trong c&aacute;i gi&aacute; lạnh xuống đến 2,7oC. V&agrave; gần đ&acirc;y nhất th&aacute;ng 11 năm 2008, sau khi vừa mở rộng địa giới h&agrave;nh ch&iacute;nh, H&agrave; Nội hứng chịu một cơn mưa dữ dội chưa từng thấy. Hầu như tất cả c&aacute;c tuyến phố đều ngập ch&igrave;m trong nước, lượng mưa lớn vượt qu&aacute; mọi dự b&aacute;o đ&atilde; g&acirc;y ra một trận lụt lịch sử ở H&agrave; Nội, l&agrave;m nhiều người chết, g&acirc;y thiệt hại vật chất đ&aacute;ng kể.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 'images/posts/gioi-thieu.jpg', 'Giới Thiệu', null, '308', '0', '2015-06-19 08:04:14', '2017-06-01 04:46:41', '2', 'post', '1', 'post', '0', '0', '1', '0', null, 'noi that go thong hai phong, noi that ihome, noi that dep tai hai phong', 'Giới thiệu về nội thất I - Home tại Hải Phòng', 'Chuyên về các loại bàn ghế gỗ thông cho nhà hàng, cafe, quầy bar, giá sách, bàn văn phòng tại Hải Phòng', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('266', null, null, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', '<p>1.&nbsp;Chọn sản phẩm bạn th&iacute;ch nhất tr&ecirc;n website hoặc đến trực tiếp showroom I - Home số 338 Ng&ocirc; Gia Tự, Hải An, Hải Ph&ograve;ng</p>\r\n\r\n<p>2. Gọi đến Hotline: <strong>0962 332 686</strong> hoặc <strong>0919 229 008</strong> <em>(24/24) </em>để được tư vấn kỹ hơn về sản phẩm cũng như thời gian giao h&agrave;ng.</p>\r\n\r\n<p>3. Chốt đơn h&agrave;ng bằng c&aacute;ch đặt cọc 30% gi&aacute; trị đơn h&agrave;ng, 70% c&ograve;n lại thanh to&aacute;n khi nhận đầy đủ h&agrave;ng h&oacute;a. C&oacute; thể thanh to&aacute;n trực tiếp hoặc chuyển khoản</p>\r\n', 'images/posts/huong-dan-mua-hang_2.jpg', 'Hướng dẫn mua hàng', null, '308', '0', '2015-06-23 09:44:44', '2017-06-01 05:00:46', '2', 'post', '1', 'post', '0', '0', '1', '0', null, 'huong dan mua hang i home, i home hai phong', 'Hướng dẫn mua hàng tại showroom nội thất I - Home Hải Phòng', 'Hướng dẫn mua hàng tại showroom nội thất I - Home Hải Phòng', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('306', null, null, 'Sản phẩm', 'san-pham', null, null, '', null, '0', '0', '2015-08-14 16:54:43', '2017-05-24 07:39:34', '1', 'product', '1', 'category_product', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('308', null, null, 'Tin Tức', 'tin-tuc', null, null, '', null, '0', '0', '2015-08-14 16:56:58', '2017-05-26 02:18:03', '1', 'post', '1', 'category', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('309', null, null, 'Liên Hệ', 'lien-he', null, null, '', null, '0', '1', '2015-08-14 16:57:39', '2017-05-26 02:18:03', '1', 'post', '1', 'category', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('317', null, null, 'Ẩm thực', 'am-thuc', null, '/images/categories/BxyWlyhz-dien-thoai-may-tinh.jpg', 'Ẩm thực', null, '306', '0', '2015-08-14 17:05:44', '2017-06-20 08:28:56', '1', 'product', '1', 'category_product', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('318', null, null, 'Thời trang', 'thoi-trang', null, null, 'Thời trang', null, '306', '1', '2015-08-14 17:06:26', '2017-06-20 08:29:13', '1', 'product', '1', 'category_product', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('319', null, null, 'Công nghệ', 'cong-nghe', null, null, 'Công nghệ', null, '306', '2', '2015-08-14 17:09:12', '2017-06-20 08:29:34', '1', 'product', '1', 'category_product', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('320', null, null, 'Làm đẹp', 'lam-dep', null, null, 'Làm đẹp', null, '306', '3', '2015-08-14 17:10:25', '2017-06-20 08:29:59', '1', 'product', '1', 'category_product', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('321', '', '', 'Trang chủ', 'trang-chu', '', null, null, null, '0', '2', '2015-08-15 03:00:22', '2017-05-26 02:18:03', '1', 'post', '1', '0', '0', '0', '1', '1', null, '', '', '', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('358', null, null, 'Công lý chao đảo vụ vợ “tố” chồng cũ ép viết giấy nợ 2,5 tỷ bằng dao!', 'dich-vu-mo-khoa-24h7-785-tcd-bw0-gvu', '<p><strong>Huỷ hai bản &aacute;n c&oacute; nhiều dấu hiệu tr&aacute;i quy định của ph&aacute;p luật</strong></p>\r\n\r\n<div class=\"VCSortableInPreviewMode\" style=\"margin-bottom: 9.18403px; padding: 0px; outline: none; max-width: 100%; background-color: rgb(238, 238, 238); font-family: tahoma; color: rgb(0, 0, 0); margin-top: 0px !important; margin-right: auto !important; margin-left: auto !important;\">\r\n<div style=\"margin: 0px auto 0px 80px; padding: 0px; outline: none; max-width: 100%;\"><img alt=\"Mảnh giấy nhận nợ mà bà Lụa khẳng định đã bị chồng cũ dùng dao khống chế, ép buộc viết.\" id=\"img_110766\" src=\"https://dantricdn.com/2017/giaynhanno-1496100707755.jpg\" style=\"border:none; display:inline; float:left; margin:0px auto; max-width:100%; outline:none; padding:0px; vertical-align:bottom; width:460px\" /></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ủy ban Thẩm ph&aacute;n TAND cấp cao tại TP.HCM vừa chấp nhận to&agrave;n bộ kh&aacute;ng nghị của Viện KSND c&ugrave;ng cấp, quyết định hủy 2 bản &aacute;n d&acirc;n sự sơ thẩm (của TAND quận G&ograve; Vấp) v&agrave; ph&uacute;c thẩm (của TAND TP.HCM) đ&atilde; tuy&ecirc;n buộc b&agrave; Đỗ Hồng Lụa (ngụ quận G&ograve; Vấp) l&agrave; bị đơn trong vụ &aacute;n d&acirc;n sự &quot;Tranh chấp t&agrave;i sản&quot; với &ocirc;ng L&ecirc; Đức Long (ngụ quận 12, chồng cũ của b&agrave; Lụa) phải trả số tiền h&agrave;ng tỷ đồng m&agrave; b&agrave; Lụa tố bị &eacute;p viết giấy nợ bằng... dao!</p>\r\n\r\n<p>Cuối năm 2016, sau nhiều lần b&agrave; Lụa &quot;đội đơn&quot; cầu cứu c&aacute;c cơ quan chức năng k&ecirc;u oan về hai bản &aacute;n d&acirc;n sự đ&atilde; bị tuy&ecirc;n, VKSND Cấp cao tại TP.HCM đ&atilde; c&oacute; kh&aacute;ng nghị gi&aacute;m đốc thẩm đề nghị hủy bản &aacute;n sơ thẩm của TAND quận G&ograve; Vấp v&agrave; bản &aacute;n ph&uacute;c thẩm của TAND TP.HCM đ&atilde; tuy&ecirc;n đối với b&agrave; Lụa. Từ những t&agrave;i liệu li&ecirc;n quan đến vụ &aacute;n, VKS Cấp cao tại TP.HCM x&eacute;t thấy: &quot;B&agrave; Lụa v&agrave; &ocirc;ng Long chung sống với nhau từ năm 2002 kh&ocirc;ng c&oacute; đăng k&iacute; kết h&ocirc;n v&agrave; c&oacute; 2 con chung. Do thường xuy&ecirc;n m&acirc;u thuẫn n&ecirc;n ng&agrave;y 5/10/2011, b&agrave; Lụa khởi kiện ly h&ocirc;n v&agrave; được TAND quận G&ograve; Vấp tuy&ecirc;n xử: Về quan hệ h&ocirc;n nh&acirc;n &quot;Kh&ocirc;ng c&ocirc;ng nhận b&agrave; Lụa v&agrave; &ocirc;ng Long l&agrave; vợ chồng&quot;. Về t&agrave;i sản chung &quot;Hai b&ecirc;n x&aacute;c định kh&ocirc;ng c&oacute;&quot;. Về con chung: &quot;B&agrave; Lụa trực tiếp nu&ocirc;i dưỡng&quot;.</p>\r\n\r\n<p>VKSND Cấp cao tại TP.HCM cho rằng, c&oacute; đủ cơ sở để x&aacute;c định giấy nhận nợ ng&agrave;y 2/11/2011 được b&agrave; Lụa viết tại nh&agrave; ri&ecirc;ng trong điều kiện bị &ocirc;ng Long d&ugrave;ng vũ lực de doạ. Mặc d&ugrave; kh&ocirc;ng đủ căn cứ để khởi tố &ocirc;ng Long về h&agrave;nh vi &quot;Cưỡng đoạt t&agrave;i sản&quot; nhưng cơ quan CSĐT C&ocirc;ng an quận G&ograve; Vấp đ&atilde; chứng minh r&otilde; &ocirc;ng Long c&oacute; h&agrave;nh vi uy hiếp, khống chế, &eacute;p buộc b&agrave; lụa viết v&agrave; k&yacute; giấy nhận nợ.</p>\r\n\r\n<p>VKSND Cấp cao tại TP.HCM cũng chỉ r&otilde;, bản &aacute;n sơ thẩm v&agrave; ph&uacute;c thẩm kh&ocirc;ng xem x&eacute;t c&aacute;c chứng cứ kh&aacute;ch quan để b&aacute;c y&ecirc;u cầu của &ocirc;ng Long v&agrave; tuy&ecirc;n giao dịch d&acirc;n sự v&ocirc; hiệu m&agrave; căn cứ giấy nhận nợ để buộc b&agrave; Lụa trả cho &ocirc;ng Long số tiền 2,5 tỷ đồng l&agrave; kh&ocirc;ng c&oacute; cơ sở, tr&aacute;i quy định của ph&aacute;p luật, vi phạm Điều 122, 132 BLDS quy định về điều kiện c&oacute; hiệu lực của giao dịch d&acirc;n sự do vi phạm c&aacute;c điều cấm của luật, g&acirc;y thiệt hại nghi&ecirc;m trọng đến quyền lợi của b&agrave; Lụa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"VCSortableInPreviewMode\" style=\"margin-bottom: 9.18403px; padding: 0px; outline: none; max-width: 100%; background-color: rgb(238, 238, 238); font-family: tahoma; color: rgb(0, 0, 0); margin-top: 0px !important; margin-right: auto !important; margin-left: auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img alt=\"VKS Cấp cao tại TP.HCM có kháng nghị giám đốc thẩm đề nghị hủy bản án dân sự sơ thẩm của TAND quận Gò Vấp và bản án phúc thẩm của TAND TP.HCM đã tuyên đối với bà Đỗ Hồng Lụa trọng vụ giấy nhận nợ 2,5 tỷ đồng.\" id=\"img_110767\" src=\"https://dantricdn.com/2017/qd-1496100707758.jpg\" style=\"border:none; display:inline; margin:0px auto; max-width:100%; outline:none; padding:0px; vertical-align:bottom; width:460px\" /></div>\r\n\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">VKS Cấp cao tại TP.HCM c&oacute; kh&aacute;ng nghị gi&aacute;m đốc thẩm đề nghị hủy bản &aacute;n d&acirc;n sự sơ thẩm của TAND quận G&ograve; Vấp v&agrave; bản &aacute;n ph&uacute;c thẩm của TAND TP.HCM đ&atilde; tuy&ecirc;n đối với b&agrave; Đỗ Hồng Lụa trọng vụ giấy nhận nợ 2,5 tỷ đồng.</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Từ những ph&acirc;n t&iacute;ch tr&ecirc;n, VKSND Cấp cao tại TP.HCM quyết định kh&aacute;ng nghị bản &aacute;n d&acirc;n sự ph&uacute;c thẩm của TAND TP.HCM tuy&ecirc;n ng&agrave;y 17/9/2015. VKSND Cấp cao tại TP.HCM cũng đề nghị Uỷ ban Thẩm ph&aacute;n TAND Cấp cao tại TP.HCM x&eacute;t xử gi&aacute;m đốc thẩm theo hướng hủy bản &aacute;n d&acirc;n sự ph&uacute;c thẩm của TAND TP.HCM v&agrave; bản &aacute;n sơ thẩm của TAND quận G&ograve; Vấp. Giao hồ sơ vụ &aacute;n cho TAND quận G&ograve; Vấp x&eacute;t xử sơ thẩm lại theo đ&uacute;ng quy định của ph&aacute;p luật.</p>\r\n\r\n<p>VKSND Cấp cao tại TP.HCM cũng quyết định tạm đ&igrave;nh chỉ thi h&agrave;nh bản &aacute;n d&acirc;n sự ph&uacute;c thẩm của TAND TP.HCM cho đến khi c&oacute; quyết định gi&aacute;m đốc thẩm.</p>\r\n\r\n<p>Sau khi Viện KSND Cấp cao đề nghị tuy&ecirc;n hủy 2 bản &aacute;n, Ủy ban thẩm ph&aacute;n TAND Cấp cao tại TP.HCM đ&atilde; chấp nhận to&agrave;n bộ kh&aacute;ng nghị của Viện KSND c&ugrave;ng cấp, tuy&ecirc;n hủy hai bản &aacute;n d&acirc;n sự sơ thẩm v&agrave; ph&uacute;c thẩm đ&atilde; tuy&ecirc;n trong vụ vợ &quot;tố&quot; chồng cũ d&ugrave;ng dao khống chế, &eacute;p viết giấy nợ 2,5 tỷ đồng, đồng thời ra quyết định tạm đ&igrave;nh chỉ thi h&agrave;nh bản &aacute;n d&acirc;n sự ph&uacute;c thẩm của TAND TP.HCM.</p>\r\n\r\n<p><strong>Nhiều điểm &quot;mập mờ&quot; cần l&agrave;m r&otilde;!</strong></p>\r\n\r\n<div class=\"VCSortableInPreviewMode\" style=\"margin-bottom: 9.18403px; padding: 0px; outline: none; max-width: 100%; background-color: rgb(238, 238, 238); font-family: tahoma; color: rgb(0, 0, 0); margin-top: 0px !important; margin-right: auto !important; margin-left: auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img alt=\"Lời khai của nhân chứng với cơ quan Công an về việc bà Lụa bị chồng cũ dùng dao khống chế ép buộc viết giấy nhận nợ 2,5 tỷ đồng nhưng không được toà sơ thẩm và phúc thẩm để ý đến.\" id=\"img_110768\" src=\"https://dantricdn.com/2017/bienban-1496100707753.jpg\" style=\"border:none; display:inline; margin:0px auto; max-width:100%; outline:none; padding:0px; vertical-align:bottom; width:460px\" /></div>\r\n\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">Lời khai của nh&acirc;n chứng với cơ quan C&ocirc;ng an về việc b&agrave; Lụa bị chồng cũ d&ugrave;ng dao khống chế &eacute;p buộc viết giấy nhận nợ 2,5 tỷ đồng nhưng kh&ocirc;ng được to&agrave; sơ thẩm v&agrave; ph&uacute;c thẩm &quot;để &yacute;&quot; đến.</div>\r\n</div>\r\n\r\n<p>Trong đơn cầu cứu gửi đến B&aacute;o D&acirc;n tr&iacute; v&agrave; nhiều cơ quan chức năng, b&agrave; Lụa tr&igrave;nh b&agrave;y, khoảng 12h trưa 2/11/2011, &ocirc;ng Long cầm theo dao, tr&egrave;o qua tường đột nhập v&agrave;o nh&agrave; b&agrave; tr&ecirc;n đường Quang Trung (phường 8, quận G&ograve; Vấp). L&uacute;c n&agrave;y, chị Đinh Thị Thoa (người gi&uacute;p việc của gia đ&igrave;nh b&agrave; Lụa) ph&aacute;t hiện th&igrave; bị &ocirc;ng Long đ&aacute;nh v&agrave;o mặt l&agrave;m chảy m&aacute;u mũi, m&aacute;u mồm. Sau đ&oacute; &ocirc;ng Long lao đến kề dao v&agrave;o cổ, buộc b&agrave; Lụa phải viết giấy vay nợ &ocirc;ng Long số tiền 2,5 tỷ đồng.</p>\r\n\r\n<p>&ldquo;Thấy &ocirc;ng Long hung dữ v&agrave; muốn đảm bảo an to&agrave;n cho mọi người v&agrave; đứa con g&aacute;i mới 4 tuổi ở b&ecirc;n n&ecirc;n t&ocirc;i viết theo nội dung m&agrave; &ocirc;ng Long y&ecirc;u cầu. Thời điểm n&agrave;y c&oacute; nhiều người h&agrave;ng x&oacute;m đứng b&ecirc;n ngo&agrave;i đường nh&igrave;n v&agrave;o. Khi lấy được mảnh giấy vay nợ từ tay t&ocirc;i th&igrave; &ocirc;ng Long vội v&atilde; cầm dao bỏ đi, t&ocirc;i cũng chạy đến c&ocirc;ng an phường 8 tr&igrave;nh b&aacute;o vụ việc&rdquo;, b&agrave; Lụa tr&igrave;nh b&agrave;y.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, bản tường tr&igrave;nh v&agrave; bi&ecirc;n bản ghi lời của b&agrave; Đinh Thị Thoa (người gi&uacute;p việc cho gia đ&igrave;nh b&agrave; Lụa v&agrave; cũng l&agrave; nh&acirc;n chứng quan trọng nhất vụ &aacute;n n&agrave;y) tại cơ quan c&ocirc;ng an thể hiện nội dung như b&agrave; Lụa đ&atilde; tr&igrave;nh b&agrave;y ở tr&ecirc;n. Thậm ch&iacute; b&agrave; Thoa c&ograve;n lập vi bằng để khẳng định việc b&agrave; nh&igrave;n thấy &ocirc;ng Long d&ugrave;ng dao khống chế, buộc b&agrave; Lụa viết mảnh giấy nhận nợ 2,5 tỷ đồng.</p>\r\n\r\n<div class=\"VCSortableInPreviewMode\" style=\"margin-bottom: 9.18403px; padding: 0px; outline: none; max-width: 100%; background-color: rgb(238, 238, 238); font-family: tahoma; color: rgb(0, 0, 0); margin-top: 0px !important; margin-right: auto !important; margin-left: auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img alt=\"Bản tường trình của bà Đinh Thị Thoa khẳng định đã chứng kiến việc ông Long dùng dao khống chế bà Lụa buộc viết giấy nợ 2,5 tỷ đồng.\" id=\"img_110769\" src=\"https://dantricdn.com/2017/tuongtrinh-1496100707760.jpg\" style=\"border:none; display:inline; margin:0px auto; max-width:100%; outline:none; padding:0px; vertical-align:bottom; width:460px\" /></div>\r\n\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">Bản tường tr&igrave;nh của b&agrave; Đinh Thị Thoa khẳng định đ&atilde; chứng kiến việc &ocirc;ng Long d&ugrave;ng dao khống chế b&agrave; Lụa buộc viết giấy nợ 2,5 tỷ đồng.</div>\r\n</div>\r\n\r\n<p>Li&ecirc;n quan đến vụ việc n&agrave;y, Luật sư Hồ Nguy&ecirc;n Lễ - Trưởng Văn ph&ograve;ng Luật sư Luật T&iacute;n Nghĩa, Đo&agrave;n Luật sư TP.HCM nhận định, trong giấy nhận nợ ng&agrave;y 2/11/2011 kh&ocirc;ng ghi r&otilde; b&agrave; Lụa vay tiền từ năm n&agrave;o, n&ecirc;n chỉ c&oacute; thể x&aacute;c định thời điểm vay kể từ ng&agrave;y k&yacute; 2/11/2011, do đ&oacute; số tiền 2,5 tỷ đồng &ocirc;ng Long chỉ c&oacute; thể giao cho b&agrave; Lụa ngay hoặc sau ng&agrave;y k&yacute; 2/11/2011. Như vậy sau ly h&ocirc;n b&agrave; Lụa vay tiền của &ocirc;ng Long để mua nh&agrave; 144 Đ&ocirc;ng Hưng Thuận của ch&iacute;nh b&agrave; Lụa l&agrave; qu&aacute; m&acirc;u thuẫn.</p>\r\n\r\n<p>&ldquo;Mảnh giấy nhận nợ 2,5 tỷ đồng được b&agrave; Lụa viết đ&uacute;ng v&agrave;o ng&agrave;y 2/11/2011 khi &ocirc;ng Long đến g&acirc;y rối v&agrave; đ&aacute;nh người, &ocirc;ng Long đ&atilde; thừa nhận c&oacute; x&ocirc; x&aacute;t. Liệu mảnh giấy nhận nợ n&agrave;y c&oacute; đ&uacute;ng &yacute; ch&iacute; chủ quan, tự nguyện của b&agrave; Lụa hay kh&ocirc;ng? C&oacute; nhiều cơ sở để x&aacute;c định dấu hiệu b&agrave; Lụa bị &eacute;p ghi giấy nợ &ldquo;khống&rdquo; nhưng tại sao t&ograve;a &aacute;n vẫn bỏ qua? Đối với giao dịch vay nợ, ngo&agrave;i việc thỏa thuận vay th&igrave; phải c&oacute; h&agrave;nh vi giao nhận tiền hoặc thỏa thuận cấn trừ khoản giao dịch kh&aacute;c th&agrave;nh vay nợ, b&agrave; Lụa kh&ocirc;ng thừa nhận đ&atilde; nhận tiền của &ocirc;ng Long nhưng v&igrave; sao trong qu&aacute; tr&igrave;nh x&eacute;t xử, t&ograve;a &aacute;n đ&atilde; kh&ocirc;ng x&aacute;c minh, thu thập chứng cứ &ocirc;ng Long c&oacute; giao tiền hay kh&ocirc;ng v&agrave; &ocirc;ng Long kh&ocirc;ng cung cấp chứng cứ thuyết phục n&agrave;o kh&aacute;c nhưng tại sao t&ograve;a &aacute;n vẫn buộc b&agrave; Lụa phải trả 2,5 tỷ đồng cho &ocirc;ng Long? Rất nhiều uẩn kh&uacute;c cần được l&agrave;m r&otilde;&rdquo;, LS Lễ ph&acirc;n t&iacute;ch.</p>\r\n\r\n<div class=\"VCSortableInPreviewMode\" style=\"margin-bottom: 9.18403px; padding: 0px; outline: none; max-width: 100%; background-color: rgb(238, 238, 238); font-family: tahoma; color: rgb(0, 0, 0); margin-top: 0px !important; margin-right: auto !important; margin-left: auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img alt=\"Bà Đinh Thị Thoa lập vi bằng về việc đã chứng kiến việc ông Long dùng dao khống chế bà Lụa buộc viết giấy nợ 2,5 tỷ đồng.\" id=\"img_110770\" src=\"https://dantricdn.com/2017/bang-1496100707752.jpg\" style=\"border:none; display:inline; margin:0px auto; max-width:100%; outline:none; padding:0px; vertical-align:bottom; width:460px\" /></div>\r\n\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">B&agrave; Đinh Thị Thoa lập vi bằng về việc đ&atilde; chứng kiến việc &ocirc;ng Long d&ugrave;ng dao khống chế b&agrave; Lụa buộc viết giấy nợ 2,5 tỷ đồng.</div>\r\n</div>\r\n\r\n<p>Cũng theo LS Hồ Nguy&ecirc;n Lễ: &ldquo;Căn cứ v&agrave;o hồ sơ vụ việc, ngo&agrave;i giấy nhận nợ, &ocirc;ng Long kh&ocirc;ng c&oacute; chứng cứ n&agrave;o chứng minh b&agrave; Lụa c&oacute; giao dịch vay nợ với &ocirc;ng. Nhưng tại C&ocirc;ng văn 221 của C&ocirc;ng an G&ograve; Vấp x&aacute;c định c&oacute; nhiều người l&agrave;m chứng như b&agrave; Đinh Thị Thoa, Nguyễn Thị D&hellip; x&aacute;c nhận c&oacute; sự việc &ocirc;ng Long đ&atilde; d&ugrave;ng dao đe dọa buộc b&agrave; Lụa viết giấy nợ như C&ocirc;ng an G&ograve; Vấp v&agrave; cơ quan CSĐT c&ocirc;ng an TP.HCM đ&atilde; tiến h&agrave;nh x&aacute;c minh ghi lời khai của c&aacute;c nh&acirc;n chứng. Tuy nhi&ecirc;n, c&aacute;c cấp t&ograve;a &aacute;n vẫn bỏ qua, kh&ocirc;ng xem x&eacute;t c&aacute;c lời khai của nh&acirc;n chứng m&agrave; vẫn c&ocirc;ng nhận giấy nhận nợ c&oacute; gi&aacute; trị để buộc b&agrave; Lụa trả 2,5 tỷ đồng cho &ocirc;ng Long l&agrave; điều v&ocirc; l&yacute;&rdquo;.</p>\r\n\r\n<p>B&aacute;o&nbsp;<em>D&acirc;n tr&iacute;</em>&nbsp;sẽ tiếp tục th&ocirc;ng tin vụ việc.</p>\r\n', 'images/posts/cong-ly-chao-dao-vu-vo-to-chong-cu-ep-viet-giay-no-25-ty-bang-dao.jpg', 'Ủy ban Thẩm phán TAND Cấp cao tại TP.HCM đã chấp nhận toàn bộ kháng nghị của Viện KSND cùng cấp, tuyên hủy hai bản án dân sự sơ thẩm và phúc thẩm đã tuyên trong vụ vợ \"tố\" chồng cũ dùng dao khống chế, ép viết giấy nợ 2,5 tỷ đồng.', null, '308', '0', '2015-08-15 20:24:13', '2017-06-13 08:31:30', '2', 'post', '1', 'post', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('359', null, null, 'Dịch vụ 24h tại các tỉnh thành trong cả nước', 'dich-vu-24h-tai-cac-tinh-thanh-trong-ca-nuoc-fix-pqa_PSm', '<p><em>Hiện nay, dịch vụ 24h/7 đ&atilde; v&agrave; đang tiếp tục ph&aacute;t triển c&aacute;c dịch vụ hỗ trợ c&aacute;c kh&aacute;ch h&agrave;ng ở c&aacute;c tỉnh xa tr&ecirc;n cả nước đang cần nhu cầu về ch&igrave;a kh&oacute;a xe &ocirc; t&ocirc; ngay. C&ocirc;ng ty sẽ cố gắng đ&aacute;p ứng y&ecirc;u cầu kh&aacute;ch h&agrave;ng một c&aacute;ch nhanh nhất. C&aacute;c tỉnh Ph&iacute;a Nam như : C&agrave; Mau ,Cần thơ, B&igrave;nh Định, Đồng Nai, KonTum, S&agrave;i G&ograve;n.., Miền Trung như : Kh&aacute;nh H&ograve;a, Quảng Nam ,Đ&agrave; nẵng , H&agrave; Tĩnh. C&aacute;c tỉnh Ph&iacute;a Bắc như : Tuy&ecirc;n Quang, H&agrave; Giang, Th&aacute;i Nguy&ecirc;n, Bắc Ninh, Bắc Giang, Hải Ph&ograve;ng, H&agrave; Nội... C&ocirc;ng ty ch&uacute;ng t&ocirc;i sẽ cố gắng sẽ c&agrave;ng ng&agrave;y mạng lưới hỗ trợ kh&aacute;ch h&agrave;ng một c&aacute;ch nhanh nhất, tốt nhất. Hợp l&yacute; nhất...&nbsp;</em></p>\r\n', 'images/posts/dich-vu-24h-tai-cac-tinh-thanh-trong-ca-nuoc_1.jpg', 'Hiện nay, dịch vụ 24h/7 đã và đang tiếp tục phát triển các dịch vụ hỗ trợ các khách hàng ở các tỉnh xa', null, '308', '0', '2015-08-15 20:26:41', '2017-06-14 06:12:10', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('360', null, null, '	 Sửa chữa chìa khóa Mercedes khi rơi vào máy giặt', 'sua-chua-chia-khoa-mercedes-khi-roi-vao-may-giat-euh-xts-y10', '<p><em>C&ocirc;ng ty ch&uacute;ng t&ocirc;i nhận sửa, chữa c&aacute;c loại ch&igrave;a kh&oacute;a khi d&ugrave;ng m&agrave; rơi v&agrave;o nước với c&aacute;c linh kiện thay thế . Sau khi kiểm tra ch&uacute;ng t&ocirc;i sẽ b&aacute;o cho qu&yacute; kh&aacute;ch biết l&agrave; sửa như thế n&agrave;o, thay c&aacute;i j, bị l&agrave;m sao, v&agrave; gi&aacute; cả hợp l&yacute; nhất cho người d&ugrave;ng.&nbsp;</em></p>\r\n', 'images/posts/sua-chua-chia-khoa-mercedes-khi-roi-vao-may-giat_1.jpg', 'Công ty chúng tôi nhận sửa, chữa các loại chìa khóa khi dùng mà rơi vào nước với các linh kiện thay thế . ', null, '308', '0', '2015-08-15 20:28:33', '2017-06-14 06:11:54', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('371', null, null, 'Giải trí', 'giai-tri', null, null, 'Giải trí', null, '306', '4', '2015-08-20 10:08:23', '2017-06-20 08:30:17', '1', 'product', '1', 'category_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('379', null, null, 'Safe hàng', 'safe-hang', null, null, '', null, '0', '3', '2015-08-20 22:25:25', '2017-05-26 02:18:03', '1', 'post', '1', 'category', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('380', null, null, 'WINTER SALE', 'winter-sale_xh3', '<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Nhiều chương tr&igrave;nh khuyến m&atilde;i đang được thực hiện tại hanghieusales.com v&agrave; tại kho 35/21C Trần Đ&igrave;nh Xu, Phường Cầu Kho, Quận 1.</span></p>\r\n', 'images/posts/winter-sale.JPG', '-40%', null, '379', '0', '2015-08-20 22:30:42', '2015-08-20 22:47:57', '2', 'post', '1', 'post', '0', '0', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('381', null, null, 'FREE UK DELIVERY', 'free-uk-delivery-awe', '<p><span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Nhiều chương tr&igrave;nh khuyến m&atilde;i đang được thực hiện tại hanghieusales.com v&agrave; tại kho 35/21C Trần Đ&igrave;nh Xu, Phường Cầu Kho, Quận 1.</span></p>\r\n', 'images/posts/free-uk-delivery.JPG', '-40%', null, '379', '0', '2015-08-20 22:32:07', '2015-08-20 22:47:29', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'I - Home - Nội thất văn phòng, gia đình, showroom, nhà hàng tại Hải Phòng', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, 'vi');
INSERT INTO `pages` VALUES ('389', null, null, 'Thủ tướng Nguyễn Xuân Phúc và Tổng thống Donald Trump sẽ hội đàm trong 90 phút fsdfs fsdfsd dfsdfsd fsdf', 'thu-tuong-nguyen-xuan-phuc-va-tong-thong-donald-trump-se-hoi-dam-trong-90-phut-m2a-bqc-t5z_9Qg', '<p>Đ&acirc;y l&agrave; chuyến thăm ch&iacute;nh thức tới Hoa Kỳ đầu ti&ecirc;n của Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c tr&ecirc;n cương vị Thủ tướng Ch&iacute;nh phủ, v&agrave; l&agrave; lần tiếp x&uacute;c đầu ti&ecirc;n giữa một l&atilde;nh đạo cấp cao nước ta với Tổng thống Hoa Kỳ Donald Trump kể từ khi cả hai nước c&oacute; Ban l&atilde;nh đạo mới.</p>\r\n\r\n<p>Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c thăm ch&iacute;nh thức Hoa Kỳ nhằm tiếp tục triển khai đường lối đối ngoại độc lập, tự chủ, đa phương ho&aacute;, đa dạng ho&aacute;, chủ động v&agrave; t&iacute;ch cực hội nhập quốc tế của Việt Nam. Chuyến thăm nhằm đẩy mạnh v&agrave; l&agrave;m s&acirc;u sắc hơn quan hệ với c&aacute;c đối t&aacute;c, c&aacute;c nước lớn, trong đ&oacute; c&oacute; Hoa Kỳ.</p>\r\n\r\n<p>Việt Nam nhất qu&aacute;n coi trọng ph&aacute;t triển quan hệ với Hoa Kỳ v&agrave; sẵn s&agrave;ng hợp t&aacute;c với ch&iacute;nh quyền của Tổng thống Donald Trump tr&ecirc;n cơ sở ph&aacute;t huy những kết quả đạt được v&agrave; th&uacute;c đẩy hơn nữa quan hệ song phương theo định hướng của quan hệ đối t&aacute;c to&agrave;n diện Việt Nam - Hoa Kỳ năm 2013, tuy&ecirc;n bố về tầm nh&igrave;n chung nh&acirc;n chuyến thăm Hoa Kỳ của Tổng B&iacute; thư Nguyễn Ph&uacute; Trọng năm 2015 v&agrave; tuy&ecirc;n bố chung Việt Nam - Hoa Kỳ nh&acirc;n chuyến thăm Việt Nam của Tổng thống Hoa Kỳ Barack Obama năm 2016.</p>\r\n\r\n<div class=\"VCSortableInPreviewMode IMSCurrentEditorEditObject\" style=\"margin-bottom: 9.18403px; padding: 0px; outline: none; max-width: 100%; background-color: rgb(238, 238, 238); font-family: tahoma; color: rgb(0, 0, 0); margin-top: 0px !important; margin-right: auto !important; margin-left: auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img alt=\"Thủ tướng Nguyễn Xuân Phúc và Tổng thống Donald Trump sẽ có cuộc hội đàm tại Nhà trắng, dự kiến kéo dài 1,5 tiếng (ảnh: TG, PP)\" id=\"img_110207\" src=\"https://dantricdn.com/2017/nha-trang-my-1496022749274.jpg\" style=\"border:none; display:inline; margin:0px auto; max-width:100%; outline:none; padding:0px; vertical-align:bottom; width:460px\" /></div>\r\n\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c v&agrave; Tổng thống Donald Trump sẽ c&oacute; cuộc hội đ&agrave;m tại Nh&agrave; trắng, dự kiến k&eacute;o d&agrave;i 1,5 tiếng (ảnh: TG, PP)</div>\r\n</div>\r\n\r\n<p>Tại Hoa Kỳ, người đứng đầu Ch&iacute;nh phủ Việt Nam sẽ c&oacute; cuộc hội đ&agrave;m với Tổng thống Donald Trump. Dự kiến, cuộc hội đ&agrave;m sẽ k&eacute;o d&agrave;i trong v&ograve;ng 90 ph&uacute;t tại Nh&agrave; trắng. L&atilde;nh đạo hai nước sẽ trao đổi c&aacute;c biện ph&aacute;p nhằm th&uacute;c đẩy quan hệ to&agrave;n diện Việt Nam - Hoa Kỳ trong thời gian tới, đặc biệt trong c&aacute;c vấn đề ch&iacute;nh trị, ngoại giao, kinh tế thương mại, gi&aacute;o dục, khắc phục hậu quả chiến tranh, c&aacute;c vấn đề khu vực v&agrave; quốc tế c&ugrave;ng quan t&acirc;m, v&igrave; ho&agrave; b&igrave;nh, ổn định, hợp t&aacute;c v&agrave; ph&aacute;t triển ở khu vực v&agrave; tr&ecirc;n thế giới.</p>\r\n\r\n<p>Bộ Ngoại giao Việt Nam cho biết, đ&ecirc;m 29/5 (theo giờ Việt Nam), Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c c&ugrave;ng đo&agrave;n đại biểu cấp cao Việt Nam rời H&agrave; Nội, bắt đầu l&ecirc;n đường thăm ch&iacute;nh thức Hợp chủng quốc Hoa Kỳ.</p>\r\n\r\n<p>Ng&agrave;y 30/5, Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c c&oacute; nhiều hoạt động tại New York - Mỹ, Thủ tướng sẽ gặp gỡ c&aacute;n bộ ph&aacute;i đo&agrave;n Việt Nam tại New York v&agrave; doanh nghiệp Việt kiều&hellip;</p>\r\n\r\n<p>Tiếp đ&oacute;, ng&agrave;y 31/5, Thủ tướng gặp gỡ Tổng Thư k&yacute; Li&ecirc;n Hợp Quốc Antonio Giterres tại trụ sở Li&ecirc;n Hợp Quốc. Tại đ&acirc;y, Thủ tướng dự Lễ kỷ niệm 40 năm Việt Nam gia nhập Li&ecirc;n Hợp Quốc c&ugrave;ng với Tổng Thư k&yacute; Antonio Guterres.</p>\r\n\r\n<p>Cũng trong ng&agrave;y 31/5, Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c sẽ tiếp đại diện thương mại v&agrave; doanh nghiệp Hoa Kỳ, dự tiệc ch&agrave;o mừng của cộng đồng doanh nghiệp Hoa Kỳ. Trong tiệc ch&agrave;o mừng, Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c c&oacute; b&agrave;i ph&aacute;t biểu về Năm APEC Việt Nam 2017.</p>\r\n\r\n<p>Ng&agrave;y 1/6 (theo giờ Việt Nam), Thủ tướng Nguyễn Xu&acirc;n Ph&uacute;c hội đ&agrave;m với Tổng thống Donald Trump tại Nh&agrave; trắng, dự kiến thời gian hội d&agrave;m sẽ diễn ra trong 1,5 tiếng. Hai nh&agrave; l&atilde;nh đạo sẽ thảo luận về quan hệ song phương v&agrave; hợp t&aacute;c khu vực. Thủ tướng v&agrave; Tổng thống Hoa Kỳ sẽ gặp gỡ b&aacute;o ch&iacute; sau cuộc hội đ&agrave;m.</p>\r\n\r\n<p>C&ugrave;ng ng&agrave;y, Thủ tướng tiếp x&uacute;c v&agrave; trao đổi với một số Nghị sĩ chủ chốt của Quốc hội Hoa Kỳ, tiếp một số Bộ trưởng kinh tế của Hoa Kỳ. Thủ tướng sẽ dự tọa đ&agrave;m với c&aacute;c doanh nghiệp Hoa Kỳ; ph&aacute;t biểu về quan hệ song phương tại Quỹ Heritage Foundation; dự v&agrave; ph&aacute;t biểu Năm APEC Việt Nam 2017 tại tiệc ch&agrave;o mừng của cộng đồng doanh nghiệp v&agrave; ch&iacute;nh giới Hoa Kỳ; gặp gỡ c&aacute;n bộ Đại sứ qu&aacute;n Việt Nam tại Hoa Kỳ.</p>\r\n\r\n<p>Thời gian qua, quan hệ Việt Nam - Hoa Kỳ đ&atilde; đạt được những bước ph&aacute;t triển t&iacute;ch cực tr&ecirc;n tất cả c&aacute;c lĩnh vực kể từ khi hai nước x&aacute;c lập quan hệ Đối t&aacute;c to&agrave;n diện v&agrave;o th&aacute;ng 7/2013, tr&ecirc;n cơ sở t&ocirc;n trọng thể chế ch&iacute;nh trị, con đường ph&aacute;t triển của nhau, t&ocirc;n trọng độc lập, chủ quyền, to&agrave;n vẹn l&atilde;nh thổ, kh&ocirc;ng can thiệp v&agrave;o c&ocirc;ng việc nội bộ của nhau. Hai b&ecirc;n hợp t&aacute;c c&ugrave;ng c&oacute; lợi, đ&oacute;ng g&oacute;p v&agrave;o việc duy tr&igrave; ho&agrave; b&igrave;nh, ổn định, hợp t&aacute;c v&agrave; ph&aacute;t triển ở Ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương. Hai b&ecirc;n duy tr&igrave;, tăng cường độ trao đổi đo&agrave;n c&aacute;c cấp.</p>\r\n\r\n<p>Từ năm 2005, Hoa Kỳ đ&atilde; trở th&agrave;nh một trong những đối t&aacute;c thương mại h&agrave;ng đầu của Việt Nam. Kim ngạch thương mại hai chiều tăng trưởng li&ecirc;n tục ở mức 20% trong những năm gần đ&acirc;y, ước đạt 53 tỷ USD năm 2016..</p>\r\n', 'images/posts/thu-tuong-nguyen-xuan-phuc-va-tong-thong-donald-trump-se-hoi-dam-trong-90-phut_2.jpg', 'Nhận lời mời của Tổng thống Hợp chủng quốc Hoa Kỳ Donald Trump, Thủ tướng Chính phủ Nguyễn Xuân Phúc thăm chính thức Hoa Kỳ từ ngày 29/5-31/5/2017. Thủ tướng có lịch trình làm việc dày đặc tại Mỹ, trong đó cuộc hội đàm với Tổng thống Donald Trump sẽ diễn ra ở Nhà trắng trong khoảng 90 phút.dfsdfsd fsdfsdf sdfsdfsd fsdfsdf sdfsdf sdfsdf', null, '308', '0', '2017-05-29 06:21:56', '2017-06-15 10:29:28', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('390', null, null, 'Nếu đấu giá “biển số đẹp” ô tô trong 2016 thì đã thu được 5.000 tỷ đồng?', 'sdfsdfsd-eev-wy6_LmK', '<p>Quy định tại Luật giao th&ocirc;ng đường bộ hiện quy định cấm bu&ocirc;n b&aacute;n biển số xe, như vậy khi dự luật n&agrave;y cho ph&eacute;p đấu gi&aacute; biển số xe (trừ biển số xe c&ocirc;ng) th&igrave; cần phải xem x&eacute;t lại để tr&aacute;nh chồng ch&eacute;o, m&acirc;u thuẫn. Khi Quốc hội th&ocirc;ng qua dự luật Quản l&yacute; v&agrave; sử dụng t&agrave;i sản Nh&agrave; nước th&igrave; n&ecirc;n bỏ quy định về cấm mua b&aacute;n biển số xe ở Luật giao th&ocirc;ng đường bộ. &Ocirc;ng Cảnh cũng cho biết, t&ocirc;i đ&atilde; liệt k&ecirc; cụ thể trong mỗi series số v&iacute; dụ từ 30A 000.01 đến 30A 999.99 c&oacute; 99.999 số sẽ c&oacute; 12.186 số đẹp, dự đo&aacute;n c&oacute; khoảng 61.500 chủ phương tiện y&ecirc;u cầu số theo ng&agrave;y sinh, ng&agrave;y cưới, số đặc biệt đối với c&aacute; nh&acirc;n họ. Theo t&iacute;nh to&aacute;n của vị đại biểu, tổng số tiền thu được cho mỗi series 99.999 số l&agrave; khoảng 1.639 tỷ đồng. &ldquo;Với số lượng xe &ocirc; t&ocirc; b&aacute;n ra năm 2016 l&agrave; hơn 300.000 xe, trừ đi số lượng xe c&ocirc;ng, th&igrave; nếu thực hiện đấu gi&aacute;, định gi&aacute; th&igrave; trong năm 2016 ch&uacute;ng ta đ&atilde; c&oacute; thể thu được gần 5.000 tỷ đồng. Nếu triển khai tương tự cho xe 2 b&aacute;nh th&igrave; cũng thu số tiền kh&ocirc;ng k&eacute;m&rdquo;, đại biểu tỉnh B&igrave;nh Định cho hay. &Ocirc;ng Cảnh cho biết đ&atilde; gửi bảng tổng hợp số xe đẹp v&agrave; c&aacute;ch t&iacute;nh số tiền thu được đến cơ quan soạn thảo, cơ quan thẩm tra. Với những lập luận tr&ecirc;n, đại biểu Nguyễn Văn Cảnh đề nghị khi Quốc hội th&ocirc;ng qua dự thảo luật c&oacute; nội dung &ldquo;kho số kh&aacute;c phục vụ quản l&yacute; Nh&agrave; nước theo quy định của ph&aacute;p luật&rdquo; trong khoản 6 Điều 4, th&igrave; c&aacute;c cơ quan li&ecirc;n quan sớm triển khai thực hiện việc đấu gi&aacute; biển số để đ&aacute;p ứng nhu cầu của x&atilde; hội v&agrave; tăng ng&acirc;n s&aacute;ch cho c&aacute;c địa phương. Ngo&agrave;i ra, g&oacute;p &yacute; cho dự thảo, &ocirc;ng Cảnh cũng cho rằng, hiện tại, dự thảo mới quy định c&aacute;c h&igrave;nh thức c&ocirc;ng khai t&agrave;i sản c&ocirc;ng gồm c&ocirc;ng bố tr&ecirc;n cổng th&ocirc;ng tin điện tử, ni&ecirc;m yết c&ocirc;ng khai, c&ocirc;ng bố tại c&aacute;c cuộc họp&hellip;, song theo &ocirc;ng, quy định n&agrave;y vẫn chưa đ&aacute;p ứng được sự gi&aacute;m s&aacute;t thường xuy&ecirc;n của người d&acirc;n đối với t&agrave;i sản c&ocirc;ng. Ch&iacute;nh v&igrave; vậy, vị đại biểu đề nghị bổ sung th&ecirc;m một h&igrave;nh thức c&ocirc;ng khai kh&aacute;c l&agrave; c&ocirc;ng khai th&ocirc;ng tin tr&ecirc;n ch&iacute;nh t&agrave;i sản c&ocirc;ng đ&oacute;, như đất l&acirc;m trường, trụ sở cơ quan, nh&agrave; c&ocirc;ng vụ, xe c&ocirc;ng... Đ&acirc;y l&agrave; những t&agrave;i sản c&ocirc;ng m&agrave; vừa qua x&atilde; hội đ&atilde; phản &aacute;nh nhiều về việc quản l&yacute;, sử dụng thiếu chặt chẽ. Để bảo t&iacute;nh bảo mật, t&iacute;nh khả thi th&igrave; luật sẽ giao cho Ch&iacute;nh phủ quy định chi tiết, cụ thể th&ocirc;ng tin n&agrave;o th&igrave; n&ecirc;n c&ocirc;ng khai, th&ocirc;ng tin n&agrave;o th&igrave; giữ với từng loại t&agrave;i sản c&ocirc;ng.</p>\r\n', 'images/posts/neu-dau-gia-bien-so-dep-o-to-trong-2016-thi-da-thu-duoc-5000-ty-dong_1.jpg', 'Đại biểu Nguyễn Văn Cảnh cho biết, theo tính toán, tổng số tiền thu được cho mỗi series 99.999 số là khoảng 1.639 tỷ đồng. Với số lượng xe ô tô bán ra năm 2016 là hơn 300.000 xe, trừ đi số lượng xe công, thì nếu thực hiện đấu giá, định giá thì trong năm 2016 đã có thể thu được gần 5.000 tỷ đồng.', null, '308', '0', '2017-05-29 06:25:54', '2017-06-14 06:11:04', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('412', null, null, 'Bộ trưởng Bộ Y tế: Đúng quy trình không thể xảy ra sự cố!', 'bo-truong-bo-y-te-dung-quy-trinh-khong-the-xay-ra-su-co-hrx_ZNq', '<p><strong>Th&agrave;nh thực để t&igrave;m ra nguy&ecirc;n nh&acirc;n</strong></p>\r\n\r\n<p style=\"text-align:justify\">Trong nghề nghiệp của ch&uacute;ng ta, c&oacute; những c&aacute;i kh&ocirc;ng cần cơ quan điều tra v&agrave;o ch&uacute;ng ta cũng biết. Ch&uacute;ng ta phải nh&igrave;n thẳng v&agrave;o sự thật, trung thực. Ch&uacute;ng ta d&aacute;m l&agrave;m, d&aacute;m chịu tr&aacute;ch nhiệm&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">Tại buổi l&agrave;m việc với Gi&aacute;m đốc Sở Y tế H&ograve;a B&igrave;nh, BV Đa khoa tỉnh H&ograve;a B&igrave;nh s&aacute;ng 31/5, Bộ trưởng Bộ Y tế cho biết b&agrave; chia sẻ với c&aacute;c đồng nghiệp v&igrave; sự cố qu&aacute; lớn, khiến c&aacute;c y b&aacute;c sĩ đau đớn, hoang mang.</p>\r\n\r\n<div class=\"VCSortableInPreviewMode\" style=\"margin-bottom: 9.18403px; padding: 0px; outline: none; max-width: 100%; background-color: rgb(238, 238, 238); font-family: tahoma; color: rgb(0, 0, 0); margin-top: 0px !important; margin-right: auto !important; margin-left: auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img alt=\"\r\nBộ trưởng Bộ Y tế cho rằng, nếu làm đúng quy trình thì đã không thể xảy ra sự cố!\r\n\" id=\"img_dd138600-45b9-11e7-a665-51efb01dc95e\" src=\"https://dantricdn.com/thumb_w/640/2017/bo-truong-1-1496205027566.jpg\" style=\"border:none; display:inline; margin:0px auto; max-width:100%; outline:none; padding:0px; vertical-align:bottom; width:460px\" /></div>\r\n\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">\r\n<p>Bộ trưởng Bộ Y tế cho rằng, nếu l&agrave;m đ&uacute;ng quy tr&igrave;nh th&igrave; đ&atilde; kh&ocirc;ng thể xảy ra sự cố!</p>\r\n</div>\r\n</div>\r\n\r\n<p>&ldquo;Bệnh nh&acirc;n đau một, nhiều khi c&aacute;c b&aacute;c sĩ đau hai. Th&acirc;n nh&acirc;n gia đ&igrave;nh chia sẻ với t&ocirc;i, bệnh nh&acirc;n gặp sự cố họ rất đau đớn, nhưng bệnh nh&acirc;n d&ugrave; g&igrave; cũng đ&atilde; ra đi. Nhưng người ở lại, nhất l&agrave; c&aacute;c đồng ch&iacute; l&agrave;m trực tiếp sẽ c&ograve;n rất nhiều &aacute;p lực, hoang mang. V&igrave; thế, t&ocirc;i mong muốn c&aacute;c đồng ch&iacute; trung thực, cầu thị để cơ quan điều tra sớm kết th&uacute;c, sớm trở lại hoạt động của khoa phục vụ bệnh nh&acirc;n. Nếu kh&ocirc;ng đẩy nhanh tốc độ t&ocirc;i sợ sẽ l&agrave;m căng thẳng anh em, sẽ c&agrave;ng &aacute;p lực cho b&aacute;c sĩ&rdquo;, Bộ trưởng n&oacute;i.</p>\r\n\r\n<p style=\"text-align:justify\">Bộ trưởng Tiến cũng cho rằng, sự cố y khoa l&agrave; điều kh&ocirc;ng ai mong muốn, b&aacute;c sĩ, người chăm s&oacute;c bệnh nh&acirc;n kh&ocirc;ng bao giờ mong muốn. Tai biến y khoa lu&ocirc;n r&igrave;nh rập cả nước ph&aacute;t triển, nhưng sự cố n&agrave;y rất nghi&ecirc;m trọng, chắc chắn phải c&oacute; nguy&ecirc;n nh&acirc;n. V&agrave; d&ugrave; kh&ocirc;ng mong muốn, khi đ&atilde; xảy ra ch&uacute;ng ta phải t&igrave;m nguy&ecirc;n nh&acirc;n để khắc phục, phải c&oacute; người chịu tr&aacute;ch nhiệm. D&ugrave; kh&ocirc;ng muốn nhưng phải c&oacute; tr&aacute;ch nhiệm với việc ngo&agrave;i &yacute; muốn.</p>\r\n\r\n<p style=\"text-align:justify\">V&igrave; thế, Bộ trưởng y&ecirc;u cầu ng&agrave;nh y tế, BV Đa khoa tỉnh H&ograve;a B&igrave;nh phải phối hợp chặt chẽ với cơ quan điều tra để l&agrave;m r&otilde; sự việc.</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo;C&oacute; những c&aacute;i kh&ocirc;ng cần cơ quan điều tra v&agrave;o, nhưng trong nghề nghiệp, trong qu&aacute; tr&igrave;nh từ l&uacute;c nhận bệnh nh&acirc;n v&agrave;o, đến khi bắt đầu vận h&agrave;nh, sửa soạn, rửa dụng cụ, quy tr&igrave;nh đ&oacute; c&aacute;c đồng ch&iacute; nắm được hết, ai l&agrave;m kh&acirc;u n&agrave;o trong đ&oacute; đều nắm được hết.</p>\r\n\r\n<p style=\"text-align:justify\">V&igrave; thế t&ocirc;i n&oacute;i, c&oacute; những c&aacute;i nếu ch&uacute;ng ta trung thực kh&ocirc;ng cần cơ quan chức năng nhảy v&agrave;o. Ch&uacute;ng ta cầu thị th&igrave; dư luận, người nh&agrave;, cơ quan ban ng&agrave;nh, cơ quan chức năng cũng thấy được t&iacute;nh cầu thị, sự trung thực, tr&aacute;ch nhiệm với ng&agrave;nh, với bệnh nh&acirc;n, với ch&iacute;nh chuy&ecirc;n m&ocirc;n của ch&uacute;ng ta&rdquo;, Bộ trưởng nhấn mạnh.</p>\r\n\r\n<p style=\"text-align:justify\">Cũng theo b&agrave; Tiến, về quy tr&igrave;nh của Bộ Y tế đ&atilde; ban h&agrave;nh theo chuẩn y tế thế giới, mỗi năm c&oacute; h&agrave;ng triệu người chạy thận an to&agrave;n. &ldquo;10 năm nay c&aacute;c đồng ch&iacute; vận h&agrave;nh b&igrave;nh thường, giờ kh&ocirc;ng b&igrave;nh thường, chắc chắn phải c&oacute; sự cố ở một kh&acirc;u n&agrave;o đ&oacute;&rdquo;, Bộ trưởng đặt nghi vấn.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Muốn sớm vận h&agrave;nh phải t&igrave;m ra nguy&ecirc;n nh&acirc;n sớm</strong></p>\r\n\r\n<p style=\"text-align:justify\">Bộ trưởng Tiến lại một lần nữa chia sẻ mong muốn ng&agrave;nh y tế n&oacute;i thẳng, n&oacute;i thật để th&uacute;c đẩy nhanh qu&aacute; tr&igrave;nh t&igrave;m ra nguy&ecirc;n nh&acirc;n, thậm ch&iacute; cơ quan c&ocirc;ng an kh&ocirc;ng v&agrave;o những người trực tiếp l&agrave;m cũng tự biết.</p>\r\n\r\n<div class=\"VCSortableInPreviewMode IMSCurrentEditorEditObject\" style=\"margin-bottom: 9.18403px; padding: 0px; outline: none; max-width: 100%; background-color: rgb(238, 238, 238); font-family: tahoma; color: rgb(0, 0, 0); margin-top: 0px !important; margin-right: auto !important; margin-left: auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img alt=\"\r\nBộ trưởng Bộ Y tế Nguyễn Thị Kim Tiến làm việc với BV Đa khoa Hòa Bình sau sự cố sốc chạy thận.\r\n\" id=\"img_330dde70-45ba-11e7-9659-bfcaaa2ea1d8\" src=\"https://dantricdn.com/thumb_w/640/2017/bao-cao-vu-soc-than-1496205171901.jpg\" style=\"border:none; display:inline; margin:0px auto; max-width:100%; outline:none; padding:0px; vertical-align:bottom; width:460px\" /></div>\r\n\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">\r\n<p>Bộ trưởng Bộ Y tế Nguyễn Thị Kim Tiến l&agrave;m việc với BV Đa khoa H&ograve;a B&igrave;nh sau sự cố sốc chạy thận.</p>\r\n</div>\r\n</div>\r\n\r\n<p style=\"text-align:justify\">Trước mong muốn của Gi&aacute;m đốc Sở Y tế H&ograve;a B&igrave;nh Trần Quang Kh&aacute;nh sớm kh&ocirc;i phục lại hoạt động của khoa Thận nh&acirc;n tạo để hơn 100 bệnh nh&acirc;n suy thận kh&ocirc;ng phải vất vả di chuyển H&agrave; Nội chạy thận, Bộ trưởng Y tế cho biết h&ocirc;m qua khi họp tại BV Bạch Mai, Bộ trưởng v&agrave; BV Bạch Mai đều mong muốn hỗ trợ sớm nhất để kh&ocirc;i phục hoạt động sau khi r&agrave; so&aacute;t quy tr&igrave;nh chuy&ecirc;n m&ocirc;n đảm bảo an to&agrave;n.</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo;Tuy nhi&ecirc;n hiện giờ rất kh&oacute; khăn về mặt ph&aacute;p l&yacute; bởi mọi hồ sơ, dụng cụ đang ni&ecirc;m phong ch&uacute;ng ta kh&ocirc;ng thể v&agrave;o được. V&igrave; thế, để 100 bệnh nh&acirc;n được quay lại, kh&ocirc;ng phải tốn k&eacute;m vất vả, ổn định bệnh viện, th&igrave; phải nhanh ch&oacute;ng l&agrave;m r&otilde; nguy&ecirc;n nh&acirc;n, để cuộc điều tra chấm dứt, c&ocirc;ng bố nguy&ecirc;n nh&acirc;n, c&ocirc;ng khai dư luận&rdquo;, Bộ trưởng n&oacute;i.</p>\r\n\r\n<p style=\"text-align:justify\">Gi&aacute;m đốc Sở Y tế H&ograve;a B&igrave;nh cũng cho biết đ&atilde; mời 4 chuy&ecirc;n gia đầu ng&agrave;nh tham gia Hội đồng khoa học. Hi vọng Hội đồng chuy&ecirc;n m&ocirc;n t&iacute;ch cực ph&acirc;n c&ocirc;ng th&agrave;nh vi&ecirc;n để c&oacute; b&aacute;o c&aacute;o kh&aacute;ch quan nhất, trong thời gian sớm nhất.</p>\r\n', 'images/posts/bo-truong-bo-y-te-dung-quy-trinh-khong-the-xay-ra-su-co_1.jpg', 'Liên quan đến sự cố 18 bệnh nhân sốc phản vệ khi chạy thận tại BV Đa khoa Hoà Bình, Bộ trưởng Bộ Y tế gay gắt “truy”: “Tôi nghe đồng chí Giám đốc Sở Y tế nói các đồng chí tuân thủ theo quy trình, theo quy trình sao xảy ra chuyện?\"', null, '308', '0', '2017-05-31 09:52:24', '2017-06-14 06:10:40', '2', 'post', '1', 'post', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('442', null, null, 'Pink Check Dress', 'pink-check-dress', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/pink-check-dress.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '317', '0', '2017-06-21 03:57:52', '2017-06-21 03:57:52', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('443', null, null, 'Beyond Top NLY Trend', 'beyond-top-nly-trend', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/beyond-top-nly-trend.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '317', '0', '2017-06-21 03:58:45', '2017-06-21 03:58:45', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('444', null, null, 'Asdi T-Shirt', 'asdi-t-shirt', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/asdi-t-shirt.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '317', '0', '2017-06-21 03:59:32', '2017-06-21 03:59:32', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('445', null, null, 'DGK Hustle Jersey T-Shirt', 'dgk-hustle-jersey-t-shirt', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/dgk-hustle-jersey-t-shirt.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '317', '0', '2017-06-21 04:00:36', '2017-06-21 04:00:36', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('446', null, null, 'Been Trill Proper T-Shirt', 'been-trill-proper-t-shirt', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/been-trill-proper-t-shirt.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '317', '0', '2017-06-21 04:01:27', '2017-06-21 04:01:27', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('447', null, null, 'Hundreds Hoopin T-Shirt', 'hundreds-hoopin-t-shirt', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/hundreds-hoopin-t-shirt.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '317', '0', '2017-06-21 04:02:18', '2017-06-21 04:02:18', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('448', null, null, 'Sennheiser HD 180', 'sennheiser-hd-180', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/sennheiser-hd-180.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '319', '0', '2017-06-21 04:03:44', '2017-06-21 04:03:44', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('449', null, null, 'Beyond Top NLY Trend', 'beyond-top-nly-trend_WPm', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/Ssx_beyond-top-nly-trend.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '319', '0', '2017-06-21 04:04:40', '2017-06-21 04:04:40', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('450', null, null, 'Top NLY Trend', 'top-nly-trend', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/top-nly-trend.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '319', '0', '2017-06-21 04:05:35', '2017-06-21 04:05:35', '2', 'product', '1', 'post_product', '0', '1', '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);
INSERT INTO `pages` VALUES ('451', null, null, 'Vestibulum dui augue', 'vestibulum-dui-augue', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>\r\n\r\n<p>Donec sed tincidunt lacus. Duis vehicula aliquam vestibulum. Aenean at mollis mi. Cras ac urna sed nisi auctor venenatis ut id sapien. Vivamus commodo lacus lorem, a tristique sapien tempus non. Donec fringilla cursus porttitor. Morbi quis massa id mi pellentesque placerat. Nam scelerisque sit amet diam id blandit. Nullam ultrices ligula at ligula tincidunt, sit amet aliquet mi pellentesque. Aenean eget fermentum risus. Aenean eu ultricies nulla, id bibendum libero. Vestibulum dui augue, malesuada nec tellus vel, egestas condimentum ipsum. Vestibulum ut.</p>\r\n', 'images/posts/vestibulum-dui-augue.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', null, '317', '0', '2017-06-21 04:06:23', '2017-06-21 04:06:23', '2', 'product', '1', 'post_product', '0', null, '1', '0', null, 'noi that hai phong, noi that nhua hai phong, noi that go thong hai phong, ban ghe go thong hai phong', 'Hello Baby - Sectioned Shopify Theme', 'Showroom nội thất tại Hải Phòng chuyên văn phòng, gia đình, cửa hàng bằng vật liệu gỗ thông pallet, nhựa cao cấp. ', '0', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `page_images` VALUES ('238', '415', '0e942d18fabd1d3886f523bc56286729.jpg', '/images/posts/0e942d18fabd1d3886f523bc56286729.jpg', '0', '2017-06-05 01:21:18', '2017-06-05 01:21:18');
INSERT INTO `page_images` VALUES ('239', '415', '51075f91a60aa15206e9c1bb4f247f26.jpg', '/images/posts/51075f91a60aa15206e9c1bb4f247f26.jpg', '0', '2017-06-05 01:21:18', '2017-06-05 01:21:18');
INSERT INTO `page_images` VALUES ('240', '415', '3ce015f9f12c6ec5e479f147162eebc6.jpg', '/images/posts/3ce015f9f12c6ec5e479f147162eebc6.jpg', '0', '2017-06-05 01:21:18', '2017-06-05 01:21:18');
INSERT INTO `page_images` VALUES ('241', '415', '1acfa11b1dfbc131bb0d3a797bc0658c.jpg', '/images/posts/1acfa11b1dfbc131bb0d3a797bc0658c.jpg', '0', '2017-06-05 01:21:19', '2017-06-05 01:21:19');
INSERT INTO `page_images` VALUES ('242', '416', '9c2fb47daf1a4aad80e84b4dfa0ebbfe.jpg', '/images/posts/9c2fb47daf1a4aad80e84b4dfa0ebbfe.jpg', '0', '2017-06-05 02:26:43', '2017-06-05 02:26:43');
INSERT INTO `page_images` VALUES ('243', '416', '670747ecd7a9be875c42e5a4a86f8374.jpg', '/images/posts/670747ecd7a9be875c42e5a4a86f8374.jpg', '0', '2017-06-05 02:26:43', '2017-06-05 02:26:43');
INSERT INTO `page_images` VALUES ('244', '416', '3e1b351bb4d8c15bfefccf9d99dfd3e9.jpg', '/images/posts/3e1b351bb4d8c15bfefccf9d99dfd3e9.jpg', '0', '2017-06-05 02:26:43', '2017-06-05 02:26:43');
INSERT INTO `page_images` VALUES ('245', '416', '6f0715466c15f5f614bb3cae622ea061.jpg', '/images/posts/6f0715466c15f5f614bb3cae622ea061.jpg', '0', '2017-06-05 02:26:44', '2017-06-05 02:26:44');
INSERT INTO `page_images` VALUES ('246', '417', 'ee9e99bf4319b78aca46039157c842f2.jpg', '/images/posts/ee9e99bf4319b78aca46039157c842f2.jpg', '0', '2017-06-05 02:35:30', '2017-06-05 02:35:30');
INSERT INTO `page_images` VALUES ('247', '417', '85fd6d6cfcec29019864a1e41c8f32b8.jpg', '/images/posts/85fd6d6cfcec29019864a1e41c8f32b8.jpg', '0', '2017-06-05 02:35:30', '2017-06-05 02:35:30');
INSERT INTO `page_images` VALUES ('248', '417', '1e90fa31974ccf8f42b9ae15bb1836a2.jpg', '/images/posts/1e90fa31974ccf8f42b9ae15bb1836a2.jpg', '0', '2017-06-05 02:35:30', '2017-06-05 02:35:30');
INSERT INTO `page_images` VALUES ('249', '417', 'd17e6f9be8f8b5c05e29ec34437c5537.jpg', '/images/posts/d17e6f9be8f8b5c05e29ec34437c5537.jpg', '0', '2017-06-05 02:35:30', '2017-06-05 02:35:30');
INSERT INTO `page_images` VALUES ('250', '418', '6f5479986da43b026db3e97f642d6f51.jpg', '/images/posts/6f5479986da43b026db3e97f642d6f51.jpg', '0', '2017-06-05 02:36:55', '2017-06-05 02:36:55');
INSERT INTO `page_images` VALUES ('251', '418', 'fce4bfd39ac54ffede84d2aac3a275f6.jpg', '/images/posts/fce4bfd39ac54ffede84d2aac3a275f6.jpg', '0', '2017-06-05 02:36:56', '2017-06-05 02:36:56');
INSERT INTO `page_images` VALUES ('252', '418', 'dbe035efe3006bba95724ea86d97f66a.jpg', '/images/posts/dbe035efe3006bba95724ea86d97f66a.jpg', '0', '2017-06-05 02:36:56', '2017-06-05 02:36:56');
INSERT INTO `page_images` VALUES ('253', '418', 'e1fd554b864b5ac971bedb52a8bcf265.jpg', '/images/posts/e1fd554b864b5ac971bedb52a8bcf265.jpg', '0', '2017-06-05 02:36:56', '2017-06-05 02:36:56');
INSERT INTO `page_images` VALUES ('254', '419', '1b6e7f03e46d7de8546bc02fd0dfd747.jpg', '/images/posts/1b6e7f03e46d7de8546bc02fd0dfd747.jpg', '0', '2017-06-05 02:37:09', '2017-06-05 02:37:09');
INSERT INTO `page_images` VALUES ('255', '419', '5c9667afb27ba9b6b9057b9adc0daa41.jpg', '/images/posts/5c9667afb27ba9b6b9057b9adc0daa41.jpg', '0', '2017-06-05 02:37:09', '2017-06-05 02:37:09');
INSERT INTO `page_images` VALUES ('256', '419', 'b4b9d632d732f0fd2eddc8378df8b9aa.jpg', '/images/posts/b4b9d632d732f0fd2eddc8378df8b9aa.jpg', '0', '2017-06-05 02:37:09', '2017-06-05 02:37:09');
INSERT INTO `page_images` VALUES ('257', '419', 'a8fc6c51821e2c9d4b65d7fede332494.jpg', '/images/posts/a8fc6c51821e2c9d4b65d7fede332494.jpg', '0', '2017-06-05 02:37:09', '2017-06-05 02:37:09');
INSERT INTO `page_images` VALUES ('258', '420', '14f72ab68790d0499c1a1349e01b74d5.jpg', '/images/posts/14f72ab68790d0499c1a1349e01b74d5.jpg', '0', '2017-06-05 02:38:14', '2017-06-05 02:38:14');
INSERT INTO `page_images` VALUES ('259', '420', '87e1ce2ae4f52d6ccd75552f0f4f525e.jpg', '/images/posts/87e1ce2ae4f52d6ccd75552f0f4f525e.jpg', '0', '2017-06-05 02:38:14', '2017-06-05 02:38:14');
INSERT INTO `page_images` VALUES ('260', '420', 'f91998d032dcedf64aeeb4d1e5b648a8.jpg', '/images/posts/f91998d032dcedf64aeeb4d1e5b648a8.jpg', '0', '2017-06-05 02:38:15', '2017-06-05 02:38:15');
INSERT INTO `page_images` VALUES ('261', '420', '694365341cd52dcc371f16dd5dee2f7c.jpg', '/images/posts/694365341cd52dcc371f16dd5dee2f7c.jpg', '0', '2017-06-05 02:38:15', '2017-06-05 02:38:15');
INSERT INTO `page_images` VALUES ('262', '421', 'c02e9d1e90a67624e6fb3b7bc4965e22.jpg', '/images/posts/c02e9d1e90a67624e6fb3b7bc4965e22.jpg', '0', '2017-06-05 02:52:40', '2017-06-05 02:52:40');
INSERT INTO `page_images` VALUES ('263', '421', '3dfa742f95920e27c265e858bc6f3882.jpg', '/images/posts/3dfa742f95920e27c265e858bc6f3882.jpg', '0', '2017-06-05 02:52:40', '2017-06-05 02:52:40');
INSERT INTO `page_images` VALUES ('264', '421', '5ea854f21a684182a71c64eac31b1a77.jpg', '/images/posts/5ea854f21a684182a71c64eac31b1a77.jpg', '0', '2017-06-05 02:52:40', '2017-06-05 02:52:40');
INSERT INTO `page_images` VALUES ('265', '421', '3b24a7e1381d17cb314ef5333c94d184.jpg', '/images/posts/3b24a7e1381d17cb314ef5333c94d184.jpg', '0', '2017-06-05 02:52:40', '2017-06-05 02:52:40');
INSERT INTO `page_images` VALUES ('266', '422', '56a38560581559ed5592b3a6289c58b7.jpg', '/images/posts/56a38560581559ed5592b3a6289c58b7.jpg', '0', '2017-06-05 02:53:10', '2017-06-05 02:53:10');
INSERT INTO `page_images` VALUES ('267', '422', 'b8b192646140bc15f167a4e894b6b90b.jpg', '/images/posts/b8b192646140bc15f167a4e894b6b90b.jpg', '0', '2017-06-05 02:53:10', '2017-06-05 02:53:10');
INSERT INTO `page_images` VALUES ('268', '422', 'e7cf3948371bbc2464687569c9d813d6.jpg', '/images/posts/e7cf3948371bbc2464687569c9d813d6.jpg', '0', '2017-06-05 02:53:10', '2017-06-05 02:53:10');
INSERT INTO `page_images` VALUES ('269', '422', 'b9c43d5e8443df7b2827fbd17aaddaa6.jpg', '/images/posts/b9c43d5e8443df7b2827fbd17aaddaa6.jpg', '0', '2017-06-05 02:53:10', '2017-06-05 02:53:10');
INSERT INTO `page_images` VALUES ('270', '423', 'c366ae96662ea341b4a0ec624ab33224.jpg', '/images/posts/c366ae96662ea341b4a0ec624ab33224.jpg', '0', '2017-06-05 02:53:38', '2017-06-05 02:53:38');
INSERT INTO `page_images` VALUES ('271', '423', '24c3e8dcd1d651176033302d41faf4a4.jpg', '/images/posts/24c3e8dcd1d651176033302d41faf4a4.jpg', '0', '2017-06-05 02:53:38', '2017-06-05 02:53:38');
INSERT INTO `page_images` VALUES ('272', '423', 'e9334255710d89f0ad46cc235e65fbd3.jpg', '/images/posts/e9334255710d89f0ad46cc235e65fbd3.jpg', '0', '2017-06-05 02:53:38', '2017-06-05 02:53:38');
INSERT INTO `page_images` VALUES ('273', '423', 'ce1ec6b144a9302eb4d7184145fa5d09.jpg', '/images/posts/ce1ec6b144a9302eb4d7184145fa5d09.jpg', '0', '2017-06-05 02:53:38', '2017-06-05 02:53:38');
INSERT INTO `page_images` VALUES ('274', '424', 'a12ba4459da47a66689036269cb62c5a.jpg', '/images/posts/a12ba4459da47a66689036269cb62c5a.jpg', '0', '2017-06-05 02:54:06', '2017-06-05 02:54:06');
INSERT INTO `page_images` VALUES ('275', '424', '561502411793bb25bfbd86822f9b73eb.jpg', '/images/posts/561502411793bb25bfbd86822f9b73eb.jpg', '0', '2017-06-05 02:54:06', '2017-06-05 02:54:06');
INSERT INTO `page_images` VALUES ('276', '424', '0a07734f47e711526ce336bc39dc1495.jpg', '/images/posts/0a07734f47e711526ce336bc39dc1495.jpg', '0', '2017-06-05 02:54:06', '2017-06-05 02:54:06');
INSERT INTO `page_images` VALUES ('277', '424', '60e05ca7e3886283bf508b1fe06a79f0.jpg', '/images/posts/60e05ca7e3886283bf508b1fe06a79f0.jpg', '0', '2017-06-05 02:54:06', '2017-06-05 02:54:06');
INSERT INTO `page_images` VALUES ('278', '425', '7b6481bc69b5e49a60efb0530cbd1434.jpg', '/images/posts/7b6481bc69b5e49a60efb0530cbd1434.jpg', '0', '2017-06-05 06:48:00', '2017-06-05 06:48:00');
INSERT INTO `page_images` VALUES ('279', '425', '2b4b865cfdbe194299daa00764a1c485.jpg', '/images/posts/2b4b865cfdbe194299daa00764a1c485.jpg', '0', '2017-06-05 06:48:00', '2017-06-05 06:48:00');
INSERT INTO `page_images` VALUES ('280', '425', 'd7e145baf125b3ded0e5e19a12410c4f.jpg', '/images/posts/d7e145baf125b3ded0e5e19a12410c4f.jpg', '0', '2017-06-05 06:48:00', '2017-06-05 06:48:00');
INSERT INTO `page_images` VALUES ('281', '425', 'bd5a740ce61174c408a666bc69c7a18e.jpg', '/images/posts/bd5a740ce61174c408a666bc69c7a18e.jpg', '0', '2017-06-05 06:48:00', '2017-06-05 06:48:00');
INSERT INTO `page_images` VALUES ('282', '426', '02db30a99a02ec3e4d5f8f39a1ee2754.jpg', '/images/posts/02db30a99a02ec3e4d5f8f39a1ee2754.jpg', '0', '2017-06-05 06:48:27', '2017-06-05 06:48:27');
INSERT INTO `page_images` VALUES ('283', '426', '7b7e513d9bb8c404448b49b3453eb31d.jpg', '/images/posts/7b7e513d9bb8c404448b49b3453eb31d.jpg', '0', '2017-06-05 06:48:28', '2017-06-05 06:48:28');
INSERT INTO `page_images` VALUES ('284', '426', 'fbd90f9a875a3f2387fd7b5e06abe0c5.jpg', '/images/posts/fbd90f9a875a3f2387fd7b5e06abe0c5.jpg', '0', '2017-06-05 06:48:28', '2017-06-05 06:48:28');
INSERT INTO `page_images` VALUES ('285', '426', '32f53afa16d3ca15123de44a9fe02ed5.jpg', '/images/posts/32f53afa16d3ca15123de44a9fe02ed5.jpg', '0', '2017-06-05 06:48:28', '2017-06-05 06:48:28');
INSERT INTO `page_images` VALUES ('286', '427', '65c81066783f57c0207966169e6f685b.jpg', '/images/posts/65c81066783f57c0207966169e6f685b.jpg', '0', '2017-06-05 06:48:56', '2017-06-05 06:48:56');
INSERT INTO `page_images` VALUES ('287', '427', 'ef7e9cedee53215573466adcb911855d.jpg', '/images/posts/ef7e9cedee53215573466adcb911855d.jpg', '0', '2017-06-05 06:48:56', '2017-06-05 06:48:56');
INSERT INTO `page_images` VALUES ('288', '427', '94a2840b2acbb946f580eec6373e32bc.jpg', '/images/posts/94a2840b2acbb946f580eec6373e32bc.jpg', '0', '2017-06-05 06:48:56', '2017-06-05 06:48:56');
INSERT INTO `page_images` VALUES ('289', '427', '39bb50f53f71515a38d185d6d6dc7682.jpg', '/images/posts/39bb50f53f71515a38d185d6d6dc7682.jpg', '0', '2017-06-05 06:48:56', '2017-06-05 06:48:56');
INSERT INTO `page_images` VALUES ('290', '428', '4f09a45ba2f334e683d084cb7c58f46e.jpg', '/images/posts/4f09a45ba2f334e683d084cb7c58f46e.jpg', '0', '2017-06-05 06:49:20', '2017-06-05 06:49:20');
INSERT INTO `page_images` VALUES ('291', '428', '41d502644c2738f9bba8c4a8815d3cd4.jpg', '/images/posts/41d502644c2738f9bba8c4a8815d3cd4.jpg', '0', '2017-06-05 06:49:20', '2017-06-05 06:49:20');
INSERT INTO `page_images` VALUES ('292', '428', '6f491ba1ba397f102734d120bfe3aad2.jpg', '/images/posts/6f491ba1ba397f102734d120bfe3aad2.jpg', '0', '2017-06-05 06:49:20', '2017-06-05 06:49:20');
INSERT INTO `page_images` VALUES ('293', '428', '3bce4d6c6b6822c6f195e478088c2d00.jpg', '/images/posts/3bce4d6c6b6822c6f195e478088c2d00.jpg', '0', '2017-06-05 06:49:20', '2017-06-05 06:49:20');
INSERT INTO `page_images` VALUES ('294', '429', '5611f5621d088f02fa39b55db0f8ff28.jpg', '/images/posts/5611f5621d088f02fa39b55db0f8ff28.jpg', '0', '2017-06-05 09:07:49', '2017-06-05 09:07:49');
INSERT INTO `page_images` VALUES ('295', '429', 'fde2603f6333b9181d08865be3cb9a9e.jpg', '/images/posts/fde2603f6333b9181d08865be3cb9a9e.jpg', '0', '2017-06-05 09:07:49', '2017-06-05 09:07:49');
INSERT INTO `page_images` VALUES ('296', '429', '9787e255566586c69b13ec4b64f38cac.jpg', '/images/posts/9787e255566586c69b13ec4b64f38cac.jpg', '0', '2017-06-05 09:07:50', '2017-06-05 09:07:50');
INSERT INTO `page_images` VALUES ('297', '429', '76fc3e4774864b5b8196481a687f4d29.jpg', '/images/posts/76fc3e4774864b5b8196481a687f4d29.jpg', '0', '2017-06-05 09:07:50', '2017-06-05 09:07:50');
INSERT INTO `page_images` VALUES ('298', '428', 'b405f045681dc381a50dde54d68d32ad.jpg', '/images/posts/b405f045681dc381a50dde54d68d32ad.jpg', '0', '2017-06-13 04:29:28', '2017-06-13 04:29:28');
INSERT INTO `page_images` VALUES ('299', '428', '7bcf247889a2e249fd5a406892d3e1b9.jpg', '/images/posts/7bcf247889a2e249fd5a406892d3e1b9.jpg', '0', '2017-06-13 04:29:28', '2017-06-13 04:29:28');
INSERT INTO `page_images` VALUES ('300', '428', 'c28b96505f83b2a9cee3556a2cdf4ad2.jpg', '/images/posts/c28b96505f83b2a9cee3556a2cdf4ad2.jpg', '0', '2017-06-13 04:29:28', '2017-06-13 04:29:28');
INSERT INTO `page_images` VALUES ('301', '428', 'edfd3bc4af7f7eadde9bcf6a632ab1bd.jpg', '/images/posts/edfd3bc4af7f7eadde9bcf6a632ab1bd.jpg', '0', '2017-06-13 04:29:28', '2017-06-13 04:29:28');
INSERT INTO `page_images` VALUES ('302', '431', '11024d8ebbbf9e319e55c4c29bcd3ccf.jpg', '/images/posts/11024d8ebbbf9e319e55c4c29bcd3ccf.jpg', '0', '2017-06-13 04:40:33', '2017-06-13 04:40:33');
INSERT INTO `page_images` VALUES ('303', '431', 'e17b684f2b6de4b38971427f73a826fe.jpg', '/images/posts/e17b684f2b6de4b38971427f73a826fe.jpg', '0', '2017-06-13 04:40:34', '2017-06-13 04:40:34');
INSERT INTO `page_images` VALUES ('304', '431', 'b59635b2e5f7a285800de78bde075c9b.jpg', '/images/posts/b59635b2e5f7a285800de78bde075c9b.jpg', '0', '2017-06-13 04:40:34', '2017-06-13 04:40:34');
INSERT INTO `page_images` VALUES ('305', '432', 'bbe988c6eb833603776e1d3a43f087e4.jpg', '/images/posts/bbe988c6eb833603776e1d3a43f087e4.jpg', '0', '2017-06-13 04:41:14', '2017-06-13 04:41:14');
INSERT INTO `page_images` VALUES ('306', '432', 'ec4585a29ff620f23e4565e9ca1b079a.jpg', '/images/posts/ec4585a29ff620f23e4565e9ca1b079a.jpg', '0', '2017-06-13 04:41:14', '2017-06-13 04:41:14');
INSERT INTO `page_images` VALUES ('307', '432', '0d68fbb16169a0baf67d8e84c3ca89bd.jpg', '/images/posts/0d68fbb16169a0baf67d8e84c3ca89bd.jpg', '0', '2017-06-13 04:41:14', '2017-06-13 04:41:14');
INSERT INTO `page_images` VALUES ('308', '433', '498a80e626e8c46049eb73bd48b2a1c8.jpg', '/images/posts/498a80e626e8c46049eb73bd48b2a1c8.jpg', '0', '2017-06-13 04:41:37', '2017-06-13 04:41:37');
INSERT INTO `page_images` VALUES ('309', '433', '3b1f0008e4e241772287498b85220937.jpg', '/images/posts/3b1f0008e4e241772287498b85220937.jpg', '0', '2017-06-13 04:41:37', '2017-06-13 04:41:37');
INSERT INTO `page_images` VALUES ('310', '433', '6de31cc8f8500b6616f0246d5bfa54b0.jpg', '/images/posts/6de31cc8f8500b6616f0246d5bfa54b0.jpg', '0', '2017-06-13 04:41:37', '2017-06-13 04:41:37');
INSERT INTO `page_images` VALUES ('311', '434', '9f46f78518e0c4d2069f3114c3072ca0.jpg', '/images/posts/9f46f78518e0c4d2069f3114c3072ca0.jpg', '0', '2017-06-13 04:42:30', '2017-06-13 04:42:30');
INSERT INTO `page_images` VALUES ('312', '434', 'b2ccd195c8e06f8bcdea466eba89c4e2.jpg', '/images/posts/b2ccd195c8e06f8bcdea466eba89c4e2.jpg', '0', '2017-06-13 04:42:30', '2017-06-13 04:42:30');
INSERT INTO `page_images` VALUES ('313', '434', '154b22dc60031765d21fccbbf3be94fd.jpg', '/images/posts/154b22dc60031765d21fccbbf3be94fd.jpg', '0', '2017-06-13 04:42:30', '2017-06-13 04:42:30');
INSERT INTO `page_images` VALUES ('314', '435', 'f7eac9b11bfb26b1fd8f3579e1887759.jpg', '/images/posts/f7eac9b11bfb26b1fd8f3579e1887759.jpg', '0', '2017-06-13 04:43:31', '2017-06-13 04:43:31');
INSERT INTO `page_images` VALUES ('315', '435', '214d9fa62be847ff7570cb093f5f611f.jpg', '/images/posts/214d9fa62be847ff7570cb093f5f611f.jpg', '0', '2017-06-13 04:43:31', '2017-06-13 04:43:31');
INSERT INTO `page_images` VALUES ('316', '435', '1589c1f6a4a9c5dea1e116df532f29e3.jpg', '/images/posts/1589c1f6a4a9c5dea1e116df532f29e3.jpg', '0', '2017-06-13 04:43:31', '2017-06-13 04:43:31');
INSERT INTO `page_images` VALUES ('317', '437', '107c1ae1002ba50f7ae861b7ab6fb66f.jpg', '/images/posts/107c1ae1002ba50f7ae861b7ab6fb66f.jpg', '0', '2017-06-13 04:44:29', '2017-06-13 04:44:29');
INSERT INTO `page_images` VALUES ('318', '437', 'c5ff169ee409ccb843c6d689a4c4a1e7.jpg', '/images/posts/c5ff169ee409ccb843c6d689a4c4a1e7.jpg', '0', '2017-06-13 04:44:30', '2017-06-13 04:44:30');
INSERT INTO `page_images` VALUES ('319', '437', '6e8384fb9df5d798f57f442a90eac37a.jpg', '/images/posts/6e8384fb9df5d798f57f442a90eac37a.jpg', '0', '2017-06-13 04:44:30', '2017-06-13 04:44:30');
INSERT INTO `page_images` VALUES ('320', '438', '028a0cde610a01ba7c4c3461b117ba47.jpg', '/images/posts/028a0cde610a01ba7c4c3461b117ba47.jpg', '0', '2017-06-13 04:44:57', '2017-06-13 04:44:57');
INSERT INTO `page_images` VALUES ('321', '438', '49fb558299ffc5fe91142ffa51aa38a1.jpg', '/images/posts/49fb558299ffc5fe91142ffa51aa38a1.jpg', '0', '2017-06-13 04:44:57', '2017-06-13 04:44:57');
INSERT INTO `page_images` VALUES ('322', '438', '80f873e895ffdc5875adb76b2c4c9850.jpg', '/images/posts/80f873e895ffdc5875adb76b2c4c9850.jpg', '0', '2017-06-13 04:44:57', '2017-06-13 04:44:57');
INSERT INTO `page_images` VALUES ('323', '439', '8be0f4cffb4ba2c5d2f91f0c638b5f66.jpg', '/images/posts/8be0f4cffb4ba2c5d2f91f0c638b5f66.jpg', '0', '2017-06-13 10:02:40', '2017-06-13 10:02:40');
INSERT INTO `page_images` VALUES ('324', '439', '8f7a75830caf68af507726a014749085.jpg', '/images/posts/8f7a75830caf68af507726a014749085.jpg', '0', '2017-06-13 10:02:40', '2017-06-13 10:02:40');
INSERT INTO `page_images` VALUES ('325', '439', '464b0ca6f664d9b04e47a0b6c53e3200.jpg', '/images/posts/464b0ca6f664d9b04e47a0b6c53e3200.jpg', '0', '2017-06-13 10:02:40', '2017-06-13 10:02:40');
INSERT INTO `page_images` VALUES ('326', '440', 'd31fe6ed83dd623897061c88789bd00a.jpg', '/images/posts/d31fe6ed83dd623897061c88789bd00a.jpg', '0', '2017-06-14 08:55:27', '2017-06-14 08:55:27');
INSERT INTO `page_images` VALUES ('327', '440', '3cd86e8c700a64721244130154e7899b.jpg', '/images/posts/3cd86e8c700a64721244130154e7899b.jpg', '0', '2017-06-14 08:55:27', '2017-06-14 08:55:27');
INSERT INTO `page_images` VALUES ('328', '440', '6e1456641b54d34a175a26e4161e2c66.jpg', '/images/posts/6e1456641b54d34a175a26e4161e2c66.jpg', '0', '2017-06-14 08:55:27', '2017-06-14 08:55:27');
INSERT INTO `page_images` VALUES ('329', '434', '0c11a60d8d6c2c89524c9b13cdbc958e.jpg', '/images/posts/0c11a60d8d6c2c89524c9b13cdbc958e.jpg', '0', '2017-06-14 09:01:14', '2017-06-14 09:01:14');
INSERT INTO `page_images` VALUES ('330', '434', '4dfebacd7fc867d523c71bf6cd8c3f6d.jpg', '/images/posts/4dfebacd7fc867d523c71bf6cd8c3f6d.jpg', '0', '2017-06-14 09:01:14', '2017-06-14 09:01:14');
INSERT INTO `page_images` VALUES ('331', '434', 'ad2770e99bc6bc751cf83fbf87c72c9b.jpg', '/images/posts/ad2770e99bc6bc751cf83fbf87c72c9b.jpg', '0', '2017-06-14 09:01:14', '2017-06-14 09:01:14');
INSERT INTO `page_images` VALUES ('332', '434', '3d040b07e49bfefc4fa6aa43d17c2ebd.jpg', '/images/posts/3d040b07e49bfefc4fa6aa43d17c2ebd.jpg', '0', '2017-06-14 09:01:14', '2017-06-14 09:01:14');
INSERT INTO `page_images` VALUES ('333', '438', '4c59133b89f4ca88315178803d039a0c.jpg', '/images/posts/4c59133b89f4ca88315178803d039a0c.jpg', '0', '2017-06-14 09:02:39', '2017-06-14 09:02:39');
INSERT INTO `page_images` VALUES ('334', '438', '8438f6302285cd1d6a417ff114ec0005.jpg', '/images/posts/8438f6302285cd1d6a417ff114ec0005.jpg', '0', '2017-06-14 09:02:39', '2017-06-14 09:02:39');
INSERT INTO `page_images` VALUES ('335', '438', '5b86be2465ae0c6701303e89ce8bfe89.jpg', '/images/posts/5b86be2465ae0c6701303e89ce8bfe89.jpg', '0', '2017-06-14 09:02:39', '2017-06-14 09:02:39');
INSERT INTO `page_images` VALUES ('336', '438', 'ea44179e776cb71549fa92122233c41a.jpg', '/images/posts/ea44179e776cb71549fa92122233c41a.jpg', '0', '2017-06-14 09:02:39', '2017-06-14 09:02:39');
INSERT INTO `page_images` VALUES ('337', '441', '5250c6db511190c5fe9980d79394f652.jpg', '/images/posts/5250c6db511190c5fe9980d79394f652.jpg', '0', '2017-06-15 04:16:01', '2017-06-15 04:16:01');
INSERT INTO `page_images` VALUES ('338', '441', '548ccd8156a7711e4303f64ce478e33a.jpg', '/images/posts/548ccd8156a7711e4303f64ce478e33a.jpg', '0', '2017-06-15 04:16:01', '2017-06-15 04:16:01');
INSERT INTO `page_images` VALUES ('339', '441', 'b6ee01b10764affbabb34889fc304207.jpg', '/images/posts/b6ee01b10764affbabb34889fc304207.jpg', '0', '2017-06-15 04:16:01', '2017-06-15 04:16:01');
INSERT INTO `page_images` VALUES ('340', '441', 'ec6567f19bc0faa3768b098cf05c5a66.jpg', '/images/posts/ec6567f19bc0faa3768b098cf05c5a66.jpg', '0', '2017-06-15 04:16:01', '2017-06-15 04:16:01');
INSERT INTO `page_images` VALUES ('341', '442', 'f2e06563f4e7836ccc67d5266f12a103.jpg', '/images/posts/f2e06563f4e7836ccc67d5266f12a103.jpg', '0', '2017-06-21 03:57:53', '2017-06-21 03:57:53');
INSERT INTO `page_images` VALUES ('342', '442', '75a4ede99f1ac0f5fd60ad71195e49ea.jpg', '/images/posts/75a4ede99f1ac0f5fd60ad71195e49ea.jpg', '0', '2017-06-21 03:57:53', '2017-06-21 03:57:53');
INSERT INTO `page_images` VALUES ('343', '442', '227e7c01d4dfa0c9faaf87738b6db403.jpg', '/images/posts/227e7c01d4dfa0c9faaf87738b6db403.jpg', '0', '2017-06-21 03:57:53', '2017-06-21 03:57:53');
INSERT INTO `page_images` VALUES ('344', '443', '372011ba6d71e15832ecf1dc5c4ebc1e.jpg', '/images/posts/372011ba6d71e15832ecf1dc5c4ebc1e.jpg', '0', '2017-06-21 03:58:46', '2017-06-21 03:58:46');
INSERT INTO `page_images` VALUES ('345', '443', '77b50f9b4c33ebc39307e696e5222dd4.jpg', '/images/posts/77b50f9b4c33ebc39307e696e5222dd4.jpg', '0', '2017-06-21 03:58:46', '2017-06-21 03:58:46');
INSERT INTO `page_images` VALUES ('346', '443', 'c8e6b70d9bff5b00c7667e59ab657b6e.jpg', '/images/posts/c8e6b70d9bff5b00c7667e59ab657b6e.jpg', '0', '2017-06-21 03:58:46', '2017-06-21 03:58:46');
INSERT INTO `page_images` VALUES ('347', '444', '5b5a44c82de81df8a55ee6e4ae23be99.jpg', '/images/posts/5b5a44c82de81df8a55ee6e4ae23be99.jpg', '0', '2017-06-21 03:59:32', '2017-06-21 03:59:32');
INSERT INTO `page_images` VALUES ('348', '444', 'f8a4afe86565046c14184ad617853e56.jpg', '/images/posts/f8a4afe86565046c14184ad617853e56.jpg', '0', '2017-06-21 03:59:32', '2017-06-21 03:59:32');
INSERT INTO `page_images` VALUES ('349', '444', 'c2a4d3d426fe8d1e31f98bc5bd74ab56.jpg', '/images/posts/c2a4d3d426fe8d1e31f98bc5bd74ab56.jpg', '0', '2017-06-21 03:59:33', '2017-06-21 03:59:33');
INSERT INTO `page_images` VALUES ('350', '445', 'aa9a3b772a4a39787efa5aa5833e39a6.jpg', '/images/posts/aa9a3b772a4a39787efa5aa5833e39a6.jpg', '0', '2017-06-21 04:00:36', '2017-06-21 04:00:36');
INSERT INTO `page_images` VALUES ('351', '445', '289da4cbded0bf7cb11e73639b66f6bc.jpg', '/images/posts/289da4cbded0bf7cb11e73639b66f6bc.jpg', '0', '2017-06-21 04:00:36', '2017-06-21 04:00:36');
INSERT INTO `page_images` VALUES ('352', '445', '8c33bf48bbfa113b5b136646f56ee01c.jpg', '/images/posts/8c33bf48bbfa113b5b136646f56ee01c.jpg', '0', '2017-06-21 04:00:37', '2017-06-21 04:00:37');
INSERT INTO `page_images` VALUES ('353', '446', '50cbb1025b50f1432ca1e0bc85c1e1d2.jpg', '/images/posts/50cbb1025b50f1432ca1e0bc85c1e1d2.jpg', '0', '2017-06-21 04:01:27', '2017-06-21 04:01:27');
INSERT INTO `page_images` VALUES ('354', '446', '1a40a3f37ba87df5529f7ca4d89ecb3e.jpg', '/images/posts/1a40a3f37ba87df5529f7ca4d89ecb3e.jpg', '0', '2017-06-21 04:01:27', '2017-06-21 04:01:27');
INSERT INTO `page_images` VALUES ('355', '446', 'ab0842dd30b2f3a726f4e0bca40ca6db.jpg', '/images/posts/ab0842dd30b2f3a726f4e0bca40ca6db.jpg', '0', '2017-06-21 04:01:27', '2017-06-21 04:01:27');
INSERT INTO `page_images` VALUES ('356', '447', '30eb447f7c15ea4524aa30d4368e0808.jpg', '/images/posts/30eb447f7c15ea4524aa30d4368e0808.jpg', '0', '2017-06-21 04:02:18', '2017-06-21 04:02:18');
INSERT INTO `page_images` VALUES ('357', '447', '9dcca87a297c379c63b8d7d435a9ed80.jpg', '/images/posts/9dcca87a297c379c63b8d7d435a9ed80.jpg', '0', '2017-06-21 04:02:18', '2017-06-21 04:02:18');
INSERT INTO `page_images` VALUES ('358', '447', 'a9c568a7553953eb227ed9350b5a85ad.jpg', '/images/posts/a9c568a7553953eb227ed9350b5a85ad.jpg', '0', '2017-06-21 04:02:18', '2017-06-21 04:02:18');
INSERT INTO `page_images` VALUES ('359', '448', 'bf861f436948b44caa50949c89f65171.jpg', '/images/posts/bf861f436948b44caa50949c89f65171.jpg', '0', '2017-06-21 04:03:44', '2017-06-21 04:03:44');
INSERT INTO `page_images` VALUES ('360', '448', 'c7596cf01ecbd1d68d8060dc02626fb1.jpg', '/images/posts/c7596cf01ecbd1d68d8060dc02626fb1.jpg', '0', '2017-06-21 04:03:44', '2017-06-21 04:03:44');
INSERT INTO `page_images` VALUES ('361', '449', '4b41fde28c8912e9b452ec19175cf424.jpg', '/images/posts/4b41fde28c8912e9b452ec19175cf424.jpg', '0', '2017-06-21 04:04:41', '2017-06-21 04:04:41');
INSERT INTO `page_images` VALUES ('362', '449', '332180ec7386262de9af2a2b3e0f2498.jpg', '/images/posts/332180ec7386262de9af2a2b3e0f2498.jpg', '0', '2017-06-21 04:04:41', '2017-06-21 04:04:41');
INSERT INTO `page_images` VALUES ('363', '450', '54da039e88aa6dfcc82fc8454e0ccb06.jpg', '/images/posts/54da039e88aa6dfcc82fc8454e0ccb06.jpg', '0', '2017-06-21 04:05:36', '2017-06-21 04:05:36');
INSERT INTO `page_images` VALUES ('364', '450', '9283f42562153348f4e57e33a555b119.jpg', '/images/posts/9283f42562153348f4e57e33a555b119.jpg', '0', '2017-06-21 04:05:36', '2017-06-21 04:05:36');
INSERT INTO `page_images` VALUES ('365', '450', '350c1a370d1467166923c9a819a7e27b.jpg', '/images/posts/350c1a370d1467166923c9a819a7e27b.jpg', '0', '2017-06-21 04:05:36', '2017-06-21 04:05:36');
INSERT INTO `page_images` VALUES ('366', '451', '7c126a3533805c2d69701468acb40092.jpg', '/images/posts/7c126a3533805c2d69701468acb40092.jpg', '0', '2017-06-21 04:06:24', '2017-06-21 04:06:24');
INSERT INTO `page_images` VALUES ('367', '451', 'd84823ed94da7ee08f8cc7f8868aace1.jpg', '/images/posts/d84823ed94da7ee08f8cc7f8868aace1.jpg', '0', '2017-06-21 04:06:24', '2017-06-21 04:06:24');
INSERT INTO `page_images` VALUES ('368', '451', '2c7dffce55840c774b37ade278224d06.jpg', '/images/posts/2c7dffce55840c774b37ade278224d06.jpg', '0', '2017-06-21 04:06:24', '2017-06-21 04:06:24');

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
  KEY `properties_page_id_foreign` (`page_id`),
  CONSTRAINT `properties_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `properties_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `property_templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES ('71', '1', '243', 'Liên hệ', '2015-05-28 04:48:45', '2015-05-28 04:48:45', 'general');
INSERT INTO `properties` VALUES ('1099', '1', '442', '1200000', '2017-06-21 03:57:53', '2017-06-21 03:57:53', 'price');
INSERT INTO `properties` VALUES ('1100', '4', '442', '1000', '2017-06-21 03:57:53', '2017-06-21 03:57:53', 'discount');
INSERT INTO `properties` VALUES ('1101', '5', '442', '21/12/2016', '2017-06-21 03:57:53', '2017-06-21 03:57:53', 'product_date');
INSERT INTO `properties` VALUES ('1102', '7', '442', 'Viet Nam', '2017-06-21 03:57:54', '2017-06-21 03:57:54', 'product_place');
INSERT INTO `properties` VALUES ('1103', '1', '443', '1000000', '2017-06-21 03:58:46', '2017-06-21 03:58:46', 'price');
INSERT INTO `properties` VALUES ('1104', '4', '443', '1000', '2017-06-21 03:58:46', '2017-06-21 03:58:46', 'discount');
INSERT INTO `properties` VALUES ('1105', '5', '443', '21/12/2016', '2017-06-21 03:58:46', '2017-06-21 03:58:46', 'product_date');
INSERT INTO `properties` VALUES ('1106', '7', '443', 'Viet Nam', '2017-06-21 03:58:47', '2017-06-21 03:58:47', 'product_place');
INSERT INTO `properties` VALUES ('1107', '1', '444', '130000', '2017-06-21 03:59:33', '2017-06-21 03:59:33', 'price');
INSERT INTO `properties` VALUES ('1108', '4', '444', '1000', '2017-06-21 03:59:33', '2017-06-21 03:59:33', 'discount');
INSERT INTO `properties` VALUES ('1109', '5', '444', '21/12/2016', '2017-06-21 03:59:33', '2017-06-21 03:59:33', 'product_date');
INSERT INTO `properties` VALUES ('1110', '7', '444', 'Viet Nam', '2017-06-21 03:59:33', '2017-06-21 03:59:33', 'product_place');
INSERT INTO `properties` VALUES ('1111', '1', '445', '1200000', '2017-06-21 04:00:37', '2017-06-21 04:00:37', 'price');
INSERT INTO `properties` VALUES ('1112', '4', '445', '1000', '2017-06-21 04:00:37', '2017-06-21 04:00:37', 'discount');
INSERT INTO `properties` VALUES ('1113', '5', '445', '21/12/2016', '2017-06-21 04:00:37', '2017-06-21 04:00:37', 'product_date');
INSERT INTO `properties` VALUES ('1114', '7', '445', 'Viet Nam', '2017-06-21 04:00:37', '2017-06-21 04:00:37', 'product_place');
INSERT INTO `properties` VALUES ('1115', '1', '446', '1000000', '2017-06-21 04:01:27', '2017-06-21 04:01:27', 'price');
INSERT INTO `properties` VALUES ('1116', '4', '446', '1000', '2017-06-21 04:01:27', '2017-06-21 04:01:27', 'discount');
INSERT INTO `properties` VALUES ('1117', '5', '446', '12/12/2012', '2017-06-21 04:01:28', '2017-06-21 04:01:28', 'product_date');
INSERT INTO `properties` VALUES ('1118', '7', '446', 'Viet Nam', '2017-06-21 04:01:28', '2017-06-21 04:01:28', 'product_place');
INSERT INTO `properties` VALUES ('1119', '1', '447', '1000000', '2017-06-21 04:02:18', '2017-06-21 04:02:18', 'price');
INSERT INTO `properties` VALUES ('1120', '4', '447', '10000', '2017-06-21 04:02:19', '2017-06-21 04:02:19', 'discount');
INSERT INTO `properties` VALUES ('1121', '5', '447', '21/11/2017', '2017-06-21 04:02:19', '2017-06-21 04:02:19', 'product_date');
INSERT INTO `properties` VALUES ('1122', '7', '447', 'Viet Nam', '2017-06-21 04:02:19', '2017-06-21 04:02:19', 'product_place');
INSERT INTO `properties` VALUES ('1123', '1', '448', '1200000', '2017-06-21 04:03:44', '2017-06-21 04:03:44', 'price');
INSERT INTO `properties` VALUES ('1124', '4', '448', '10000', '2017-06-21 04:03:44', '2017-06-21 04:03:44', 'discount');
INSERT INTO `properties` VALUES ('1125', '5', '448', '21/11/2017', '2017-06-21 04:03:45', '2017-06-21 04:03:45', 'product_date');
INSERT INTO `properties` VALUES ('1126', '7', '448', 'Viet Nam', '2017-06-21 04:03:45', '2017-06-21 04:03:45', 'product_place');
INSERT INTO `properties` VALUES ('1127', '1', '449', '1200000', '2017-06-21 04:04:41', '2017-06-21 04:04:41', 'price');
INSERT INTO `properties` VALUES ('1128', '4', '449', '12000', '2017-06-21 04:04:41', '2017-06-21 04:04:41', 'discount');
INSERT INTO `properties` VALUES ('1129', '5', '449', '31/12/2016', '2017-06-21 04:04:41', '2017-06-21 04:04:41', 'product_date');
INSERT INTO `properties` VALUES ('1130', '7', '449', 'Viet Nam', '2017-06-21 04:04:41', '2017-06-21 04:04:41', 'product_place');
INSERT INTO `properties` VALUES ('1131', '1', '450', '1000000', '2017-06-21 04:05:36', '2017-06-21 04:05:36', 'price');
INSERT INTO `properties` VALUES ('1132', '4', '450', '10000', '2017-06-21 04:05:36', '2017-06-21 04:05:36', 'discount');
INSERT INTO `properties` VALUES ('1133', '5', '450', '21/11/2017', '2017-06-21 04:05:36', '2017-06-21 04:05:36', 'product_date');
INSERT INTO `properties` VALUES ('1134', '7', '450', 'Viet Nam', '2017-06-21 04:05:36', '2017-06-21 04:05:36', 'product_place');
INSERT INTO `properties` VALUES ('1135', '1', '451', '1000000', '2017-06-21 04:06:24', '2017-06-21 04:06:24', 'price');
INSERT INTO `properties` VALUES ('1136', '4', '451', '10000', '2017-06-21 04:06:24', '2017-06-21 04:06:24', 'discount');
INSERT INTO `properties` VALUES ('1137', '5', '451', '12/12/2012', '2017-06-21 04:06:24', '2017-06-21 04:06:24', 'product_date');
INSERT INTO `properties` VALUES ('1138', '7', '451', 'Viet Nam', '2017-06-21 04:06:24', '2017-06-21 04:06:24', 'product_place');

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
INSERT INTO `property_templates` VALUES ('3', 'brain', 'Nhãn hiệu', 'project', 'string', 'Toyota,\r\nHonda,\r\nMazda,\r\nBMW,\r\nAudi,\r\nMercedes,\r\nHyundai', '2015-05-18 10:19:35', '2015-05-18 10:19:35');
INSERT INTO `property_templates` VALUES ('4', 'discount', 'Giảm giá', 'product', 'string', '', '2015-05-25 08:55:35', '2015-05-25 08:55:35');
INSERT INTO `property_templates` VALUES ('5', 'product_date', 'Ngày sản xuất', 'product', 'string', '', '2015-05-25 08:55:53', '2015-05-25 08:55:53');
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shopcarts
-- ----------------------------
INSERT INTO `shopcarts` VALUES ('1', 't.nguyentuananh@gmail.com', 'dsfsdfsdf', 'tuan', '966161017', 'abcs', 'abc', '2017-06-15 08:08:05', '2017-06-15 08:08:05', '2400000');
INSERT INTO `shopcarts` VALUES ('2', 't.nguyentuananh@gmail.com', 'dsfsdfsdf', 'tuan', '966161017', 'abcs', 'abc', '2017-06-15 08:12:20', '2017-06-15 08:12:20', '2400000');
INSERT INTO `shopcarts` VALUES ('3', 't.nguyentuananh@gmail.com', 'dsfsdfsdf', 'tuan', '966161017', 'abcs', 'abc', '2017-06-15 08:15:07', '2017-06-15 08:15:07', '2400000');

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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('75', 'banner1', 'banner1', '<p>banner1</p>\r\n', '2', 'images/sliders/banner1.jpg', '0', '2017-06-20 04:06:33', '2017-06-20 04:06:33', '');
INSERT INTO `sliders` VALUES ('76', 'banner2', 'banner2', '<p>banner2</p>\r\n', '2', 'images/sliders/banner2.jpg', '0', '2017-06-20 04:06:49', '2017-06-20 04:06:49', '');
INSERT INTO `sliders` VALUES ('77', 'banner3', 'banner3', '<p>banner3</p>\r\n', '2', 'images/sliders/banner3.jpg', '0', '2017-06-20 04:07:05', '2017-06-20 04:07:05', '');
INSERT INTO `sliders` VALUES ('78', 'banner4', 'banner4', '<p>banner4</p>\r\n', '2', 'images/sliders/banner4.jpg', '0', '2017-06-20 04:07:21', '2017-06-20 04:07:21', '');
INSERT INTO `sliders` VALUES ('79', 'đối tác1', 'đối tác1', '<p>đối t&aacute;c1</p>\r\n', '3', 'images/sliders/doi-tac1.png', '0', '2017-06-20 07:44:54', '2017-06-20 07:44:54', '');
INSERT INTO `sliders` VALUES ('80', 'đối tác2', 'đối tác2', '<p>đối t&aacute;c2</p>\r\n', '3', 'images/sliders/doi-tac2.png', '0', '2017-06-20 07:45:08', '2017-06-20 07:45:08', '');
INSERT INTO `sliders` VALUES ('81', 'đối tác3', 'đối tác3', '<p>đối t&aacute;c3</p>\r\n', '3', 'images/sliders/doi-tac3.png', '0', '2017-06-20 07:45:25', '2017-06-20 07:45:25', '');
INSERT INTO `sliders` VALUES ('82', 'đối tác4', 'đối tác4', '<p>đối t&aacute;c4</p>\r\n', '3', 'images/sliders/doi-tac4.png', '0', '2017-06-20 07:45:55', '2017-06-20 07:45:55', '');
INSERT INTO `sliders` VALUES ('83', 'đối tác5', 'đối tác5', '<p>đối t&aacute;c5</p>\r\n', '3', 'images/sliders/doi-tac5.png', '0', '2017-06-20 07:46:11', '2017-06-20 07:46:11', '');
INSERT INTO `sliders` VALUES ('84', 'Đối tác 6', 'Đối tác 6', '<p>Đối t&aacute;c 6</p>\r\n', '3', 'images/sliders/doi-tac-6.png', '0', '2017-06-20 07:49:58', '2017-06-20 07:49:58', '');
INSERT INTO `sliders` VALUES ('88', 'slide2', 'slide2', '<p>slide2</p>\r\n', '1', 'images/sliders/slide2.gif', '0', '2017-06-20 08:40:17', '2017-06-20 08:40:17', '');
INSERT INTO `sliders` VALUES ('89', 'slide3', 'slide3', '<p>slide3</p>\r\n', '1', 'images/sliders/slide3.jpg', '0', '2017-06-20 08:40:39', '2017-06-20 08:40:39', '');
INSERT INTO `sliders` VALUES ('90', 'slide 5', 'slide 5', '<p>slide 5</p>\r\n', '1', 'images/sliders/slide-5.jpg', '0', '2017-06-20 09:40:47', '2017-06-20 09:40:47', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliderspacks
-- ----------------------------
INSERT INTO `sliderspacks` VALUES ('1', 'Main slider', null, 'Slider chính ở trang chủ', '870', '295', '2013-09-21 12:09:26', '2017-06-20 08:32:22');
INSERT INTO `sliderspacks` VALUES ('2', 'banner', null, 'banners', '273', '200', '2017-06-19 06:59:27', '2017-06-20 04:02:57');
INSERT INTO `sliderspacks` VALUES ('3', 'đối tác', null, 'đối tác', '150', '150', '2017-06-20 07:42:31', '2017-06-20 07:42:31');

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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin@domain.com', '$2y$10$op94UbgXP3chsRL2Oed5v.ygLTU/wAx2xL1rV5Vw.9un30lZbu0YK', null, '1', null, null, '2017-06-21 03:54:54', '$2y$10$egnsFEA.Je6yA1XZiL1UUe05qLBpDwVsM.9OGbUolkh29ITQiJu3e', null, 'Ngọc Anh', null, '2013-09-27 11:38:45', '2017-06-21 03:54:54', null);
INSERT INTO `users` VALUES ('2', 'simkbaio@gmail.com', '$2y$10$2YEBuNSoraim8LodXE5jN.6hJSuuu6yXkg6OxjQa70j6HhtTAsheq', null, '1', null, null, '2015-07-13 03:15:11', '$2y$10$kpA5hrinVkMpAkPcoKRdfOLed476VUVNOwEeGpT315/WE6Ye39Y9e', null, 'Ngoc', 'Anh', '2015-03-10 03:04:32', '2015-07-13 03:15:11', null);
INSERT INTO `users` VALUES ('3', 'ducviet.vt88@gmail.com', '$2y$10$IU0CeO.kKobdCoDm3gAB5e1pfYYZtWM90XXDDY3LIdpxph7McsPCS', null, '1', null, null, '2015-07-21 09:57:12', '$2y$10$T3Op6aklOAgFvuDuulLjPe41TXpVLcWPhBW9auPYEZuC5yFH37Wfy', null, 'Nguyễn Đức', 'Việt', '2015-06-12 09:20:53', '2015-07-21 09:57:12', null);

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
