/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : engonline3

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-05-26 11:48:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alogin
-- ----------------------------
DROP TABLE IF EXISTS `alogin`;
CREATE TABLE `alogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alogin
-- ----------------------------
INSERT INTO `alogin` VALUES ('1', 'admin1', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `alogin` VALUES ('2', 'admin2', '098f6bcd4621d373cade4e832627b4f6');
INSERT INTO `alogin` VALUES ('4', 'admin3', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for aupload
-- ----------------------------
DROP TABLE IF EXISTS `aupload`;
CREATE TABLE `aupload` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `uploadtime` date DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aupload
-- ----------------------------

-- ----------------------------
-- Table structure for clozeques
-- ----------------------------
DROP TABLE IF EXISTS `clozeques`;
CREATE TABLE `clozeques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `choiceA` varchar(100) DEFAULT NULL,
  `choiceB` varchar(100) DEFAULT NULL,
  `choiceC` varchar(100) DEFAULT NULL,
  `choiceD` varchar(100) DEFAULT NULL,
  `answer` char(2) DEFAULT NULL,
  `analysis` varchar(255) DEFAULT NULL,
  `typeid` tinyint(4) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `textid` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clozeques
-- ----------------------------

-- ----------------------------
-- Table structure for qcollection
-- ----------------------------
DROP TABLE IF EXISTS `qcollection`;
CREATE TABLE `qcollection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of qcollection
-- ----------------------------

-- ----------------------------
-- Table structure for qtype
-- ----------------------------
DROP TABLE IF EXISTS `qtype`;
CREATE TABLE `qtype` (
  `typeid` tinyint(4) NOT NULL DEFAULT '0',
  `tname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qtype
-- ----------------------------
INSERT INTO `qtype` VALUES ('1', '单选题');
INSERT INTO `qtype` VALUES ('4', '填空题');
INSERT INTO `qtype` VALUES ('6', '完形填空');
INSERT INTO `qtype` VALUES ('7', '阅读理解');
INSERT INTO `qtype` VALUES ('8', '写作');
INSERT INTO `qtype` VALUES ('10', '其他题型');
INSERT INTO `qtype` VALUES ('22', '单词拼写');
INSERT INTO `qtype` VALUES ('25', '改错');
INSERT INTO `qtype` VALUES ('31', '信息分析题');

-- ----------------------------
-- Table structure for readques
-- ----------------------------
DROP TABLE IF EXISTS `readques`;
CREATE TABLE `readques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `choiceA` varchar(100) DEFAULT NULL,
  `choiceB` varchar(100) DEFAULT NULL,
  `choiceC` varchar(100) DEFAULT NULL,
  `choiceD` varchar(100) DEFAULT NULL,
  `answer` char(2) DEFAULT NULL,
  `analysis` varchar(255) DEFAULT NULL,
  `typeid` tinyint(4) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `textid` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readques
-- ----------------------------

-- ----------------------------
-- Table structure for singleques
-- ----------------------------
DROP TABLE IF EXISTS `singleques`;
CREATE TABLE `singleques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `choiceA` varchar(100) DEFAULT NULL,
  `choiceB` varchar(100) DEFAULT NULL,
  `choiceC` varchar(100) DEFAULT NULL,
  `choiceD` varchar(100) DEFAULT NULL,
  `answer` char(2) DEFAULT NULL,
  `analysis` varchar(255) DEFAULT NULL,
  `typeid` tinyint(4) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fromid` (`fromid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of singleques
-- ----------------------------

-- ----------------------------
-- Table structure for textcloze
-- ----------------------------
DROP TABLE IF EXISTS `textcloze`;
CREATE TABLE `textcloze` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `textid` int(11) DEFAULT NULL,
  `text` text,
  `qnum` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `textid` (`textid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textcloze
-- ----------------------------

-- ----------------------------
-- Table structure for textread
-- ----------------------------
DROP TABLE IF EXISTS `textread`;
CREATE TABLE `textread` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `textid` int(11) DEFAULT NULL,
  `texts` text,
  `qnum` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `textid` (`textid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textread
-- ----------------------------

-- ----------------------------
-- Table structure for ulogin
-- ----------------------------
DROP TABLE IF EXISTS `ulogin`;
CREATE TABLE `ulogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ulogin
-- ----------------------------
INSERT INTO `ulogin` VALUES ('1', 'xiaoming', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `ulogin` VALUES ('2', 'xiaoqiang', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for urlinfo
-- ----------------------------
DROP TABLE IF EXISTS `urlinfo`;
CREATE TABLE `urlinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `quesurl` varchar(255) DEFAULT NULL,
  `flag` char(2) DEFAULT NULL,
  `gaintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quesurl` (`quesurl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlinfo
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '12123123122', '12123123122@qq.com', 'hitwh');
INSERT INTO `userinfo` VALUES ('2', '17863108028', '3196205548@qq.com', '哈尔滨工业大学（威海）');

-- ----------------------------
-- Table structure for usertest
-- ----------------------------
DROP TABLE IF EXISTS `usertest`;
CREATE TABLE `usertest` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `stime` int(11) DEFAULT '0',
  `errnum` int(11) DEFAULT '0',
  `ptype` int(11) DEFAULT '0',
  `studyday` date DEFAULT NULL,
  `weekdays` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertest
-- ----------------------------
INSERT INTO `usertest` VALUES ('1', '1', '1', '10', '11', '1', '1', '2019-05-03', '1');

-- ----------------------------
-- Table structure for voc
-- ----------------------------
DROP TABLE IF EXISTS `voc`;
CREATE TABLE `voc` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `vname` varchar(255) DEFAULT NULL,
  `explains` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of voc
-- ----------------------------
INSERT INTO `voc` VALUES ('3', 'thrive', ' vi. 兴旺,繁荣');
INSERT INTO `voc` VALUES ('4', 'rebellion', ' n. 谋反, 叛乱, 反抗');
INSERT INTO `voc` VALUES ('5', 'certify', ' vt. 证明,保证,证实,颁发证书');
INSERT INTO `voc` VALUES ('6', 'miracle', ' n. 奇迹');
INSERT INTO `voc` VALUES ('7', 'commodity', ' n. 商品, 日用品');
INSERT INTO `voc` VALUES ('8', 'realm', ' n. 王国,领域');
INSERT INTO `voc` VALUES ('9', 'compulsory', ' adj. 被强制的,强迫的,义务的');
INSERT INTO `voc` VALUES ('10', 'lid', ' n. 盖');
INSERT INTO `voc` VALUES ('11', 'operational', ' adj. 操作的, 运作的');
INSERT INTO `voc` VALUES ('12', 'overlook', ' v. 俯看, 远眺, 没注意到');
INSERT INTO `voc` VALUES ('13', 'recognition', ' n. 认出,承认, 感知，知识');
INSERT INTO `voc` VALUES ('14', 'promote', ' vt. 促进, 提升, 升迁; 发起; 促销');
INSERT INTO `voc` VALUES ('15', 'lure', ' n. 饵,诱惑 vt. 引诱,诱惑');
INSERT INTO `voc` VALUES ('16', 'valid', ' adj. 有确实根据的; 有效的; 正当的, 合法的');
INSERT INTO `voc` VALUES ('17', 'headline', ' n. (pl.)新闻提要, 大字标题');
INSERT INTO `voc` VALUES ('18', 'remainder', ' n. 剩余物, 其他的人, 残余 vt. 廉价出售 adj. 剩余的');
INSERT INTO `voc` VALUES ('19', 'editor', ' n. 编辑, 编者');
INSERT INTO `voc` VALUES ('20', 'egg', ' n. 蛋; (俚语)人');
INSERT INTO `voc` VALUES ('21', 'assignment', ' n. 分配,功课,任务,被指定的(课外)作业;(分派的)任务, 委派');
INSERT INTO `voc` VALUES ('22', 'formulate', ' vt. 规划；用公式表示；明确地表达');
INSERT INTO `voc` VALUES ('23', 'pure', ' adj. 纯的, 纯洁的, 纯理论的, 抽象的, 完全的');
INSERT INTO `voc` VALUES ('24', 'biography', ' n. 传记');
INSERT INTO `voc` VALUES ('25', 'rice', ' n. 稻,饭,米');
INSERT INTO `voc` VALUES ('26', 'snowstorm', ' n. 暴风雪；雪暴');
INSERT INTO `voc` VALUES ('27', 'forbid', ' vt. 禁止,妨碍, 阻止');
INSERT INTO `voc` VALUES ('28', 'federation', ' n. 联邦, 联合, 联盟');
INSERT INTO `voc` VALUES ('29', 'ink', ' n. 墨水');
INSERT INTO `voc` VALUES ('30', 'meditate', ' v. 想, 考虑, 计划');
INSERT INTO `voc` VALUES ('31', 'handwriting', ' n. 笔迹, 书法');
INSERT INTO `voc` VALUES ('32', 'unite', ' v. 联合, 合并, 混合');
INSERT INTO `voc` VALUES ('33', 'proficiency', ' n. 熟练,精通');
INSERT INTO `voc` VALUES ('34', 'spacecraft', ' n. 宇宙飞船');
INSERT INTO `voc` VALUES ('35', 'inflation', ' n. 膨胀,通货膨胀');
INSERT INTO `voc` VALUES ('36', 'comprise', ' vt. 包含,构成');
INSERT INTO `voc` VALUES ('37', 'scandal', ' n. 丑闻,中伤,反感,耻辱');
INSERT INTO `voc` VALUES ('38', 'abolish', ' vt. 废止,革除');
INSERT INTO `voc` VALUES ('39', 'reclaim', ' v. 开垦, 纠正, 收回');
INSERT INTO `voc` VALUES ('40', 'bonus', ' n. 红利, 奖金');
INSERT INTO `voc` VALUES ('41', 'blade', ' n. 刀锋, 刀口');
INSERT INTO `voc` VALUES ('42', 'policeman', ' n. 警察');
INSERT INTO `voc` VALUES ('43', 'technician', ' n. 技术员,技师');
INSERT INTO `voc` VALUES ('44', 'eager', ' adj. 渴望的, 热切的');
INSERT INTO `voc` VALUES ('45', 'widespread', ' adj. 分布(或散布)广的,普遍的');
INSERT INTO `voc` VALUES ('46', 'usage', ' n. 惯用法,使用,用法');
INSERT INTO `voc` VALUES ('47', 'explain', ' vt. &amp;vi. 解释,说明');
INSERT INTO `voc` VALUES ('48', 'feat', ' n. 壮举,功绩,技艺表演');
INSERT INTO `voc` VALUES ('49', 'smart', ' adj. 聪明的,时髦的,漂亮的,敏捷的,轻快的,整洁的 vi. 刺痛,难过,烦恼 n. 刺痛,苦恼 adv. 轻快地,,机灵地,整齐地,漂亮地; v. 感到剧烈刺痛，（因批评、失败等）难过，烦恼');
INSERT INTO `voc` VALUES ('50', 'considerable', ' adj. 相当大的,可观的,重要的');
INSERT INTO `voc` VALUES ('51', 'friendship', ' n. 友谊, 友好');
INSERT INTO `voc` VALUES ('52', 'conclusion', ' n. 结论');
INSERT INTO `voc` VALUES ('53', 'pursue', ' v. 追捕, 追求, 继续从事');
INSERT INTO `voc` VALUES ('54', 'rigorous', ' adj. 严厉的,严酷的,严格的,细致的');
INSERT INTO `voc` VALUES ('55', 'pupil', ' n. 瞳孔,学生,小学生');
INSERT INTO `voc` VALUES ('56', 'anyway', ' adv. 不管怎样');
INSERT INTO `voc` VALUES ('57', 'undergo', ' vt. 遭受,经历,忍受');
INSERT INTO `voc` VALUES ('58', 'indifferent', ' adj. 漠不关心的, 无重要性的, 中立的');
INSERT INTO `voc` VALUES ('59', 'addition', ' n. 增加,附加物,加,加法');
INSERT INTO `voc` VALUES ('60', 'huge', ' adj. 巨大的,程度高的');
INSERT INTO `voc` VALUES ('61', 'reply', ' vt. &amp;vi. &amp;n. 回答,答复');
INSERT INTO `voc` VALUES ('62', 'aluminum', ' n. 铝');
INSERT INTO `voc` VALUES ('63', 'rude', ' adj. 粗鲁的, 无礼的');
INSERT INTO `voc` VALUES ('64', 'grim', ' adj. 冷酷的；糟糕的；残忍的');
INSERT INTO `voc` VALUES ('65', 'deduct', ' vt. 扣除，减去；');
INSERT INTO `voc` VALUES ('66', 'revelation', ' n. 揭露,泄露,发觉');
INSERT INTO `voc` VALUES ('67', 'genetic', ' adj. 基因的, 遗传的, 起源的');
INSERT INTO `voc` VALUES ('68', 'successful', ' adj. 成功的,达到目的的');
INSERT INTO `voc` VALUES ('69', 'jewelry', ' n. 珠宝, 珠宝类');
INSERT INTO `voc` VALUES ('70', 'parasite', ' n. 寄生虫,寄生生物，食客');
INSERT INTO `voc` VALUES ('71', 'outset', ' n. 开始, 开端');
INSERT INTO `voc` VALUES ('72', 'Friday', ' n. 星期五');
INSERT INTO `voc` VALUES ('73', 'bury', ' vt.埋葬，葬； 为…举行葬礼； 隐藏，埋藏，遮盖，掩蔽； 专心致志于，埋头于，沉溺于');
INSERT INTO `voc` VALUES ('74', 'barn', ' n. 谷仓, 牲口棚');
INSERT INTO `voc` VALUES ('75', 'procession', ' n.队伍，行列； 一列，一排； 列队行进');
INSERT INTO `voc` VALUES ('76', 'mostly', ' adv. 大概, 大部份, 主要');
INSERT INTO `voc` VALUES ('77', 'apparent', ' adj. 显然的；表面上的；似乎真实的');
INSERT INTO `voc` VALUES ('78', 'hasty', ' adj. 匆匆的, 轻率的, 急忙的');
INSERT INTO `voc` VALUES ('79', 'two', ' num. 二，两个');
INSERT INTO `voc` VALUES ('80', 'Thursday', ' n. 星期四');
INSERT INTO `voc` VALUES ('81', 'belong', ' vi. 属于，适合于');
INSERT INTO `voc` VALUES ('82', 'lung', ' n. 肺,呼吸器官');
INSERT INTO `voc` VALUES ('83', 'principle', ' n. 原则, 原理, 主义, 信念');
INSERT INTO `voc` VALUES ('84', 'brother', ' n. 兄弟, 同胞, 同事, 教友');
INSERT INTO `voc` VALUES ('85', 'notorious', ' adj. 臭名昭著的');
INSERT INTO `voc` VALUES ('86', 'mood', ' n. 心情, 情绪, 语气');
INSERT INTO `voc` VALUES ('87', 'village', ' n. 村庄');
INSERT INTO `voc` VALUES ('88', 'painting', ' n. 水彩画,油画');
INSERT INTO `voc` VALUES ('89', 'dictionary', ' n. 词典, 字典, 辞典');
INSERT INTO `voc` VALUES ('90', 'thoughtful', ' adj. 深思的,体贴的');
INSERT INTO `voc` VALUES ('91', 'expression', ' n. 表达,表示,表现,表情,措辞,词句');
INSERT INTO `voc` VALUES ('92', 'nightmare', ' n. 恶梦,使人极其痛苦的事情或经历,梦魇');
INSERT INTO `voc` VALUES ('93', 'pamphlet', ' n. 小册子');
INSERT INTO `voc` VALUES ('94', 'profitable', ' adj. 有益的, 有用的');
INSERT INTO `voc` VALUES ('95', 'outcome', ' n. 结果');
INSERT INTO `voc` VALUES ('96', 'hitherto', ' adv. 到目前为止, 迄今');
INSERT INTO `voc` VALUES ('97', 'ago', ' adv. 以前');
INSERT INTO `voc` VALUES ('98', 'numerous', ' adj. 为数众多的,许多');
INSERT INTO `voc` VALUES ('99', 'magazine', ' n. 杂志');
INSERT INTO `voc` VALUES ('100', 'depict', ' vt. 描述,描绘');
INSERT INTO `voc` VALUES ('101', 'enthusiastic', ' adj. 热情的, 热心的');
INSERT INTO `voc` VALUES ('102', 'clause', ' n. 分句, 从句, 条款, 款项');
INSERT INTO `voc` VALUES ('103', 'bullet', ' n. 子弹');
INSERT INTO `voc` VALUES ('104', 'desk', ' n. 书桌');
INSERT INTO `voc` VALUES ('105', 'repel', ' v. 逐退, 使...厌恶, 反驳');
INSERT INTO `voc` VALUES ('106', 'surgery', ' n. 外科,外科手术, 诊所');
INSERT INTO `voc` VALUES ('107', 'cinema', ' n. 电影院,电影');
INSERT INTO `voc` VALUES ('108', 'production', ' n. 生产,产品,产量,作品,成果');
INSERT INTO `voc` VALUES ('109', 'comfortable', ' adj. 舒适的,充裕的');
INSERT INTO `voc` VALUES ('110', 'vain', ' adj. 徒然的, 虚荣的, 空虚的');
INSERT INTO `voc` VALUES ('111', 'sunshine', ' n. 阳光');
INSERT INTO `voc` VALUES ('112', 'pierce', ' v. 刺穿, 穿透, 洞悉');
INSERT INTO `voc` VALUES ('113', 'confront', ' vt. 面临, 对抗, 遭遇');
INSERT INTO `voc` VALUES ('114', 'hysterical', ' adj. 歇斯底里的, 异常兴奋的');
INSERT INTO `voc` VALUES ('115', 'theirs', ' pron. 他(她, 它)们的');
INSERT INTO `voc` VALUES ('116', 'theater', ' n.剧场； 戏剧界； 戏剧效果； [军]战区');
INSERT INTO `voc` VALUES ('117', 'intrinsic', ' adj. 固有的, 内在的');
INSERT INTO `voc` VALUES ('118', 'epoch', ' n. 时期，时代，新纪元，划时代的大事，世');
INSERT INTO `voc` VALUES ('119', 'disappoint', ' vt. &amp;vi. 使...失望');
INSERT INTO `voc` VALUES ('120', 'extensive', ' adj. 广泛的,广阔的');
INSERT INTO `voc` VALUES ('121', 'organ', ' n. 风琴,器官,机构,机关报刊');
INSERT INTO `voc` VALUES ('122', 'contempt', ' n. 轻视,轻蔑');
INSERT INTO `voc` VALUES ('123', 'nuclear', ' adj. 原子核的,原子能的');
INSERT INTO `voc` VALUES ('124', 'chef', ' n. 厨师,主厨');
INSERT INTO `voc` VALUES ('125', 'everyone', ' pron. 每人, 人人');
INSERT INTO `voc` VALUES ('126', 'militant', ' adj. 好战的, 积极从事或支持使用武力的');
INSERT INTO `voc` VALUES ('127', 'cathedral', ' n. 大教堂');
INSERT INTO `voc` VALUES ('128', 'ten', ' num. 十, 十个');
INSERT INTO `voc` VALUES ('129', 'spirit', ' n. 精神');
INSERT INTO `voc` VALUES ('130', 'furthermore', ' adv. 而且, 此外');
INSERT INTO `voc` VALUES ('131', 'arise', ' vi. 上升,引起,出现');
INSERT INTO `voc` VALUES ('132', 'exam', ' n. =examination 考试');
INSERT INTO `voc` VALUES ('133', 'he', ' pron. 他');
INSERT INTO `voc` VALUES ('134', 'angel', ' n. 天使,天使般的人');
INSERT INTO `voc` VALUES ('135', 'bowel', ' n. 肠');
INSERT INTO `voc` VALUES ('136', 'passenger', ' n. 乘客,旅客');
INSERT INTO `voc` VALUES ('137', 'tired', ' adj. 疲劳的,累的,厌烦的');
INSERT INTO `voc` VALUES ('138', 'episode', ' n. 插曲,插话,(作品的一段)情节,有趣的事件');
INSERT INTO `voc` VALUES ('139', 'derive', ' v. 得自, 起源, 引申于');
INSERT INTO `voc` VALUES ('140', 'arithmetic', ' n. 算术');
INSERT INTO `voc` VALUES ('141', 'faculty', ' n.能力，才能； 全体教职员； &lt;英&gt;（大学的）专科，系； 特权，特许');
INSERT INTO `voc` VALUES ('142', 'lantern', ' n. 灯笼, [建筑学]天窗, 屋顶气窗');
INSERT INTO `voc` VALUES ('143', 'theft', ' n. 偷窃');
INSERT INTO `voc` VALUES ('144', 'displace', ' v. 移置, 替换');
INSERT INTO `voc` VALUES ('145', 'rid', ' vt. 免除,清除,使...获自由');
INSERT INTO `voc` VALUES ('146', 'parameter', ' n. 参数,参量,决定因素');
INSERT INTO `voc` VALUES ('147', 'irrespective', ' adj. 不顾的, 无关的, 没关系的');
INSERT INTO `voc` VALUES ('148', 'league', ' n. 联盟,社团');
INSERT INTO `voc` VALUES ('149', 'prototype', ' n. 原型,雏形');
INSERT INTO `voc` VALUES ('150', 'sane', ' adj. 心智健全的, 理智的');
INSERT INTO `voc` VALUES ('151', 'entrepreneur', ' n. 企业家');
INSERT INTO `voc` VALUES ('152', 'studio', ' n. 工作场所,画室，照相室，制片厂');
INSERT INTO `voc` VALUES ('153', 'internal', ' adj. 国内的, 内在的，身体内部的');
INSERT INTO `voc` VALUES ('154', 'competition', ' n. 比赛,竞争');
INSERT INTO `voc` VALUES ('155', 'marvelous', ' adj. 令人惊异的,了不起的,不平常的');
INSERT INTO `voc` VALUES ('156', 'delete', ' vt. 删除');
INSERT INTO `voc` VALUES ('157', 'onto', ' prep. 到...上');
INSERT INTO `voc` VALUES ('158', 'disable', ' v. 使...失去能力');
INSERT INTO `voc` VALUES ('159', 'reassure', ' v. 使...安心, 再保证');
INSERT INTO `voc` VALUES ('160', 'fireplace', ' n. 壁炉');
INSERT INTO `voc` VALUES ('161', 'radius', ' n. 半径,桡骨,半径范围,辐射区');
INSERT INTO `voc` VALUES ('162', 'liner', ' n. 班机, 班轮');
INSERT INTO `voc` VALUES ('163', 'population', ' n. 人口');
INSERT INTO `voc` VALUES ('164', 'forgive', ' vt. &amp;vi. 原谅,饶恕,宽恕');
INSERT INTO `voc` VALUES ('165', 'someone', ' pron. 某人, 有人');
INSERT INTO `voc` VALUES ('166', 'correspondence', ' n. 通信；一致；相当');
INSERT INTO `voc` VALUES ('167', 'rejoice', ' v. 使...欢喜, 高兴');
INSERT INTO `voc` VALUES ('168', 'anyhow', ' adv. 无论如何,不管怎样');
INSERT INTO `voc` VALUES ('169', 'nourish', ' v. 滋养, 使...健壮, 怀有');
INSERT INTO `voc` VALUES ('170', 'carriage', ' n. 四轮马车,车厢');
INSERT INTO `voc` VALUES ('171', 'generalize', ' v. 使一般化, 概括，归纳');
INSERT INTO `voc` VALUES ('172', 'semiconductor', ' n. 半导体');
INSERT INTO `voc` VALUES ('173', 'variation', ' n. 变化,变动,变种,变奏曲');
INSERT INTO `voc` VALUES ('174', 'skillful', ' adj. 熟练的，灵巧的');
INSERT INTO `voc` VALUES ('175', 'noticeable', ' adj. 显而易见的');
INSERT INTO `voc` VALUES ('176', 'compete', ' v. 竞争, 对抗');
INSERT INTO `voc` VALUES ('177', 'laundry', ' n. 洗衣店, 要洗的衣服, 洗衣');
INSERT INTO `voc` VALUES ('178', 'temperature', ' n. 温度,发烧');
INSERT INTO `voc` VALUES ('179', 'collaborate', ' vi. 合作,通敌');
INSERT INTO `voc` VALUES ('180', 'definition', ' n. 定义, 阐释，清晰度');
INSERT INTO `voc` VALUES ('181', 'excitement', ' n. 激动, 兴奋');
INSERT INTO `voc` VALUES ('182', 'indicate', ' v.指明, 表明, 显示, 象征, 指示');
INSERT INTO `voc` VALUES ('183', 'gun', ' n. 枪, 炮');
INSERT INTO `voc` VALUES ('184', 'civilize', ' vt. 使开化，使文明');
INSERT INTO `voc` VALUES ('185', 'strong', ' adj. 强壮的, 牢固的, 坚定的, 坚强的, 强烈的, 浓的');
INSERT INTO `voc` VALUES ('186', 'responsible', ' adj. 有责任的,负责的,责任重大的,应负责的');
INSERT INTO `voc` VALUES ('187', 'mild', ' adj. (烟、酒)味淡的,轻微的,温柔的,文雅的');
INSERT INTO `voc` VALUES ('188', 'faith', ' n. 信任,信仰');
INSERT INTO `voc` VALUES ('189', 'vacant', ' adj. 空的,空虚的,木然的');
INSERT INTO `voc` VALUES ('190', 'devote', ' vt. 投入于,献身');
INSERT INTO `voc` VALUES ('191', 'symptom', ' n. 症状, 征兆');
INSERT INTO `voc` VALUES ('192', 'journal', ' n. 日记, 杂志, 日报');
INSERT INTO `voc` VALUES ('193', 'global', ' adj. 全球性的, 全局的');
INSERT INTO `voc` VALUES ('194', 'radar', ' n. 雷达');
INSERT INTO `voc` VALUES ('195', 'hen', ' n. 母鸡');
INSERT INTO `voc` VALUES ('196', 'foreign', ' adj. 外国的,外交的,不相关的');
INSERT INTO `voc` VALUES ('197', 'glorious', ' adj. 光荣的, 辉煌的');
INSERT INTO `voc` VALUES ('198', 'poetry', ' n. 诗歌');
INSERT INTO `voc` VALUES ('199', 'Monday', ' n. 星期一');
INSERT INTO `voc` VALUES ('200', 'harmony', ' n. 和弦,协调,和睦,调和');
INSERT INTO `voc` VALUES ('201', 'aeroplane', ' n. 飞机');
INSERT INTO `voc` VALUES ('202', 'tall', ' adj. 高的');
INSERT INTO `voc` VALUES ('203', 'polite', ' adj. 有礼貌的, 客气的, 有教养的');
INSERT INTO `voc` VALUES ('204', 'holy', ' adj. 神圣的,圣洁的,令人敬仰的');
INSERT INTO `voc` VALUES ('205', 'eyebrow', ' n. 眉毛，[建]窗头线饰');
INSERT INTO `voc` VALUES ('206', 'bible', ' n. 圣经, 有权威的书');
INSERT INTO `voc` VALUES ('207', 'dew', ' n. 露水');
INSERT INTO `voc` VALUES ('208', 'ought', ' conj. 应该, 大概');
INSERT INTO `voc` VALUES ('209', 'hear', ' vt. &amp;vi. 听到,得知,倾听,听证');
INSERT INTO `voc` VALUES ('210', 'conversation', ' n. 会话,谈话');
INSERT INTO `voc` VALUES ('211', 'cheque', ' n. 支票');
INSERT INTO `voc` VALUES ('212', 'data', ' n. (datum的复数)资料,数据');
INSERT INTO `voc` VALUES ('213', 'dealer', ' n. 经销商；商人；发牌者，庄家；[俚语]毒品贩子，贩毒者');
INSERT INTO `voc` VALUES ('214', 'grateful', ' adj. 感激的, 感谢的');
INSERT INTO `voc` VALUES ('215', 'emphasis', ' n. 强调,重点');
INSERT INTO `voc` VALUES ('216', 'tuition', ' n. 教诲,教学,学费');
INSERT INTO `voc` VALUES ('217', 'candidate', ' n. 候选人, 求职者');
INSERT INTO `voc` VALUES ('218', 'era', ' n. 纪元, 时代, 年代');
INSERT INTO `voc` VALUES ('219', 'signature', ' n. 签署,书帖,有特征的符号');
INSERT INTO `voc` VALUES ('220', 'tomato', ' n. 西红柿');
INSERT INTO `voc` VALUES ('221', 'limited', ' adj. 有限的');
INSERT INTO `voc` VALUES ('222', 'fabric', ' n. 织物, 布, 结构');
INSERT INTO `voc` VALUES ('223', 'worthwhile', ' adj. 值得(做)的');
INSERT INTO `voc` VALUES ('224', 'evident', ' adj. 明显的, 明白的');
INSERT INTO `voc` VALUES ('225', 'personality', ' n. 个性, 名人, 特色');
INSERT INTO `voc` VALUES ('226', 'intuition', ' n. 直觉, 直觉的知识');
INSERT INTO `voc` VALUES ('227', 'requirement', ' n. 要求,必要条件');
INSERT INTO `voc` VALUES ('228', 'kidney', ' n. 肾,腰子,类型');
INSERT INTO `voc` VALUES ('229', 'holder', ' n. 持有者，占有者，（台、架等）支持物');
INSERT INTO `voc` VALUES ('230', 'unity', ' n. 个体, 一致, 结合');
INSERT INTO `voc` VALUES ('231', 'gorgeous', ' adj. 华丽的, 灿烂的, 好极了');
INSERT INTO `voc` VALUES ('232', 'forehead', ' n. 额,前额');
INSERT INTO `voc` VALUES ('233', 'marry', ' vt. &amp;vi. 结婚,结合');
INSERT INTO `voc` VALUES ('234', 'indoor', ' adj. 户内的, 室内的');
INSERT INTO `voc` VALUES ('235', 'lover', ' n. 爱好者, 情人');
INSERT INTO `voc` VALUES ('236', 'civilization', ' n. 文明,文化');
INSERT INTO `voc` VALUES ('237', 'inherent', ' adj. 内在的, 固有的');
INSERT INTO `voc` VALUES ('238', 'direction', ' n. 方向,指导,用法说明,趋势');
INSERT INTO `voc` VALUES ('239', 'energetic', ' adj. 精力旺盛的,有力的,能量的');
INSERT INTO `voc` VALUES ('240', 'diplomatic', ' adj. 外交的,古字体的,老练的');
INSERT INTO `voc` VALUES ('241', 'possibility', ' n. 可能性,可能的事情,潜在的价值');
INSERT INTO `voc` VALUES ('242', 'terrible', ' adj. 可怕的,糟糕的,极其的');
INSERT INTO `voc` VALUES ('243', 'album', ' n. 集邮本,照相簿,唱片簿');
INSERT INTO `voc` VALUES ('244', 'perhaps', ' adv. 也许, 可能');
INSERT INTO `voc` VALUES ('245', 'undo', ' v. 解开，松开，取消');
INSERT INTO `voc` VALUES ('246', 'junction', ' n. 联接, 会合处, 交叉点');
INSERT INTO `voc` VALUES ('247', 'communism', ' n. 共产主义, 共产主义学说，共产主义制度');
INSERT INTO `voc` VALUES ('248', 'variety', ' n. 多样, 种类, 杂耍');
INSERT INTO `voc` VALUES ('249', 'grandmother', ' n. (外)祖母');
INSERT INTO `voc` VALUES ('250', 'innovation', ' n. 创新, 革新');
INSERT INTO `voc` VALUES ('251', 'pope', ' n. 罗马教皇');
INSERT INTO `voc` VALUES ('252', 'deaf', ' adj. 聋的');
INSERT INTO `voc` VALUES ('253', 'geology', ' n. 地质学，（某地区的）地质情况，地质学的著作');
INSERT INTO `voc` VALUES ('254', 'acquire', ' vt. 占有,获得,取得,学到');
INSERT INTO `voc` VALUES ('255', 'ceiling', ' n. 天花板,上限');
INSERT INTO `voc` VALUES ('256', 'thousand', ' adj. 千,成千');
INSERT INTO `voc` VALUES ('257', 'regulate', ' v. 有系统的管理,规定,调节');
INSERT INTO `voc` VALUES ('258', 'attendance', ' n. 出席,出席人数,出席率');
INSERT INTO `voc` VALUES ('259', 'weapon', ' n. 武器, 兵器');
INSERT INTO `voc` VALUES ('260', 'intrude', ' v. 闯入，侵入，打扰');
INSERT INTO `voc` VALUES ('261', 'meeting', ' n. 会议');
INSERT INTO `voc` VALUES ('262', 'linguistic', ' adj. 语言的, 语言学的');
INSERT INTO `voc` VALUES ('263', 'exert', ' vt. 运用, 施加（压力，影响等）');
INSERT INTO `voc` VALUES ('264', 'galaxy', ' n. 银河, 一群显赫之人');
INSERT INTO `voc` VALUES ('265', 'cherish', ' vt. 珍爱,抚育,珍藏');
INSERT INTO `voc` VALUES ('266', 'keen', ' adj. 锋利的,敏锐的,强烈的,精明的,热衷于');
INSERT INTO `voc` VALUES ('267', 'departure', ' n. 离开,出发,分歧');
INSERT INTO `voc` VALUES ('268', 'symphony', ' n. 交响乐');
INSERT INTO `voc` VALUES ('269', 'length', ' n. 长度,篇幅');
INSERT INTO `voc` VALUES ('270', 'spaceship', ' n. 宇宙飞船');
INSERT INTO `voc` VALUES ('271', 'accurate', ' adj. 准确的, 精确的');
INSERT INTO `voc` VALUES ('272', 'sufficient', ' adj. 足够的, 充分的');
INSERT INTO `voc` VALUES ('273', 'sale', ' n. 销售(量),削价出售');
INSERT INTO `voc` VALUES ('274', 'silly', ' adj. 愚蠢的,淳朴的,晕的');
INSERT INTO `voc` VALUES ('275', 'violin', ' n. 小提琴');
INSERT INTO `voc` VALUES ('276', 'heir', ' n. 继承人');
INSERT INTO `voc` VALUES ('277', 'suitable', ' adj. 合适的, 适宜的');
INSERT INTO `voc` VALUES ('278', 'monument', ' n. 纪念碑,历史遗迹');
INSERT INTO `voc` VALUES ('279', 'abundant', ' adj. 丰富的,充裕的');
INSERT INTO `voc` VALUES ('280', 'humorous', ' adj. 幽默的, 诙谐的');
INSERT INTO `voc` VALUES ('281', 'advisable', ' adj. 明智的,可取的');
INSERT INTO `voc` VALUES ('282', 'feeble', ' adj. 虚弱的, 无力的');
INSERT INTO `voc` VALUES ('283', 'mammal', ' n. 哺乳动物');
INSERT INTO `voc` VALUES ('284', 'superficial', ' adj. 表面的,肤浅的');
INSERT INTO `voc` VALUES ('285', 'intact', ' adj. 尚未被人碰过的,原封不动的,完整的, 完好无缺的');
INSERT INTO `voc` VALUES ('286', 'mainland', ' n. 大陆, 本土');
INSERT INTO `voc` VALUES ('287', 'bachelor', ' n. 单身汉, 学士');
INSERT INTO `voc` VALUES ('288', 'exclaim', ' v. 大叫, 呼喊, 大声叫');
INSERT INTO `voc` VALUES ('289', 'consumption', ' n. 消费');
INSERT INTO `voc` VALUES ('290', 'July', ' n. 七月');
INSERT INTO `voc` VALUES ('291', 'golden', ' adj. 金(黄)色的');
INSERT INTO `voc` VALUES ('292', 'citizen', ' n. 公民, 市民');
INSERT INTO `voc` VALUES ('293', 'especially', ' adv. 特别,尤其');
INSERT INTO `voc` VALUES ('294', 'ridge', ' n. 脊, 山脊, 山脉');
INSERT INTO `voc` VALUES ('295', 'against', ' prep. 反对,倚靠,违背,防御,相比,相对');
INSERT INTO `voc` VALUES ('296', 'necessitate', ' v. 迫使, 使...成为必需, 需要');
INSERT INTO `voc` VALUES ('297', 'generous', ' adj. 慷慨的,宽宏大量的,丰盛的,味浓的');
INSERT INTO `voc` VALUES ('298', 'status', ' n. 地位, 身份, 情形, 状况');
INSERT INTO `voc` VALUES ('299', 'persevere', ' v. 坚持, 孜孜不倦, 不屈不挠');
INSERT INTO `voc` VALUES ('300', 'idiot', ' n. 白痴');
INSERT INTO `voc` VALUES ('301', 'naval', ' adj. 海军的,军舰的');
INSERT INTO `voc` VALUES ('302', 'shark', ' n. 鲨鱼,贪婪的人,老手');
INSERT INTO `voc` VALUES ('303', 'plunge', 'n. 突然跌落, 跳水');
INSERT INTO `voc` VALUES ('304', 'congratulation', ' n. 祝贺');
INSERT INTO `voc` VALUES ('305', 'erupt', ' v. 爆发');
INSERT INTO `voc` VALUES ('306', 'expensive', ' adj. 昂贵的,豪华的');
INSERT INTO `voc` VALUES ('307', 'pursuit', ' n. 追求, 追赶, 工作');
INSERT INTO `voc` VALUES ('308', 'appraisal', ' n. 估计,估量,评价');
INSERT INTO `voc` VALUES ('309', 'ensure', ' vt. 确定,保证,担保');
INSERT INTO `voc` VALUES ('310', 'require', ' v. 需要, 要求');
INSERT INTO `voc` VALUES ('311', 'important', ' adj. 重要的,影响很大的');
INSERT INTO `voc` VALUES ('312', 'resolute', ' adj. 坚决的, 果断的');
INSERT INTO `voc` VALUES ('313', 'outer', ' adj. 外部的, 外面的');
INSERT INTO `voc` VALUES ('314', 'blouse', ' n. 女衬衫');
INSERT INTO `voc` VALUES ('315', 'brittle', ' adj. 易碎的');
INSERT INTO `voc` VALUES ('316', 'tale', ' n. 叙述,传说,故事');
INSERT INTO `voc` VALUES ('317', 'eminent', ' adj. 著名的, 卓越的');
INSERT INTO `voc` VALUES ('318', 'clumsy', ' adj. 笨拙的, 笨重的, 不得体的');
INSERT INTO `voc` VALUES ('319', 'faulty', ' adj. 有错误的, 有缺点的');
INSERT INTO `voc` VALUES ('320', 'distinct', ' adj. (from)独特的,不同的,明显的,清楚的');
INSERT INTO `voc` VALUES ('321', 'basin', ' n. 脸盆, 盆地, 流域, 水池');
INSERT INTO `voc` VALUES ('322', 'energy', ' n. 活力,精力,能力,能,能量');
INSERT INTO `voc` VALUES ('323', 'advent', ' n. 出现,到来');
INSERT INTO `voc` VALUES ('324', 'slogan', ' n. 标语,口号');
INSERT INTO `voc` VALUES ('325', 'recipient', ' n. 接受者, 收信人');
INSERT INTO `voc` VALUES ('326', 'meat', ' n. 肉,主要或重要部分');
INSERT INTO `voc` VALUES ('327', 'residence', ' n. 住处, 住宅, 居住');
INSERT INTO `voc` VALUES ('328', 'punctual', ' adj. 严守时刻的,准时的,正点的');
INSERT INTO `voc` VALUES ('329', 'assumption', ' n. 假定,设想,担任(职责等),假装');
INSERT INTO `voc` VALUES ('330', 'employee', ' n. 雇员');
INSERT INTO `voc` VALUES ('331', 'congress', ' n. 国会；代表大会；会议；社交');
INSERT INTO `voc` VALUES ('332', 'quit', ' v. 离开,辞职,停止');
INSERT INTO `voc` VALUES ('333', 'calcium', ' n. 钙');
INSERT INTO `voc` VALUES ('334', 'thirteen', ' num. 十三');
INSERT INTO `voc` VALUES ('335', 'defend', ' vt. &amp;vi. 防护,辩护,防卫');
INSERT INTO `voc` VALUES ('336', 'Saturday', ' n. 星期六');
INSERT INTO `voc` VALUES ('337', 'sportsman', ' n. 运动员');
INSERT INTO `voc` VALUES ('338', 'boundary', ' n. 分界线, 边界');
INSERT INTO `voc` VALUES ('339', 'cafe', ' n. 咖啡馆,小餐馆');
INSERT INTO `voc` VALUES ('340', 'deer', ' n. 鹿');
INSERT INTO `voc` VALUES ('341', 'modernization', ' n. 现代化');
INSERT INTO `voc` VALUES ('342', 'relationship', ' n. 关系, 关联');
INSERT INTO `voc` VALUES ('343', 'equip', ' v. 装备, 设, 穿～');
INSERT INTO `voc` VALUES ('344', 'litre', ' n. 公升（=liter）');
INSERT INTO `voc` VALUES ('345', 'fright', ' n. 惊骇, 吃惊');
INSERT INTO `voc` VALUES ('346', 'invariably', ' adv. 不变化地, 一定不变地, 常常地');
INSERT INTO `voc` VALUES ('347', 'kindness', ' n. 仁慈, 好意');
INSERT INTO `voc` VALUES ('348', 'baseball', ' n. 棒球');
INSERT INTO `voc` VALUES ('349', 'reckless', ' adj. 不计后果的,大意的,鲁莽的');
INSERT INTO `voc` VALUES ('350', 'crime', ' n. 犯罪, 羞耻, 罪行');
INSERT INTO `voc` VALUES ('351', 'aircraft', ' n. 飞机');
INSERT INTO `voc` VALUES ('352', 'repression', ' n.抑制，压抑，制止');
INSERT INTO `voc` VALUES ('353', 'wonderful', ' adj. 极好的, 精彩的');
INSERT INTO `voc` VALUES ('354', 'property', ' n. 财产; 性质; 道具');
INSERT INTO `voc` VALUES ('355', 'because', ' conj. 因为');
INSERT INTO `voc` VALUES ('356', 'ascend', ' v. 上升, 攀登');
INSERT INTO `voc` VALUES ('357', 'staircase', ' n. 楼梯');
INSERT INTO `voc` VALUES ('358', 'barely', ' adv. 少量地,几乎不地,勉强');
INSERT INTO `voc` VALUES ('359', 'recollect', ' v. 回忆, 回想, 忆起');
INSERT INTO `voc` VALUES ('360', 'wretched', ' adj. 可怜的, 不幸的, 卑鄙的，质量差的，恶劣的');
INSERT INTO `voc` VALUES ('361', 'disturb', ' vt. &amp;vi. 扰乱,妨碍,使...不安');
INSERT INTO `voc` VALUES ('362', 'enemy', ' n. 敌人, 有害物, 敌对势力');
INSERT INTO `voc` VALUES ('363', 'intelligence', ' n. 理解力, 智力, 情报, 情报工作, 情报机关');
INSERT INTO `voc` VALUES ('364', 'obey', ' vt. &amp;vi. 服从,听从');
INSERT INTO `voc` VALUES ('365', 'attractive', ' adj. 有吸引力的, 引起注意的');
INSERT INTO `voc` VALUES ('366', 'logic', ' n. 逻辑(学),逻辑性,合理的推理');
INSERT INTO `voc` VALUES ('367', 'month', ' n. 月');
INSERT INTO `voc` VALUES ('368', 'scientist', ' n. 科学家');
INSERT INTO `voc` VALUES ('369', 'trunk', ' n. 树干,躯干, 干线, (汽车后部)行李箱,象鼻');
INSERT INTO `voc` VALUES ('370', 'hostage', ' n. 人质');
INSERT INTO `voc` VALUES ('371', 'expose', ' vt. 暴露,揭穿,使遭受（危险或不快）');
INSERT INTO `voc` VALUES ('372', 'income', ' n. 收入,所得');
INSERT INTO `voc` VALUES ('373', 'longitude', ' n. 经度');
INSERT INTO `voc` VALUES ('374', 'artery', ' n. 动脉, 主流, 干道');
INSERT INTO `voc` VALUES ('375', 'racial', ' adj. 种族的,人种的');
INSERT INTO `voc` VALUES ('376', 'propose', ' v. 计划, 打算, 向...提议; 求婚');
INSERT INTO `voc` VALUES ('377', 'person', ' n. 人');
INSERT INTO `voc` VALUES ('378', 'controversy', ' n. (公开的)争论,争议');
INSERT INTO `voc` VALUES ('379', 'accuse', ' vt. 责备,控告');
INSERT INTO `voc` VALUES ('380', 'lens', ' n. 镜头,透镜');
INSERT INTO `voc` VALUES ('381', 'agriculture', ' n. 农业');
INSERT INTO `voc` VALUES ('382', 'optimistic', ' adj. 乐观的, 乐观主义的');
INSERT INTO `voc` VALUES ('383', 'uphold', ' v. 支撑, 赞成, 鼓励');
INSERT INTO `voc` VALUES ('384', 'offspring', ' n. 子孙, 后代, 产物');
INSERT INTO `voc` VALUES ('385', 'business', ' n. 商业,生意,事务');
INSERT INTO `voc` VALUES ('386', 'sheep', ' n. 羊, 绵羊');
INSERT INTO `voc` VALUES ('387', 'anxiety', ' n. 焦虑,挂念,担心,渴望,热望');
INSERT INTO `voc` VALUES ('388', 'electrical', ' adj. 电的,电气科学的');
INSERT INTO `voc` VALUES ('389', 'satire', ' n. 讽刺文, 讽刺');
INSERT INTO `voc` VALUES ('390', 'tablet', ' n. 药片, 匾, 片状物');
INSERT INTO `voc` VALUES ('391', 'oxygen', ' n. 氧,氧气');
INSERT INTO `voc` VALUES ('392', 'ourselves', ' pron. 我们自己');
INSERT INTO `voc` VALUES ('393', 'illusion', ' n. 幻觉,错觉,错误的信仰(或观念)');
INSERT INTO `voc` VALUES ('394', 'odor', ' n. 气味,名声,气息');
INSERT INTO `voc` VALUES ('395', 'personnel', ' n.全体员工； （与复数动词连用）人员，员工； 人事部门');
INSERT INTO `voc` VALUES ('396', 'intercourse', ' n. 性交；交往；交流');
INSERT INTO `voc` VALUES ('397', 'strength', ' n. 力量,力气,长处,强度');
INSERT INTO `voc` VALUES ('398', 'dirt', ' n. 污垢,泥土, 污秽的言行,卑鄙的人,堕落,矿渣');
INSERT INTO `voc` VALUES ('399', 'imply', ' vt. 暗示,意味');
INSERT INTO `voc` VALUES ('400', 'inhabitant', ' n. 居民');
INSERT INTO `voc` VALUES ('401', 'bee', ' n. 蜜蜂');
INSERT INTO `voc` VALUES ('402', 'solar', ' adj. 太阳的,太阳能的');
INSERT INTO `voc` VALUES ('403', 'distinction', ' n. 区别; 卓越; 殊荣');
INSERT INTO `voc` VALUES ('404', 'questionnaire', ' n. 调查表');
INSERT INTO `voc` VALUES ('405', 'anticipate', ' vt. 预期，期望；占先，抢先；提前使用');
INSERT INTO `voc` VALUES ('406', 'appliance', ' n. 器具,器械,装置,应用');
INSERT INTO `voc` VALUES ('407', 'sarcastic', ' adj. 讽刺的');
INSERT INTO `voc` VALUES ('408', 'appearance', ' n. 外表,出现,出场');
INSERT INTO `voc` VALUES ('409', 'slender', ' adj. 细长的, 苗条的, 微薄的, 少量的');
INSERT INTO `voc` VALUES ('410', 'dialect', ' n. 方言');
INSERT INTO `voc` VALUES ('411', 'nature', ' n.自然,自然界,自然状态; 本性,天性,性质; 质; 性格; 性; 本质');
INSERT INTO `voc` VALUES ('412', 'ventilate', ' vt. 使...空气流通，通风');
INSERT INTO `voc` VALUES ('413', 'rug', ' n. 毯子, 地毯, 旅行毯');
INSERT INTO `voc` VALUES ('414', 'machinery', ' n. (总称)机器, 机械');
INSERT INTO `voc` VALUES ('415', 'soluble', ' adj. 可溶解的，可解决的');
INSERT INTO `voc` VALUES ('416', 'hi', ' int. 嗨, 引人注意时的喊声, 打招呼');
INSERT INTO `voc` VALUES ('417', 'world', ' n. 世界(人),领域,俗世');
INSERT INTO `voc` VALUES ('418', 'shabby', ' adj. 破旧的(低劣的)');
INSERT INTO `voc` VALUES ('419', 'orthodox', ' adj. 正(传)统的');
INSERT INTO `voc` VALUES ('420', 'they', ' pron. 他们');
INSERT INTO `voc` VALUES ('421', 'hijack', ' vt. 抢劫, 劫持, 劫机');
INSERT INTO `voc` VALUES ('422', 'furnace', ' n. 炉子,熔炉,闷热地带,严峻考验');
INSERT INTO `voc` VALUES ('423', 'antenna', ' n. 触角,天线,感觉,直觉');
INSERT INTO `voc` VALUES ('424', 'gallon', ' n. 加仑(容量单位)');
INSERT INTO `voc` VALUES ('425', 'gate', ' n. 大门');
INSERT INTO `voc` VALUES ('426', 'clay', ' n. 粘土,泥土');
INSERT INTO `voc` VALUES ('427', 'January', ' n. 一月');
INSERT INTO `voc` VALUES ('428', 'ashamed', ' adj. 感到惭愧,感到害臊,因为羞耻或勉强作某事');
INSERT INTO `voc` VALUES ('429', 'fatal', ' adj. 致命的, 毁灭性的, 决定性的');
INSERT INTO `voc` VALUES ('430', 'persuade', ' v. 说服 vt. 劝说,说服');
INSERT INTO `voc` VALUES ('431', 'virtue', ' n. 美德,优点;贞操');
INSERT INTO `voc` VALUES ('432', 'testimony', ' n. 证言,证据');
INSERT INTO `voc` VALUES ('433', 'replacement', ' n. 交换,更换,代替者');
INSERT INTO `voc` VALUES ('434', 'strategy', ' n. 战略, 策略');
INSERT INTO `voc` VALUES ('435', 'elephant', ' n. 大象, 庞大笨拙难处理的事物');
INSERT INTO `voc` VALUES ('436', 'early', ' adv.&amp;amp;adj. 早');
INSERT INTO `voc` VALUES ('437', 'compensate', ' vt. &amp;vi. 偿还,补偿,付报酬');
INSERT INTO `voc` VALUES ('438', 'audience', ' n. 听众, 观众, 读者, 拥护者, 倾听, 正式会见');
INSERT INTO `voc` VALUES ('439', 'dubious', ' adj. 怀疑的,可疑的');
INSERT INTO `voc` VALUES ('440', 'lonely', ' adj. 孤独的,寂寞的,荒凉的');
INSERT INTO `voc` VALUES ('441', 'proceed', ' vi. 继续进行; 开始, 着手');
INSERT INTO `voc` VALUES ('442', 'pea', ' n. 豌豆');
INSERT INTO `voc` VALUES ('443', 'behave', ' vt. &amp;vi. 举止,行为,举止端正');
INSERT INTO `voc` VALUES ('444', 'amid', ' prep. 在其间,在其中');
INSERT INTO `voc` VALUES ('445', 'poultry', ' n. 家禽');
INSERT INTO `voc` VALUES ('446', 'occur', ' vi.发生； 出现； 闪现');
INSERT INTO `voc` VALUES ('447', 'identical', ' adj. 相同的,同一的');
INSERT INTO `voc` VALUES ('448', 'coupon', ' n. 试样(配给票, 息票, 附单)');
INSERT INTO `voc` VALUES ('449', 'spelling', ' n. 拼法, 拼写');
INSERT INTO `voc` VALUES ('450', 'spontaneous', ' adj. 自发的, 自然产生的');
INSERT INTO `voc` VALUES ('451', 'consult', ' v. 商讨,向...请教,查阅');
INSERT INTO `voc` VALUES ('452', 'every', ' adj. 每,每个,每隔...的');
INSERT INTO `voc` VALUES ('453', 'landlady', ' n. 女房东');
INSERT INTO `voc` VALUES ('454', 'sister', ' n. 姐妹，护士长');
INSERT INTO `voc` VALUES ('455', 'historic', ' adj. 有历史意义的');
INSERT INTO `voc` VALUES ('456', 'insurance', ' n. 保险');
INSERT INTO `voc` VALUES ('457', 'suspicion', ' n. 猜疑,怀疑');
INSERT INTO `voc` VALUES ('458', 'enroll', ' vt. &amp;vi. 登记,使加入,卷起');
INSERT INTO `voc` VALUES ('459', 'hostess', ' n. 女主人');
INSERT INTO `voc` VALUES ('460', 'know', ' vt. &amp;vi.知道,了解,认识');
INSERT INTO `voc` VALUES ('461', 'magnetic', ' adj. 有磁性的,有吸引力的,催眠术的');
INSERT INTO `voc` VALUES ('462', 'wool', ' n. 毛线,毛织品,羊毛');
INSERT INTO `voc` VALUES ('463', 'interfere', ' vi. 妨碍,冲突,干涉');
INSERT INTO `voc` VALUES ('464', 'redundant', ' adj. 多余的,失业的');
INSERT INTO `voc` VALUES ('465', 'theme', ' n. 题目, 主题');
INSERT INTO `voc` VALUES ('466', 'deadline', ' n. (鉴于边上的)警戒线,最后期限,截止时间');
INSERT INTO `voc` VALUES ('467', 'manner', ' n. 样子,礼貌,风格,方式');
INSERT INTO `voc` VALUES ('468', 'obvious', ' adj. 明显的,显而易见的');
INSERT INTO `voc` VALUES ('469', 'preferable', ' adj. 更好的, 更合意的');
INSERT INTO `voc` VALUES ('470', 'tissue', ' n. (动、植物的)组织,薄的纱织品，餐巾纸,手巾纸');
INSERT INTO `voc` VALUES ('471', 'superb', ' adj. 极好的');
INSERT INTO `voc` VALUES ('472', 'therapy', ' n. 疗法,治疗');
INSERT INTO `voc` VALUES ('473', 'respective', ' adj. 各自的, 分别的');
INSERT INTO `voc` VALUES ('474', 'valley', ' n. 山谷；流域；溪谷');
INSERT INTO `voc` VALUES ('475', 'equator', ' n. 赤道');
INSERT INTO `voc` VALUES ('476', 'herself', ' pron. 她自己');
INSERT INTO `voc` VALUES ('477', 'hostile', ' adj. 怀敌意的,敌对的');
INSERT INTO `voc` VALUES ('478', 'ambulance', ' n. 救护车');
INSERT INTO `voc` VALUES ('479', 'define', ' vt. 定义, 解释');
INSERT INTO `voc` VALUES ('480', 'sunrise', ' n. 日出');
INSERT INTO `voc` VALUES ('481', 'qualification', ' n. 资格, 条件, 限制');
INSERT INTO `voc` VALUES ('482', 'tanker', ' n. 油轮，坦克中一员');
INSERT INTO `voc` VALUES ('483', 'privacy', ' n. 隐私, 隐居, 秘密');
INSERT INTO `voc` VALUES ('484', 'arrival', ' n. 到达,达到,到达者');
INSERT INTO `voc` VALUES ('485', 'necklace', ' n. 项链');
INSERT INTO `voc` VALUES ('486', 'ruthless', ' adj. 残忍的, 无情的');
INSERT INTO `voc` VALUES ('487', 'foreigner', ' n. 外国人');
INSERT INTO `voc` VALUES ('488', 'largely', ' adv. 大部分, 主要地');
INSERT INTO `voc` VALUES ('489', 'orchestra', ' n. 管弦乐队');
INSERT INTO `voc` VALUES ('490', 'additional', ' adj. 附加的, 另外的');
INSERT INTO `voc` VALUES ('491', 'president', ' n. (国家)总统,(公司)总裁,总经理,社长(日本)');
INSERT INTO `voc` VALUES ('492', 'enormous', ' adj. 巨大的, 庞大的');
INSERT INTO `voc` VALUES ('493', 'geometry', ' n. 几何,几何学');
INSERT INTO `voc` VALUES ('494', 'millimeter', ' n. 毫米');
INSERT INTO `voc` VALUES ('495', 'continual', ' adj. 不断的, 频繁的');
INSERT INTO `voc` VALUES ('496', 'delivery', ' n. 递送, 交付, 分娩');
INSERT INTO `voc` VALUES ('497', 'meditation', ' n. 沉思,冥想');
INSERT INTO `voc` VALUES ('498', 'condense', ' v. 浓缩, 摘要, 缩短');
INSERT INTO `voc` VALUES ('499', 'metaphor', ' n. 隐喻,暗喻');
INSERT INTO `voc` VALUES ('500', 'democratic', ' adj. 民主的, 大众的, 平等的');
INSERT INTO `voc` VALUES ('501', 'reception', ' n. 接待,招待会,接收,欢迎,接受');
INSERT INTO `voc` VALUES ('502', 'invention', ' n. 发明,发明物,虚构,虚构物');
INSERT INTO `voc` VALUES ('503', 'stability', ' n. 稳定性,居于修道院');
INSERT INTO `voc` VALUES ('504', 'agenda', ' n. 议事日程');
INSERT INTO `voc` VALUES ('505', 'spacious', ' adj. 广阔的, 宽敞的');
INSERT INTO `voc` VALUES ('506', 'violence', ' n. 暴力,狂热');
INSERT INTO `voc` VALUES ('507', 'cite', ' vt. 引用,引证,传讯,嘉奖');
INSERT INTO `voc` VALUES ('508', 'presence', ' n. 出席,在场者,举止');
INSERT INTO `voc` VALUES ('509', 'lively', 'adj. 活泼的, 活跃的, 栩栩如生的, 真实的');
INSERT INTO `voc` VALUES ('510', 'perplex', ' v. 使...困惑, 使...更复杂, 使...为难');
INSERT INTO `voc` VALUES ('511', 'lunar', ' adj. 月亮的,阴历的,银的');
INSERT INTO `voc` VALUES ('512', 'web', ' n. 网');
INSERT INTO `voc` VALUES ('513', 'gracious', ' adj. 亲切的, 高尚的');
INSERT INTO `voc` VALUES ('514', 'institution', ' n. 机构,惯例,创立');
INSERT INTO `voc` VALUES ('515', 'contaminate', ' vt. 弄脏,污染');
INSERT INTO `voc` VALUES ('516', 'viewpoint', ' n. 观点, 看法');
INSERT INTO `voc` VALUES ('517', 'political', ' adj. 政治的, 政党的, 派系斗争的, 有政治头脑的');
INSERT INTO `voc` VALUES ('518', 'analogy', ' n. 相似,类似，类比');
INSERT INTO `voc` VALUES ('519', 'vase', ' n. 花瓶');
INSERT INTO `voc` VALUES ('520', 'opportunity', ' n. 机会, 时机');
INSERT INTO `voc` VALUES ('521', 'betray', ' vt. 误导,出卖,背叛,泄露 vi. 证明...错误');
INSERT INTO `voc` VALUES ('522', 'trademark', ' n. 商标');
INSERT INTO `voc` VALUES ('523', 'republic', ' n. 共和国,共和政体');
INSERT INTO `voc` VALUES ('524', 'physicist', ' n. 物理学家，自然科学家');
INSERT INTO `voc` VALUES ('525', 'nineteen', ' 十九');
INSERT INTO `voc` VALUES ('526', 'tradition', ' n. 传统, 惯例');
INSERT INTO `voc` VALUES ('527', 'obedience', ' n. 服从, 顺从');
INSERT INTO `voc` VALUES ('528', 'waken', ' v. 唤醒, 醒来');
INSERT INTO `voc` VALUES ('529', 'pathetic', ' adj. 可怜的，悲哀的；感伤的；乏味的');
INSERT INTO `voc` VALUES ('530', 'reliable', ' adj. 可靠的,可信的');
INSERT INTO `voc` VALUES ('531', 'food', ' n. 食物');
INSERT INTO `voc` VALUES ('532', 'tennis', ' n. 网球');
INSERT INTO `voc` VALUES ('533', 'magnitude', ' n.巨大，广大； 重大，重要； 量级； （地震）级数');
INSERT INTO `voc` VALUES ('534', 'path', ' n.小路，路； 路线，路程； 〈比喻〉（人生的）道路； （思想，行为，生活的）途径');
INSERT INTO `voc` VALUES ('535', 'vague', ' adj. 模糊的,不明确的,说话含糊不清的,茫然的');
INSERT INTO `voc` VALUES ('536', 'layman', ' n. 俗人(对僧侣而言), 门外汉');
INSERT INTO `voc` VALUES ('537', 'foundation', ' n. 基础；地基；基金会；根据；创立');
INSERT INTO `voc` VALUES ('538', 'descendant', ' n. 子孙, 后代');
INSERT INTO `voc` VALUES ('539', 'guilt', ' n. 罪行, 内疚');
INSERT INTO `voc` VALUES ('540', 'obsolete', ' adj. 已废弃的, 过时的');
INSERT INTO `voc` VALUES ('541', 'pray', ' vt. &amp;vi. 祈祷, 恳求');
INSERT INTO `voc` VALUES ('542', 'stadium', ' n. 露天体育场,竞技场');
INSERT INTO `voc` VALUES ('543', 'odds', ' n. 让步,机率,可能性,比率,胜败优劣之别');
INSERT INTO `voc` VALUES ('544', 'equation', ' n. 相等,方程(式),等式,均衡');
INSERT INTO `voc` VALUES ('545', 'nutrition', ' n. 营养');
INSERT INTO `voc` VALUES ('546', 'costly', ' adj. 昂贵的，代价高的');
INSERT INTO `voc` VALUES ('547', 'customer', ' n. 顾客，家伙');
INSERT INTO `voc` VALUES ('548', 'evacuate', ' vt. &amp;vi. 疏散, 撤出, 排泄');
INSERT INTO `voc` VALUES ('549', 'transcend', ' v. 超越');
INSERT INTO `voc` VALUES ('550', 'nephew', ' n. 侄子,外甥');
INSERT INTO `voc` VALUES ('551', 'fireman', ' n. 消防队员，司炉工');
INSERT INTO `voc` VALUES ('552', 'marriage', ' n. 婚姻,结婚');
INSERT INTO `voc` VALUES ('553', 'scholarship', ' n. 奖学金, 学问, 学识');
INSERT INTO `voc` VALUES ('554', 'chancellor', ' n. 英大臣(使馆秘书, 首相)');
INSERT INTO `voc` VALUES ('555', 'beverage', ' n. 饮料');
INSERT INTO `voc` VALUES ('556', 'membership', ' n. 成员资格,会员全体，从属关系');
INSERT INTO `voc` VALUES ('557', 'skyscraper', ' n. 摩天大楼');
INSERT INTO `voc` VALUES ('558', 'waterfall', ' n. 瀑布');
INSERT INTO `voc` VALUES ('559', 'contrive', ' vt. 1. (不顾困难地)促成某事2. 巧妙地策划；精巧地制造（如机器） vi. 1. (不顾困难而) 设法做到(正式)');
INSERT INTO `voc` VALUES ('560', 'speaker', ' n. 说话者, 发言者, 说某种语言者, 扬声器');
INSERT INTO `voc` VALUES ('561', 'siren', ' n. 汽笛, 警报器');
INSERT INTO `voc` VALUES ('562', 'eighteen', ' num. 十八');
INSERT INTO `voc` VALUES ('563', 'diploma', ' n. 文凭');
INSERT INTO `voc` VALUES ('564', 'obligation', ' n. 义务, 责任');
INSERT INTO `voc` VALUES ('565', 'realistic', ' adj. 现实的, 现实主义的');
INSERT INTO `voc` VALUES ('566', 'enthusiasm', ' n. 热心，热忱，热情');
INSERT INTO `voc` VALUES ('567', 'his', ' pron. 他的');
INSERT INTO `voc` VALUES ('568', 'elsewhere', ' adv. 在别处, 到别处');
INSERT INTO `voc` VALUES ('569', 'naked', ' adj. 裸体的,无掩饰的,明白的,手无寸铁的');
INSERT INTO `voc` VALUES ('570', 'error', ' n. 错误, 过失');
INSERT INTO `voc` VALUES ('571', 'luggage', ' n. 行李');
INSERT INTO `voc` VALUES ('572', 'you', ' pron. 你,你们');
INSERT INTO `voc` VALUES ('573', 'hypothesis', ' n. 假设, 猜测, 前提');
INSERT INTO `voc` VALUES ('574', 'simultaneous', ' adj. 同时发生的,同步的');
INSERT INTO `voc` VALUES ('575', 'ahead', ' adv. 向前地,将来地,占优势,提前');
INSERT INTO `voc` VALUES ('576', 'identity', ' n. 身份,一致，特征');
INSERT INTO `voc` VALUES ('577', 'moisture', ' n. 潮湿,湿气');
INSERT INTO `voc` VALUES ('578', 'treaty', ' n. 条约, 协定');
INSERT INTO `voc` VALUES ('579', 'injury', ' n. 受伤处,损害,伤害');
INSERT INTO `voc` VALUES ('580', 'giggle', ' v. 吃吃地笑, 格格地笑');
INSERT INTO `voc` VALUES ('581', 'wolf', ' n. 狼');
INSERT INTO `voc` VALUES ('582', 'impressive', ' adj. 给人深刻印象的');
INSERT INTO `voc` VALUES ('583', 'leadership', ' n. 领导, 领导才干');
INSERT INTO `voc` VALUES ('584', 'action', ' n. 起诉，行为，作用，情节,活动');
INSERT INTO `voc` VALUES ('585', 'fiber', ' n. 纤维(物质),力量');
INSERT INTO `voc` VALUES ('586', 'mechanism', ' n. 机制,原理，机械,机构,结构');
INSERT INTO `voc` VALUES ('587', 'adverse', ' adj. 不利的；有害的；反面的');
INSERT INTO `voc` VALUES ('588', 'librarian', ' n. 图书管理员');
INSERT INTO `voc` VALUES ('589', 'fable', ' n. 寓言');
INSERT INTO `voc` VALUES ('590', 'argument', ' n. 辩论,争论,论点(据),理由');
INSERT INTO `voc` VALUES ('591', 'poverty', ' n. 贫穷,贫困');
INSERT INTO `voc` VALUES ('592', 'guilty', ' adj. 有罪的, 内疚的');
INSERT INTO `voc` VALUES ('593', 'quantitative', ' adj. 数量的,定量的');
INSERT INTO `voc` VALUES ('594', 'substance', ' n. 物质,实质,内容,重要性,财产');
INSERT INTO `voc` VALUES ('595', 'platform', ' n. 平台,月台,讲台,坛,计划');
INSERT INTO `voc` VALUES ('596', 'agony', ' n. (极度的)痛苦,创痛');
INSERT INTO `voc` VALUES ('597', 'Easter', ' n. 复活节');
INSERT INTO `voc` VALUES ('598', 'analytic', ' adj. 分析的,分解的');
INSERT INTO `voc` VALUES ('599', 'banana', ' n. 香蕉');
INSERT INTO `voc` VALUES ('600', 'madame', ' n. 夫人');
INSERT INTO `voc` VALUES ('601', 'twice', ' adv. 两倍, 两次');
INSERT INTO `voc` VALUES ('602', 'library', ' n. 图书馆, 藏书');
INSERT INTO `voc` VALUES ('603', 'anyone', ' pron. 任何人');
INSERT INTO `voc` VALUES ('604', 'replace', ' vt. 取代,更换');
INSERT INTO `voc` VALUES ('605', 'accomplish', ' vt. 完成');
INSERT INTO `voc` VALUES ('606', 'bandage', ' n. 绷带');
INSERT INTO `voc` VALUES ('607', 'pig', ' n. 猪');
INSERT INTO `voc` VALUES ('608', 'subsequent', ' adj. 随后的,后来的');
INSERT INTO `voc` VALUES ('609', 'contribution', ' n. 贡献,捐款(赠)');
INSERT INTO `voc` VALUES ('610', 'frequency', ' n.&amp;amp;adj. 频繁,频率');
INSERT INTO `voc` VALUES ('611', 'salute', ' v. 行礼, 致意, 问候');
INSERT INTO `voc` VALUES ('612', 'movement', ' n. 活动,运动,动作,移动');
INSERT INTO `voc` VALUES ('613', 'whether', ' conj.&amp;amp;adv. 是否');
INSERT INTO `voc` VALUES ('614', 'invaluable', ' adj. 无价的');
INSERT INTO `voc` VALUES ('615', 'senate', ' n. 参议院,上议院');
INSERT INTO `voc` VALUES ('616', 'dignity', ' n. 尊严, 高贵, 端庄');
INSERT INTO `voc` VALUES ('617', 'door', ' n. 门');
INSERT INTO `voc` VALUES ('618', 'twelve', ' adj. 十二,12,12');
INSERT INTO `voc` VALUES ('619', 'altitude', ' n. 高度,海拔,高地');
INSERT INTO `voc` VALUES ('620', 'shopkeeper', ' n. 店主，零售商人');
INSERT INTO `voc` VALUES ('621', 'indignant', ' adj. 愤慨的, 愤愤不平的');
INSERT INTO `voc` VALUES ('622', 'version', ' n. 版本, 说法，翻译');
INSERT INTO `voc` VALUES ('623', 'endurance', ' n. 忍耐, 忍耐力, 耐性');
INSERT INTO `voc` VALUES ('624', 'scissors', ' n. 剪刀');
INSERT INTO `voc` VALUES ('625', 'dominate', ' v. 支配, 占优势，俯视');
INSERT INTO `voc` VALUES ('626', 'news', ' n. 新闻, 消息');
INSERT INTO `voc` VALUES ('627', 'fortunate', ' adj. 幸运的,侥幸的');
INSERT INTO `voc` VALUES ('628', 'lion', ' n. 狮子');
INSERT INTO `voc` VALUES ('629', 'physics', ' n. 物理学');
INSERT INTO `voc` VALUES ('630', 'unexpected', ' adj. 想不到的, 意外的');
INSERT INTO `voc` VALUES ('631', 'collection', ' n. 收藏品,收集物,小组,集合');
INSERT INTO `voc` VALUES ('632', 'could', ' aux.“can”的过去式； 能够，打算； 用于假设语气的条件句； 用于虚拟语气的结论句');
INSERT INTO `voc` VALUES ('633', 'bowling', ' n. 保龄球');
INSERT INTO `voc` VALUES ('634', 'uncle', ' n. 伯, 姑父, 舅, 叔, 姨父');
INSERT INTO `voc` VALUES ('635', 'fantastic', ' adj. 极好的,难以相信的,奇异的,幻想的');
INSERT INTO `voc` VALUES ('636', 'breadth', ' n. 宽度');
INSERT INTO `voc` VALUES ('637', 'operation', ' n. 手术, 行动，活动, 操作');
INSERT INTO `voc` VALUES ('638', 'entity', ' n. 存在,实体');
INSERT INTO `voc` VALUES ('639', 'undertake', ' vt. 从事,保证');
INSERT INTO `voc` VALUES ('640', 'ash', ' n. 灰, 灰烬');
INSERT INTO `voc` VALUES ('641', 'interact', ' vi. 相互作用,相互影响');
INSERT INTO `voc` VALUES ('642', 'ownership', ' n. 所有权');
INSERT INTO `voc` VALUES ('643', 'faithful', ' adj. 如实的, 忠诚的, 忠实的');
INSERT INTO `voc` VALUES ('644', 'growth', ' n. 生长, 增长, 生长物');
INSERT INTO `voc` VALUES ('645', 'provoke', ' vt. 激怒, 惹起, 驱使');
INSERT INTO `voc` VALUES ('646', 'operator', ' n. 操作员,管理者,技工,报务员');
INSERT INTO `voc` VALUES ('647', 'construction', ' n. 建设，建造，结构，构造');
INSERT INTO `voc` VALUES ('648', 'inference', ' n. 推理,推论');
INSERT INTO `voc` VALUES ('649', 'youth', ' n. 年轻人, 年轻');
INSERT INTO `voc` VALUES ('650', 'reputation', ' n. 声誉,好名声');
INSERT INTO `voc` VALUES ('651', 'competent', ' adj. 有能力的,胜任的,足够的');
INSERT INTO `voc` VALUES ('652', 'urban', ' adj. 城市的');
INSERT INTO `voc` VALUES ('653', 'composition', ' n. 作文,著作,组织,合成物，成份');
INSERT INTO `voc` VALUES ('654', 'oath', ' n. 誓言,誓约,咒骂语');
INSERT INTO `voc` VALUES ('655', 'fee', ' n. 费用,封地');
INSERT INTO `voc` VALUES ('656', 'immense', ' adj. 巨大的,广大的,非常好的');
INSERT INTO `voc` VALUES ('657', 'nearly', ' adv. 几乎, 差不多');
INSERT INTO `voc` VALUES ('658', 'courtyard', ' n. 庭院, 院子');
INSERT INTO `voc` VALUES ('659', 'robot', ' n. 机器人');
INSERT INTO `voc` VALUES ('660', 'coalition', ' n. 结合, 合并, 联合');
INSERT INTO `voc` VALUES ('661', 'ignorant', ' adj. 不知道的, 无知的, 愚昧的');
INSERT INTO `voc` VALUES ('662', 'cigar', ' n. 雪茄烟');
INSERT INTO `voc` VALUES ('663', 'slippery', ' adj. 滑的');
INSERT INTO `voc` VALUES ('664', 'plenty', ' n. 充足,大量');
INSERT INTO `voc` VALUES ('665', 'creature', ' n. 生物, 动物, 人');
INSERT INTO `voc` VALUES ('666', 'correspond', ' vi. 符合,通信,相当');
INSERT INTO `voc` VALUES ('667', 'continent', ' n. 大陆, 洲, (the Continent)欧洲大陆');
INSERT INTO `voc` VALUES ('668', 'investment', ' n. 投资,投入,投资额');
INSERT INTO `voc` VALUES ('669', 'minute', ' adj. 微小的,不重要的,详细的 n. 分钟,一会儿,会议记录 vt. 记录');
INSERT INTO `voc` VALUES ('670', 'mayor', ' n. 市长');
INSERT INTO `voc` VALUES ('671', 'chronic', ' adj. 长期的,慢性的,惯常的');
INSERT INTO `voc` VALUES ('672', 'cyberspace', ' 电脑空间');
INSERT INTO `voc` VALUES ('673', 'lemon', ' n. 柠檬');
INSERT INTO `voc` VALUES ('674', 'camera', ' n. 摄像机,照相机');
INSERT INTO `voc` VALUES ('675', 'courage', ' n. 勇气');
INSERT INTO `voc` VALUES ('676', 'repay', ' v. 偿还,报答，还钱给');
INSERT INTO `voc` VALUES ('677', 'thereby', ' adv. 因此,从而');
INSERT INTO `voc` VALUES ('678', 'mutual', ' adj. 共同的,相互的');
INSERT INTO `voc` VALUES ('679', 'verb', ' n. 动词');
INSERT INTO `voc` VALUES ('680', 'mercy', ' n. 怜悯, 宽恕, 仁慈, 恩惠, 幸运');
INSERT INTO `voc` VALUES ('681', 'headquarters', ' n. 司令部,指挥部,总部');
INSERT INTO `voc` VALUES ('682', 'painter', ' n. 画家');
INSERT INTO `voc` VALUES ('683', 'expenditure', ' n. (时间、劳力、金钱等)支出,使用,消耗');
INSERT INTO `voc` VALUES ('684', 'globe', ' n. 地球, 地球仪, 球体');
INSERT INTO `voc` VALUES ('685', 'apt', ' adj. 恰当的；有…倾向的；灵敏的');
INSERT INTO `voc` VALUES ('686', 'comprehensive', ' adj. 综合的, 广泛的, 理解的');
INSERT INTO `voc` VALUES ('687', 'improvement', ' n. 改进, 改善');
INSERT INTO `voc` VALUES ('688', 'mourn', ' v. 哀悼, 忧伤, 服丧');
INSERT INTO `voc` VALUES ('689', 'alleviate', ' vt. 减轻,使...缓和');
INSERT INTO `voc` VALUES ('690', 'student', ' n. 学生');
INSERT INTO `voc` VALUES ('691', 'landlord', ' n. 地主, 房东');
INSERT INTO `voc` VALUES ('692', 'in', ' prep. 在,在...之内, 穿着,（表示状态或状况）,参与，在…方面');
INSERT INTO `voc` VALUES ('693', 'cruel', ' adj. 残酷的, 残忍的, 引起痛苦的');
INSERT INTO `voc` VALUES ('694', 'salvation', ' n. 得救,拯救,赎罪');
INSERT INTO `voc` VALUES ('695', 'medical', ' adj. 医疗的,医学的,药物的,需治疗的');
INSERT INTO `voc` VALUES ('696', 'statistical', ' adj. 统计的, 统计学的');
INSERT INTO `voc` VALUES ('697', 'delicious', ' adj. 可口的, 美味的');
INSERT INTO `voc` VALUES ('698', 'beware', ' v. 小心, 谨防');
INSERT INTO `voc` VALUES ('699', 'fourteen', ' num. 十四');
INSERT INTO `voc` VALUES ('700', 'bless', ' vt. 赐福,祈佑,称颂上帝,使神圣,赋予');
INSERT INTO `voc` VALUES ('701', 'our', ' pron. 我们的');
INSERT INTO `voc` VALUES ('702', 'sorry', ' adj.对不起的； 无价值的，低等的； 遗憾的； 感到伤心的');
INSERT INTO `voc` VALUES ('703', 'quench', ' v. 熄减, 结束, 冷浸, 解渴');
INSERT INTO `voc` VALUES ('704', 'input', ' n. 输入');
INSERT INTO `voc` VALUES ('705', 'aisle', ' n. (席位间的)通道, 侧廊');
INSERT INTO `voc` VALUES ('706', 'conservation', ' n. 保存, 防止流失, 守恒, 保护自然资源');
INSERT INTO `voc` VALUES ('707', 'laser', ' n. 激光');
INSERT INTO `voc` VALUES ('708', 'ugly', ' adj. 丑陋的, 难看的');
INSERT INTO `voc` VALUES ('709', 'classification', ' n. 分类,分级');
INSERT INTO `voc` VALUES ('710', 'ever', ' adv. 曾经, 永远, 究竟');
INSERT INTO `voc` VALUES ('711', 'porch', ' n. 门廊');
INSERT INTO `voc` VALUES ('712', 'conscience', ' n. 良心, 责任心, 顾忌');
INSERT INTO `voc` VALUES ('713', 'sob', ' n.&amp; v. 呜咽, 哭泣');
INSERT INTO `voc` VALUES ('714', 'tribe', ' n. 部落,种族,一伙人');
INSERT INTO `voc` VALUES ('715', 'straightforward', ' adj. 笔直的, 率直的');
INSERT INTO `voc` VALUES ('716', 'plausible', ' adj. 似真实的,似合理的,说得蛮像回事的');
INSERT INTO `voc` VALUES ('717', 'beauty', ' n. 美,美丽,美人,美的东西');
INSERT INTO `voc` VALUES ('718', 'literacy', ' n. 读写能力，识字');
INSERT INTO `voc` VALUES ('719', 'anonymous', ' adj. 匿名的,无名的,没特色的');
INSERT INTO `voc` VALUES ('720', 'nationality', ' n. 国籍,民族');
INSERT INTO `voc` VALUES ('721', 'weekday', ' n. 工作日');
INSERT INTO `voc` VALUES ('722', 'industry', ' n. 工业,产业,勤勉,刻苦');
INSERT INTO `voc` VALUES ('723', 'imaginary', ' adj. 想象的, 虚构的');
INSERT INTO `voc` VALUES ('724', 'hamburger', ' n. 汉堡包');
INSERT INTO `voc` VALUES ('725', 'fearful', ' adj. 担心的, 可怕的');
INSERT INTO `voc` VALUES ('726', 'atmosphere', ' n. 大气, 气氛，空气, 格调, 情趣, 气压');
INSERT INTO `voc` VALUES ('727', 'balcony', ' n. 阳台');
INSERT INTO `voc` VALUES ('728', 'gigantic', ' adj. 巨大的');
INSERT INTO `voc` VALUES ('729', 'daytime', ' n. 白天, 日间');
INSERT INTO `voc` VALUES ('730', 'existence', ' n. 存在, 生存');
INSERT INTO `voc` VALUES ('731', 'spine', ' n. 背骨, 脊柱, 尖刺');
INSERT INTO `voc` VALUES ('732', 'colleague', ' n. 同事');
INSERT INTO `voc` VALUES ('733', 'actual', ' adj. 实际的,真实的');
INSERT INTO `voc` VALUES ('734', 'cottage', ' n. 村舍, 小屋，小别墅');
INSERT INTO `voc` VALUES ('735', 'missile', ' n. 导弹,投射物');
INSERT INTO `voc` VALUES ('736', 'tolerant', ' adj. 宽容的, 容忍的');
INSERT INTO `voc` VALUES ('737', 'town', ' n. 城镇,城市');
INSERT INTO `voc` VALUES ('738', 'critic', ' n. 批评家, 评论家');
INSERT INTO `voc` VALUES ('739', 'confidential', ' adj. 机密的,获他人信赖的,易于信任他人的');
INSERT INTO `voc` VALUES ('740', 'liberty', ' n. 自由；许可；冒失');
INSERT INTO `voc` VALUES ('741', 'overhear', ' v. 无意中听到, 偷听');
INSERT INTO `voc` VALUES ('742', 'symmetry', ' n. 对称(性), 匀称, 整齐');
INSERT INTO `voc` VALUES ('743', 'obstruction', ' n. 障碍, 妨碍, 闭塞');
INSERT INTO `voc` VALUES ('744', 'persuasion', ' n. 说服，劝说，信念');
INSERT INTO `voc` VALUES ('745', 'loyalty', ' n. 忠诚, 忠心');
INSERT INTO `voc` VALUES ('746', 'rod', ' n. 杆,戒鞭,测量杆,视网膜,杆状菌');
INSERT INTO `voc` VALUES ('747', 'patron', ' n. 赞助人, 保护人, 老主顾');
INSERT INTO `voc` VALUES ('748', 'chain', 'n. n. 链,连锁,束缚');
INSERT INTO `voc` VALUES ('749', 'college', ' n. 学院, 学校，社团，枢机主教团');
INSERT INTO `voc` VALUES ('750', 'invade', ' vt. 侵略,侵害,拥入');
INSERT INTO `voc` VALUES ('751', 'borrow', ' v. 借, 借入, 借用');
INSERT INTO `voc` VALUES ('752', 'furious', ' adj. 狂怒的, 猛烈的');
INSERT INTO `voc` VALUES ('753', 'customary', ' adj. 习惯的, 惯例的');
INSERT INTO `voc` VALUES ('754', 'technical', ' adj. 工艺的, 技术的');
INSERT INTO `voc` VALUES ('755', 'department', ' n. 部,部门,系');
INSERT INTO `voc` VALUES ('756', 'entire', ' adj. 全部的,完整的，同性质的，纯正的，全面的');
INSERT INTO `voc` VALUES ('757', 'outbreak', ' n. 爆发');
INSERT INTO `voc` VALUES ('758', 'clothes', ' n. 衣服');
INSERT INTO `voc` VALUES ('759', 'auditorium', ' n. 礼堂，观众席');
INSERT INTO `voc` VALUES ('760', 'away', ' adv. 远离,离开,出去,连续的,遥远地');
INSERT INTO `voc` VALUES ('761', 'gratitude', ' n. 感谢的心情');
INSERT INTO `voc` VALUES ('762', 'statue', ' n. 塑像,雕像');
INSERT INTO `voc` VALUES ('763', 'surpass', ' vt. 超越,凌驾,胜过');
INSERT INTO `voc` VALUES ('764', 'acute', ' adj.尖的，锐的； 敏锐的，敏感的； 严重的，剧烈的； [医]急性的, 激烈的, 尖锐的');
INSERT INTO `voc` VALUES ('765', 'economy', ' n.节约； 经济； 理财； 秩序');
INSERT INTO `voc` VALUES ('766', 'collision', ' n. 碰撞, 冲突');
INSERT INTO `voc` VALUES ('767', 'exaggerate', ' vt. &amp;vi. 夸大,夸张');
INSERT INTO `voc` VALUES ('768', 'invasion', ' n. 侵入, 侵略');
INSERT INTO `voc` VALUES ('769', 'embark', ' vt. &amp;vi. 乘船,着手,从事');
INSERT INTO `voc` VALUES ('770', 'dentist', ' n. 牙科医生');
INSERT INTO `voc` VALUES ('771', 'appetite', ' n. 爱好,嗜好,食欲,胃口,欲望');
INSERT INTO `voc` VALUES ('772', 'feminine', ' adj. 女性的');
INSERT INTO `voc` VALUES ('773', 'agency', ' n. 代理,代理处,政府机构');
INSERT INTO `voc` VALUES ('774', 'encyclopedia', ' n. 百科全书');
INSERT INTO `voc` VALUES ('775', 'retain', ' vt. 保持, 保留; 记住');
INSERT INTO `voc` VALUES ('776', 'mysterious', ' adj. 神秘的,不可思议的');
INSERT INTO `voc` VALUES ('777', 'feasible', ' adj. 可行的,可能的');
INSERT INTO `voc` VALUES ('778', 'artistic', ' adj. 艺术的');
INSERT INTO `voc` VALUES ('779', 'preference', ' n. 偏爱,优先,喜爱物');
INSERT INTO `voc` VALUES ('780', 'scene', ' n. 场,景,情景');
INSERT INTO `voc` VALUES ('781', 'foresee', ' v. 预见, 预知');
INSERT INTO `voc` VALUES ('782', 'chemist', ' n. 化学家, 药剂师');
INSERT INTO `voc` VALUES ('783', 'scrutiny', ' n. 详细审查；监视；细看；选票复查');
INSERT INTO `voc` VALUES ('784', 'avenue', ' n. 林荫道, 大街, 途径手段');
INSERT INTO `voc` VALUES ('785', 'evolve', ' vt. &amp;vi. 进展,进化,展开');
INSERT INTO `voc` VALUES ('786', 'incredible', ' adj. 难以置信的, 惊人的');
INSERT INTO `voc` VALUES ('787', 'textbook', ' n. 课本, 教科书');
INSERT INTO `voc` VALUES ('788', 'expel', ' vt. 驱逐,逐出,开除');
INSERT INTO `voc` VALUES ('789', 'memo', ' n. 备忘录');
INSERT INTO `voc` VALUES ('790', 'bulb', ' n. 电灯泡,球状物');
INSERT INTO `voc` VALUES ('791', 'facilitate', ' vt. 帮助, 使...容易, 促进');
INSERT INTO `voc` VALUES ('792', 'irritate', ' vt.&amp; vi. 激怒,使...发怒, 使疼痛或发炎');
INSERT INTO `voc` VALUES ('793', 'monotonous', ' adj. 单调的');
INSERT INTO `voc` VALUES ('794', 'mosquito', ' n. 蚊子');
INSERT INTO `voc` VALUES ('795', 'persecute', ' vt. 迫害');
INSERT INTO `voc` VALUES ('796', 'dense', ' adj. 不易看透的, 密集的, 浓厚的, 愚钝的');
INSERT INTO `voc` VALUES ('797', 'monetary', ' adj. 货币的,金融的');
INSERT INTO `voc` VALUES ('798', 'prevalent', ' adj. 流行的, 普遍的');
INSERT INTO `voc` VALUES ('799', 'campus', ' n. (大学)校园');
INSERT INTO `voc` VALUES ('800', 'sometimes', ' adv. 有时');
INSERT INTO `voc` VALUES ('801', 'indignation', ' n. 愤怒, 愤慨, 义愤');
INSERT INTO `voc` VALUES ('802', 'misery', ' n. 痛苦,悲惨的境遇,苦难');
INSERT INTO `voc` VALUES ('803', 'novelty', ' n. 新奇,新奇的事物,小装饰');
INSERT INTO `voc` VALUES ('804', 'sensation', ' n. 感觉,感知力,激动,轰动');
INSERT INTO `voc` VALUES ('805', 'cemetery', ' n. 公墓,墓地');
INSERT INTO `voc` VALUES ('806', 'barber', ' n. 理发师');
INSERT INTO `voc` VALUES ('807', 'salad', ' n. 色拉,凉拌生菜,杂烩');
INSERT INTO `voc` VALUES ('808', 'constitution', ' n.建立，组成； 体格； 构成方式； 宪法');
INSERT INTO `voc` VALUES ('809', 'logical', ' adj. 符合逻辑的,逻辑上的,有推理能力的');
INSERT INTO `voc` VALUES ('810', 'condemn', ' vt. 判刑, 谴责, 官方宣称（某事物）有缺陷或不宜使用');
INSERT INTO `voc` VALUES ('811', 'democracy', ' n. 民主,民主制,民主国家');
INSERT INTO `voc` VALUES ('812', 'amplifier', ' n. 放大器, 扩音机');
INSERT INTO `voc` VALUES ('813', 'razor', ' n. 剃刀');
INSERT INTO `voc` VALUES ('814', 'birthday', ' n. 生日');
INSERT INTO `voc` VALUES ('815', 'denounce', ' v. 告发, 公然抨击');
INSERT INTO `voc` VALUES ('816', 'corresponding', ' adj. 符合的, 一致的, 相同的, 相应的, 相当的');
INSERT INTO `voc` VALUES ('817', 'pint', ' n. 品脱');
INSERT INTO `voc` VALUES ('818', 'quite', ' adv. 很,十分');
INSERT INTO `voc` VALUES ('819', 'teenager', ' n. 13岁到19岁的年轻人');
INSERT INTO `voc` VALUES ('820', 'your', ' pron. 你的, 你们的');
INSERT INTO `voc` VALUES ('821', 'be', ' prep. 是,有,在');
INSERT INTO `voc` VALUES ('822', 'serious', ' adj.严肃的, 庄重的, 严重的, 危急的, 认真的');
INSERT INTO `voc` VALUES ('823', 'qualitative', ' adj. 性质上的, 质的, 定性的');
INSERT INTO `voc` VALUES ('824', 'cloudy', ' adj. 多云的');
INSERT INTO `voc` VALUES ('825', 'comparable', ' adj. 可比较的, 比得上的');
INSERT INTO `voc` VALUES ('826', 'vowel', ' n. 母音, 元音');
INSERT INTO `voc` VALUES ('827', 'ecology', ' n. 生态学');
INSERT INTO `voc` VALUES ('828', 'apple', ' n. 苹果');
INSERT INTO `voc` VALUES ('829', 'suppress', ' vt. 镇压,使...止住,禁止');
INSERT INTO `voc` VALUES ('830', 'child', ' n.小孩，孩子； 幼稚的人； 产物； 弟子');
INSERT INTO `voc` VALUES ('831', 'judicial', ' adj. 法庭的, 公正的, 审判上的');
INSERT INTO `voc` VALUES ('832', 'neighborhood', ' n. 附近,邻近,邻居');
INSERT INTO `voc` VALUES ('833', 'disaster', ' n. 灾难');
INSERT INTO `voc` VALUES ('834', 'language', ' n. 语言');
INSERT INTO `voc` VALUES ('835', 'underlying', ' adj. 在下面的, 基本的, 隐含的');
INSERT INTO `voc` VALUES ('836', 'legal', ' adj. 法律的,合法的,法定的');
INSERT INTO `voc` VALUES ('837', 'certainly', ' adv. 当然');
INSERT INTO `voc` VALUES ('838', 'attitude', ' n. 态度, 看法, 姿势');
INSERT INTO `voc` VALUES ('839', 'confident', ' adj. 确信的, 自信的');
INSERT INTO `voc` VALUES ('840', 'miserable', ' adj. 悲惨的,痛苦的,贫乏的');
INSERT INTO `voc` VALUES ('841', 'pigeon', ' n. 鸽子');
INSERT INTO `voc` VALUES ('842', 'farmer', 'n. 农夫；农场主');
INSERT INTO `voc` VALUES ('843', 'continuous', ' adj. 连续的, 继续的, 连绵不断的');
INSERT INTO `voc` VALUES ('844', 'son', ' n. 儿子');
INSERT INTO `voc` VALUES ('845', 'hardship', ' n. 艰难, 困苦');
INSERT INTO `voc` VALUES ('846', 'starve', ' v. 使饿死, 饿得要死');
INSERT INTO `voc` VALUES ('847', 'soccer', ' n. 英式足球');
INSERT INTO `voc` VALUES ('848', 'installation', ' n. 安装,装置, 军事驻地');
INSERT INTO `voc` VALUES ('849', 'centigrade', ' adj. 分为百度的,摄氏的');
INSERT INTO `voc` VALUES ('850', 'numerical', ' adj. 数字的, 用数字表示的');
INSERT INTO `voc` VALUES ('851', 'gown', ' n.长袍，长外衣； 女长服； 罩袍； 大学的学生和教师');
INSERT INTO `voc` VALUES ('852', 'strife', ' n. 争吵，冲突，倾轧，竞争');
INSERT INTO `voc` VALUES ('853', 'upon', ' prep. 在...上');
INSERT INTO `voc` VALUES ('854', 'fertilizer', ' n. 肥料');
INSERT INTO `voc` VALUES ('855', 'distant', ' adj. 遥远的,疏远的，远房的，陌生的，远行的');
INSERT INTO `voc` VALUES ('856', 'expansion', ' n. 扩大,膨胀,扩充');
INSERT INTO `voc` VALUES ('857', 'brochure', ' n. 小册子');
INSERT INTO `voc` VALUES ('858', 'century', ' n. 世纪，一百年，成百的东西');
INSERT INTO `voc` VALUES ('859', 'merely', ' adv. 仅仅,只不过');
INSERT INTO `voc` VALUES ('860', 'harsh', ' adj. 粗糙的, 使人不舒服的，刺耳的, 严厉的，大约的');
INSERT INTO `voc` VALUES ('861', 'amaze', ' v. 使吃惊');
INSERT INTO `voc` VALUES ('862', 'infrastructure', ' n. 下部构造, 下部组织, 基础结构, 基础设施');
INSERT INTO `voc` VALUES ('863', 'masterpiece', ' n. 杰作');
INSERT INTO `voc` VALUES ('864', 'suggest', ' vt. 建议,暗示,要求');
INSERT INTO `voc` VALUES ('865', 'tray', ' n. 盘,托盘,碟');
INSERT INTO `voc` VALUES ('866', 'reservation', ' n. 预定，保留意见');
INSERT INTO `voc` VALUES ('867', 'destination', ' n. 目的地,终点,景点');
INSERT INTO `voc` VALUES ('868', 'conversion', ' n. 转变, 改变信仰, 换位');
INSERT INTO `voc` VALUES ('869', 'panda', ' n. 熊猫');
INSERT INTO `voc` VALUES ('870', 'repeatedly', ' adv. 重复地, 再三地');
INSERT INTO `voc` VALUES ('871', 'physiological', ' adj. 生理的, 生理学的');
INSERT INTO `voc` VALUES ('872', 'pronunciation', ' n. 发音');
INSERT INTO `voc` VALUES ('873', 'fiction', ' n. 小说,虚构');
INSERT INTO `voc` VALUES ('874', 'restrict', ' v. 限制,约束');
INSERT INTO `voc` VALUES ('875', 'themselves', ' pron. 他(她, 它)们自己');
INSERT INTO `voc` VALUES ('876', 'genius', ' n. 天才, 高智力, 天赋');
INSERT INTO `voc` VALUES ('877', 'dome', ' n. 圆屋顶');
INSERT INTO `voc` VALUES ('878', 'association', ' n. 联合,结合,交往,协会,社团,联想');
INSERT INTO `voc` VALUES ('879', 'bureau', ' n. 局, 办公处');
INSERT INTO `voc` VALUES ('880', 'into', ' prep. 到...里');
INSERT INTO `voc` VALUES ('881', 'king', ' n. 国王');
INSERT INTO `voc` VALUES ('882', 'denote', ' vt. 象征,表示');
INSERT INTO `voc` VALUES ('883', 'tiresome', ' adj. 令人厌倦的,讨厌的');
INSERT INTO `voc` VALUES ('884', 'humanity', ' n. 人类 人性;人道;慈爱');
INSERT INTO `voc` VALUES ('885', 'oriental', ' adj. 东方(人)的,贵重的');
INSERT INTO `voc` VALUES ('886', 'ankle', ' n. 踝, 踝关节');
INSERT INTO `voc` VALUES ('887', 'himself', ' pron. 他自己');
INSERT INTO `voc` VALUES ('888', 'fellowship', ' n. 友谊，团体，会员资格，奖学金');
INSERT INTO `voc` VALUES ('889', 'myth', ' n. 神话');
INSERT INTO `voc` VALUES ('890', 'classmate', ' n. 同班同学');
INSERT INTO `voc` VALUES ('891', 'pave', ' v. 铺设, 安排, 为...铺路');
INSERT INTO `voc` VALUES ('892', 'penny', ' n. 便士,小钱,少量');
INSERT INTO `voc` VALUES ('893', 'nonsense', ' n. 无意义的事,荒谬的言行,荒唐');
INSERT INTO `voc` VALUES ('894', 'brutal', ' adj. 野蛮的,残暴的');
INSERT INTO `voc` VALUES ('895', 'messenger', ' n. 报信者, 先驱');
INSERT INTO `voc` VALUES ('896', 'prolong', ' vt. 延长,拖延');
INSERT INTO `voc` VALUES ('897', 'erosion', ' n. 腐蚀,侵蚀');
INSERT INTO `voc` VALUES ('898', 'treason', ' n. 叛逆，通敌，背叛，叛国罪');
INSERT INTO `voc` VALUES ('899', 'shortly', ' adv. 立刻, 马上');
INSERT INTO `voc` VALUES ('900', 'superstition', ' n. 迷信, 没有根据的理论');
INSERT INTO `voc` VALUES ('901', 'abrupt', ' adj. 突然的；唐突的, 陡峭的');
INSERT INTO `voc` VALUES ('902', 'lip', ' n. 嘴唇');
INSERT INTO `voc` VALUES ('903', 'comparison', ' n. 比较');
INSERT INTO `voc` VALUES ('904', 'outlet', ' n. 出口, 出路, 通风口, 批发商店');
INSERT INTO `voc` VALUES ('905', 'Internet', ' n. 因特网');
INSERT INTO `voc` VALUES ('906', 'crisis', ' n. 危急关头,危机');
INSERT INTO `voc` VALUES ('907', 'symbol', ' n. 符号, 标志, 象征');
INSERT INTO `voc` VALUES ('908', 'flu', ' n. 流行性感冒');
INSERT INTO `voc` VALUES ('909', 'dissipate', ' vt. 使...消散(浪费)');
INSERT INTO `voc` VALUES ('910', 'adore', ' v. 崇拜,爱慕,喜爱');
INSERT INTO `voc` VALUES ('911', 'conscientious', ' adj. 审慎正直的,认真的,本着良心的');
INSERT INTO `voc` VALUES ('912', 'reluctant', ' adj. 不情愿的,勉强的');
INSERT INTO `voc` VALUES ('913', 'government', ' n. 政府,政体,统治');
INSERT INTO `voc` VALUES ('914', 'thermometer', ' n. 温度计');
INSERT INTO `voc` VALUES ('915', 'testify', ' vt.&amp; vi. 证明,作证,声明');
INSERT INTO `voc` VALUES ('916', 'it', ' pron. 它');
INSERT INTO `voc` VALUES ('917', 'carbohydrate', ' n. 碳水化合物, 糖');
INSERT INTO `voc` VALUES ('918', 'judgement', ' n. 判断');
INSERT INTO `voc` VALUES ('919', 'ancestor', ' n. 祖宗,祖先,原种');
INSERT INTO `voc` VALUES ('920', 'opaque', ' adj. 不透明的, 难懂的');
INSERT INTO `voc` VALUES ('921', 'restore', ' vt. 恢复,归还,翻新');
INSERT INTO `voc` VALUES ('922', 'intricate', ' adj. 复杂的,错综的,缠结的,难懂的');
INSERT INTO `voc` VALUES ('923', 'spectacle', ' n. 值得看的东西, 光景, 眼镜');
INSERT INTO `voc` VALUES ('924', 'formidable', ' adj. 强大的, 可怕的, 难对付的');
INSERT INTO `voc` VALUES ('925', 'inn', ' n. 客栈, 小旅店');
INSERT INTO `voc` VALUES ('926', 'strange', ' adj. 陌生的, 奇怪的');
INSERT INTO `voc` VALUES ('927', 'defence', ' n. 防务,防御,答辩');
INSERT INTO `voc` VALUES ('928', 'melody', ' n. 旋律,曲子,美的音乐,曲调');
INSERT INTO `voc` VALUES ('929', 'speciality', ' n. 专长, 擅长');
INSERT INTO `voc` VALUES ('930', 'tumour', ' n. 肿瘤');
INSERT INTO `voc` VALUES ('931', 'imaginative', ' adj. 富于想象力的');
INSERT INTO `voc` VALUES ('932', 'footstep', ' n. 脚步，脚步声, 足迹');
INSERT INTO `voc` VALUES ('933', 'napkin', ' n. 餐巾,一小块布或毛巾,卫生巾');
INSERT INTO `voc` VALUES ('934', 'infectious', ' adj. 传染的');
INSERT INTO `voc` VALUES ('935', 'inferior', ' adj. 次等的, 较低的, 不如的');
INSERT INTO `voc` VALUES ('936', 'laptop', ' n. 便携式电脑, 笔记本电脑');
INSERT INTO `voc` VALUES ('937', 'terrify', ' v. 使害怕，使恐怖，威胁');
INSERT INTO `voc` VALUES ('938', 'room', ' 房间, 空间');
INSERT INTO `voc` VALUES ('939', 'supreme', ' adj. 最高的, 至上的, 极度的');
INSERT INTO `voc` VALUES ('940', 'hero', ' n. 男主角, 男主人公, 英雄');
INSERT INTO `voc` VALUES ('941', 'envisage', ' vt. 想像，设想; 正视，面对; 观察，展望');
INSERT INTO `voc` VALUES ('942', 'administration', ' n. 行政,管理,中央政府');
INSERT INTO `voc` VALUES ('943', 'never', ' adv. 从不,绝不');
INSERT INTO `voc` VALUES ('944', 'cocaine', ' n. 可卡因');
INSERT INTO `voc` VALUES ('945', 'fortnight', ' n. 两星期，十四天');
INSERT INTO `voc` VALUES ('946', 'accommodation', ' n. 住处，膳宿；调节；和解；预订铺位');
INSERT INTO `voc` VALUES ('947', 'greet', ' vt. 问候,致敬,欢迎,映入眼帘');
INSERT INTO `voc` VALUES ('948', 'area', ' n. 地区, 区域, 面积, 方面');
INSERT INTO `voc` VALUES ('949', 'friction', ' n. 摩擦,摩擦力,分歧');
INSERT INTO `voc` VALUES ('950', 'superfluous', ' adj. 多余的，过剩的');
INSERT INTO `voc` VALUES ('951', 'repetition', ' n. 重复,反复');
INSERT INTO `voc` VALUES ('952', 'therefore', ' adv. 因此, 所以');
INSERT INTO `voc` VALUES ('953', 'turkey', ' n. (Turkey)土耳其,火鸡,笨蛋,失败之作');
INSERT INTO `voc` VALUES ('954', 'anecdote', ' n. 轶事,奇闻');
INSERT INTO `voc` VALUES ('955', 'ideology', ' n. 观念学, 空论, 意识形态');
INSERT INTO `voc` VALUES ('956', 'tempt', ' vt. 诱惑；引起；冒…的风险；使感兴趣');
INSERT INTO `voc` VALUES ('957', 'handsome', ' adj. 英俊的,慷慨大方的,可观的,灵巧的');
INSERT INTO `voc` VALUES ('958', 'ending', ' n. 结尾, 结局');
INSERT INTO `voc` VALUES ('959', 'context', ' n. 上下文, 环境,背景');
INSERT INTO `voc` VALUES ('960', 'poet', ' n. 诗人');
INSERT INTO `voc` VALUES ('961', 'elderly', ' adj. 过了中年的, 稍老的');
INSERT INTO `voc` VALUES ('962', 'conventional', ' adj. 普通的,常见的,习惯的,常规的');
INSERT INTO `voc` VALUES ('963', 'enforce', ' vt. 加强, 强迫, 执行');
INSERT INTO `voc` VALUES ('964', 'Christmas', ' n. 圣诞节');
INSERT INTO `voc` VALUES ('965', 'proper', ' adj. 适当的,正确的,合适的,正当的,规矩的');
INSERT INTO `voc` VALUES ('966', 'perform', ' v. 执行, 表演, 做');
INSERT INTO `voc` VALUES ('967', 'flexible', ' adj. 灵活的,易弯曲的,柔韧的,可变通的');
INSERT INTO `voc` VALUES ('968', 'wheat', ' n. 小麦, 小麦色');
INSERT INTO `voc` VALUES ('969', 'sofa', ' n. 沙发');
INSERT INTO `voc` VALUES ('970', 'descend', ' vt. &amp;vi. 降,传,降临');
INSERT INTO `voc` VALUES ('971', 'tree', ' n. 树');
INSERT INTO `voc` VALUES ('972', 'pear', ' n. 梨(树)');
INSERT INTO `voc` VALUES ('973', 'prone', ' adj. 俯卧的, 易于...的, 有...倾向的');
INSERT INTO `voc` VALUES ('974', 'catastrophe', ' n. 大灾难,大祸,彻底失败');
INSERT INTO `voc` VALUES ('975', 'airline', ' n. (飞机的)航线,航空公司');
INSERT INTO `voc` VALUES ('976', 'childhood', ' n. 童年,幼年');
INSERT INTO `voc` VALUES ('977', 'patriotic', ' adj. 爱国的');
INSERT INTO `voc` VALUES ('978', 'competitive', ' adj. 竞争的, 比赛的');
INSERT INTO `voc` VALUES ('979', 'readily', ' adv. 不迟疑地,迅速地,轻易地');
INSERT INTO `voc` VALUES ('980', 'attract', ' v. 吸引, 有吸引力');
INSERT INTO `voc` VALUES ('981', 'casual', ' adj. 偶然的, 随便的, 非正式, 漫不经心的');
INSERT INTO `voc` VALUES ('982', 'superiority', ' n. 优越性, 优势');
INSERT INTO `voc` VALUES ('983', 'congratulate', ' vt. 祝贺');
INSERT INTO `voc` VALUES ('984', 'overwhelm', ' v. 淹没,受打击,压倒');
INSERT INTO `voc` VALUES ('985', 'tremendous', ' adj. 巨大的, 惊人的');
INSERT INTO `voc` VALUES ('986', 'victim', ' n. 受害者,牺牲');
INSERT INTO `voc` VALUES ('987', 'precaution', ' n. 预防,留心,警戒');
INSERT INTO `voc` VALUES ('988', 'reality', ' n. 现实,实际,真实');
INSERT INTO `voc` VALUES ('989', 'uproar', ' n. 喧嚣,骚动');
INSERT INTO `voc` VALUES ('990', 'sly', ' adj. 狡猾的，诡密的,偷偷摸摸的');
INSERT INTO `voc` VALUES ('991', 'absence', ' n. 没有；缺乏；缺席；不注意');
INSERT INTO `voc` VALUES ('992', 'soup', ' n. 汤,羹,困境');
INSERT INTO `voc` VALUES ('993', 'policy', ' n. 政策, 方针, 保险单');
INSERT INTO `voc` VALUES ('994', 'diversion', ' n. 转向, 转移, 娱乐活动');
INSERT INTO `voc` VALUES ('995', 'join', ' v. 参加, 结合, 联合, 加入');
INSERT INTO `voc` VALUES ('996', 'vehicle', ' n. 传播媒介, 工具, 手段, 交通工具, 车辆;');
INSERT INTO `voc` VALUES ('997', 'clergy', ' n. [总称]牧师, 神职人员');
INSERT INTO `voc` VALUES ('998', 'shirt', ' n. 衬衫');
INSERT INTO `voc` VALUES ('999', 'response', ' n. 反应, 响应; 回答');
INSERT INTO `voc` VALUES ('1000', 'suite', ' n. 随员, 套房, 一组');
INSERT INTO `voc` VALUES ('1001', 'different', ' adj. 不同的,与众不同的');
INSERT INTO `voc` VALUES ('1002', 'comedy', ' n. 喜剧,滑稽, 幽默事件');
INSERT INTO `voc` VALUES ('1003', 'consultant', ' n. 顾问, 咨询专家');
INSERT INTO `voc` VALUES ('1004', 'information', ' n. 信息, 情报, 新闻, 资料, 询问');
INSERT INTO `voc` VALUES ('1005', 'always', ' adv. 总是');
INSERT INTO `voc` VALUES ('1006', 'battery', ' n. 电池,一系列,排炮');
INSERT INTO `voc` VALUES ('1007', 'bewilder', ' vt. 使迷惑，使...不知所措');
INSERT INTO `voc` VALUES ('1008', 'punish', ' 惩罚, 处罚');
INSERT INTO `voc` VALUES ('1009', 'verge', ' n. 边缘');
INSERT INTO `voc` VALUES ('1010', 'worldwide', ' adj. 全世界的');
INSERT INTO `voc` VALUES ('1011', 'productive', ' adj. 能生产的；有生产价值的；多产的；有效率的');
INSERT INTO `voc` VALUES ('1012', 'thrift', 'n. n. 节俭, 节约');
INSERT INTO `voc` VALUES ('1013', 'crucial', ' adj. 关键的,决定性的');
INSERT INTO `voc` VALUES ('1014', 'indispensable', ' adj. 不可缺少的');
INSERT INTO `voc` VALUES ('1015', 'opt', ' vi. 选择,决定做某事');
INSERT INTO `voc` VALUES ('1016', 'afterward', ' adv. 后来, 以后');
INSERT INTO `voc` VALUES ('1017', 'introduction', ' n. 介绍, 引进, 导论, 序言');
INSERT INTO `voc` VALUES ('1018', 'bibliography', ' n. (有关某一专题的)书目,参考书目');
INSERT INTO `voc` VALUES ('1019', 'belief', ' n. 相信, 信念, 信仰');
INSERT INTO `voc` VALUES ('1020', 'scenery', ' n. 布景,风景,背景');
INSERT INTO `voc` VALUES ('1021', 'significance', ' n. 意义,重要性');
INSERT INTO `voc` VALUES ('1022', 'relief', ' n.宽慰，安心； 免除，减轻； 救援物资； 代班人');
INSERT INTO `voc` VALUES ('1023', 'enhance', ' vt. 提高,加强,增加');
INSERT INTO `voc` VALUES ('1024', 'vigorous', ' adj. 精力充沛的,元气旺盛的,有力的');
INSERT INTO `voc` VALUES ('1025', 'forum', ' n. 论坛, 讨论会');
INSERT INTO `voc` VALUES ('1026', 'lately', ' adv. 最近, 不久前');
INSERT INTO `voc` VALUES ('1027', 'notify', ' v. 通知,通告,报告');
INSERT INTO `voc` VALUES ('1028', 'disastrous', ' adj. 灾难性的');
INSERT INTO `voc` VALUES ('1029', 'doctorate', ' n. 博士学位');
INSERT INTO `voc` VALUES ('1030', 'jug', ' n. 水壶, 监牢');
INSERT INTO `voc` VALUES ('1031', 'afraid', ' adj. 害怕的, 担心的');
INSERT INTO `voc` VALUES ('1032', 'shorthand', ' n. 速记,缩写');
INSERT INTO `voc` VALUES ('1033', 'inspiration', ' n. 灵感,吸入,鼓舞人心(的东西)');
INSERT INTO `voc` VALUES ('1034', 'harassment', ' n. 困扰,烦扰,烦恼');
INSERT INTO `voc` VALUES ('1035', 'self', ' n. 自我, 自己, 本身');
INSERT INTO `voc` VALUES ('1036', 'relevant', ' adj. 相关的, 切题的, 中肯的');
INSERT INTO `voc` VALUES ('1037', 'asset', ' n. 资产,有用的东西,优点,长处');
INSERT INTO `voc` VALUES ('1038', 'watt', ' n. 瓦特');
INSERT INTO `voc` VALUES ('1039', 'bus', ' n. 公共汽车');
INSERT INTO `voc` VALUES ('1040', 'helpful', ' adj. 有帮助的, 有益的');
INSERT INTO `voc` VALUES ('1041', 'blackboard', ' n. 黑板');
INSERT INTO `voc` VALUES ('1042', 'instrumental', ' adj. 仪器的,器具的,可做为手段的');
INSERT INTO `voc` VALUES ('1043', 'decision', ' n. 决定,决心');
INSERT INTO `voc` VALUES ('1044', 'quart', ' n. 夸脱（容量单位）');
INSERT INTO `voc` VALUES ('1045', 'overwhelming', ' adj. 势不可挡的, 压倒的');
INSERT INTO `voc` VALUES ('1046', 'particle', ' n. 微粒,质点,极小量');
INSERT INTO `voc` VALUES ('1047', 'regarding', ' prep. 关于, 至于');
INSERT INTO `voc` VALUES ('1048', 'evade', ' v. 规避, 逃避, 躲避');
INSERT INTO `voc` VALUES ('1049', 'popular', ' adj. 大众的,流行的,有销路的');
INSERT INTO `voc` VALUES ('1050', 'definite', ' adj. 明确的,一定的');
INSERT INTO `voc` VALUES ('1051', 'manager', ' n. 经理');
INSERT INTO `voc` VALUES ('1052', 'accuracy', ' n. 准确(性), 精确度');
INSERT INTO `voc` VALUES ('1053', 'dynasty', ' n. 朝代, 王朝');
INSERT INTO `voc` VALUES ('1054', 'greeting', ' n. 问候,打招呼');
INSERT INTO `voc` VALUES ('1055', 'guidance', ' n. 引导,指导,导航系统');
INSERT INTO `voc` VALUES ('1056', 'interval', ' n. 间隔,休息时间, (数学)区间, (音乐)音程');
INSERT INTO `voc` VALUES ('1057', 'detector', ' n. 探测器');
INSERT INTO `voc` VALUES ('1058', 'fact', ' n. 实际, 事实');
INSERT INTO `voc` VALUES ('1059', 'knob', ' n. 把手, 瘤');
INSERT INTO `voc` VALUES ('1060', 'silicon', ' n. 硅');
INSERT INTO `voc` VALUES ('1061', 'microphone', ' n. 麦克风, 扩音器');
INSERT INTO `voc` VALUES ('1062', 'medicine', ' n. 药, 医学');
INSERT INTO `voc` VALUES ('1063', 'origin', ' n. 起源,出身,开端');
INSERT INTO `voc` VALUES ('1064', 'receipt', ' n. 收据');
INSERT INTO `voc` VALUES ('1065', 'intermittent', ' adj. 间歇的,断断续续的');
INSERT INTO `voc` VALUES ('1066', 'paradigm', ' n. 例子,模范,词形变化表');
INSERT INTO `voc` VALUES ('1067', 'truth', ' n. 事实,确实,真理,现实');
INSERT INTO `voc` VALUES ('1068', 'ordinary', ' adj. 普通的');
INSERT INTO `voc` VALUES ('1069', 'evolution', ' n. 进化, 发展, 进展');
INSERT INTO `voc` VALUES ('1070', 'money', ' n. 钱,财产,货币');
INSERT INTO `voc` VALUES ('1071', 'nucleus', ' n. 核,核心,细胞核,原子核');
INSERT INTO `voc` VALUES ('1072', 'torrent', ' n. 激流, 山洪');
INSERT INTO `voc` VALUES ('1073', 'greenhouse', ' n. 温室, 暖房');
INSERT INTO `voc` VALUES ('1074', 'plumber', ' n. 水管工人');
INSERT INTO `voc` VALUES ('1075', 'axis', ' n. 轴,中枢');
INSERT INTO `voc` VALUES ('1076', 'bride', ' n. 新娘');
INSERT INTO `voc` VALUES ('1077', 'plantation', ' n. 种植园，大农场，殖民地');
INSERT INTO `voc` VALUES ('1078', 'efficiency', ' n. 效率；效能；功效');
INSERT INTO `voc` VALUES ('1079', 'consideration', ' n. 考虑, 体贴, 考虑因素, 敬重, 意见');
INSERT INTO `voc` VALUES ('1080', 'multitude', ' n. 多数, 群众');
INSERT INTO `voc` VALUES ('1081', 'remarkable', ' adj. 显著的, 异常的, 非凡的, 值得注意的');
INSERT INTO `voc` VALUES ('1082', 'economics', ' n. 经济学');
INSERT INTO `voc` VALUES ('1083', 'intelligible', ' adj. 可理解的, 易理解的, 明了的');
INSERT INTO `voc` VALUES ('1084', 'overtake', ' v. 赶上, 突然来袭, 压倒');
INSERT INTO `voc` VALUES ('1085', 'liability', ' n. 责任, 可能性，债务, 不利因素');
INSERT INTO `voc` VALUES ('1086', 'reader', ' n. 读者，读物, 读本');
INSERT INTO `voc` VALUES ('1087', 'luxury', ' n. 奢侈, 豪华, 奢侈品');
INSERT INTO `voc` VALUES ('1088', 'counterpart', ' n.  职位（或作用）相当的人；对应的事物');
INSERT INTO `voc` VALUES ('1089', 'society', ' n. 社会, 社团，阶层圈子');
INSERT INTO `voc` VALUES ('1090', 'potato', ' n. 马铃薯, 土豆');
INSERT INTO `voc` VALUES ('1091', 'vulnerable', ' adj. 易受伤害的, 有弱点的');
INSERT INTO `voc` VALUES ('1092', 'extend', ' v. 扩充, 延伸, 伸展, 扩展');
INSERT INTO `voc` VALUES ('1093', 'confidence', ' n.信心； 信任； 秘密');
INSERT INTO `voc` VALUES ('1094', 'me', ' pron. 我(宾格)');
INSERT INTO `voc` VALUES ('1095', 'disclose', ' vt. 揭露');
INSERT INTO `voc` VALUES ('1096', 'allocate', ' v. 分派, 分配, 分配额');
INSERT INTO `voc` VALUES ('1097', 'harden', ' v. 变硬,使...坚强,涨价');
INSERT INTO `voc` VALUES ('1098', 'November', ' n. 十一月');
INSERT INTO `voc` VALUES ('1099', 'character', ' n. 个性, 品质; 字符; 人物; 名誉; 地位');
INSERT INTO `voc` VALUES ('1100', 'outdoor', ' adj. 户外的，野外的，露天的');
INSERT INTO `voc` VALUES ('1101', 'inhabit', ' v. 居住于, 占据, 栖息');
INSERT INTO `voc` VALUES ('1102', 'careful', ' adj. 小心的, 仔细的');
INSERT INTO `voc` VALUES ('1103', 'myself', ' pron. 我自己');
INSERT INTO `voc` VALUES ('1104', 'expertise', ' n. 专家的意见,专门技术');
INSERT INTO `voc` VALUES ('1105', 'morning', ' n. 早晨, 上午, 开端');
INSERT INTO `voc` VALUES ('1106', 'horrible', ' adj. 可怕的,令人毛骨悚然的,令人讨厌的');
INSERT INTO `voc` VALUES ('1107', 'lad', ' n. 少年, 小伙子');
INSERT INTO `voc` VALUES ('1108', 'spend', ' v. (spent,spent) 花费,浪费,度过');
INSERT INTO `voc` VALUES ('1109', 'benign', ' adj. 仁慈的,温和的,良性的');
INSERT INTO `voc` VALUES ('1110', 'contradiction', ' n. 反驳,矛盾,不一致,否认');
INSERT INTO `voc` VALUES ('1111', 'baggage', ' n. 行李');
INSERT INTO `voc` VALUES ('1112', 'lorry', ' n. 卡车');
INSERT INTO `voc` VALUES ('1113', 'herb', ' n. 药草, 香草');
INSERT INTO `voc` VALUES ('1114', 'loudspeaker', ' n. 扬声器, 喇叭');
INSERT INTO `voc` VALUES ('1115', 'surgeon', ' n. 外科医生');
INSERT INTO `voc` VALUES ('1116', 'deficiency', ' n. 缺乏,不足,缺点');
INSERT INTO `voc` VALUES ('1117', 'upright', ' adj. 正直的, 诚实的, 合乎正道的');
INSERT INTO `voc` VALUES ('1118', 'celebrate', ' vt. &amp;vi. 庆祝,祝贺,颂扬');
INSERT INTO `voc` VALUES ('1119', 'dragon', ' n. 龙，严厉的人');
INSERT INTO `voc` VALUES ('1120', 'generation', ' n. 代, 一代');
INSERT INTO `voc` VALUES ('1121', 'verdict', ' n. 裁定, 定论');
INSERT INTO `voc` VALUES ('1122', 'restless', ' adj. 不安宁的, 焦虑的');
INSERT INTO `voc` VALUES ('1123', 'directly', ' adv. 直接地(立即,完全)');
INSERT INTO `voc` VALUES ('1124', 'nursery', ' n. 托儿所');
INSERT INTO `voc` VALUES ('1125', 'paperback', ' n. 纸封面本, 普及本, 平装书');
INSERT INTO `voc` VALUES ('1126', 'kidnap', ' v. 绑架,诱拐,拐骗');
INSERT INTO `voc` VALUES ('1127', 'volt', ' n. 伏特(电压单位)');
INSERT INTO `voc` VALUES ('1128', 'bathe', ' v. 沐浴, 用水洗，沉浸');
INSERT INTO `voc` VALUES ('1129', 'noun', ' n. 名词');
INSERT INTO `voc` VALUES ('1130', 'vegetation', ' n. 植物,草木,(植物)生长');
INSERT INTO `voc` VALUES ('1131', 'clothe', ' vt. 穿上, 覆上, 授以，赋予，表达');
INSERT INTO `voc` VALUES ('1132', 'musician', ' n. 音乐家，作曲家');
INSERT INTO `voc` VALUES ('1133', 'financial', ' adj. 金融的,财政的');
INSERT INTO `voc` VALUES ('1134', 'slipper', ' n. 拖鞋');
INSERT INTO `voc` VALUES ('1135', 'optical', ' adj. 眼睛的, 视觉的, 光学的');
INSERT INTO `voc` VALUES ('1136', 'neck', ' n. 脖子,颈');
INSERT INTO `voc` VALUES ('1137', 'employment', ' n. 工作,职业,雇用,使用');
INSERT INTO `voc` VALUES ('1138', 'performance', ' n.表演； 演技； 表现； 执行');
INSERT INTO `voc` VALUES ('1139', 'hypocrisy', ' n. 伪善');
INSERT INTO `voc` VALUES ('1140', 'permission', ' n. 同意,许可,允许');
INSERT INTO `voc` VALUES ('1141', 'rigid', ' adj. 僵硬的,刻板的,严格的');
INSERT INTO `voc` VALUES ('1142', 'confess', ' v. 承认, 告白, 忏悔');
INSERT INTO `voc` VALUES ('1143', 'death', ' n. 死,死亡，死神，毁灭');
INSERT INTO `voc` VALUES ('1144', 'actress', ' n. 女演员');
INSERT INTO `voc` VALUES ('1145', 'April', ' n. 四月');
INSERT INTO `voc` VALUES ('1146', 'cohesive', ' adj. 粘性的(有结合性的, 有粘聚性的)');
INSERT INTO `voc` VALUES ('1147', 'missing', ' adj. 缺掉的,失踪的');
INSERT INTO `voc` VALUES ('1148', 'inertia', ' n. 惯性,惰性');
INSERT INTO `voc` VALUES ('1149', 'possess', ' v. 持有,克制,为...着迷');
INSERT INTO `voc` VALUES ('1150', 'sincere', ' adj. 真诚的, 诚挚的');
INSERT INTO `voc` VALUES ('1151', 'seemingly', ' adv. 表面上(看上去)');
INSERT INTO `voc` VALUES ('1152', 'visitor', ' n. 参观者, 访问者，访客');
INSERT INTO `voc` VALUES ('1153', 'explanation', ' n. 解释, 说明');
INSERT INTO `voc` VALUES ('1154', 'conference', ' n. 会议');
INSERT INTO `voc` VALUES ('1155', 'road', ' n. 路');
INSERT INTO `voc` VALUES ('1156', 'thorn', ' n. 刺, 荆棘');
INSERT INTO `voc` VALUES ('1157', 'alcohol', ' n. 酒精，酒, 醇');
INSERT INTO `voc` VALUES ('1158', 'goat', ' n. 山羊,好色之徒,替罪羔羊');
INSERT INTO `voc` VALUES ('1159', 'cognitive', ' adj. 认知的,认识的,有认识力的');
INSERT INTO `voc` VALUES ('1160', 'badminton', ' n. 羽毛球');
INSERT INTO `voc` VALUES ('1161', 'activate', ' v. 刺激,使...活动,创设');
INSERT INTO `voc` VALUES ('1162', 'strenuous', ' adj. 紧张的；费力的；奋发的；艰苦的；热烈的');
INSERT INTO `voc` VALUES ('1163', 'implication', ' n. 暗示,含意');
INSERT INTO `voc` VALUES ('1164', 'grocer', ' n. 食品杂货商, 杂货店');
INSERT INTO `voc` VALUES ('1165', 'coffee', ' n. 咖啡');
INSERT INTO `voc` VALUES ('1166', 'philosophy', ' n. 哲学,哲理');
INSERT INTO `voc` VALUES ('1167', 'classroom', ' n. 教室，课堂');
INSERT INTO `voc` VALUES ('1168', 'attention', ' n. 注意(力),关心,立正');
INSERT INTO `voc` VALUES ('1169', 'of', ' prep. …的,出生于,住在, 关于');
INSERT INTO `voc` VALUES ('1170', 'fixture', ' n. 固定装置或设备,体育运动项目,固定在某位置的人或物');
INSERT INTO `voc` VALUES ('1171', 'predecessor', ' n. 前辈, 前任, 原有事物');
INSERT INTO `voc` VALUES ('1172', 'supper', ' n. 晚餐,晚饭');
INSERT INTO `voc` VALUES ('1173', 'mathematical', ' adj. 数学的，精确的，可能性极小的');
INSERT INTO `voc` VALUES ('1174', 'destruction', ' n. 破坏,毁灭,破坏者');
INSERT INTO `voc` VALUES ('1175', 'willing', ' adj. 愿意的, 心甘情愿的');
INSERT INTO `voc` VALUES ('1176', 'seminar', ' n. (大学的)研究班,研讨会');
INSERT INTO `voc` VALUES ('1177', 'director', ' n. 董事,经理,主管,指导者,导演');
INSERT INTO `voc` VALUES ('1178', 'volcano', ' n. 火山');
INSERT INTO `voc` VALUES ('1179', 'furnish', ' vt. 布置,提供,装备');
INSERT INTO `voc` VALUES ('1180', 'illness', ' n. 病, 疾病');
INSERT INTO `voc` VALUES ('1181', 'settlement', ' [建]沉降; 解决, 结算,殖民(地), 租界; 居留地; 新建区; 住宅区');
INSERT INTO `voc` VALUES ('1182', 'already', ' adv. 已经');
INSERT INTO `voc` VALUES ('1183', 'parliament', ' n. 议会, 国会');
INSERT INTO `voc` VALUES ('1184', 'aloud', ' adv. 出声地, 大声地');
INSERT INTO `voc` VALUES ('1185', 'steamer', ' n. 汽船, 轮船');
INSERT INTO `voc` VALUES ('1186', 'hierarchy', ' n. 等级制度，层级[计],统治集团');
INSERT INTO `voc` VALUES ('1187', 'ample', ' adj. 充足的,丰富的,宽敞的');
INSERT INTO `voc` VALUES ('1188', 'convince', ' vt. 说服, 使...相信');
INSERT INTO `voc` VALUES ('1189', 'rely', ' v. 信赖,倚赖,信任');
INSERT INTO `voc` VALUES ('1190', 'agreeable', ' adj. 愉快的, 和蔼可亲的，欣然同意的，一致的');
INSERT INTO `voc` VALUES ('1191', 'explore', ' vt. &amp;vi. 探险,探测,探究');
INSERT INTO `voc` VALUES ('1192', 'acceptance', ' n. 接受（礼物、邀请、建议等），同意，认可');
INSERT INTO `voc` VALUES ('1193', 'increasingly', ' adv. 逐渐地, 渐增地');
INSERT INTO `voc` VALUES ('1194', 'renovate', ' vt. 更新,革新,刷新');
INSERT INTO `voc` VALUES ('1195', 'usually', ' adv. 通常');
INSERT INTO `voc` VALUES ('1196', 'tropical', ' adj. 热带的, 炎热的, 热带植物的');
INSERT INTO `voc` VALUES ('1197', 'waitress', ' n. 女侍者, 女服务员');
INSERT INTO `voc` VALUES ('1198', 'motivate', ' v. 给与动机,刺激,提高...的学习欲望');
INSERT INTO `voc` VALUES ('1199', 'vicinity', ' n. 邻近,周边地区');
INSERT INTO `voc` VALUES ('1200', 'rare', ' adj. 稀罕的, 罕见的, 珍贵的');
INSERT INTO `voc` VALUES ('1201', 'synthesis', ' n. 合成,综合,推理');
INSERT INTO `voc` VALUES ('1202', 'unlikely', ' adj. 不大可能发生的,未必的,多半不可能的');
INSERT INTO `voc` VALUES ('1203', 'pronounce', ' vt.&amp; vi. 发音,宣告,断言,发表意见');
INSERT INTO `voc` VALUES ('1204', 'infect', ' vt. 传染,感染');
INSERT INTO `voc` VALUES ('1205', 'comprehension', ' n. 理解(力),领悟');
INSERT INTO `voc` VALUES ('1206', 'debt', ' n. 债务, 义务, 负债状态, 罪, 过失');
INSERT INTO `voc` VALUES ('1207', 'brilliant', ' adj. 灿烂的,有才气的,杰出的');
INSERT INTO `voc` VALUES ('1208', 'acre', ' n. 英亩');
INSERT INTO `voc` VALUES ('1209', 'feedback', ' n. 反馈,成果');
INSERT INTO `voc` VALUES ('1210', 'expense', ' n. 消费,支出');
INSERT INTO `voc` VALUES ('1211', 'fond', ' adj. 喜欢的；温柔的；宠爱的');
INSERT INTO `voc` VALUES ('1212', 'idiom', ' n. 成语, 惯用语');
INSERT INTO `voc` VALUES ('1213', 'ignorance', ' n. 无知');
INSERT INTO `voc` VALUES ('1214', 'restaurant', ' n. 餐馆,饭店');
INSERT INTO `voc` VALUES ('1215', 'nominate', ' vt. 提名, 指派, 登记赛马参加比赛');
INSERT INTO `voc` VALUES ('1216', 'mistress', ' n. 主妇, 女主人, 情妇');
INSERT INTO `voc` VALUES ('1217', 'tendency', ' n. 趋势,倾向');
INSERT INTO `voc` VALUES ('1218', 'stationery', ' n. 文具,信笺');
INSERT INTO `voc` VALUES ('1219', 'conjunction', ' n. 连词, 结合, 关联,(事件等的)同时发生');
INSERT INTO `voc` VALUES ('1220', 'successor', ' n. 接班人,继任人');
INSERT INTO `voc` VALUES ('1221', 'loss', ' n. 丧失, 损耗, 亏损');
INSERT INTO `voc` VALUES ('1222', 'proposal', ' n. 求婚, 提议, 建议');
INSERT INTO `voc` VALUES ('1223', 'velocity', ' n. 速度, 速率, 迅速');
INSERT INTO `voc` VALUES ('1224', 'this', ' adj. &amp;pron. 这,这个');
INSERT INTO `voc` VALUES ('1225', 'conspiracy', ' n. 阴谋');
INSERT INTO `voc` VALUES ('1226', 'possibly', ' adv. 可能地, 也许');
INSERT INTO `voc` VALUES ('1227', 'dine', ' v. 用正餐,进餐');
INSERT INTO `voc` VALUES ('1228', 'withhold', ' vt. &amp;vi. 扣留,保留,抑制');
INSERT INTO `voc` VALUES ('1229', 'recreation', ' n. 消遣, 娱乐');
INSERT INTO `voc` VALUES ('1230', 'aspect', ' n. 方面, 外貌, 外观; 方位, 方向');
INSERT INTO `voc` VALUES ('1231', 'celebrity', ' n. 名人, 著名,著名人士, 名声, 名誉, 社会名流');
INSERT INTO `voc` VALUES ('1232', 'intelligent', ' adj. 聪明的, 智能的');
INSERT INTO `voc` VALUES ('1233', 'ingenious', ' adj. 机灵的,精制的,有独创性的');
INSERT INTO `voc` VALUES ('1234', 'mixture', ' n. 混合, 混合物');
INSERT INTO `voc` VALUES ('1235', 'anniversary', ' n. 周年纪念(日)');
INSERT INTO `voc` VALUES ('1236', 'cent', ' n. 分');
INSERT INTO `voc` VALUES ('1237', 'historical', ' adj. 与历史有关的');
INSERT INTO `voc` VALUES ('1238', 'uneasy', ' adj. 不自在的, 心神不安的, 不稳定的, 不舒服的');
INSERT INTO `voc` VALUES ('1239', 'saucer', ' n. 茶托, 碟子');
INSERT INTO `voc` VALUES ('1240', 'mutton', ' n. 羊肉');
INSERT INTO `voc` VALUES ('1241', 'lifetime', ' n. 一生, 终身，寿命，使用期限');
INSERT INTO `voc` VALUES ('1242', 'permeate', ' v. 弥漫, 渗透, 普及');
INSERT INTO `voc` VALUES ('1243', 'planet', ' n. 行星');
INSERT INTO `voc` VALUES ('1244', 'pretext', ' n. 借口');
INSERT INTO `voc` VALUES ('1245', 'hotel', ' n. 旅馆，宾馆，酒店，饭店');
INSERT INTO `voc` VALUES ('1246', 'bacterium', ' n. 细菌');
INSERT INTO `voc` VALUES ('1247', 'persist', ' vi. 坚持,固执,持续');
INSERT INTO `voc` VALUES ('1248', 'rather', ' adv. 宁可,宁愿,有些,相当,反而');
INSERT INTO `voc` VALUES ('1249', 'bold', ' adj. 大胆的,粗体的,醒目的，无礼的,陡峭的');
INSERT INTO `voc` VALUES ('1250', 'heighten', ' v. 增高,提高,加强');
INSERT INTO `voc` VALUES ('1251', 'pessimistic', ' adj. 悲观的, 悲观主义的');
INSERT INTO `voc` VALUES ('1252', 'compensation', ' n. 补偿, 赔偿; 赔偿金, 物');
INSERT INTO `voc` VALUES ('1253', 'day', ' n. 白天,一天');
INSERT INTO `voc` VALUES ('1254', 'declare', ' vt. &amp;vi. 宣布,声明,申报');
INSERT INTO `voc` VALUES ('1255', 'threshold', ' n. 极限,门槛,入口,开端');
INSERT INTO `voc` VALUES ('1256', 'ozone', ' n. 臭氧, 新鲜空气');
INSERT INTO `voc` VALUES ('1257', 'colonel', ' n. 上校');
INSERT INTO `voc` VALUES ('1258', 'clarity', ' n. 清楚, 透明');
INSERT INTO `voc` VALUES ('1259', 'deny', ' vt. 否认, 拒绝, 反对, 克制');
INSERT INTO `voc` VALUES ('1260', 'dwell', ' vi. 居住, 存在, 冥想, 详细阐述');
INSERT INTO `voc` VALUES ('1261', 'melon', ' n. 甜瓜');
INSERT INTO `voc` VALUES ('1262', 'column', ' n.纵队，列； 圆柱； 专栏');
INSERT INTO `voc` VALUES ('1263', 'detain', ' vt. 扣留,拘押,耽搁');
INSERT INTO `voc` VALUES ('1264', 'duration', ' n. 持续时间，期间');
INSERT INTO `voc` VALUES ('1265', 'grope', ' v.(暗中)摸索, 探索');
INSERT INTO `voc` VALUES ('1266', 'applause', ' n. 鼓掌, 喝彩, 赞许');
INSERT INTO `voc` VALUES ('1267', 'earthquake', ' n. 地震');
INSERT INTO `voc` VALUES ('1268', 'sociology', ' n. 社会学, 社会关系学, 群落生态学');
INSERT INTO `voc` VALUES ('1269', 'advanced', ' adj. 高级的, 先进的');
INSERT INTO `voc` VALUES ('1270', 'ambassador', ' n. 大使');
INSERT INTO `voc` VALUES ('1271', 'subsidy', ' n. 补助金, 津贴');
INSERT INTO `voc` VALUES ('1272', 'psychiatry', ' n. 精神病学');
INSERT INTO `voc` VALUES ('1273', 'countryside', ' n. 乡下, 农村');
INSERT INTO `voc` VALUES ('1274', 'continue', ' vt. &amp;vi. 继续, 连续, 维持');
INSERT INTO `voc` VALUES ('1275', 'vitamin', ' n. 维生素');
INSERT INTO `voc` VALUES ('1276', 'reflect', ' v. 反映, 反射, 归咎');
INSERT INTO `voc` VALUES ('1277', 'vital', ' adj. 至关重要的, 生死攸关的, 有活力的, 充满生机的');
INSERT INTO `voc` VALUES ('1278', 'wholly', ' adv. 完全地，一概');
INSERT INTO `voc` VALUES ('1279', 'standpoint', ' n. 立场, 观点');
INSERT INTO `voc` VALUES ('1280', 'drawing', ' n. 图画,绘图技巧,素描');
INSERT INTO `voc` VALUES ('1281', 'visible', ' adj. 可见的, 看得见的');
INSERT INTO `voc` VALUES ('1282', 'quantity', ' n. 量,数量,大量');
INSERT INTO `voc` VALUES ('1283', 'solution', ' n. 解答, 解决办法, 溶解, 溶液');
INSERT INTO `voc` VALUES ('1284', 'height', ' n. 高度,高处,身高, 最高峰, 极点');
INSERT INTO `voc` VALUES ('1285', 'maid', ' n. 女仆, 侍女');
INSERT INTO `voc` VALUES ('1286', 'preceding', ' adj. 在前的,在先的');
INSERT INTO `voc` VALUES ('1287', 'publication', ' n. 出版, 发行, 出版物, 公布, 发表');
INSERT INTO `voc` VALUES ('1288', 'accustomed', ' adj. 习惯了的,通常的');
INSERT INTO `voc` VALUES ('1289', 'differ', ' vi. 不一致,不同(意见)');
INSERT INTO `voc` VALUES ('1290', 'solidarity', ' n. 团结');
INSERT INTO `voc` VALUES ('1291', 'booth', ' n. 电话亭,货摊,小间');
INSERT INTO `voc` VALUES ('1292', 'sociable', ' adj. 好交际的, 社交的');
INSERT INTO `voc` VALUES ('1293', 'often', ' adv. 经常');
INSERT INTO `voc` VALUES ('1294', 'efficient', ' adj. 效率高的,有能力的');
INSERT INTO `voc` VALUES ('1295', 'concentration', ' n. 集中, 专心, 浓度');
INSERT INTO `voc` VALUES ('1296', 'ashore', ' adv. 在岸上, 上岸');
INSERT INTO `voc` VALUES ('1297', 'fragrant', ' adj. 芬香的,馥郁的,愉快的');
INSERT INTO `voc` VALUES ('1298', 'thesis', ' n. 毕业论文, 论题, 论文');
INSERT INTO `voc` VALUES ('1299', 'enterprise', ' n. 企业,企划,进取心');
INSERT INTO `voc` VALUES ('1300', 'attorney', ' n. (辩护)律师');
INSERT INTO `voc` VALUES ('1301', 'absorb', ' v. 吸收,吸引...的注意,使全神贯注');
INSERT INTO `voc` VALUES ('1302', 'heaven', ' n. 天堂；天空');
INSERT INTO `voc` VALUES ('1303', 'petroleum', ' n. 石油');
INSERT INTO `voc` VALUES ('1304', 'consequence', ' n. 结果,后果');
INSERT INTO `voc` VALUES ('1305', 'lawn', ' n. 草地,草坪,上等细麻布');
INSERT INTO `voc` VALUES ('1306', 'installment', ' n. 分期付款(安装, 一期)');
INSERT INTO `voc` VALUES ('1307', 'destructive', ' adj. 破坏性的, 有害的');
INSERT INTO `voc` VALUES ('1308', 'inevitable', ' adj. 不可避免的, 必然(发生)的');
INSERT INTO `voc` VALUES ('1309', 'wooden', ' adj. 木制的，生硬笨拙的');
INSERT INTO `voc` VALUES ('1310', 'niece', ' n. 侄女,外甥女,教士的私生女');
INSERT INTO `voc` VALUES ('1311', 'electricity', ' n. 电力；电流；强烈的紧张情绪');
INSERT INTO `voc` VALUES ('1312', 'tragedy', ' n. 悲剧, 惨事, 灾难');
INSERT INTO `voc` VALUES ('1313', 'avert', ' vt. 转开,避免,防止');
INSERT INTO `voc` VALUES ('1314', 'obstacle', ' n. 障碍,绊脚石');
INSERT INTO `voc` VALUES ('1315', 'resemblance', ' n. 相像，相似');
INSERT INTO `voc` VALUES ('1316', 'everywhere', ' adv. 到处, 无论何处');
INSERT INTO `voc` VALUES ('1317', 'establish', ' v. 建立, 确立, 创办');
INSERT INTO `voc` VALUES ('1318', 'despise', ' vt. 轻视');
INSERT INTO `voc` VALUES ('1319', 'onion', ' n. 洋葱');
INSERT INTO `voc` VALUES ('1320', 'prisoner', ' n. 囚犯');
INSERT INTO `voc` VALUES ('1321', 'transition', ' n. 过渡,转变');
INSERT INTO `voc` VALUES ('1322', 'eventually', ' adv. 终于, 最后');
INSERT INTO `voc` VALUES ('1323', 'emigrate', ' v. 移居, 移民');
INSERT INTO `voc` VALUES ('1324', 'cupboard', ' n. 碗橱');
INSERT INTO `voc` VALUES ('1325', 'solemn', ' adj. 庄严的, 严肃的, 隆重的');
INSERT INTO `voc` VALUES ('1326', 'subtle', ' adj. 微妙的,敏感的,精细的,狡诈的,不明显的');
INSERT INTO `voc` VALUES ('1327', 'dinner', ' n. 主餐, 晚餐, 晚宴');
INSERT INTO `voc` VALUES ('1328', 'should', ' verb auxiliary. 应该,竟然,可能');
INSERT INTO `voc` VALUES ('1329', 'its', ' pron.（it的所有格)它的');
INSERT INTO `voc` VALUES ('1330', 'deduce', ' vt. 演绎,推断,溯源');
INSERT INTO `voc` VALUES ('1331', 'chimney', ' n. 烟囱');
INSERT INTO `voc` VALUES ('1332', 'appointment', ' n. 约会, 预约, 任命, 委派, 官职, 设备');
INSERT INTO `voc` VALUES ('1333', 'clerk', ' n. 职员,办事员');
INSERT INTO `voc` VALUES ('1334', 'behavior', ' n. 行为,举止');
INSERT INTO `voc` VALUES ('1335', 'whom', ' pron. [who的宾格]谁');
INSERT INTO `voc` VALUES ('1336', 'homogeneous', ' adj. 同种的,同质的,均质的');
INSERT INTO `voc` VALUES ('1337', 'cautious', ' adj. 十分小心的, 谨慎的');
INSERT INTO `voc` VALUES ('1338', 'semester', ' n. 学期');
INSERT INTO `voc` VALUES ('1339', 'spider', ' n. 蜘蛛');
INSERT INTO `voc` VALUES ('1340', 'pavement', ' n. 人行道');
INSERT INTO `voc` VALUES ('1341', 'consequently', ' adv. 所以, 因此');
INSERT INTO `voc` VALUES ('1342', 'TV', ' abbr. (=television) 电视, 电视机');
INSERT INTO `voc` VALUES ('1343', 'removal', ' n. 移动, 移居, 除去');
INSERT INTO `voc` VALUES ('1344', 'rich', ' adj. 富有的,浓厚的,贵重的,富饶的');
INSERT INTO `voc` VALUES ('1345', 'complicate', ' vt. 弄复杂, 使错综, 使起纠纷');
INSERT INTO `voc` VALUES ('1346', 'kneel', ' v. 跪');
INSERT INTO `voc` VALUES ('1347', 'river', ' n. 江, 河');
INSERT INTO `voc` VALUES ('1348', 'confirm', ' v. 确定, 批准, 证实');
INSERT INTO `voc` VALUES ('1349', 'attain', ' vt. &amp;vi. 达到,获得');
INSERT INTO `voc` VALUES ('1350', 'probability', ' n. 可能性, 或然率, 机率');
INSERT INTO `voc` VALUES ('1351', 'historian', ' n. 历史学家，编史者');
INSERT INTO `voc` VALUES ('1352', 'dangerous', ' adj. 危险的,引起危险的');
INSERT INTO `voc` VALUES ('1353', 'rotten', ' adj. 腐烂的, 腐朽的');
INSERT INTO `voc` VALUES ('1354', 'garlic', ' n. 大蒜');
INSERT INTO `voc` VALUES ('1355', 'emotion', ' n. 情感,情绪,感动');
INSERT INTO `voc` VALUES ('1356', 'conductor', ' n. 售票员，导体，指挥');
INSERT INTO `voc` VALUES ('1357', 'February', ' n. 二月');
INSERT INTO `voc` VALUES ('1358', 'owl', ' n. 猫头鹰');
INSERT INTO `voc` VALUES ('1359', 'thirsty', ' adj. 口渴的, 渴望的');
INSERT INTO `voc` VALUES ('1360', 'six', ' n.六；六个；六岁；六点 num.六；六个');
INSERT INTO `voc` VALUES ('1361', 'psychology', ' n. 心理学');
INSERT INTO `voc` VALUES ('1362', 'specialist', ' n. 专家');
INSERT INTO `voc` VALUES ('1363', 'fashionable', ' adj. 流行的, 时髦的');
INSERT INTO `voc` VALUES ('1364', 'astonish', ' v. 使...惊讶');
INSERT INTO `voc` VALUES ('1365', 'naive', ' adj. 天真的,幼稚的');
INSERT INTO `voc` VALUES ('1366', 'recognize', ' vt. 认出,认可,承认,意识到,表示感激');
INSERT INTO `voc` VALUES ('1367', 'petrol', ' n. 汽油');
INSERT INTO `voc` VALUES ('1368', 'decorate', ' vt. 装饰, 装修, 授予某人奖章或其他奖状');
INSERT INTO `voc` VALUES ('1369', 'distill', ' v. 蒸馏, 滴下，吸取，提炼');
INSERT INTO `voc` VALUES ('1370', 'event', ' n. 大事, 事件, 项目, 活动');
INSERT INTO `voc` VALUES ('1371', 'panorama', ' n. 全景，全景画，全景照片，概观，一连串景象或事物');
INSERT INTO `voc` VALUES ('1372', 'prominent', ' adj. 杰出的,显著的,突出的');
INSERT INTO `voc` VALUES ('1373', 'anxious', ' adj. 焦急的, 忧虑的');
INSERT INTO `voc` VALUES ('1374', 'withstand', ' vt. 对抗,经得起,承受');
INSERT INTO `voc` VALUES ('1375', 'pie', ' n.饼图 n.派, 馅饼, 杂乱, 喜鹊, 爱说话的人 vt.弄乱');
INSERT INTO `voc` VALUES ('1376', 'tolerance', ' n. 忍耐力,宽容,容忍,公差');
INSERT INTO `voc` VALUES ('1377', 'division', ' n. 区分,分开,除法,公司,部门，师（军队里）');
INSERT INTO `voc` VALUES ('1378', 'kindergarten', ' n. 幼儿园');
INSERT INTO `voc` VALUES ('1379', 'dictation', ' n. 听写');
INSERT INTO `voc` VALUES ('1380', 'commerce', ' n. 商业, 贸易');
INSERT INTO `voc` VALUES ('1381', 'hence', ' adv. 今后, 从此, 因此, 所以');
INSERT INTO `voc` VALUES ('1382', 'horsepower', ' n. 马力(功率单位)');
INSERT INTO `voc` VALUES ('1383', 'unfold', ' v. 展开, 开放, 显露');
INSERT INTO `voc` VALUES ('1384', 'cooperate', ' vi. 合作,协力');
INSERT INTO `voc` VALUES ('1385', 'scientific', ' adj. 科学的');
INSERT INTO `voc` VALUES ('1386', 'concept', ' n. 概念, 观念');
INSERT INTO `voc` VALUES ('1387', 'frontier', ' n. 边界,边境，尖端，边缘');
INSERT INTO `voc` VALUES ('1388', 'jealous', ' adj. 妒忌的,戒备的');
INSERT INTO `voc` VALUES ('1389', 'empire', ' n. 帝国');
INSERT INTO `voc` VALUES ('1390', 'affection', ' n. 慈爱,爱,感情');
INSERT INTO `voc` VALUES ('1391', 'paralyze', ' vt. 使...瘫痪, 使目瞪口呆');
INSERT INTO `voc` VALUES ('1392', 'secretary', ' n. 秘书,部长,大臣,书记');
INSERT INTO `voc` VALUES ('1393', 'convenient', ' adj. 方便的');
INSERT INTO `voc` VALUES ('1394', 'profession', ' n. 职业,专业,声明,信仰');
INSERT INTO `voc` VALUES ('1395', 'ability', ' n. 才能, 能力');
INSERT INTO `voc` VALUES ('1396', 'unique', ' adj. 独一无二的, 独特的, 稀罕的');
INSERT INTO `voc` VALUES ('1397', 'evaporate', ' v. 蒸发, 失去水分, 消失');
INSERT INTO `voc` VALUES ('1398', 'warmth', ' n. 暖和, 温暖, 热烈, 热情, 热心');
INSERT INTO `voc` VALUES ('1399', 'entry', ' n. 进入,入口,登记,项目');
INSERT INTO `voc` VALUES ('1400', 'appear', ' vi. 出现,显得,出版,抵达');
INSERT INTO `voc` VALUES ('1401', 'again', ' adv. 又,再,另一方面');
INSERT INTO `voc` VALUES ('1402', 'conversely', ' adv. 相反地');
INSERT INTO `voc` VALUES ('1403', 'admire', ' vt. 钦佩, 羡慕, 赞美');
INSERT INTO `voc` VALUES ('1404', 'propaganda', ' n. 宣传, 宣传的内容');
INSERT INTO `voc` VALUES ('1405', 'sympathize', ' v. 同情, 同感');
INSERT INTO `voc` VALUES ('1406', 'orchard', ' n. 果园');
INSERT INTO `voc` VALUES ('1407', 'strict', ' adj. 严格的, 精确的, 完全的');
INSERT INTO `voc` VALUES ('1408', 'subway', ' n. 地铁');
INSERT INTO `voc` VALUES ('1409', 'portray', ' v. 描写,描写...的肖像,逼真地描写');
INSERT INTO `voc` VALUES ('1410', 'specimen', ' n. 样本,标本');
INSERT INTO `voc` VALUES ('1411', 'affect', ' vt. 影响, 作用, 感动');
INSERT INTO `voc` VALUES ('1412', 'beloved', ' adj. 心爱的');
INSERT INTO `voc` VALUES ('1413', 'pregnant', ' adj. 怀孕的，意味深长的,含蓄的，富于想象力的');
INSERT INTO `voc` VALUES ('1414', 'radiate', ' v. 放射, 散发, 辐射');
INSERT INTO `voc` VALUES ('1415', 'pendulum', ' n. 摆, 钟摆，摇摆不定的事态（或局面）');
INSERT INTO `voc` VALUES ('1416', 'them', ' pron. 他(她, 它)们');
INSERT INTO `voc` VALUES ('1417', 'wicked', ' adj. 邪恶的；恶劣的；不道德的；顽皮的');
INSERT INTO `voc` VALUES ('1418', 'knowledge', ' n. 知识,了解');
INSERT INTO `voc` VALUES ('1419', 'alter', ' v. 改变');
INSERT INTO `voc` VALUES ('1420', 'sausage', ' n. 香肠,腊肠');
INSERT INTO `voc` VALUES ('1421', 'prince', ' n. 王子, 亲王, 佼佼者');
INSERT INTO `voc` VALUES ('1422', 'latitude', ' n. 纬度，界限,自由选择权');
INSERT INTO `voc` VALUES ('1423', 'petty', ' adj. 琐碎的,小规模的,小气的');
INSERT INTO `voc` VALUES ('1424', 'grow', ' vt. &amp;vi. 种植,生长,变成,逐渐开始');
INSERT INTO `voc` VALUES ('1425', 'necessity', ' n. 需要, 必需品, 必然');
INSERT INTO `voc` VALUES ('1426', 'piston', ' n. 活塞');
INSERT INTO `voc` VALUES ('1427', 'complicated', ' adj. 复杂的, 难懂的');
INSERT INTO `voc` VALUES ('1428', 'confuse', ' vt. 混乱,狼狈,困惑');
INSERT INTO `voc` VALUES ('1429', 'vessel', ' n. 船,容器,脉管,血管,化身');
INSERT INTO `voc` VALUES ('1430', 'priority', ' n. 优先权, 优先顺序, 优先');
INSERT INTO `voc` VALUES ('1431', 'translation', ' n. 翻译, 译文');
INSERT INTO `voc` VALUES ('1432', 'authority', ' n. 权威；权力；当局');
INSERT INTO `voc` VALUES ('1433', 'favorable', ' adj. 有利的,赞许的,良好的,顺利的,偏袒的');
INSERT INTO `voc` VALUES ('1434', 'handy', ' adj. 方便的, 手边的');
INSERT INTO `voc` VALUES ('1435', 'germ', ' n. 微生物, 细菌');
INSERT INTO `voc` VALUES ('1436', 'horizon', ' n. 地平线；视野；眼界');
INSERT INTO `voc` VALUES ('1437', 'percentage', ' n. 百分率,比例,可能性');
INSERT INTO `voc` VALUES ('1438', 'impart', ' vt. 传授, 赋予, 告知');
INSERT INTO `voc` VALUES ('1439', 'accordingly', ' adv. 因此,于是,如前所说 照着 相应地');
INSERT INTO `voc` VALUES ('1440', 'turbulent', ' adj.骚乱的，混乱的； 激流的，湍流的； 吵闹的； 强横的');
INSERT INTO `voc` VALUES ('1441', 'invert', ' v. 使反向;使倒置');
INSERT INTO `voc` VALUES ('1442', 'cloth', ' n. 布料, 一块布');
INSERT INTO `voc` VALUES ('1443', 'carrot', ' n. 胡萝卜,报酬,好处');
INSERT INTO `voc` VALUES ('1444', 'deprive', ' vt. 剥夺,拒绝,免职');
INSERT INTO `voc` VALUES ('1445', 'army', ' n. 军队,陆军,大群');
INSERT INTO `voc` VALUES ('1446', 'socialism', ' n. 社会主义');
INSERT INTO `voc` VALUES ('1447', 'week', ' n. 星期, 周');
INSERT INTO `voc` VALUES ('1448', 'priest', ' n. 教士, 神父');
INSERT INTO `voc` VALUES ('1449', 'guideline', ' n. 指引，指导方针');
INSERT INTO `voc` VALUES ('1450', 'valve', ' n. 瓣膜,阀门,电子管,真空管');
INSERT INTO `voc` VALUES ('1451', 'sturdy', ' adj. 强健的, 健全的');
INSERT INTO `voc` VALUES ('1452', 'corporation', ' n. 公司, 法人, 集团');
INSERT INTO `voc` VALUES ('1453', 'expend', ' v. 花费,消耗,支出');
INSERT INTO `voc` VALUES ('1454', 'outlook', ' n. 观点,见解,展望,前景');
INSERT INTO `voc` VALUES ('1455', 'sacred', ' adj. 神圣的,受尊重的');
INSERT INTO `voc` VALUES ('1456', 'basket', ' n. 篮,篓,筐，篮球筐,得分');
INSERT INTO `voc` VALUES ('1457', 'tiny', ' adj. 极小的,微小的');
INSERT INTO `voc` VALUES ('1458', 'successive', ' adj. 接连的, 连续的, 接二连三的');
INSERT INTO `voc` VALUES ('1459', 'henceforth', ' adv. 今后');
INSERT INTO `voc` VALUES ('1460', 'badly', ' adv. 严重地, 恶劣地, 极度地');
INSERT INTO `voc` VALUES ('1461', 'monopoly', ' n. 垄断,专利, 独占，控制');
INSERT INTO `voc` VALUES ('1462', 'temptation', ' n. 诱惑，引诱； 诱惑物');
INSERT INTO `voc` VALUES ('1463', 'excite', ' v. 刺激, 使...兴奋, 激励');
INSERT INTO `voc` VALUES ('1464', 'humiliate', ' v. 使...丢脸,使...蒙羞,屈辱');
INSERT INTO `voc` VALUES ('1465', 'satisfactory', ' adj. 令人满意的');
INSERT INTO `voc` VALUES ('1466', 'regular', ' adj. 有规律的,有规则的,整齐的,正规的');
INSERT INTO `voc` VALUES ('1467', 'sophomore', ' n. 大学二年级生(在企业中工作第二年的人)');
INSERT INTO `voc` VALUES ('1468', 'complain', ' vi. 抱怨,悲叹,控诉');
INSERT INTO `voc` VALUES ('1469', 'something', ' pron.某事(物), 某东西');
INSERT INTO `voc` VALUES ('1470', 'comprehend', ' vt. 充分理解(综合,包含)');
INSERT INTO `voc` VALUES ('1471', 'embody', ' vt. 代表, 使具体化, 包含,使(精神)肉体化');
INSERT INTO `voc` VALUES ('1472', 'disturbance', ' n. 扰乱,骚动');
INSERT INTO `voc` VALUES ('1473', 'collide', ' vi. 碰撞,互撞,砥触');
INSERT INTO `voc` VALUES ('1474', 'capitalism', ' n. 资本主义');
INSERT INTO `voc` VALUES ('1475', 'badge', ' n. 徽章,标记');
INSERT INTO `voc` VALUES ('1476', 'shelf', ' n. 架子,搁板(状物),岩棚');
INSERT INTO `voc` VALUES ('1477', 'desert', ' n. 沙漠,荒地,应得(的惩罚或奖励)adj. 沙漠的,荒凉的vt. 遗弃vi. 擅离职守');
INSERT INTO `voc` VALUES ('1478', 'spectrum', ' n. 光谱, （比喻）范围, 系列');
INSERT INTO `voc` VALUES ('1479', 'sprinkle', ' v. 洒, 散置, 微雨');
INSERT INTO `voc` VALUES ('1480', 'china', ' 中国');
INSERT INTO `voc` VALUES ('1481', 'candle', ' n. 蜡烛');
INSERT INTO `voc` VALUES ('1482', 'moment', ' n. 片刻，瞬间，准确时刻，非常重要的时机，力矩');
INSERT INTO `voc` VALUES ('1483', 'robust', ' adj. 强壮的,强健的,粗野的,需要体力的,浓的');
INSERT INTO `voc` VALUES ('1484', 'typist', ' n. 打字员');
INSERT INTO `voc` VALUES ('1485', 'goal', ' n. 目标，目的； 球门； 终点；');
INSERT INTO `voc` VALUES ('1486', 'Tuesday', ' n. 星期二');
INSERT INTO `voc` VALUES ('1487', 'morality', ' n. 道德, 美德, 品行, 道德观');
INSERT INTO `voc` VALUES ('1488', 'graceful', ' adj. 优雅的');
INSERT INTO `voc` VALUES ('1489', 'contemplate', ' vt. 注视,沉思,打算');
INSERT INTO `voc` VALUES ('1490', 'refreshment', ' n. 恢复，精神爽快，提神之事物；点心，茶点');
INSERT INTO `voc` VALUES ('1491', 'ponder', ' vt. &amp;vi. 沉思,考虑');
INSERT INTO `voc` VALUES ('1492', 'factory', ' n. 工厂, 制造场所');
INSERT INTO `voc` VALUES ('1493', 'hemisphere', ' n. 半球');
INSERT INTO `voc` VALUES ('1494', 'behalf', ' n. 代表；利益');
INSERT INTO `voc` VALUES ('1495', 'engage', 'v. 啮合；雇用；聘用；吸引住（注意力、兴趣）；参与，从事');
INSERT INTO `voc` VALUES ('1496', 'symposium', ' n. 讨论会(论文集, 酒会)');
INSERT INTO `voc` VALUES ('1497', 'freedom', ' n. 自由');
INSERT INTO `voc` VALUES ('1498', 'lamp', ' n. 灯, 发光或反射光的天体, 灵光');
INSERT INTO `voc` VALUES ('1499', 'ox', ' n. 公牛,牛');
INSERT INTO `voc` VALUES ('1500', 'drastic', ' adj. 激烈的,猛烈的,极其严重的');
INSERT INTO `voc` VALUES ('1501', 'us', ' pron. 我们(we的宾格)');
INSERT INTO `voc` VALUES ('1502', 'concession', ' n. 让步, 妥协, 特许权');
INSERT INTO `voc` VALUES ('1503', 'supervise', ' vt. 监督,管理,指导');
INSERT INTO `voc` VALUES ('1504', 'accident', ' n. 事故,意外的事');
INSERT INTO `voc` VALUES ('1505', 'desperate', ' adj. 不顾一切的,绝望的, 极想得到的');
INSERT INTO `voc` VALUES ('1506', 'engineering', ' n. 工程(学),工程技术');
INSERT INTO `voc` VALUES ('1507', 'compute', ' vt. 计算');
INSERT INTO `voc` VALUES ('1508', 'education', ' n. 教育,培养');
INSERT INTO `voc` VALUES ('1509', 'futile', ' adj. 无效的, 无用的');
INSERT INTO `voc` VALUES ('1510', 'hall', ' n. 大厅, 礼堂');
INSERT INTO `voc` VALUES ('1511', 'politics', ' n. 政治,政策,政治活动,政见');
INSERT INTO `voc` VALUES ('1512', 'generator', ' n. 发电机, 发生器');
INSERT INTO `voc` VALUES ('1513', 'via', ' prep. 经由');
INSERT INTO `voc` VALUES ('1514', 'prove', ' v. 证明, 查验, 显示');
INSERT INTO `voc` VALUES ('1515', 'gentleman', ' n. 绅士, 先生，有教养的人');
INSERT INTO `voc` VALUES ('1516', 'entertain', ' vt. &amp;vi. 娱乐,招待,怀抱');
INSERT INTO `voc` VALUES ('1517', 'thirty', ' num. 三十');
INSERT INTO `voc` VALUES ('1518', 'intention', ' n. 意图,意向,目的');
INSERT INTO `voc` VALUES ('1519', 'gene', ' n. 基因');
INSERT INTO `voc` VALUES ('1520', 'regime', ' n. 政权，政体；社会制度；管理体制');
INSERT INTO `voc` VALUES ('1521', 'attach', ' v. 附上, 系上, 贴上, 使依恋');
INSERT INTO `voc` VALUES ('1522', 'voltage', ' n. 电压');
INSERT INTO `voc` VALUES ('1523', 'during', ' prep. 在...期间');
INSERT INTO `voc` VALUES ('1524', 'urgent', ' adj. 急迫的,紧要的,紧急的');
INSERT INTO `voc` VALUES ('1525', 'September', ' n. 九月');
INSERT INTO `voc` VALUES ('1526', 'launch', ' n.&amp;amp;v. 下水,发射,开始,升天,汽艇');
INSERT INTO `voc` VALUES ('1527', 'nation', ' n. 国家, 民族');
INSERT INTO `voc` VALUES ('1528', 'talent', ' n. 才能, 人才, 天资');
INSERT INTO `voc` VALUES ('1529', 'contrast', ' n.对比，对照； 差异； 对照物，对立面； [摄]反差');
INSERT INTO `voc` VALUES ('1530', 'sympathy', ' n. 同情,忠诚,感应');
INSERT INTO `voc` VALUES ('1531', 'teacher', ' n. 教师');
INSERT INTO `voc` VALUES ('1532', 'reduction', ' n. 减少,缩小, (化学)还原反应, (数学)约分');
INSERT INTO `voc` VALUES ('1533', 'session', ' n.开会，会议；（法庭的）开庭； 会期，学期； （进行某活动连续的）一段时间');
INSERT INTO `voc` VALUES ('1534', 'sailor', ' n. 海员, 水手，扁平的硬边草帽');
INSERT INTO `voc` VALUES ('1535', 'whose', ' pron. 谁的');
INSERT INTO `voc` VALUES ('1536', 'waist', ' n. 腰, 腰部');
INSERT INTO `voc` VALUES ('1537', 'endow', ' vt. 捐助,赋予,使具有某种品质');
INSERT INTO `voc` VALUES ('1538', 'lavatory', ' n. 盥洗室, 厕所');
INSERT INTO `voc` VALUES ('1539', 'peninsula', ' n. 半岛');
INSERT INTO `voc` VALUES ('1540', 'enlighten', ' v. 授与...知识, 启发, 启蒙');
INSERT INTO `voc` VALUES ('1541', 'gently', ' adv. 轻轻地, 温柔地');
INSERT INTO `voc` VALUES ('1542', 'gasoline', ' n. 汽油');
INSERT INTO `voc` VALUES ('1543', 'tragic', ' adj. 悲剧的, 悲惨的');
INSERT INTO `voc` VALUES ('1544', 'among', ' prep. 在...之中');
INSERT INTO `voc` VALUES ('1545', 'misfortune', ' n. 不幸, 灾祸');
INSERT INTO `voc` VALUES ('1546', 'pastime', ' n. 消遣,娱乐');
INSERT INTO `voc` VALUES ('1547', 'critical', ' adj.批评的，爱挑剔的； 危险的，危急的； 决定性的； [物]临界的');
INSERT INTO `voc` VALUES ('1548', 'degree', ' n. 学位，程度, 度数');
INSERT INTO `voc` VALUES ('1549', 'observe', ' v. 观察, 遵守, 注意到');
INSERT INTO `voc` VALUES ('1550', 'expedition', ' n. 远征,探险队,迅速');
INSERT INTO `voc` VALUES ('1551', 'succession', ' n. 连续, 继承权, 继位');
INSERT INTO `voc` VALUES ('1552', 'descent', ' n. 下落,家世,倾斜,侵袭');
INSERT INTO `voc` VALUES ('1553', 'drawer', ' n. 抽屉');
INSERT INTO `voc` VALUES ('1554', 'classify', ' v. 分类,归类,分等');
INSERT INTO `voc` VALUES ('1555', 'occupy', ' vt. 占领,占,住进');
INSERT INTO `voc` VALUES ('1556', 'threaten', ' vt. &amp;vi. 威胁,构成威胁');
INSERT INTO `voc` VALUES ('1557', 'dilemma', ' n. 困境,进退两难');
INSERT INTO `voc` VALUES ('1558', 'monarch', ' n. 帝王, 统治者, 元首/nn. 君王斑点蝶');
INSERT INTO `voc` VALUES ('1559', 'allege', ' vt. 断言,宣称');
INSERT INTO `voc` VALUES ('1560', 'selection', ' n. 选择,挑选,挑选出来的人或事');
INSERT INTO `voc` VALUES ('1561', 'motel', ' n. 汽车旅馆');
INSERT INTO `voc` VALUES ('1562', 'combination', ' n. 结合,联合，联合体');
INSERT INTO `voc` VALUES ('1563', 'evoke', ' vt. 唤起,引起');
INSERT INTO `voc` VALUES ('1564', 'autumn', ' n. 秋季,秋天');
INSERT INTO `voc` VALUES ('1565', 'period', ' n. 学时, 课时; 一段时间, 时期, 周期; 句号');
INSERT INTO `voc` VALUES ('1566', 'acknowledge', ' vt. 承认,公认,告知收到,表示感谢,注意到');
INSERT INTO `voc` VALUES ('1567', 'actor', ' n. 男演员');
INSERT INTO `voc` VALUES ('1568', 'write', ' v. 写');
INSERT INTO `voc` VALUES ('1569', 'assistance', ' n. 帮助, 援助');
INSERT INTO `voc` VALUES ('1570', 'city', ' n. 城市');
INSERT INTO `voc` VALUES ('1571', 'role', ' n. 角色,影响程度');
INSERT INTO `voc` VALUES ('1572', 'resemble', ' v. 相似, 类似, 像');
INSERT INTO `voc` VALUES ('1573', 'fortune', ' n. 财产,命运,运气');
INSERT INTO `voc` VALUES ('1574', 'essence', ' n. 本质,精髓,要素,香精');
INSERT INTO `voc` VALUES ('1575', 'hair', ' n. 头发, 毛发, 毛织物, 极少量, 极短距离');
INSERT INTO `voc` VALUES ('1576', 'window', ' n. 窗户');
INSERT INTO `voc` VALUES ('1577', 'deem', ' v. 认为, 相信');
INSERT INTO `voc` VALUES ('1578', 'texture', ' n. 质地；纹理；结构；本质，实质');
INSERT INTO `voc` VALUES ('1579', 'finite', ' adj. 有限的');
INSERT INTO `voc` VALUES ('1580', 'prestige', ' n. 威望,声望');
INSERT INTO `voc` VALUES ('1581', 'vicious', ' adj. 恶毒的, 恶意的, 凶残的, 剧烈的, 严重的');
INSERT INTO `voc` VALUES ('1582', 'authentic', ' adj. 可靠的,可信的,真的,真正的');
INSERT INTO `voc` VALUES ('1583', 'occupation', ' n. 职业');
INSERT INTO `voc` VALUES ('1584', 'propel', ' v. 推进, 驱使');
INSERT INTO `voc` VALUES ('1585', 'defy', ' vt. 反抗,藐视,挑衅');
INSERT INTO `voc` VALUES ('1586', 'prevail', ' vi. 获胜, 盛行, 主导');
INSERT INTO `voc` VALUES ('1587', 'sea', ' n. 海, 海洋');
INSERT INTO `voc` VALUES ('1588', 'married', ' adj. 已婚的');
INSERT INTO `voc` VALUES ('1589', 'scarf', ' n. 围巾');
INSERT INTO `voc` VALUES ('1590', 'underline', ' v. 在...下面划线');
INSERT INTO `voc` VALUES ('1591', 'bleak', ' adj. 萧瑟的,严寒的,阴郁的');
INSERT INTO `voc` VALUES ('1592', 'astronaut', ' n. 宇航员');
INSERT INTO `voc` VALUES ('1593', 'zeal', ' n. 热情, 热忱');
INSERT INTO `voc` VALUES ('1594', 'amiable', ' adj. 和蔼的, 亲切的');
INSERT INTO `voc` VALUES ('1595', 'pronoun', ' n. 代词');
INSERT INTO `voc` VALUES ('1596', 'amplify', ' v. 扩大, 详述, 使...增幅');
INSERT INTO `voc` VALUES ('1597', 'technique', ' n. 技术');
INSERT INTO `voc` VALUES ('1598', 'danger', ' n. 危险');
INSERT INTO `voc` VALUES ('1599', 'plentiful', ' adj. 丰富的, 多的，充裕的');
INSERT INTO `voc` VALUES ('1600', 'geography', ' n. 地理');
INSERT INTO `voc` VALUES ('1601', 'mosaic', ' adj. 摩西的 n. 马赛克, 镶嵌细工, 镶木细工');
INSERT INTO `voc` VALUES ('1602', 'independence', ' n. 独立, 自主, 自立');
INSERT INTO `voc` VALUES ('1603', 'servant', ' n. 仆人');
INSERT INTO `voc` VALUES ('1604', 'adopt', ' v. 采用, 收养, 接受');
INSERT INTO `voc` VALUES ('1605', 'birth', ' n. 出身, 血统, 出生, 诞生, 出现, 起源');
INSERT INTO `voc` VALUES ('1606', 'literally', ' adv. 逐字地, 按照字面上地, 不夸张地');
INSERT INTO `voc` VALUES ('1607', 'temperament', ' n. 气质, 性质, 性情');
INSERT INTO `voc` VALUES ('1608', 'setback', ' n. 顿挫,挫折,退步');
INSERT INTO `voc` VALUES ('1609', 'pneumonia', ' n. 肺炎');
INSERT INTO `voc` VALUES ('1610', 'massive', ' adj. 巨大的, 大规模的, 大量的, 大范围的');
INSERT INTO `voc` VALUES ('1611', 'elite', ' n. 精华, 精锐, 中坚份子');
INSERT INTO `voc` VALUES ('1612', 'dig', ' v. 挖, 翻土');
INSERT INTO `voc` VALUES ('1613', 'chaos', ' n. 混乱');
INSERT INTO `voc` VALUES ('1614', 'remember', ' vt. &amp;vi. 记得,记忆');
INSERT INTO `voc` VALUES ('1615', 'excursion', ' n. 远足, 短途旅行');
INSERT INTO `voc` VALUES ('1616', 'theoretical', ' adj. 理论上的');
INSERT INTO `voc` VALUES ('1617', 'notebook', ' n. 笔记本，笔记本电脑');
INSERT INTO `voc` VALUES ('1618', 'relieve', ' vt. 减轻,救济,解除');
INSERT INTO `voc` VALUES ('1619', 'frighten', ' v. 使惊吓, 惊恐');
INSERT INTO `voc` VALUES ('1620', 'pharmacy', ' n. 药房,配药学');
INSERT INTO `voc` VALUES ('1621', 'tonight', ' n.&amp;amp;adv. 今晚');
INSERT INTO `voc` VALUES ('1622', 'ripe', ' adj. 成熟的,上年纪的,合适的');
INSERT INTO `voc` VALUES ('1623', 'immerse', ' vt. 浸,陷入');
INSERT INTO `voc` VALUES ('1624', 'nice', ' adj. 美好的,令人愉快的,漂亮的,善意的');
INSERT INTO `voc` VALUES ('1625', 'profound', ' adj. 极深的,深奥的,深厚的,严重的');
INSERT INTO `voc` VALUES ('1626', 'magnificent', ' adj. 壮丽的,宏伟的,极好的');
INSERT INTO `voc` VALUES ('1627', 'gloomy', ' adj. 阴暗的,抑沉的,忧闷的');
INSERT INTO `voc` VALUES ('1628', 'situation', ' n. 位置, 形势, 局面, 处境, 状况, 职位');
INSERT INTO `voc` VALUES ('1629', 'transaction', ' n. 交易,处理,办理');
INSERT INTO `voc` VALUES ('1630', 'feudal', ' adj. 封建的,封地的');
INSERT INTO `voc` VALUES ('1631', 'hello', ' int.（见面打招呼或打电话用语）喂,哈罗');
INSERT INTO `voc` VALUES ('1632', 'wear', ' n. 穿著,磨损,耐久性 vt. 穿著,用旧,耗损,呈现 vi. 磨损, 变旧');
INSERT INTO `voc` VALUES ('1633', 'possible', ' adj. 可能的');
INSERT INTO `voc` VALUES ('1634', 'various', ' adj. 各种各样的');
INSERT INTO `voc` VALUES ('1635', 'simply', ' adv.&amp;amp;adj. 简单地,仅仅');
INSERT INTO `voc` VALUES ('1636', 'peach', ' n. 桃子, 桃红色');
INSERT INTO `voc` VALUES ('1637', 'year', ' n.年； 年纪； 一年的期间； 某年级的学生');
INSERT INTO `voc` VALUES ('1638', 'cousin', ' n. 堂(或表)兄弟(姐妹)');
INSERT INTO `voc` VALUES ('1639', 'emperor', ' n. 皇帝');
INSERT INTO `voc` VALUES ('1640', 'elapse', ' v. 逝去, 过去');
INSERT INTO `voc` VALUES ('1641', 'width', ' n. 宽度,广度,某一宽度的材料');
INSERT INTO `voc` VALUES ('1642', 'smog', ' n. 烟雾');
INSERT INTO `voc` VALUES ('1643', 'angry', ' adj. 生气的,伤口红肿的');
INSERT INTO `voc` VALUES ('1644', 'misunderstand', ' v. 误解, 误会');
INSERT INTO `voc` VALUES ('1645', 'breakdown', ' n. 崩溃,故障,分类,腐烂,失败,一种街舞');
INSERT INTO `voc` VALUES ('1646', 'obedient', ' adj. 服从的, 顺从的');
INSERT INTO `voc` VALUES ('1647', 'analysis', ' n. 分析, 解析');
INSERT INTO `voc` VALUES ('1648', 'health', ' n. 健康,卫生,保健');
INSERT INTO `voc` VALUES ('1649', 'refusal', ' n. 拒绝, 回绝');
INSERT INTO `voc` VALUES ('1650', 'address', 'n. n.地址； 通信处； 演说； 称呼');
INSERT INTO `voc` VALUES ('1651', 'typewriter', 'n. n. 打字机');
INSERT INTO `voc` VALUES ('1652', 'daylight', ' n. 日光，白昼，黎明');
INSERT INTO `voc` VALUES ('1653', 'housework', ' n. 家务劳动');
INSERT INTO `voc` VALUES ('1654', 'car', ' n. 小汽车, 车厢, 吊舱');
INSERT INTO `voc` VALUES ('1655', 'exciting', ' adj. 令人兴奋的');
INSERT INTO `voc` VALUES ('1656', 'wealth', ' n. 财产,财富,大量,丰富');
INSERT INTO `voc` VALUES ('1657', 'wreath', ' n. 花环, 花圈');
INSERT INTO `voc` VALUES ('1658', 'promising', ' adj. 有希望的,有前途的');
INSERT INTO `voc` VALUES ('1659', 'troublesome', ' adj. 令人烦恼的, 讨厌的，困难的，棘手的');
INSERT INTO `voc` VALUES ('1660', 'clever', ' adj. 聪明的,机灵的');
INSERT INTO `voc` VALUES ('1661', 'altogether', ' adv. 总共，完全');
INSERT INTO `voc` VALUES ('1662', 'governor', ' n. 统治者, 管理者, 理事');
INSERT INTO `voc` VALUES ('1663', 'incidence', ' n. 发生(率),入射');
INSERT INTO `voc` VALUES ('1664', 'lawyer', ' n. 律师');
INSERT INTO `voc` VALUES ('1665', 'assess', ' v. 估定, 评定');
INSERT INTO `voc` VALUES ('1666', 'strawberry', ' n. 草莓');
INSERT INTO `voc` VALUES ('1667', 'consistent', ' adj. 始终如一的, 一致的, 坚持的');
INSERT INTO `voc` VALUES ('1668', 'recipe', ' n. 食谱,处方,秘诀');
INSERT INTO `voc` VALUES ('1669', 'youngster', ' n. 年青人, 少年，小伙子，儿童，幼小动物');
INSERT INTO `voc` VALUES ('1670', 'exemplify', ' vt. 例证,例示');
INSERT INTO `voc` VALUES ('1671', 'dramatic', ' adj. 戏剧性的,引人注目的,给人深刻印象的');
INSERT INTO `voc` VALUES ('1672', 'twenty', ' adj. 二十,20,20');
INSERT INTO `voc` VALUES ('1673', 'physician', ' n. 内科医生');
INSERT INTO `voc` VALUES ('1674', 'music', ' n. 音乐,伴奏,美妙的声音');
INSERT INTO `voc` VALUES ('1675', 'stranger', ' n. 陌生人');
INSERT INTO `voc` VALUES ('1676', 'unemployment', ' n. 失业,失业人数');
INSERT INTO `voc` VALUES ('1677', 'poisonous', ' adj. 有毒的');
INSERT INTO `voc` VALUES ('1678', 'statement', ' n. 声明, 陈述');
INSERT INTO `voc` VALUES ('1679', 'practise', ' vt. 实践(使...练习, 养成...的习惯)');
INSERT INTO `voc` VALUES ('1680', 'humid', ' adj. 潮湿的');
INSERT INTO `voc` VALUES ('1681', 'systematic', ' adj. 有系统的, 分类的, 体系的');
INSERT INTO `voc` VALUES ('1682', 'conspicuous', ' adj. 显著的,显而易见的, 显眼的');
INSERT INTO `voc` VALUES ('1683', 'hardly', ' adv. 几乎不');
INSERT INTO `voc` VALUES ('1684', 'she', ' pron. 她');
INSERT INTO `voc` VALUES ('1685', 'ascertain', ' vt. 确定,探知,查明');
INSERT INTO `voc` VALUES ('1686', 'entitle', ' v. 取名为,给与名称,叫做,使有权利');
INSERT INTO `voc` VALUES ('1687', 'relativity', ' n. 相对性，相关性');
INSERT INTO `voc` VALUES ('1688', 'exception', ' n. 除外,例外');
INSERT INTO `voc` VALUES ('1689', 'failure', ' n. 失败,失败的人或事');
INSERT INTO `voc` VALUES ('1690', 'agreement', ' n. 同意, 一致, 协议');
INSERT INTO `voc` VALUES ('1691', 'strengthen', ' vt. &amp;vi. 加强,变坚固');
INSERT INTO `voc` VALUES ('1692', 'complication', ' n. 并发症；复杂；复杂化；混乱');
INSERT INTO `voc` VALUES ('1693', 'coherent', ' adj. 互相耦合的,清晰的，明了的，凝聚性的,连贯的');
INSERT INTO `voc` VALUES ('1694', 'confusion', ' n. 混乱,混淆,不确定状态');
INSERT INTO `voc` VALUES ('1695', 'device', ' n. 装置, 设计, 策略, 设备');
INSERT INTO `voc` VALUES ('1696', 'criticism', ' n. 批评,评论');
INSERT INTO `voc` VALUES ('1697', 'vocation', ' n. 职业,行业,职务');
INSERT INTO `voc` VALUES ('1698', 'ignore', ' vt. 不顾,不理,忽视');
INSERT INTO `voc` VALUES ('1699', 'liver', ' n. 肝脏');
INSERT INTO `voc` VALUES ('1700', 'system', ' n. 系统,体系,制度,体制');
INSERT INTO `voc` VALUES ('1701', 'grieve', ' v. 使...悲伤');
INSERT INTO `voc` VALUES ('1702', 'science', ' n. 科学');
INSERT INTO `voc` VALUES ('1703', 'radioactive', ' adj. 放射性的');
INSERT INTO `voc` VALUES ('1704', 'refute', ' vt.驳斥，驳倒； 否认真实性');
INSERT INTO `voc` VALUES ('1705', 'apparatus', ' n. 装置, 器具, 机构, 组织');
INSERT INTO `voc` VALUES ('1706', 'possession', ' n. 财产, 所有, 拥有');
INSERT INTO `voc` VALUES ('1707', 'somehow', ' adv. 不知怎么地,以某种方式');
INSERT INTO `voc` VALUES ('1708', 'statute', ' n. 法令, 法规');
INSERT INTO `voc` VALUES ('1709', 'course', ' n. 课程, 讲座, 过程, 路线, 一道(菜)');
INSERT INTO `voc` VALUES ('1710', 'consecutive', ' adj. 连续的,连贯的');
INSERT INTO `voc` VALUES ('1711', 'ore', ' n. 矿, 矿石');
INSERT INTO `voc` VALUES ('1712', 'software', ' n. 软件');
INSERT INTO `voc` VALUES ('1713', 'bean', ' n. 豆');
INSERT INTO `voc` VALUES ('1714', 'ocean', ' n. 海洋,大量');
INSERT INTO `voc` VALUES ('1715', 'selfish', ' adj. 自私的, 利己的');
INSERT INTO `voc` VALUES ('1716', 'shoe', ' n. 鞋');
INSERT INTO `voc` VALUES ('1717', 'fridge', ' n. 电冰箱');
INSERT INTO `voc` VALUES ('1718', 'cancer', ' n. 癌,巨蟹座');
INSERT INTO `voc` VALUES ('1719', 'distract', ' vt. 转移,分心');
INSERT INTO `voc` VALUES ('1720', 'typhoon', ' n. 台风');
INSERT INTO `voc` VALUES ('1721', 'seven', ' num. 七');
INSERT INTO `voc` VALUES ('1722', 'triangle', ' n. 三角(形)');
INSERT INTO `voc` VALUES ('1723', 'experimental', ' adj. 实验(性)的, 试验(性)的');
INSERT INTO `voc` VALUES ('1724', 'prescription', ' n. 药方, 对策, 开处方');
INSERT INTO `voc` VALUES ('1725', 'acquaint', ' vt. 使...熟知');
INSERT INTO `voc` VALUES ('1726', 'locker', ' n. 柜(箱, 橱, 机架, 室, 锁夹, 锁扣装置)');
INSERT INTO `voc` VALUES ('1727', 'shortage', ' n. 不足,缺少');
INSERT INTO `voc` VALUES ('1728', 'entertainment', ' n. 娱乐');
INSERT INTO `voc` VALUES ('1729', 'liquor', ' n. 酒');
INSERT INTO `voc` VALUES ('1730', 'simplicity', ' n. 单纯, 简朴');
INSERT INTO `voc` VALUES ('1731', 'whereas', ' conj.&amp;amp;adv. 然而,却,反之');
INSERT INTO `voc` VALUES ('1732', 'skill', ' n. 技能, 技巧');
INSERT INTO `voc` VALUES ('1733', 'classical', ' adj. 古典的, 典雅的, 经典的');
INSERT INTO `voc` VALUES ('1734', 'shrewd', ' adj. 精明的');
INSERT INTO `voc` VALUES ('1735', 'admission', ' n. 许可, 入会费, 承认');
INSERT INTO `voc` VALUES ('1736', 'instruction', ' n. 说明,须知,指令,教学');
INSERT INTO `voc` VALUES ('1737', 'terrific', ' adj. 极好的,非常的,极度的');
INSERT INTO `voc` VALUES ('1738', 'stair', ' n. 楼梯');
INSERT INTO `voc` VALUES ('1739', 'lucky', ' adj. 幸运的,带来好运的');
INSERT INTO `voc` VALUES ('1740', 'fairy', ' n.&amp;amp;adj. 仙女,小精灵');
INSERT INTO `voc` VALUES ('1741', 'lazy', ' adj. 懒惰的');
INSERT INTO `voc` VALUES ('1742', 'injure', ' v. 伤害, 使...受冤屈');
INSERT INTO `voc` VALUES ('1743', 'kilometre', ' n. 公里, 千米');
INSERT INTO `voc` VALUES ('1744', 'resort', ' (渡假)胜地, 手段, 凭借');
INSERT INTO `voc` VALUES ('1745', 'prosperity', ' n. 繁荣,兴旺');
INSERT INTO `voc` VALUES ('1746', 'gravity', ' n. 地心引力,重力,严重,庄重,严肃');
INSERT INTO `voc` VALUES ('1747', 'hospitality', ' n. 好客, 殷勤');
INSERT INTO `voc` VALUES ('1748', 'emerge', ' vi. 浮现, (由某种状态)脱出, (事实)显现出来');
INSERT INTO `voc` VALUES ('1749', 'magnet', ' n. 磁体,磁铁,有强大吸引力的人或物');
INSERT INTO `voc` VALUES ('1750', 'zebra', ' n. 斑马,斑马线');
INSERT INTO `voc` VALUES ('1751', 'approval', ' n. 批准, 认可, 同意, 赞同');
INSERT INTO `voc` VALUES ('1752', 'tedious', ' adj. 沉闷的, 单调乏味的');
INSERT INTO `voc` VALUES ('1753', 'source', ' n. 来源');
INSERT INTO `voc` VALUES ('1754', 'evaluate', ' vt. 评估,评价');
INSERT INTO `voc` VALUES ('1755', 'pub', ' n. 酒吧, 酒馆');
INSERT INTO `voc` VALUES ('1756', 'moon', ' n. 月亮');
INSERT INTO `voc` VALUES ('1757', 'lubricate', ' v. 润滑, 加润滑剂');
INSERT INTO `voc` VALUES ('1758', 'presently', 'adv. adv. 不久, 一会儿, 现在, 目前');
INSERT INTO `voc` VALUES ('1759', 'sustain', ' vt. 承受, 支持, 经受, 维持');
INSERT INTO `voc` VALUES ('1760', 'sad', ' adj. 悲哀的, 伤心的, 不能令人满意的');
INSERT INTO `voc` VALUES ('1761', 'rhythm', ' n. 节奏,韵律');
INSERT INTO `voc` VALUES ('1762', 'scholar', ' n. 学者，获奖学金的学生');
INSERT INTO `voc` VALUES ('1763', 'noon', ' n. 正午, 中午，全盛期，顶点');
INSERT INTO `voc` VALUES ('1764', 'with', ' prep. 和...一起,用, 随着, 包括');
INSERT INTO `voc` VALUES ('1765', 'circumference', ' n. 圆周, 周围, 胸围');
INSERT INTO `voc` VALUES ('1766', 'sticky', ' adj. 粘的,闷热的,困难的,令人不满意的');
INSERT INTO `voc` VALUES ('1767', 'hobby', ' n. 业余爱好');
INSERT INTO `voc` VALUES ('1768', 'conceive', ' vt. &amp;vi. 构思,以为,怀孕');
INSERT INTO `voc` VALUES ('1769', 'immediate', ' adj. 立即的, 即刻的, 直接的, 最接近的');
INSERT INTO `voc` VALUES ('1770', 'although', ' conj. 尽管, 虽然');
INSERT INTO `voc` VALUES ('1771', 'June', ' n. 六月,琼(女子名)');
INSERT INTO `voc` VALUES ('1772', 'erroneous', ' adj. 错误的, 不正确的');
INSERT INTO `voc` VALUES ('1773', 'payment', ' n. 支付, 付款');
INSERT INTO `voc` VALUES ('1774', 'capable', ' adj. 有能力的，足以胜任的, 有...倾向的');
INSERT INTO `voc` VALUES ('1775', 'linear', ' adj. 直线的，线性的，长度的');
INSERT INTO `voc` VALUES ('1776', 'affair', ' n. 事件,事情,事务');
INSERT INTO `voc` VALUES ('1777', 'acquaintance', ' n. 熟人,相识,了解');
INSERT INTO `voc` VALUES ('1778', 'passport', ' n. 护照');
INSERT INTO `voc` VALUES ('1779', 'alive', ' adj. 活着的,有活力');
INSERT INTO `voc` VALUES ('1780', 'elegant', ' adj. 优雅的, 精美的, 俊美的');
INSERT INTO `voc` VALUES ('1781', 'powerful', ' adj. 强有力的');
INSERT INTO `voc` VALUES ('1782', 'carbon', ' n. 碳,灯芯,复写纸');
INSERT INTO `voc` VALUES ('1783', 'drought', ' n. 干旱');
INSERT INTO `voc` VALUES ('1784', 'legend', ' n. 传说,传奇人物,铭文');
INSERT INTO `voc` VALUES ('1785', 'him', ' pron. 他(宾格)');
INSERT INTO `voc` VALUES ('1786', 'cylinder', ' n. 汽缸, 圆筒, 圆柱体');
INSERT INTO `voc` VALUES ('1787', 'anything', ' pron. 任何事');
INSERT INTO `voc` VALUES ('1788', 'diligent', ' adj. 勤奋的, 用功的');
INSERT INTO `voc` VALUES ('1789', 'momentum', ' n. 动力,要素, 势头,（物理）动量');
INSERT INTO `voc` VALUES ('1790', 'instead', ' adv. 代替, 反而');
INSERT INTO `voc` VALUES ('1791', 'civil', ' adj. 国内的,公民的,文明的, 有礼貌的, 民用的');
INSERT INTO `voc` VALUES ('1792', 'typical', ' adj. 典型的, 有代表性的');
INSERT INTO `voc` VALUES ('1793', 'chest', ' n. 胸, 大箱子, 金库, 资金, 一箱, 密封室, 衣橱');
INSERT INTO `voc` VALUES ('1794', 'enjoy', ' vt. &amp;vi. 享受,喜欢');
INSERT INTO `voc` VALUES ('1795', 'controversial', ' adj. 引起争论的,有争议的');
INSERT INTO `voc` VALUES ('1796', 'criterion', ' n. 标准, 准则');
INSERT INTO `voc` VALUES ('1797', 'means', ' n. 方法,手段，折中点，物质财富');
INSERT INTO `voc` VALUES ('1798', 'specification', ' n. 规格,详述,详细说明书');
INSERT INTO `voc` VALUES ('1799', 'majority', ' n.多数； （获胜的）票数； 成年； 法定年龄');
INSERT INTO `voc` VALUES ('1800', 'spectator', ' n. 观众, 旁观者');
INSERT INTO `voc` VALUES ('1801', 'eloquent', ' adj. 雄辩的, 有口才的, 动人的');
INSERT INTO `voc` VALUES ('1802', 'suggestion', ' n. 建议, 意见, 迹象, 暗示, 联想');
INSERT INTO `voc` VALUES ('1803', 'extraordinary', ' adj. 非凡的,特别的,特派的');
INSERT INTO `voc` VALUES ('1804', 'retention', ' n. 保存(保持力,包装牢固,记忆力,保留物)');
INSERT INTO `voc` VALUES ('1805', 'really', ' adv. 真正地,实在，事实上');
INSERT INTO `voc` VALUES ('1806', 'muscular', ' adj. 肌肉的, 肌肉发达的');
INSERT INTO `voc` VALUES ('1807', 'aspire', ' vi. 渴望；立志；追求');
INSERT INTO `voc` VALUES ('1808', 'vivid', ' adj. 生动的,强烈的,鲜艳的,清晰的,逼真的');
INSERT INTO `voc` VALUES ('1809', 'vinegar', ' n. 醋');
INSERT INTO `voc` VALUES ('1810', 'assert', ' vt. 主张,声明,断言');
INSERT INTO `voc` VALUES ('1811', 'grammar', ' n. 语法');
INSERT INTO `voc` VALUES ('1812', 'creative', ' adj. 创造性的');
INSERT INTO `voc` VALUES ('1813', 'office', ' n. 办公室，职务，事务');
INSERT INTO `voc` VALUES ('1814', 'nuisance', ' n. 讨厌的东西,讨厌的人,伤害');
INSERT INTO `voc` VALUES ('1815', 'tobacco', ' n. 烟草');
INSERT INTO `voc` VALUES ('1816', 'conviction', ' n. 定罪, 信服, 坚信');
INSERT INTO `voc` VALUES ('1817', 'region', ' n. 地区,地域,地带,行政区');
INSERT INTO `voc` VALUES ('1818', 'refugee', ' n. 难民, 流亡者');
INSERT INTO `voc` VALUES ('1819', 'versus', ' prep. 对；与...相对；对抗');
INSERT INTO `voc` VALUES ('1820', 'liable', ' adj. 有义务的,应负责的,有...倾向');
INSERT INTO `voc` VALUES ('1821', 'evening', ' n. 傍晚, 晚上');
INSERT INTO `voc` VALUES ('1822', 'resent', ' v. 愤恨,憎恶,怨恨');
INSERT INTO `voc` VALUES ('1823', 'perfection', ' n. 完美, 完善');
INSERT INTO `voc` VALUES ('1824', 'somewhere', ' adv. 在某处，到某种程度，大约，差不多');
INSERT INTO `voc` VALUES ('1825', 'severe', ' adj. 剧烈的, 严重的, 严峻的, 严厉的, 严格的');
INSERT INTO `voc` VALUES ('1826', 'lake', ' n. 湖');
INSERT INTO `voc` VALUES ('1827', 'journalist', ' n. 记者, 新闻工作者');
INSERT INTO `voc` VALUES ('1828', 'pollution', ' n. 污染, 污染物');
INSERT INTO `voc` VALUES ('1829', 'October', ' n. 十月');
INSERT INTO `voc` VALUES ('1830', 'communication', ' n. 沟通,交通');
INSERT INTO `voc` VALUES ('1831', 'prayer', ' n. 祈祷, 祷告, 祷文');
INSERT INTO `voc` VALUES ('1832', 'ladder', ' n. 梯子, 阶梯, 梯状物');
INSERT INTO `voc` VALUES ('1833', 'garbage', ' n. 垃圾, 食物残渣, 废物');
INSERT INTO `voc` VALUES ('1834', 'arbitrary', ' adj. 任意的, 专制的, 武断的, 霸道的');
INSERT INTO `voc` VALUES ('1835', 'conceal', ' vt. 隐藏, 掩盖');
INSERT INTO `voc` VALUES ('1836', 'ton', ' n. 吨');
INSERT INTO `voc` VALUES ('1837', 'thorough', ' adj. 彻底的, 完全的, 精心的');
INSERT INTO `voc` VALUES ('1838', 'nitrogen', ' n. 氮');
INSERT INTO `voc` VALUES ('1839', 'microscope', ' n. 显微镜');
INSERT INTO `voc` VALUES ('1840', 'skilled', ' adj. 有技能的, 熟练的');
INSERT INTO `voc` VALUES ('1841', 'proclaim', ' vt. 正式宣布, 公布, 声明, 赞扬, 显示出');
INSERT INTO `voc` VALUES ('1842', 'preside', ' v. 任主席, 统辖, 当主人');
INSERT INTO `voc` VALUES ('1843', 'healthy', ' adj. 健康的');
INSERT INTO `voc` VALUES ('1844', 'aural', ' adj. 耳的, 听觉的');
INSERT INTO `voc` VALUES ('1845', 'signify', ' v. 象徵, 预示');
INSERT INTO `voc` VALUES ('1846', 'mobile', ' adj. 可移动的,易变的,迁徙的, 流动的 n. (可随风飘动的)悬挂装置, 可动雕塑');
INSERT INTO `voc` VALUES ('1847', 'cherry', ' n. 樱桃(树),樱桃色');
INSERT INTO `voc` VALUES ('1848', 'wife', ' n. 妻子,夫人');
INSERT INTO `voc` VALUES ('1849', 'pact', ' n. 契约, 协定, 条约');
INSERT INTO `voc` VALUES ('1850', 'cabbage', ' n. 卷心菜,洋白菜');
INSERT INTO `voc` VALUES ('1851', 'concerning', ' prep. 关于');
INSERT INTO `voc` VALUES ('1852', 'chess', ' n. 国际象棋');
INSERT INTO `voc` VALUES ('1853', 'donkey', ' n. 驴子；傻瓜；顽固的人');
INSERT INTO `voc` VALUES ('1854', 'satisfaction', ' n. 赔偿,满意,妥善处理,乐事,确信');
INSERT INTO `voc` VALUES ('1855', 'steak', ' n. 牛排');
INSERT INTO `voc` VALUES ('1856', 'woman', ' n. 妇女, 女人');
INSERT INTO `voc` VALUES ('1857', 'thereafter', ' adv. 其后, 从那时以后');
INSERT INTO `voc` VALUES ('1858', 'uncover', ' vt. 揭开,揭露');
INSERT INTO `voc` VALUES ('1859', 'aware', ' adj. 知道的, 意识到的');
INSERT INTO `voc` VALUES ('1860', 'forthcoming', ' adj. 即将到来的');
INSERT INTO `voc` VALUES ('1861', 'ant', ' n. 蚂蚁');
INSERT INTO `voc` VALUES ('1862', 'nervous', ' adj. 紧张的,焦虑的,神经质的');
INSERT INTO `voc` VALUES ('1863', 'equipment', ' n. 设备,装备');
INSERT INTO `voc` VALUES ('1864', 'custom', ' n. 习惯, 风俗, 海关');
INSERT INTO `voc` VALUES ('1865', 'stubborn', ' adj. 顽固的, 倔强的，难对付的');
INSERT INTO `voc` VALUES ('1866', 'summon', ' vt. 召唤,召集,振奋');
INSERT INTO `voc` VALUES ('1867', 'prophet', ' n. 预言者, 先知, 提倡者');
INSERT INTO `voc` VALUES ('1868', 'occasional', ' adj. 偶然的, 不时的');
INSERT INTO `voc` VALUES ('1869', 'suburb', ' n. 郊区');
INSERT INTO `voc` VALUES ('1870', 'procedure', ' n. 程序, 手续, 步骤; 常规的做法');
INSERT INTO `voc` VALUES ('1871', 'hospital', ' n. 医院');
INSERT INTO `voc` VALUES ('1872', 'artificial', ' adj. 人造的,虚伪的,武断的');
INSERT INTO `voc` VALUES ('1873', 'thigh', ' n. 大腿');
INSERT INTO `voc` VALUES ('1874', 'fisherman', ' n. 渔夫，渔船');
INSERT INTO `voc` VALUES ('1875', 'majesty', ' n. 威严；最高权威，王权；雄伟；权威');
INSERT INTO `voc` VALUES ('1876', 'ministry', ' n. (政府的)部, (全体)牧师, 牧师工作');
INSERT INTO `voc` VALUES ('1877', 'technology', ' n. 技术,工艺(学)');
INSERT INTO `voc` VALUES ('1878', 'famine', ' n. 饥荒, 极度缺乏');
INSERT INTO `voc` VALUES ('1879', 'automation', ' n. 自动化');
INSERT INTO `voc` VALUES ('1880', 'assembly', ' n. 集合, 集会, 装配');
INSERT INTO `voc` VALUES ('1881', 'yours', ' pron. 你的, 你们的');
INSERT INTO `voc` VALUES ('1882', 'swim', ' 游泳');
INSERT INTO `voc` VALUES ('1883', 'frog', ' n. 蛙,马的蹄叉,刀剑的挂环');
INSERT INTO `voc` VALUES ('1884', 'restraint', ' n. 抑制,克制,束缚');
INSERT INTO `voc` VALUES ('1885', 'transparent', ' adj. 透明的, 明显的, 清晰的');
INSERT INTO `voc` VALUES ('1886', 'fur', ' n. 毛皮服饰,毛皮制品,毛皮');
INSERT INTO `voc` VALUES ('1887', 'canteen', ' n.小卖部； 食堂，小饭馆； 水罐； 餐具盒，炊具箱');
INSERT INTO `voc` VALUES ('1888', 'shilling', ' n. 先令');
INSERT INTO `voc` VALUES ('1889', 'abundance', ' n. 丰富,充裕');
INSERT INTO `voc` VALUES ('1890', 'today', ' n.&amp;amp;adv. 今天');
INSERT INTO `voc` VALUES ('1891', 'characterize', ' vt. 表示...的典型,赋予...特色');
INSERT INTO `voc` VALUES ('1892', 'song', ' n. 歌曲, 歌唱艺术, 诗歌');
INSERT INTO `voc` VALUES ('1893', 'violate', ' vt. 违犯, 亵渎, 干扰, 侵犯, 强奸');
INSERT INTO `voc` VALUES ('1894', 'wrist', ' n. 腕,腕关节');
INSERT INTO `voc` VALUES ('1895', 'mystery', ' n. 神秘,秘密,神秘的人或事物');
INSERT INTO `voc` VALUES ('1896', 'member', ' n. 成员, 会员, 部位');
INSERT INTO `voc` VALUES ('1897', 'suspicious', ' adj. 可疑的,多疑的');
INSERT INTO `voc` VALUES ('1898', 'meadow', ' n. 草地, 牧场');
INSERT INTO `voc` VALUES ('1899', 'irony', ' n. 反讽, 讽剌, 讽剌之事');
INSERT INTO `voc` VALUES ('1900', 'imagination', ' n. 想象,想象力,空想');
INSERT INTO `voc` VALUES ('1901', 'earn', ' vt. 赚得, 赢得, 生利');
INSERT INTO `voc` VALUES ('1902', 'database', ' n. 数据库');
INSERT INTO `voc` VALUES ('1903', 'elementary', ' adj. 基本的,初级的,元素的');
INSERT INTO `voc` VALUES ('1904', 'history', ' n. 历史');
INSERT INTO `voc` VALUES ('1905', 'marginal', ' adj. 边际的,末端的,仅以微弱多数获胜的,微小的');
INSERT INTO `voc` VALUES ('1906', 'oven', ' n. 烤炉, 烤箱');
INSERT INTO `voc` VALUES ('1907', 'night', ' n. 夜晚');
INSERT INTO `voc` VALUES ('1908', 'chemistry', ' n. 化学,化学性质,相互作用');
INSERT INTO `voc` VALUES ('1909', 'clothing', ' n. (总称)衣服');
INSERT INTO `voc` VALUES ('1910', 'commence', ' v. 开始；着手；&lt;英&gt;获得学位');
INSERT INTO `voc` VALUES ('1911', 'sword', ' n. 剑,刀, 致命或毁灭性器械, 剑状物,使用武力, 军事裁判权');
INSERT INTO `voc` VALUES ('1912', 'dental', ' adj. 牙齿的, 牙科的');
INSERT INTO `voc` VALUES ('1913', 'memory', ' n. 记忆,内存,回忆');
INSERT INTO `voc` VALUES ('1914', 'obstruct', ' v. 阻隔, 妨碍, 阻塞');
INSERT INTO `voc` VALUES ('1915', 'carve', ' vt.&amp; vi. 雕刻,切割');
INSERT INTO `voc` VALUES ('1916', 'cosmic', ' adj. 宇宙的，广大无边的，无限的');
INSERT INTO `voc` VALUES ('1917', 'basis', ' n. 基础,根据,主要成分');
INSERT INTO `voc` VALUES ('1918', 'dessert', ' n. 甜食');
INSERT INTO `voc` VALUES ('1919', 'difficulty', ' n. 困难，争议，反对，麻烦');
INSERT INTO `voc` VALUES ('1920', 'bacon', ' n. 咸肉,熏肉');
INSERT INTO `voc` VALUES ('1921', 'fraud', ' n. 骗子, 欺骗, 诈欺');
INSERT INTO `voc` VALUES ('1922', 'usual', ' adj. 通常的');
INSERT INTO `voc` VALUES ('1923', 'contradict', ' vt. 反驳,与...矛盾');
INSERT INTO `voc` VALUES ('1924', 'tooth', ' n. 牙齿');
INSERT INTO `voc` VALUES ('1925', 'tube', ' n. 地铁,电子管,显像管,管,软管;电视');
INSERT INTO `voc` VALUES ('1926', 'satellite', ' n. 卫星,卫星城,随从');
INSERT INTO `voc` VALUES ('1927', 'reservoir', ' n. 水库,蓄水池,积蓄,储藏');
INSERT INTO `voc` VALUES ('1928', 'wedding', ' n. 婚礼');
INSERT INTO `voc` VALUES ('1929', 'precise', ' adj. 精确的,准确的,认真的');
INSERT INTO `voc` VALUES ('1930', 'thief', ' n. 贼,小偷');
INSERT INTO `voc` VALUES ('1931', 'mile', ' n. 英里,大量,海里,一英里赛跑');
INSERT INTO `voc` VALUES ('1932', 'forget', ' vt. &amp;vi. 忘记,忽略');
INSERT INTO `voc` VALUES ('1933', 'discuss', ' vt. 讨论');
INSERT INTO `voc` VALUES ('1934', 'colony', ' n. 侨民,侨居地,殖民地,聚居(地)');
INSERT INTO `voc` VALUES ('1935', 'instinct', ' n. 本能, 天性, 直觉');
INSERT INTO `voc` VALUES ('1936', 'adjoin', ' v. 邻接, 毗连');
INSERT INTO `voc` VALUES ('1937', 'choose', ' vt. &amp;vi. 选择');
INSERT INTO `voc` VALUES ('1938', 'sunset', ' n. 日落，衰落时期（尤指人的晚年）');
INSERT INTO `voc` VALUES ('1939', 'beautiful', ' adj.美丽的, 漂亮的');
INSERT INTO `voc` VALUES ('1940', 'abdomen', ' n. 腹部');
INSERT INTO `voc` VALUES ('1941', 'county', ' n. 郡, 县');
INSERT INTO `voc` VALUES ('1942', 'describe', ' vt. 描述, 画(尤指几何图形)');
INSERT INTO `voc` VALUES ('1943', 'salesman', ' n. 销售人员, 推销员');
INSERT INTO `voc` VALUES ('1944', 'threat', ' n. 威胁, 凶兆');
INSERT INTO `voc` VALUES ('1945', 'ratio', ' n. 比,比率');
INSERT INTO `voc` VALUES ('1946', 'inject', ' v. 注射');
INSERT INTO `voc` VALUES ('1947', 'those', ' pron.&amp;amp;adj. 那些');
INSERT INTO `voc` VALUES ('1948', 'exposure', ' n. 面临（困难），显露，暴露,揭露,曝光');
INSERT INTO `voc` VALUES ('1949', 'peaceful', ' adj. 安宁的, 和平的');
INSERT INTO `voc` VALUES ('1950', 'proud', ' adj. 骄傲的, 自豪的, 壮观的');
INSERT INTO `voc` VALUES ('1951', 'intense', ' adj. 非常的,强烈的,紧张的,热情的');
INSERT INTO `voc` VALUES ('1952', 'consider', ' vt. 考虑, 思考, 认为');
INSERT INTO `voc` VALUES ('1953', 'postage', ' n. 邮费, 邮资已付邮戳');
INSERT INTO `voc` VALUES ('1954', 'fraction', ' n. 分数, 小部分, 破片');
INSERT INTO `voc` VALUES ('1955', 'explicit', ' adj. 明确的,详述的，明晰的,外在的');
INSERT INTO `voc` VALUES ('1956', 'category', ' n. 种类, 类别');
INSERT INTO `voc` VALUES ('1957', 'impression', ' n. 印象, 效果');
INSERT INTO `voc` VALUES ('1958', 'ounce', ' n. 盎司');
INSERT INTO `voc` VALUES ('1959', 'habitat', ' n. (动植物的)产地,栖息地');
INSERT INTO `voc` VALUES ('1960', 'briefcase', ' n. 公文包');
INSERT INTO `voc` VALUES ('1961', 'yard', ' n. 庭院, 场地, 码');
INSERT INTO `voc` VALUES ('1962', 'denial', ' n. 否认,拒绝');
INSERT INTO `voc` VALUES ('1963', 'survival', ' n. 生存,幸存者');
INSERT INTO `voc` VALUES ('1964', 'community', ' n. 社区, 团体');
INSERT INTO `voc` VALUES ('1965', 'annoy', ' vt. &amp;vi. 使...苦恼,骚扰, 使生气');
INSERT INTO `voc` VALUES ('1966', 'workshop', ' n. 车间, 工场, 研讨会, 讲习班');
INSERT INTO `voc` VALUES ('1967', 'amuse', ' v. 消遣, 娱乐, 使...发笑');
INSERT INTO `voc` VALUES ('1968', 'incur', ' v. 招致,蒙受,遭遇');
INSERT INTO `voc` VALUES ('1969', 'minority', ' n. 少数, 少数民族, 未成年');
INSERT INTO `voc` VALUES ('1970', 'electronic', ' adj.电子的； 电子操纵的； 用电子设备生产的； 用电子设备完成的');
INSERT INTO `voc` VALUES ('1971', 'hers', ' pron. 她的（宾格）');
INSERT INTO `voc` VALUES ('1972', 'objection', ' n. 反对,异议');
INSERT INTO `voc` VALUES ('1973', 'chapter', ' n. 章,回,篇,牧师的例行会议,地方分会');
INSERT INTO `voc` VALUES ('1974', 'extinguish', ' v. 熄减, 消减, 偿清');
INSERT INTO `voc` VALUES ('1975', 'university', ' n. 大学');
INSERT INTO `voc` VALUES ('1976', 'rural', ' adj. 农村的');
INSERT INTO `voc` VALUES ('1977', 'invitation', ' n. 邀请');
INSERT INTO `voc` VALUES ('1978', 'currency', ' n. 货币; 流通');
INSERT INTO `voc` VALUES ('1979', 'environment', ' n. 环境,外界');
INSERT INTO `voc` VALUES ('1980', 'hell', ' n. 地狱');
INSERT INTO `voc` VALUES ('1981', 'homework', ' n. 家庭作业');
INSERT INTO `voc` VALUES ('1982', 'movie', ' n. 电影');
INSERT INTO `voc` VALUES ('1983', 'romance', ' n. 冒险故事, 浪漫史, 传奇文学');
INSERT INTO `voc` VALUES ('1984', 'norm', ' n. 标准,规范');
INSERT INTO `voc` VALUES ('1985', 'speech', ' n. 演讲,对话,话语,语言');
INSERT INTO `voc` VALUES ('1986', 'notion', ' n. 观念,想法,主张');
INSERT INTO `voc` VALUES ('1987', 'canvas', ' n. 帆布，（帆布）画布，油画');
INSERT INTO `voc` VALUES ('1988', 'prosperous', ' adj. 繁荣的, 兴旺的');
INSERT INTO `voc` VALUES ('1989', 'lottery', ' n. 彩票');
INSERT INTO `voc` VALUES ('1990', 'boy', ' n. 男孩,儿子');
INSERT INTO `voc` VALUES ('1991', 'eastern', ' adj. 东部的, 东方的');
INSERT INTO `voc` VALUES ('1992', 'camel', ' n. 骆驼,浮船箱,浅黄棕色');
INSERT INTO `voc` VALUES ('1993', 'religion', ' n. 宗教;宗教信仰');
INSERT INTO `voc` VALUES ('1994', 'vulgar', ' adj. 通俗的,粗俗的');
INSERT INTO `voc` VALUES ('1995', 'activity', ' n. 活动；行动；活跃');
INSERT INTO `voc` VALUES ('1996', 'hour', ' n. 小时,钟点');
INSERT INTO `voc` VALUES ('1997', 'reporter', ' n. 记者');
INSERT INTO `voc` VALUES ('1998', 'dollar', ' n. 美元');
INSERT INTO `voc` VALUES ('1999', 'ninety', ' num.&amp;amp;n. 九十');
INSERT INTO `voc` VALUES ('2000', 'Wednesday', ' n. 星期三');
INSERT INTO `voc` VALUES ('2001', 'headache', ' n. 头痛');
INSERT INTO `voc` VALUES ('2002', 'medieval', ' adj. 中世纪的');
INSERT INTO `voc` VALUES ('2003', 'spicy', ' adj. 芳香的(辛辣的)');
INSERT INTO `voc` VALUES ('2004', 'statesman', ' n. 政治家, 国务活动家');
INSERT INTO `voc` VALUES ('2005', 'connection', ' n. 联系,关系,连接,亲戚');
INSERT INTO `voc` VALUES ('2006', 'millionaire', ' n. 百万富翁');
INSERT INTO `voc` VALUES ('2007', 'concise', ' adj. 简明的, 简要的');
INSERT INTO `voc` VALUES ('2008', 'accountant', ' n. 会计人员');
INSERT INTO `voc` VALUES ('2009', 'genuine', ' adj. 真正的,真实的,诚恳的');
INSERT INTO `voc` VALUES ('2010', 'cell', ' n. 细胞, 电池, 小组, 小房间, 单人牢房, (蜂房的)巢室, 手机');
INSERT INTO `voc` VALUES ('2011', 'prudent', ' adj. 谨慎的, 有远见的, 精打细算的');
INSERT INTO `voc` VALUES ('2012', 'indeed', ' adv. 的确, 真正地, 事实上');
INSERT INTO `voc` VALUES ('2013', 'discourage', ' vt. 使气馁,阻碍');
INSERT INTO `voc` VALUES ('2014', 'aggressive', ' adj. 侵略性的；好斗的；有进取心的；有闯劲的');
INSERT INTO `voc` VALUES ('2015', 'discover', ' vt.&amp; vi.发现');
INSERT INTO `voc` VALUES ('2016', 'bind', ' vt. 绑,约束,装订,粘合');
INSERT INTO `voc` VALUES ('2017', 'pail', ' n. 提桶');
INSERT INTO `voc` VALUES ('2018', 'reflection', ' n. 反映,映像,折射,沉思,影响');
INSERT INTO `voc` VALUES ('2019', 'revolution', ' n. 革命, 旋转, 转数');
INSERT INTO `voc` VALUES ('2020', 'diameter', ' n. 直径');
INSERT INTO `voc` VALUES ('2021', 'perceive', ' v. 察觉, 感觉, 认知, 理解');
INSERT INTO `voc` VALUES ('2022', 'restrain', ' vt. 抑制,阻止,束缚,剥夺');
INSERT INTO `voc` VALUES ('2023', 'afford', ' vt. 提供,负担得起的(后果,损失等),给予');
INSERT INTO `voc` VALUES ('2024', 'visual', ' adj. 视觉的 n. 画面, 图象');
INSERT INTO `voc` VALUES ('2025', 'introduce', ' vt. 介绍, 引进, 采用, 提出, 提倡, 放入');
INSERT INTO `voc` VALUES ('2026', 'poem', ' n. 诗');
INSERT INTO `voc` VALUES ('2027', 'transmission', ' n. 传输, 播送, 变速器, 传递的信息');
INSERT INTO `voc` VALUES ('2028', 'vocabulary', ' n. 词汇, 词汇量');
INSERT INTO `voc` VALUES ('2029', 'timid', ' adj. 胆怯的,害羞的');
INSERT INTO `voc` VALUES ('2030', 'exceptional', ' adj. 例外的,异常的,特别的');
INSERT INTO `voc` VALUES ('2031', 'navigation', ' n. 航行, 航海, 导航');
INSERT INTO `voc` VALUES ('2032', 'refresh', ' vt.&amp; vi. 使...生气蓬勃,提起精神,恢复精神');
INSERT INTO `voc` VALUES ('2033', 'cucumber', ' n. 黄瓜');
INSERT INTO `voc` VALUES ('2034', 'recur', ' v. 回到, 重现, 再来');
INSERT INTO `voc` VALUES ('2035', 'itself', ' pron. 它自己, 它本身');
INSERT INTO `voc` VALUES ('2036', 'gulf', ' n. 海湾');
INSERT INTO `voc` VALUES ('2037', 'compassion', ' n. 同情,怜悯');
INSERT INTO `voc` VALUES ('2038', 'bathroom', ' n. 浴室');
INSERT INTO `voc` VALUES ('2039', 'predict', ' v. 预知, 预言, 预报');
INSERT INTO `voc` VALUES ('2040', 'underlie', ' v. 位于...之下, 成为...的基础');
INSERT INTO `voc` VALUES ('2041', 'adequate', ' adj. 足够的, 充足的, 适当的, 能胜任的');
INSERT INTO `voc` VALUES ('2042', 'siege', ' n. 包围, 围攻');
INSERT INTO `voc` VALUES ('2043', 'mountain', ' n. 山,山脉,大量');
INSERT INTO `voc` VALUES ('2044', 'marital', ' adj. 婚姻的');
INSERT INTO `voc` VALUES ('2045', 'foolish', ' adj. 愚蠢的，荒谬的，可笑的');
INSERT INTO `voc` VALUES ('2046', 'preposition', ' n. 介词');
INSERT INTO `voc` VALUES ('2047', 'importance', ' n. 重要,重要性');
INSERT INTO `voc` VALUES ('2048', 'certainty', ' n. 确定, 确实的事情');
INSERT INTO `voc` VALUES ('2049', 'smuggle', ' v. 偷运,走私,私运');
INSERT INTO `voc` VALUES ('2050', 'laughter', ' n. 笑, 笑声');
INSERT INTO `voc` VALUES ('2051', 'fifty', ' num. 五十');
INSERT INTO `voc` VALUES ('2052', 'overcoat', ' n. 外套, 大衣');
INSERT INTO `voc` VALUES ('2053', 'corridor', ' n. 走廊');
INSERT INTO `voc` VALUES ('2054', 'everything', ' pron. 每件事, 一切');
INSERT INTO `voc` VALUES ('2055', 'soon', ' adv. 不久, 很快');
INSERT INTO `voc` VALUES ('2056', 'ballet', ' n. 芭蕾舞');
INSERT INTO `voc` VALUES ('2057', 'utilize', ' vt. 利用');
INSERT INTO `voc` VALUES ('2058', 'owner', ' n. 所有人, 物主');
INSERT INTO `voc` VALUES ('2059', 'penetrate', ' vt. &amp;vi. 穿透,渗透,看穿');
INSERT INTO `voc` VALUES ('2060', 'peanut', ' n. 花生');
INSERT INTO `voc` VALUES ('2061', 'element', ' n. 成分,要素,元素,基本原理,(复数)恶劣天气');
INSERT INTO `voc` VALUES ('2062', 'integrate', ' v. 整合, 使...成整体');
INSERT INTO `voc` VALUES ('2063', 'productivity', ' n. 生产率, 生产能力');
INSERT INTO `voc` VALUES ('2064', 'location', ' n. 地点,位置');
INSERT INTO `voc` VALUES ('2065', 'clarify', ' vt. 澄清,阐明,使...明晰');
INSERT INTO `voc` VALUES ('2066', 'envelope', ' n. 信封, 封皮,壳层');
INSERT INTO `voc` VALUES ('2067', 'limitation', ' n. 限制');
INSERT INTO `voc` VALUES ('2068', 'projector', ' n. 放映机(探照灯, 发射装置, 设计者, 制图投射线)');
INSERT INTO `voc` VALUES ('2069', 'ego', ' n. 自我, 自负, 自尊心');
INSERT INTO `voc` VALUES ('2070', 'shortcoming', ' n. 短处, 缺点');
INSERT INTO `voc` VALUES ('2071', 'wit', ' n.机智；才智，智慧；富有机智的人； 打趣话，玩笑话');
INSERT INTO `voc` VALUES ('2072', 'decide', ' vt. &amp;vi. 决定,作出抉择');
INSERT INTO `voc` VALUES ('2073', 'zero', ' num.&amp;amp;n. 零');
INSERT INTO `voc` VALUES ('2074', 'universe', ' n. 宇宙');
INSERT INTO `voc` VALUES ('2075', 'convention', ' n.会议； 全体与会者； 国际公约； 惯例，习俗，规矩');
INSERT INTO `voc` VALUES ('2076', 'wallet', ' n. 皮夹,钱包');
INSERT INTO `voc` VALUES ('2077', 'curiosity', ' n. 好奇, 好奇心');
INSERT INTO `voc` VALUES ('2078', 'senator', ' n. 参议员');
INSERT INTO `voc` VALUES ('2079', 'naughty', ' adj. 顽皮的,淘气的，粗俗的');
INSERT INTO `voc` VALUES ('2080', 'helmet', ' n. 头盔, 遮阳帽, 盔甲');
INSERT INTO `voc` VALUES ('2081', 'enrich', ' vt. 使富足,使肥沃，添加元素');
INSERT INTO `voc` VALUES ('2082', 'drama', ' n. 剧本,戏剧,戏剧性情节,刺激');
INSERT INTO `voc` VALUES ('2083', 'effort', ' n. 努力, 努力的成果');
INSERT INTO `voc` VALUES ('2084', 'happy', ' adj. 快乐的,幸福的,乐于做某事');
INSERT INTO `voc` VALUES ('2085', 'politician', ' n. 政治家, 政客');
INSERT INTO `voc` VALUES ('2086', 'curriculum', ' n. 课程，全部课程');
INSERT INTO `voc` VALUES ('2087', 'similar', ' adj. 相似的,类似的,相同,一样');
INSERT INTO `voc` VALUES ('2088', 'framework', ' n. 结构, 框架, 参照标准, 体系');
INSERT INTO `voc` VALUES ('2089', 'depend', ' vi. 依靠,相信,指望');
INSERT INTO `voc` VALUES ('2090', 'unusual', ' adj. 不平常的, 异常的');
INSERT INTO `voc` VALUES ('2091', 'radiant', ' adj. 发光的, 明亮的, 辐射的');
INSERT INTO `voc` VALUES ('2092', 'quartz', ' n. 石英');
INSERT INTO `voc` VALUES ('2093', 'assure', ' vt. 保险,保证,确信,担保');
INSERT INTO `voc` VALUES ('2094', 'warfare', ' n. 战争,冲突');
INSERT INTO `voc` VALUES ('2095', 'lab', ' n. 实验室');
INSERT INTO `voc` VALUES ('2096', 'electron', ' n. 电子');
INSERT INTO `voc` VALUES ('2097', 'involve', ' vt. 包含, 使陷入, 使忙于, 使卷入, 牵涉');
INSERT INTO `voc` VALUES ('2098', 'distribute', ' vt. &amp;vi. 分配,散布');
INSERT INTO `voc` VALUES ('2099', 'sleeve', ' n. 袖子,套管');
INSERT INTO `voc` VALUES ('2100', 'clinic', ' n. 诊所,门诊部,科室');
INSERT INTO `voc` VALUES ('2101', 'handkerchief', ' n. 手帕，方头巾、围巾');
INSERT INTO `voc` VALUES ('2102', 'gallery', ' n. 美术馆, 画廊, 顶层楼座, 狭长的房间');
INSERT INTO `voc` VALUES ('2103', 'province', ' n. 省, 范围');
INSERT INTO `voc` VALUES ('2104', 'headmaster', ' n. (中小学的)校长');
INSERT INTO `voc` VALUES ('2105', 'dedicate', ' vt. 献出,提献辞,致力于');
INSERT INTO `voc` VALUES ('2106', 'cape', ' n. 岬, 海角, 披肩');
INSERT INTO `voc` VALUES ('2107', 'method', ' n. 方法,办法,条理');
