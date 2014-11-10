/*
Navicat MySQL Data Transfer

Source Server         : GisStore_Dev
Source Server Version : 50532
Source Host           : 127.0.0.1:3306
Source Database       : awesome

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2014-11-10 17:33:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('1', '00141559182807809732d9059784c839e183825ef683153000', 'Test', 'out:blank', '天文学家发现“巨型地球”', '大自然总是会让人捉摸不透。就在我们以为自己不会再因为我们的发现而感到惊奇的时候，最新的发现就让我们大吃了一惊。确切说来，天文学家发现了一类前所未见的行星——“巨型地球”。这颗岩石星球要比我们的地球大得多，也重得多。', '天文学家发现“巨型地球”\r\n\r\n发表于2014年6月8日\r\n\r\n大自然总是会让人捉摸不透。就在我们以为自己不会再因为我们的发现而感到惊奇的时候，最新的发现就让我们大吃了一惊。确切说来，天文学家发现了一类前所未见的行星——“巨型地球（mega Earth）”。这颗岩石星球要比我们的地球大得多，也重得多。\r\n\r\n这颗行星名为开普勒－10c，距离地球大约550光年，实际上是在2011年被人首次发现的。它的发现者使用了“开普勒”空间望远镜，这台望远镜采用凌星法来寻找环绕其他恒星运转的行星。如果我们碰巧从一颗行星公转轨道的侧面去看它，那么它每公转一圈，就会从恒星和我们之间经过一次，遮挡很少的一部分星光。如此一来，这颗行星的轨道周期（也就是那颗行星上的一年）就可以被直接测定（你只要等着看两次遮挡之间间隔多少时间即可），行星的大小也可以测量出来——行星越大，它遮挡的星光就越多。\r\n\r\n人们发现，开普勒－10c的直径大约是地球的2.35倍。他们原先认为，这颗星球足够巨大，应该拥有浓厚的大气层，看上去更像是一颗迷你版的海王星才对。果真如此的话，它的密度就不会太高，毕竟气态巨行星主要是由气体构成的。\r\n\r\n想要测量密度，你就必须测得行星的质量。“开普勒”望远镜所采用的凌星法无法直接测定质量，因此人们一直无法确定这颗行星到底有多重。最近，天文学家使用“北天球高精度径向速度行星搜寻探测器（HARPS-North）”观测了这颗行星，将它的星光分解成了光谱。我们知道，引力的作用是相互的——在行星沿着自己的公转轨道绕着恒星转圈的同时，恒星也在绕着行星转圈，只不过幅度要小得多。这意味着，恒星有时候会靠近地球，有时间又会远离地球。通过测量这种运动带来的多普勒频移信号，天文学家测定了这颗行星的质量。\r\n\r\n正是这个结果，让他们大吃了一惊。这颗行星的质量是地球的17.2倍。这个数字太大了，远远超出2.35倍地球直径的一颗迷你版海王星所应有的质量。这意味着，该行星的密度大约为7.5克/立方厘米，高得让人咂舌——要知道，地球的密度才只有5.5克/立方厘米，而典型的气态巨行星密度仅有1克/立方厘米左右。如此高的密度意味着，这颗行星必定是岩石星球，就像地球这样。\r\n\r\n不过，需要指出的是，开普勒－10c在许多方面跟我们地球其实有着很大的差异。比方说，它表面的重力加速度就是地球的3倍以上。还有，它所围绕的那颗恒星与太阳非常相似，但公转轨道却要比地球离太阳近得多。这颗行星的表面温度可能高达200℃，如果它拥有大气，那温度还会更高。你可以直接在地面上烤巧克力脆片饼干，不过烤出来的饼干会非常扁平。\r\n\r\n顺理提一句，这个系统里还有另外一颗行星存在，即开普勒－10b。它的质量是地球的3倍，直径是地球的1.5倍。这意味着它的密度跟地球非常相似，无疑也是一颗岩石星球。事实上，它是我们人类在太阳系外首次确认的岩石星球，不过它距离自己的“太阳”仅有几百万千米，表面温度超过2000℃！所以，尽管是一颗岩石星球，那里的岩石很可能都被熔成岩浆了。我打赌，那里绝不是一个适合观光的好地方。\r\n\r\n必须要指出的一点是，尽管这一发现称得上惊奇，但并不令人震惊。我的意思是，尽管我们没有预料到这一发现，但是从已经被确认发现的近2000颗外星行星中，我们了解到一件事情——外星行星都是古怪的。好吧，或许我们所处的太阳系才是古怪的，我们之所以认为太阳系很正常，只不过是因为这里是我们的家园。不过，具有讽刺意味着的是，作出预料之外的发现，正是我们在探索新的前沿时，你预期应该会遇到的事情。\r\n\r\n发现第一颗外星行星，不过是20年前的事情。在这一领域，我们依然是初学者。我们才刚刚开始发现惊奇。在茫茫宇宙之中，还有更多古怪之地等着我们去发现。', '1415591828.078');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `blog_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('0010018336417540987fff4508f43fbaed718e263442526000', 'admin@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '1', 'Administrator', '', '1402909113.628');
