/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : yii2_shop

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-03-30 17:11:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '50',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '爱他美', '', '爱他美', '', '50', '1', '1427248346', '1427248346');
INSERT INTO `brand` VALUES ('2', '牛栏', null, '牛栏', null, '50', '1', '1427248346', '1427248346');
INSERT INTO `brand` VALUES ('3', '飞利浦', '', '', '', '50', '1', '1427266554', '1427266554');
INSERT INTO `brand` VALUES ('4', '小米', '', '小米网 卖手机 性价比高', 'http://mi.com', '50', '1', '1459323697', '1459323697');

-- ----------------------------
-- Table structure for `coupon`
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `coupon_type_id` int(11) NOT NULL,
  `money` decimal(10,2) DEFAULT '0.00',
  `min_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `started_at` int(11) NOT NULL,
  `ended_at` int(11) NOT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `used_at` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_fk_1` (`user_id`),
  KEY `coupon_fk_2` (`coupon_type_id`),
  CONSTRAINT `coupon_fk2` FOREIGN KEY (`coupon_type_id`) REFERENCES `coupon_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10000023 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('10000011', '1', '1', '10.00', '100.00', '1425949502', '1435949502', null, '0', '0', '1426039047', '1426039047', '1', '1');
INSERT INTO `coupon` VALUES ('10000012', '4', '1', '10.00', '100.00', '1425949502', '1435949502', null, '40', '1426154778', '1426039047', '1426154778', '1', '4');
INSERT INTO `coupon` VALUES ('10000013', '4', '1', '100.00', '10000.00', '1425949502', '1435949502', null, '0', '0', '1426042246', '1426042246', '1', '1');
INSERT INTO `coupon` VALUES ('10000014', '0', '2', '20.00', '200.00', '1423949502', '1431949502', '0xF9pkRk', '0', '0', '1426042320', '1426042320', '1', '1');
INSERT INTO `coupon` VALUES ('10000015', '0', '2', '20.00', '200.00', '1423949502', '1431949502', 'm0EGgLfk', '0', '0', '1426042320', '1426042320', '1', '1');
INSERT INTO `coupon` VALUES ('10000016', '0', '2', '20.00', '200.00', '1423949502', '1431949502', '-oMfl6DY', '0', '0', '1426042320', '1426042320', '1', '1');
INSERT INTO `coupon` VALUES ('10000017', '0', '2', '20.00', '200.00', '1423949502', '1431949502', 'N5IucCqR', '0', '0', '1426042320', '1426042320', '1', '1');
INSERT INTO `coupon` VALUES ('10000018', '4', '2', '20.00', '200.00', '1423949502', '1431949502', 'aaaaaaaa', '39', '1426154344', '1426042320', '1426154344', '1', '4');
INSERT INTO `coupon` VALUES ('10000019', '1', '3', '30.00', '300.00', '1423949502', '2147483647', null, '0', '0', '1426042388', '1426042388', '1', '1');
INSERT INTO `coupon` VALUES ('10000020', '4', '3', '30.00', '300.00', '1423949502', '2147483647', null, '39', '1426154344', '1426042388', '1426154344', '1', '4');
INSERT INTO `coupon` VALUES ('10000021', '17', '8', '20.00', '500.00', '1454256000', '1462118399', '', '0', '0', '1459326876', '1459328751', '1', '1');
INSERT INTO `coupon` VALUES ('10000022', '17', '8', '10.00', '100.00', '1459267200', '1461167999', '', '0', '0', '1459327021', '1459328694', '1', '1');

-- ----------------------------
-- Table structure for `coupon_type`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_type`;
CREATE TABLE `coupon_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `min_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `type` int(11) NOT NULL DEFAULT '1',
  `started_at` int(11) NOT NULL,
  `ended_at` int(11) NOT NULL,
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon_type
-- ----------------------------
INSERT INTO `coupon_type` VALUES ('1', '用户红包', '10.00', '100.00', '1', '1425949502', '1435949502', '0.00', '1426039017', '1426039017', '1', '1');
INSERT INTO `coupon_type` VALUES ('2', '随机5个', '20.00', '200.00', '4', '1423949502', '1431949502', '0.00', '1426042302', '1426042302', '1', '1');
INSERT INTO `coupon_type` VALUES ('3', '用户30', '30.00', '300.00', '1', '1423949502', '2147483647', '0.00', '1426042374', '1426042374', '1', '1');
INSERT INTO `coupon_type` VALUES ('4', '10', '10.00', '0.00', '1', '2015', '1431949502', '0.00', '1426495961', '1426495961', '1', '1');
INSERT INTO `coupon_type` VALUES ('5', '10', '0.00', '0.00', '1', '1425139200', '1431949502', '0.00', '1426496140', '1426496140', '1', '1');
INSERT INTO `coupon_type` VALUES ('6', '10', '100.00', '500.00', '1', '1427040000', '1427731199', '0.00', '1426496272', '1426496272', '1', '1');
INSERT INTO `coupon_type` VALUES ('7', '国足赢球奖金', '100.00', '200.00', '1', '1459267200', '1459699199', '500.00', '1459324032', '1459324032', '1', '1');
INSERT INTO `coupon_type` VALUES ('8', '测试优惠券', '10.00', '5.00', '4', '1459267200', '1460908799', '20.00', '1459324483', '1459328840', '1', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(11) NOT NULL DEFAULT '0',
  `recommended_by` int(11) NOT NULL DEFAULT '0',
  `recommended_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supported_by` int(11) NOT NULL DEFAULT '1',
  `auth_role` int(11) DEFAULT NULL,
  `role` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `role` (`role`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'bPdqSVmrWdkx-x7_hplXE_Y0Ak9mwdoE', null, null, '$2y$13$nPfitehXdoDuXh54XubLQeoM1K3x7o3FC2cRntMlB5Ek8MxO.Mohq', '', 'admin@demo.com', '0.00', '92', '0', null, '1', '1', 'admin', '1', '1422844005', '1426671417');
INSERT INTO `user` VALUES ('2', 'funson', 'kKhH4ApssxRXV8KMVDIdjWbfLHuZ8QKX', null, null, '$2y$13$mPADph/vUIG99kA1va69AuSdGFPSh41ypRCUKSyNgjFOmqV3ba9iS', '7Mgfilq9bMR_v3HryeVkywghZcsl4meV_1424760602', 'aaaaaa@qq.com', '0.00', '0', '0', null, '1', null, 'user', '1', '1424760601', '1424760601');
INSERT INTO `user` VALUES ('3', 'f1u', 'b9HEakeX52Hi4t5zrwRpMUS8weXseT0z', null, '', '$2y$13$LLNmu6r0F2Kyh579DiSAeeGjtdZa9gI8JjYyYFkvcxJERRCXe2aCa', 'EA6QF3z-y-_ZSIM0sscNaQtQMzUUY0I2_1424760683', 'sssssssssss@qq.com', '0.00', '0', '0', null, '1', null, 'user', '1', '1424760682', '1424760682');
INSERT INTO `user` VALUES ('4', 'shflg1234', 'Q23gMd-bAM9zAjAMXctUKZTAg5FO6zSm', null, '', '$2y$13$qd721qcGi4mX8K8dzJsiuOPm9lqQTKKQMtP0hqrct7ZjtN6fS9ASW', null, 'shflg1234@163.com', '0.00', '0', '0', null, '1', null, 'user', '1', '1424760732', '1426650201');
INSERT INTO `user` VALUES ('5', 'funson861', 'GCOaVEA51DhG2iw5eKP0iQxyJ-OFMk6X', null, null, '$2y$13$YXLc19vytQzXouIB8dH3kuowXc5xtM8CxJzTepMOvfeo9neA31H0q', null, 'W2@qq.com', '0.00', '0', '0', null, '1', null, 'user', '1', '1424761292', '1424761292');
INSERT INTO `user` VALUES ('6', 'funson2', 'mmA_gaxTef8VPjOfovqIbZrsjuZiQz1C', null, null, '$2y$13$JgmjDCstpiPe1F8AvasfIOgqAWt8mwhWucGiRPl77XfUo/6j2dRlS', null, 'aaaa@qq.com', '0.00', '0', '0', null, '2', null, 'user', '1', '1424761739', '1424761739');
INSERT INTO `user` VALUES ('7', 'funson3', 'pMtAbZV6b0b6CXFR9yFls3Hy5QZduCML', null, null, '$2y$13$vg62tLxcl3Kme3OsCOod0uKHnz1WYXHo8/Xh78pIL3XhC1ybUKsoS', null, 'W21@qq.com', '0.00', '0', '0', null, '1', null, 'user', '1', '1424761861', '1424761861');
INSERT INTO `user` VALUES ('8', 'funson10', 'zr7F7vSIm699lDMuwRm2u7vZpUWDJWYb', null, null, '$2y$13$JmQZrmIzPAg4E/EGZnLiGukN6FK1xxrXeCbamMfGq2kYx/KUAgeZy', null, 'adssf@qq.com', '0.00', '0', '0', null, '1', null, 'user', '1', '1424762742', '1424762742');
INSERT INTO `user` VALUES ('9', 'funson100', 'yyaQ_U9-T02-C6mLglNtJkpXYZoktAch', null, null, '$2y$13$e0fSrMONQ5qMG.Il0pRVte3xj3ljXqk6e.3HrigPygy32HKZmp4JG', null, 'funson100@gmail.com', '0.00', '0', '2', null, '2', '1', 'user', '1', '1425374246', '1427944121');
INSERT INTO `user` VALUES ('10', 'testaaa', '1X5jgHtlr2daEYUFPxWJqV6FPodbcbWu', null, null, '$2y$13$JL9lTKf6W0AkuBcXiwUa0upQd3FYRTZhqOLbJid83ksg1lBz9bgpO', 'CjLjmN5oKHfx7ksJ6xROmvP61Fkrx8gp_1425624392', 'aaaaaaaaa@aa.com', '0.00', '0', '0', null, '1', '1', 'user', '1', '1425624391', '1425624391');
INSERT INTO `user` VALUES ('11', 'tttttt', '1Jkkpwrt1rs5p40ZjGIMTuNhhOTuMafp', null, null, '$2y$13$8lsP4QVwwLpq7cWz/L2wz.Fgj70u2sWyX7sZDbTIiAtMX1iTtHAQ.', null, 'ttttttt@qq.com', '0.00', '0', '1', null, '1', null, 'user', '1', '1427880736', '1427942919');
INSERT INTO `user` VALUES ('12', 'shflg12345', 'exYJ6pPz6cwA1vL0oK9JLbnyLLwGx09J', null, null, '$2y$13$bCGLNjrTUZCAblwZsRfMyuzpkbO2ThBGCJoBThc5wum0csBEXnlxi', null, 'ssfs@qq.com', '0.00', '0', '0', null, '1', null, 'user', '1', '1427880850', '1427880850');
INSERT INTO `user` VALUES ('13', 'funson22', '7BrnagtxCk9pJji2ZYEdsQQ7YZV0RsY9', null, null, '$2y$13$0iEd8QcwixXCwi5TNyXuTe6iLpjqX.W/n.ily9kukqRiYt.FP51xO', null, 'sdfs@qq.com', '0.00', '0', '6', null, '2', null, 'user', '1', '1427880985', '1427942919');
INSERT INTO `user` VALUES ('14', 'ffffff', 'bl0O23p1typGlOEPwBjyrPC72gPwijyp', null, null, '$2y$13$lCefczQmpVTXpYQiSfcdd.4Ym3QjS8tOqoC2QvneoF/5dgOYblnDm', null, 'ffffffffsd@qq.com', '0.00', '0', '0', 'fuasd', '1', null, 'user', '-1', '1427936047', '1427942859');
INSERT INTO `user` VALUES ('15', 'ssssssssssss', 'thRA6v5q-LVo4M0M_z34CI6qcEQRY8vT', null, null, '$2y$13$O5GCd7GIlDZ8alQFAo5YZuvJAFWwH5MDaDuc1BdwKMJjJ/Y9FdeHe', null, 'sssss1ssss@qq.com', '0.00', '0', '6', 'funson2', '2', null, 'user', '1', '1427936200', '1427942919');
INSERT INTO `user` VALUES ('16', 'hahaa', 'fS_yXCcBbYyOLNIKc116iXRpjKBf7FQZ', null, null, '$2y$13$hC/LPRPmVG93olMo0cf7nuvPuombOBVDeZZdoP/DGPWaTUhXwpKlO', null, 'haha@qq.com', '0.00', '0', '8', 'funson10', '1', null, 'user', '1', '1427937282', '1427942919');
INSERT INTO `user` VALUES ('17', 'zxx123', 'NekZX1mv7tadpeIcBHOZ45j8dpcm0uJE', null, null, '$2y$13$lBnt78m/gn0KgMlMRyrqsOouLMwOUXTw1vfSJVbfk.M3Mc6kT7XEe', null, 'zxx123@qq.com', '0.00', '0', '0', null, '1', null, 'user', '1', '1459239277', '1459239277');
