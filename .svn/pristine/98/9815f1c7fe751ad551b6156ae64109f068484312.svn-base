/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : huihui

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-10-09 19:24:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `ausername` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apassword` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` char(32) CHARACTER SET utf8 NOT NULL,
  `name` char(40) COLLATE utf8_bin DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discountprice` float DEFAULT NULL,
  `imgurl` char(200) COLLATE utf8_bin DEFAULT NULL,
  `detail` text COLLATE utf8_bin,
  `discount` float DEFAULT NULL,
  `state` int(2) DEFAULT '0',
  `type` int(10) DEFAULT NULL,
  `limittime` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `specialty` int(2) DEFAULT '0',
  `grade` int(10) NOT NULL,
  `author` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `press` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `pubdate` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `isbn` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `sellername` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `uploadbooktime` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `homeimageurl` text CHARACTER SET utf8,
  `stock` int(10) DEFAULT '0',
  `exchangable` int(10) DEFAULT NULL,
  `sold` int(10) DEFAULT '0',
  `collection` int(10) DEFAULT '0',
  `buyNum` int(10) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `fk_gid` (`grade`),
  CONSTRAINT `fk_gid` FOREIGN KEY (`grade`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('20140726103130233960', '青年文摘1', '10', '7', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '1', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '313', '170', null);
INSERT INTO `book` VALUES ('20140726103130233961', '青年文摘2', '2', '3', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '1', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2018-05-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '300', '170', null);
INSERT INTO `book` VALUES ('20140726103130233962', '青年文摘3', '3', '3', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '1', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2018-04-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '312', '160', null);
INSERT INTO `book` VALUES ('20140726103130233963', '青年文摘4', '4', '3', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '1', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2018-05-27', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '311', '140', null);
INSERT INTO `book` VALUES ('20140726103130233964', '青年文摘5', '5', '3', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '1', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2015-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '342', '170', null);
INSERT INTO `book` VALUES ('20140726103130233965', '青年文摘6', '6', '3', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '1', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2017-12-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '314', '170', null);
INSERT INTO `book` VALUES ('20140726103130233966', '青年文摘7', '7', '3', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '1', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2018-04-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '315', '170', null);
INSERT INTO `book` VALUES ('20140726103130233967', '青年文摘8', '8', '3', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '0.9', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2018-03-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '316', '170', null);
INSERT INTO `book` VALUES ('20140726103130233968', '青年文摘9', '9', '3', 'http://localhost:8080/bookstore/images/qnwz.jpg', 0xE4BC98E7A780E5B9B4E8BDBBE4BABAE5BF85E8AFBBE7B3BBE58897EFBC8CE68EA8E88D90E7B3BBE58897, '1', '1', null, null, '6', '34', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '130', '1', '317', '170', null);
INSERT INTO `book` VALUES ('20150726103130233950', '英语4级4', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '820', '70', null);
INSERT INTO `book` VALUES ('20150726103130233951', '英语4级5', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '815', '70', null);
INSERT INTO `book` VALUES ('20150726103130233952', '英语4级2', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '867', '70', null);
INSERT INTO `book` VALUES ('20150726103130233953', '英语4级3', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '843', '70', null);
INSERT INTO `book` VALUES ('20150726103130233954', '英语4级', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '810', '70', null);
INSERT INTO `book` VALUES ('20150726103130233955', '英语4级', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '810', '70', null);
INSERT INTO `book` VALUES ('20150726103130233956', '英语4级', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '810', '70', null);
INSERT INTO `book` VALUES ('20150726103130233957', '英语4级', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '810', '70', null);
INSERT INTO `book` VALUES ('20150726103130233958', '英语4级', '45.6', '45.6', 'http://localhost:8080/bookstore/images/book2.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '4', '26', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '110', '1', '810', '70', null);
INSERT INTO `book` VALUES ('20160726103130233922', '牛解英汉双解小词典', '69', '69', 'http://localhost:8080/bookstore/images/book1.jpg', 0xE6B4BBE4B88DE4B88BE58EBBE5B0B1E6B2A1E69C89E69CAAE69DA5EFBC81E68891E4BBACE79A84E4BBB7E580BCE8AF84E4BBB7E4BD93E7B3BBE8A681E694B9E58F98E8BF87E58EBBE4BB85E4BBA5E68A80E69CAFE4B8BAE5AFBCE59091E79A84E8AF84E4BBB7EFBC8CE5A4A7E5AEB6E983BDE8A681E4BBA5E59586E4B89AE68890E58A9FE4B8BAE5AFBCE59091E38082EFBC88E69DA5E6BA90EFBC9AE3808AE59CA8E5A4A7E69CBAE4BC9AE697B6E4BBA3EFBC8CE58D83E4B887E4B88DE8A681E69CBAE4BC9AE4B8BBE4B989E3808BEFBC8C32303134EFBC89, '0.85', '1', null, null, '4', '26', '张三', '华中出版社', '2015-07-11', '9787513575553', '69', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg,files/20160726103130233922/2016072610322323996914-2_u_14.jpg,files/20160726103130233922/2016072610322323996914-3_u_14.jpg,files/20160726103130233922/2016072610322323996914-4_u_8.jpg,files/20160726103130233922/2016072610322423996914-5_u_8.jpg,files/20160726103130233922/2016072610373123996914-1_u_13.jpg,files/20160726103130233922/2016072610373123996914-2_u_14.jpg,files/20160726103130233922/2016072610373123996914-3_u_14.jpg,files/20160726103130233922/2016072610373123996914-4_u_8.jpg,files/20160726103130233922/2016072610373223996914-5_u_8.jpg', '110', '1', '10', '16', null);
INSERT INTO `book` VALUES ('20160726104145021342', '小学奥数', '49.9', '49.9', 'http://localhost:8080/bookstore/images/aoshu.jpg', 0xE6B4BBE4B88DE4B88BE58EBBE5B0B1E6B2A1E69C89E69CAAE69DA5EFBC81E68891E4BBACE79A84E4BBB7E580BCE8AF84E4BBB7E4BD93E7B3BBE8A681E694B9E58F98E8BF87E58EBBE4BB85E4BBA5E68A80E69CAFE4B8BAE5AFBCE59091E79A84E8AF84E4BBB7EFBC8CE5A4A7E5AEB6E983BDE8A681E4BBA5E59586E4B89AE68890E58A9FE4B8BAE5AFBCE59091E38082EFBC88E69DA5E6BA90EFBC9AE3808AE59CA8E5A4A7E69CBAE4BC9AE697B6E4BBA3EFBC8CE58D83E4B887E4B88DE8A681E69CBAE4BC9AE4B8BBE4B989E3808BEFBC8C32303134EFBC89, '1', '1', null, null, '1', '13', '李四', '时尚出版社', '2015-07-11', '9787508662718', '49', 'admin', '2016-07-26', 'files/20160726104145021342/2016072610431723992169-2_u_6.jpg,files/20160726104145021342/2016072610431723996914-5_u_8.jpg', '100', '1', '20', '23', null);
INSERT INTO `book` VALUES ('20180726103130233910', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '100', '100', null);
INSERT INTO `book` VALUES ('20180726103130233912', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '100', '100', null);
INSERT INTO `book` VALUES ('20180726103130233913', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '100', '100', null);
INSERT INTO `book` VALUES ('20180726103130233914', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '312', '100', null);
INSERT INTO `book` VALUES ('20180726103130233915', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '0.92', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '99', '100', null);
INSERT INTO `book` VALUES ('20180726103130233916', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '100', '100', null);
INSERT INTO `book` VALUES ('20180726103130233917', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '0.95', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '100', '100', null);
INSERT INTO `book` VALUES ('20180726103130233918', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '100', '100', null);
INSERT INTO `book` VALUES ('20180726103130233919', '解答之书', '40', '40', 'http://localhost:8080/bookstore/images/jdzs.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '1', '13', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '100', '1', '100', '100', null);
INSERT INTO `book` VALUES ('20180726103130233920', '初中物理', '40', '40', 'http://localhost:8080/bookstore/images/czwl.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '2', '19', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '200', '1', '200', '200', null);
INSERT INTO `book` VALUES ('20180726103130233921', '初中物理', '40', '40', 'http://localhost:8080/bookstore/images/czwl.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '2', '19', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '200', '1', '200', '200', null);
INSERT INTO `book` VALUES ('20180726103130233922', '初中物理', '40', '40', 'http://localhost:8080/bookstore/images/czwl.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '0.8', '1', null, null, '2', '19', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '200', '1', '221', '200', null);
INSERT INTO `book` VALUES ('20180726103130233923', '初中物理', '40', '40', 'http://localhost:8080/bookstore/images/czwl.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '2', '19', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '200', '1', '112', '200', null);
INSERT INTO `book` VALUES ('20180726103130233924', '初中物理', '40', '40', 'http://localhost:8080/bookstore/images/czwl.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '2', '19', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '200', '1', '200', '200', null);
INSERT INTO `book` VALUES ('20180726103130233925', '初中物理', '40', '40', 'http://localhost:8080/bookstore/images/czwl.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '2', '19', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '200', '1', '200', '200', null);
INSERT INTO `book` VALUES ('20180726103130233926', '初中物理', '40', '40', 'http://localhost:8080/bookstore/images/czwl.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '2', '19', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '200', '1', '200', '200', null);
INSERT INTO `book` VALUES ('20180726103130233927', '初中物理', '40', '40', 'http://localhost:8080/bookstore/images/czwl.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '2', '19', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '200', '1', '200', '200', null);
INSERT INTO `book` VALUES ('20180726103130233930', '高中数学', '40', '40', 'http://localhost:8080/bookstore/images/gzsx.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '3', '22', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '300', '1', '300', '300', null);
INSERT INTO `book` VALUES ('20180726103130233931', '高中数学', '40', '40', 'http://localhost:8080/bookstore/images/gzsx.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '0.96', '1', null, null, '3', '22', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '300', '1', '123', '300', null);
INSERT INTO `book` VALUES ('20180726103130233932', '高中数学', '40', '40', 'http://localhost:8080/bookstore/images/gzsx.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '0.7', '1', null, null, '3', '22', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '300', '1', '300', '300', null);
INSERT INTO `book` VALUES ('20180726103130233933', '高中数学', '40', '40', 'http://localhost:8080/bookstore/images/gzsx.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '3', '22', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '300', '1', '321', '300', null);
INSERT INTO `book` VALUES ('20180726103130233934', '高中数学', '40', '40', 'http://localhost:8080/bookstore/images/gzsx.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '3', '22', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '300', '1', '300', '300', null);
INSERT INTO `book` VALUES ('20180726103130233935', '高中数学', '40', '40', 'http://localhost:8080/bookstore/images/gzsx.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '3', '22', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '300', '1', '300', '300', null);
INSERT INTO `book` VALUES ('20180726103130233936', '高中数学', '40', '40', 'http://localhost:8080/bookstore/images/gzsx.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '3', '22', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '300', '1', '300', '300', null);
INSERT INTO `book` VALUES ('20180726103130233937', '高中数学', '40', '40', 'http://localhost:8080/bookstore/images/gzsx.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '3', '22', '李四光', '教育部出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '300', '1', '300', '300', null);
INSERT INTO `book` VALUES ('20180726103130233940', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '0.8', '1', null, null, '5', '28', '周老师', '中国出版社', '2012-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '900', '50', null);
INSERT INTO `book` VALUES ('20180726103130233941', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '5', '28', '周老师', '中国出版社', '2013-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '777', '50', null);
INSERT INTO `book` VALUES ('20180726103130233942', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '0.9', '1', null, null, '5', '28', '周老师', '中国出版社', '2014-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '800', '50', null);
INSERT INTO `book` VALUES ('20180726103130233943', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '5', '28', '周老师', '中国出版社', '2016-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '800', '50', null);
INSERT INTO `book` VALUES ('20180726103130233944', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '5', '28', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '876', '50', null);
INSERT INTO `book` VALUES ('20180726103130233945', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '5', '28', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '678', '50', null);
INSERT INTO `book` VALUES ('20180726103130233946', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '5', '28', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '800', '50', null);
INSERT INTO `book` VALUES ('20180726103130233947', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '5', '28', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '800', '50', null);
INSERT INTO `book` VALUES ('20180726103130233948', '性格的培养', '50', '50', 'http://localhost:8080/bookstore/images/xingge.jpg', 0xE698AFE4B880E69CACE5A5BDE4B9A6, '1', '1', null, null, '5', '28', '周老师', '中国出版社', '2015-07-11', '9787513575553', '40', 'admin', '2016-07-26', 'files/20160726103130233922/2016072610322323996914-1_u_13.jpg', '120', '1', '800', '50', null);

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `category_level` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `category_pid` int(10) DEFAULT NULL,
  `category_url` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `order_num` int(2) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '小学', '0', null, null, '1');
INSERT INTO `category` VALUES ('2', '初中', '0', null, null, '2');
INSERT INTO `category` VALUES ('3', '高中', '0', null, null, '3');
INSERT INTO `category` VALUES ('4', '教育', '0', null, null, '4');
INSERT INTO `category` VALUES ('5', '工具书', '0', null, null, '5');
INSERT INTO `category` VALUES ('6', '期刊', '0', null, null, '6');
INSERT INTO `category` VALUES ('13', '小学一年级', '10', '1', null, '1');
INSERT INTO `category` VALUES ('14', '小学二年级', '10', '1', null, '2');
INSERT INTO `category` VALUES ('15', '小学三年级', '10', '1', null, '3');
INSERT INTO `category` VALUES ('16', '小学四年级', '10', '1', null, '4');
INSERT INTO `category` VALUES ('17', '小学五年级', '10', '1', null, '5');
INSERT INTO `category` VALUES ('18', '小学六年级', '10', '1', null, '6');
INSERT INTO `category` VALUES ('19', '初中一年级', '10', '2', null, '1');
INSERT INTO `category` VALUES ('20', '初中二年级', '10', '2', null, '2');
INSERT INTO `category` VALUES ('21', '初中三年级', '10', '2', null, '3');
INSERT INTO `category` VALUES ('22', '高中一年级', '10', '3', null, '1');
INSERT INTO `category` VALUES ('23', '高中二年级', '10', '3', null, '2');
INSERT INTO `category` VALUES ('24', '高中三年级', '10', '3', null, '3');
INSERT INTO `category` VALUES ('25', '教材', '10', '4', null, '1');
INSERT INTO `category` VALUES ('26', '外语考试', '10', '4', null, '2');
INSERT INTO `category` VALUES ('27', '中小学辅导', '10', '4', null, '3');
INSERT INTO `category` VALUES ('28', '汉语工具书', '10', '5', null, '1');
INSERT INTO `category` VALUES ('29', '英语工具书', '10', '5', null, '2');
INSERT INTO `category` VALUES ('30', '其它语种工具', '10', '5', null, '3');
INSERT INTO `category` VALUES ('31', '百科全书', '10', '5', null, '4');
INSERT INTO `category` VALUES ('32', '文字鉴赏', '10', '5', null, '5');
INSERT INTO `category` VALUES ('33', '辞典', '10', '5', null, '6');
INSERT INTO `category` VALUES ('34', '青年文摘', '10', '6', null, '1');
INSERT INTO `category` VALUES ('35', '读者', '10', '6', null, '2');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `bid` char(32) NOT NULL,
  `content` char(50) DEFAULT NULL,
  `bookname` char(50) DEFAULT NULL,
  `satisdegree` int(1) DEFAULT NULL,
  `commenttime` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cid3` (`cid`),
  KEY `fk_bid2` (`bid`),
  CONSTRAINT `fk_bid2` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cid3` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '11', '20140726103130233963', '真的太好了，就是我需要的书籍', '青年文摘', '2', '2018-05-30 11:44:56');
INSERT INTO `comments` VALUES ('2', '11', '20140726103130233961', '真的太好了，性价比太高了，质量还很好', '青年文摘', '1', '2018-05-30 10:44:56');
INSERT INTO `comments` VALUES ('3', '11', '20140726103130233963', '性价比高', '青年文摘', '4', '2018-06-10 11:44:56');
INSERT INTO `comments` VALUES ('4', '12', '20140726103130233963', '还不错，有点皮', '青年文摘', '5', '2018-06-12 11:44:56');
INSERT INTO `comments` VALUES ('5', '13', '20140726103130233963', '不满意，我要投诉', '青年文摘', '1', '2018-06-14 11:44:56');
INSERT INTO `comments` VALUES ('6', '12', '20140726103130233963', '还可以啦，五毛党', '青年文摘', '5', '2018-07-10 11:44:56');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `question_one` varchar(20) DEFAULT NULL,
  `nickname` char(20) DEFAULT NULL,
  `password` char(100) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `qq` char(15) DEFAULT NULL,
  `cname` char(20) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `city` char(10) DEFAULT NULL,
  `district` char(50) DEFAULT NULL,
  `classname` char(30) DEFAULT NULL,
  `grade` char(30) DEFAULT NULL,
  `postcode` char(30) DEFAULT NULL,
  `province` char(30) DEFAULT NULL,
  `ctype` char(30) DEFAULT NULL,
  `school` char(40) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `picurl` char(60) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `birthday` char(30) DEFAULT NULL,
  `salt` char(80) DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `gender` int(1) DEFAULT '1',
  `question_two` varchar(20) DEFAULT NULL,
  `answer_two` varchar(30) DEFAULT NULL,
  `answer_one` varchar(30) DEFAULT NULL,
  `cusername` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('11', null, '寒木凌', '503c070ed6459bd8828d5d57757a5e44', '', '', '小李子', '', '地级市', '市、县级市', null, '二年级', null, '省份', null, '', null, 'http://localhost:8080/pic/xq_pep.jpg', '', '', 'bd1902b311ef84b0c24ef40e66f60816', null, '1', null, null, null, null);
INSERT INTO `customer` VALUES ('12', null, '小金人', '435d95f149dc2b8b22d7ce651f89f397', '13579246810', '365067551', '李大美', '武汉光谷', '武汉市', '武昌区', null, '三年级', null, '湖北省', null, '武汉小学', null, 'http://localhost:8080/pic/manhua.jpg', '365067551@qq.com', '2010-11-03', 'f155c61a0a88f8a76db4503b85183f4f', null, '0', null, null, null, null);
INSERT INTO `customer` VALUES ('13', null, '李四', '0929c7f97424d412c43ea2b4b16a0694', '13345678901', '123', 'nick', '武汉光谷', '武汉市', '江岸区', null, '二年级', null, '湖北省', null, '武汉小学', null, 'http://localhost:8080/pic/xq_pep.jpg', '365067551@qq.com', '1994-06-22', 'b98496d8a2aa827163e25d7bec7ad128', null, '1', null, null, null, null);
INSERT INTO `customer` VALUES ('14', null, null, 'Am6AWP94GchgB1XOVjrAxQ==', '15102706890', '123', '张三', '12', '烟台市', '莱山区', '15软工', null, null, '山东省', null, '烟台大学', null, null, '123@qq.com', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` char(32) NOT NULL,
  `cid` int(10) NOT NULL,
  `createtime` char(30) DEFAULT NULL,
  `state` char(30) DEFAULT NULL,
  `sid` int(20) NOT NULL COMMENT '收货信息id',
  `payno` char(32) DEFAULT NULL,
  `shipcharge` char(30) DEFAULT NULL,
  `ocount` int(10) DEFAULT NULL,
  `totalprice` float DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_cid` (`cid`),
  KEY `fk_sid` (`sid`),
  CONSTRAINT `fk_cid` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sid` FOREIGN KEY (`sid`) REFERENCES `shipping_address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3529963870099603456', '11', '2018-06-20 20:16:11', '0', '2', 'e845f155025742a5ab78d5923c20216e', null, '2', '14');
INSERT INTO `orders` VALUES ('3529979577436733440', '12', '2018-06-20 22:42:36', '1', '1', '736dc2ac811c4c71b643da1534c0b6a4', null, '1', '2');
INSERT INTO `orders` VALUES ('3530000717253181440', '13', '2018-07-11 09:48:39', '1', '2', 'e845f155025742a5ab78d5923c20216e', null, '2', '30');
INSERT INTO `orders` VALUES ('3530002298153467904', '12', '2018-06-20 22:48:53', '1', '1', '9b3163108dc84a1b9435c28f1f30aea6', null, '1', '3');
INSERT INTO `orders` VALUES ('3530697974269083648', '11', '2018-06-22 20:53:15', '1', '6', '99993b586e79495aac3266262a31ecdd', null, '3', '6');
INSERT INTO `orders` VALUES ('3530873482478878720', '12', '2018-06-23 08:30:39', '0', '2', 'bb6d284ff48b4f8882365a4fa61f52b7', null, '6', '40');
INSERT INTO `orders` VALUES ('3530875633053728768', '13', '2018-06-23 08:39:12', '1', '10', 'f500ce8e3c074a9f91bc90e1540961b4', null, '6', '14');
INSERT INTO `orders` VALUES ('3530905249483063296', '12', '2018-06-23 10:36:53', '1', '1', 'b4861644ccbb46ad99482bbcdbaf00a5', null, '1', '4');
INSERT INTO `orders` VALUES ('3537400709408358400', '12', '2018-07-11 08:47:31', '0', '6', 'b5f9b77afce1436bb31a026e943cacbc', null, '6', '27.6');
INSERT INTO `orders` VALUES ('3537408836585390080', '12', '2018-07-11 09:19:49', '0', '1', '2e0bb258c3384cfcb35380c0c5d177fd', null, '4', '22.4');
INSERT INTO `orders` VALUES ('3537409289322758144', '12', '2018-07-11 09:21:37', '0', '1', 'f94b1ac22e744b5eb466290be50d22f4', null, '1', '4');
INSERT INTO `orders` VALUES ('3537416091716288512', '12', '2018-07-11 09:48:39', '0', '1', 'f34d9cc656fe4190b4e5899c8be9f499', null, '6', '20');

-- ----------------------------
-- Table structure for `order_details`
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` char(32) NOT NULL,
  `oid` char(32) NOT NULL,
  `bid` char(32) NOT NULL,
  `bcount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_oid` (`oid`),
  KEY `fk_bid` (`bid`),
  CONSTRAINT `fk_bid` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_oid` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES ('04222fe044b14732ae6eb4124961a02b', '3537416091716288512', '20140726103130233961', '2');
INSERT INTO `order_details` VALUES ('120435378f9e4138ae51d8efec72810c', '3537416091716288512', '20140726103130233963', '4');
INSERT INTO `order_details` VALUES ('13c0961950b54e9d9126165d25529db1', '3530875633053728768', '20140726103130233963', '1');
INSERT INTO `order_details` VALUES ('14e2c49090d742cf8cd8408c63bbff3c', '3537408836585390080', '20140726103130233963', '2');
INSERT INTO `order_details` VALUES ('2a5770a486fa47a98aaa558290891a04', '3537408836585390080', '20140726103130233967', '2');
INSERT INTO `order_details` VALUES ('324f55e02888499cb5561d66ec7e9b3a', '3530000717253181440', '20140726103130233961', '1');
INSERT INTO `order_details` VALUES ('39065afb24dd49af985663477c128e02', '3530905249483063296', '20140726103130233963', '1');
INSERT INTO `order_details` VALUES ('429f33e150ba48c5b29237a7f82d7d42', '3537400709408358400', '20140726103130233961', '3');
INSERT INTO `order_details` VALUES ('4a16edd278864838b0a32b2a81fa1ba8', '3530873482478878720', '20140726103130233967', '5');
INSERT INTO `order_details` VALUES ('77f00d340e4b44709a3101b96878f9ef', '3530873482478878720', '20140726103130233963', '1');
INSERT INTO `order_details` VALUES ('7feaf6e5d1bf4e7f88bd592e8a84e0ff', '3537400709408358400', '20140726103130233967', '3');
INSERT INTO `order_details` VALUES ('8de031ce86804b7ab2bc480e9a88a405', '3529963870099603456', '20140726103130233966', '2');
INSERT INTO `order_details` VALUES ('917e46296b7545ad9b9a7b82500e1ae2', '3530697974269083648', '20140726103130233961', '3');
INSERT INTO `order_details` VALUES ('a2944362a51c4adca9f5d4de43ee758f', '3537409289322758144', '20140726103130233963', '1');
INSERT INTO `order_details` VALUES ('a678239165544308a18ded91101021a8', '3530905249483063296', '20140726103130233962', '0');
INSERT INTO `order_details` VALUES ('a7941d9f5c76450f92bfa70adb5f561d', '3530002298153467904', '20140726103130233962', '1');
INSERT INTO `order_details` VALUES ('c6367eebdcb449d7beb3ce29af0491a8', '3530875633053728768', '20140726103130233961', '3');
INSERT INTO `order_details` VALUES ('c8cb456c69d447e0a81dd976805168e0', '3529979577436733440', '20140726103130233961', '1');
INSERT INTO `order_details` VALUES ('cb439436e0d041f09c008eabf1cd93f2', '3530875633053728768', '20140726103130233961', '2');

-- ----------------------------
-- Table structure for `shipping_address`
-- ----------------------------
DROP TABLE IF EXISTS `shipping_address`;
CREATE TABLE `shipping_address` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `county` varchar(30) DEFAULT NULL,
  `addr_detail` varchar(100) DEFAULT NULL,
  `postCode` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `defaultAddr` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_cid1` (`cid`),
  CONSTRAINT `fk_cid1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shipping_address
-- ----------------------------
INSERT INTO `shipping_address` VALUES ('1', '12', '李大美', '湖北省', '武汉市', '东湖高新区', '新世界百货22楼', '430070', '15102708097', '02787439902', '1');
INSERT INTO `shipping_address` VALUES ('2', '12', '张三', '重庆', '重庆', '沙坪坝区', '陈家坪机电市场', '430000', '13871642356', '02787439902', '0');
INSERT INTO `shipping_address` VALUES ('6', '12', '赵六', '湖北省', '武汉市', '江岸区', '天安门广场', '000000', '151000000000', '010000000', '0');
INSERT INTO `shipping_address` VALUES ('8', '12', '孙五', '北京市', '北京市', '密云县', '天安门广场', '000000', '151000000000', '010000000', '0');
INSERT INTO `shipping_address` VALUES ('9', '12', '李四', '湖北省', '恩施州', '容美镇', '我家', '1', '151000000000', '1', '0');
INSERT INTO `shipping_address` VALUES ('10', '13', 'nick', '上海市', '上海市', '卢湾区', '天安门广场', '000000', '151000000000', '010000000', '1');

-- ----------------------------
-- Table structure for `shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `bid` char(32) NOT NULL,
  `unitprice` double(10,2) DEFAULT NULL,
  `bname` char(30) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `buynum` int(10) DEFAULT NULL,
  `imgurl` varchar(200) DEFAULT NULL,
  `createtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cid2` (`cid`),
  KEY `fk_bid1` (`bid`),
  CONSTRAINT `fk_bid1` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cid2` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES ('1', '14', '20140726103130233966', '7.00', '青年文摘1', '49.00', '7', 'http://localhost:8080/pic/qnwz.jpg', '2018-03-26');
