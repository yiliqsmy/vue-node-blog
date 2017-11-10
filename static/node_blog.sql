/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : node_blog

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-10-10 18:17:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `state` tinyint(2) DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `loadURL` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `post_time` bigint(20) NOT NULL,
  `upd_time` bigint(20) DEFAULT NULL,
  `view` bigint(20) NOT NULL,
  `start` bigint(20) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '8023', 'README', '1', '1', '#', '一步一个脚印11', '1504112522100', '1504112522100', '222', '333', null);
INSERT INTO `articles` VALUES ('2', '8023', 'node+vue搭建个人博客2', '1', '1', '#', '一步一个脚印33', '1504112522100', '1504112522100', '55', '66', '');
INSERT INTO `articles` VALUES ('3', '8023', 'node+vue搭建个人博客3', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('4', '8023', 'node+vue搭建个人博客4', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('5', '8023', 'node+vue搭建个人博客5', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('6', '8023', 'node+vue搭建个人博客6', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('7', '8023', 'node+vue搭建个人博客7', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('8', '8023', 'node+vue搭建个人博客8', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('9', '8023', 'node+vue搭建个人博客9', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('10', '8023', 'node+vue搭建个人博客10', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('11', '8023', 'node+vue搭建个人博客11', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('12', '8023', 'node+vue搭建个人博客12', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');
INSERT INTO `articles` VALUES ('13', '8023', 'node+vue搭建个人博客13', '1', '1', '#', '一步一个脚印55', '1504112522100', '1504112522100', '55', '66', '5');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `reply_id` varchar(255) DEFAULT NULL,
  `reply_comment_id` int(11) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `time` bigint(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('71', '1', '8055', null, null, '让我uveitis', '1505988654793');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'Vue');
INSERT INTO `tags` VALUES ('2', 'Javascript');
INSERT INTO `tags` VALUES ('3', 'Node');
INSERT INTO `tags` VALUES ('4', 'MySql');
INSERT INTO `tags` VALUES ('5', 'Ruby');
INSERT INTO `tags` VALUES ('6', 'Html');
INSERT INTO `tags` VALUES ('7', 'Python');
INSERT INTO `tags` VALUES ('8', 'CSS');
INSERT INTO `tags` VALUES ('9', 'Java');

-- ----------------------------
-- Table structure for tag_links
-- ----------------------------
DROP TABLE IF EXISTS `tag_links`;
CREATE TABLE `tag_links` (
  `tid` int(11) NOT NULL,
  `aid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag_links
-- ----------------------------
INSERT INTO `tag_links` VALUES ('1', '1');
INSERT INTO `tag_links` VALUES ('2', '1');
INSERT INTO `tag_links` VALUES ('3', '2');
INSERT INTO `tag_links` VALUES ('4', '2');
INSERT INTO `tag_links` VALUES ('2', '3');
INSERT INTO `tag_links` VALUES ('5', '4');
INSERT INTO `tag_links` VALUES ('6', '5');
INSERT INTO `tag_links` VALUES ('1', '4');
INSERT INTO `tag_links` VALUES ('1', '3');
INSERT INTO `tag_links` VALUES ('1', '2');
INSERT INTO `tag_links` VALUES ('1', '5');
INSERT INTO `tag_links` VALUES ('1', '6');
INSERT INTO `tag_links` VALUES ('1', '7');
INSERT INTO `tag_links` VALUES ('1', '8');
INSERT INTO `tag_links` VALUES ('1', '9');
INSERT INTO `tag_links` VALUES ('1', '10');
INSERT INTO `tag_links` VALUES ('1', '11');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `root` tinyint(2) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `reminder` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8031 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('666', '12分魅力', '489584507@qq.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '0', 'head1.jpg', null, null);
INSERT INTO `users` VALUES ('8023', '假面对白', '236338364@qq.com', 'f889134a41063043803618b18908b6bd6d57b027', '1', 'head2.jpg', null, null);

-- ----------------------------
-- Table structure for visitors
-- ----------------------------
DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `reminder` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8063 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitors
-- ----------------------------
INSERT INTO `visitors` VALUES ('8023', '假面对白', '236338364@qq.com', '', 'head2.jpg', '0');
INSERT INTO `visitors` VALUES ('8055', '12分魅力', '489584507@qq.com', 'www.baidu.com', 'head1.jpg', '0');