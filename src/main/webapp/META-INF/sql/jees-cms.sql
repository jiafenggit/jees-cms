/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : jees-cms

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-11-29 15:35:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `column_id` int(11) NOT NULL DEFAULT '0',
  `url` tinytext,
  `keywords` tinytext,
  `description` mediumtext,
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `from_url` tinytext,
  `logo` tinytext,
  `content` text,
  `comment_enable` tinyint(4) NOT NULL DEFAULT '0',
  `comment_allow` tinyint(4) NOT NULL DEFAULT '0',
  `count_view` tinyint(4) NOT NULL DEFAULT '0',
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `count_partake` tinyint(4) NOT NULL DEFAULT '0',
  `is_top` tinyint(4) NOT NULL DEFAULT '0',
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `publish_time` bigint(20) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '不仅是三星 很多亚洲科技企业都有接班人难题', '1', '', '', '', '腾讯科技', 'http://tech.qq.com/a/20141127/016696.htm', '', '<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		腾讯科技讯 11月27日，在一手将台积电打造成世界级芯片制造商后， 2005年，张忠谋宣布辞去公司CEO职务，将权杖交予其一手培养起来的接班人蔡力行。不过，时隔四年后，当台积电在金融危机中苦苦挣扎时，张忠谋以78岁高龄，重掌帅印控制局面。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		在近期的一次采访中，83岁的张忠谋提及上次退休经历时表示：“上一次不是很成功。”\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		目前，张忠谋正在培养两位接班人，他们分别是61岁的魏哲家和60岁的刘德音。由于两人都是工程师出身，转型做商人必然需要一定的时间。对于这个期限，张忠谋认为，虽然两人都在进步，但可能需要10年时间。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		亚洲有不少著名科技企业都面临接班人的问题，张忠谋的台积电并不是个案。类似的企业还有<span class=\"infoMblog\"><a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/samsungelectronicbj#pref=qqcom.keyword\" target=\"_blank\">三星电子</a></span>、富士康以及佳能。对于一些上年纪的科技界大佬而言，想说放手不是一件容易的事。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		在选择接班人的问题上，这些企业必须慎之又慎。否则，稍有疏忽或将改变亚洲硬件行业的竞争格局。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		其实，不仅是亚洲企业面临“后继无人”的困境，全球大多数公司或多或少都有这方面的问题。美国斯坦福大学今年对美国高管进行的一份调查显示，只有大约25%的受访者认为他们公司针对CEO职位有现成的候选人。在欧洲，英国天然气集团公司(BG Group PLC)在前CEO辞职后，该职位空置长达七个月。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		不过，接班人问题最为严峻的还是亚洲科技企业，因为他们其中大部分还是由公司创始人或企业锻造者领导。在标准普尔信息平台S&P Capital IQ列出的亚洲十大上市科技公司中，其中有五家企业的CEO年龄超过了60岁，他们分别是三星、富士康、台积电、佳能以及日立。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		在这五家企业中，富士康与台积电的情况相同，他们目前都是由公司创办者所领导。佳能CEO御手洗富士夫(Fujio Mitarai)则是创办家族的成员。在三星电子，虽然三位CEO中有两位的年纪都超过了60岁，但真正的权力掌握在72岁的董事长李健熙手里，而他则是三星集团创始人李秉喆的儿子。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		相比之下，美国十大上市的科技企业中，只有<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/CSCO.OQ.htm\" target=\"_blank\">思科</a>CEO约翰•钱伯斯(John Chambers)的年龄超过了60岁。而从硅谷崛起的首批科技界巨擎中，大部分企业已经至少完成了一次领导人接班。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		亚洲另一家为接班人做准备的企业则是尚未上市的中国电信(<span class=\"infoMblog\"><a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/chinatelecom#pref=qqcom.keyword\" target=\"_blank\">微博</a></span>)设备制造商华为，该公司创始人<a class=\"a-tips-Article-QQ\" href=\"http://datalib.tech.qq.com/people/161/index.shtml\" target=\"_blank\">任正非</a>已经是70岁高龄。虽然华为称任正非的接班人可能是一个团队，但是该公司仍在处于寻觅接班人的阶段，华为从2011年起开始实行轮值CEO制度。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		在中国台湾，台积电和电脑设备制造商宏碁等企业都有类似的经历，一旦创始人退居幕后，其公司业绩必定遭受重挫，这迫使这些大佬不得不再度出山，扭转颓势。日本的情况也差不多。2012年，76岁的御手洗富士夫再度出任佳能总裁，并兼任董事长和CEO。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		佳能发言人表示，该公司正在通过内部的管理人才培训项目物色新一代领导者。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		69岁的宏碁创始人施振荣不得不在去年回到公司，再度担任董事长一职。施振荣当时这样表态：“我已经寻找近半年时间，但还是没能找到新的董事长，所以我只好回来。”由于PC产业由<a class=\"a-tips-Article-QQ\" href=\"http://digi.qq.com/nbook/nbook.shtml\" target=\"_blank\">笔记本</a>电脑向移动设备转变，宏碁遭遇三年亏损。作为公司的创始人，施振荣不可能袖手旁观，看着自己辛辛苦苦建立起来的公司土崩瓦解。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		哈佛大学商学院教授史兆威(Willy Shih)指出，很多亚洲企业所存在的问题在于他们的运营多数像是由强势创始人领导下的家族企业，即使公司成长为全球型企业，其运营方式还是一样。这样一来就意味着，这些企业的运行是由上至下，创始人发布命令，下面雇员遵照执行。随着业务的增长，一些创始人并不将权力下放。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		史兆威教授表示：“这种现象在亚洲是特有现象。一些企业在某方面由于创始人的强势可能会发展得很好，但是这种管理方式是大人物做一切决定，因此资历尚浅的雇员无法获得经验。”\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		在业界，人们都知道现年64岁的富士康董事长郭台铭是一个工作狂，对于大规模发展的企业大多是事必躬亲。目前，尚不清楚富士康的最后继承人是谁，郭台铭此前也暗示称接班人不止一个。该公司上月发布的声明称，郭台铭尚无退出领导层的计划，并正在组建一个“强大且深厚的领导团队”。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		此前，郭台铭曾表示计划将公司剥离为几个部分，让更多的年轻管理人有锻炼的机会。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		台湾董事学会(Taiwan Institute of Directors)发起人蔡鸿青认为，培养一名企业接班人需要数年时间的计划，其中包括让其在关键部门、海外工作以及领导岗位上接受历练。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		蔡鸿青表示：“从我们的研究发现，正确培养一位接班人得需要十年时间，但我们没有看到台湾有哪家企业这样做。”\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n		在韩国，三星电子正在筹备权力交接。今年5月份突发心肌梗塞的三星电子董事长李健熙准备将权杖交给自己的儿子，现年46岁的三星电子副董事长李在镕。虽然子承父业再合情合理不过，但还是有不少人质疑这一交接是否顺利以及李在镕是否已经做好准备。对于接班人问题，三星方面拒绝置评。（李路）\r\n	</p>\r\n</b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span></span> \r\n</p>', '1', '1', '0', '0', '0', '0', '1416996121000', '1', '1417082521000', '1', '1414487118605', '1', '1417058212625');
INSERT INTO `cms_article` VALUES ('2', '新战场：特斯拉12月要“开到”澳大利亚', '1', '', '艾佛森;按时发;萨芬', '啊嘎嘎', '腾讯科技', 'http://tech.qq.com/a/20141127/012203.htm', '', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	腾讯科技讯 11月27日，据英国媒体报道，12月9日，特斯拉公司将正式进入澳大利亚市场。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	据称，9日当天，特斯拉公司将会在澳大利亚向订购者交付一批Model S电动汽车，另外该公司也会宣布在澳大利亚的第一批充电站和汽车展示厅的具体位置。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	早前据媒体报道，特斯拉公司正在澳大利亚寻找理想位置，建设充电站，另外至少在悉尼市的一个大型购物中心，设立了展示厅。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	特斯拉早前已经证实，12月将会进入澳国市场。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	特斯拉也开始在澳大利亚招兵买马，据澳大利亚汽车网站报道，10月底，特斯拉曾经在澳大利亚举行招聘日活动，招募各种岗位，其中包括汽车内饰、车辆安全等等，需要指出的是，这些岗位并非在澳大利亚，而是在特斯拉总部所在的美国加州。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	据报道，通用汽车、福特、丰田等公司，近来关闭了在澳大利亚的部分汽车厂，因此部分失业的员工，可能投奔特斯拉公司，或是奔赴加州，或是在澳大利亚负责特斯拉的本地化业务。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	特斯拉电动车的生产规模不大，但是其已经制定了全球化的市场战略，去年已经进军英国，除了建设充电站之外，特斯拉还将在英国建设研发中心。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	众所周知，特斯拉也已经进入了中国市场，并和中国联通(<span class=\"infoMblog\"><a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/chinaunicom#pref=qqcom.keyword\" target=\"_blank\">微博</a></span>)公司合作，在一些城市建设充电站和充电桩。（晨曦）\r\n</p>', '0', '0', '0', '0', '0', '0', '1416996121000', '1', '1417082521000', '1', '1415260554394', '1', '1417058254193');
INSERT INTO `cms_article` VALUES ('3', '别得意！这三大威胁可能会阻止苹果的迅猛扩张', '1', '', '', '', '腾讯科技', 'http://tech.qq.com/a/20141127/011779.htm', '', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	腾讯科技讯 11月27日，在过去一年间，<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\">苹果</a>公司股价上涨了50%，公司市值已经达到7000亿美元。但是现在苹果面临一个问题：这种迅猛扩张的势头能持续多久？加拿大皇家银行资本市场(RBC Capital Markets)的分析师艾米特·达亚纳尼(Amit Daryanani)称：“苹果股票表现非常好，这主要依赖于iPhone 6与iPhone 6 Plus取得的巨大成功。问题是这种增长趋势能够持续多久？”要想在华尔街找到一位看跌苹果股票的分析师很难，即使有些人已经意识到苹果公司面临的威胁。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-weight:800;\">iPhone狂热将消退</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	苹果的iPhone销售收入占公司总收入的一半以上，而由于新iPhone 6在硬件和软件方面已经有显著更新，为此分析家们普遍预计，苹果iPhone的升级周期将在2015年减速。市场研究公司Street Account称，华尔街估计苹果在第一季度可出货6000万部iPhone。但凯基证券(KGI Securities)的分析师郭明池(Ming-Chi Kuo)则预计，在假日购物季所在季度，iPhone的出货量可达7150万部。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	较长升级周期的预测显得有点儿乐观，分析师们对iPhone 2015年的销量预测也可能太高。市场研究公司Disruptive Tech Research创始人路易斯·巴森尼斯（Louis Basenese）说：“我看到的大问题可能导致苹果无法满足分析师和市场预期。iPhone 6十分成功，大多数分析师对iPhone 6寄予厚望，但苹果产品目标价格和股价都在修正中，我认为iPhone的销量可能无法满足预期。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	加拿大皇家银行资本市场分析师艾米特·达亚纳尼称，另一个担忧是iPhone销量到2015年可能会“撞墙”，原因也是它太过成功——达亚纳尼解释说，未来几月，iPhone将抢占高端智能手机（300美元以上）市场70%的份额，届时苹果可能面临市场饱和的问题。达亚纳尼认为，苹果股票的“超配”（outperform rating）预期价格为120美元。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	“如果在接下来的几个月，苹果公司真的抢占70%市场份额，它必须寻找新的机遇或新的收入增长点。苹果公司很可能遭遇市场饱和问题，这很可能是其6个月后面临的挑战。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-weight:800;\">中国竞争</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	许多分析师预计，苹果在中国的扩张将继续成为iPhone销量增长的催化剂。但苹果面临其他智能手机制造商日益激烈的竞争，这些制造商实行低价战略，可能对苹果的区域战略造成威胁。投资公司JMP Securities分析师亚历克斯·高纳（Alex Gauna）说：“中国将是最大的不稳定因素，但同样也代表最宝贵的机会。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	中国无线基础设施的日益完善，意味着这里的智能手机需求将变得更高，但这并非意味着iPhone一定能占据主导地位。高纳认为苹果股票的“超配”（outperform rating）预期价格可达到135美元，他说中国本土手机制造商的表现非常棒，已经对iPhone制造商形成威胁。达亚纳尼说：“他们拥有巨大潜力，可以为苹果造成类似让三星大感头疼的问题。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-weight:800;\">智能手表销售</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	华尔街预期智能手表Apple Watch将成为促进苹果公司收入增长的新引擎，然而苹果手表同样面临消费者购买欲望低下的危险。巴森尼斯说：“苹果对智能手表的定位是什么，是下一款主打产品，亦或只是一种很酷的配件？我认为，苹果需要一款主打产品，全新的产品。如果智能手表无法担负起重任，像其他智能手表那样平平无奇，那么苹果就危险了。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	行业专家称，除了电池寿命短、使用场景不足外，高昂的价格也是阻止消费者购买苹果手表的因素之一。达亚纳尼说：“为何我们需要购买这款几乎每天都要充电的智能手表？它不是最方便的产品。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	达亚纳尼估计，苹果将从明年3月份开始出售智能手表，2015年它可能以520美元的均价售出2000万块。他还预测，智能手表最终可为苹果带来100亿美元收入，帮助其股票每股升值40美分。但是鉴于苹果智能手表只能与iPhone 5以后的iPhone兼容，为此达亚纳尼认为评估应保持谨慎。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	巴森尼斯说，除了智能手表的普及率外，投资人还应该关注苹果支付系统Apple Pay的进展情况。他说：“如果最终Apple Pay的推动力不足，苹果恐怕还得解释原因——他们有信用卡数据，人们手里有智能手机，消费者有可以使用它们的大量场所，为何缺少牵引力会成为Apple Pay的重要问题？”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	苹果还未就此作出评论，但该公司似乎对Apple Pay能够取得成功胸有成竹。苹果首席执行官蒂姆·库克（Tim Cook）在上季度财报会议上称，人们对iPhone 6的需求“史无前例”。他还说：“我们正以苹果最强产品阵容进入假日购物季，我们也为2015年推出智能手表和其他产品与服务感到激动。”\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	苹果预计，公司在2015年1月份之前的3个月中，销售的产品销量将超过2010年全年总销售量。（风帆）\r\n</p>', '1', '1', '0', '0', '0', '1', '1416996121000', '1', '1417082521000', '1', '1416996471796', '1', '1417058290037');
INSERT INTO `cms_article` VALUES ('4', '苹果市值能破7000亿美元拜对手疲软所赐', '1', '', '', '', '腾讯科技', 'http://tech.qq.com/a/20141127/006550.htm', '', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	继本月初，<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\">苹果</a>市值突破6000亿美元创下历史新高之后仅一个月左右时间，随着假期购物季的到来以及明年初将发售智能手表Apple Watch，苹果股价持续攀升，近两日盘中市值一度达到7000亿美元。对此，有分析认为，苹果成为史上首破万亿美元市值公司的目标将指日可待。而就在去年，苹果的股价还处在下滑的挣扎中。那么究竟是什么原因让苹果股价在今年，尤其是近两个月连续飙升？\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	业内知道，在苹果主营业务(也是影响苹果股价涨跌)iPhone所在的智能手机市场，其最大的竞争对手是Android阵营的三星。不过，三星的市场表现却是持续低迷，尤其是与苹果iPhone在高端市场直面竞争的GalaxyS5。据相关报道，Galaxy S5上市头三个月销售出1200万台，比其前任Galaxy S4少了400万台，比三星此前预计少了40%。在中国市场销售数量比预期低了50%。作为苹果iPhone直接竞品GalaxyS5销量的大幅下滑无疑削弱了对苹果在高端市场的冲击。在此，我们需要说明的是，三星对于苹果竞争力的削弱，中国相关厂商起到了相当的牵制作用或者说间接帮了苹果一把。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	另外，并购<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/NOK.N.htm\" target=\"_blank\">诺基亚</a>手机业务的<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/MSFT.OQ.htm\" target=\"_blank\">微软</a>非但没有像业内预期的给苹果造成什么压力，反而有退避之嫌。例如其目前主打的Lumia机型主要针对的是中低端智能手机市场，而纳德拉接任鲍尔默任微软CEO之后提出的“移动为先，云为先”的策略，更是将自己的主要生产力软件Office免费向苹果的iOS平台（包括iPhone和iPad）提供，种种迹象表明，微软已经退出了与苹果在移动市场的直接碰撞和竞争。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	如果说，在当下智能手机市场，<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/GOOG.OQ.htm\" target=\"_blank\">谷歌</a>(<a href=\"http://t.qq.com/googlechina#pref=qqcom.keyword\" target=\"_blank\">微博</a>)和微软是苹果主要对手的话，通过上述的市场事实说明，这两个对手均已在苹果iPhone定位的高端市场败下阵来。而这些无疑让投资人认为，iPhone的未来将没有实质性的对手。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	同样，在平板电脑市场，尽管iPad出货量连续下滑，但其依旧保持着与对手较大的差距。关键是与智能手机市场类似，作为苹果主要对手的三星，其平板电脑的销量由于其他厂商（包括中国厂商）的激烈竞争其增速也出现减缓之势，同时让平板电脑市场的竞争格局更呈现出长尾化的趋势，即虽然厂商众多，但每个厂商所占市场份额和彼此间差距甚小，进而稀释了对于iPad的冲击。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	除上述竞争对手不给力外，由于苹果之前迟迟没有发布大屏iPhone，导致市场及用户对于大屏智能手机，特别是苹果大屏手机的市场需求被压抑，而这种压抑随着iPhone6的发布正在被逐步释放。据分析预测，因iPhone6的发布，苹果今年第四季度iPhone的出货量可能会达到7000万部左右。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	与此同时，针对iPad的下滑，苹果今年7月与<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/IBM.N.htm\" target=\"_blank\">IBM</a>达成战略合作，将企业市场作为iPad新的增长点。尽管目前合作才刚刚开始，但市场效应却已经开始显现。据 Good Technology 最新的移动指数报告，苹果 iOS 移动操作系统今年第三季度增长幅度首次出现逆转。即最近几个季度，苹果 iOS 设备虽然一直是企业市场中份额最高的平台，但增长率却出现颓势，且一直不如 Android。而此次苹果份额的增长，也直接导致了 Android 份额的下降。对此，投资人似乎已经看到苹果和 IBM 联盟背后的巨大利益，而分析师也乐观认为，iPad进入企业市场将会助力苹果股价增长10—15%。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	最后是在业内认为继智能手机之后可能成为新的产业增长点的可穿戴设备市场，虽然在发布和上市时间与对手相比，苹果似乎失去了先机。例如在智能手表市场，三星已经发布了第五代智能手表，摩托罗拉和LG也上市了自己的智能手表Moto360及LG G Watch R，但从实际的市场表现却都不尽如人意。这使得业内将智能手表市场爆发的希望寄托在了后发的苹果智能手表Apple Watch身上。对此，摩根士丹利认为一些投资者低估了苹果智能手表Apple Watch的市场需求预期，并且上调的苹果的目标股价，在某种程度上，对于苹果股价的飘升起到了推波助澜的作用。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	综上所述，不难看出，无论是目前激战正酣的移动（智能手机和平板电脑）市场，还是代表新的产业机会的可穿戴设备领域，对手竞争的乏力及苹果自身的举措偶然与必然因素的叠加是苹果股价近期一路飘升的主要原因，而这些因素能否持续且发挥作用，将直接关系着苹果未来冲顶市值万亿美元的目标能否实现。\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<span style=\"font-weight:800;\">（作者系科技媒体人）</span>\r\n</p>', '0', '0', '0', '0', '0', '0', '1417058292582', '1', '1417058292000', '1', '1417058330947', '1', '1417058330947');
INSERT INTO `cms_article` VALUES ('5', '大屏iPhone发布使iPad使用时间减少', '1', '', '', '', '腾讯科技', 'http://tech.qq.com/a/20141127/006481.htm', '', '<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n	[<span style=\"font-weight:800;\">摘要</span>]iPhone 6 Plus的用户在应用内打开视频的数量比iPhone 5s的用户高出40%。\r\n</p>\r\n<div id=\"Cnt-Main-Article-QQ\" style=\"margin:0px;padding:0px 0px 20px;font-size:15px;font-family:微软雅黑, Tahoma, Verdana, 宋体;color:#434343;background-color:#FFFFFF;\">\r\n	<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n		<img alt=\"大屏iPhone发布使iPad使用时间减少\" src=\"http://img1.gtimg.com/tech/pics/hv1/56/216/1750/113848886.png\" />\r\n	</div>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		腾讯科技讯 据流行音乐Pocket的统计数据显示，iPhone 6和iPhone 6 Plus发布之后，用户们使用iPad的时间就减少了。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		不同的产品之间很可能会出现相互影响的情况。如果说iPad肯定会受到其他新产品的影响的话，那么我想<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\">苹果</a>肯定希望影响iPad的产品是它自己的产品。从Pocket得到的统计数据来看，情况正是如此。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		Pocket分析了新一代iPhone的用户使用其应用的200多万次使用情况，结果发现人们使用iPad来阅读Pocket文章的次数和时间显著减少了。从上图可以看出，随着iPhone手机屏幕的逐代扩大，人们使用iPad来阅读Pocket文章的次数和时间呈逐代递减的趋势。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		Pocket还分析了不同屏幕尺寸的iPhone对于应用内活动造成的影响。它说，iPhone 6的用户在工作日利用iPad阅读Pocket文章的时间减少了19%，周末期间则减少得更多，达到了27%。iPhone 6 Plus的用户在工作日和周末期间利用iPad阅读Pocket文章的时间则分别减少了31%和36%。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		苹果iPhone 6 Plus的用户很喜欢看视频。Pocket称，iPhone 6 Plus的用户在应用内打开视频的数量比iPhone 5s的用户高出40%。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		我对这样的结果并不感到十分意外。设备屏幕越大，阅读体验就越优秀；还有人认为手机越来越大的原因只是为了在设备内装入更多的LTE无线电模块、天线和更大容量和尺寸的电池组。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		值得关注的是，iPhone 6和iPhone 6 Plus将在未来的12个月里会对iPad的销售收入造成多大的影响呢？\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		我们已经知道，iPad的销售额增长率正在下降，这与iPad的产品升级周期比iPhone手机的产品升级周期更长有一定的关系。再加上携带和使用大屏智能手机的人越来越多，估计iPad的需求将进一步下降。\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		当然，如果人们因为已经购买了大屏iPhone而略过iPad升级的话，我想苹果肯定会抓狂。（林靖东）‍\r\n	</p>\r\n</div>', '0', '0', '0', '0', '0', '0', '1417058378387', '1', '1417058378000', '1', '1417058416216', '1', '1417058416216');
INSERT INTO `cms_article` VALUES ('6', '东芝召回53万条笔记本电脑交流电源线', '1', '', '', '', '腾讯科技', 'http://tech.qq.com/a/20141126/105846.htm', '', '<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n	<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n		[<span style=\"font-weight:800;\">摘要</span>]本次召回范围内的交流电源线存在过热的隐患，可能会造成燃烧的风险。\r\n	</p>\r\n	<div id=\"Cnt-Main-Article-QQ\" style=\"margin:0px;padding:0px 0px 20px;font-size:15px;font-family:微软雅黑, Tahoma, Verdana, 宋体;color:#434343;background-color:#FFFFFF;\">\r\n		<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n			<img alt=\"东芝召回53万条笔记本电脑交流电源线\" src=\"http://img1.gtimg.com/tech/pics/hv1/165/53/1750/113807430.jpg\" />\r\n		</div>\r\n		<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n			昨起，东芝电脑网络（上海）有限公司召回部分2010年9月至2012年6月期间制造的东芝<a class=\"a-tips-Article-QQ\" href=\"http://digi.qq.com/nbook/nbook.shtml\" target=\"_blank\">笔记本</a>电脑配备的交流电源线，包括在维修过程中更换给用户的交流电源线，中国大陆地区受影响的交流电源线的数量为531778条。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n			本次召回范围内的交流电源线存在过热的隐患，可能会造成燃烧的风险。对于召回范围内的交流电源线，东芝电脑网络（上海）有限公司将免费为客户更换一条符合要求的交流电源线，以消除隐患。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n			东芝电脑网络（上海）有限公司将在官网发布召回计划，提示持有受影响型号交流电源线的消费者停止使用该交流电源线，并联系东芝电脑网络（上海）有限公司进行更换。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n			新京报记者 廖爱玲\r\n		</p>\r\n	</div>\r\n</p>\r\n<div id=\"Cnt-Main-Article-QQ\" style=\"margin:0px;padding:0px 0px 20px;font-size:15px;font-family:微软雅黑, Tahoma, Verdana, 宋体;color:#434343;background-color:#FFFFFF;\">\r\n	<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n		<img alt=\"大屏iPhone发布使iPad使用时间减少\" src=\"http://img1.gtimg.com/tech/pics/hv1/56/216/1750/113848886.png\" />\r\n	</div>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\"></a>\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n</div>', '0', '0', '0', '0', '0', '0', '1417058378387', '1', '1417058378000', '1', '1417058473128', '1', '1417058473128');
INSERT INTO `cms_article` VALUES ('7', '英国教授发明智能电子手术刀iKnife', '1', '', '', '', '腾讯科技', 'http://tech.qq.com/a/20141127/006453.htm', '', '<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n	<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n		<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n			<img alt=\"英国教授发明智能电子手术刀iKnife\" src=\"http://img1.gtimg.com/tech/pics/hv1/244/215/1750/113848819.jpg\" />\r\n		</div>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			腾讯科技讯 11月27日，在摘除乳腺癌肿瘤的手术中，有将近三分之一都无法做到完全抹除肿瘤的痕迹。这一比例证明了一件事情：在外科医生严重依赖于术前收集的医学影像及其他信息的情况下，想要切除癌症肿瘤到底有多么困难。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			英国帝国理工学院的教授Zoltan Takats说道，尝试摘除癌组织就像是闭眼开车一样难以做到。“就目前而言，外科医生能够获取的信息都并非直接信息，而是来自于术前任务的间接信息。而这就意味着，他们永远都不会确切地知道自己正在切除什么东西。”\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			对于这个医学难题，Takats提供了一种“答案”，那就是所谓的“iKnife”，这种外科手术仪器能让外科医生知道他们正在切除的组织是不是癌变组织。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			iKnife是一种电子手术刀，这种手术刀的探针可使用电荷烧穿人体组织。电子手术刀从二十世纪二十年代一直沿用至今，但与以往的电子手术刀不同的是，iKnife找到了一种方法，可从被烧灼的人体组织所散发出的蒸气中提取有用信息。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			传统的电子手术刀只是单纯地吸走这种蒸气，而iKnife则可将其导入一个质谱仪，从而对其化学成分进行分析。通过将蒸气的化学特征与数千种人体癌变和非癌变组织的特征进行对比，iKnife能让外科医生知道自己正在切除哪种类型的人体组织。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			通常情况下，这种分析在不到两秒钟的极短时间内即可完成。这种仪器配备了一个触摸屏监控器以显示分析结果，还可通过音频信号向医生通报信息。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			早期测试表明，这种仪器可在外科病房环境下精确辨别人体组织类型，而目前其研发团队正致力于设计一种可在手术室中使用的医疗级质谱仪。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			Takats称，临床试验表明与现有的电子手术刀规程相比，iKnife能帮助外科医生切除更多的癌变组织，同时还可降低对肿瘤周边的健康人体组织的伤害。“这种仪器肯定将可降低再次手术的比率，但我不知道它能将这种比率降低10%、30%还是90%。”他说道。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			Takats指出，摘除更多癌变组织的好处是不言而喻的，比如说能降低癌症复发的几率等。他说道：“以乳腺癌为例，30%的（外科手术）病例中会有肿瘤组织残留，而这些组织会发展为新的肿瘤。”\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			他还说道：“这是个很简单的道理：你不会想要癌症肿瘤留在病人体内，而同样地你也不会想要过多的健康组织被切除。”他举例称，在神经外科手术中，如果肿瘤附近的健康组织遭到伤害，那么其结果可能会是病人“丧失正常生活的能力”。\r\n		</p>\r\n		<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n			Takats称，预计iKnife的随机性人体试验将在2016年初开始进行。（瑞雪）\r\n		</p>\r\n	</p>\r\n</p>\r\n<div id=\"Cnt-Main-Article-QQ\" style=\"margin:0px;padding:0px 0px 20px;font-size:15px;font-family:微软雅黑, Tahoma, Verdana, 宋体;color:#434343;background-color:#FFFFFF;\">\r\n	<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n		<img alt=\"大屏iPhone发布使iPad使用时间减少\" src=\"http://img1.gtimg.com/tech/pics/hv1/56/216/1750/113848886.png\" />\r\n	</div>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\"></a>\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n</div>', '0', '0', '0', '0', '0', '0', '1417058378387', '1', '1417058378000', '1', '1417058508463', '1', '1417058508463');
INSERT INTO `cms_article` VALUES ('8', '传索尼明年将推全电子纸智能手表', '1', '', '', '', '腾讯科技', 'http://tech.qq.com/a/20141127/003751.htm', '', '<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n	<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n		<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n			<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n				[<span style=\"font-weight:800;\">摘要</span>]这款智能手表将更重视时尚元素，不会如苹果手表等那样在意功能。\r\n			</p>\r\n			<div id=\"Cnt-Main-Article-QQ\" style=\"margin:0px;padding:0px 0px 20px;font-size:15px;font-family:微软雅黑, Tahoma, Verdana, 宋体;color:#434343;background-color:#FFFFFF;\">\r\n				<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n					<img alt=\"传索尼明年将推全电子纸智能手表\" src=\"http://img1.gtimg.com/tech/pics/hv1/217/210/1750/113847517.jpg\" />\r\n				</div>\r\n				<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n					腾讯科技讯 11月27日，据外媒报道，索尼可能会在明年推出一款完全使用电子纸制作而成的智能手表。\r\n				</p>\r\n				<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n					报道称，这款智能手表将更重视时尚元素，更不是像<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\">苹果</a>Apple Watch和索尼SmartWatch等复杂可穿戴智能设备那样更在意功能。这款产品的表面和腕带都将使用电子纸为制造材料，但索尼将使用什么样的电子纸技术还不得而知。举例来说，Pebble在推销其智能手表时将一种LCD（液晶显示器）称作是“电子纸”，而Central Standard Timing生产的CST-01手表则使用了类似于<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AMZN.OQ.htm\" target=\"_blank\">亚马逊</a>Kindle的“电子墨水”技术。\r\n				</p>\r\n				<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n					这款智能手表将是索尼首席执行官平井一夫（Kaz Hirai）新组建的一个部门推出的首批产品之一，他组建这个部门的主旨是希望刺激索尼公司内部的创新活动。索尼生产的多种产品都颇受消费者欢迎，但最近以来这家公司一直都没能开发出像Walkman或PlayStation那样真正具有突破性的新产品。\r\n				</p>\r\n				<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n					索尼在今年早些时候宣布推出了一项具有创业公司风格的“种子加速计划”（Seed Acceleration Program），允许员工以筹集资金为目标向公司内部或外部人士提供创新的想法。据外媒获得的一份内部文件显示，索尼在6月份开展了这项计划的首个回合，当时该公司总共收到了187份申请，其中80项申请已被推进至下一个阶段。\r\n				</p>\r\n				<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n					在鼓励内部创新的同时，索尼称其将削减旗下表现不佳的电视和智能手机产品组合，目的是控制该公司螺旋式上升的成本。索尼新任移动通信总裁Hiroki Totoki曾在一次投资者大会上表示：“我们并非以规模或市场份额为目标，而是以提高利润为目标。”\r\n				</p>\r\n				<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n					索尼预计，未来三年中该公司销售额增长的主要来源将是其游戏和图像传感器部门，其中后一个部门已经由于苹果iPhone订单而得到加强。索尼预计，到2017年时图像传感器部门的规模将比现在扩大70%。\r\n				</p>\r\n				<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n					业界人士指出，索尼确实已经找到了一种通过移动业务赚取利润的方法，但索尼自身品牌的智能手机则表现不佳。（瑞雪）\r\n				</p>\r\n			</div>\r\n		</div>\r\n	</p>\r\n</p>\r\n<div id=\"Cnt-Main-Article-QQ\" style=\"margin:0px;padding:0px 0px 20px;font-size:15px;font-family:微软雅黑, Tahoma, Verdana, 宋体;color:#434343;background-color:#FFFFFF;\">\r\n	<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n		<img alt=\"大屏iPhone发布使iPad使用时间减少\" src=\"http://img1.gtimg.com/tech/pics/hv1/56/216/1750/113848886.png\" />\r\n	</div>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\"></a>\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n</div>', '0', '0', '0', '0', '0', '0', '1417058378387', '1', '1417058378000', '1', '1417058532523', '1', '1417058532523');
INSERT INTO `cms_article` VALUES ('9', '韩国政府要打击“自拍神器”', '1', '', '', '', '腾讯科技', 'http://tech.qq.com/a/20141127/001298.htm', '', '<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n	<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n		<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n			<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n				<p class=\"Introduction\" style=\"background-color:#FBFBFB;font-size:16px;color:#434343;font-family:微软雅黑, Tahoma, Verdana, 宋体;\">\r\n					<span style=\"font-weight:800;\">摘要</span>]店家出售未经核准的自拍棒商品，将开罚16.7万元，甚至被判3年刑期。\r\n				</p>\r\n				<div id=\"Cnt-Main-Article-QQ\" style=\"margin:0px;padding:0px 0px 20px;font-size:15px;font-family:微软雅黑, Tahoma, Verdana, 宋体;color:#434343;background-color:#FFFFFF;\">\r\n					<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n						<img alt=\"韩国政府要打击“自拍神器”\" src=\"http://img1.gtimg.com/tech/pics/hv1/232/208/1750/113847022.png\" />\r\n					</div>\r\n					<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n						参考消息网11月26日报道 台媒称，“自拍神器”能有效解决自拍时太多人挤不进镜头的囧境，但继东京迪士尼园区内禁止使用自拍棒后，韩国政府也打算对自拍神器强加规范。\r\n					</p>\r\n					<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n						据台湾东森新闻网11月26日报道，韩国<a class=\"a-tips-Article-QQ\" href=\"http://tech.qq.com/science.htm\" target=\"_blank\">科学</a>资讯通信技术和未来规划部表示，自拍棒若有蓝牙功能会发出干扰讯号，店家出售未经核准的商品，将开罚3000万韩元（腾讯科技注：约合人民币16.7万元），甚至被判3年刑期。\r\n					</p>\r\n					<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n						尽管外媒对韩国的政策啧啧称奇，但当地的科学资讯通信技术指出，自拍棒的蓝牙功能可能干扰其他设备，甚至产生的电磁波对人体有危害。\r\n					</p>\r\n					<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n						针对韩国政府的管制政策，民众似乎不领情，认为政府无非是想干预电子产品的使用习惯，还想打击小本经营的店家，还有网友戏称，管这么多！\r\n					</p>\r\n				</div>\r\n			</p>\r\n		</div>\r\n	</p>\r\n</p>\r\n<div id=\"Cnt-Main-Article-QQ\" style=\"margin:0px;padding:0px 0px 20px;font-size:15px;font-family:微软雅黑, Tahoma, Verdana, 宋体;color:#434343;background-color:#FFFFFF;\">\r\n	<div class=\"mbArticleSharePic \" style=\"margin:0px auto;padding:0px;\">\r\n		<img alt=\"大屏iPhone发布使iPad使用时间减少\" src=\"http://img1.gtimg.com/tech/pics/hv1/56/216/1750/113848886.png\" />\r\n	</div>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\"></a>\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"font-size:16px;color:#333333;text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n</div>', '0', '0', '0', '0', '0', '0', '1417058378387', '1', '1417058378000', '1', '1417058558648', '1', '1417058558648');
INSERT INTO `cms_article` VALUES ('10', '京东方副总裁：OLED电视为何难以普及？', '1', '', '', 'java[1] 是一种可以撰写跨平台应用软件的面向对象的程序设计语言，是由Sun Microsystems公司于1995年5月推出的Java程序设计语言和Java平台（即JavaEE, JavaME, JavaSE）的总称。Java自面世后就非常流行，发展迅速，对C++语言形成了有力冲击。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。', '', '', '', 'java[1] 是一种可以撰写跨平台应用软件的面向对象的程序设计语言，是由Sun Microsystems公司于1995年5月推出的Java程序设计语言和Java平台（即JavaEE, JavaME, JavaSE）的总称。Java自面世后就非常流行，发展迅速，对C++语言形成了有力冲击。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417144990000', '1', '1417058613966', '1', '1417169110539');
INSERT INTO `cms_article` VALUES ('11', '三星电子宣布回购20亿美元股票提振投资者信心', '1', '', '', 'java[1] 是一种可以撰写跨平台应用软件的面向对象的程序设计语言，是由Sun Microsystems公司于1995年5月推出的Java程序设计语言和Java平台（即JavaEE, JavaME, JavaSE）的总称。Java自面世后就非常流行，发展迅速，对C++语言形成了有力冲击。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417144990000', '1', '1417058625070', '1', '1417169123255');
INSERT INTO `cms_article` VALUES ('12', '安卓占据了史上最大的户外广告牌', '1', '', '', 'java[1] 是一种可以撰写跨平台应用软件的面向对象的程序设计语言，是由Sun Microsystems公司于1995年5月推出的Java程序设计语言和Java平台（即JavaEE, JavaME, JavaSE）的总称。Java自面世后就非常流行，发展迅速，对C++语言形成了有力冲击。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417144990000', '1', '1417058633820', '1', '1417169135198');
INSERT INTO `cms_article` VALUES ('13', '韩国政府打击神器自拍杆：卖家最高可被判三年', '1', '', '', 'java[1] 是一种可以撰写跨平台应用软件的面向对象的程序设计语言，是由Sun Microsystems公司于1995年5月推出的Java程序设计语言和Java平台（即JavaEE, JavaME, JavaSE）的总称。Java自面世后就非常流行，发展迅速，对C++语言形成了有力冲击。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417144990000', '1', '1417058643988', '1', '1417169147888');
INSERT INTO `cms_article` VALUES ('14', '微软澄清依规纳税 欠税“M公司”另有其人？', '1', '', '', 'java[1] 是一种可以撰写跨平台应用软件的面向对象的程序设计语言，是由Sun Microsystems公司于1995年5月推出的Java程序设计语言和Java平台（即JavaEE, JavaME, JavaSE）的总称。Java自面世后就非常流行，发展迅速，对C++语言形成了有力冲击。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于个人PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417144990000', '1', '1417058653628', '1', '1417169163808');
INSERT INTO `cms_article` VALUES ('15', '索尼复兴靠什么？图像传感器和游戏成希望', '1', '', '', '', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417058590000', '1', '1417058663446', '1', '1417058663446');
INSERT INTO `cms_article` VALUES ('16', '政府各种条件限制 用无人机送快递还不现实', '1', '', '', '', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417058590000', '1', '1417058672365', '1', '1417058672365');
INSERT INTO `cms_article` VALUES ('17', '高通反垄断结果仍难产 高管称不影响明年规划', '1', '', '', '', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417058590000', '1', '1417058682306', '1', '1417058682306');
INSERT INTO `cms_article` VALUES ('18', '为李在镕接班做准备？三星剥离17亿美元资产', '1', '', '', '', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417058590000', '1', '1417058691289', '1', '1417058691289');
INSERT INTO `cms_article` VALUES ('19', '大蛋糕！机器人初创企业去年吸1.72亿美元风投', '1', '', '', '', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417058590000', '1', '1417058700399', '1', '1417058700399');
INSERT INTO `cms_article` VALUES ('20', '老牌分析机构大胆断言：PC不可能反弹了', '1', '', '', '', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417058590000', '1', '1417058711182', '1', '1417058711182');
INSERT INTO `cms_article` VALUES ('21', '微软成中国反避税案主角 已缴纳1.4亿美元欠税', '1', '', '', '', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417058590000', '1', '1417058721409', '1', '1417058721409');
INSERT INTO `cms_article` VALUES ('22', '苹果也加入“黑五”促销大军 购物就送礼品卡', '1', '', '', '', '', '', '', '', '1', '1', '0', '0', '0', '0', '1417058590831', '1', '1417058590000', '1', '1417058731434', '1', '1417058731434');

-- ----------------------------
-- Table structure for `cms_column`
-- ----------------------------
DROP TABLE IF EXISTS `cms_column`;
CREATE TABLE `cms_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `keywords` tinytext,
  `description` tinytext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_column
-- ----------------------------
INSERT INTO `cms_column` VALUES ('1', '新闻动态', '0', '新闻动态', '新闻动态', '0', '1', '1', '1415000500739', '1', '1417051676399');
INSERT INTO `cms_column` VALUES ('2', '编程开发', '0', '编程开发', '编程开发', '0', '1', '1', '1415008840590', '1', '1417051712376');
INSERT INTO `cms_column` VALUES ('3', '架构设计', '0', '架构设计', '架构设计', '0', '1', '1', '1415008861059', '1', '1417051727022');
INSERT INTO `cms_column` VALUES ('4', '项目管理', '0', '项目管理', '项目管理', '0', '1', '1', '1415008869462', '1', '1417051741104');
INSERT INTO `cms_column` VALUES ('5', '运维监控', '0', '运维监控', '运维监控', '0', '1', '1', '1417051754854', '1', '1417051754854');
INSERT INTO `cms_column` VALUES ('6', '信息安全', '0', '信息安全', '信息安全', '0', '1', '1', '1417051762412', '1', '1417051762412');
INSERT INTO `cms_column` VALUES ('7', '软件测试', '0', '软件测试', '软件测试', '0', '1', '1', '1417051770963', '1', '1417051770963');
INSERT INTO `cms_column` VALUES ('8', '数据库', '0', '数据库', '数据库', '0', '1', '1', '1417051778690', '1', '1417051778690');
INSERT INTO `cms_column` VALUES ('9', '算法结构', '0', '算法结构', '算法结构', '0', '1', '1', '1417051786556', '1', '1417051786556');
INSERT INTO `cms_column` VALUES ('10', 'Java', '2', 'Java', 'Java', '0', '1', '1', '1417051807850', '1', '1417051807850');
INSERT INTO `cms_column` VALUES ('11', 'PHP', '2', 'PHP', 'PHP', '0', '1', '1', '1417051815343', '1', '1417051815343');
INSERT INTO `cms_column` VALUES ('12', 'JavaScript', '2', 'JavaScript', 'JavaScript', '0', '1', '1', '1417051823063', '1', '1417051823063');
INSERT INTO `cms_column` VALUES ('13', 'C/C++', '2', 'C/C++', 'C/C++', '0', '1', '1', '1417051907558', '1', '1417051907558');
INSERT INTO `cms_column` VALUES ('14', 'HTML5', '2', 'HTML5', 'HTML5', '0', '1', '1', '1417051914914', '1', '1417051914914');
INSERT INTO `cms_column` VALUES ('15', '案例分享', '3', '案例分享', '案例分享', '0', '1', '1', '1417051961558', '1', '1417051961558');
INSERT INTO `cms_column` VALUES ('16', '设计思路', '3', '设计思路', '设计思路', '0', '1', '1', '1417051979884', '1', '1417051979884');

-- ----------------------------
-- Table structure for `cms_duty`
-- ----------------------------
DROP TABLE IF EXISTS `cms_duty`;
CREATE TABLE `cms_duty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_duty
-- ----------------------------
INSERT INTO `cms_duty` VALUES ('1', '基础职务', '0', '0', '1', '1', '1414474444315', '1', '1414474444315');
INSERT INTO `cms_duty` VALUES ('2', '研发组职务', '0', '0', '1', '1', '1414474510316', '1', '1414474510316');
INSERT INTO `cms_duty` VALUES ('3', '部门负责人', '1', '0', '1', '1', '1414474562763', '1', '1414474562763');
INSERT INTO `cms_duty` VALUES ('4', '部门职员', '1', '0', '1', '1', '1414474569567', '1', '1414474569567');
INSERT INTO `cms_duty` VALUES ('5', '研发组长', '2', '0', '1', '1', '1414474576872', '1', '1414474576872');
INSERT INTO `cms_duty` VALUES ('6', '研发组员', '2', '0', '1', '1', '1414474582268', '1', '1414474582268');

-- ----------------------------
-- Table structure for `cms_forbidden_word`
-- ----------------------------
DROP TABLE IF EXISTS `cms_forbidden_word`;
CREATE TABLE `cms_forbidden_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `remark` tinytext,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_forbidden_word
-- ----------------------------
INSERT INTO `cms_forbidden_word` VALUES ('1', 'admin', 'serial', '禁止采用“admin”字样的账号注册', '0', '1', '1', '1416379180814', '1', '1416379278663');
INSERT INTO `cms_forbidden_word` VALUES ('2', '管理', 'name', '禁止采用“管理”字样的用户名称', '0', '1', '1', '1416379258848', '1', '1416379258848');

-- ----------------------------
-- Table structure for `cms_icon`
-- ----------------------------
DROP TABLE IF EXISTS `cms_icon`;
CREATE TABLE `cms_icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `url` tinytext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_icon
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_label`
-- ----------------------------
DROP TABLE IF EXISTS `cms_label`;
CREATE TABLE `cms_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `module` varchar(64) NOT NULL DEFAULT '',
  `controller` varchar(64) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `key_group` varchar(64) NOT NULL DEFAULT '',
  `key_name` varchar(64) NOT NULL DEFAULT '',
  `effect` varchar(32) NOT NULL DEFAULT '',
  `content` text,
  `remark` text,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_label
-- ----------------------------
INSERT INTO `cms_label` VALUES ('1', '首页焦点图', 'front', 'index', 'index', '', 'slideshow', 'slideshow', '{\"rows\":{\"3\":{\"url\":\"/\",\"short_title\":\"李晨张馨予谱写爱之终曲\",\"image\":\"http://127.0.0.1:8080/jees-cms/skin/images/focus/04.jpg\",\"title\":\"李晨张馨予谱写爱之终曲\"},\"0\":{\"short_title\":\"于正版霸王别姬 陈乔恩变腹黑大战情敌袁姗姗\",\"url\":\"/\",\"image\":\"http://127.0.0.1:8080/jees-cms/skin/images/focus/01.jpg\",\"title\":\"于正版霸王别姬 陈乔恩变腹黑大战情敌袁姗姗\"},\"1\":{\"title\":\"刘德华、郑秀文、杜琪峰香港电影铁三角十年归来\",\"short_title\":\"刘德华、郑秀文、杜琪峰香港电影铁三角十年归来\",\"image\":\"http://127.0.0.1:8080/jees-cms/skin/images/focus/02.jpg\",\"url\":\"/\"},\"2\":{\"short_title\":\"众星爸厨艺比拼犯难（2013-10-18期）\",\"title\":\"众星爸厨艺比拼犯难（2013-10-18期）\",\"url\":\"/\",\"image\":\"http://127.0.0.1:8080/jees-cms/skin/images/focus/03.jpg\"},\"4\":{\"image\":\"http://127.0.0.1:8080/jees-cms/skin/images/focus/05.jpg\",\"title\":\"周杰伦自导自演  传递超屌正能量\",\"short_title\":\"周杰伦自导自演  传递超屌正能量\",\"url\":\"/\"}},\"space\":\"0\",\"suffix\":\"...\"}', '', '0', '1', '1', '1415418678539', '1', '1416890662460');
INSERT INTO `cms_label` VALUES ('2', '首页最新动态标题', 'front', 'index', 'index', '', 'newsTitle', 'html', '最新动态', '', '0', '1', '1', '1416910221488', '1', '1416910221488');
INSERT INTO `cms_label` VALUES ('3', '首页最新动态列表', 'front', 'index', 'index', '', 'newsList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"8\",\"space\":\"0\",\"sortName\":\"sort\",\"suffix\":\"...\"}', '', '0', '1', '1', '1416998098427', '1', '1416998098427');
INSERT INTO `cms_label` VALUES ('4', '首页编程开发标题', 'front', 'index', 'index', '', 'programTitle', 'html', '编程开发', '', '0', '1', '1', '1417068299564', '1', '1417068299564');
INSERT INTO `cms_label` VALUES ('5', '首页编程开发列表', 'front', 'index', 'index', '', 'programList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"8\",\"space\":\"0\",\"suffix\":\"\",\"sortName\":\"sort\"}', '', '0', '1', '1', '1417068414337', '1', '1417068414337');
INSERT INTO `cms_label` VALUES ('6', '首页运维监控标题', 'front', 'index', 'index', '', 'operateTitle', 'html', '运维监控', '', '0', '1', '1', '1417068462230', '1', '1417068610774');
INSERT INTO `cms_label` VALUES ('7', '首页软件测试标题', 'front', 'index', 'index', '', 'testTitle', 'html', '软件测试', '', '0', '1', '1', '1417068480832', '1', '1417068578938');
INSERT INTO `cms_label` VALUES ('8', '首页运维监控列表', 'front', 'index', 'index', '', 'operateList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"8\",\"space\":\"0\",\"suffix\":\"\",\"sortName\":\"sort\"}', '', '0', '1', '1', '1417068534594', '1', '1417068534594');
INSERT INTO `cms_label` VALUES ('9', '首页软件测试列表', 'front', 'index', 'index', '', 'testList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"8\",\"space\":\"0\",\"suffix\":\"\",\"sortName\":\"sort\"}', '', '0', '1', '1', '1417068546052', '1', '1417068546052');
INSERT INTO `cms_label` VALUES ('10', '首页项目管理标题', 'front', 'index', 'index', '', 'projectTitle', 'html', '项目管理', '', '0', '1', '1', '1417162408298', '1', '1417162408298');
INSERT INTO `cms_label` VALUES ('11', '首页项目管理列表', 'front', 'index', 'index', '', 'projectList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"9\",\"space\":\"0\",\"suffix\":\"\",\"sortName\":\"sort\"}', '', '0', '1', '1', '1417162421249', '1', '1417162421249');
INSERT INTO `cms_label` VALUES ('12', '首页架构设计标题', 'front', 'index', 'index', '', 'architectureTitle', 'html', '架构设计', '', '0', '1', '1', '1417164532006', '1', '1417164532006');
INSERT INTO `cms_label` VALUES ('13', '首页架构设计列表', 'front', 'index', 'index', '', 'architectureList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"4\",\"space\":\"0\",\"suffix\":\"\",\"sortName\":\"sort\"}', '', '0', '1', '1', '1417164549666', '1', '1417164549666');
INSERT INTO `cms_label` VALUES ('14', '首页信心安全标题', 'front', 'index', 'index', '', 'safeTitle', 'html', '信心安全', '', '0', '1', '1', '1417185785291', '1', '1417185785291');
INSERT INTO `cms_label` VALUES ('15', '首页信心安全列表', 'front', 'index', 'index', '', 'safeList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"8\",\"space\":\"0\",\"suffix\":\"\",\"sortName\":\"sort\"}', '', '0', '1', '1', '1417185802063', '1', '1417185802063');
INSERT INTO `cms_label` VALUES ('16', '首页数据库标题', 'front', 'index', 'index', '', 'datebaseTitle', 'html', '数据库', '', '0', '1', '1', '1417185831120', '1', '1417185831120');
INSERT INTO `cms_label` VALUES ('17', '首页数据库列表', 'front', 'index', 'index', '', 'datebaseList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"8\",\"space\":\"0\",\"suffix\":\"\",\"sortName\":\"sort\"}', '', '0', '1', '1', '1417185843483', '1', '1417185843483');
INSERT INTO `cms_label` VALUES ('18', '首页算法结构标题', 'front', 'index', 'index', '', 'algorithmTitle', 'html', '算法结构', '', '0', '1', '1', '1417186257027', '1', '1417186257027');
INSERT INTO `cms_label` VALUES ('19', '首页算法结构列表', 'front', 'index', 'index', '', 'algorithmList', 'article', '{\"sortOrder\":\"desc\",\"total\":\"8\",\"space\":\"0\",\"suffix\":\"\",\"sortName\":\"sort\"}', '', '0', '1', '1', '1417186269317', '1', '1417186269317');

-- ----------------------------
-- Table structure for `cms_log`
-- ----------------------------
DROP TABLE IF EXISTS `cms_log`;
CREATE TABLE `cms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `module` varchar(32) NOT NULL DEFAULT '',
  `controller` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `referer` text,
  `request_url` text,
  `request_param` text,
  `session_id` tinytext,
  `session_value` text,
  `response_view` tinytext,
  `response_data` text,
  `content` text,
  `operate_id` int(11) NOT NULL DEFAULT '0',
  `operate_ip` varchar(64) NOT NULL DEFAULT '',
  `operate_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_log
-- ----------------------------
INSERT INTO `cms_log` VALUES ('1', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414490468022');
INSERT INTO `cms_log` VALUES ('2', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414545029912');
INSERT INTO `cms_log` VALUES ('3', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414545168109');
INSERT INTO `cms_log` VALUES ('4', '用户登陆', 'service', 'base', 'member', 'guest', null, null, null, null, null, null, null, null, '2', '127.0.0.1', '1414546950839');
INSERT INTO `cms_log` VALUES ('5', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414549189833');
INSERT INTO `cms_log` VALUES ('6', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414549226782');
INSERT INTO `cms_log` VALUES ('7', '用户登陆', 'service', 'base', 'member', 'guest', null, null, null, null, null, null, null, null, '2', '127.0.0.1', '1414549237147');
INSERT INTO `cms_log` VALUES ('8', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '2', '127.0.0.1', '1414549407194');
INSERT INTO `cms_log` VALUES ('9', '用户登陆', 'service', 'base', 'member', 'guest', null, null, null, null, null, null, null, null, '2', '127.0.0.1', '1414549503629');
INSERT INTO `cms_log` VALUES ('10', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414550599929');
INSERT INTO `cms_log` VALUES ('11', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414641115538');
INSERT INTO `cms_log` VALUES ('12', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415000437396');
INSERT INTO `cms_log` VALUES ('13', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415008833470');
INSERT INTO `cms_log` VALUES ('14', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415150762677');
INSERT INTO `cms_log` VALUES ('15', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415162161325');
INSERT INTO `cms_log` VALUES ('16', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415174483534');
INSERT INTO `cms_log` VALUES ('17', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415256154141');
INSERT INTO `cms_log` VALUES ('18', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415322999570');
INSERT INTO `cms_log` VALUES ('19', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415329219584');
INSERT INTO `cms_log` VALUES ('20', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415344296632');
INSERT INTO `cms_log` VALUES ('21', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415354575484');
INSERT INTO `cms_log` VALUES ('22', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415415052717');
INSERT INTO `cms_log` VALUES ('23', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415499774940');
INSERT INTO `cms_log` VALUES ('24', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415502061255');
INSERT INTO `cms_log` VALUES ('25', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415596068345');
INSERT INTO `cms_log` VALUES ('27', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415667529406');
INSERT INTO `cms_log` VALUES ('30', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415768993348');
INSERT INTO `cms_log` VALUES ('31', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415773059188');
INSERT INTO `cms_log` VALUES ('32', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416016923217');
INSERT INTO `cms_log` VALUES ('33', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416024509031');
INSERT INTO `cms_log` VALUES ('34', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416030882779');
INSERT INTO `cms_log` VALUES ('35', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416210235062');
INSERT INTO `cms_log` VALUES ('36', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416376200989');
INSERT INTO `cms_log` VALUES ('37', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416379008123');
INSERT INTO `cms_log` VALUES ('38', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416461579671');
INSERT INTO `cms_log` VALUES ('39', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416545930234');
INSERT INTO `cms_log` VALUES ('40', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416545940531');
INSERT INTO `cms_log` VALUES ('41', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416546368089');
INSERT INTO `cms_log` VALUES ('42', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416547972335');
INSERT INTO `cms_log` VALUES ('43', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416633651304');
INSERT INTO `cms_log` VALUES ('44', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416800739090');
INSERT INTO `cms_log` VALUES ('45', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416801238115');
INSERT INTO `cms_log` VALUES ('46', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416807257309');
INSERT INTO `cms_log` VALUES ('47', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416810681908');
INSERT INTO `cms_log` VALUES ('48', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416811871997');
INSERT INTO `cms_log` VALUES ('49', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416886981919');
INSERT INTO `cms_log` VALUES ('50', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416890652399');
INSERT INTO `cms_log` VALUES ('51', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416901341502');
INSERT INTO `cms_log` VALUES ('52', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416910166651');
INSERT INTO `cms_log` VALUES ('53', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416996036501');
INSERT INTO `cms_log` VALUES ('54', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416998096343');
INSERT INTO `cms_log` VALUES ('55', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417051620757');
INSERT INTO `cms_log` VALUES ('56', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417057315456');
INSERT INTO `cms_log` VALUES ('57', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417068296876');
INSERT INTO `cms_log` VALUES ('58', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417137981544');
INSERT INTO `cms_log` VALUES ('59', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417155874753');
INSERT INTO `cms_log` VALUES ('60', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417159430053');
INSERT INTO `cms_log` VALUES ('61', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417162115889');
INSERT INTO `cms_log` VALUES ('62', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417164529064');
INSERT INTO `cms_log` VALUES ('63', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417168992507');
INSERT INTO `cms_log` VALUES ('64', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417179749779');
INSERT INTO `cms_log` VALUES ('65', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417185782761');
INSERT INTO `cms_log` VALUES ('66', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1417246458083');

-- ----------------------------
-- Table structure for `cms_log_setting`
-- ----------------------------
DROP TABLE IF EXISTS `cms_log_setting`;
CREATE TABLE `cms_log_setting` (
  `id` int(11) NOT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT '0',
  `referer` tinyint(4) NOT NULL DEFAULT '0',
  `request_url` tinyint(4) NOT NULL DEFAULT '0',
  `request_param` tinyint(4) NOT NULL DEFAULT '0',
  `session_id` tinyint(4) NOT NULL DEFAULT '0',
  `session_value` tinyint(4) NOT NULL DEFAULT '0',
  `response_view` tinyint(4) NOT NULL DEFAULT '0',
  `response_data` tinyint(4) NOT NULL DEFAULT '0',
  `operate_id` int(11) NOT NULL DEFAULT '0',
  `operate_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_log_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_member`
-- ----------------------------
DROP TABLE IF EXISTS `cms_member`;
CREATE TABLE `cms_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `salt` char(6) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `active_time` bigint(20) DEFAULT '0',
  `active_ip` varchar(64) DEFAULT '',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_ip` varchar(64) NOT NULL DEFAULT '',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_member
-- ----------------------------
INSERT INTO `cms_member` VALUES ('1', 'admin', '管理员', '0f4e8ac95b5c1fc48dc98004c7525bc7', '888888', '0', '1', '1417246494586', '127.0.0.1', '1', '127.0.0.1', '1411090286300', '1', '1417159438312');
INSERT INTO `cms_member` VALUES ('2', 'guest', '访客', '793a507822c9ec991c3418dfb7950f07', '338043', '0', '1', '1414550595011', '127.0.0.1', '1', '127.0.0.1', '1414546536140', '1', '1414546536140');

-- ----------------------------
-- Table structure for `cms_member_organize_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_member_organize_rel`;
CREATE TABLE `cms_member_organize_rel` (
  `member_id` int(11) NOT NULL DEFAULT '0',
  `organize_id` int(11) NOT NULL DEFAULT '0',
  `duty_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`,`organize_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_member_organize_rel
-- ----------------------------
INSERT INTO `cms_member_organize_rel` VALUES ('1', '1', '3');
INSERT INTO `cms_member_organize_rel` VALUES ('1', '6', '5');
INSERT INTO `cms_member_organize_rel` VALUES ('2', '2', '4');

-- ----------------------------
-- Table structure for `cms_member_role_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_member_role_rel`;
CREATE TABLE `cms_member_role_rel` (
  `member_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_member_role_rel
-- ----------------------------
INSERT INTO `cms_member_role_rel` VALUES ('1', '2');
INSERT INTO `cms_member_role_rel` VALUES ('2', '5');

-- ----------------------------
-- Table structure for `cms_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(128) NOT NULL DEFAULT '',
  `goal` varchar(8) NOT NULL DEFAULT '',
  `url` tinytext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES ('1', '默认菜单', '0', '', '_iframe', '', '0', '1', '1', '1414473027167', '1', '1414473027167');
INSERT INTO `cms_menu` VALUES ('2', '基础管理', '1', '', '_iframe', '', '0', '1', '1', '1414473128316', '1', '1414473171153');
INSERT INTO `cms_menu` VALUES ('3', '服务支持', '1', '', '_iframe', '', '0', '1', '1', '1414473191743', '1', '1414473191743');
INSERT INTO `cms_menu` VALUES ('4', '个人事务', '2', '', '_iframe', '', '0', '1', '1', '1414473213512', '1', '1414473213512');
INSERT INTO `cms_menu` VALUES ('5', '基础设置', '2', '', '_iframe', '', '0', '1', '1', '1414473222525', '1', '1414473222525');
INSERT INTO `cms_menu` VALUES ('6', '系统管理', '2', '', '_iframe', '', '0', '1', '1', '1414473231226', '1', '1414473231226');
INSERT INTO `cms_menu` VALUES ('7', '个人信息', '4', '', '_iframe', 'base/member/showSelf', '0', '1', '1', '1414473258867', '1', '1414473323577');
INSERT INTO `cms_menu` VALUES ('8', '密码修改', '4', '', '_iframe', 'base/member/editPassword', '0', '1', '1', '1414473301898', '1', '1414473363515');
INSERT INTO `cms_menu` VALUES ('9', '通知公告', '4', '', '_iframe', 'base/notice/layout', '0', '1', '1', '1414473847340', '1', '1414473847340');
INSERT INTO `cms_menu` VALUES ('10', '用户管理', '5', '', '_iframe', 'base/member/layout', '0', '1', '1', '1414473880919', '1', '1414473880919');
INSERT INTO `cms_menu` VALUES ('11', '组织管理', '5', '', '_iframe', 'base/organize/layout', '0', '1', '1', '1414473895222', '1', '1414473895222');
INSERT INTO `cms_menu` VALUES ('12', '角色管理', '5', '', '_iframe', 'base/role/layout', '0', '1', '1', '1414473908483', '1', '1414473908483');
INSERT INTO `cms_menu` VALUES ('13', '配置参数', '6', '', '_iframe', 'base/setting/layout', '0', '1', '1', '1414473954180', '1', '1414473954180');
INSERT INTO `cms_menu` VALUES ('14', '环境状态', '6', '', '_iframe', 'base/server/info', '0', '1', '1', '1414473978182', '1', '1414473978182');
INSERT INTO `cms_menu` VALUES ('15', '备份还原', '6', '', '_iframe', 'base/database/layout', '0', '1', '1', '1414473996215', '1', '1414473996215');
INSERT INTO `cms_menu` VALUES ('16', '图标管理', '6', '', '_iframe', 'base/icon/layout', '0', '1', '1', '1414474015579', '1', '1414474015579');
INSERT INTO `cms_menu` VALUES ('17', '菜单管理', '6', '', '_iframe', 'base/menu/layout', '0', '1', '1', '1414474026735', '1', '1414474026735');
INSERT INTO `cms_menu` VALUES ('18', '上传文件', '6', '', '_iframe', 'base/upload/layout', '0', '1', '1', '1414474054106', '1', '1414474054106');
INSERT INTO `cms_menu` VALUES ('19', '日志管理', '6', '', '_iframe', 'base/log/layout', '0', '1', '1', '1414474069981', '1', '1414474069981');
INSERT INTO `cms_menu` VALUES ('20', '资源管理', '6', '', '_iframe', 'base/resource/layout', '0', '1', '1', '1414474167390', '1', '1414474167390');
INSERT INTO `cms_menu` VALUES ('21', '官方主页', '3', '', '_iframe', 'http://www.iisquare.com/', '0', '1', '1', '1414476952893', '1', '1414477049753');

-- ----------------------------
-- Table structure for `cms_navigate`
-- ----------------------------
DROP TABLE IF EXISTS `cms_navigate`;
CREATE TABLE `cms_navigate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `active` varchar(255) NOT NULL DEFAULT '',
  `goal` varchar(8) NOT NULL DEFAULT '',
  `url` tinytext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_navigate
-- ----------------------------
INSERT INTO `cms_navigate` VALUES ('1', '首页', '0', '', '_self', '/', '0', '1', '1', '1416800828248', '1', '1416811884458');
INSERT INTO `cms_navigate` VALUES ('2', '新闻动态', '0', '', '_self', '/', '0', '1', '1', '1416800897427', '1', '1416800897427');
INSERT INTO `cms_navigate` VALUES ('3', '编程开发', '0', '', '_self', '/', '0', '1', '1', '1416800904248', '1', '1416800904248');
INSERT INTO `cms_navigate` VALUES ('4', '架构设计', '0', '', '_self', '/', '0', '1', '1', '1416800913824', '1', '1416800913824');
INSERT INTO `cms_navigate` VALUES ('5', '项目管理', '0', '', '_self', '/', '0', '1', '1', '1416800920433', '1', '1416800920433');
INSERT INTO `cms_navigate` VALUES ('6', '运维监控', '0', '', '_self', '/', '0', '1', '1', '1416800927527', '1', '1416800927527');
INSERT INTO `cms_navigate` VALUES ('7', '信息安全', '0', '', '_self', '/', '0', '1', '1', '1416800934879', '1', '1416800934879');
INSERT INTO `cms_navigate` VALUES ('8', '软件测试', '0', '', '_self', '/', '0', '1', '1', '1416800940679', '1', '1416800940679');
INSERT INTO `cms_navigate` VALUES ('9', '数据库', '0', '', '_self', '/', '0', '1', '1', '1416800953830', '1', '1416800953830');
INSERT INTO `cms_navigate` VALUES ('10', '算法结构', '0', '', '_self', '/', '0', '1', '1', '1416800969964', '1', '1416800969964');
INSERT INTO `cms_navigate` VALUES ('11', 'Java', '3', '', '_self', '/', '0', '1', '1', '1416801001904', '1', '1416801001904');
INSERT INTO `cms_navigate` VALUES ('12', 'PHP', '3', '', '_self', '/', '0', '1', '1', '1416801007262', '1', '1416801007262');
INSERT INTO `cms_navigate` VALUES ('13', 'JavaScript', '3', '', '_self', '/', '0', '1', '1', '1416801014605', '1', '1416801014605');
INSERT INTO `cms_navigate` VALUES ('14', 'C/C++', '3', '', '_self', '/', '0', '1', '1', '1416801240713', '1', '1416801240713');
INSERT INTO `cms_navigate` VALUES ('15', 'HTML5', '3', '', '_self', '/', '0', '1', '1', '1416801279836', '1', '1416801279836');

-- ----------------------------
-- Table structure for `cms_note`
-- ----------------------------
DROP TABLE IF EXISTS `cms_note`;
CREATE TABLE `cms_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(32) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_note
-- ----------------------------
INSERT INTO `cms_note` VALUES ('1', '2', '黄先生', '115325235235', '127.0.0.1', 'sss', '0', '1', '1', '1415344456505', '1', '1415344456505');

-- ----------------------------
-- Table structure for `cms_note_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_note_type`;
CREATE TABLE `cms_note_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_note_type
-- ----------------------------
INSERT INTO `cms_note_type` VALUES ('1', '在线留言', '0', '0', '1', '1', '1414486602560', '1', '1415344330000');
INSERT INTO `cms_note_type` VALUES ('2', '优化建议', '1', '0', '1', '1', '1414486632933', '1', '1415344345859');
INSERT INTO `cms_note_type` VALUES ('3', '投诉举报', '1', '0', '1', '1', '1414486646337', '1', '1415344354302');

-- ----------------------------
-- Table structure for `cms_notice`
-- ----------------------------
DROP TABLE IF EXISTS `cms_notice`;
CREATE TABLE `cms_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_notice
-- ----------------------------
INSERT INTO `cms_notice` VALUES ('1', '系统管理子系统', '3', '<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>2.2.2</b><b> </b><b>系统管理子系统</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	系统管理子系统是业务管理系统的系统初始化的管理平台，通过此系统，系统管理员可以定制操作界面、按级按角色授权、提高系统安全性，对系统参数及日志进行维护等。<a name=\"_Toc293411153\"></a><span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	（<span>1</span>）流程的定制和修改模块。系统提供行政办公、执法业务管理流程的自定义功能。用户可以根据自身的需要因应业务操作的变动或优化，自行对系统中相应的办公、执法流程的进行定制和修改。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<a name=\"_Toc293411154\"></a>（<span>2</span>）组织架构管理模块。用于对层次性的组织机构进行管理，可以用树状结构表示各职能部门的人事结构及从属关系、支持基于角色的代理人功能，支持目录服务<span>LDAP</span>的人员资料信息同步。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	部门管理用于维护用户所属单位、部门的组织结构，按照政府机关的实际组织结构来划分，并维护到数据库中，目的是对机构、用户进行统一管理。系统可实现部门的可视化的定义管理，包含以下内容：<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门设置，基本信息定义、修改、删除等操作。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门分级、排序、检索。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门与执法事项、流程环节、办事人员等关联。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	每个用户都属于某个特定的机构，当机构改变，如合并、撤销时，相应用户也要处理。当撤销时，该机构作删除处理，相应用户也作删除处理，当合并时，先做撤销处理，然后在另一个机构中添加用户。注意，这里的删除只是作删除标记，并不真正在数据库里删除。另外，在组织机构管理中也可以对部门或者用户赋予相应的应用权限和菜单权限。同时，组织机构管理支持符合<span>LDAP</span>命名格式的组织单元模型，可以依托目录服务中的组织结构，可以将目录服务中的组织机构和用户数据作为系统组织机构的基础数据，并无缝衔接到其它应用中。同时，通过实现和目录服务的数据捆绑，使得整个系统可以实现单点登录模式。<a name=\"_Toc293411155\"></a><span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	（<span>3</span>）用户管理模块。用户管理模块提供用户资料方面的管理功能，主要有：<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户基本资料；用户基本资料用于对系统中的用户进行管理，注册用户，管理用户的基本信息及<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	删除用户的基本管理功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户权限：给用户赋予相应登寻权限（选择一个用户组权限）以确保系统安全、可靠、有效地进<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	行，防止用户非法操作系统功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户密码修改：当用户忘记密码或因特殊需要必须更改先前设置的密码，并且用户拥有足够权限<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	时，系统才允许用户操作此功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<a name=\"_Toc293411156\"></a>（<span>4</span>）<a name=\"_Toc293411158\"></a>权限设置模块。权限管理用于管理系统的权限信息，可根据业务和管理要求分配不同的控制管理权限给指定用户或者角色。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  对应用系统的所有资源进行权限控制，系统根据用户的权限对工作窗口进行初始化，为不同角<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	色的用户定制不同的工作窗口界面和功能菜单。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  无限级功能模块管理，自定义模块排序，可以对整个系统中所有模块进行分类管理。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  自定义操作动作<span>(</span>如增加、删除、修改、查询、审核等动作<span>)</span>。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  灵活地为各模块分配操作，即每个模块有哪些操作需要被控制。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  对所有用户基础信息进行管理，实行有效期机制，过期自动失效，在有效期间亦可强制停止用<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	户使用。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  自定义角色，任意角色可任意组合系统权限功能点。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  按角色给用户授权，按用户分配角色，一个用户可有多个角色<span>(</span>多身份<span>)</span>，一个角色也可以被多<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	个用户拥有<span>(</span>同身份<span>)</span>（多对多），灵活授权。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  组织管理，与单位的部门或者机构对应，用于实现对用户和权限的分组归类管理。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户及角色分级管理，下级用户只能拥有上级用户权限的子集，可无限分级。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	（<span>5</span>）数据维护模块。数据维护是赋予系统管理员的一种特殊权限，管理员在特定的情况下，可以对数据库进行维护操作，包括制订数据备份计划、数据结构的修改、业务流程的修改等，这类操作必须具备严格的限度控制，必须保留全部修改日志，便于监督追踪。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	<a name=\"_Toc293411157\"></a>（<span>6</span>）日志管理模块。包括用户日志和系统日志。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	用户日志管理主要是系统自动记录所有进入系统用户的信息资料，包括记录操作用户的编号、姓名、进入时间、操作电脑<span>IP</span>等。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	系统操作日志管理主要是系统自动管理进行过业务处理的日志信息，主要记录用户编号、姓名、进入时间、业务模块操作动作（增加、删除、修改、查询、下载、上传等），授权用户也可以进看系统日志，并可以对日志及统计进行分析、研究。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:26.25pt;\">\r\n	<a name=\"_Toc293411160\"></a>（<span>7</span>）消息管理模块。消息中心是系统内用户互发和收取信息的消息交换枢纽中心，是用户在系统内交流的平台。通过定制的方式实现短信、邮件、文件、文字等信息载体的传送，也可为客户定制向移动设备发送短信功能。主要功能有短信消息管理、论坛、通知公告和系统信息。同时消息中心提供窗口人员评测功能，通过对评测主题的管理，可以让内部人员互相评测，然后在对这些评测数据进行统计、分析和展示。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>①手机短信。</b>系统可动态配置短信接口，实现与短信系统的对接，通过短信平台传递立案信息、执法环节信息、结果信息、预警提示等信息，及时通过短信方式反馈给业务人员和相关用户。并可保存信息日志，供管理人员调阅。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信系统可与现有软件平台各应用系统、网站和其他第三方系统无缝对接。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  系统支持中国移动<span>CMPP</span>、中国联通<span>SGIP</span>、中国电信<span>SM</span>Ｇ<span>P</span>等多种短信接入协议，后台守护进程<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	方式工作，支持<span>HTTP</span>、<span>WebService</span>和数据共享三种接口方式。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信提醒功能。重要信息、事务提醒，节假日祝福，预设日程通知，系统群发与自动回复。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信自动发送，支持号段、群组群发，实时或定时发送。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  通讯录分组管理，支持文件导入联系人功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持超长短信发送和短信自动分割功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持自动回复功能，可定制短信自动回复代码及内容，并支持动态回复扩展功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持按角色分配用户权限，支持对短信发送的灵活权限控制，支持短信发送审核管理。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  系统提供强大的查询统计及分析功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信处理能力双向最高可达<span>300</span>条<span>/</span>秒，忙时不低于<span>100</span>条<span>/</span>秒，消息丢失率小于<span>0.01%</span>，平均运<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	行无故障时间大于<span>99.6%</span>。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>②论坛<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	论坛系统是一个信息交流的平台，为广大用户提供分享经验、探讨问题的网上社区。系统提供会员注册、发表及回复帖子、浏览帖子等前台功能<span>,</span>同时也为论坛的管理人员提供对应后台的管理功能，包括会员管理、论坛版块管理、帖子管理等功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  注册管理：能够对用户名，密码的简单验证，能够防止利用页面刷新重复注册，已经存在的用户<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	名称不能重复注册。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  浏览帖子：可以根据作者或内容等为关键字搜索帖子，分论坛版块显示帖子，显示帖子详情，浏<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	览帖子时不要求用户登录，但回复帖子前用户必须登录。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  发表及回复帖子：只有登录用户才可以发表和回复帖子，并且对帖子的字数有限制。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户个人信息管理：登录用户可以编辑注册后的个人资料，如修改密码等，但是不可以修改用户<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	名称。也可以对自己发表的帖子进行操作：如修改，删除。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  回复管理：各论坛版块的版主可以对自己管理的版块的帖子的回复的帖子进行管理，可以屏蔽回<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	复。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  论坛版块管理：只有管理员有该权限，管理员可以添加，删除版块，也可以修改版块资料，如版<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	块名称、上级版块、版主等。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户管理：只有管理员有该权限，管理员可以禁用，启用用户，进行用户密码重置。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  公告管理：只有管理员有该权限，管理员可以添加，删除公告。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  帖子管理：各论坛版块的版主可以对自己管理的版块的帖子进行管理，可以屏蔽和删除帖子。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>③消息公告<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	消息公告，即消息公告的传达处理系统，目的是为了让用户获得需要得到的消息（通知公告、待办业务、活动安排等）及提醒并进行处理，代替日常普通纸质文件的下发和处理，提高工作效率，节省时间和资源。系统提供网页在线图文编辑、表格处理、附件上传等功能，并提供对消息公告分类管理的功能。用户登录系统时，如果有新的消息公告，会弹出一个提示框，显示系统消息条数，点击后可以查看消息公告内容。<span></span> \r\n</p>', '2147483647', '1', '1', '1414487118605', '1', '1417155895930');

-- ----------------------------
-- Table structure for `cms_notice_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_notice_type`;
CREATE TABLE `cms_notice_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_notice_type
-- ----------------------------
INSERT INTO `cms_notice_type` VALUES ('1', '内部通知', '0', '0', '1', '1', '1414486602560', '1', '1414486602560');
INSERT INTO `cms_notice_type` VALUES ('2', '紧急通知', '1', '0', '1', '1', '1414486632933', '1', '1414486632933');
INSERT INTO `cms_notice_type` VALUES ('3', '日常文件', '1', '0', '1', '1', '1414486646337', '1', '1414486646337');

-- ----------------------------
-- Table structure for `cms_organize`
-- ----------------------------
DROP TABLE IF EXISTS `cms_organize`;
CREATE TABLE `cms_organize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` text,
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_organize
-- ----------------------------
INSERT INTO `cms_organize` VALUES ('1', '灰鸦社区', '0', '0', '1', '', '1', '1414474261923', '1', '1414474261923');
INSERT INTO `cms_organize` VALUES ('2', '爱好者', '1', '0', '1', '', '1', '1414474376538', '1', '1414474376538');
INSERT INTO `cms_organize` VALUES ('3', '精英汇', '1', '0', '1', '', '1', '1414474386308', '1', '1414474386308');
INSERT INTO `cms_organize` VALUES ('4', '开发者', '1', '0', '1', '', '1', '1414474397820', '1', '1414474397820');
INSERT INTO `cms_organize` VALUES ('5', '创业者', '1', '0', '1', '', '1', '1414474404000', '1', '1414474404000');
INSERT INTO `cms_organize` VALUES ('6', '研发组', '1', '0', '1', '', '1', '1414474411804', '1', '1414474411804');

-- ----------------------------
-- Table structure for `cms_partner`
-- ----------------------------
DROP TABLE IF EXISTS `cms_partner`;
CREATE TABLE `cms_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `goal` varchar(8) NOT NULL DEFAULT '',
  `url` tinytext,
  `description` tinytext,
  `logo` tinytext,
  `remark` text,
  `logo_enable` tinyint(4) NOT NULL DEFAULT '0',
  `title_enable` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_partner
-- ----------------------------
INSERT INTO `cms_partner` VALUES ('1', '灰鸦社区', '3', '_blank', 'http://www.iisquare.com/', '', '', '', '0', '0', '1', '1', '1', '1414487118605', '1', '1417246488064');

-- ----------------------------
-- Table structure for `cms_partner_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_partner_type`;
CREATE TABLE `cms_partner_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_partner_type
-- ----------------------------
INSERT INTO `cms_partner_type` VALUES ('1', '默认分类', '0', '0', '1', '1', '1414486602560', '1', '1415329264823');
INSERT INTO `cms_partner_type` VALUES ('2', '友情链接', '1', '0', '1', '1', '1414486632933', '1', '1415329280384');
INSERT INTO `cms_partner_type` VALUES ('3', '合作伙伴', '1', '0', '1', '1', '1414486646337', '1', '1415329289720');

-- ----------------------------
-- Table structure for `cms_resource`
-- ----------------------------
DROP TABLE IF EXISTS `cms_resource`;
CREATE TABLE `cms_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `refer_id` int(11) NOT NULL DEFAULT '0',
  `menu_list_enable` tinyint(4) NOT NULL DEFAULT '0',
  `menu_pick_enable` tinyint(4) NOT NULL DEFAULT '0',
  `module` varchar(64) NOT NULL DEFAULT '',
  `controller` varchar(64) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_resource
-- ----------------------------
INSERT INTO `cms_resource` VALUES ('1', '基础模块', '0', '0', '1', '0', 'base', '', '', '0', '0', '1', '1414399426157', '1', '1414399426157');
INSERT INTO `cms_resource` VALUES ('2', '数据库管理', '1', '0', '1', '0', 'base', 'database', '', '0', '0', '1', '1414400830252', '1', '1414400830252');
INSERT INTO `cms_resource` VALUES ('3', '操作面板', '2', '0', '1', '1', 'base', 'database', 'layout', '0', '0', '1', '1414400894225', '1', '1414400894225');
INSERT INTO `cms_resource` VALUES ('4', '信息列表', '2', '0', '0', '0', 'base', 'database', 'list', '0', '0', '1', '1414400944169', '1', '1414400944169');
INSERT INTO `cms_resource` VALUES ('5', '数据备份', '2', '0', '0', '0', 'base', 'database', 'backup', '0', '0', '1', '1414400966217', '1', '1414400966217');
INSERT INTO `cms_resource` VALUES ('6', '数据还原', '2', '0', '0', '0', 'base', 'database', 'revert', '0', '0', '1', '1414400983956', '1', '1414400983956');
INSERT INTO `cms_resource` VALUES ('7', '删除备份', '2', '0', '0', '0', 'base', 'database', 'delete', '0', '0', '1', '1414401003781', '1', '1414401003781');
INSERT INTO `cms_resource` VALUES ('8', '职务管理', '1', '0', '1', '0', 'base', 'duty', '', '0', '0', '1', '1414401485227', '1', '1414401485227');
INSERT INTO `cms_resource` VALUES ('9', '信息面板', '8', '0', '1', '1', 'base', 'duty', 'layout', '0', '0', '1', '1414401511673', '1', '1414401633197');
INSERT INTO `cms_resource` VALUES ('10', '信息列表', '8', '0', '0', '0', 'base', 'duty', 'list', '0', '0', '1', '1414401527117', '1', '1414401642141');
INSERT INTO `cms_resource` VALUES ('11', '信息查看', '8', '0', '0', '0', 'base', 'duty', 'show', '0', '0', '1', '1414401544398', '1', '1414401652724');
INSERT INTO `cms_resource` VALUES ('12', '信息编辑', '8', '0', '0', '0', 'base', 'duty', 'edit', '0', '0', '1', '1414401558454', '1', '1414401619629');
INSERT INTO `cms_resource` VALUES ('13', '信息保存', '8', '12', '0', '0', 'base', 'duty', 'save', '0', '0', '1', '1414401721807', '1', '1414401721807');
INSERT INTO `cms_resource` VALUES ('14', '信息删除', '8', '0', '0', '0', 'base', 'duty', 'delete', '0', '0', '1', '1414401780062', '1', '1414401780062');
INSERT INTO `cms_resource` VALUES ('15', '图标管理', '1', '0', '1', '0', 'base', 'icon', '', '0', '0', '1', '1414401979277', '1', '1414401979277');
INSERT INTO `cms_resource` VALUES ('16', '信息面板', '15', '0', '1', '1', 'base', 'icon', 'layout', '0', '0', '1', '1414402032626', '1', '1414402032626');
INSERT INTO `cms_resource` VALUES ('17', '信息列表', '15', '0', '0', '0', 'base', 'icon', 'list', '0', '0', '1', '1414402095471', '1', '1414402095471');
INSERT INTO `cms_resource` VALUES ('18', '信息查看', '15', '0', '0', '0', 'base', 'icon', 'show', '0', '0', '1', '1414402108019', '1', '1414402108019');
INSERT INTO `cms_resource` VALUES ('19', '信息编辑', '15', '0', '0', '0', 'base', 'icon', 'edit', '0', '0', '1', '1414402124092', '1', '1414402124092');
INSERT INTO `cms_resource` VALUES ('20', '信息保存', '15', '19', '0', '0', 'base', 'icon', 'save', '0', '0', '1', '1414402130741', '1', '1414402197958');
INSERT INTO `cms_resource` VALUES ('21', '信息删除', '15', '0', '0', '0', 'base', 'icon', 'delete', '0', '0', '1', '1414402142717', '1', '1414402142717');
INSERT INTO `cms_resource` VALUES ('22', '生成样式', '15', '0', '0', '0', 'base', 'icon', 'renderCss', '0', '0', '1', '1414402164263', '1', '1414551163891');
INSERT INTO `cms_resource` VALUES ('23', '日志管理', '1', '0', '1', '0', 'base', 'log', '', '0', '0', '1', '1414402272986', '1', '1414402272986');
INSERT INTO `cms_resource` VALUES ('24', '信息面板', '23', '0', '1', '1', 'base', 'log', 'layout', '0', '0', '1', '1414402296886', '1', '1414402296886');
INSERT INTO `cms_resource` VALUES ('25', '信息列表', '23', '0', '0', '0', 'base', 'log', 'list', '0', '0', '1', '1414402322140', '1', '1414402322140');
INSERT INTO `cms_resource` VALUES ('26', '信息查看', '23', '0', '0', '0', 'base', 'log', 'show', '0', '0', '1', '1414402336315', '1', '1414402336315');
INSERT INTO `cms_resource` VALUES ('27', '信息删除', '23', '0', '0', '0', 'base', 'log', 'delete', '0', '0', '1', '1414402343369', '1', '1414402343369');
INSERT INTO `cms_resource` VALUES ('28', '清空日志', '23', '0', '0', '0', 'base', 'log', 'truncate', '0', '0', '1', '1414402362954', '1', '1414402362954');
INSERT INTO `cms_resource` VALUES ('29', '配置编辑', '23', '0', '0', '0', 'base', 'log', 'editSetting', '0', '0', '1', '1414402405746', '1', '1414402405746');
INSERT INTO `cms_resource` VALUES ('30', '配置保存', '23', '29', '0', '0', 'base', 'log', 'saveSetting', '0', '0', '1', '1414402433522', '1', '1414402433522');
INSERT INTO `cms_resource` VALUES ('31', '用户管理', '1', '0', '1', '0', 'base', 'member', '', '0', '0', '1', '1414402491921', '1', '1414402491921');
INSERT INTO `cms_resource` VALUES ('32', '个人信息查看', '31', '0', '1', '1', 'base', 'member', 'showSelf', '0', '0', '1', '1414402546818', '1', '1414402546818');
INSERT INTO `cms_resource` VALUES ('33', '个人信息编辑', '31', '0', '0', '0', 'base', 'member', 'editSelf', '0', '0', '1', '1414402562703', '1', '1414473532137');
INSERT INTO `cms_resource` VALUES ('34', '个人信息保存', '31', '33', '0', '0', 'base', 'member', 'saveSelf', '0', '0', '1', '1414402605681', '1', '1414402605681');
INSERT INTO `cms_resource` VALUES ('35', '密码修改', '31', '0', '1', '1', 'base', 'member', 'editPassword', '0', '0', '1', '1414402625112', '1', '1414402625112');
INSERT INTO `cms_resource` VALUES ('36', '密码保存', '31', '35', '0', '0', 'base', 'member', 'savePassword', '0', '0', '1', '1414402660355', '1', '1414402660355');
INSERT INTO `cms_resource` VALUES ('37', '信息面板', '31', '0', '1', '1', 'base', 'member', 'layout', '0', '0', '1', '1414402685905', '1', '1414402685905');
INSERT INTO `cms_resource` VALUES ('38', '信息列表', '31', '0', '0', '0', 'base', 'member', 'list', '0', '0', '1', '1414402697030', '1', '1414402697030');
INSERT INTO `cms_resource` VALUES ('39', '信息查看', '31', '0', '0', '0', 'base', 'member', 'show', '0', '0', '1', '1414402706006', '1', '1414402706006');
INSERT INTO `cms_resource` VALUES ('40', '信息编辑', '31', '0', '0', '0', 'base', 'member', 'edit', '0', '0', '1', '1414402713165', '1', '1414402713165');
INSERT INTO `cms_resource` VALUES ('41', '信息保存', '31', '40', '0', '0', 'base', 'member', 'save', '0', '0', '1', '1414402744183', '1', '1414402744183');
INSERT INTO `cms_resource` VALUES ('42', '信息删除', '31', '0', '0', '0', 'base', 'member', 'delete', '0', '0', '1', '1414403375177', '1', '1414403375177');
INSERT INTO `cms_resource` VALUES ('43', '用户登录', '31', '0', '0', '0', 'base', 'member', 'login', '0', '-1', '1', '1414403427001', '1', '1414403427001');
INSERT INTO `cms_resource` VALUES ('44', '登录操作', '31', '43', '0', '0', 'base', 'member', 'logon', '0', '-1', '1', '1414403482207', '1', '1414403546406');
INSERT INTO `cms_resource` VALUES ('45', '退出登录', '31', '0', '1', '1', 'base', 'member', 'logout', '0', '-1', '1', '1414403504054', '1', '1414473548347');
INSERT INTO `cms_resource` VALUES ('46', '管理面板', '31', '0', '0', '0', 'base', 'member', 'platform', '0', '0', '1', '1414403576300', '1', '1414473555796');
INSERT INTO `cms_resource` VALUES ('47', '菜单管理', '1', '0', '1', '0', 'base', 'menu', '', '0', '0', '1', '1414403891391', '1', '1414403891391');
INSERT INTO `cms_resource` VALUES ('48', '信息面板', '47', '0', '1', '1', 'base', 'menu', 'layout', '0', '0', '1', '1414404306214', '1', '1414404306214');
INSERT INTO `cms_resource` VALUES ('49', '信息列表', '47', '0', '0', '0', 'base', 'menu', 'list', '0', '0', '1', '1414404314895', '1', '1414404314895');
INSERT INTO `cms_resource` VALUES ('50', '信息查看', '47', '0', '0', '0', 'base', 'menu', 'show', '0', '0', '1', '1414404329289', '1', '1414404329289');
INSERT INTO `cms_resource` VALUES ('51', '信息编辑', '47', '0', '0', '0', 'base', 'menu', 'edit', '0', '0', '1', '1414404336445', '1', '1414404336445');
INSERT INTO `cms_resource` VALUES ('52', '信息保存', '47', '51', '0', '0', 'base', 'menu', 'save', '0', '0', '1', '1414404365813', '1', '1414404365813');
INSERT INTO `cms_resource` VALUES ('53', '信息删除', '47', '0', '0', '0', 'base', 'menu', 'delete', '0', '0', '1', '1414404376789', '1', '1414404376789');
INSERT INTO `cms_resource` VALUES ('54', '个人菜单', '47', '0', '0', '0', 'base', 'menu', 'listSelf', '0', '0', '1', '1414404413958', '1', '1414404413958');
INSERT INTO `cms_resource` VALUES ('55', '通知公告管理', '1', '0', '1', '0', 'base', 'notice', '', '0', '0', '1', '1414404457696', '1', '1414404457696');
INSERT INTO `cms_resource` VALUES ('56', '信息面板', '55', '0', '1', '1', 'base', 'notice', 'layout', '0', '0', '1', '1414458698435', '1', '1414458698435');
INSERT INTO `cms_resource` VALUES ('57', '信息列表', '55', '0', '0', '0', 'base', 'notice', 'list', '0', '0', '1', '1414458711121', '1', '1414458711121');
INSERT INTO `cms_resource` VALUES ('58', '信息编辑', '55', '0', '0', '0', 'base', 'notice', 'edit', '0', '0', '1', '1414458719499', '1', '1414458719499');
INSERT INTO `cms_resource` VALUES ('59', '信息保存', '55', '58', '0', '0', 'base', 'notice', 'save', '0', '0', '1', '1414458764845', '1', '1414458764845');
INSERT INTO `cms_resource` VALUES ('60', '信息查看', '55', '0', '0', '0', 'base', 'notice', 'show', '0', '0', '1', '1414458774570', '1', '1414458774570');
INSERT INTO `cms_resource` VALUES ('61', '信息删除', '55', '0', '0', '0', 'base', 'notice', 'delete', '0', '0', '1', '1414458782864', '1', '1414458782864');
INSERT INTO `cms_resource` VALUES ('62', '通知公告类型管理', '1', '0', '1', '0', 'base', 'noticeType', '', '0', '0', '1', '1414458831505', '1', '1414458866683');
INSERT INTO `cms_resource` VALUES ('63', '信息面板', '62', '0', '1', '1', 'base', 'noticeType', 'layout', '0', '0', '1', '1414458956167', '1', '1414458956167');
INSERT INTO `cms_resource` VALUES ('64', '信息列表', '62', '0', '0', '0', 'base', 'noticeType', 'list', '0', '0', '1', '1414458969335', '1', '1414458969335');
INSERT INTO `cms_resource` VALUES ('65', '信息查看', '62', '0', '0', '0', 'base', 'noticeType', 'show', '0', '0', '1', '1414458977059', '1', '1414458977059');
INSERT INTO `cms_resource` VALUES ('66', '信息编辑', '62', '0', '0', '0', 'base', 'noticeType', 'edit', '0', '0', '1', '1414458985130', '1', '1414458985130');
INSERT INTO `cms_resource` VALUES ('67', '信息保存', '62', '66', '0', '0', 'base', 'noticeType', 'save', '0', '0', '1', '1414459034444', '1', '1414459034444');
INSERT INTO `cms_resource` VALUES ('68', '信息删除', '62', '0', '0', '0', 'base', 'noticeType', 'delete', '0', '0', '1', '1414459045022', '1', '1414459045022');
INSERT INTO `cms_resource` VALUES ('69', '组织机构管理', '1', '0', '1', '0', 'base', 'organize', '', '0', '0', '1', '1414459082278', '1', '1414459082278');
INSERT INTO `cms_resource` VALUES ('70', '信息面板', '69', '0', '1', '1', 'base', 'organize', 'layout', '0', '0', '1', '1414459163148', '1', '1414459163148');
INSERT INTO `cms_resource` VALUES ('71', '信息列表', '69', '0', '0', '0', 'base', 'organize', 'list', '0', '0', '1', '1414459173404', '1', '1414459173404');
INSERT INTO `cms_resource` VALUES ('72', '信息查看', '69', '0', '0', '0', 'base', 'organize', 'show', '0', '0', '1', '1414459180245', '1', '1414459180245');
INSERT INTO `cms_resource` VALUES ('73', '信息编辑', '69', '0', '0', '0', 'base', 'organize', 'edit', '0', '0', '1', '1414459197236', '1', '1414459197236');
INSERT INTO `cms_resource` VALUES ('74', '信息保存', '69', '73', '0', '0', 'base', 'organize', 'save', '0', '0', '1', '1414459205962', '1', '1414459327553');
INSERT INTO `cms_resource` VALUES ('75', '信息删除', '69', '0', '0', '0', 'base', 'organize', 'delete', '0', '0', '1', '1414459220682', '1', '1414459220682');
INSERT INTO `cms_resource` VALUES ('76', '资源管理', '1', '0', '1', '0', 'base', 'resource', '', '0', '0', '1', '1414459522076', '1', '1414459522076');
INSERT INTO `cms_resource` VALUES ('77', '信息面板', '76', '0', '1', '1', 'base', 'resource', 'layout', '0', '0', '1', '1414459567488', '1', '1414459567488');
INSERT INTO `cms_resource` VALUES ('78', '信息列表', '76', '0', '0', '0', 'base', 'resource', 'list', '0', '0', '1', '1414459579421', '1', '1414459579421');
INSERT INTO `cms_resource` VALUES ('79', '信息查看', '76', '0', '0', '0', 'base', 'resource', 'show', '0', '0', '1', '1414459586669', '1', '1414459586669');
INSERT INTO `cms_resource` VALUES ('80', '信息编辑', '76', '0', '0', '0', 'base', 'resource', 'edit', '0', '0', '1', '1414459594366', '1', '1414459594366');
INSERT INTO `cms_resource` VALUES ('81', '信息保存', '76', '80', '0', '0', 'base', 'resource', 'save', '0', '0', '1', '1414459640744', '1', '1414459640744');
INSERT INTO `cms_resource` VALUES ('82', '信息删除', '76', '0', '0', '0', 'base', 'resource', 'delete', '0', '0', '1', '1414459653125', '1', '1414459653125');
INSERT INTO `cms_resource` VALUES ('83', '角色管理', '1', '0', '1', '0', 'base', 'role', '', '0', '0', '1', '1414459694481', '1', '1414459694481');
INSERT INTO `cms_resource` VALUES ('84', '信息面板', '83', '0', '1', '1', 'base', 'role', 'layout', '0', '0', '1', '1414459717821', '1', '1414459717821');
INSERT INTO `cms_resource` VALUES ('85', '信息列表', '83', '0', '0', '0', 'base', 'role', 'list', '0', '0', '1', '1414459726982', '1', '1414459726982');
INSERT INTO `cms_resource` VALUES ('86', '信息查看', '83', '0', '0', '0', 'base', 'role', 'show', '0', '0', '1', '1414459733953', '1', '1414459733953');
INSERT INTO `cms_resource` VALUES ('87', '信息编辑', '83', '0', '0', '0', 'base', 'role', 'edit', '0', '0', '1', '1414459745612', '1', '1414459745612');
INSERT INTO `cms_resource` VALUES ('88', '信息保存', '83', '87', '0', '0', 'base', 'role', 'save', '0', '0', '1', '1414459804648', '1', '1414459804648');
INSERT INTO `cms_resource` VALUES ('89', '信息删除', '83', '0', '0', '0', 'base', 'role', 'delete', '0', '0', '1', '1414459817120', '1', '1414459817120');
INSERT INTO `cms_resource` VALUES ('90', '权限菜单编辑', '83', '0', '0', '0', 'base', 'role', 'editPower', '0', '0', '1', '1414459831534', '1', '1414459831534');
INSERT INTO `cms_resource` VALUES ('91', '权限菜单保存', '83', '90', '0', '0', 'base', 'role', 'savePower', '0', '0', '1', '1414459850875', '1', '1414459850875');
INSERT INTO `cms_resource` VALUES ('92', '服务器信息管理', '1', '0', '1', '0', 'base', 'server', '', '0', '0', '1', '1414459880216', '1', '1414459880216');
INSERT INTO `cms_resource` VALUES ('93', '环境状态', '92', '0', '1', '1', 'base', 'server', 'info', '0', '0', '1', '1414460037057', '1', '1414460037057');
INSERT INTO `cms_resource` VALUES ('94', '配置管理', '1', '0', '1', '0', 'base', 'setting', '', '0', '0', '1', '1414460066587', '1', '1414460066587');
INSERT INTO `cms_resource` VALUES ('95', '信息面板', '94', '0', '1', '1', 'base', 'setting', 'layout', '0', '0', '1', '1414460091787', '1', '1414460091787');
INSERT INTO `cms_resource` VALUES ('96', '信息列表', '94', '0', '0', '0', 'base', 'setting', 'list', '0', '0', '1', '1414460100457', '1', '1414460100457');
INSERT INTO `cms_resource` VALUES ('97', '信息查看', '94', '0', '0', '0', 'base', 'setting', 'show', '0', '0', '1', '1414460108513', '1', '1414460108513');
INSERT INTO `cms_resource` VALUES ('98', '信息编辑', '94', '0', '0', '0', 'base', 'setting', 'edit', '0', '0', '1', '1414460118136', '1', '1414546404335');
INSERT INTO `cms_resource` VALUES ('99', '信息保存', '94', '98', '0', '0', 'base', 'setting', 'save', '0', '0', '1', '1414460130225', '1', '1414460130225');
INSERT INTO `cms_resource` VALUES ('100', '信息删除', '94', '0', '0', '0', 'base', 'setting', 'delete', '0', '0', '1', '1414460141657', '1', '1414460141657');
INSERT INTO `cms_resource` VALUES ('101', '上传文件管理', '1', '0', '1', '0', 'base', 'upload', '', '0', '0', '1', '1414460183474', '1', '1414460183474');
INSERT INTO `cms_resource` VALUES ('102', '信息面板', '101', '0', '1', '1', 'base', 'upload', 'layout', '0', '0', '1', '1414460205524', '1', '1414460205524');
INSERT INTO `cms_resource` VALUES ('103', '信息列表', '101', '0', '0', '0', 'base', 'upload', 'list', '0', '0', '1', '1414460215464', '1', '1414460215464');
INSERT INTO `cms_resource` VALUES ('104', '信息删除', '101', '0', '0', '0', 'base', 'upload', 'delete', '0', '0', '1', '1414460231081', '1', '1414460231081');
INSERT INTO `cms_resource` VALUES ('105', '允许上传', '101', '0', '0', '0', 'base', 'upload', 'uploadJson', '0', '0', '1', '1414460281712', '1', '1414460281712');
INSERT INTO `cms_resource` VALUES ('106', '允许浏览', '101', '0', '0', '0', 'base', 'upload', 'fileManagerJson', '0', '0', '1', '1414460315927', '1', '1414460315927');
INSERT INTO `cms_resource` VALUES ('107', '编辑器示例', '101', '0', '1', '1', 'base', 'upload', 'editor', '0', '0', '1', '1414460341793', '1', '1414460341793');
INSERT INTO `cms_resource` VALUES ('108', '管理首页', '1', '0', '0', '0', 'base', 'index', '', '0', '0', '1', '1414482115257', '1', '1414482192308');
INSERT INTO `cms_resource` VALUES ('109', '任务面板', '108', '0', '0', '0', 'base', 'index', 'task', '0', '0', '1', '1414482176022', '1', '1414482176022');
INSERT INTO `cms_resource` VALUES ('110', '登陆日志', '23', '46', '0', '0', 'base', 'log', 'listLogon', '0', '0', '1', '1414489656476', '1', '1414489656476');
INSERT INTO `cms_resource` VALUES ('111', '首页列表', '55', '46', '0', '0', 'base', 'notice', 'listIndex', '0', '0', '1', '1414489700812', '1', '1414489700812');
INSERT INTO `cms_resource` VALUES ('112', '信息阅读', '55', '46', '0', '0', 'base', 'notice', 'read', '0', '0', '1', '1414489714899', '1', '1414489714899');
INSERT INTO `cms_resource` VALUES ('113', '访客模式', '31', '0', '1', '1', 'base', 'member', 'guest', '0', '-1', '1', '1414546177437', '1', '1414546177437');

-- ----------------------------
-- Table structure for `cms_role`
-- ----------------------------
DROP TABLE IF EXISTS `cms_role`;
CREATE TABLE `cms_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` text,
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role
-- ----------------------------
INSERT INTO `cms_role` VALUES ('1', '系统管理员', '0', '0', '1', '', '1', '1414475359109', '1', '1414475359109');
INSERT INTO `cms_role` VALUES ('2', '超级管理员', '1', '0', '1', '', '1', '1414475820669', '1', '1414475820669');
INSERT INTO `cms_role` VALUES ('3', '普通管理员', '1', '0', '1', '', '1', '1414475827975', '1', '1414475827975');
INSERT INTO `cms_role` VALUES ('4', '普通用户组', '0', '0', '1', '', '1', '1414475854203', '1', '1414475854203');
INSERT INTO `cms_role` VALUES ('5', '游客', '4', '0', '1', '', '1', '1414475889347', '1', '1414475889347');

-- ----------------------------
-- Table structure for `cms_role_column_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_column_rel`;
CREATE TABLE `cms_role_column_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `column_id` int(11) NOT NULL DEFAULT '0',
  `list_enable` tinyint(4) NOT NULL DEFAULT '0',
  `publish_enable` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role_column_rel
-- ----------------------------
INSERT INTO `cms_role_column_rel` VALUES ('1', '2', '1', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('2', '2', '4', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('3', '2', '2', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('4', '2', '3', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('5', '2', '10', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('6', '2', '11', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('7', '2', '12', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('8', '2', '13', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('9', '2', '14', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('10', '2', '15', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('11', '2', '16', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('12', '2', '5', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('13', '2', '6', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('14', '2', '7', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('15', '2', '8', '1', '1');
INSERT INTO `cms_role_column_rel` VALUES ('16', '2', '9', '1', '1');

-- ----------------------------
-- Table structure for `cms_role_menu_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_menu_rel`;
CREATE TABLE `cms_role_menu_rel` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role_menu_rel
-- ----------------------------
INSERT INTO `cms_role_menu_rel` VALUES ('2', '2');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '3');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '4');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '5');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '6');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '7');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '8');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '9');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '10');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '11');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '12');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '13');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '14');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '15');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '16');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '17');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '18');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '19');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '20');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '21');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '2');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '3');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '4');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '5');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '6');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '7');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '8');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '9');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '10');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '11');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '12');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '13');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '14');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '15');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '16');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '17');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '18');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '19');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '20');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '21');

-- ----------------------------
-- Table structure for `cms_role_resource_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_resource_rel`;
CREATE TABLE `cms_role_resource_rel` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `resource_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role_resource_rel
-- ----------------------------
INSERT INTO `cms_role_resource_rel` VALUES ('2', '1');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '2');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '3');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '4');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '5');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '6');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '7');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '8');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '9');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '10');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '11');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '12');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '14');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '15');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '16');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '17');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '18');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '19');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '21');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '22');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '23');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '24');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '25');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '26');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '27');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '28');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '29');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '31');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '32');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '33');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '35');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '37');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '38');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '39');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '40');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '42');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '43');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '45');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '46');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '47');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '48');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '49');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '50');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '51');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '53');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '54');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '55');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '56');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '57');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '58');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '60');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '61');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '62');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '63');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '64');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '65');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '66');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '68');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '69');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '70');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '71');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '72');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '73');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '75');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '76');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '77');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '78');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '79');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '80');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '82');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '83');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '84');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '85');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '86');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '87');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '89');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '90');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '92');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '93');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '94');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '95');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '96');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '97');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '98');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '100');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '101');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '102');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '103');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '104');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '105');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '106');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '107');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '108');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '109');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '1');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '2');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '3');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '4');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '8');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '9');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '10');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '11');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '15');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '16');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '17');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '18');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '23');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '24');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '25');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '26');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '31');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '32');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '35');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '37');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '38');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '39');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '43');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '45');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '46');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '47');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '48');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '49');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '50');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '54');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '55');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '56');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '57');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '60');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '62');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '63');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '64');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '65');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '69');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '70');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '71');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '72');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '76');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '77');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '78');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '79');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '83');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '84');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '85');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '86');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '92');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '93');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '94');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '95');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '96');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '97');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '101');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '102');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '103');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '106');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '107');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '108');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '109');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '113');

-- ----------------------------
-- Table structure for `cms_setting`
-- ----------------------------
DROP TABLE IF EXISTS `cms_setting`;
CREATE TABLE `cms_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `content` tinytext,
  `remark` tinytext,
  `operate_id` int(11) NOT NULL DEFAULT '0',
  `operate_ip` varchar(64) NOT NULL DEFAULT '',
  `operate_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_setting
-- ----------------------------
INSERT INTO `cms_setting` VALUES ('1', 'webName', 'system', '内容管理系统', '系统名称', '1', '127.0.0.1', '1414641138607');
INSERT INTO `cms_setting` VALUES ('2', 'pageSize', 'system', '15', '分页大小', '1', '127.0.0.1', '1413018859640');
INSERT INTO `cms_setting` VALUES ('3', 'guestSerial', 'system', 'guest', '访客模式账号', '1', '127.0.0.1', '1414549233193');
INSERT INTO `cms_setting` VALUES ('4', 'title', 'web', 'Jees-CMS演示站', '网站标题', '1', '127.0.0.1', '1416212352748');
INSERT INTO `cms_setting` VALUES ('5', 'keywords', 'web', 'java,j2ee,cms,开源,免费,jees', '网站关键词', '1', '127.0.0.1', '1416212342872');
INSERT INTO `cms_setting` VALUES ('6', 'description', 'web', 'Jees-CMS演示站', '网站描述', '1', '127.0.0.1', '1416212334431');
INSERT INTO `cms_setting` VALUES ('7', 'loginEnable', 'web', '1', '是否开启登陆', '1', '127.0.0.1', '1416212324752');
INSERT INTO `cms_setting` VALUES ('8', 'registerEnable', 'web', '1', '是否开启注册', '1', '127.0.0.1', '1416212315472');
INSERT INTO `cms_setting` VALUES ('9', 'noteEnable', 'web', '1', '是否开启在线留言', '1', '127.0.0.1', '1416212307380');
INSERT INTO `cms_setting` VALUES ('10', 'commentEnable', 'web', '1', '是否开启文章评论（全局）', '1', '127.0.0.1', '1416212298435');
INSERT INTO `cms_setting` VALUES ('11', 'feedbackEnable', 'web', '1', '是否开启文章投诉举报', '1', '127.0.0.1', '1416212280762');
INSERT INTO `cms_setting` VALUES ('12', 'partnerEnable', 'web', '1', '是否开启友情链接申请', '1', '127.0.0.1', '1416212271324');

-- ----------------------------
-- Table structure for `cms_upload`
-- ----------------------------
DROP TABLE IF EXISTS `cms_upload`;
CREATE TABLE `cms_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `uri` tinytext,
  `operate_id` int(11) NOT NULL DEFAULT '0',
  `operate_ip` varchar(64) NOT NULL DEFAULT '',
  `operate_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_upload
-- ----------------------------
INSERT INTO `cms_upload` VALUES ('1', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141106/1415259339800.jpg', '1', '127.0.0.1', '1415259339800');
INSERT INTO `cms_upload` VALUES ('2', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141106/1415259381308.jpg', '1', '127.0.0.1', '1415259381308');
INSERT INTO `cms_upload` VALUES ('3', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141106/1415259612925.jpg', '1', '127.0.0.1', '1415259612925');
INSERT INTO `cms_upload` VALUES ('4', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141106/1415259741232.jpg', '1', '127.0.0.1', '1415259741232');
INSERT INTO `cms_upload` VALUES ('5', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141106/1415260460433.jpg', '1', '127.0.0.1', '1415260460433');
INSERT INTO `cms_upload` VALUES ('6', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141106/1415260550436.jpg', '1', '127.0.0.1', '1415260550436');
INSERT INTO `cms_upload` VALUES ('7', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141106/1415263643574.jpg', '1', '127.0.0.1', '1415263643574');
INSERT INTO `cms_upload` VALUES ('8', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141106/1415263818103.jpg', '1', '127.0.0.1', '1415263818103');
INSERT INTO `cms_upload` VALUES ('9', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141107/1415323043289.jpg', '1', '127.0.0.1', '1415323043289');
INSERT INTO `cms_upload` VALUES ('10', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/icon/20141110/1415603200385.jpg', '1', '127.0.0.1', '1415603200385');
INSERT INTO `cms_upload` VALUES ('11', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141110/1415603381022.jpg', '1', '127.0.0.1', '1415603381022');
INSERT INTO `cms_upload` VALUES ('12', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141110/1415603381170.jpg', '1', '127.0.0.1', '1415603381170');
INSERT INTO `cms_upload` VALUES ('13', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141115/1416024512581.jpg', '1', '127.0.0.1', '1416024512581');
INSERT INTO `cms_upload` VALUES ('14', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141115/1416030892024.jpg', '1', '127.0.0.1', '1416030892024');
INSERT INTO `cms_upload` VALUES ('15', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141115/1416034266294.jpg', '1', '127.0.0.1', '1416034266294');
INSERT INTO `cms_upload` VALUES ('16', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141115/1416034272186.jpg', '1', '127.0.0.1', '1416034272186');
INSERT INTO `cms_upload` VALUES ('17', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141115/1416034293316.jpg', '1', '127.0.0.1', '1416034293316');
INSERT INTO `cms_upload` VALUES ('18', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141115/1416034298605.jpg', '1', '127.0.0.1', '1416034298605');
