/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : diancanwaisong

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-03-19 21:16:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_obj
-- ----------------------------
DROP TABLE IF EXISTS `t_obj`;
CREATE TABLE `t_obj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `clert` varchar(200) DEFAULT NULL,
  `tel` varchar(200) DEFAULT NULL,
  `yuanxi` varchar(200) DEFAULT NULL,
  `score` varchar(200) DEFAULT NULL,
  `course` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_obj
-- ----------------------------

-- ----------------------------
-- Table structure for wct_address
-- ----------------------------
DROP TABLE IF EXISTS `wct_address`;
CREATE TABLE `wct_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_address
-- ----------------------------
INSERT INTO `wct_address` VALUES ('2', '1231231111', '3');
INSERT INTO `wct_address` VALUES ('3', '第五食堂', '6');
INSERT INTO `wct_address` VALUES ('4', '图书馆', '6');
INSERT INTO `wct_address` VALUES ('5', '重庆市璧山区皮鞋城一路186号', '11');
INSERT INTO `wct_address` VALUES ('6', '重庆璧山文星路', '11');
INSERT INTO `wct_address` VALUES ('7', '6栋120', '12');
INSERT INTO `wct_address` VALUES ('8', '5栋144', '12');

-- ----------------------------
-- Table structure for wct_bill
-- ----------------------------
DROP TABLE IF EXISTS `wct_bill`;
CREATE TABLE `wct_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gids` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `shop` varchar(100) DEFAULT NULL,
  `bill` varchar(2000) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ndate` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `way` varchar(50) DEFAULT NULL,
  `gnames` varchar(500) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `statecn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_bill
-- ----------------------------
INSERT INTO `wct_bill` VALUES ('14', '6', null, 'bozai', '3', '', null, null, '2016-03-14', '5', null, '面包', '', '18602394120', '1231231111', '123123', '已付款', '待处理');
INSERT INTO `wct_bill` VALUES ('15', '8', null, 'wangbo2', '11', '', null, null, '2016-03-14', '8', null, '包子', '', '15123385885', '重庆璧山文星路', '刚刚网络出问题了', '已付款', '待处理');
INSERT INTO `wct_bill` VALUES ('16', '6,8,7', null, 'wangbo5', '12', '我的早餐', null, null, '2016-03-19', '19', null, '面包,包子,原汁豆浆', '3', '15123385885', '5栋144', '这里是点餐备注', null, '待处理');

-- ----------------------------
-- Table structure for wct_dingzuo
-- ----------------------------
DROP TABLE IF EXISTS `wct_dingzuo`;
CREATE TABLE `wct_dingzuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `renshu` varchar(20) DEFAULT NULL,
  `xingming` varchar(200) DEFAULT NULL,
  `shouji` varchar(200) DEFAULT NULL,
  `shijian` varchar(200) DEFAULT NULL,
  `todate` varchar(200) DEFAULT NULL,
  `beizhu` varchar(600) DEFAULT NULL,
  `shopid` varchar(200) DEFAULT NULL,
  `shopname` varchar(200) DEFAULT NULL,
  `ndate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_dingzuo
-- ----------------------------

-- ----------------------------
-- Table structure for wct_good
-- ----------------------------
DROP TABLE IF EXISTS `wct_good`;
CREATE TABLE `wct_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `jifen` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `typeid` varchar(10) DEFAULT NULL,
  `xiaoliang` int(11) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `shop` varchar(50) DEFAULT NULL,
  `mcount` varchar(50) DEFAULT NULL,
  `saleType` varchar(50) DEFAULT NULL,
  `sale` varchar(20) DEFAULT NULL,
  `shouye` int(11) DEFAULT NULL,
  `sick` varchar(200) DEFAULT NULL,
  `shicai` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_good
-- ----------------------------
INSERT INTO `wct_good` VALUES ('6', '面包', '5', null, '这里是菜品的备注说明介绍', null, 'ffbb2f41-e357-4d82-b59c-d7923144.gif', '0', '7', '1', null, '3', '我的早餐', null, null, null, null, null, null);
INSERT INTO `wct_good` VALUES ('7', '原汁豆浆', '3', null, '这里是啊时代发生地方', null, 'a434f095-3dd0-4714-bab5-e6a3d85e.gif', '0', '8', null, null, '3', '我的早餐', null, null, null, null, null, null);
INSERT INTO `wct_good` VALUES ('8', '包子', '8', null, '啊时代发生的哈对发生的发环节入手WE', null, '92e443bc-0c4a-4c36-9776-02f68ca9.gif', '0', '7', '1', null, '3', '我的早餐', null, null, null, null, null, null);
INSERT INTO `wct_good` VALUES ('9', '烧麦', '12', null, '啊时代发生地方', null, '5588eb27-47d5-4416-baf0-d3aad1f6.gif', '0', '7', null, null, '3', '我的早餐', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for wct_line
-- ----------------------------
DROP TABLE IF EXISTS `wct_line`;
CREATE TABLE `wct_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_line
-- ----------------------------
INSERT INTO `wct_line` VALUES ('5', '10', '3');
INSERT INTO `wct_line` VALUES ('7', '12', '6');
INSERT INTO `wct_line` VALUES ('8', '13', '6');
INSERT INTO `wct_line` VALUES ('9', '14', '3');
INSERT INTO `wct_line` VALUES ('10', '15', '11');
INSERT INTO `wct_line` VALUES ('11', '16', '12');

-- ----------------------------
-- Table structure for wct_notice
-- ----------------------------
DROP TABLE IF EXISTS `wct_notice`;
CREATE TABLE `wct_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_notice
-- ----------------------------

-- ----------------------------
-- Table structure for wct_replay
-- ----------------------------
DROP TABLE IF EXISTS `wct_replay`;
CREATE TABLE `wct_replay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_replay
-- ----------------------------
INSERT INTO `wct_replay` VALUES ('3', '13', '可以评论', '6', 'wangbo', '2016-02-20 19:47:36');
INSERT INTO `wct_replay` VALUES ('4', '8', '这里可以评价', '11', 'wangbo2', '2016-03-14 16:09:42');
INSERT INTO `wct_replay` VALUES ('5', '6', '这里可以评论可以带图片也可以不带图片', '12', 'wangbo5', '2016-03-19 20:38:44');

-- ----------------------------
-- Table structure for wct_room
-- ----------------------------
DROP TABLE IF EXISTS `wct_room`;
CREATE TABLE `wct_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_room
-- ----------------------------
INSERT INTO `wct_room` VALUES ('1', '18桌', '桌号介绍', '空闲');

-- ----------------------------
-- Table structure for wct_shop
-- ----------------------------
DROP TABLE IF EXISTS `wct_shop`;
CREATE TABLE `wct_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_shop
-- ----------------------------
INSERT INTO `wct_shop` VALUES ('3', '我的早餐', '4c2f7b9e-12c8-45fd-81cc-d356b53d.gif', '这里是餐厅的说明呵呵呵呵', '重庆市璧山县文星路11号', null, null, '18602394120', '1', null);
INSERT INTO `wct_shop` VALUES ('4', '168早餐', '1503e07f-4c00-4ea2-931f-ae05057c.gif', '啊时代发生地方噶速度离开过交流空间日俄偶家', '重庆市璧山区皮鞋城一路186号', null, null, '18602394120', '1', null);

-- ----------------------------
-- Table structure for wct_type
-- ----------------------------
DROP TABLE IF EXISTS `wct_type`;
CREATE TABLE `wct_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_type
-- ----------------------------
INSERT INTO `wct_type` VALUES ('4', '广式', null);
INSERT INTO `wct_type` VALUES ('6', '米线', null);
INSERT INTO `wct_type` VALUES ('7', '面食', null);
INSERT INTO `wct_type` VALUES ('8', '豆浆系列', null);

-- ----------------------------
-- Table structure for wct_user
-- ----------------------------
DROP TABLE IF EXISTS `wct_user`;
CREATE TABLE `wct_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `roletype` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `sid` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `sick` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_user
-- ----------------------------
INSERT INTO `wct_user` VALUES ('1', 'admin', 'admin', '1', '', '18602394120', '', '', null, '', null, null, '这里是我的地址信息呵呵', null);
INSERT INTO `wct_user` VALUES ('2', 'bobo', '1', '2', null, '15123385885', null, null, null, null, null, null, 'asdfasdf', null);
INSERT INTO `wct_user` VALUES ('3', 'bozai', '1', '2', '123123', '18602394120', '123', '123', null, '', null, null, '深圳市罗湖区文井路12号', null);
INSERT INTO `wct_user` VALUES ('6', 'wangbo', '123', '2', '', '18602394120', '', '', null, '2016-02-20', null, null, '我的地址', null);
INSERT INTO `wct_user` VALUES ('7', '我的早餐', '111111', '3', null, null, null, null, null, null, null, '3', null, null);
INSERT INTO `wct_user` VALUES ('8', '168早餐', '111111', '3', null, null, null, null, null, null, null, '4', null, null);
INSERT INTO `wct_user` VALUES ('9', '测试增加餐厅', '111111', '3', null, null, null, null, null, null, null, '5', null, null);
INSERT INTO `wct_user` VALUES ('11', 'wangbo2', '123', '2', '', '15123385885', '', '', null, '', null, null, '我的地址', null);
INSERT INTO `wct_user` VALUES ('12', 'wangbo5', '111111', '2', '', '15123385885', '32234234', '', null, '', null, null, '这里是我的地址', null);

-- ----------------------------
-- Table structure for wct_vip
-- ----------------------------
DROP TABLE IF EXISTS `wct_vip`;
CREATE TABLE `wct_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qq` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `wname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_vip
-- ----------------------------
