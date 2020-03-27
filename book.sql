/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-03-27 16:35:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `uuid` varchar(50) NOT NULL,
  `title` varchar(60) DEFAULT NULL COMMENT '名称',
  `content` varchar(20000) DEFAULT NULL COMMENT '内容',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户id',
  `like_number` int(9) DEFAULT NULL COMMENT '点赞数',
  `comment_id` varchar(50) DEFAULT NULL COMMENT '评论id',
  `read_id` int(9) DEFAULT NULL COMMENT '阅读数',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES ('11', '21', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `uuid` varchar(50) NOT NULL,
  `article_id` varchar(50) DEFAULT NULL COMMENT '文章id',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户id',
  `like_number` int(9) DEFAULT NULL COMMENT '点赞数',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论主表';

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
