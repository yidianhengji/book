/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-03-30 17:15:40
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
  `read_number` int(9) DEFAULT NULL COMMENT '阅读数',
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES ('a897a027597344ec8a60d17295c5db27', '两瓶饮料', '父亲常年在外地打工，有一次，父亲回家，特意给儿子带了礼物，是两瓶饮料。儿子迫不及待地拧开瓶盖，咕咚就一大口。 父亲赶紧问，好喝吗？儿子嘴里还含着', null, null, null, null, '2020-03-30 14:20:03', '2020-03-30 14:20:03');
INSERT INTO `tb_article` VALUES ('ac512bf12104494e9b63a7703544a522', '11ddddd11', '父亲常年在外地打工，有一次，父亲回家，特意给儿子带了礼物，是两瓶饮料。儿子迫不及待地拧开瓶盖，咕咚就一大口。 父亲赶紧问，好喝吗？儿子嘴里还含着', null, null, null, null, '2020-03-30 14:38:29', '2020-03-30 14:38:29');
INSERT INTO `tb_article` VALUES ('ae1dbd231b7543e6a9e36356d3d98365', '11ddddd11', '父亲常年在外地打工，有一次，父亲回家，特意给儿子带了礼物，是两瓶饮料。儿子迫不及待地拧开瓶盖，咕咚就一大口。 父亲赶紧问，好喝吗？儿子嘴里还含着', null, null, null, null, '2020-03-30 14:38:17', '2020-03-30 14:38:35');
INSERT INTO `tb_article` VALUES ('c2c97c7cf76b46c5bdd5ce094860fe87', '两瓶饮料123', '父亲常年在外地打工，有一次，父亲回家，特意给儿子带了礼物，是两瓶饮料。儿子迫不及待地拧开瓶盖，咕咚就一大口。 父亲赶紧问，好喝吗？儿子嘴里还含着', null, null, null, null, '2020-03-30 14:36:28', '2020-03-30 14:36:28');
INSERT INTO `tb_article` VALUES ('d71bcced4be14ce494dd91ad9a0484d7', '两瓶饮11111', '父亲常年在外地打工，有一次，父亲回家，特意给儿子带了礼物，是两瓶饮料。儿子迫不及待地拧开瓶盖，咕咚就一大口。 父亲赶紧问，好喝吗？儿子嘴里还含着', null, null, null, null, '2020-03-30 14:34:58', '2020-03-30 14:38:04');

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
