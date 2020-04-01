/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-04-01 17:36:23
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
  `like_number` int(9) DEFAULT '0' COMMENT '点赞数',
  `comment_id` varchar(50) DEFAULT NULL COMMENT '评论id',
  `read_number` int(9) DEFAULT '0' COMMENT '阅读数',
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
  `like_number` int(9) DEFAULT '0' COMMENT '点赞数',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime DEFAULT NULL,
  `parent_id` varchar(50) DEFAULT NULL COMMENT '父级id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论主表';

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('0487cdbdad7c4a6eaf3188280e18569d', 'a897a027597344ec8a60d17295c5db27', '0718f228e4e84974a2543151cb16d3cc', null, '我第三条回复', '2020-03-31 15:46:24', '9db0f9a4d7e948a59367dca56aa44199');
INSERT INTO `tb_comment` VALUES ('14b5dd5c8a124604b188fc33833fd5fd', 'a897a027597344ec8a60d17295c5db27', '0718f228e4e84974a2543151cb16d3cc', null, '我第二条评论', '2020-03-31 15:45:44', '0');
INSERT INTO `tb_comment` VALUES ('21c0cf5615da418cb1e0060156f1a21c', '', '', null, '我要删除3', '2020-03-31 16:36:42', '');
INSERT INTO `tb_comment` VALUES ('2ac7d4fa14604155b0a4f5ad06a3b73d', 'a897a027597344ec8a60d17295c5db27', '626360af29d544d0a77845df5497ebbc', null, '这是李四的回复二', '2020-03-31 16:11:12', '0');
INSERT INTO `tb_comment` VALUES ('4cdf52391d584b4b83bb89e02dc1db96', 'a897a027597344ec8a60d17295c5db27', '0718f228e4e84974a2543151cb16d3cc', null, '我第一条回复', '2020-03-31 15:46:17', '9db0f9a4d7e948a59367dca56aa44199');
INSERT INTO `tb_comment` VALUES ('4eba486813834bc48322872bb17c1238', 'a897a027597344ec8a60d17295c5db27', '626360af29d544d0a77845df5497ebbc', null, '这是李四的评论一', '2020-03-31 16:05:39', '0');
INSERT INTO `tb_comment` VALUES ('9db0f9a4d7e948a59367dca56aa44199', 'a897a027597344ec8a60d17295c5db27', '0718f228e4e84974a2543151cb16d3cc', null, '我第一条评论', '2020-03-31 15:44:25', '0');
INSERT INTO `tb_comment` VALUES ('b4f3ba2433724e7c8801b27bf780face', 'a897a027597344ec8a60d17295c5db27', '626360af29d544d0a77845df5497ebbc', null, '这是李四的回复一', '2020-03-31 16:07:25', '4eba486813834bc48322872bb17c1238');
INSERT INTO `tb_comment` VALUES ('c48038ce77b6492080c37d748cbf92a9', 'a897a027597344ec8a60d17295c5db27', '0718f228e4e84974a2543151cb16d3cc', null, '我第三条评论', '2020-03-31 15:45:49', '0');
INSERT INTO `tb_comment` VALUES ('d2011f15617149d5a44ac3a267651b70', 'a897a027597344ec8a60d17295c5db27', '0718f228e4e84974a2543151cb16d3cc', null, '我第二条回复', '2020-03-31 15:46:20', '9db0f9a4d7e948a59367dca56aa44199');
INSERT INTO `tb_comment` VALUES ('e06d600998f549c7a6aa2150ffec0b94', '', '', null, '我要删除2', '2020-03-31 16:36:40', '');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uuid` varchar(50) NOT NULL,
  `username` varchar(10) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` int(1) DEFAULT '3' COMMENT '1、男 2、女 3、保密',
  `user_website` varchar(255) DEFAULT NULL COMMENT '个人网站',
  `account` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `modify_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('0718f228e4e84974a2543151cb16d3cc', '张三', '18588773304', '123456', null, null, null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('382023da1a714ba0b81f510c0473bf1f', '11', '18588773305', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, '2020-03-31 12:24:18');
INSERT INTO `tb_user` VALUES ('4e603867002a46a7b83937d3ae33792a', '111', '18588773302', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, '2020-03-31 12:19:47');
INSERT INTO `tb_user` VALUES ('618f0dc3169d451a88353b6c8ae6563c', '11', '18588773301', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, '2020-03-31 12:21:42');
INSERT INTO `tb_user` VALUES ('626360af29d544d0a77845df5497ebbc', '李四', '18588773306', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, '2020-03-31 14:34:17');
