/*
Navicat MySQL Data Transfer

Source Server         : wljy_front
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : wljy_front

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-06-22 18:12:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `comment_content` varchar(40) COLLATE utf8_bin NOT NULL,
  `postid` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(40) COLLATE utf8_bin NOT NULL,
  `content` varchar(40) COLLATE utf8_bin NOT NULL,
  `uid` varchar(40) COLLATE utf8_bin NOT NULL,
  `moment` varchar(40) COLLATE utf8_bin NOT NULL,
  `comments` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `pv` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主题id',
  `topic_type` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主题类型',
  `content` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('1', '1', '3', '这篇文章好像还不错哦！', '1');
INSERT INTO `tb_comment` VALUES ('2', '1', '3', '啦啦啦啦啦啦', '2');

-- ----------------------------
-- Table structure for tb_liveslist
-- ----------------------------
DROP TABLE IF EXISTS `tb_liveslist`;
CREATE TABLE `tb_liveslist` (
  `id` int(11) NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_liveslist
-- ----------------------------
INSERT INTO `tb_liveslist` VALUES ('1', '卢本伟', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=760195973,3509855578&fm=27&gp=0.jpg', '卢本伟牛逼', '888', null);
INSERT INTO `tb_liveslist` VALUES ('2', '笑笑', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=956389005,1058319581&fm=27&gp=0.jpg', '笑笑刚卢本伟', '1231231', null);
INSERT INTO `tb_liveslist` VALUES ('3', 'uu妹', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2758950582,2445274586&fm=27&gp=0.jpg', 'uu妹一血', '12313', null);
INSERT INTO `tb_liveslist` VALUES ('4', '斗鱼', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3132005923,1903145017&fm=27&gp=0.jpg', '发姐', '12313', null);
INSERT INTO `tb_liveslist` VALUES ('5', '梅西', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=202663463,4153474335&fm=27&gp=0.jpg', '梅西牛逼', '178978', null);

-- ----------------------------
-- Table structure for tb_newslist
-- ----------------------------
DROP TABLE IF EXISTS `tb_newslist`;
CREATE TABLE `tb_newslist` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `headImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `content` varchar(2551) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主题类型',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_newslist
-- ----------------------------
INSERT INTO `tb_newslist` VALUES ('1', '彭老大', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=580198311,1767386831&fm=27&gp=0.jpg', '我是老大我的撒大大实打实大苏打实打实的阿瑟东阿瑟东阿瑟东阿瑟东a', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3091043133,212922888&fm=27&gp=0.jpg', '2018-11-09 00:00:00', '营销不是销售，不是传统意义上的“卖东西”，不单是商业活动，它是个人和集体通过创造、提供出售并通过与别人交换产品和价值，以获得所需所欲之物的社会和管理的过程。它包括几个核心概念： \r\n需求、欲望和需求：人类需要食品、水、衣服、住所和空气。现在的人类还需要电话、电脑和调制解调器。总的来说，除了维持生存的物品，人们还对娱乐、教育等有着强烈的欲望，并表现出强烈的爱好。当代人的需求和欲望之多让人惊愕：仅美国人在一年中将消费670亿个鸡蛋、20亿只鸡、1330亿英里的国内空中旅行和教授的400万堂课。 \r\n产品：人们靠产品满足自己的需要和欲望，所以产品是指任何能用来满足人类需要的东西，包括服务。销售和营销的区别之一就是，营销把目光放在顾客的需要而非产品本身上。 \r\n价值、成本和满意：综合考虑产品、服务满足人们需求程度的高低和所要付出的成本是必要的，惟有如此才能做出正确的选择。消费者在生活中的理性行为远远超过了经济学家狭隘的“经济人假设”。 \r\n交换、交易和关系：交换是过程而不是事件，交换达成交易的产生，而交易是终结点。为此，营销者要缩短交换过程，以达成更多交易。精明的营销者会和消费者、分销商、供应商建立长期的、信任的和互利的关系。因此，营销已经从追求每个交易利润最大化变为追求其他各方利益关系最大化。 \r\n市场：是各种不同需求的现实的、潜在的顾客群。市场＝人口＋购买力＋购买意愿。 \r\n对于市场营销，我们可以建立一个模型： \r\n基本需求 \r\n市场 欲望 \r\n交易 核心概念 产品需求 \r\n交换 产品 \r\n价值 \r\n市场营销观念和销售观念是在对待组织、顾客和社会三者利益冲突上不同的观念。 \r\n销售观念认为，如果听其自然的话，消费者通常不会足量购买一个组织的产品，因此，有必要进行积极推销和进行大量促销活动，即认为销售数量和企业促销努力成正比。 \r\n作为现代营销之父的菲利普·科特勒先生认为：“当顾客步入商品陈列室，企业推销员便开始揣摩来者的心思，如果有一位顾客喜欢某种式样的汽车，推销员就会马上告诉他，另一位顾客正好也打算买这辆汽车，因此要当机立断。如果顾客因为价格而犹豫不决，推销员马上又会提出他可以找经理商谈，把价格降得更低些。这位顾客等了10分钟，推销员就满面春风地出来说：‘老板起初不同意，但我好歹说服了他。’这样做的目的是为了激发顾客立即购买。” \r\n而营销观念是与销售观念大相径庭的。彼得·杜拉克说过：“某些推销工作总是重要的，然而营销的目的就是要使推销成为多余。营销的目的在于在于深刻地认识和了解顾客，从而使产品或服务完全适合他的需要而形成产品自我销售。”简单来说，营销以消费者为中心、以竞争为基础、以协调为手段，企业利润是营销的结果而不是企业的目的。', '3');
INSERT INTO `tb_newslist` VALUES ('2', '干干干', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4277421151,989647164&fm=27&gp=0.jpg', '冲冲冲阿萨大大撒旦阿瑟东阿瑟东阿迪斯阿斯顿阿斯顿', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2688537749,3377948295&fm=27&gp=0.jpg', '2015-08-07 00:00:00', '创业是创业者对自己拥有的资源或通过努力对能够拥有的资源进行优化整合，从而创造出更大经济或社会价值的过程。创业是一种劳动方式，是一种需要创业者运营、组织、运用服务、技术、器物作业的思考、推理和判断的行为。根据杰夫里·提蒙斯（Jeffry A.Timmons）所著的创业教育领域的经典教科书《创业创造》（New Venture Creation）的定义：创业是一种思考、推理结合运气的行为方式，它为运气带来的机会所驱动，需要在方法上全盘考虑并拥有和谐的领导能力。\r\n创业作为一个商业领域，创业以点滴成就点滴喜悦致力于理解创造新事物（新产品，新市场，新生产过程或原材料，组织现有技术的新方法）的机会，如何出现并被特定个体发现或创造，这些人如何运用各种方法去利用和开发它们，然后产生各种结果。\r\n创业是一个人发现了一个商机并加以实际行动转化为具体的社会形态，获得利益，实现价值。\r\n科尔（Cole）提出，把创业定义为:发起、维持和发展以利润为导向的企业的有目的性的行为。', '3');
INSERT INTO `tb_newslist` VALUES ('3', '阿斯达', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=580198311,1767386831&fm=27&gp=0.jpg', '阿斯达大所大所大大所', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2688537749,3377948295&fm=27&gp=0.jpg', '2016-08-09 00:00:00', '阿斯达大所大所大所大所大所大所大所大所大所多撒多', '3');
INSERT INTO `tb_newslist` VALUES ('4', 'eqe', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=580198311,1767386831&fm=27&gp=0.jpg', 'add撒多阿萨德奥迪', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2688537749,3377948295&fm=27&gp=0.jpg', '2018-06-12 10:26:40', 'dasdadasdadasd', '3');

-- ----------------------------
-- Table structure for tb_newslist_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_newslist_detail`;
CREATE TABLE `tb_newslist_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL COMMENT '文章id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `thumbsUp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '点赞',
  `attention` varchar(2550) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关注',
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tb_newslist_detail
-- ----------------------------
INSERT INTO `tb_newslist_detail` VALUES ('1', '1', '1', '100', '1000', '真的牛逼');
INSERT INTO `tb_newslist_detail` VALUES ('2', '2', '2', '80', '9999', '哇 好棒啊');
INSERT INTO `tb_newslist_detail` VALUES ('3', '1', '3', '20', '888', 'sghgjgjhgj');

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
INSERT INTO `tb_notice` VALUES ('1', '通告栏', '预祝是大煞笔无主阿萨大大撒旦阿瑟东阿瑟东阿瑟东阿迪斯阿斯顿啊阿斯顿阿瑟东阿瑟东阿瑟东吖的 阿萨大大撒旦');

-- ----------------------------
-- Table structure for tb_reply
-- ----------------------------
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE `tb_reply` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) DEFAULT NULL COMMENT '评论id',
  `reply_id` int(11) DEFAULT NULL COMMENT '回复目标id',
  `reply_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回复类型',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回复内容',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回复用户id',
  `to_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '目标用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_reply
-- ----------------------------
INSERT INTO `tb_reply` VALUES ('1', '1', null, null, '你真的觉得这个文章不错嘛', '3', '1');
INSERT INTO `tb_reply` VALUES ('2', '2', null, null, 'adasdadad', '3', '1');
INSERT INTO `tb_reply` VALUES ('3', '2', null, null, '啊实打实大苏打', '2', '1');
INSERT INTO `tb_reply` VALUES ('4', '1', null, null, '啊啊啊啊啊啊啊', '1', '2');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('00000000001', 'pk', '1', '123', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1163266585,1990963493&fm=27&gp=0.jpg');
INSERT INTO `tb_users` VALUES ('00000000002', 'zy', '0', '123', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1226778478,3432630272&fm=27&gp=0.jpg');
INSERT INTO `tb_users` VALUES ('00000000003', '333', '0', '123', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2265437237,3468716393&fm=27&gp=0.jpg');

-- ----------------------------
-- Table structure for tb_vedioeslist
-- ----------------------------
DROP TABLE IF EXISTS `tb_vedioeslist`;
CREATE TABLE `tb_vedioeslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `people` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `money` float DEFAULT NULL,
  `specialMoney` float DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_vedioeslist
-- ----------------------------
INSERT INTO `tb_vedioeslist` VALUES ('1', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3240918356,1823326004&fm=27&gp=0.jpg', '直播好看啊', '123213', '123', '0', '2018-09-05 00:00:00');
INSERT INTO `tb_vedioeslist` VALUES ('2', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2402531608,4087629920&fm=27&gp=0.jpg', '美女直播不容错过', '12312', '177', '0', '2019-07-02 00:00:00');
INSERT INTO `tb_vedioeslist` VALUES ('3', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2558609194,1942934053&fm=27&gp=0.jpg', '动漫电影', '123', '126', '12', '2012-02-12 12:00:00');
INSERT INTO `tb_vedioeslist` VALUES ('4', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2433433105,3188102416&fm=27&gp=0.jpg', '哈哈哈', '6545', '453', '234', '2048-08-02 00:00:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `pass` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
