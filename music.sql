/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : music

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2019-10-06 18:38:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `adminPwd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2', 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `collectionId` int(11) NOT NULL AUTO_INCREMENT,
  `collectionName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`collectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('7', '收藏列表', '5');
INSERT INTO `collection` VALUES ('8', '收藏列表', '7');
INSERT INTO `collection` VALUES ('9', '收藏列表', '10');
INSERT INTO `collection` VALUES ('10', '收藏列表', '11');

-- ----------------------------
-- Table structure for collectionlist
-- ----------------------------
DROP TABLE IF EXISTS `collectionlist`;
CREATE TABLE `collectionlist` (
  `collectionId` int(11) DEFAULT NULL,
  `musicId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of collectionlist
-- ----------------------------
INSERT INTO `collectionlist` VALUES ('8', '6');
INSERT INTO `collectionlist` VALUES ('8', '3');
INSERT INTO `collectionlist` VALUES ('8', '3');
INSERT INTO `collectionlist` VALUES ('8', '3');
INSERT INTO `collectionlist` VALUES ('8', '10');
INSERT INTO `collectionlist` VALUES ('8', '10');
INSERT INTO `collectionlist` VALUES ('8', '10');
INSERT INTO `collectionlist` VALUES ('8', '7');
INSERT INTO `collectionlist` VALUES ('8', '7');
INSERT INTO `collectionlist` VALUES ('8', '7');
INSERT INTO `collectionlist` VALUES ('8', '4');
INSERT INTO `collectionlist` VALUES ('8', '4');
INSERT INTO `collectionlist` VALUES ('8', '4');
INSERT INTO `collectionlist` VALUES ('9', '3');
INSERT INTO `collectionlist` VALUES ('9', '3');
INSERT INTO `collectionlist` VALUES ('9', '3');
INSERT INTO `collectionlist` VALUES ('9', '3');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('10', '5');
INSERT INTO `collectionlist` VALUES ('10', '3');
INSERT INTO `collectionlist` VALUES ('10', '7');
INSERT INTO `collectionlist` VALUES ('10', '9');
INSERT INTO `collectionlist` VALUES ('10', '11');
INSERT INTO `collectionlist` VALUES ('10', '4');
INSERT INTO `collectionlist` VALUES ('10', '6');
INSERT INTO `collectionlist` VALUES ('10', '15');
INSERT INTO `collectionlist` VALUES ('10', '15');
INSERT INTO `collectionlist` VALUES ('10', '15');
INSERT INTO `collectionlist` VALUES ('10', '13');
INSERT INTO `collectionlist` VALUES ('10', '15');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');
INSERT INTO `collectionlist` VALUES ('9', '6');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `nessageName` varchar(255) DEFAULT NULL,
  `messageEmail` varchar(255) DEFAULT NULL,
  `messageComment` varchar(255) DEFAULT NULL,
  `messageTime` date DEFAULT NULL,
  `videoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', '1');
INSERT INTO `message` VALUES ('3', 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', '1');
INSERT INTO `message` VALUES ('4', 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', '2');
INSERT INTO `message` VALUES ('5', 'hyz', '1908357899@qq.cpm', '1楼', '2018-07-16', '2');
INSERT INTO `message` VALUES ('6', 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', '3');
INSERT INTO `message` VALUES ('7', 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', '2');
INSERT INTO `message` VALUES ('8', 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', '2');
INSERT INTO `message` VALUES ('9', 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', '1');
INSERT INTO `message` VALUES ('10', 'hyz', '1908357899@qq.cpm', '1楼', '2018-07-16', '1');
INSERT INTO `message` VALUES ('11', 'hyz', '1908357899@qq.cpm', '前排', '2018-07-16', '2');
INSERT INTO `message` VALUES ('12', 'asdasd', 'dasd@eqw.qwe', 'wqeqwe', '2018-07-16', '2');
INSERT INTO `message` VALUES ('13', 'asdasd', 'dasd@eqw.qwe', 'wqeqwe', '2018-07-16', '3');
INSERT INTO `message` VALUES ('14', 'hyz', '1908357899@qq.cpm', '1楼', '2018-07-16', '2');
INSERT INTO `message` VALUES ('15', 'asdasd', 'dasd@eqw.qwe', 'wqeqwe', '2018-07-16', '2');
INSERT INTO `message` VALUES ('16', 'asdasd', 'dasd@eqw.qwe', 'wqeqwe', '2018-07-16', '1');
INSERT INTO `message` VALUES ('17', 'hyz', '1908357899@qq.cpm', '1楼', '2018-07-16', '1');
INSERT INTO `message` VALUES ('18', 'asda', 'fdsaf@wefda.sadfsa', 'sdfsafsda', '2018-07-16', '2');
INSERT INTO `message` VALUES ('19', 'dsadsa', 'dsa@edwa.sdf', 'dasdsafsd', '2018-07-16', '2');
INSERT INTO `message` VALUES ('20', 'dfsd', 'dsfsd@fsdf.fsdf', 'sdfsafsafd', '2018-07-16', '3');
INSERT INTO `message` VALUES ('21', 'fdsfs', 'sadsa@qwe.qwewq', 'eqwewqe', '2018-07-16', '2');
INSERT INTO `message` VALUES ('22', '11111111111', 'sad2DZSD@DASD.ASDASD', 'FSAFWSFSADFSDFSDA', '2018-07-16', '2');
INSERT INTO `message` VALUES ('23', 'QQQQQQQQQQQQQ', 'DASD@FSD.SADF', '2222222222222222222222222222', '2018-07-16', '1');
INSERT INTO `message` VALUES ('24', '21212', 'asd@sadf.asdas', 'sadasdas', '2018-07-16', '1');
INSERT INTO `message` VALUES ('25', 'dfsd', 'dsfsd@qqsd.dfg', 'gggggggggggggggggggggggg', '2018-07-16', '2');
INSERT INTO `message` VALUES ('26', 'dasad', 'asdad@edqw.dasd', 'qqqqqqqqqqqqqqqqqqqq', '2018-07-16', '1');
INSERT INTO `message` VALUES ('27', 'dasad', 'asdad@edqw.dasd', 'qqqqqqqqqqqqqqqqqqqq', '2018-07-16', '1');
INSERT INTO `message` VALUES ('28', 'qwer', 'asdad@edqw.dasd', 'wwwwwwwwwww', '2018-07-16', '1');
INSERT INTO `message` VALUES ('29', 'qwer', 'asdad@edqw.dasd', 'wwwwwwwwwww', '2018-07-16', '1');
INSERT INTO `message` VALUES ('30', 'aaaa', 'asdad@edqw.dasd', '1111111111111111111111', '2018-07-16', '1');
INSERT INTO `message` VALUES ('31', 'aaaa', 'asdad@edqw.dasd', '1111111111111111111111', '2018-07-16', '1');
INSERT INTO `message` VALUES ('32', 'dasad', 'asdad@edqw.dasd', '11111111111111111', '2018-07-17', '4');
INSERT INTO `message` VALUES ('33', 'dasad', 'asdad@edqw.dasd', '11111111111111111', '2018-07-17', '4');
INSERT INTO `message` VALUES ('34', 'fhnfhnghn', 'asdad@edqw.dasd', '1222222222222222222222', '2018-07-17', '4');
INSERT INTO `message` VALUES ('35', 'fhnfhnghn', 'asdad@edqw.dasd', '1222222222222222222222', '2018-07-17', '4');
INSERT INTO `message` VALUES ('36', 'qqqqqqqqqq', 'asdad@edqw.dasd', '123456789', '2018-07-17', '4');
INSERT INTO `message` VALUES ('37', 'qqqqqqqqqq', 'asdad@edqw.dasd', '123456789', '2018-07-17', '4');
INSERT INTO `message` VALUES ('38', 'hhhhh', 'asdad@edqw.dasd', 'hhhhhhhhhhhhh', '2018-07-17', '4');
INSERT INTO `message` VALUES ('39', 'wearwe', 'werewr@dwq.rfwe', '11111111111111111111111111111', '2018-07-17', '2');
INSERT INTO `message` VALUES ('40', 'lqc520', '23232@wrew.cd', '很好听', '2018-07-18', '9');
INSERT INTO `message` VALUES ('41', 'lqc111', '32@rewr.fdfd', '有人很好看', '2018-07-18', '9');
INSERT INTO `message` VALUES ('42', '1', '', '林启澄', '2018-07-18', '1');
INSERT INTO `message` VALUES ('43', '1', '', 'rewrew', '2018-07-18', '1');
INSERT INTO `message` VALUES ('44', '211231', '1402548358@qq.com', '++++++++++', '2018-07-18', '2');

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `musicId` int(11) NOT NULL AUTO_INCREMENT,
  `musicName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `musicPhotoURL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `singerId` int(11) DEFAULT NULL,
  `musicHot` int(11) DEFAULT NULL,
  `lyricURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `musicTypeId` int(11) DEFAULT NULL,
  `songURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `musicTime` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`musicId`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '丑八怪1', 'images/你还要我怎样.jpg', '1', '0', 'upload/薛之谦 - 丑八怪.lrc', '1', 'upload/薛之谦 - 丑八怪.mp3', '2018-07-17 19:44:41', '04:13');
INSERT INTO `music` VALUES ('2', '你还要我怎样', 'images/你还要我怎样.jpg', '1', '1', 'upload/薛之谦 - 你还要我怎样.lrc', '1', 'upload/薛之谦 - 你还要我怎样.mp3', '2018-07-01 11:15:49', '05:10');
INSERT INTO `music` VALUES ('3', '演员', 'images/演员.jpg', '1', null, 'upload/薛之谦 - 演员.lrc', '1', 'upload/薛之谦 - 演员.mp3', '2018-06-19 11:15:52', '04:21');
INSERT INTO `music` VALUES ('4', '刚刚好', 'images/刚刚好.jpg', '1', null, 'upload/薛之谦 - 刚刚好.lrc', '1', 'upload/薛之谦 - 刚刚好.mp3', '2018-04-03 11:15:57', '04:10');
INSERT INTO `music` VALUES ('5', '暧昧', 'images/暧昧.jpg', '1', null, 'upload/薛之谦 - 暧昧.lrc', '1', 'upload/薛之谦 - 暧昧.mp3', '2018-07-02 10:13:01', '05:12');
INSERT INTO `music` VALUES ('6', '意外', 'images/意外.jpg', '1', null, 'upload/薛之谦 - 意外.lrc', '1', 'upload/薛之谦 - 意外.mp3', '2018-05-15 11:16:01', '04:47');
INSERT INTO `music` VALUES ('7', '走马', 'images/走马.jpg', '2', '10000', 'upload/陈粒 - 走马.lrc', '1', 'upload/陈粒 - 走马.mp3', '2018-06-11 11:16:05', '03:55');
INSERT INTO `music` VALUES ('8', '小半', 'images/小半.jpg', '2', '1000105', 'upload/陈粒 - 小半.lrc', '1', 'upload/陈粒 - 小半.mp3', '2018-02-25 11:14:08', '04:57');
INSERT INTO `music` VALUES ('9', '奇妙能力歌', 'images/奇妙能力歌.jpg', '2', null, 'upload/陈粒 - 奇妙能力歌.lrc', '1', 'upload/陈粒 - 奇妙能力歌.mp3', '2018-06-04 11:16:09', '04:13');
INSERT INTO `music` VALUES ('10', '易燃易爆炸', 'images/易燃易爆炸.jpg', '2', null, 'upload/陈粒 - 易燃易爆炸.lrc', '3', 'upload/陈粒 - 易燃易爆炸.mp3', '2018-07-11 11:14:16', '03:20');
INSERT INTO `music` VALUES ('11', '不要说话', 'images/不要说话.jpg', '3', null, 'upload/陈奕迅 - 不要说话.lrc', '1', 'upload/陈奕迅 - 不要说话.mp3', '2017-12-31 11:16:15', '04:45');
INSERT INTO `music` VALUES ('12', '十年', 'images/十年.jpg', '3', null, 'upload/陈奕迅 - 十年.lrc', '1', 'upload/陈奕迅 - 十年.mp3', '2017-12-31 11:16:15', '03:25');
INSERT INTO `music` VALUES ('13', '好久不见', 'images/好久不见.jpg', '3', null, 'upload/陈奕迅 - 好久不见.lrc', '1', 'upload/陈奕迅 - 好久不见.mp3', '2017-12-31 11:16:15', '04:10');
INSERT INTO `music` VALUES ('14', '阴天快乐', 'images/阴天快乐.jpg', '3', null, 'upload/陈奕迅 - 阴天快乐.lrc', '1', 'upload/陈奕迅 - 阴天快乐.mp3', '2017-12-31 11:16:15', '04:20');
INSERT INTO `music` VALUES ('15', '我们', 'images/我们.jpg', '3', null, 'upload/陈奕迅 - 我们.lrc', '1', 'upload/陈奕迅 - 我们.mp3', '2017-12-31 11:16:15', '04:20');
INSERT INTO `music` VALUES ('16', '不潮不用花钱', 'images/不潮不用花钱.jpg', '4', null, 'upload/林俊杰 - 不潮不用花钱.lrc', '1', 'upload/林俊杰 - 不潮不用花钱 (Live).mp3', '2017-12-31 11:16:15', '02:26');
INSERT INTO `music` VALUES ('17', '不为谁而作的歌', 'images/不为谁而作的歌.jpg', '4', '2', 'upload/林俊杰 - 不为谁而作的歌.lrc', '1', 'upload/林俊杰 - 不为谁而作的歌.mp3', '2017-12-31 11:16:15', '04:25');
INSERT INTO `music` VALUES ('18', '醉赤壁', 'images/醉赤壁.jpg', '4', null, 'upload/林俊杰 - 醉赤壁.lrc', '1', 'upload/林俊杰 - 醉赤壁 (Live).mp3', '2018-07-12 11:09:38', '03:57');
INSERT INTO `music` VALUES ('19', '江南', 'images/江南.jpg', '4', null, 'upload/林俊杰 - 江南.lrc', '1', 'upload/林俊杰 - 江南.mp3', '2018-05-07 11:16:33', '04:28');
INSERT INTO `music` VALUES ('20', '可惜没如果', 'images/可惜没如果.jpg', '4', null, 'upload/林俊杰 - 可惜没如果.lrc', '1', 'upload/林俊杰 - 可惜没如果.mp3', '2018-05-07 11:16:33', '04:58');
INSERT INTO `music` VALUES ('21', '修炼爱情', 'images/修炼爱情.jpg', '4', null, 'upload/林俊杰 - 修炼爱情.lrc', '1', 'upload/林俊杰 - 修炼爱情.mp3', '2018-05-07 11:16:33', '04:47');
INSERT INTO `music` VALUES ('22', 'Faded', 'images/Faded.png', '5', null, 'upload/Alan Walker - Faded.lrc', '4', 'upload/Alan Walker - Faded.mp3', '2018-05-07 11:16:33', '03:32');
INSERT INTO `music` VALUES ('23', 'Alone', 'images/Alone.png', '5', null, 'upload/Alan Walker - Alone.lrc', '4', 'upload/Alan Walker - Alone.mp3', '2017-06-25 11:07:14', '02:41');
INSERT INTO `music` VALUES ('24', 'Ignite', 'images/Ignite.jpg', '5', null, 'upload/K-391 - Ignite.lrc', '4', 'upload/K-391 - Ignite.mp3', '2018-05-07 11:16:33', '03:30');
INSERT INTO `music` VALUES ('25', 'Viva La Vida', 'images/Viva La Vida.jpg', '6', null, 'upload/Coldplay - Viva La Vida.lrc', '4', 'upload/Coldplay - Viva La Vida.mp3', '2018-05-07 11:16:33', '04:01');
INSERT INTO `music` VALUES ('26', 'Everglow', 'images/Everglow.jpg', '6', null, 'upload/Coldplay - Everglow.lrc', '4', 'upload/Coldplay - Everglow.mp3', '2018-05-07 11:16:33', '04:42');
INSERT INTO `music` VALUES ('27', 'Perfect', 'images/Perfect.jpg', '7', null, 'upload/Ed Sheeran - Perfect.lrc', '4', 'upload/Ed Sheeran - Perfect.mp3', '2018-05-07 11:16:33', '04:23');
INSERT INTO `music` VALUES ('28', 'Happier', 'images/Happier.jpg', '7', null, 'upload/Ed Sheeran - Happier.lrc', '3', 'upload/Ed Sheeran - Happier.mp3', '2018-01-22 11:16:51', '03:27');
INSERT INTO `music` VALUES ('29', 'Lego House', 'images/Lego House.jpg', '7', null, 'upload/Ed Sheeran - Lego House.lrc', '3', 'upload/Ed Sheeran - Lego House.mp3', '2018-01-22 11:16:51', '03:03');
INSERT INTO `music` VALUES ('30', 'Shape of You', 'images/Shape of You.jpg', '8', null, 'upload/J.Fla (제이플라) - Shape of You.lrc', '3', 'upload/J.Fla (제이플라) - Shape of You.mp3', '2018-01-22 11:16:51', '02:52');
INSERT INTO `music` VALUES ('31', 'Despacito', 'images/Despacito.jpg', '8', null, 'upload/J.Fla (제이플라) - Despacito.lrc', '3', 'upload/J.Fla (제이플라) - Despacito.mp3', '2018-01-22 11:16:51', '02:38');
INSERT INTO `music` VALUES ('32', 'Havana', 'images/Havana.jpg', '8', null, 'upload/J.Fla (제이플라) - Havana.lrc', '3', 'upload/J.Fla (제이플라) - Havana.mp3', '2018-01-22 11:16:51', '02:11');
INSERT INTO `music` VALUES ('33', 'Closer', 'images/Closer.jpg', '8', null, 'upload/J.Fla (제이플라) - Closer.lrc', '3', 'upload/J.Fla (제이플라) - Closer.mp3', '2018-01-22 11:16:51', '02:35');
INSERT INTO `music` VALUES ('34', 'My Soul', 'images/My Soul.jpg', '9', null, 'upload/줄라이 (July) - My Soul.lrc', '3', 'upload/줄라이 (July) - My Soul.mp3', '2018-01-22 11:16:51', '03:50');
INSERT INTO `music` VALUES ('35', 'In Love', 'images/In Love.jpg', '9', null, 'upload/줄라이 (July) - In Love.lrc', '2', 'upload/줄라이 (July) - In Love.mp3', '2018-01-22 11:16:51', '03:53');
INSERT INTO `music` VALUES ('36', 'Somewhere', 'images/Somewhere.png', '9', null, 'upload/줄라이 (July) - Somewhere.lrc', '2', 'upload/줄라이 (July) - Somewhere.mp3', '2018-01-22 11:16:51', '03:49');
INSERT INTO `music` VALUES ('37', '咆哮 (Growl)', 'images/咆哮 (Growl).jpg', '10', null, 'upload/EXO (엑소) - 咆哮 (Growl).lrc', '2', 'upload/EXO (엑소) - 咆哮 (Growl).mp3', '2018-01-22 11:16:51', '03:27');
INSERT INTO `music` VALUES ('38', 'CALL ME BABY (叫我)', 'images/CALL ME BABY .jpg', '10', null, 'upload/EXO (엑소) - CALL ME BABY (叫我).lrc', '2', 'upload/EXO (엑소) - CALL ME BABY (叫我).mp3', '2018-01-22 11:16:51', '03:31');
INSERT INTO `music` VALUES ('39', 'Brave Shine', 'images/Brave Shine.jpg', '11', null, 'upload/Aimer (エメ) - Brave Shine.lrc', '2', 'upload/Aimer (エメ) - Brave Shine.mp3', '2018-01-22 11:16:51', '03:54');
INSERT INTO `music` VALUES ('40', 'カタオモイ (单相思)', 'images/カタオモイ .jpg', '11', null, 'Aimer (エメ) - カタオモイ (单相思).lrc', '2', 'upload/Aimer (エメ) - カタオモイ (单相思).mp3', '2018-01-22 11:16:51', '03:27');
INSERT INTO `music` VALUES ('41', 'Take Me Hand', 'images/Take Me Hand.jpg', '12', null, 'upload/DAISHI DANCE - Take Me Hand.lrc', '2', 'upload/DAISHI DANCE - Take Me Hand.mp3', '2017-02-06 11:17:08', '04:20');
INSERT INTO `music` VALUES ('42', 'Memory', 'images/Memory.jpg', '12', null, 'upload/DAISHI DANCE - Memory.lrc', '2', 'upload/DAISHI DANCE - Memory.mp3', '2017-02-06 11:17:08', '06:48');
INSERT INTO `music` VALUES ('43', 'SUNSET IN THE LAKE', 'images/SUNSET IN THE LAKE.jpg', '12', null, 'upload/DAISHI DANCE - SUNSET IN THE LAKE.lrc', '5', 'upload/DAISHI DANCE - SUNSET IN THE LAKE.mp3', '2017-02-06 11:17:08', '06:59');
INSERT INTO `music` VALUES ('44', '冬のエピローグ (冬天的尾声)', 'images/(グースハウス).jpg', '13', null, 'upload/Goose house (グースハウス) - 冬のエピローグ (冬天的尾声).lrc', '5', 'upload/Goose house (グースハウス) - 冬のエピローグ (冬天的尾声).mp3', '2017-02-06 11:17:08', '05:28');
INSERT INTO `music` VALUES ('45', '笑顔の花 (笑颜之花)', 'images/笑顔の花 .jpg', '13', null, 'upload/Goose house (グースハウス) - 笑顔の花 (笑颜之花).lrc', '5', 'upload/Goose house (グースハウス) - 笑顔の花 (笑颜之花).mp3', '2017-02-06 11:17:08', '04:43');
INSERT INTO `music` VALUES ('46', 'Why & No', 'images/Why & No.jpg', '14', null, 'upload/中島みゆき (中岛美雪) - Why & No.lrc', '5', 'upload/中島みゆき (中岛美雪) - Why & No.mp3', '2017-02-06 11:17:08', '04:16');
INSERT INTO `music` VALUES ('47', '麦の唄 (麦之歌)', 'images/麦の唄 .jpg', '14', null, 'upload/中島みゆき (中岛美雪) - 麦の唄 (麦之歌).lrc', '5', 'upload/中島みゆき (中岛美雪) - 麦の唄 (麦之歌).mp3', '2017-02-06 11:17:08', '05:12');
INSERT INTO `music` VALUES ('48', 'Galway Girl', 'images/Galway Girl.png', '15', null, 'upload/Madilyn Bailey - Galway Girl.lrc', '5', 'upload/Madilyn Bailey - Galway Girl.mp3', '2017-02-06 11:17:08', '02:50');
INSERT INTO `music` VALUES ('49', 'Maps', 'images/Maps.jpg', '15', null, 'upload/Madilyn Bailey - Maps.lrc', '5', 'upload/Madilyn Bailey - Maps.mp3', '2017-02-06 11:17:08', '02:42');
INSERT INTO `music` VALUES ('50', 'Symphony', 'images/Symphony.jpg', '15', null, 'upload/Madilyn Bailey - Symphony.lrc', '5', 'upload/Madilyn Bailey - Symphony.mp3', '2017-02-06 11:17:08', '03:44');
INSERT INTO `music` VALUES ('51', '不说再见', 'images/不说再见.jpg', '16', null, 'upload/好妹妹 - 不说再见.lrc', '5', 'upload/好妹妹 - 不说再见.mp3', '2018-05-10 11:22:08', '04:56');
INSERT INTO `music` VALUES ('52', '往事只能回味', 'images/往事只能回味.jpg', '16', null, 'upload/好妹妹 - 往事只能回味.lrc', '6', 'upload/好妹妹 - 往事只能回味.mp3', '2018-05-10 11:22:08', '03:37');
INSERT INTO `music` VALUES ('53', '相思赋予谁', 'images/相思赋予谁.png', '16', null, 'upload/好妹妹 - 相思赋予谁.lrc', '6', 'upload/好妹妹 - 相思赋予谁.mp3', '2018-05-10 11:22:08', '04:05');
INSERT INTO `music` VALUES ('54', '再见只是陌生人', 'images/再见只是陌生人.jpg', '17', null, 'upload/庄心妍 - 再见只是陌生人.lrc', '6', 'upload/庄心妍 - 再见只是陌生人.mp3', '2018-05-10 11:22:08', '04:11');
INSERT INTO `music` VALUES ('55', '爱囚', 'images/爱囚.jpg', '17', null, 'upload/庄心妍 - 爱囚.lrc', '6', 'upload/庄心妍 - 爱囚.mp3', '2018-05-10 11:22:08', '04:03');
INSERT INTO `music` VALUES ('56', '欧若拉', 'images/欧若拉.jpg', '18', null, 'upload/张韶涵 - 欧若拉 (Live).lrc', '6', 'upload/张韶涵 - 欧若拉 (Live).mp3', '2018-05-10 11:22:08', '02:52');
INSERT INTO `music` VALUES ('57', '亲爱的，那不是爱情', 'images/亲爱的，那不是爱情.jpg', '18', null, 'upload/张韶涵 - 亲爱的，那不是爱情.lrc', '6', 'upload/张韶涵 - 亲爱的，那不是爱情.mp3', '2018-05-10 11:22:08', '04:16');
INSERT INTO `music` VALUES ('58', '隐形的翅膀', 'images/隐形的翅膀.jpg', '18', null, 'upload/张韶涵 - 隐形的翅膀.lrc', '6', 'upload/张韶涵 - 隐形的翅膀.mp3', '2018-05-10 11:22:08', '03:44');
INSERT INTO `music` VALUES ('59', '泡沫', 'images/泡沫.jpg', '19', null, 'upload/G.E.M. 邓紫棋 - 泡沫.lrc', '6', 'upload/G.E.M. 邓紫棋 - 泡沫.mp3', '2018-05-10 11:22:08', '04:18');
INSERT INTO `music` VALUES ('60', '喜欢你', 'images/喜欢你.jpg', '19', null, 'upload/G.E.M. 邓紫棋 - 喜欢你.lrc', '7', 'upload/G.E.M. 邓紫棋 - 喜欢你.mp3', '2018-05-10 11:22:08', '03:59');
INSERT INTO `music` VALUES ('61', 'The Rain', 'images/The Rain.jpg', '20', null, 'upload/久石譲 (Joe Hisaishi) - The Rain.lrc', '7', 'upload/久石譲 (Joe Hisaishi) - The Rain.mp3', '2017-02-06 11:17:08', '05:38');
INSERT INTO `music` VALUES ('62', 'Summer', 'images/Summer.jpg', '20', null, 'upload/久石譲 (Joe Hisaishi) - Summer.lrc', '7', 'upload/久石譲 (Joe Hisaishi) - Summer.mp3', '2017-02-06 11:17:08', '06:25');
INSERT INTO `music` VALUES ('63', 'Lemon(柠檬)', 'images/Lemon.jpg', '21', null, 'upload/米津玄師 (よねづ けんし) - Lemon (柠檬).lrc', '7', 'upload/米津玄師 (よねづ けんし) - Lemon (柠檬).mp3', '2017-02-06 11:17:08', '04:15');
INSERT INTO `music` VALUES ('64', 'LOSER', 'images/LOSER.jpg', '21', null, 'upload/米津玄師 (よねづ けんし) - LOSER.lrc', '7', 'upload/米津玄師 (よねづ けんし) - LOSER.mp3', '2017-02-06 11:17:08', '04:05');
INSERT INTO `music` VALUES ('65', 'Black', 'images/Black.jpg', '22', null, 'upload/G-DRAGON - Black.lrc', '7', 'upload/G-DRAGON - Black.mp3', '2018-03-27 11:21:41', '03:25');
INSERT INTO `music` VALUES ('66', 'Miss You', 'images/Miss You.jpg', '22', null, 'upload/G-DRAGON - Missing You.lrc', '7', 'upload/G-DRAGON - Missing You.mp3', '2018-03-27 11:21:41', '03:29');
INSERT INTO `music` VALUES ('67', 'My Turn To Cry', 'images/My Turn To Cry.jpg', '23', null, 'upload/백현 (伯贤) - My Turn To Cry (Live).lrc', '7', 'upload/백현 (伯贤) - My Turn To Cry (Live).mp3', '2018-03-27 11:21:41', '01:25');
INSERT INTO `music` VALUES ('68', 'Paradise', 'images/Paradise.jpg', '23', null, 'upload/', '7', 'upload/伯贤、CHEN、D.O. - Paradise (Live).mp3', '2018-03-27 11:21:41', '03:00');
INSERT INTO `music` VALUES ('69', 'Sparks Fly', 'images/Sparks Fly.jpg', '24', null, 'upload/Taylor Swift - Sparks Fly.lrc', '7', 'upload/Taylor Swift - Sparks Fly.mp3', '2018-03-27 11:21:41', '04:23');
INSERT INTO `music` VALUES ('70', 'Begin again', 'images/Begin again.jpg', '24', null, 'upload/Taylor Swift - Begin Again.lrc', '7', 'upload/Taylor Swift - Begin Again.mp3', '2018-03-27 11:21:41', '03:57');
INSERT INTO `music` VALUES ('71', '初梦', 'images/初梦.jpg', '25', null, 'upload/初音ミク (初音未来) - 初梦.lrc', '7', 'upload/初音ミク (初音未来) - 初梦.mp3', '2018-03-27 11:21:41', '03:41');
INSERT INTO `music` VALUES ('72', '深海少女', 'images/深海少女.jpg', '25', null, 'upload/初音ミク - 深海少女.lrc', '7', 'upload/初音ミク - 深海少女.mp3', '2018-03-27 11:21:41', '03:35');
INSERT INTO `music` VALUES ('73', 'せつない自由', 'images/せつない自由.jpg', '26', null, 'upload/MANISH - せつない自由.lrc', '8', 'upload/MANISH - せつない自由.mp3', '2018-03-27 11:21:41', '04:57');
INSERT INTO `music` VALUES ('74', '明日のStory', 'images/明日のStory.jpg', '26', null, 'upload/MANISH - 明日のStory.lrc', '8', 'upload/MANISH - 明日のStory.mp3', '2018-03-27 11:21:41', '03:26');
INSERT INTO `music` VALUES ('75', 'This Love', 'images/This Love.jpg', '27', null, 'upload/Maroon 5 - This Love.lrc', '8', 'upload/Maroon 5 - This Love.mp3', '2018-03-27 11:21:41', '03:26');
INSERT INTO `music` VALUES ('76', 'Feelings', 'images/Feelings.jpg', '27', null, 'upload/Maroon 5 - Feelings.lrc', '8', 'upload/Maroon 5 - Feelings.mp3', '2018-03-27 11:21:41', '03:14');
INSERT INTO `music` VALUES ('77', 'My Love', 'images/My Love.jpg', '28', null, 'upload/Westlife - My Love.lrc', '8', 'upload/Westlife - My Love.mp3', '2018-03-27 11:21:41', '03:52');
INSERT INTO `music` VALUES ('78', 'You Raise Me', 'images/You Raise Me.jpg', '28', null, 'upload/Westlife - You Raise Me Up.lrc', '8', 'upload/Westlife - You Raise Me Up.mp3', '2018-03-27 11:21:41', '04:02');
INSERT INTO `music` VALUES ('79', 'Tummy', 'images/Tummy.jpg', '29', null, 'upload/RADWIMPS (ラッドウィンプス) - Tummy.lrc', '8', 'upload/RADWIMPS (ラッドウィンプス) - Tummy.mp3', '2018-03-27 11:21:41', '04:47');
INSERT INTO `music` VALUES ('80', 'なんでもないや (没什么大不了)', 'images/なんでもないや.jpg', '29', null, 'upload/RADWIMPS (ラッドウィンプス) - なんでもないや (没什么大不了) (Movie ver.).lrc', '8', 'upload/RADWIMPS (ラッドウィンプス) - なんでもないや (没什么大不了) (Movie ver.).mp3', '2018-03-27 11:21:41', '05:44');
INSERT INTO `music` VALUES ('81', 'IF YOU', 'images/IF YOU.jpg', '30', null, 'upload/BIGBANG (빅뱅) - IF YOU.lrc', '8', 'upload/BIGBANG (빅뱅) - IF YOU.mp3', '2018-03-27 11:21:41', '04:24');
INSERT INTO `music` VALUES ('82', '하루하루 (一天一天)', 'images/하루하루.jpg', '30', null, 'upload/BIGBANG (빅뱅) - 하루하루 (一天一天).lrc', '8', 'upload/BIGBANG (빅뱅) - 하루하루 (一天一天).mp3', '2018-03-27 11:21:41', '04:16');
INSERT INTO `music` VALUES ('83', 'The Boys', 'images/The Boys.jpg', '31', null, 'upload/소녀시대 (少女时代) - The Boys (韩语).lrc', '8', 'upload/소녀시대 (少女时代) - The Boys (韩语).mp3', '2018-03-27 11:21:41', '03:48');
INSERT INTO `music` VALUES ('84', 'PARTY', 'images/PARTY.jpg', '31', null, 'upload/소녀시대 (少女时代) - PARTY.lrc', '8', 'upload/소녀시대 (少女时代) - PARTY.mp3', '2018-03-27 11:21:41', '03:14');
INSERT INTO `music` VALUES ('85', '我们的时光', 'images/我们的时光.jpg', '32', null, 'upload/TFBOYS - 我们的时光.lrc', '9', 'upload/TFBOYS - 我们的时光.mp3', '2018-03-27 11:21:41', '03:50');
INSERT INTO `music` VALUES ('86', '不完美的小孩', 'images/不完美的小孩.jpg', '32', null, 'upload/TFBOYS - 不完美小孩.lrc', '9', 'upload/TFBOYS - 不完美小孩.mp3', '2018-07-11 11:09:19', '04:20');
INSERT INTO `music` VALUES ('87', '这，就是爱', 'images/这，就是爱.jpg', '33', null, 'upload/张杰 - 这，就是爱 (Live).lrc', '9', 'upload/张杰 - 这，就是爱 (Live).mp3', '2018-06-24 11:21:25', '03:19');
INSERT INTO `music` VALUES ('88', '只要平凡', 'images/只要平凡.jpg', '33', null, 'upload/张杰 - 只要平凡.lrc', '9', 'upload/张杰 - 只要平凡.mp3', '2018-06-24 11:21:25', '04:06');
INSERT INTO `music` VALUES ('89', '三生三世', 'images/三生三世.jpg', '33', null, 'upload/张杰 - 三生三世.lrc', '9', 'upload/张杰 - 三生三世.mp3', '2018-07-10 11:10:11', '04:17');
INSERT INTO `music` VALUES ('90', '逆战', 'images/逆战.jpg', '33', '500', 'upload/张杰 - 逆战.lrc', '9', 'upload/张杰 - 逆战.mp3', '2018-06-24 11:21:25', '03:51');
INSERT INTO `music` VALUES ('91', '告白气球', 'images/告白气球.jpg', '34', null, 'upload/周杰伦 - 告白气球.lrc', '9', 'upload/周杰伦 - 告白气球.mp3', '2018-06-24 11:21:25', '03:35');
INSERT INTO `music` VALUES ('92', '晴天', 'images/晴天.jpg', '34', null, 'upload/周杰伦 - 晴天.lrc', '9', 'upload/周杰伦 - 晴天.mp3', '2018-06-24 11:21:25', '04:29');
INSERT INTO `music` VALUES ('93', '青花瓷', 'images/青花瓷.jpg', '34', null, 'upload/周杰伦 - 青花瓷.lrc', '9', 'upload/周杰伦 - 青花瓷.mp3', '2018-06-24 11:21:25', '03:59');
INSERT INTO `music` VALUES ('94', '消愁', 'images/消愁.jpg', '35', null, 'upload/毛不易 - 消愁 (Live).lrc', '9', 'upload/毛不易 - 消愁 (Live).mp3', '2018-06-24 11:21:25', '02:59');
INSERT INTO `music` VALUES ('95', '像我这样的人', 'images/像我这样的人.jpg', '35', '3', 'upload/毛不易 - 像我这样的人 (Live).lrc', '9', 'upload/毛不易 - 像我这样的人 (Live).mp3', '2018-06-24 11:21:25', '02:49');
INSERT INTO `music` VALUES ('96', '盛夏', 'images/盛夏.jpg', '35', null, 'upload/毛不易 - 盛夏 (Live).lrc', '9', 'upload/毛不易 - 盛夏 (Live).mp3', '2018-06-24 11:21:25', '04:52');
INSERT INTO `music` VALUES ('97', '暖暖', 'images/暖暖.jpg', '36', null, 'upload/梁静茹 - 暖暖.lrc', '9', 'upload/梁静茹 - 暖暖.mp3', '2018-06-24 11:21:25', '04:03');
INSERT INTO `music` VALUES ('98', '勇气', 'images/勇气.jpg', '36', null, 'upload/梁静茹 - 勇气.lrc', '9', 'upload/梁静茹 - 勇气.mp3', '2018-06-24 11:21:25', '03:59');
INSERT INTO `music` VALUES ('99', '画心', 'images/画心.jpg', '37', null, 'upload/张靓颖 - 画心.lrc', '10', 'upload/张靓颖 - 画心.mp3', '2018-06-24 11:21:25', '07:12');
INSERT INTO `music` VALUES ('100', '只是没有如果', 'images/只是没有如果.jpg', '37', null, 'upload/张靓颖 - 只是没有如果.lrc', '10', 'upload/张靓颖 - 只是没有如果.mp3', '2018-07-12 11:09:09', '04:55');
INSERT INTO `music` VALUES ('101', '如果这就是爱情', 'images/如果这就是爱情.jpg', '37', null, 'upload/张靓颖 - 如果这就是爱情.lrc', '10', 'upload/张靓颖 - 如果这就是爱情.mp3', '2018-06-24 11:21:25', '04:42');
INSERT INTO `music` VALUES ('102', 'Call your name', 'images/Call your name.jpg', '38', null, 'upload/澤野弘之 (さわの ひろゆき) - Call your name.lrc', '10', 'upload/澤野弘之 (さわの ひろゆき) - Call your name.mp3', '2017-02-06 11:17:08', '04:28');
INSERT INTO `music` VALUES ('103', 'aLIEz', 'images/aLIEz.jpg', '38', null, 'upload/澤野弘之 - aLIEz.lrc', '10', 'upload/澤野弘之 - aLIEz.mp3', '2017-02-06 11:17:08', '04:28');
INSERT INTO `music` VALUES ('104', 'The Cure', 'images/The Cure.jpg', '39', null, 'upload/Lady Gaga - The Cure.lrc', '10', 'upload/Lady Gaga - The Cure.mp3', '2018-05-02 11:21:11', '03:31');
INSERT INTO `music` VALUES ('105', 'Just Dance', 'images/Just Dance.jpg', '39', null, 'upload/Lady Gaga - Just Dance.lrc', '10', 'upload/Lady Gaga - Just Dance.mp3', '2018-05-02 11:21:11', '04:01');
INSERT INTO `music` VALUES ('106', 'Fly', 'images/Fly.jpg', '40', null, 'upload/Avril Lavigne - Fly.lrc', '10', 'upload/Avril Lavigne - Fly.mp3', '2018-05-02 11:21:11', '03:06');
INSERT INTO `music` VALUES ('107', 'Innocence', 'images/Innocence.jpg', '40', null, 'upload/Avril Lavigne - Innocence.lrc', '10', 'upload/Avril Lavigne - Innocence.mp3', '2018-05-02 11:21:11', '03:53');
INSERT INTO `music` VALUES ('108', 'The Call', 'images/The Call.jpg', '41', null, 'upload/Backstreet Boys - The Call.lrc', '10', 'upload/Backstreet Boys - The Call.mp3', '2018-05-02 11:21:11', '03:26');
INSERT INTO `music` VALUES ('109', 'Drowning', 'images/Drowning.jpg', '41', null, 'upload/Backstreet Boys - Drowning.lrc', '10', 'upload/Backstreet Boys - Drowning.mp3', '2018-05-02 11:21:11', '04:27');
INSERT INTO `music` VALUES ('110', 'Sorry', 'images/Sorry.jpg', '42', null, 'upload/', '10', 'upload/Justin Bieber - Sorry.mp3', '2018-05-02 11:21:11', '03:20');
INSERT INTO `music` VALUES ('111', 'As Long As You Love Me', 'images/As Long As You Love Me.jpg', '42', null, 'upload/Justin Bieber - As Long As You Love Me.lrc', '11', 'upload/Justin Bieber - As Long As You Love Me.mp3', '2018-05-02 11:21:11', '03:49');
INSERT INTO `music` VALUES ('112', 'Billie Jean', 'images/Billie Jean.jpg', '43', null, 'upload/Michael Jackson - Billie Jean.lrc', '11', 'upload/Michael Jackson - Billie Jean.mp3', '2018-05-02 11:21:11', '04:53');
INSERT INTO `music` VALUES ('113', 'Beat It', 'images/Beat It.jpg', '43', null, 'upload/Michael Jackson - Beat It.lrc', '11', 'upload/Michael Jackson - Beat It.mp3', '2018-05-02 11:21:11', '04:17');
INSERT INTO `music` VALUES ('114', '突然好想你', 'images/突然好想你.jpg', '44', null, 'upload/五月天 - 突然好想你.lrc', '11', 'upload/五月天 - 突然好想你.mp3', '2018-05-02 11:21:11', '04:25');
INSERT INTO `music` VALUES ('115', '倔强', 'images/倔强.jpg', '44', null, 'upload/五月天 - 倔强.lrc', '11', 'upload/五月天 - 倔强.mp3', '2018-05-02 11:21:11', '04:21');
INSERT INTO `music` VALUES ('116', 'I NEED U', 'images/I NEED U.jpg', '45', null, 'upload/', '11', 'upload/BTS（防弹少年团） - I NEED U (2015韩国梦想演唱会).mp3', '2018-05-02 11:21:11', '08:37');
INSERT INTO `music` VALUES ('117', 'FIRE', 'images/FIRE.jpg', '45', null, 'upload/', '11', 'upload/BTS（防弹少年团） - FIRE (Live).mp3', '2018-05-02 11:21:11', '05:41');
INSERT INTO `music` VALUES ('118', '两个人', 'images/两个人.jpg', '46', null, 'upload/채연 (蔡妍) - 两个人.lrc', '11', 'upload/채연 (蔡妍) - 两个人.mp3', '2018-05-02 11:21:11', '03:07');
INSERT INTO `music` VALUES ('119', '热力开场', 'images/热力开场.jpg', '46', null, 'upload/채연 (蔡妍) - 热力开场.lrc', '11', 'upload/채연 (蔡妍) - 热力开场.mp3', '2018-05-02 11:21:11', '03:47');
INSERT INTO `music` VALUES ('120', 'All of me', 'images/All of me.jpg', '47', null, 'upload/찬열 (灿烈) - All of me.lrc', '11', 'upload/찬열 (灿烈) - All of me.mp3', '2018-05-02 11:21:11', '03:02');
INSERT INTO `music` VALUES ('121', 'Love Yourself', 'images/Love Yourself.jpg', '47', null, 'upload/찬열 - Love Yourself.lrc', '11', 'upload/찬열 - Love Yourself.mp3', '2018-05-02 11:21:11', '02:45');
INSERT INTO `music` VALUES ('122', 'MY ALL', 'images/MY ALL.jpg', '48', null, 'upload/浜崎あゆみ (滨崎步) - MY ALL.lrc', '11', 'upload/浜崎あゆみ (滨崎步) - MY ALL.mp3', '2017-02-06 11:17:08', '05:25');
INSERT INTO `music` VALUES ('123', 'Enigmatic Feeling', 'images/Enigmatic Feeling.jpg', '49', null, 'upload/凛として時雨 (凛冽时雨) - Enigmatic Feeling.lrc', '11', 'upload/凛として時雨 (凛冽时雨) - Enigmatic Feeling.mp3', '2017-02-06 11:17:08', '03:50');
INSERT INTO `music` VALUES ('124', 'abnormalize', 'images/abnormalize.jpg', '49', null, 'upload/凛として時雨 (凛冽时雨) - abnormalize.lrc', '11', 'upload/凛として時雨 (凛冽时雨) - abnormalize.mp3', '2017-02-06 11:17:08', '03:38');
INSERT INTO `music` VALUES ('125', 'Lip & Hip', 'images/Lip & Hip.jpg', '50', null, 'upload/현아 (泫雅) - Lip & Hip.lrc', '11', 'upload/현아 (泫雅) - Lip & Hip.mp3', '2017-06-11 11:20:40', '03:29');
INSERT INTO `music` VALUES ('126', '베베 (BABE)', 'images/베베.jpg', '50', null, 'upload/현아 (泫雅) - 베베 (BABE).lrc', '11', 'upload/현아 (泫雅) - 베베 (BABE).mp3', '2017-06-11 11:20:40', '03:13');
INSERT INTO `music` VALUES ('127', ' 너 하나만 (唯有你)', 'images/너 하나만.jpg', '51', null, 'upload/김태우 (金泰宇) - 너 하나만 (唯有你).lrc', '11', 'upload/김태우 (金泰宇) - 너 하나만 (唯有你).mp3', '2017-06-11 11:20:40', '03:14');
INSERT INTO `music` VALUES ('128', '听海', 'images/听海.jpg', '52', null, 'upload/张惠妹 - 听海 (Live).lrc', '12', 'upload/张惠妹 - 听海 (Live).mp3', '2017-06-11 11:20:40', '05:24');
INSERT INTO `music` VALUES ('129', '我最亲爱的', 'images/我最亲爱的.jpg', '52', null, 'upload/张惠妹 - 我最亲爱的.lrc', '12', 'upload/张惠妹 - 我最亲爱的.mp3', '2017-06-11 11:20:40', '04:44');
INSERT INTO `music` VALUES ('130', '匆匆那年', 'images/匆匆那年.jpg', '53', null, 'upload/王菲 - 匆匆那年.lrc', '12', 'upload/王菲 - 匆匆那年.mp3', '2017-06-11 11:20:40', '04:01');
INSERT INTO `music` VALUES ('131', '红豆', 'images/红豆.jpg', '53', null, 'upload/王菲 - 红豆.lrc', '12', 'upload/王菲 - 红豆.mp3', '2017-06-11 11:20:40', '04:20');
INSERT INTO `music` VALUES ('132', '传奇', 'images/传奇.jpg', '53', null, 'upload/王菲 - 传奇.lrc', '12', 'upload/王菲 - 传奇.mp3', '2017-06-11 11:20:40', '04:56');
INSERT INTO `music` VALUES ('133', '慢慢', 'images/慢慢.jpg', '54', null, 'upload/张学友 - 慢慢.lrc', '12', 'upload/张学友 - 慢慢.mp3', '2017-06-11 11:20:40', '04:43');
INSERT INTO `music` VALUES ('134', '吻别', 'images/吻别.jpg', '54', null, 'upload/张学友 - 吻别.lrc', '12', 'upload/张学友 - 吻别.mp3', '2017-06-11 11:20:40', '05:06');
INSERT INTO `music` VALUES ('135', '说谎', 'images/说谎.jpg', '55', null, 'upload/林宥嘉 - 说谎 (Live).lrc', '12', 'upload/林宥嘉 - 说谎 (Live).mp3', '2017-06-11 11:20:40', '04:30');
INSERT INTO `music` VALUES ('136', '残酷月光', 'images/残酷月光.jpg', '55', null, 'upload/林宥嘉 - 残酷月光 (Live).lrc', '12', 'upload/林宥嘉 - 残酷月光 (Live).mp3', '2017-06-11 11:20:40', '01:54');
INSERT INTO `music` VALUES ('137', '齐天', 'images/齐天.jpg', '56', null, 'upload/华晨宇 - 齐天.lrc', '12', 'upload/华晨宇 - 齐天.mp3', '2017-06-11 11:20:40', '04:47');
INSERT INTO `music` VALUES ('138', '烟火里的尘埃', 'images/烟火里的尘埃.jpg', '56', null, 'upload/华晨宇 - 烟火里的尘埃 (Live).lrc', '12', 'upload/华晨宇 - 烟火里的尘埃 (Live).mp3', '2017-06-11 11:20:40', '06:42');
INSERT INTO `music` VALUES ('139', 'Here We Are', 'images/Here We Are.jpg', '56', null, 'upload/华晨宇 - Here We Are.lrc', '12', 'upload/华晨宇 - Here We Are.mp3', '2017-06-11 11:20:40', '04:50');
INSERT INTO `music` VALUES ('140', '起风了', 'images/起风了.jpg', '57', null, 'upload/胖胖胖 - 起风了.lrc', '12', 'upload/胖胖胖 - 起风了.mp3', '2017-06-11 11:20:40', '04:54');
INSERT INTO `music` VALUES ('141', 'Strong Heart', 'images/Strong Heart.jpg', '58', null, 'upload/倉木麻衣 (くらき まい) - Strong Heart.lrc', '12', 'upload/倉木麻衣 (くらき まい) - Strong Heart.mp3', '2017-06-11 11:20:40', '04:21');
INSERT INTO `music` VALUES ('142', 'always', 'images/always.jpg', '58', null, 'upload/倉木麻衣 (くらき まい) - always.lrc', '12', 'upload/倉木麻衣 (くらき まい) - always.mp3', '2017-06-11 11:20:40', '04:09');
INSERT INTO `music` VALUES ('143', '等待你的出现', 'images/等待你的出现.jpg', '59', null, 'upload/小野リサ (小野丽莎) - 等待你出现.lrc', '12', 'upload/小野リサ (小野丽莎) - 等待你出现.mp3', '2017-06-11 11:20:40', '04:05');
INSERT INTO `music` VALUES ('144', 'Moon River', 'images/Moon River.jpg', '59', null, 'upload/小野リサ (小野丽莎) - Moon River.lrc', '12', 'upload/小野リサ (小野丽莎) - Moon River.mp3', '2017-06-11 11:20:40', '04:21');
INSERT INTO `music` VALUES ('145', '桃源恋歌', 'images/桃源恋歌.jpg', '60', null, 'upload/GARNiDELiA (ガルニデリア) - 桃源恋歌.lrc', '12', 'upload/GARNiDELiA (ガルニデリア) - 桃源恋歌.mp3', '2017-06-11 11:20:40', '03:49');
INSERT INTO `music` VALUES ('146', 'MIRAI(未来)', 'images/MIRAI(未来).jpg', '60', null, 'upload/GARNiDELiA (ガルニデリア) - MIRAI (未来).lrc', '12', 'upload/GARNiDELiA (ガルニデリア) - MIRAI (未来).mp3', '2017-06-11 11:20:40', '05:42');
INSERT INTO `music` VALUES ('147', 'First Love', 'images/First Love.jpg', '61', null, 'upload/宇多田ヒカル (宇多田光) - First Love.lrc', '12', 'upload/宇多田ヒカル (宇多田光) - First Love.mp3', '2017-02-06 11:17:08', '04:17');
INSERT INTO `music` VALUES ('148', 'That Girl', 'images/That Girl.jpg', '62', null, 'upload/Olly Murs - That Girl.lrc', '12', 'upload/Olly Murs - That Girl.mp3', '2017-06-11 11:20:40', '02:56');
INSERT INTO `music` VALUES ('149', 'Grow Up', 'images/Grow Up.jpg', '62', null, 'upload/Olly Murs - Grow Up.lrc', '12', 'upload/Olly Murs - Grow Up.mp3', '2017-06-11 11:20:40', '03:45');
INSERT INTO `music` VALUES ('150', 'Kiss Me', 'images/Kiss Me.jpg', '62', null, 'upload/Olly Murs - Kiss Me.lrc', '13', 'upload/Olly Murs - Kiss Me.mp3', '2017-06-11 11:20:40', '03:18');
INSERT INTO `music` VALUES ('151', 'Wolves', 'images/Wolves.jpg', '63', null, 'upload/Selena Gomez - Wolves.lrc', '13', 'upload/Selena Gomez - Wolves.mp3', '2017-06-11 11:20:40', '03:18');
INSERT INTO `music` VALUES ('152', 'Back To You', 'images/Back To You.jpg', '63', null, 'upload/Selena Gomez - Back To You.lrc', '13', 'upload/Selena Gomez - Back To You.mp3', '2017-06-11 11:20:40', '03:27');
INSERT INTO `music` VALUES ('153', 'Somebody', 'images/Somebody.jpg', '64', null, 'upload/The Chainsmokers - Somebody.lrc', '13', 'upload/The Chainsmokers - Somebody.mp3', '2017-06-11 11:20:40', '03:43');
INSERT INTO `music` VALUES ('154', 'There For You', 'images/There For You.jpg', '65', null, 'upload/Martin Garrix - There For You.lrc', '13', 'upload/Martin Garrix - There For You.mp3', '2017-06-11 11:20:40', '03:41');
INSERT INTO `music` VALUES ('155', 'YOUTH', 'images/YOUTH.jpg', '65', null, 'upload/Troye Sivan - YOUTH.lrc', '13', 'upload/Troye Sivan - YOUTH.mp3', '2017-06-11 11:20:40', '03:05');
INSERT INTO `music` VALUES ('156', '勋章', 'images/勋章.jpg', '66', '4', 'upload/鹿晗 - 勋章.lrc', '13', 'upload/鹿晗 - 勋章.mp3', '2017-10-05 11:20:15', '03:33');
INSERT INTO `music` VALUES ('157', '致爱 Your Song', 'images/致爱 Your Song.jpg', '66', null, 'upload/鹿晗 - 致爱 Your Song.lrc', '13', 'upload/鹿晗 - 致爱 Your Song.mp3', '2018-07-12 11:08:50', '03:11');
INSERT INTO `music` VALUES ('158', '有点意思', 'images/有点意思.jpg', '66', null, 'upload/鹿晗 - 《有点儿意思》（That Good Good）.lrc', '13', 'upload/鹿晗 - 《有点儿意思》（That Good Good）.mp3', '2017-10-05 11:20:15', '03:22');
INSERT INTO `music` VALUES ('159', 'Rap God', 'images/Rap God.jpg', '67', null, 'upload/Eminem - Rap God.lrc', '13', 'upload/Eminem - Rap God.mp3', '2017-10-05 11:20:15', '06:03');
INSERT INTO `music` VALUES ('160', 'Not Afraid', 'images/Not Afraid.jpg', '67', null, 'upload/Eminem - Not Afraid.lrc', '13', 'upload/Eminem - Not Afraid.mp3', '2017-10-05 11:20:15', '04:10');
INSERT INTO `music` VALUES ('161', 'MY TYPE (취향저격)', 'images/MY TYPE.jpg', '68', null, 'upload/iKON (아이콘) - MY TYPE (취향저격).lrc', '13', 'upload/iKON (아이콘) - MY TYPE (취향저격).mp3', '2017-10-05 11:20:15', '03:30');
INSERT INTO `music` VALUES ('162', 'RHYTHM TA (리듬 타)', 'images/RHYTHM TA.jpg', '68', null, 'upload/iKON (아이콘) - RHYTHM TA (리듬 타).lrc', '13', 'upload/iKON (아이콘) - RHYTHM TA (리듬 타).mp3', '2017-10-05 11:20:15', '03:47');
INSERT INTO `music` VALUES ('163', '1도 없어 (一点都没有)', 'images/1도 없어.jpg', '69', null, 'upload/에이핑크 (Apink) - 1도 없어 (一点都没有).lrc', '13', 'upload/에이핑크 (Apink) - 1도 없어 (一点都没有).mp3', '2017-10-05 11:20:15', '03:19');
INSERT INTO `music` VALUES ('164', 'LUV (Korean ver.)', 'images/LUV.jpg', '69', null, 'upload/에이핑크 (Apink) - LUV (Korean ver.).lrc', '13', 'upload/에이핑크 (Apink) - LUV (Korean ver.).mp3', '2017-10-05 11:20:15', '03:58');
INSERT INTO `music` VALUES ('165', 'CHILLAX', 'images/CHILLAX.jpg', '70', null, 'upload/TWICE (트와이스) - CHILLAX.lrc', '13', 'upload/TWICE (트와이스) - CHILLAX.mp3', '2017-10-05 11:20:15', '03:06');
INSERT INTO `music` VALUES ('166', 'STUCK', 'images/STUCK.jpg', '70', null, 'upload/TWICE (트와이스) - STUCK.lrc', '13', 'upload/TWICE (트와이스) - STUCK.mp3', '2017-10-05 11:20:15', '03:35');
INSERT INTO `music` VALUES ('167', '와 (独一无二)', ':/images/와.jpg', '71', null, 'upload/이정현 (李贞贤) - 와 (独一无二).lrc', '13', 'upload/이정현 (李贞贤) - 와 (独一无二).mp3', '2017-10-05 11:20:15', '03:32');
INSERT INTO `music` VALUES ('168', '미쳐 (疯掉)', 'images/미쳐.jpg', '71', null, 'upload/이정현 (李贞贤) - 미쳐 (疯掉).lrc', '13', 'upload/이정현 (李贞贤) - 미쳐 (疯掉).mp3', '2017-10-05 11:20:15', '03:53');
INSERT INTO `music` VALUES ('169', '靠近你的心 ', 'images/靠近你的心 .jpg', '72', null, 'upload/우주소녀 (宇宙少女) - 靠近你的心 (Chinese Ver.).lrc', '13', 'upload/우주소녀 (宇宙少女) - 靠近你的心 (Chinese Ver.).mp3', '2017-10-05 11:20:15', '03:47');
INSERT INTO `music` VALUES ('170', '비밀이야 (是秘密啊)', 'images/비밀이야.jpg', '72', null, 'upload/우주소녀 (宇宙少女) - 비밀이야 (是秘密啊) (Secret) (Korean Version).lrc', '13', 'upload/우주소녀 (宇宙少女) - 비밀이야 (是秘密啊) (Secret) (Korean Version).mp3', '2017-10-05 11:20:15', '03:43');
INSERT INTO `music` VALUES ('171', '정말 (真的)', 'images/정말.jpg', '73', null, 'upload/송중기 (宋仲基) - 정말 (真的).lrc', '5', 'upload/송중기 (宋仲基) - 정말 (真的).mp3', '2017-10-05 11:20:15', '04:22');
INSERT INTO `music` VALUES ('172', 'Always', 'images/Always (2).jpg', '73', null, 'upload/송중기 (宋仲基) - Always (Live).lrc', '5', 'upload/송중기 (宋仲基) - Always (Live).mp3', '2017-10-05 11:20:15', '04:16');
INSERT INTO `music` VALUES ('173', '그 사람 (那个人)', 'images/그 사람.jpg', '74', null, 'upload/황치열 (黄致列) - 그 사람 (那个人) (Live).lrc', '5', 'upload/황치열 (黄致列) - 그 사람 (那个人) (Live).mp3', '2017-10-05 11:20:15', '05:16');
INSERT INTO `music` VALUES ('174', '총 맞은 것처럼 (像中枪一样)', 'images/像中枪一样.jpg', '74', null, 'upload/황치열 (黄致列) - 총 맞은 것처럼 (像中枪一样) (Live).lrc', '5', 'upload/황치열 (黄致列) - 총 맞은 것처럼 (像中枪一样) (Live).mp3', '2017-10-05 11:20:15', '05:01');
INSERT INTO `music` VALUES ('175', 'Butter-Fly', 'images/Butter-Fly.jpg', '75', null, 'upload/和田光司 (わだ こうじ) - Butter-Fly.lrc', '5', 'upload/和田光司 (わだ こうじ) - Butter-Fly.mp3', '2017-02-06 11:17:08', '04:17');
INSERT INTO `music` VALUES ('176', 'With The Will', 'images/With The Will.jpg', '75', null, 'upload/和田光司 (わだ こうじ) - With The Will (充满意志).lrc', '5', 'upload/和田光司 (わだ こうじ) - With The Will (充满意志).mp3', '2017-02-06 11:17:08', '04:07');
INSERT INTO `music` VALUES ('177', 'Time travel', 'images/Time travel.jpg', '76', null, 'upload/岸部眞明 (Masaaki Kishibe) - Time travel.lrc', '5', 'upload/岸部眞明 (Masaaki Kishibe) - Time travel.mp3', '2017-02-06 11:17:08', '04:13');
INSERT INTO `music` VALUES ('178', '奇迹の山', 'images/奇迹の山.jpg', '76', null, 'upload/岸部眞明 (Masaaki Kishibe) - 奇迹の山.lrc', '5', 'upload/岸部眞明 (Masaaki Kishibe) - 奇迹の山.mp3', '2017-02-06 11:17:08', '04:29');
INSERT INTO `music` VALUES ('179', 'ULTRA FLY', 'images/ULTRA FLY.jpg', '77', null, 'upload/宮野真守 (みやのまもる) - ULTRA FLY.lrc', '5', 'upload/宮野真守 (みやのまもる) - ULTRA FLY.mp3', '2017-02-06 11:17:08', '03:58');
INSERT INTO `music` VALUES ('180', 'カノン (卡农)', 'images/卡农.jpg', '77', null, 'upload/宮野真守 (みやのまもる) - カノン (卡农).lrc', '5', 'upload/宮野真守 (みやのまもる) - カノン (卡农).mp3', '2017-02-06 11:17:08', '04:57');
INSERT INTO `music` VALUES ('181', '有点甜', 'images/有点甜.jpg', '78', null, 'upload/汪苏泷 - 有点甜.lrc', '1', 'upload/汪苏泷 - 有点甜.mp3', '2017-08-06 11:19:50', '03:55');
INSERT INTO `music` VALUES ('182', '一笑倾城', 'images/一笑倾城.jpg', '78', null, 'upload/汪苏泷 - 一笑倾城.lrc', '1', 'upload/汪苏泷 - 一笑倾城.mp3', '2017-08-06 11:19:50', '03:51');
INSERT INTO `music` VALUES ('183', '那个男孩', 'images/那个男孩.jpg', '78', null, 'upload/汪苏泷 - 那个男孩.lrc', '1', 'upload/汪苏泷 - 那个男孩.mp3', '2017-08-06 11:19:50', '03:36');
INSERT INTO `music` VALUES ('184', '模特', 'images/模特.jpg', '79', null, 'upload/李荣浩 - 模特.lrc', '1', 'upload/李荣浩 - 模特.mp3', '2017-08-06 11:19:50', '05:06');
INSERT INTO `music` VALUES ('185', '老街', 'images/老街.jpg', '79', null, 'upload/李荣浩 - 李白.lrc', '1', 'upload/李荣浩 - 老街.mp3', '2017-08-06 11:19:50', '05:18');
INSERT INTO `music` VALUES ('186', '李白', 'images/李白.jpg', '79', null, 'upload/李荣浩 - 老街.lrc', '1', 'upload/李荣浩 - 李白.mp3', '2017-08-06 11:19:50', '04:33');
INSERT INTO `music` VALUES ('187', '素颜', 'images/素颜.jpg', '80', null, 'upload/许嵩 - 素颜.lrc', '1', 'upload/许嵩 - 素颜.mp3', '2017-08-06 11:19:50', '04:01');
INSERT INTO `music` VALUES ('188', '九月清晨', 'images/九月清晨.jpg', '80', null, 'upload/许嵩 - 九月清晨.lrc', '1', 'upload/许嵩 - 九月清晨.mp3', '2017-08-06 11:19:50', '03:56');
INSERT INTO `music` VALUES ('189', '怒放的生命', 'images/怒放的生命.jpg', '81', null, 'upload/汪峰 - 怒放的生命.lrc', '1', 'upload/汪峰 - 怒放的生命.mp3', '2017-08-06 11:19:50', '04:35');
INSERT INTO `music` VALUES ('190', '像梦一样自由', 'images/像梦一样自由.jpg', '81', null, 'upload/汪峰 - 像梦一样自由.lrc', '1', 'upload/汪峰 - 像梦一样自由.mp3', '2017-08-06 11:19:50', '03:38');
INSERT INTO `music` VALUES ('191', '说散就散', 'images/说散就散.jpg', '82', null, 'upload/袁娅维 - 说散就散 (Live).lrc', '1', 'upload/袁娅维 - 说散就散 (Live).mp3', '2017-08-06 11:19:50', '04:01');
INSERT INTO `music` VALUES ('192', '别废话', 'images/别废话.jpg', '82', null, 'upload/袁娅维 - 别废话.lrc', '1', 'upload/袁娅维 - 别废话.mp3', '2017-08-06 11:19:50', '02:59');
INSERT INTO `music` VALUES ('193', '凉凉', 'images/凉凉.jpg', '83', null, 'upload/杨宗纬 - 凉凉.lrc', '1', 'upload/杨宗纬 - 凉凉.mp3', '2017-08-06 11:19:50', '05:33');
INSERT INTO `music` VALUES ('194', '红玫瑰', 'images/红玫瑰.jpg', '83', '5', 'upload/张碧晨 - 红玫瑰 (Live).lrc', '1', 'upload/张碧晨 - 红玫瑰 (Live).mp3', '2017-08-06 11:19:50', '04:36');
INSERT INTO `music` VALUES ('195', '你给我听好', 'images/你给我听好.jpg', '83', null, 'upload/张碧晨 - 你给我听好 (Live).lrc', '1', 'upload/张碧晨 - 你给我听好 (Live).mp3', '2018-07-13 11:08:37', '05:21');
INSERT INTO `music` VALUES ('196', '后来', 'images/后来.jpg', '84', null, 'upload/刘若英 - 后来.lrc', '1', 'upload/刘若英 - 后来.mp3', '2017-08-06 11:19:50', '05:41');
INSERT INTO `music` VALUES ('197', '成全', 'images/成全.jpg', '84', null, 'upload/刘若英 - 成全.lrc', '1', 'upload/刘若英 - 成全.mp3', '2017-08-06 11:19:50', '04:36');
INSERT INTO `music` VALUES ('198', '体面', 'images/体面.jpg', '85', null, 'upload/于文文 - 体面.lrc', '1', 'upload/于文文 - 体面.mp3', '2017-08-06 11:19:50', '04:42');
INSERT INTO `music` VALUES ('199', '奉陪', 'images/奉陪.jpg', '85', null, 'upload/于文文 - 奉陪.lrc', '1', 'upload/于文文 - 奉陪.mp3', '2017-08-06 11:19:50', '05:14');
INSERT INTO `music` VALUES ('200', '阴天', 'images/阴天.jpg', '86', null, 'upload/莫文蔚 - 阴天.lrc', '1', 'upload/莫文蔚 - 阴天.mp3', '2017-08-06 11:19:50', '04:02');
INSERT INTO `music` VALUES ('201', '盛夏的果实', 'images/盛夏的果实.jpg', '86', null, 'upload/莫文蔚 - 盛夏的果实.lrc', '1', 'upload/莫文蔚 - 盛夏的果实.mp3', '2017-08-06 11:19:50', '04:11');
INSERT INTO `music` VALUES ('202', '追光者', 'images/追光者.jpg', '87', null, 'upload/岑宁儿 - 追光者.lrc', '1', 'upload/岑宁儿 - 追光者.mp3', '2017-08-06 11:19:50', '03:55');
INSERT INTO `music` VALUES ('203', '刹那的乌托邦', 'images/终于我们.jpg', '87', null, 'upload/岑宁儿 - 剎那的乌托邦.lrc', '1', 'upload/岑宁儿 - 刹那的乌托邦.mp3', '2017-08-06 11:19:50', '05:16');
INSERT INTO `music` VALUES ('204', '中国话', 'images/中国话.jpg', '88', null, 'upload/S.H.E - 中国话 (Live).lrc', '1', 'upload/S.H.E - 中国话 (Live).mp3', '2017-08-06 11:19:50', '03:14');
INSERT INTO `music` VALUES ('205', 'Super Star', 'images/Super Star.jpg', '88', null, 'upload/S.H.E - Super Star (Live).lrc', '1', 'upload/S.H.E - Super Star (Live).mp3', '2017-08-06 11:19:50', '02:09');
INSERT INTO `music` VALUES ('206', '老男孩', 'images/老男孩.jpg', '89', null, 'upload/筷子兄弟 - 老男孩.lrc', '1', 'upload/筷子兄弟 - 老男孩.mp3', '2017-08-06 11:19:50', '05:00');
INSERT INTO `music` VALUES ('207', '父亲', 'images/父亲.jpg', '89', null, 'upload/筷子兄弟 - 父亲.lrc', '1', 'upload/筷子兄弟 - 父亲.mp3', '2017-08-06 11:19:50', '05:00');
INSERT INTO `music` VALUES ('208', 'DAY BY DAY', 'images/DAY BY DAY.jpg', '90', null, 'upload/T-ara (티아라) - DAY BY DAY.lrc', '1', 'upload/T-ara (티아라) - DAY BY DAY.mp3', '2017-11-22 11:19:28', '03:29');
INSERT INTO `music` VALUES ('209', 'SEXY LOVE', 'images/SEXY LOVE.jpg', '90', null, 'upload/T-ara (티아라) - SEXY LOVE.lrc', '6', 'upload/T-ara (티아라) - SEXY LOVE.mp3', '2017-11-22 11:19:28', '03:47');
INSERT INTO `music` VALUES ('210', '負けないで (不要认输)', 'images/不要认输.jpg', '91', null, 'upload/ZARD (ザード) - 負けないで (不要认输).lrc', '6', 'upload/ZARD (ザード) - 負けないで (不要认输).mp3', '2017-11-22 11:19:28', '05:46');
INSERT INTO `music` VALUES ('211', 'My Friend', 'images/My Friend.jpg', '91', null, 'upload/ZARD (ザード) - My Friend.lrc', '6', 'upload/ZARD (ザード) - My Friend.mp3', '2017-11-22 11:19:28', '04:22');
INSERT INTO `music` VALUES ('212', 'Treasure', 'images/Treasure.jpg', '93', null, 'upload/Bruno Mars - Treasure.lrc', '6', 'upload/Bruno Mars - Treasure.mp3', '2017-11-22 11:19:28', '02:58');
INSERT INTO `music` VALUES ('213', 'Marry You', 'images/Marry You.jpg', '93', null, 'upload/Bruno Mars - Marry You.lrc', '6', 'upload/Bruno Mars - Marry You.mp3', '2017-11-22 11:19:28', '03:49');
INSERT INTO `music` VALUES ('214', 'I\'m Not Yours', 'images/I\'m Not Yours.jpg', '118', null, 'upload/蔡依林 - I\'m Not Yours.lrc', '6', 'upload/蔡依林 - I\'m Not Yours.mp3', '2017-11-22 11:19:28', '03:41');
INSERT INTO `music` VALUES ('215', 'Revolution', 'images/Revolution.jpg', '92', null, 'upload/Crystal Kay - Revolution.lrc', '6', 'upload/Crystal Kay - Revolution.mp3', '2017-11-22 11:19:28', '04:41');
INSERT INTO `music` VALUES ('216', '歌剧2', 'images/歌剧2.jpg', '94', null, 'upload/Vitas - Opera 2 (歌剧 2).lrc', '6', 'upload/Vitas - Opera 2 (歌剧 2).mp3', '2017-11-22 11:19:28', '03:14');
INSERT INTO `music` VALUES ('217', 'Звезда', 'images/Звезда.jpg', '94', null, 'upload/Vitas - Звезда.lrc', '6', 'upload/Vitas - Звезда.mp3', '2017-11-22 11:19:28', '03:32');
INSERT INTO `music` VALUES ('218', 'Waiting For Love', 'images/Waiting For Love.jpg', '95', null, 'upload/Avicii - Waiting For Love.lrc', '4', 'upload/Avicii - Waiting For Love.mp3', '2017-11-22 11:19:28', '04:34');
INSERT INTO `music` VALUES ('219', 'The Night', 'images/The Night.jpg', '95', null, 'upload/Avicii - The Nights.lrc', '4', 'upload/Avicii - The Nights.mp3', '2017-11-22 11:19:28', '02:54');
INSERT INTO `music` VALUES ('220', 'Matsuri', 'images/Matsuri.jpg', '96', null, 'upload/喜多郎 (Kitaro) - Matsuri.lrc', '4', 'upload/喜多郎 (Kitaro) - Matsuri.mp3', '2017-02-06 11:17:08', '08:59');
INSERT INTO `music` VALUES ('221', 'Heaven And Earth', 'images/Heaven And Earth.jpg', '96', null, 'upload/喜多郎 (Kitaro) - Heaven And Earth (Land Theme).lrc', '4', 'upload/喜多郎 (Kitaro) - Heaven And Earth (Land Theme).mp3', '2017-02-06 11:17:08', '07:38');
INSERT INTO `music` VALUES ('222', 'なごり雪 (残雪)', 'images/残雪.jpg', '97', null, 'upload/徳永英明 (とくなが ひであき) - なごり雪 (残雪).lrc', '4', 'upload/徳永英明 (とくなが ひであき) - なごり雪 (残雪).mp3', '2017-02-06 11:17:08', '04:53');
INSERT INTO `music` VALUES ('223', ' 永遠の果てに', 'images/永远.jpg', '97', null, 'upload/徳永英明 (とくなが ひであき) - 永遠の果てに.lrc', '4', 'upload/徳永英明 (とくなが ひであき) - 永遠の果てに.mp3', '2017-02-06 11:17:08', '05:27');
INSERT INTO `music` VALUES ('224', 'Solo', 'images/Solo.jpg', '98', null, 'upload/Clean Bandit - Solo.lrc', '4', 'upload/Clean Bandit - Solo.mp3', '2017-11-22 11:19:28', '03:42');
INSERT INTO `music` VALUES ('225', 'Rockabye', 'images/Rockabye.jpg', '98', null, 'upload/Clean Bandit - Rockabye.lrc', '4', 'upload/Clean Bandit - Rockabye.mp3', '2017-11-22 11:19:28', '04:11');
INSERT INTO `music` VALUES ('226', 'Why', 'images/Why.jpg', '99', null, 'upload/The Beatles - Why.lrc', '4', 'upload/The Beatles - Why.mp3', '2017-11-22 11:19:28', '02:57');
INSERT INTO `music` VALUES ('227', 'Money', 'images/Money.jpg', '99', null, 'upload/The Beatles - Money.lrc', '4', 'upload/The Beatles - Money.mp3', '2017-11-22 11:19:28', '02:45');
INSERT INTO `music` VALUES ('228', 'Price Tag', 'images/Price Tag.jpg', '100', null, 'upload/Jessie J - Price Tag.lrc', '4', 'upload/Jessie J - Price Tag.mp3', '2017-12-19 11:19:10', '03:42');
INSERT INTO `music` VALUES ('229', 'Domino', 'images/Domino.jpg', '100', null, 'upload/Jessie J - Domino.lrc', '4', 'upload/Jessie J - Domino.mp3', '2017-12-19 11:19:10', '03:51');
INSERT INTO `music` VALUES ('230', 'A Go', 'images/A Go.jpg', '101', null, 'upload/세훈 (世勋) - A Go (去吧) (Live At EXO PLANET #4 - The EℓyXiOn 2017_11_24).lrc', '6', 'upload/세훈 (世勋) - A Go (去吧) (Live At EXO PLANET #4 - The EℓyXiOn 2017_11_24).mp3', '2017-12-19 11:19:10', '02:04');
INSERT INTO `music` VALUES ('231', 'Beat Maker', 'images/Beat Maker.jpg', '101', null, 'upload/세훈 (世勋) - Beat Maker (Live).lrc', '6', 'upload/세훈 (世勋) - Beat Maker (Live).mp3', '2017-12-19 11:19:10', '01:32');
INSERT INTO `music` VALUES ('232', 'Letter', 'images/Letter.jpg', '102', null, 'upload/정용화 (郑容和) - Letter.lrc', '6', 'upload/정용화 (郑容和) - Letter.mp3', '2017-12-19 11:19:10', '03:28');
INSERT INTO `music` VALUES ('233', 'Can\'t Stop', 'images/Can\'t Stop.jpg', '102', null, 'upload/정용화 (郑容和) - Can\'t Stop (Live).lrc', '6', 'upload/정용화 (郑容和) - Can\'t Stop (Live).mp3', '2017-12-19 11:19:10', '05:07');
INSERT INTO `music` VALUES ('234', 'Good Bye', 'images/Good Bye.jpg', '103', null, 'upload/장근석 (张根硕) - Good Bye.lrc', '6', 'upload/장근석 (张根硕) - Good Bye.mp3', '2017-12-19 11:19:10', '04:18');
INSERT INTO `music` VALUES ('235', '말도없이 (默默无语)', 'images/默默无语.jpg', '103', null, 'upload/장근석 (张根硕) - 말도없이 (默默无语).lrc', '6', 'upload/장근석 (张根硕) - 말도없이 (默默无语).mp3', '2017-12-19 11:19:10', '04:03');
INSERT INTO `music` VALUES ('236', 'Beautiful', 'images/Beautiful.jpg', '104', null, 'upload/Sarah Brightman - Beautiful.lrc', '6', 'upload/Sarah Brightman - Beautiful.mp3', '2017-12-19 11:19:10', '04:35');
INSERT INTO `music` VALUES ('237', 'Memory', 'images/Memory (2).jpg', '104', null, 'upload/Sarah Brightman - Memory.lrc', '6', 'upload/Sarah Brightman - Memory.mp3', '2017-12-19 11:19:10', '03:56');
INSERT INTO `music` VALUES ('238', 'Amazing Grace', 'images/Amazing Grace.jpg', '105', null, 'upload/윤아 (允儿) - Amazing Grace.lrc', '6', 'upload/윤아 (允儿) - Amazing Grace.mp3', '2017-12-19 11:19:10', '02:13');
INSERT INTO `music` VALUES ('239', '바람이 불면 (如果你也想起我)', 'images/如果你也想起我.jpg', '105', null, 'upload/如果你也想起我.lrc', '6', 'upload/如果你也想起我.mp3', '2017-12-19 11:19:10', '03:46');
INSERT INTO `music` VALUES ('240', '그여자 (那个女人)', 'images/那个女人.jpg', '106', null, 'upload/백지영 (白智英) - 그여자 (那个女人) (Korean Ver.).lrc', '6', 'upload/백지영 (白智英) - 그여자 (那个女人) (Korean Ver.).mp3', '2017-12-19 11:19:10', '04:34');
INSERT INTO `music` VALUES ('241', '한참 지나서 (过了很久)', 'images/过了很久.jpg', '106', null, 'upload/백지영 (白智英) - 한참 지나서 (过了很久).lrc', '6', 'upload/백지영 (白智英) - 한참 지나서 (过了很久).mp3', '2017-12-19 11:19:10', '03:20');
INSERT INTO `music` VALUES ('242', 'Lovely Day', 'images/Lovely Day.jpg', '107', null, 'upload/박신혜 (朴信惠) - Lovely Day.lrc', '6', 'upload/박신혜 (朴信惠) - Lovely Day.mp3', '2017-12-19 11:19:10', '03:20');
INSERT INTO `music` VALUES ('243', 'Story (故事)', 'images/故事.jpg', '107', null, 'upload/박신혜 (朴信惠) - Story (故事).lrc', '6', 'upload/박신혜 (朴信惠) - Story (故事).mp3', '2017-12-19 11:19:10', '04:37');
INSERT INTO `music` VALUES ('244', '改变自己', 'images/改变自己.jpg', '108', null, 'upload/王力宏 - 改变自己.lrc', '6', 'upload/王力宏 - 改变自己.mp3', '2018-03-15 11:18:15', '03:14');
INSERT INTO `music` VALUES ('245', '唯一', 'images/唯一.jpg', '108', null, 'upload/王力宏 - 唯一 (国语).lrc', '5', 'upload/王力宏 - 唯一 (国语).mp3', '2018-03-15 11:18:15', '04:21');
INSERT INTO `music` VALUES ('246', '王妃', 'images/王妃.jpg', '109', null, 'upload/萧敬腾 - 王妃.lrc', '5', 'upload/萧敬腾 - 王妃.mp3', '2018-03-15 11:18:15', '03:41');
INSERT INTO `music` VALUES ('247', '怎么说我不爱你', 'images/怎么说我不爱你.jpg', '109', null, 'upload/萧敬腾 - 怎么说我不爱你.lrc', '5', 'upload/萧敬腾 - 怎么说我不爱你.mp3', '2018-03-15 11:18:15', '04:35');
INSERT INTO `music` VALUES ('248', '误会', 'images/误会.jpg', '110', null, 'upload/黄子韬 - 误会（Misunderstand）.lrc', '5', 'upload/黄子韬 - 误会（Misunderstand）.mp3', '2018-03-15 11:18:15', '03:26');
INSERT INTO `music` VALUES ('249', 'Beggar', 'images/Beggar.jpg', '110', null, 'upload/黄子韬 - Beggar.lrc', '5', 'upload/黄子韬 - Beggar.mp3', '2018-03-15 11:18:15', '03:28');
INSERT INTO `music` VALUES ('250', '想你', 'images/想你.jpg', '111', null, 'upload/吴亦凡 - 想你.lrc', '5', 'upload/吴亦凡 - 想你.mp3', '2018-07-13 11:10:43', '04:04');
INSERT INTO `music` VALUES ('251', 'Bad Girl', 'images/Bad Girl.jpg', '111', null, 'upload/吴亦凡 - Bad Girl.lrc', '5', 'upload/吴亦凡 - Bad Girl.mp3', '2018-03-15 11:18:15', '03:21');
INSERT INTO `music` VALUES ('252', '南方姑娘', 'images/南方姑娘.jpg', '112', null, 'upload/赵雷 - 南方姑娘.lrc', '5', 'upload/赵雷 - 南方姑娘.mp3', '2018-03-15 11:18:15', '05:32');
INSERT INTO `music` VALUES ('253', '成都', 'images/成都.jpg', '112', null, 'upload/赵雷 - 成都.lrc', '5', 'upload/赵雷 - 成都.mp3', '2018-03-15 11:18:15', '05:28');
INSERT INTO `music` VALUES ('254', 'Officially Missing You', 'images/张艺兴 (2).jpg', '113', null, 'upload/吴亦凡 - Officially Missing You (Radio Ver.).lrc', '5', 'upload/张艺兴、吴亦凡、灿烈、D.O. - Officially Missing You.mp3', '2018-03-15 11:18:15', '02:28');
INSERT INTO `music` VALUES ('255', 'Call You Mine (Live)', 'images/张艺兴 (3).jpg', '113', null, 'upload/', '5', 'upload/张艺兴、吴亦凡 - Call You Mine (Live).mp3', '2018-03-15 11:18:15', '01:08');
INSERT INTO `music` VALUES ('256', '自己的舞台', 'images/张艺兴 (4).jpg', '113', null, 'upload/张艺兴 - 自己的舞台.lrc', '5', 'upload/张艺兴 - 自己的舞台.mp3', '2018-03-15 11:18:15', '03:32');
INSERT INTO `music` VALUES ('257', '一个人', 'images/张艺兴 (5).jpg', '113', null, 'upload/张艺兴 - 一个人.lrc', '5', 'upload/张艺兴 - 一个人.mp3', '2018-03-15 11:18:15', '03:51');
INSERT INTO `music` VALUES ('258', '祈愿', 'images/张艺兴 (6).jpg', '113', null, 'upload/张艺兴 - 祈愿.lrc', '8', 'upload/张艺兴 - 祈愿.mp3', '2018-03-15 11:18:15', '03:29');
INSERT INTO `music` VALUES ('259', '独角戏', 'images/张艺兴 (7).jpg', '113', null, 'upload/张艺兴 - 独角戏 (Monodrama).lrc', '8', 'upload/张艺兴 - 独角戏 (Monodrama).mp3', '2018-03-15 11:18:15', '04:05');
INSERT INTO `music` VALUES ('260', 'what U need', 'images/张艺兴 (8).jpg', '113', null, 'upload/张艺兴 - what U need_.lrc', '8', 'upload/张艺兴 - what U need_.mp3', '2018-03-15 11:18:15', '03:55');
INSERT INTO `music` VALUES ('261', 'My Girl', 'images/张艺兴 (9).jpg', '113', null, 'upload/张艺兴 - LOSE CONTROL.lrc', '8', 'upload/张艺兴 - My Girl.mp3', '2018-03-15 11:18:15', '02:35');
INSERT INTO `music` VALUES ('262', 'I\'m coming (Live)', 'images/张艺兴 (10).jpg', '113', null, 'upload/', '8', 'upload/张艺兴 - I\'m coming (Live).mp3', '2018-03-15 11:18:15', '01:10');
INSERT INTO `music` VALUES ('263', 'LOSE CONTROL', 'images/张艺兴 (11).jpg', '113', null, 'upload/张艺兴 - LOSE CONTROL.lrc', '8', 'upload/张艺兴 - LOSE CONTROL.mp3', '2018-03-15 11:18:15', '03:29');
INSERT INTO `music` VALUES ('264', '我选择喜欢你', 'images/我选择喜欢你.jpg', '114', null, 'upload/周笔畅 - 我选择喜欢你.lrc', '8', 'upload/周笔畅 - 我选择喜欢你.mp3', '2018-03-15 11:18:15', '03:53');
INSERT INTO `music` VALUES ('265', '笔记', 'images/笔记.jpg', '114', null, 'upload/周笔畅 - 笔记 (Live).lrc', '8', 'upload/周笔畅 - 笔记 (Live).mp3', '2018-03-15 11:18:15', '03:25');
INSERT INTO `music` VALUES ('266', '错的人', 'images/错的人.jpg', '115', null, 'upload/萧亚轩 - 错的人.lrc', '8', 'upload/萧亚轩 - 错的人.mp3', '2018-03-15 11:18:15', '05:11');
INSERT INTO `music` VALUES ('267', '最熟悉的陌生人', 'images/最熟悉的陌生人.jpg', '115', null, 'upload/萧亚轩 - 最熟悉的陌生人.lrc', '8', 'upload/萧亚轩 - 最熟悉的陌生人.mp3', '2018-03-15 11:18:15', '04:22');
INSERT INTO `music` VALUES ('268', '小幸运', 'images/小幸运.jpg', '116', null, 'upload/田馥甄 - 小幸运 (Live).lrc', '8', 'upload/田馥甄 - 小幸运 (Live).mp3', '2018-03-15 11:18:15', '04:10');
INSERT INTO `music` VALUES ('269', '魔鬼中的天使', 'images/魔鬼中的天使.jpg', '116', null, 'upload/田馥甄 - 魔鬼中的天使 (Live).lrc', '9', 'upload/田馥甄 - 魔鬼中的天使 (Live).mp3', '2018-03-15 11:18:15', '04:11');
INSERT INTO `music` VALUES ('270', '征服', 'images/征服.jpg', '117', null, 'upload/那英 - 征服.lrc', '9', 'upload/那英 - 征服.mp3', '2018-01-23 11:18:15', '04:59');
INSERT INTO `music` VALUES ('271', '默', 'images/默.jpg', '117', null, 'upload/那英 - 默.lrc', '9', 'D:\\GuideMusic\\uploadupload\\那英 - 默.mp3', '2018-01-23 11:18:15', '05:25');
INSERT INTO `music` VALUES ('272', '说爱你', 'images/说爱你.jpg', '118', null, 'upload/蔡依林 - 说爱你.lrc', '9', 'upload/蔡依林 - 说爱你.mp3', '2018-01-23 11:18:15', '03:46');
INSERT INTO `music` VALUES ('273', '布拉格广场', 'images/布拉格广场.jpg', '118', null, 'upload/蔡依林 - 布拉格广场.lrc', '9', 'upload/蔡依林 - 布拉格广场.mp3', '2018-01-23 11:18:15', '04:54');
INSERT INTO `music` VALUES ('274', '下个，路口，见', 'images/下个，路口，见.jpg', '119', null, 'upload/李宇春 - 下个，路口，见 (Live).lrc', '9', 'upload/李宇春 - 下个，路口，见 (Live).mp3', '2018-01-23 11:18:15', '03:35');
INSERT INTO `music` VALUES ('275', '野蛮生长', 'images/野蛮生长.jpg', '119', null, 'upload/李宇春 - 野蛮生长.lrc', '9', 'upload/李宇春 - 野蛮生长.mp3', '2018-01-23 11:18:15', '03:35');
INSERT INTO `music` VALUES ('276', '至少还有你', 'images/至少还有你.jpg', '120', null, 'upload/林忆莲 - 至少还有你.lrc', '9', 'upload/林忆莲 - 至少还有你.mp3', '2018-01-23 11:18:15', '04:34');
INSERT INTO `music` VALUES ('277', '当爱已成往事', 'images/当爱已成往事.jpg', '120', null, 'upload/林忆莲 - 当爱已成往事.lrc', '9', 'upload/林忆莲 - 当爱已成往事.mp3', '2018-01-23 11:18:15', '04:39');
INSERT INTO `music` VALUES ('278', '越长大越孤单', 'images/越长大越孤单.jpg', '121', null, 'upload/牛奶咖啡 - 越长大越孤单.lrc', '9', 'upload/牛奶咖啡 - 越长大越孤单.mp3', '2018-01-23 11:18:15', '04:28');
INSERT INTO `music` VALUES ('279', '忘了牵手', 'images/忘了牵手.jpg', '121', null, 'upload/牛奶咖啡 - 忘了牵手.lrc', '9', 'upload/牛奶咖啡 - 忘了牵手.mp3', '2018-01-23 11:18:15', '05:17');
INSERT INTO `music` VALUES ('280', '下一站天后', 'images/下一站天后.jpg', '122', null, 'upload/Twins - 下一站天后 (合唱版).lrc', '9', 'upload/Twins - 下一站天后 (合唱版).mp3', '2018-01-23 11:18:15', '03:30');
INSERT INTO `music` VALUES ('281', '莫斯科没有眼泪', 'images/莫斯科没有眼泪.jpg', '122', null, 'upload/Twins - 莫斯科没有眼泪.lrc', '9', 'upload/Twins - 莫斯科没有眼泪.mp3', '2018-01-23 11:18:15', '03:31');
INSERT INTO `music` VALUES ('282', '虫儿飞', 'images/虫儿飞.jpg', '123', null, 'upload/缝纫机乐队 - 虫儿飞.lrc', '9', 'upload/缝纫机乐队 - 虫儿飞.mp3', '2018-01-23 11:18:15', '01:31');
INSERT INTO `music` VALUES ('283', '不再犹豫', 'images/不再犹豫.jpg', '123', null, 'upload/缝纫机乐队 - 不再犹豫 (REMIX版).lrc', '9', 'upload/缝纫机乐队 - 不再犹豫 (REMIX版).mp3', '2018-01-23 11:18:15', '04:13');
INSERT INTO `music` VALUES ('284', '森林法则', 'images/森林法则.jpg', '124', null, 'upload/SNH48 - 森林法则.lrc', '9', 'upload/SNH48 - 森林法则.mp3', '2018-01-23 11:18:15', '03:17');
INSERT INTO `music` VALUES ('285', '青春的约定', 'images/青春的约定.jpg', '124', null, 'upload/SNH48 - 青春的约定.lrc', '9', 'upload/SNH48 - 青春的约定.mp3', '2018-01-23 11:18:15', '04:59');
INSERT INTO `music` VALUES ('286', '棉花糖', 'images/棉花糖.jpg', '125', null, 'upload/至上励合 - 棉花糖 (DJ版).lrc', '9', 'upload/至上励合 - 棉花糖 (DJ版).mp3', '2018-01-23 11:18:15', '07:08');
INSERT INTO `music` VALUES ('288', '4654654', 'images/丑八怪.jpg', '126', '46', 'upload/薛之谦 - 丑八怪.lrc', '1', '', '2018-07-17 19:45:02', null);

-- ----------------------------
-- Table structure for musictype
-- ----------------------------
DROP TABLE IF EXISTS `musictype`;
CREATE TABLE `musictype` (
  `musicTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `musicTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`musicTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musictype
-- ----------------------------
INSERT INTO `musictype` VALUES ('1', '流行');
INSERT INTO `musictype` VALUES ('2', '嘻哈');
INSERT INTO `musictype` VALUES ('3', '摇滚');
INSERT INTO `musictype` VALUES ('4', '电子');
INSERT INTO `musictype` VALUES ('5', '民谣');
INSERT INTO `musictype` VALUES ('6', 'R&B');
INSERT INTO `musictype` VALUES ('7', '民歌');
INSERT INTO `musictype` VALUES ('8', '轻音乐');
INSERT INTO `musictype` VALUES ('9', '爵士');
INSERT INTO `musictype` VALUES ('10', '古典');
INSERT INTO `musictype` VALUES ('11', '乡村');
INSERT INTO `musictype` VALUES ('12', '蓝调');
INSERT INTO `musictype` VALUES ('13', '古风');

-- ----------------------------
-- Table structure for recommended
-- ----------------------------
DROP TABLE IF EXISTS `recommended`;
CREATE TABLE `recommended` (
  `recommendedId` int(11) NOT NULL AUTO_INCREMENT,
  `recommendedName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photoURL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`recommendedId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of recommended
-- ----------------------------
INSERT INTO `recommended` VALUES ('5', '中国好声音', 'upload/1457311486770.jpg');

-- ----------------------------
-- Table structure for recommendedlist
-- ----------------------------
DROP TABLE IF EXISTS `recommendedlist`;
CREATE TABLE `recommendedlist` (
  `reListId` int(11) NOT NULL AUTO_INCREMENT,
  `musicId` int(11) DEFAULT NULL,
  `recommendedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`reListId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of recommendedlist
-- ----------------------------
INSERT INTO `recommendedlist` VALUES ('6', '3', '5');
INSERT INTO `recommendedlist` VALUES ('7', '4', '5');
INSERT INTO `recommendedlist` VALUES ('8', '5', '5');
INSERT INTO `recommendedlist` VALUES ('9', '6', '5');
INSERT INTO `recommendedlist` VALUES ('10', '7', '5');
INSERT INTO `recommendedlist` VALUES ('11', '8', '5');

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singerId` int(11) NOT NULL AUTO_INCREMENT,
  `singerName` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `singerPhotoURL` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `singerHot` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`singerId`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1', '薛之谦', 'images/薛之谦.jpg', '100000', '1', ' 内地');
INSERT INTO `singer` VALUES ('2', '陈粒', 'images/陈粒.jpg', '3', '2', ' 内地');
INSERT INTO `singer` VALUES ('3', '陈奕迅', 'images/陈奕迅.jpg', '5', '1', ' 港台');
INSERT INTO `singer` VALUES ('4', '林俊杰', 'images/林俊杰.jpg', '8', '1', '  港台');
INSERT INTO `singer` VALUES ('5', 'Alan Walker', 'images/Alan Walker.jpg', '9', '10', ' 欧美');
INSERT INTO `singer` VALUES ('6', 'Coldplay', 'images/Coldplay.jpg', '60', '12', ' 欧美');
INSERT INTO `singer` VALUES ('7', 'Ed Sheeran', 'images/Ed Sheeran.jpg', '35', '10', ' 欧美');
INSERT INTO `singer` VALUES ('8', 'J.Fla', 'images/J.Fla.jpg', '100000', '5', '韩国');
INSERT INTO `singer` VALUES ('9', 'July', 'images/July.jpg', '13', '4', '韩国');
INSERT INTO `singer` VALUES ('10', 'EXO', 'images/EXO.jpg', '4', '6', '韩国');
INSERT INTO `singer` VALUES ('11', 'Aimer', 'images/Aimer.jpg', '1', '8', ' 日本');
INSERT INTO `singer` VALUES ('12', 'DAISHI DANCE', 'images/DAISHI DANCE.jpg', '1', '7', '日本');
INSERT INTO `singer` VALUES ('13', 'Goose house', 'images/Goose house.jpg', '1', '9', '日本');
INSERT INTO `singer` VALUES ('14', '中島みゆき(中岛美雪)', 'images/中島みゆき(中岛美雪).jpg', '1', '8', '日本');
INSERT INTO `singer` VALUES ('15', 'Madilyn Bailey', 'images/Madilyn Bailey.jpg', '1', '11', '  欧美');
INSERT INTO `singer` VALUES ('16', '好妹妹', 'images/好妹妹.jpg', '1', '3', ' 内地');
INSERT INTO `singer` VALUES ('17', '庄心妍', 'images/庄心妍.jpg', '1', '2', ' 内地');
INSERT INTO `singer` VALUES ('18', '张韶涵', 'images/张韶涵.jpg', '1', '2', ' 港台');
INSERT INTO `singer` VALUES ('19', 'G.E.M.邓紫棋', 'images/G.E.M.邓紫棋.jpg', '1', '2', ' 港台');
INSERT INTO `singer` VALUES ('20', '久石譲', 'images/久石譲.jpg', '1', '7', '日本');
INSERT INTO `singer` VALUES ('21', '米津玄師', 'images/米津玄師.jpg', '1', '7', '日本');
INSERT INTO `singer` VALUES ('22', 'G-DRAGON', 'images/G-DRAGON.jpg', '1', '4', '韩国');
INSERT INTO `singer` VALUES ('23', '伯贤', 'images/伯贤.jpg', '1', '4', '韩国');
INSERT INTO `singer` VALUES ('24', 'Taylor Swift', 'images/Taylor Swift.jpg', '1', '11', '  欧美');
INSERT INTO `singer` VALUES ('25', '初音ミク', 'images/初音ミク.jpg', '1', '8', '日本');
INSERT INTO `singer` VALUES ('26', 'MANISH', 'images/MANISH.jpg', '1', '9', '日本');
INSERT INTO `singer` VALUES ('27', 'Maroon 5', 'images/Maroon 5.jpg', '1', '12', ' 欧美');
INSERT INTO `singer` VALUES ('28', 'Westlife', 'images/Westlife.jpg', '1', '12', ' 欧美');
INSERT INTO `singer` VALUES ('29', 'RADWIMPS', 'images/RADWIMPS.jpg', '1', '9', '日本');
INSERT INTO `singer` VALUES ('30', 'BIGBANG', 'images/BIGBANG.jpg', '1', '6', '韩国');
INSERT INTO `singer` VALUES ('31', '少女时代', 'images/少女时代.jpg', '1', '6', '韩国');
INSERT INTO `singer` VALUES ('32', 'TFBOYS', 'images/TFBOYS.jpg', '1', '3', '内地');
INSERT INTO `singer` VALUES ('33', '张杰', 'images/张杰.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('34', '周杰伦', 'images/周杰伦.jpg', null, '1', ' 港台');
INSERT INTO `singer` VALUES ('35', '毛不易', 'images/毛不易.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('36', '梁静茹', 'images/梁静茹.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('37', '张靓颖', 'images/张靓颖.jpg', null, '2', '内地');
INSERT INTO `singer` VALUES ('38', '澤野弘之', 'images/澤野弘之.jpg', null, '7', '日本');
INSERT INTO `singer` VALUES ('39', 'Lady Gaga', 'images/Lady Gaga.jpg', null, '11', ' 欧美');
INSERT INTO `singer` VALUES ('40', 'Avril Lavigne', 'images/Avril Lavigne.jpg', null, '11', ' 欧美');
INSERT INTO `singer` VALUES ('41', 'Backstreet Boys', 'images/Backstreet Boys.jpg', null, '12', ' 欧美');
INSERT INTO `singer` VALUES ('42', 'Justin Bieber', 'images/Justin Bieber.jpg', null, '10', ' 欧美');
INSERT INTO `singer` VALUES ('43', 'Michael Jackson', 'images/Michael Jackson.jpg', null, '10', ' 欧美');
INSERT INTO `singer` VALUES ('44', '五月天', 'images/五月天.jpg', null, '3', '港台');
INSERT INTO `singer` VALUES ('45', 'BTS（防弹少年团）', 'images/BTS（防弹少年团）.jpg', null, '6', '韩国');
INSERT INTO `singer` VALUES ('46', '蔡妍', 'images/蔡妍.jpg', null, '5', '韩国');
INSERT INTO `singer` VALUES ('47', '灿烈', 'images/灿烈.jpg', null, '4', '韩国');
INSERT INTO `singer` VALUES ('48', '浜崎あゆみ', 'images/浜崎あゆみ.jpg', null, '8', '日本');
INSERT INTO `singer` VALUES ('49', '凛として時雨', 'images/凛として時雨.jpg', null, '9', '日本');
INSERT INTO `singer` VALUES ('50', '泫雅', 'images/泫雅.jpg', null, '5', '韩国');
INSERT INTO `singer` VALUES ('51', '金泰宇', 'images/金泰宇.jpg', null, '4', '韩国');
INSERT INTO `singer` VALUES ('52', '张惠妹', 'images/张惠妹.jpg', null, '2', ' 港台');
INSERT INTO `singer` VALUES ('53', '王菲', 'images/王菲.jpg', null, '2', ' 内地');
INSERT INTO `singer` VALUES ('54', '张学友', 'images/张学友.jpg', null, '1', '港台');
INSERT INTO `singer` VALUES ('55', '林宥嘉', 'images/林宥嘉.jpg', null, '1', '港台');
INSERT INTO `singer` VALUES ('56', '华晨宇', 'images/华晨宇.jpg', null, '1', ' 内地');
INSERT INTO `singer` VALUES ('57', '高橋優', 'images/高橋優.jpg', null, '7', '日本');
INSERT INTO `singer` VALUES ('58', '倉木麻衣', 'images/倉木麻衣.jpg', null, '8', '日本');
INSERT INTO `singer` VALUES ('59', '小野丽莎', 'images/小野丽莎.jpg', null, '8', '日本');
INSERT INTO `singer` VALUES ('60', 'GARNiDELiA', 'images/GARNiDELiA.jpg', null, '9', '日本');
INSERT INTO `singer` VALUES ('61', '宇多田ヒカル', 'images/宇多田ヒカル.jpg', null, '8', '日本');
INSERT INTO `singer` VALUES ('62', 'Olly Murs', 'images/Olly Murs.jpg', null, '10', ' 欧美');
INSERT INTO `singer` VALUES ('63', 'Selena Gomez', 'images/Selena Gomez.jpg', null, '11', ' 欧美');
INSERT INTO `singer` VALUES ('64', 'The Chainsmokers', 'images/The Chainsmokers.jpg', null, '12', ' 欧美');
INSERT INTO `singer` VALUES ('65', 'Troye Sivan', 'images/Troye Sivan.jpg', null, '10', ' 欧美');
INSERT INTO `singer` VALUES ('66', '鹿晗', 'images/鹿晗.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('67', 'Eminem', 'images/Eminem.jpg', null, '10', ' 欧美');
INSERT INTO `singer` VALUES ('68', 'iKON', 'images/iKON.jpg', null, '6', '韩国');
INSERT INTO `singer` VALUES ('69', 'Apink', 'images/Apink.jpg', null, '6', '韩国');
INSERT INTO `singer` VALUES ('70', 'TWICE', 'images/TWICE.jpg', null, '6', '韩国');
INSERT INTO `singer` VALUES ('71', '李贞贤', 'images/李贞贤.jpg', null, '5', '韩国');
INSERT INTO `singer` VALUES ('72', '程潇', 'images/程潇.jpg', null, '5', '韩国');
INSERT INTO `singer` VALUES ('73', '宋仲基', 'images/宋仲基.jpg', null, '4', '韩国');
INSERT INTO `singer` VALUES ('74', '黄致列', 'images/黄致列.jpg', null, '4', '韩国');
INSERT INTO `singer` VALUES ('75', '和田光司', 'images/和田光司.jpg', null, '7', '日本');
INSERT INTO `singer` VALUES ('76', '岸部眞明', 'images/岸部眞明.jpg', null, '7', '日本');
INSERT INTO `singer` VALUES ('77', '宮野真守', 'images/宮野真守.jpg', null, '7', '日本');
INSERT INTO `singer` VALUES ('78', '汪苏泷', 'images/汪苏泷.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('79', '李荣浩', 'images/李荣浩.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('80', '许嵩', 'images/许嵩.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('81', '汪峰', 'images/汪峰.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('82', '袁娅维', 'images/袁娅维.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('83', '张碧晨', 'images/张碧晨.jpg', null, '2', '内地');
INSERT INTO `singer` VALUES ('84', '刘若英', 'images/刘若英.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('85', '于文文', 'images/于文文.jpg', null, '2', '内地');
INSERT INTO `singer` VALUES ('86', '莫文蔚', 'images/莫文蔚.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('87', '岑宁儿', 'images/岑宁儿.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('88', 'S.H.E', 'images/S.H.E.jpg', null, '3', '港台');
INSERT INTO `singer` VALUES ('89', '筷子兄弟', 'images/筷子兄弟.jpg', null, '3', '内地');
INSERT INTO `singer` VALUES ('90', 'T-ara', 'images/T-ara.jpg', null, '6', '韩国');
INSERT INTO `singer` VALUES ('91', 'ZARD', 'images/ZARD.jpg', null, '8', '日本');
INSERT INTO `singer` VALUES ('92', '安室奈美恵', 'images/安室奈美恵.jpg', null, '8', '日本');
INSERT INTO `singer` VALUES ('93', 'Bruno Mars', 'images/Bruno Mars.jpg', null, '10', ' 欧美');
INSERT INTO `singer` VALUES ('94', 'Vitas', 'images/Vitas.jpg', null, '10', ' 欧美');
INSERT INTO `singer` VALUES ('95', 'Avicii', 'images/Avicii.jpg', null, '10', ' 欧美');
INSERT INTO `singer` VALUES ('96', '喜多郎', 'images/喜多郎.jpg', null, '7', '日本');
INSERT INTO `singer` VALUES ('97', '徳永英明', 'images/徳永英明.jpg', null, '7', '日本');
INSERT INTO `singer` VALUES ('98', 'Clean Bandit', 'images/Clean Bandit.jpg', null, '12', ' 欧美');
INSERT INTO `singer` VALUES ('99', 'The Beatles', 'images/The Beatles.jpg', null, '12', ' 欧美');
INSERT INTO `singer` VALUES ('100', 'Jessie J', 'images/Jessie J.jpg', null, '11', ' 欧美');
INSERT INTO `singer` VALUES ('101', '吴世勋', 'images/吴世勋.jpg', null, '4', '韩国');
INSERT INTO `singer` VALUES ('102', '郑容和', 'images/郑容和.jpg', null, '4', '韩国');
INSERT INTO `singer` VALUES ('103', '张根硕', 'images/张根硕.jpg', null, '4', '韩国');
INSERT INTO `singer` VALUES ('104', 'Sarah Brightman', 'images/Sarah Brightman.jpg', null, '11', ' 欧美');
INSERT INTO `singer` VALUES ('105', '允儿', 'images/允儿.jpg', null, '5', '韩国');
INSERT INTO `singer` VALUES ('106', '白智英', 'images/白智英.jpg', null, '5', '韩国');
INSERT INTO `singer` VALUES ('107', '朴信惠', 'images/朴信惠.jpg', null, '5', '韩国');
INSERT INTO `singer` VALUES ('108', '王力宏', 'images/王力宏.jpg', null, '1', '港台');
INSERT INTO `singer` VALUES ('109', '萧敬腾', 'images/萧敬腾.jpg', null, '1', '港台');
INSERT INTO `singer` VALUES ('110', '黄子韬', 'images/黄子韬.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('111', '吴亦凡', 'images/吴亦凡.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('112', '赵雷', 'images/赵雷.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('113', '张艺兴', 'images/张艺兴.jpg', null, '1', '内地');
INSERT INTO `singer` VALUES ('114', '周笔畅', 'images/周笔畅.jpg', null, '2', '内地');
INSERT INTO `singer` VALUES ('115', '萧亚轩', 'images/萧亚轩.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('116', '田馥甄', 'images/田馥甄.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('117', '那英', 'images/那英.jpg', null, '2', '内地');
INSERT INTO `singer` VALUES ('118', '蔡依林', 'images/蔡依林.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('119', '李宇春', 'images/李宇春.jpg', null, '2', '港台');
INSERT INTO `singer` VALUES ('120', '林忆莲', 'images/林忆莲.png', null, '2', '港台');
INSERT INTO `singer` VALUES ('121', '牛奶咖啡', 'images/牛奶咖啡.jpg', null, '3', '内地');
INSERT INTO `singer` VALUES ('122', 'Twins', 'images/Twins.jpg', null, '3', '港台');
INSERT INTO `singer` VALUES ('123', '缝纫机乐队', 'images/纫机乐队.jpg', null, '3', '内地');
INSERT INTO `singer` VALUES ('124', 'SNH48', 'images/SNH48.jpg', null, '3', '内地');
INSERT INTO `singer` VALUES ('125', '至上励合', 'images/至上励合.jpg', null, '3', '内地');
INSERT INTO `singer` VALUES ('126', 'uhggu', null, null, null, null);

-- ----------------------------
-- Table structure for singertype
-- ----------------------------
DROP TABLE IF EXISTS `singertype`;
CREATE TABLE `singertype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photoURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of singertype
-- ----------------------------
INSERT INTO `singertype` VALUES ('1', '华语男歌手', 'upload/1457310390637.jpg');
INSERT INTO `singertype` VALUES ('2', '华语女歌手', 'upload/1457310524666.jpg');
INSERT INTO `singertype` VALUES ('3', '华语组合', 'upload/1457310540567.jpg');
INSERT INTO `singertype` VALUES ('4', '韩国男歌手', 'upload/1457314379770.jpg');
INSERT INTO `singertype` VALUES ('5', '韩国女歌手', 'upload/1491830457050.png');
INSERT INTO `singertype` VALUES ('6', '韩国组合', null);
INSERT INTO `singertype` VALUES ('7', '日本男歌手', null);
INSERT INTO `singertype` VALUES ('8', '日本女歌手', null);
INSERT INTO `singertype` VALUES ('9', '日本组合', null);
INSERT INTO `singertype` VALUES ('10', '欧美男歌手', null);
INSERT INTO `singertype` VALUES ('11', '欧美女歌手', null);
INSERT INTO `singertype` VALUES ('12', '欧美组合', null);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photoURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('4', '大陆男歌手', 'upload/1457310390637.jpg');
INSERT INTO `type` VALUES ('5', '港台歌手', 'upload/1457310524666.jpg');
INSERT INTO `type` VALUES ('6', '港台组合', 'upload/1457310540567.jpg');
INSERT INTO `type` VALUES ('7', '大陆歌手', 'upload/1457314379770.jpg');
INSERT INTO `type` VALUES ('8', '儿歌', 'upload/1491830457050.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `userEmail` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `userPwd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1402548358', null, 'e10adc3949ba59abbe56e057f20f883e\r\n', '18065859553', '福建厦门');
INSERT INTO `user` VALUES ('2', '958465427', null, 'e10adc3949ba59abbe56e057f20f883e', '18065859552', '福建厦门');
INSERT INTO `user` VALUES ('3', '1908357899', null, 'e10adc3949ba59abbe56e057f20f883e', '18065859551', '福建厦门');
INSERT INTO `user` VALUES ('4', '1976999791', null, 'e10adc3949ba59abbe56e057f20f883e', '18065859550', '福建厦门');
INSERT INTO `user` VALUES ('5', '2895778340', null, 'e10adc3949ba59abbe56e057f20f883e', '18065859554', '福建厦门');
INSERT INTO `user` VALUES ('6', '1244638099', null, 'e10adc3949ba59abbe56e057f20f883e', '18065859556', '福建厦门');
INSERT INTO `user` VALUES ('22', '1234343', '545@reew.vd', '17e74d8fcbf4612b187b8d2712ed48de', null, null);
INSERT INTO `user` VALUES ('32', 'lqc520', '1@fdsf.vd', '9cf009e20740ac65740a6019d5b54cf8', null, null);
INSERT INTO `user` VALUES ('33', '1', null, 'c4ca4238a0b923820dcc509a6f75849b', null, null);
INSERT INTO `user` VALUES ('34', 'lqc521', null, 'c4ca4238a0b923820dcc509a6f75849b', null, null);
INSERT INTO `user` VALUES ('35', 'qqqq', 'qqqqqq@qq.com', 'bc6f8fdede28d4236e5eff8d39397142', null, null);
INSERT INTO `user` VALUES ('36', '543543', '123@ERS.CSD', '5f8591a3d4fe06393cad53edff27ba05', null, null);
INSERT INTO `user` VALUES ('37', '2313', 'gf$#@fdsf.fd', '9cbf8a4dcb8e30682b927f352d6559a0', null, null);

-- ----------------------------
-- Table structure for userhistory
-- ----------------------------
DROP TABLE IF EXISTS `userhistory`;
CREATE TABLE `userhistory` (
  `userId` int(11) DEFAULT NULL,
  `musicId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of userhistory
-- ----------------------------

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `videoId` int(11) NOT NULL AUTO_INCREMENT,
  `videoName` varchar(255) DEFAULT NULL,
  `videoAuthor` varchar(255) DEFAULT NULL,
  `videoPhoto` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `videoTime` datetime DEFAULT NULL,
  PRIMARY KEY (`videoId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '方圆几里1', '薛之谦', 'images/1.jpg', 'video/薛之谦 - 方圆几里.m4v', '2018-07-17 19:44:14');
INSERT INTO `video` VALUES ('2', '他不懂', '张杰', 'images/2.jpg', 'video/张杰 - 他不懂 - 2013广州演唱会.m4v', '2017-09-10 00:00:00');
INSERT INTO `video` VALUES ('3', 'Catch me when I fall', '鹿晗 ', 'images/3.jpg', 'video/鹿晗 - 某时某刻 Catch me when I fall (Remix) (Feat.R3HAB).m4v', '2018-03-06 00:00:00');
INSERT INTO `video` VALUES ('4', '气球', '许佩哲', 'images/4.jpg', 'video/许哲佩 - 气球.m4v', '2018-04-16 00:00:00');
INSERT INTO `video` VALUES ('5', '离人愁', '李袁杰', 'images/5.jpg', 'video/李袁杰 - 离人愁.m4v', '2018-04-03 00:00:00');
INSERT INTO `video` VALUES ('6', '想你', '吴亦凡、赵丽颖', 'images/6.jpg', 'video/吴亦凡、赵丽颖 - 想你.m4v', '2018-04-30 00:00:00');
INSERT INTO `video` VALUES ('7', '空空如也', '胡66', 'images/7.jpg', 'video/胡66 - 空空如也.m4v', '2018-04-23 00:00:00');
INSERT INTO `video` VALUES ('8', '亲爱的你', '陈粒', 'images/8.jpg', 'video/陈粒 - 亲爱的你.m4v', '2018-02-26 00:00:00');
INSERT INTO `video` VALUES ('9', '三生三世', '张杰', 'images/9.jpg', 'video/张杰 - 三生三世.m4v', '2017-08-07 00:00:00');
INSERT INTO `video` VALUES ('10', '不要忘记我爱你', '张碧晨', 'images/10.jpg', 'video/张碧晨 - 不要忘记我爱你.m4v', '2017-07-18 00:00:00');
INSERT INTO `video` VALUES ('11', '不念', '张靓颖', 'images/11.jpg', 'video/张靓颖 - 不念.m4v', '2018-02-07 00:00:00');
INSERT INTO `video` VALUES ('12', '无论', '魏大勋', 'images/12.jpg', 'video/魏大勋 - 无论.m4v', '2018-03-19 00:00:00');
INSERT INTO `video` VALUES ('13', '烈火神盾', '魏晨', 'images/13.jpg', 'video/魏晨 - 烈火神盾.m4v', '2017-08-14 00:00:00');
INSERT INTO `video` VALUES ('14', '消愁', '毛不易', 'images/14.jpg', 'video/毛不易 - 消愁 (Live).m4v', '2018-05-14 00:00:00');
INSERT INTO `video` VALUES ('15', '追光者', '岑宁儿', 'images/15.jpg', 'video/岑宁儿 - 追光者.m4v', '2017-09-12 00:00:00');
INSERT INTO `video` VALUES ('16', '加油！AMIGO', 'TFBOYS', 'images/16.jpg', 'video/TFBOYS - 加油!AMIGO.m4v', '2017-03-26 00:00:00');
INSERT INTO `video` VALUES ('17', 'Here We Are', '华晨宇', 'images/17.jpg', 'video/华晨宇 - Here We Are(2016华晨宇“火星”演唱会深圳站).m4v', '2017-07-16 00:00:00');
INSERT INTO `video` VALUES ('18', 'Bad Girl', '吴亦凡', 'images/18.jpg', 'video/吴亦凡 - Bad Girl.m4v', '2017-10-02 00:00:00');
INSERT INTO `video` VALUES ('19', 'EI EI', 'NINE PERCENT', 'images/19.jpg', 'video/NINE PERCENT - EI EI (Live).m4v', '2017-04-16 00:00:00');
INSERT INTO `video` VALUES ('20', '醉赤壁', '林俊杰', 'images/20.jpg', 'video/林俊杰 - 醉赤壁.m4v', '2017-07-23 00:00:00');
INSERT INTO `video` VALUES ('21', '告白气球', '周杰伦', 'images/21.jpg', 'video/周杰伦 - 告白气球.m4v', '2017-08-27 00:00:00');
INSERT INTO `video` VALUES ('22', '走着走着就散了', '庄心妍', 'images/22.jpg', 'video/庄心妍 - 走着走着就散了.m4v', '2017-06-25 00:00:00');
INSERT INTO `video` VALUES ('23', '不将就', '李荣浩', 'images/23.jpg', 'video/李荣浩 - 不将就.m4v', '2018-06-17 00:00:00');
INSERT INTO `video` VALUES ('24', '有点甜', '汪苏泷', 'images/24.jpg', 'video/汪苏泷、By2 - 有点甜.m4v', '2016-07-31 00:00:00');
INSERT INTO `video` VALUES ('25', '贝加尔湖畔', '李健', 'images/25.jpg', 'video/李健 - 贝加尔湖畔.m4v', '2017-12-11 00:00:00');
INSERT INTO `video` VALUES ('26', 'Despacito', 'Justin Bieber', 'images/26.jpg', 'video/Luis Fonsi、Daddy Yankee、Justin Bieber - Despacito (Remix).m4v', '2017-08-01 00:00:00');
INSERT INTO `video` VALUES ('27', '逆战', '张杰', 'images/27.jpg', 'video/张杰 - 逆战.m4v', '2017-09-10 00:00:00');
INSERT INTO `video` VALUES ('28', '初学者', '薛之谦', 'images/28.jpg', 'video/薛之谦 - 初学者.m4v', '2018-04-30 00:00:00');
INSERT INTO `video` VALUES ('29', 'SHEEP', '张艺兴', 'images/29.jpg', 'video/张艺兴 - 羊 (SHEEP).m4v', '2018-02-04 00:00:00');
INSERT INTO `video` VALUES ('30', '你要的全拿走', '胡彦斌', 'images/30.jpg', 'video/胡彦斌 - 你要的全拿走.m4v', '2017-08-27 00:00:00');
