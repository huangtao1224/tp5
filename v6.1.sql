/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : 10688

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-02-14 16:48:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `index_about`
-- ----------------------------
DROP TABLE IF EXISTS `index_about`;
CREATE TABLE `index_about` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_about
-- ----------------------------

-- ----------------------------
-- Table structure for `index_account`
-- ----------------------------
DROP TABLE IF EXISTS `index_account`;
CREATE TABLE `index_account` (
  `account_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `member_id` int(10) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_type` varchar(10) DEFAULT NULL,
  `note` varchar(99) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_account
-- ----------------------------

-- ----------------------------
-- Table structure for `index_address`
-- ----------------------------
DROP TABLE IF EXISTS `index_address`;
CREATE TABLE `index_address` (
  `address_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `consignee` varchar(30) DEFAULT NULL,
  `address` varchar(199) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_address
-- ----------------------------

-- ----------------------------
-- Table structure for `index_admin_classify`
-- ----------------------------
DROP TABLE IF EXISTS `index_admin_classify`;
CREATE TABLE `index_admin_classify` (
  `classify_id` int(10) NOT NULL AUTO_INCREMENT,
  `classify_name` varchar(10) DEFAULT NULL,
  `classify_icon` varchar(99) DEFAULT NULL,
  `classify_pid` int(10) DEFAULT NULL,
  `level_id` int(10) DEFAULT NULL,
  `classify_url` varchar(99) DEFAULT NULL,
  `is_delete` int(10) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  PRIMARY KEY (`classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_admin_classify
-- ----------------------------
INSERT INTO `index_admin_classify` VALUES ('1', '根目录', null, null, '1', 'admin.php?', null, null);
INSERT INTO `index_admin_classify` VALUES ('2', '站点设置', 'app-indicator', '1', '2', 'admin.php?m=site&a=index', '2', '1468636286');
INSERT INTO `index_admin_classify` VALUES ('3', '分类管理', null, '1', '2', 'admin.php?m=classify&a=index', '2', '1468636526');
INSERT INTO `index_admin_classify` VALUES ('4', '高级设置', 'gear-fill', '1', '2', 'admin.php?m=admin_classify&a=index', '1', '1468636766');
INSERT INTO `index_admin_classify` VALUES ('5', '类型设置', 'stack', '1', '2', 'admin.php?m=type&a=index', '1', '1468636826');
INSERT INTO `index_admin_classify` VALUES ('6', '切图设置', null, '2', '3', '', '1', '1468636466');
INSERT INTO `index_admin_classify` VALUES ('7', '水印设置', null, '2', '3', '', '1', '1468636406');
INSERT INTO `index_admin_classify` VALUES ('8', '密码修改', null, '2', '3', 'admin.php?m=site&a=password_edit', '1', '1468636346');
INSERT INTO `index_admin_classify` VALUES ('10', '批量上传', null, '4', '3', 'admin.php?m=content&a=batch_upload', '1', '1468636466');
INSERT INTO `index_admin_classify` VALUES ('15', '订单管理', 'cart4', '1', '2', 'admin.php?m=order&a=index', '2', '1468636646');
INSERT INTO `index_admin_classify` VALUES ('16', '会员管理', 'people-fill', '1', '2', 'admin.php?m=member&a=index', '2', '1468636586');
INSERT INTO `index_admin_classify` VALUES ('20', '管理员管理', 'person-lines-fill', '1', '2', 'admin.php?m=permissions&a=index', '2', '1468636706');
INSERT INTO `index_admin_classify` VALUES ('21', '提现管理', null, '16', '3', 'admin.php?m=member&a=account&data[amount_type]=428', '1', '1468635926');
INSERT INTO `index_admin_classify` VALUES ('22', '版本复制', null, '4', '3', 'admin.php?m=copy_version&a=index', '1', '1490533386');
INSERT INTO `index_admin_classify` VALUES ('23', '功能配置', 'tools', '1', '2', 'admin.php?m=site&a=function_config', '1', '1490533509');
INSERT INTO `index_admin_classify` VALUES ('24', '地址管理', 'pin-map-fill', '1', '2', 'admin.php?m=site&a=pro', '2', '1468636647');

-- ----------------------------
-- Table structure for `index_alipay`
-- ----------------------------
DROP TABLE IF EXISTS `index_alipay`;
CREATE TABLE `index_alipay` (
  `alipay_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `partner` varchar(99) DEFAULT NULL,
  `alikey` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`alipay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_alipay
-- ----------------------------
INSERT INTO `index_alipay` VALUES ('1', '56', '1490535678', '', '', '', '1', '2088021059321304', 'suk9nn6ao5fqplmdywevymij548nzzwo');

-- ----------------------------
-- Table structure for `index_apply`
-- ----------------------------
DROP TABLE IF EXISTS `index_apply`;
CREATE TABLE `index_apply` (
  `apply_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `birth_date` int(10) DEFAULT NULL,
  `marital_status` varchar(10) DEFAULT NULL,
  `school` varchar(99) DEFAULT NULL,
  `schooling` varchar(30) DEFAULT NULL,
  `professional` varchar(30) DEFAULT NULL,
  `graduation_date` int(10) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `address` varchar(199) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `specialty` varchar(99) DEFAULT NULL,
  `education` varchar(599) DEFAULT NULL,
  `work_experience` varchar(599) DEFAULT NULL,
  `recruit_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `index_banner`
-- ----------------------------
DROP TABLE IF EXISTS `index_banner`;
CREATE TABLE `index_banner` (
  `banner_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(199) DEFAULT NULL,
  `keywords` varchar(199) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `version_id` int(10) NOT NULL,
  `banner_title` varchar(99) DEFAULT NULL,
  `banner_url` varchar(99) DEFAULT NULL,
  `banner_img` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `index_cart`
-- ----------------------------
DROP TABLE IF EXISTS `index_cart`;
CREATE TABLE `index_cart` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `goods_id` int(10) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `value` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `index_classify`
-- ----------------------------
DROP TABLE IF EXISTS `index_classify`;
CREATE TABLE `index_classify` (
  `classify_id` int(10) NOT NULL AUTO_INCREMENT,
  `classify_pid` int(10) DEFAULT NULL,
  `type_id` int(10) NOT NULL,
  `level_id` int(10) DEFAULT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(199) DEFAULT NULL,
  `keywords` varchar(199) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `version_id` int(10) NOT NULL,
  `note` varchar(99) DEFAULT NULL,
  `classify_name` varchar(30) DEFAULT NULL,
  `classify_url` varchar(199) DEFAULT NULL,
  `classify_note` varchar(99) DEFAULT NULL,
  `en_name` varchar(99) DEFAULT NULL,
  `classify_intro` longtext,
  `classify_img` varchar(99) DEFAULT NULL,
  `page_img` varchar(99) DEFAULT NULL,
  `is_delete` int(10) DEFAULT NULL,
  `sub_name` varchar(99) DEFAULT NULL,
  `beizhu` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_classify
-- ----------------------------
INSERT INTO `index_classify` VALUES ('1', null, '0', '1', '1440559315', null, null, null, '1', null, '根目录', null, null, null, null, null, null, null, null, null);
INSERT INTO `index_classify` VALUES ('2', '1', '13', '2', '1440555719', null, null, null, '1', null, '顶部导航', '', null, '', null, null, null, '353', null, null);
INSERT INTO `index_classify` VALUES ('3', '2', '13', '3', '1440559109', '', '', '', '1', '', '首頁', '', '2121221', 'Home', '', null, null, '353', '', '');
INSERT INTO `index_classify` VALUES ('4', '1', '13', '2', '1440559315', '', '', '', '1', '', '首页版块', '', null, '', '', '', '', '353', '', '');
INSERT INTO `index_classify` VALUES ('5', '4', '6', '3', '1560997178', '', '', '', '1', '', 'banner', '', null, '', '', null, null, null, '', '');

-- ----------------------------
-- Table structure for `index_classify_type`
-- ----------------------------
DROP TABLE IF EXISTS `index_classify_type`;
CREATE TABLE `index_classify_type` (
  `type_id` int(10) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(30) DEFAULT NULL,
  `type_name` varchar(30) DEFAULT NULL,
  `show_id` int(1) DEFAULT '2',
  `page_name` varchar(10) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  `glids` longtext,
  `biaoshi` int(10) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_classify_type
-- ----------------------------
INSERT INTO `index_classify_type` VALUES ('1', 'site', '站点设置', '1', 'index', '1439191146', null, null);
INSERT INTO `index_classify_type` VALUES ('3', 'goods', '商品', '2', 'index', '1439256986', null, null);
INSERT INTO `index_classify_type` VALUES ('4', 'classify', '分类管理', '1', 'index', '1439257272', null, null);
INSERT INTO `index_classify_type` VALUES ('5', 'text', '图文', '2', 'index', '1439264696', null, null);
INSERT INTO `index_classify_type` VALUES ('6', 'banner', 'banner', '2', 'index', '1439273097', null, null);
INSERT INTO `index_classify_type` VALUES ('7', 'link', '友情链接', '2', 'index', '1439273263', null, null);
INSERT INTO `index_classify_type` VALUES ('11', 'message', '留言', '2', 'index', '1439275801', null, null);
INSERT INTO `index_classify_type` VALUES ('13', '', '无', '2', '', '143934994', null, null);
INSERT INTO `index_classify_type` VALUES ('14', 'news', '新闻', '2', 'index', '1439349957', null, null);
INSERT INTO `index_classify_type` VALUES ('43', 'download', '下载', '2', 'index', '1447843687', null, null);
INSERT INTO `index_classify_type` VALUES ('44', 'recruit', '招聘', '2', 'index', '1448866227', null, null);
INSERT INTO `index_classify_type` VALUES ('45', 'apply', '应聘', '1', 'index', '1448866243', null, null);
INSERT INTO `index_classify_type` VALUES ('46', 'member', '会员', '1', 'index', '1472292048', null, null);
INSERT INTO `index_classify_type` VALUES ('47', 'order', '订单', '1', 'index', '1472702972', null, null);
INSERT INTO `index_classify_type` VALUES ('48', 'order_goods', '订单商品', '1', 'index', '1472703333', null, null);
INSERT INTO `index_classify_type` VALUES ('49', 'address', '收货地址', '1', 'index', '1472703685', null, null);
INSERT INTO `index_classify_type` VALUES ('50', 'cart', '购物车', '1', 'index', '1472703923', null, null);
INSERT INTO `index_classify_type` VALUES ('51', 'account', '会员账户', '1', 'index', '1472709755', null, null);
INSERT INTO `index_classify_type` VALUES ('52', 'complaints', '投诉', '2', 'index', '1472715740', null, null);
INSERT INTO `index_classify_type` VALUES ('53', 'memberlog', '会员日志', '1', 'index', '1473476623', null, null);
INSERT INTO `index_classify_type` VALUES ('54', 'wxpay', '微信支付配置', '1', 'index', '1490526163', null, null);
INSERT INTO `index_classify_type` VALUES ('56', 'alipay', '支付宝支付配置', '1', 'index', '1490535560', null, null);
INSERT INTO `index_classify_type` VALUES ('57', 'function_switch', '功能开关', '1', 'index', '1490536135', null, null);
INSERT INTO `index_classify_type` VALUES ('58', 'query', '查询', '2', 'index', '1491028027', null, null);
INSERT INTO `index_classify_type` VALUES ('59', 'seo', 'SEO设置', '2', 'index', '1491449890', null, null);
INSERT INTO `index_classify_type` VALUES ('60', 'share2', 'share2', '1', 'index', '1582528579', null, null);
INSERT INTO `index_classify_type` VALUES ('61', 'share', '页面分享', '2', 'index', '1582528626', null, null);

-- ----------------------------
-- Table structure for `index_complaints`
-- ----------------------------
DROP TABLE IF EXISTS `index_complaints`;
CREATE TABLE `index_complaints` (
  `complaints_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `tel` varchar(99) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `address` varchar(99) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `complaints` varchar(599) DEFAULT NULL,
  PRIMARY KEY (`complaints_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_complaints
-- ----------------------------

-- ----------------------------
-- Table structure for `index_contact`
-- ----------------------------
DROP TABLE IF EXISTS `index_contact`;
CREATE TABLE `index_contact` (
  `contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `index_data_type`
-- ----------------------------
DROP TABLE IF EXISTS `index_data_type`;
CREATE TABLE `index_data_type` (
  `data_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `data_type_name` varchar(10) DEFAULT NULL,
  `value` varchar(10) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  PRIMARY KEY (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_data_type
-- ----------------------------
INSERT INTO `index_data_type` VALUES ('1', '字符', 'varchar', null);
INSERT INTO `index_data_type` VALUES ('2', '数字', 'int', null);
INSERT INTO `index_data_type` VALUES ('3', '浮点', 'decimal', null);
INSERT INTO `index_data_type` VALUES ('4', '大字段', 'longtext', null);

-- ----------------------------
-- Table structure for `index_download`
-- ----------------------------
DROP TABLE IF EXISTS `index_download`;
CREATE TABLE `index_download` (
  `download_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(199) DEFAULT NULL,
  `keywords` varchar(199) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `version_id` int(10) NOT NULL,
  `download_name` varchar(99) DEFAULT NULL,
  `download_file` varchar(99) DEFAULT NULL,
  `pv` int(10) DEFAULT NULL,
  `download_number` int(10) DEFAULT NULL,
  `download_content` longtext,
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_download
-- ----------------------------

-- ----------------------------
-- Table structure for `index_function_switch`
-- ----------------------------
DROP TABLE IF EXISTS `index_function_switch`;
CREATE TABLE `index_function_switch` (
  `function_switch_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `xls_content` varchar(10) DEFAULT NULL,
  `sms_switch` varchar(10) DEFAULT NULL,
  `xls_member` varchar(10) DEFAULT NULL,
  `xls_order` varchar(10) DEFAULT NULL,
  `batch_shared` varchar(10) DEFAULT NULL,
  `batch_move` varchar(10) DEFAULT NULL,
  `batch_copy` varchar(10) DEFAULT NULL,
  `batch_delete` varchar(10) DEFAULT NULL,
  `left_navigation` varchar(10) DEFAULT NULL,
  `version_number` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`function_switch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_function_switch
-- ----------------------------
INSERT INTO `index_function_switch` VALUES ('1', '57', '1490537490', '', '', '', '1', '1', '2', '1', '1', '1', '1', '2', '2', '1', 'v5');

-- ----------------------------
-- Table structure for `index_goods`
-- ----------------------------
DROP TABLE IF EXISTS `index_goods`;
CREATE TABLE `index_goods` (
  `goods_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(199) DEFAULT NULL,
  `keywords` varchar(199) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `version_id` int(10) NOT NULL,
  `goods_name` varchar(99) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `goods_intro` varchar(199) DEFAULT NULL,
  `goods_type_id` int(10) DEFAULT NULL,
  `sales` int(10) DEFAULT NULL,
  `index_img` varchar(99) DEFAULT NULL,
  `is_index` varchar(299) DEFAULT NULL,
  `goods_img` varchar(99) DEFAULT NULL,
  `goods_bigimg` varchar(99) DEFAULT NULL,
  `additional_img1` varchar(99) DEFAULT NULL,
  `additional_img2` varchar(99) DEFAULT NULL,
  `additional_img3` varchar(99) DEFAULT NULL,
  `additional_img4` varchar(99) DEFAULT NULL,
  `goods_content` longtext,
  `goods_classify_id` int(10) DEFAULT NULL,
  `color` varchar(99) DEFAULT NULL,
  `size` varchar(99) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `price_array` longtext,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `index_input`
-- ----------------------------
DROP TABLE IF EXISTS `index_input`;
CREATE TABLE `index_input` (
  `input_id` int(10) NOT NULL AUTO_INCREMENT,
  `input_pid` int(10) DEFAULT NULL,
  `type_id` int(10) DEFAULT NULL,
  `input_name` varchar(99) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `field_name` varchar(50) DEFAULT NULL,
  `edit_switch` int(1) DEFAULT '2',
  `show_switch` int(1) DEFAULT '2',
  `edit_size` int(3) DEFAULT '0',
  `input_type_id` int(10) DEFAULT NULL,
  `data_type_id` int(1) DEFAULT NULL,
  `data_length` int(3) DEFAULT NULL,
  `list_switch` int(1) DEFAULT '1',
  `default_value` varchar(99) DEFAULT NULL,
  `prompt` varchar(99) DEFAULT NULL,
  `list_size` int(3) DEFAULT '0',
  `required_switch` int(10) DEFAULT NULL,
  `note` varchar(99) DEFAULT NULL,
  `price_switch` int(1) DEFAULT NULL,
  `input_value` varchar(99) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  PRIMARY KEY (`input_id`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_input
-- ----------------------------
INSERT INTO `index_input` VALUES ('7', null, '1', 'title标题', '', 'title', '2', '2', '60', '1', '1', '99', '1', '', '', '0', '2', '', '1', '', '1439202221');
INSERT INTO `index_input` VALUES ('8', null, '1', '网站关键词', '', 'keywords', '2', '2', '60', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439255767');
INSERT INTO `index_input` VALUES ('9', null, '1', '网站描述', '', 'description', '2', '2', '60', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439255814');
INSERT INTO `index_input` VALUES ('10', null, '1', '公司名', '', 'company_name', '2', '2', '40', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439256666');
INSERT INTO `index_input` VALUES ('13', null, '3', '商品名称', '', 'goods_name', '2', '2', '60', '1', '1', '99', '2', '', '', '150', '1', '', '1', '', '1439257006');
INSERT INTO `index_input` VALUES ('14', null, '4', '分类名称', '', 'classify_name', '1', '2', '0', '1', '1', '30', '1', '', '', '0', '1', '', '1', '', '1439257394');
INSERT INTO `index_input` VALUES ('15', null, '4', '自定义链接', '', 'classify_url', '2', '2', '60', '1', '1', '199', '1', '', '', '0', '1', '', '1', '', '1439258536');
INSERT INTO `index_input` VALUES ('16', null, '4', '分类说明', '', 'classify_note', '1', '1', '40', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439258750');
INSERT INTO `index_input` VALUES ('17', null, '1', '网址', '', 'url', '2', '2', '40', '1', '1', '40', '1', '', '', '0', '1', '', '1', '', '1439261990');
INSERT INTO `index_input` VALUES ('18', null, '1', 'logo', '', 'logo_img', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439262268');
INSERT INTO `index_input` VALUES ('19', null, '1', '页眉背景', '', 'header_bj', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439262273');
INSERT INTO `index_input` VALUES ('20', null, '1', '页眉', '', 'header', '1', '2', '150', '3', '4', '0', '1', '', '', '0', '1', '', '1', '', '1439262308');
INSERT INTO `index_input` VALUES ('21', null, '1', '落款', '', 'inscribe', '2', '2', '150', '3', '4', '0', '1', '', '', '0', '1', '', '1', '', '1439262359');
INSERT INTO `index_input` VALUES ('22', null, '1', '积分比例', '', 'proportion_integral', '1', '2', '20', '1', '1', '10', '1', '', '', '0', '1', '', '1', '', '1439262388');
INSERT INTO `index_input` VALUES ('70', null, '5', '图文标题', '', 'text_title', '2', '2', '60', '1', '1', '99', '2', '', '', '200', '2', '', '1', '', '1439264722');
INSERT INTO `index_input` VALUES ('71', null, '5', '图文内容', '', 'text_content', '2', '2', '300', '3', '4', '0', '1', '', '', '100', '2', '', '1', '', '1439264748');
INSERT INTO `index_input` VALUES ('79', null, '3', '品牌', '', 'brand', '1', '2', '0', '1', '1', '30', '1', '', '', '0', '1', '', '1', '', '1439265268');
INSERT INTO `index_input` VALUES ('80', null, '3', '商品简介', '', 'goods_intro', '2', '2', '3', '2', '1', '199', '1', '', '', '0', '1', '', '1', '', '1439265297');
INSERT INTO `index_input` VALUES ('97', null, '3', '商品类型ID', '', 'goods_type_id', '1', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1439265792');
INSERT INTO `index_input` VALUES ('98', null, '3', '销量', '', 'sales', '1', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1439265815');
INSERT INTO `index_input` VALUES ('113', null, '3', '首页图片', '', 'index_img', '1', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439266203');
INSERT INTO `index_input` VALUES ('114', null, '3', '首页推荐', '', 'is_index', '1', '2', '0', '4', '1', '299', '1', '', '', '0', '1', '', '1', '', '1439266229');
INSERT INTO `index_input` VALUES ('116', null, '3', '图片上传', '', 'goods_img', '2', '2', '0', '7', '1', '99', '2', '', '', '10', '1', '', '1', '', '1439266281');
INSERT INTO `index_input` VALUES ('117', null, '3', '产品大图', '', 'goods_bigimg', '1', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439266306');
INSERT INTO `index_input` VALUES ('118', null, '3', '附图1', '', 'additional_img1', '1', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439266330');
INSERT INTO `index_input` VALUES ('119', null, '3', '附图2', '', 'additional_img2', '1', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439266373');
INSERT INTO `index_input` VALUES ('120', null, '3', '附图3', '', 'additional_img3', '1', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439266434');
INSERT INTO `index_input` VALUES ('121', null, '3', '附图4', '', 'additional_img4', '1', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439266456');
INSERT INTO `index_input` VALUES ('122', null, '3', '详细介绍', '', 'goods_content', '2', '2', '300', '3', '4', '0', '1', '', '', '0', '1', '', '1', '', '1439266479');
INSERT INTO `index_input` VALUES ('123', null, '4', '英文标题', '', 'en_name', '2', '2', '40', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439257994');
INSERT INTO `index_input` VALUES ('124', null, '4', '分类简介', '', 'classify_intro', '2', '2', '0', '3', '4', '0', '1', '', '', '0', '1', '', '1', '', '1439271494');
INSERT INTO `index_input` VALUES ('125', null, '4', '分类图片', '', 'classify_img', '2', '2', '0', '7', '1', '99', '2', '', '', '0', '1', '', '1', '', '1439271669');
INSERT INTO `index_input` VALUES ('126', null, '4', '内页插图', '', 'page_img', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439271701');
INSERT INTO `index_input` VALUES ('132', null, '6', '动漫标题', '', 'banner_title', '2', '2', '0', '1', '1', '99', '2', '', '', '100', '1', '', '1', '', '1439273178');
INSERT INTO `index_input` VALUES ('133', null, '6', '动漫链接', '', 'banner_url', '2', '2', '0', '1', '1', '99', '2', '', '', '100', '1', '', '1', '', '1439273203');
INSERT INTO `index_input` VALUES ('134', null, '6', '图片上传', '', 'banner_img', '2', '2', '0', '7', '1', '99', '2', '', '', '200', '1', '', '1', '', '1439273228');
INSERT INTO `index_input` VALUES ('135', null, '7', '名称', null, 'link_name', '2', '2', '0', '1', '1', '30', '2', null, null, '100', '1', '', null, null, '1439273307');
INSERT INTO `index_input` VALUES ('136', null, '7', '地址', null, 'link_url', '2', '2', '0', '1', '1', '99', '2', null, null, '200', '1', '', null, null, '1439273329');
INSERT INTO `index_input` VALUES ('137', null, '7', '图片上传', null, 'link_img', '2', '2', '0', '7', '1', '99', '2', null, null, '0', '1', '', null, null, '1439273347');
INSERT INTO `index_input` VALUES ('190', null, '14', '新闻标题', '', 'news_title', '2', '2', '60', '1', '1', '99', '2', '', '', '300', '1', '', '1', '', '1439458034');
INSERT INTO `index_input` VALUES ('194', null, '14', '新闻导语', '', 'news_intro', '2', '2', '0', '2', '1', '500', '1', '', '', '0', '1', '', '1', '', '1439458131');
INSERT INTO `index_input` VALUES ('195', null, '14', '作者', '', 'news_author', '2', '2', '0', '1', '1', '20', '1', '', '', '0', '1', '', '1', '', '1439458160');
INSERT INTO `index_input` VALUES ('196', null, '14', '来源', '', 'news_source', '2', '2', '0', '1', '1', '20', '1', '', '', '0', '1', '', '1', '', '1439458189');
INSERT INTO `index_input` VALUES ('197', null, '14', '详细介绍', '', 'news_content', '2', '2', '300', '3', '4', '0', '1', '', '', '0', '1', '', '1', '', '1439458212');
INSERT INTO `index_input` VALUES ('198', null, '14', '新闻缩略图', '', 'news_img', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439518230');
INSERT INTO `index_input` VALUES ('224', null, '3', '商品类目ID', '', 'goods_classify_id', '1', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1440986618');
INSERT INTO `index_input` VALUES ('306', null, '43', '下载名称', '', 'download_name', '2', '2', '60', '1', '1', '99', '2', '', '', '300', '1', '', '1', '', '1447843717');
INSERT INTO `index_input` VALUES ('307', null, '43', '文件上传', '', 'download_file', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1447843741');
INSERT INTO `index_input` VALUES ('308', null, '44', '职位名称', null, 'job_name', '2', '2', '0', '1', '1', '99', '2', null, null, '100', '1', '', null, null, '1448866259');
INSERT INTO `index_input` VALUES ('309', null, '44', '职位类型', null, 'job_type', '2', '2', '0', '1', '1', '30', '2', null, null, '100', '1', '', null, null, '1448866268');
INSERT INTO `index_input` VALUES ('310', null, '44', '工作地点', null, 'work_place', '2', '2', '0', '1', '1', '30', '2', null, null, '100', '1', '', null, null, '1448866320');
INSERT INTO `index_input` VALUES ('311', null, '44', '工作经验', null, 'work_experience', '2', '2', '0', '1', '1', '30', '2', null, null, '100', '1', '', null, null, '1448866335');
INSERT INTO `index_input` VALUES ('312', null, '44', '学历要求', null, 'schooling', '2', '2', '0', '1', '1', '30', '2', null, null, '100', '1', '', null, null, '1448866350');
INSERT INTO `index_input` VALUES ('313', null, '44', '招聘人数', null, 'number', '2', '2', '0', '1', '1', '10', '2', null, null, '100', '1', '', null, null, '1448866376');
INSERT INTO `index_input` VALUES ('314', null, '44', '职位描述', null, 'job_description', '2', '2', '0', '2', '1', '399', '1', null, null, '0', '1', '', null, null, '1448866428');
INSERT INTO `index_input` VALUES ('315', null, '44', '招聘要求', null, 'job_requirement', '2', '2', '0', '2', '1', '399', '1', null, null, '0', '1', '', null, null, '1448866446');
INSERT INTO `index_input` VALUES ('316', null, '44', '联 系 人', null, 'contact', '2', '2', '0', '1', '1', '30', '1', null, null, '0', '1', '', null, null, '1448866470');
INSERT INTO `index_input` VALUES ('317', null, '44', '联系电话', null, 'tel', '2', '2', '0', '1', '1', '30', '1', null, null, '0', '1', '', null, null, '1448866534');
INSERT INTO `index_input` VALUES ('318', null, '44', '电子邮件', null, 'email', '2', '2', '0', '1', '1', '60', '1', null, null, '0', '1', '', null, null, '1448866554');
INSERT INTO `index_input` VALUES ('319', null, '45', '姓　　名', '', 'name', '2', '2', '30', '1', '1', '30', '2', '', '', '100', '1', '', '1', '', '1448866801');
INSERT INTO `index_input` VALUES ('320', null, '45', '性　　别', '', 'sex', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1448866815');
INSERT INTO `index_input` VALUES ('321', '320', '45', '男', '', 'sex', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '1', '1448866827');
INSERT INTO `index_input` VALUES ('322', '320', '45', '女', '', 'sex', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '2', '1448866833');
INSERT INTO `index_input` VALUES ('323', null, '45', '出生日期', '', 'birth_date', '2', '2', '30', '8', '2', '10', '1', '', '', '0', '1', '', '1', '', '1448866842');
INSERT INTO `index_input` VALUES ('324', null, '45', '婚姻状况', '', 'marital_status', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1448866917');
INSERT INTO `index_input` VALUES ('325', '324', '45', '未婚', '', 'marital_status', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '1', '1448866932');
INSERT INTO `index_input` VALUES ('326', '324', '45', '已婚', '', 'marital_status', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '2', '1448866939');
INSERT INTO `index_input` VALUES ('327', null, '45', '毕业院校', '', 'school', '2', '2', '40', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1448866944');
INSERT INTO `index_input` VALUES ('328', null, '45', '最高学历', '', 'schooling', '2', '2', '40', '1', '1', '30', '1', '', '', '0', '1', '', '1', '', '1448866956');
INSERT INTO `index_input` VALUES ('329', null, '45', '毕业专业', '', 'professional', '2', '2', '40', '1', '1', '30', '1', '', '', '0', '1', '', '1', '', '1448866976');
INSERT INTO `index_input` VALUES ('330', null, '45', '毕业时间', '', 'graduation_date', '2', '2', '30', '8', '2', '10', '1', '', '', '0', '1', '', '1', '', '1448866985');
INSERT INTO `index_input` VALUES ('331', null, '45', '联系电话', '', 'tel', '2', '2', '40', '1', '1', '30', '1', '', '', '0', '1', '', '1', '', '1448867010');
INSERT INTO `index_input` VALUES ('332', null, '45', '手机号码', '', 'mobile', '2', '2', '40', '1', '1', '30', '1', '', '', '0', '1', '', '1', '', '1448867019');
INSERT INTO `index_input` VALUES ('333', null, '45', '通信地址', '', 'address', '2', '2', '60', '1', '1', '199', '1', '', '', '0', '1', '', '1', '', '1448867036');
INSERT INTO `index_input` VALUES ('334', null, '45', '电子邮箱', '', 'email', '2', '2', '60', '1', '1', '60', '1', '', '', '0', '1', '', '1', '', '1448867059');
INSERT INTO `index_input` VALUES ('335', null, '45', '专业特长', '', 'specialty', '2', '2', '5', '2', '1', '99', '1', '', '', '0', '1', '', '1', '', '1448867077');
INSERT INTO `index_input` VALUES ('336', null, '45', '教育经历', '', 'education', '2', '2', '5', '2', '1', '599', '1', '', '', '0', '1', '', '1', '', '1448867097');
INSERT INTO `index_input` VALUES ('337', null, '45', '工作经历', '', 'work_experience', '2', '2', '5', '2', '1', '599', '1', '', '', '0', '1', '', '1', '', '1448867113');
INSERT INTO `index_input` VALUES ('338', null, '45', '招聘ID', '', 'recruit_id', '1', '1', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1448867135');
INSERT INTO `index_input` VALUES ('343', null, '11', '联系电话', '', 'tel', '2', '2', '40', '1', '1', '99', '1', '', '请输入：联系电话', '0', '1', '', '1', '', '1451464335');
INSERT INTO `index_input` VALUES ('344', null, '11', 'QQ/MSN', '', 'Email', '2', '2', '40', '1', '1', '99', '1', '', '请输入：QQ/MSN', '0', '2', '', '1', '', '1451464358');
INSERT INTO `index_input` VALUES ('345', null, '1', '电话', '', 'tel', '2', '2', '40', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439262254');
INSERT INTO `index_input` VALUES ('346', null, '1', 'QQ', '', 'qq', '2', '2', '40', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439262264');
INSERT INTO `index_input` VALUES ('347', null, '11', '留言主题', '', 'theme', '2', '2', '40', '1', '1', '99', '2', '', '请输入：留言主题', '300', '2', '', '1', '', '1449851924');
INSERT INTO `index_input` VALUES ('348', null, '11', '留言内容', '', 'content', '2', '2', '5', '2', '1', '99', '1', '', '请输入：留言内容', '0', '2', '', '1', '', '1449851935');
INSERT INTO `index_input` VALUES ('349', null, '11', '客户名称', '', 'name', '2', '2', '40', '1', '1', '99', '1', '', '请输入：客户名称', '0', '1', '', '1', '', '1449851945');
INSERT INTO `index_input` VALUES ('350', null, '11', '联系人', '', 'person', '2', '2', '40', '1', '1', '99', '1', '', '请输入：联系人', '0', '1', '', '1', '', '1449851958');
INSERT INTO `index_input` VALUES ('351', null, '4', '是否删除', '', 'is_delete', '1', '2', '0', '6', '2', '10', '1', '', '', '0', '1', '', '1', '', '1450601495');
INSERT INTO `index_input` VALUES ('352', '351', '4', '显示', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1450601635');
INSERT INTO `index_input` VALUES ('353', '351', '4', '隐藏', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1450601641');
INSERT INTO `index_input` VALUES ('354', null, '1', '版本名称', '', 'version_name', '1', '2', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '', '1451029823');
INSERT INTO `index_input` VALUES ('363', null, '46', '用户名', '', 'username', '2', '1', '0', '1', '1', '99', '2', '', '', '150', '1', '', '1', '', '1472292464');
INSERT INTO `index_input` VALUES ('364', null, '46', '密码', '', 'password', '2', '1', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1472292478');
INSERT INTO `index_input` VALUES ('365', null, '46', '头像', '', 'head_img', '2', '1', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1472292488');
INSERT INTO `index_input` VALUES ('366', null, '46', '姓名', '', 'name', '2', '2', '0', '1', '1', '99', '2', '', '', '60', '1', '', '1', '', '1472292549');
INSERT INTO `index_input` VALUES ('367', null, '46', '性别', '', 'sex', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1472292562');
INSERT INTO `index_input` VALUES ('368', '367', '46', '男', '', 'sex', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '', '1472292589');
INSERT INTO `index_input` VALUES ('369', '367', '46', '女', '', 'sex', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '', '1472292593');
INSERT INTO `index_input` VALUES ('370', '367', '46', '保密', '', 'sex', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '', '1472292595');
INSERT INTO `index_input` VALUES ('371', null, '46', '手机', '', 'mobile', '2', '2', '0', '1', '1', '30', '2', '', '', '100', '1', '', '1', '', '1472292601');
INSERT INTO `index_input` VALUES ('372', null, '46', '出生年月', '', 'birth_date', '2', '2', '0', '8', '2', '10', '1', '', '', '0', '1', '', '1', '', '1472292620');
INSERT INTO `index_input` VALUES ('373', null, '46', '地址', '', 'address', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1472292654');
INSERT INTO `index_input` VALUES ('374', null, '3', '颜色', '', 'color', '1', '2', '60', '1', '1', '99', '1', '', '', '0', '1', '多个值用 | 格开', '2', '', '1439257606');
INSERT INTO `index_input` VALUES ('375', null, '3', '尺码', '', 'size', '1', '2', '60', '1', '1', '99', '1', '', '', '0', '1', '多个值用 | 格开', '2', '', '1439258206');
INSERT INTO `index_input` VALUES ('376', null, '3', '价格', '', 'price', '1', '2', '20', '1', '2', '10', '1', '', '', '50', '1', '', '1', '', '1439261806');
INSERT INTO `index_input` VALUES ('377', null, '3', '价格设置', '', 'price_array', '1', '2', '0', '1', '4', '0', '1', '', '', '0', '1', '', '1', '', '1439261206');
INSERT INTO `index_input` VALUES ('378', null, '47', '订单号', '', 'order_number', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1472702987');
INSERT INTO `index_input` VALUES ('379', null, '47', '会员ID', '', 'member_id', '1', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1472703005');
INSERT INTO `index_input` VALUES ('380', null, '47', '状态', '', 'state', '2', '2', '0', '6', '1', '10', '1', '', '', '0', '1', '', '1', '', '1472703024');
INSERT INTO `index_input` VALUES ('381', '380', '47', '待付款', '#f00', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1472703046');
INSERT INTO `index_input` VALUES ('382', '380', '47', '待发货', '#0d9e02', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1472703052');
INSERT INTO `index_input` VALUES ('383', '380', '47', '已发货', '#e43d0a', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '3', '1472703059');
INSERT INTO `index_input` VALUES ('387', null, '47', '价格', '', 'price', '2', '2', '0', '1', '3', '10', '1', '', '', '0', '1', '', '1', '', '1472703078');
INSERT INTO `index_input` VALUES ('388', null, '47', '付款时间', '', 'pay_date', '2', '2', '25', '8', '2', '10', '1', '', '', '0', '1', '', '1', '', '1472703094');
INSERT INTO `index_input` VALUES ('389', null, '47', '收货人', '', 'consignee', '2', '2', '0', '1', '1', '30', '1', '', '', '0', '1', '', '1', '', '1472703110');
INSERT INTO `index_input` VALUES ('390', null, '47', '地址', '', 'address', '2', '2', '60', '1', '1', '199', '1', '', '', '0', '1', '', '1', '', '1472703139');
INSERT INTO `index_input` VALUES ('391', null, '47', '电话', '', 'phone', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1472703159');
INSERT INTO `index_input` VALUES ('392', null, '47', '邮政编码', '', 'zip', '2', '2', '0', '1', '1', '30', '1', '', '', '0', '1', '', '1', '', '1472703174');
INSERT INTO `index_input` VALUES ('393', null, '47', '运费', '', 'freight', '1', '2', '0', '1', '3', '10', '1', '', '', '0', '1', '', '1', '', '1472703195');
INSERT INTO `index_input` VALUES ('394', null, '47', '留言', '', 'message', '2', '2', '0', '2', '1', '999', '1', '', '', '0', '1', '', '1', '', '1472703228');
INSERT INTO `index_input` VALUES ('395', null, '47', '备注', '', 'note', '2', '2', '0', '2', '1', '999', '1', '', '', '0', '1', '', '1', '', '1472703270');
INSERT INTO `index_input` VALUES ('396', null, '48', '商品ID', null, 'goods_id', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', null, '1472703364');
INSERT INTO `index_input` VALUES ('397', null, '48', '会员ID', null, 'member_id', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', null, '1472703373');
INSERT INTO `index_input` VALUES ('398', null, '48', '商品名称', null, 'goods_name', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', null, '1472703388');
INSERT INTO `index_input` VALUES ('399', null, '48', '价格', null, 'price', '2', '2', '0', '1', '3', '10', '1', '', '', '0', '1', '', '1', null, '1472703403');
INSERT INTO `index_input` VALUES ('400', null, '48', '商品图片', null, 'goods_img', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', null, '1472703419');
INSERT INTO `index_input` VALUES ('401', null, '48', '购买数量', null, 'number', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', null, '1472703517');
INSERT INTO `index_input` VALUES ('402', null, '48', '付款时间', null, 'pay_date', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', null, '1472703530');
INSERT INTO `index_input` VALUES ('403', null, '48', '订单号', null, 'order_number', '2', '2', '0', '1', '1', '30', '1', '', '', '0', '1', '', '1', null, '1472703546');
INSERT INTO `index_input` VALUES ('404', null, '48', '订单ID', null, 'order_id', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', null, '1472703564');
INSERT INTO `index_input` VALUES ('405', null, '48', '属性名称', null, 'name', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', null, '1472703602');
INSERT INTO `index_input` VALUES ('406', null, '49', '收货人', null, 'consignee', '2', '2', '0', '1', '1', '30', '1', null, null, '0', '1', '', '1', null, '1472703723');
INSERT INTO `index_input` VALUES ('407', null, '49', '地址', null, 'address', '2', '2', '0', '1', '1', '199', '1', null, null, '0', '1', '', '1', null, '1472703732');
INSERT INTO `index_input` VALUES ('408', null, '49', '电话', null, 'phone', '2', '2', '0', '1', '1', '30', '1', null, null, '0', '1', '', '1', null, '1472703745');
INSERT INTO `index_input` VALUES ('409', null, '49', '会员ID', null, 'member_id', '2', '2', '0', '1', '2', '10', '1', null, null, '0', '1', '', '1', null, '1472703755');
INSERT INTO `index_input` VALUES ('410', null, '49', '状态', null, 'state', '2', '2', '0', '6', '1', '10', '1', null, null, '0', '1', '', '1', null, '1472703767');
INSERT INTO `index_input` VALUES ('411', '410', '49', '默认地址', null, 'state', '1', '1', '0', '1', '1', '10', '1', null, null, '0', '1', '', '1', null, '1472703783');
INSERT INTO `index_input` VALUES ('412', '410', '49', '非默认地址', null, 'state', '1', '1', '0', '1', '1', '10', '1', null, null, '0', '1', '', '1', null, '1472703788');
INSERT INTO `index_input` VALUES ('413', null, '49', '省', null, 'province', '2', '2', '0', '1', '1', '20', '1', null, null, '0', '1', '', '1', null, '1472703794');
INSERT INTO `index_input` VALUES ('414', null, '49', '市', null, 'city', '2', '2', '0', '1', '1', '20', '1', null, null, '0', '1', '', '1', null, '1472703834');
INSERT INTO `index_input` VALUES ('415', null, '49', '区/县', null, 'area', '2', '2', '0', '1', '1', '20', '1', null, null, '0', '1', '', '1', null, '1472703846');
INSERT INTO `index_input` VALUES ('416', null, '49', '邮政编码', null, 'zip', '2', '2', '0', '1', '1', '10', '1', null, null, '0', '1', '', '1', null, '1472703857');
INSERT INTO `index_input` VALUES ('417', null, '50', '商品ID', null, 'goods_id', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', null, '1472703941');
INSERT INTO `index_input` VALUES ('418', null, '50', '会员ID', null, 'member_id', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', null, '1472703949');
INSERT INTO `index_input` VALUES ('419', null, '50', '价格', null, 'price', '2', '2', '0', '1', '3', '10', '1', '', '', '0', '1', '', '1', null, '1472703961');
INSERT INTO `index_input` VALUES ('420', null, '50', '数量', null, 'number', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', null, '1472704022');
INSERT INTO `index_input` VALUES ('421', null, '50', '属性名称', null, 'name', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', null, '1472704088');
INSERT INTO `index_input` VALUES ('422', null, '51', '会员ID', '', 'member_id', '1', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1472709768');
INSERT INTO `index_input` VALUES ('423', null, '51', '余额', '', 'balance', '1', '2', '0', '1', '3', '10', '1', '', '', '0', '1', '', '1', '', '1472709782');
INSERT INTO `index_input` VALUES ('424', null, '51', '交易金额', '', 'amount', '2', '2', '0', '1', '3', '10', '1', '', '', '0', '1', '', '1', '', '1472709807');
INSERT INTO `index_input` VALUES ('425', null, '51', '交易类型', '', 'amount_type', '2', '2', '0', '6', '1', '10', '1', '', '', '0', '1', '', '1', '', '1472709956');
INSERT INTO `index_input` VALUES ('426', '425', '51', '充值', '', 'amount_type', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '1', '1472709991');
INSERT INTO `index_input` VALUES ('427', '425', '51', '支出', '', 'amount_type', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '2', '1472709997');
INSERT INTO `index_input` VALUES ('428', '425', '51', '提现', '', 'amount_type', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '3', '1472710003');
INSERT INTO `index_input` VALUES ('429', null, '51', '备注', '', 'note', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1472710014');
INSERT INTO `index_input` VALUES ('430', null, '51', '状态', '', 'state', '2', '2', '0', '6', '1', '10', '1', '', '', '0', '1', '', '1', '', '1472710021');
INSERT INTO `index_input` VALUES ('431', '430', '51', '待处理', '#f00', 'state', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '1', '1472710037');
INSERT INTO `index_input` VALUES ('432', '430', '51', '已完成', '#0d9e02', 'state', '1', '1', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', '2', '1472710068');
INSERT INTO `index_input` VALUES ('440', null, '52', '您的姓名', null, 'name', '2', '2', '0', '1', '1', '40', '1', '', '', '0', '1', '', '1', null, '1472715896');
INSERT INTO `index_input` VALUES ('441', null, '52', '联系电话', null, 'tel', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', null, '1472715909');
INSERT INTO `index_input` VALUES ('442', null, '52', '联 系 人', null, 'contact', '2', '2', '0', '1', '1', '10', '1', '', '', '0', '1', '', '1', null, '1472715924');
INSERT INTO `index_input` VALUES ('443', null, '52', '联系地址', null, 'address', '2', '2', '60', '1', '1', '99', '1', '', '', '0', '1', '', '1', null, '1472715936');
INSERT INTO `index_input` VALUES ('444', null, '52', '电子邮件', null, 'email', '2', '2', '0', '1', '1', '60', '1', '', '', '0', '1', '', '1', null, '1472715965');
INSERT INTO `index_input` VALUES ('445', null, '52', 'QQ/MSN', null, 'qq', '2', '2', '0', '1', '1', '30', '1', '', '', '0', '1', '', '1', null, '1472715981');
INSERT INTO `index_input` VALUES ('446', null, '52', '公司名称', null, 'company', '2', '2', '0', '1', '1', '60', '1', '', '', '0', '1', '', '1', null, '1472715996');
INSERT INTO `index_input` VALUES ('447', null, '52', '投诉建议', null, 'complaints', '2', '2', '5', '2', '1', '599', '1', '', '', '0', '1', '', '1', null, '1472716019');
INSERT INTO `index_input` VALUES ('448', null, '48', '属性值', null, 'value', '2', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', null, '1473061088');
INSERT INTO `index_input` VALUES ('449', null, '50', '属性值', null, 'value', '2', '2', '0', '1', '1', '99', '1', null, null, '0', null, null, null, null, '1473065366');
INSERT INTO `index_input` VALUES ('450', null, '53', '会员ID', null, 'member_id', '2', '2', '0', '1', '2', '10', '2', '', '', '50', '1', '', '1', null, '1473476813');
INSERT INTO `index_input` VALUES ('451', null, '53', '登录IP', null, 'ip', '2', '2', '0', '1', '1', '99', '2', '', '', '150', '1', '', '1', null, '1473476825');
INSERT INTO `index_input` VALUES ('452', null, '53', 'IP所在地区', null, 'ip_address', '2', '2', '0', '1', '1', '99', '2', '', '', '150', '1', '', '1', null, '1473476836');
INSERT INTO `index_input` VALUES ('453', null, '1', '剩余短信数量', '', 'sms_number', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1439262266');
INSERT INTO `index_input` VALUES ('454', null, '1', '手机', '', 'mobile', '2', '2', '40', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439262170');
INSERT INTO `index_input` VALUES ('462', null, '43', '浏览次数', '', 'pv', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1490002063');
INSERT INTO `index_input` VALUES ('463', null, '43', '下载次数', '', 'download_number', '2', '2', '0', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1490002078');
INSERT INTO `index_input` VALUES ('464', null, '43', '详细内容', '', 'download_content', '2', '2', '300', '3', '4', '0', '1', '', '', '0', '1', '', '1', '', '1490003132');
INSERT INTO `index_input` VALUES ('465', '114', '3', '是', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1490432730');
INSERT INTO `index_input` VALUES ('466', '114', '3', '否', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1490432737');
INSERT INTO `index_input` VALUES ('468', null, '54', '微信ID', '', 'weixin_id', '1', '2', '60', '1', '2', '10', '1', '', '', '0', '1', '', '1', '', '1490526212');
INSERT INTO `index_input` VALUES ('469', null, '54', 'Appid', '', 'appid', '2', '2', '60', '1', '1', '99', '2', '', '', '300', '1', '', '1', '', '1490526229');
INSERT INTO `index_input` VALUES ('470', null, '54', 'Appsecret', '', 'appsecret', '2', '2', '60', '1', '1', '99', '2', '', '', '300', '1', '', '1', '', '1490526401');
INSERT INTO `index_input` VALUES ('471', null, '54', '微支付商户号', '', 'mchid', '2', '2', '60', '1', '1', '99', '2', '', '', '300', '1', '', '1', '', '1490526425');
INSERT INTO `index_input` VALUES ('473', null, '54', 'apiclient_cert私钥文件', '', 'apiclient_cert', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1490526456');
INSERT INTO `index_input` VALUES ('474', null, '54', 'apiclient_key公钥文件', '', 'apiclient_key', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1490526475');
INSERT INTO `index_input` VALUES ('475', null, '54', '根证书文件', '', 'rootca', '2', '2', '0', '7', '1', '99', '1', '', '', '0', '1', '', '1', '', '1490526491');
INSERT INTO `index_input` VALUES ('476', null, '54', 'API密钥', '', 'apikey', '2', '2', '60', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1490526435');
INSERT INTO `index_input` VALUES ('477', null, '56', 'partner', '', 'partner', '2', '2', '60', '1', '1', '99', '2', '', '', '300', '1', '', '1', '', '1490535632');
INSERT INTO `index_input` VALUES ('478', null, '56', 'key', '', 'alikey', '2', '2', '60', '1', '1', '99', '2', '', '', '300', '1', '', '1', '', '1490535642');
INSERT INTO `index_input` VALUES ('479', null, '57', '导出内容', '', 'xls_content', '2', '2', '0', '5', '1', '10', '2', '', '', '99', '1', '', '1', '', '1490536161');
INSERT INTO `index_input` VALUES ('480', '479', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1490536202');
INSERT INTO `index_input` VALUES ('481', '479', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1490536209');
INSERT INTO `index_input` VALUES ('482', null, '57', '短信接口', '', 'sms_switch', '2', '2', '0', '5', '1', '10', '2', '', '', '200', '1', '', '1', '', '1490449868');
INSERT INTO `index_input` VALUES ('483', '482', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1490537372');
INSERT INTO `index_input` VALUES ('484', '482', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1490537381');
INSERT INTO `index_input` VALUES ('485', null, '57', '导出会员', '', 'xls_member', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1490537387');
INSERT INTO `index_input` VALUES ('486', null, '57', '导出订单', '', 'xls_order', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1490537412');
INSERT INTO `index_input` VALUES ('487', '485', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1490537429');
INSERT INTO `index_input` VALUES ('488', '485', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1490537436');
INSERT INTO `index_input` VALUES ('489', '486', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1490537441');
INSERT INTO `index_input` VALUES ('490', '486', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1490537447');
INSERT INTO `index_input` VALUES ('491', null, '58', '姓名', '', 'name', '2', '2', '40', '1', '1', '99', '2', '', '请输入：姓名', '100', '2', '', '1', '', '1491028195');
INSERT INTO `index_input` VALUES ('492', null, '58', '证号', '', 'query_number', '2', '2', '60', '1', '1', '99', '2', '', '请输入：证号', '300', '2', '', '1', '', '1491028207');
INSERT INTO `index_input` VALUES ('493', null, '58', '查询结果', '', 'query_content', '2', '1', '0', '3', '4', '0', '1', '', '', '0', '1', '', '1', '', '1491028229');
INSERT INTO `index_input` VALUES ('495', null, '4', '副标题', '', 'sub_name', '2', '2', '40', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1439257694');
INSERT INTO `index_input` VALUES ('496', null, '59', 'MODULE_NAME', '', 'module_name', '2', '2', '0', '1', '1', '99', '2', '', '', '100', '1', '', '1', '', '1491449905');
INSERT INTO `index_input` VALUES ('497', null, '59', 'ACTION_NAME', '', 'action_name', '2', '2', '0', '1', '1', '99', '2', '', '', '100', '1', '', '1', '', '1491449916');
INSERT INTO `index_input` VALUES ('498', null, '59', '浏览器标题', '', 'title', '2', '2', '0', '1', '1', '99', '2', '', '', '200', '1', '', '1', '', '1491449927');
INSERT INTO `index_input` VALUES ('499', null, '59', '浏览器关键词', '', 'keywords', '2', '2', '0', '1', '1', '99', '2', '', '', '200', '1', '', '1', '', '1491449934');
INSERT INTO `index_input` VALUES ('500', null, '59', '浏览器描述', '', 'description', '2', '2', '0', '1', '1', '99', '2', '', '', '200', '1', '', '1', '', '1491449947');
INSERT INTO `index_input` VALUES ('501', null, '57', '批量共享', '', 'batch_shared', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1491462208');
INSERT INTO `index_input` VALUES ('502', '501', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1491462330');
INSERT INTO `index_input` VALUES ('503', '501', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1491462336');
INSERT INTO `index_input` VALUES ('504', null, '57', '批量移动', '', 'batch_move', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1491462351');
INSERT INTO `index_input` VALUES ('505', '504', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1491463283');
INSERT INTO `index_input` VALUES ('506', '504', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1491463289');
INSERT INTO `index_input` VALUES ('507', null, '57', '批量复制', '', 'batch_copy', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1491463299');
INSERT INTO `index_input` VALUES ('508', '507', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1491463313');
INSERT INTO `index_input` VALUES ('509', '507', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1491463320');
INSERT INTO `index_input` VALUES ('510', null, '57', '批量删除', '', 'batch_delete', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1491463339');
INSERT INTO `index_input` VALUES ('511', '510', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1491463364');
INSERT INTO `index_input` VALUES ('512', '510', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1491463370');
INSERT INTO `index_input` VALUES ('513', null, '57', '左侧导航', '', 'left_navigation', '2', '2', '0', '5', '1', '10', '1', '', '', '0', '1', '', '1', '', '1491466717');
INSERT INTO `index_input` VALUES ('514', '513', '57', '关', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '1', '1491466794');
INSERT INTO `index_input` VALUES ('515', '513', '57', '开', '', '', '1', '1', '0', '1', '1', '0', '1', '', '', '0', '1', '', '1', '2', '1491466804');
INSERT INTO `index_input` VALUES ('516', null, '57', '当前版本', '', 'version_number', '1', '2', '0', '1', '1', '99', '1', '', '', '0', '1', '', '1', '', '1491467632');
INSERT INTO `index_input` VALUES ('517', null, '4', '图片备注', '', 'beizhu', '2', '2', '5', '2', '1', '99', '1', '', '', '0', '1', '', '1', '', '1513734593');
INSERT INTO `index_input` VALUES ('518', null, '46', 'openid', '', 'openid', '1', '1', '0', '1', '4', '0', '1', '', '', '0', '1', '', '1', '', '1582528549');
INSERT INTO `index_input` VALUES ('519', null, '60', 'access_token', null, 'access_token', '2', '2', '0', '1', '4', '0', '1', null, null, '0', null, null, null, null, '1582528593');
INSERT INTO `index_input` VALUES ('520', null, '60', 'ticket', null, 'ticket', '2', '2', '0', '1', '4', '0', '1', null, null, '0', null, null, null, null, '1582528602');
INSERT INTO `index_input` VALUES ('521', null, '60', 'date2', null, 'date2', '2', '2', '0', '8', '2', '11', '1', null, null, '0', null, null, null, null, '1582528609');
INSERT INTO `index_input` VALUES ('522', null, '61', '分享标题', '', 'share_title', '2', '2', '0', '1', '1', '200', '2', '', '', '100', '1', '', '1', '', '1582528647');
INSERT INTO `index_input` VALUES ('523', null, '61', '分享图片', '', 'share_img', '2', '2', '0', '7', '4', '0', '2', '', '', '60', '1', '', '1', '', '1582528657');
INSERT INTO `index_input` VALUES ('524', null, '61', '分享内容', '', 'intro', '2', '2', '200', '3', '4', '0', '1', '', '', '0', '1', '', '1', '', '1582528676');

-- ----------------------------
-- Table structure for `index_input_type`
-- ----------------------------
DROP TABLE IF EXISTS `index_input_type`;
CREATE TABLE `index_input_type` (
  `input_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `input_type_name` varchar(10) DEFAULT NULL,
  `is_parent` int(10) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  PRIMARY KEY (`input_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_input_type
-- ----------------------------
INSERT INTO `index_input_type` VALUES ('1', '输入框', null, null);
INSERT INTO `index_input_type` VALUES ('2', '多行框', null, null);
INSERT INTO `index_input_type` VALUES ('3', '智能口', null, null);
INSERT INTO `index_input_type` VALUES ('4', '多选框', '2', null);
INSERT INTO `index_input_type` VALUES ('5', '单选框', '2', null);
INSERT INTO `index_input_type` VALUES ('6', '下拉框', '2', null);
INSERT INTO `index_input_type` VALUES ('7', '上传口', null, null);
INSERT INTO `index_input_type` VALUES ('8', '日期框', null, null);
INSERT INTO `index_input_type` VALUES ('9', '大文件上传口', null, null);
INSERT INTO `index_input_type` VALUES ('10', '颜色拾取', null, null);

-- ----------------------------
-- Table structure for `index_link`
-- ----------------------------
DROP TABLE IF EXISTS `index_link`;
CREATE TABLE `index_link` (
  `link_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `link_name` varchar(30) DEFAULT NULL,
  `link_url` varchar(99) DEFAULT NULL,
  `link_img` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_link
-- ----------------------------

-- ----------------------------
-- Table structure for `index_member`
-- ----------------------------
DROP TABLE IF EXISTS `index_member`;
CREATE TABLE `index_member` (
  `member_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `username` varchar(99) DEFAULT NULL,
  `password` varchar(99) DEFAULT NULL,
  `head_img` varchar(99) DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `birth_date` int(10) DEFAULT NULL,
  `address` varchar(99) DEFAULT NULL,
  `openid` longtext,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_member
-- ----------------------------

-- ----------------------------
-- Table structure for `index_memberlog`
-- ----------------------------
DROP TABLE IF EXISTS `index_memberlog`;
CREATE TABLE `index_memberlog` (
  `memberlog_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `member_id` int(10) DEFAULT NULL,
  `ip` varchar(99) DEFAULT NULL,
  `ip_address` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`memberlog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_memberlog
-- ----------------------------

-- ----------------------------
-- Table structure for `index_message`
-- ----------------------------
DROP TABLE IF EXISTS `index_message`;
CREATE TABLE `index_message` (
  `message_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(199) DEFAULT NULL,
  `keywords` varchar(199) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `version_id` int(10) NOT NULL,
  `tel` varchar(99) DEFAULT NULL,
  `Email` varchar(99) DEFAULT NULL,
  `theme` varchar(99) DEFAULT NULL,
  `content` varchar(99) DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `person` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_message
-- ----------------------------

-- ----------------------------
-- Table structure for `index_news`
-- ----------------------------
DROP TABLE IF EXISTS `index_news`;
CREATE TABLE `index_news` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(199) DEFAULT NULL,
  `keywords` varchar(199) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `version_id` int(10) NOT NULL,
  `news_title` varchar(99) DEFAULT NULL,
  `news_intro` varchar(500) DEFAULT NULL,
  `news_author` varchar(20) DEFAULT NULL,
  `news_source` varchar(20) DEFAULT NULL,
  `news_content` longtext,
  `news_img` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_news
-- ----------------------------

-- ----------------------------
-- Table structure for `index_order`
-- ----------------------------
DROP TABLE IF EXISTS `index_order`;
CREATE TABLE `index_order` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `order_number` varchar(99) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `pay_date` int(10) DEFAULT NULL,
  `consignee` varchar(30) DEFAULT NULL,
  `address` varchar(199) DEFAULT NULL,
  `phone` varchar(99) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `freight` float DEFAULT NULL,
  `message` varchar(999) DEFAULT NULL,
  `note` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_order
-- ----------------------------

-- ----------------------------
-- Table structure for `index_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `index_order_goods`;
CREATE TABLE `index_order_goods` (
  `order_goods_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `goods_id` int(10) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `goods_name` varchar(99) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `goods_img` varchar(99) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `pay_date` int(10) DEFAULT NULL,
  `order_number` varchar(30) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `name` varchar(99) DEFAULT NULL,
  `value` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`order_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `index_pai`
-- ----------------------------
DROP TABLE IF EXISTS `index_pai`;
CREATE TABLE `index_pai` (
  `pai_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `name` varchar(99) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`pai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_pai
-- ----------------------------
INSERT INTO `index_pai` VALUES ('1', '61', '1515034997', '', '', '', '1', '卡西欧PX-150', '');
INSERT INTO `index_pai` VALUES ('2', '61', '1515035006', '', '', '', '1', '海伦120se', '');
INSERT INTO `index_pai` VALUES ('3', '61', '1515035012', '', '', '', '1', 'P-85', '');
INSERT INTO `index_pai` VALUES ('4', '61', '1515035033', '', '', '', '1', 'NK-21B', '');

-- ----------------------------
-- Table structure for `index_permission`
-- ----------------------------
DROP TABLE IF EXISTS `index_permission`;
CREATE TABLE `index_permission` (
  `permission_id` int(10) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1----查看 2-----添加 3-----编辑  4-----删除',
  `admin_classify_id` int(10) DEFAULT NULL,
  `admin_classify_permission` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classify_id` int(10) DEFAULT NULL,
  `classify_permission` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of index_permission
-- ----------------------------
INSERT INTO `index_permission` VALUES ('1', '1', '2', '2_1', null, null, '7');
INSERT INTO `index_permission` VALUES ('2', '3', '2', '2_3', null, null, '7');
INSERT INTO `index_permission` VALUES ('3', '1', null, null, '2', '2_1', '7');
INSERT INTO `index_permission` VALUES ('4', '2', null, null, '2', '2_2', '7');
INSERT INTO `index_permission` VALUES ('5', '3', null, null, '2', '2_3', '7');
INSERT INTO `index_permission` VALUES ('6', '4', null, null, '2', '2_4', '7');
INSERT INTO `index_permission` VALUES ('7', '5', null, null, '2', '2_5', '7');

-- ----------------------------
-- Table structure for `index_query`
-- ----------------------------
DROP TABLE IF EXISTS `index_query`;
CREATE TABLE `index_query` (
  `query_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `name` varchar(99) DEFAULT NULL,
  `query_number` varchar(99) DEFAULT NULL,
  `query_content` longtext,
  PRIMARY KEY (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_query
-- ----------------------------

-- ----------------------------
-- Table structure for `index_recruit`
-- ----------------------------
DROP TABLE IF EXISTS `index_recruit`;
CREATE TABLE `index_recruit` (
  `recruit_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `job_name` varchar(99) DEFAULT NULL,
  `job_type` varchar(30) DEFAULT NULL,
  `work_place` varchar(30) DEFAULT NULL,
  `work_experience` varchar(30) DEFAULT NULL,
  `schooling` varchar(30) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `job_description` varchar(399) DEFAULT NULL,
  `job_requirement` varchar(399) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`recruit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_recruit
-- ----------------------------

-- ----------------------------
-- Table structure for `index_region`
-- ----------------------------
DROP TABLE IF EXISTS `index_region`;
CREATE TABLE `index_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `region_pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`region_pid`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_region
-- ----------------------------
INSERT INTO `index_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `index_region` VALUES ('2', '1', '北京市', '1', '0');
INSERT INTO `index_region` VALUES ('3', '1', '安徽省', '1', '0');
INSERT INTO `index_region` VALUES ('4', '1', '福建省', '1', '0');
INSERT INTO `index_region` VALUES ('5', '1', '甘肃省', '1', '0');
INSERT INTO `index_region` VALUES ('6', '1', '广东省', '1', '0');
INSERT INTO `index_region` VALUES ('7', '1', '广西省', '1', '0');
INSERT INTO `index_region` VALUES ('8', '1', '贵州省', '1', '0');
INSERT INTO `index_region` VALUES ('9', '1', '海南省', '1', '0');
INSERT INTO `index_region` VALUES ('10', '1', '河北省', '1', '0');
INSERT INTO `index_region` VALUES ('11', '1', '河南省', '1', '0');
INSERT INTO `index_region` VALUES ('12', '1', '黑龙江省', '1', '0');
INSERT INTO `index_region` VALUES ('13', '1', '湖北省', '1', '0');
INSERT INTO `index_region` VALUES ('14', '1', '湖南省', '1', '0');
INSERT INTO `index_region` VALUES ('15', '1', '吉林省', '1', '0');
INSERT INTO `index_region` VALUES ('16', '1', '江苏省', '1', '0');
INSERT INTO `index_region` VALUES ('17', '1', '江西省', '1', '0');
INSERT INTO `index_region` VALUES ('18', '1', '辽宁省', '1', '0');
INSERT INTO `index_region` VALUES ('19', '1', '内蒙自治区', '1', '0');
INSERT INTO `index_region` VALUES ('20', '1', '宁夏自治区', '1', '0');
INSERT INTO `index_region` VALUES ('21', '1', '青海省', '1', '0');
INSERT INTO `index_region` VALUES ('22', '1', '山东省', '1', '0');
INSERT INTO `index_region` VALUES ('23', '1', '山西省', '1', '0');
INSERT INTO `index_region` VALUES ('24', '1', '陕西省', '1', '0');
INSERT INTO `index_region` VALUES ('25', '1', '上海市', '1', '0');
INSERT INTO `index_region` VALUES ('26', '1', '四川省', '1', '0');
INSERT INTO `index_region` VALUES ('27', '1', '天津市', '1', '0');
INSERT INTO `index_region` VALUES ('28', '1', '西藏自治区', '1', '0');
INSERT INTO `index_region` VALUES ('29', '1', '新疆维吾尔自治区', '1', '0');
INSERT INTO `index_region` VALUES ('30', '1', '云南省', '1', '0');
INSERT INTO `index_region` VALUES ('31', '1', '浙江省', '1', '0');
INSERT INTO `index_region` VALUES ('32', '1', '重庆市', '1', '0');
INSERT INTO `index_region` VALUES ('33', '1', '香港特别行政区', '1', '0');
INSERT INTO `index_region` VALUES ('34', '1', '澳门特别行政区', '1', '0');
INSERT INTO `index_region` VALUES ('35', '1', '台湾省', '1', '0');
INSERT INTO `index_region` VALUES ('36', '3', '安庆市', '2', '0');
INSERT INTO `index_region` VALUES ('37', '3', '蚌埠市', '2', '0');
INSERT INTO `index_region` VALUES ('38', '3', '巢湖市', '2', '0');
INSERT INTO `index_region` VALUES ('39', '3', '池州市', '2', '0');
INSERT INTO `index_region` VALUES ('40', '3', '滁州市', '2', '0');
INSERT INTO `index_region` VALUES ('41', '3', '阜阳市', '2', '0');
INSERT INTO `index_region` VALUES ('42', '3', '淮北市', '2', '0');
INSERT INTO `index_region` VALUES ('43', '3', '淮南市', '2', '0');
INSERT INTO `index_region` VALUES ('44', '3', '黄山市', '2', '0');
INSERT INTO `index_region` VALUES ('45', '3', '六安市', '2', '0');
INSERT INTO `index_region` VALUES ('46', '3', '马鞍山市', '2', '0');
INSERT INTO `index_region` VALUES ('47', '3', '宿州市', '2', '0');
INSERT INTO `index_region` VALUES ('48', '3', '铜陵市', '2', '0');
INSERT INTO `index_region` VALUES ('49', '3', '芜湖市', '2', '0');
INSERT INTO `index_region` VALUES ('50', '3', '宣城市', '2', '0');
INSERT INTO `index_region` VALUES ('51', '3', '亳州市', '2', '0');
INSERT INTO `index_region` VALUES ('52', '2', '市辖区/县', '2', '0');
INSERT INTO `index_region` VALUES ('53', '4', '福州市', '2', '0');
INSERT INTO `index_region` VALUES ('54', '4', '龙岩市', '2', '0');
INSERT INTO `index_region` VALUES ('55', '4', '南平市', '2', '0');
INSERT INTO `index_region` VALUES ('56', '4', '宁德市', '2', '0');
INSERT INTO `index_region` VALUES ('57', '4', '莆田市', '2', '0');
INSERT INTO `index_region` VALUES ('58', '4', '泉州市', '2', '0');
INSERT INTO `index_region` VALUES ('59', '4', '三明市', '2', '0');
INSERT INTO `index_region` VALUES ('60', '4', '厦门市', '2', '0');
INSERT INTO `index_region` VALUES ('61', '4', '漳州市', '2', '0');
INSERT INTO `index_region` VALUES ('62', '5', '兰州市', '2', '0');
INSERT INTO `index_region` VALUES ('63', '5', '白银市', '2', '0');
INSERT INTO `index_region` VALUES ('64', '5', '定西市', '2', '0');
INSERT INTO `index_region` VALUES ('65', '5', '甘南市', '2', '0');
INSERT INTO `index_region` VALUES ('66', '5', '嘉峪关市', '2', '0');
INSERT INTO `index_region` VALUES ('67', '5', '金昌市', '2', '0');
INSERT INTO `index_region` VALUES ('68', '5', '酒泉市', '2', '0');
INSERT INTO `index_region` VALUES ('69', '5', '临夏市', '2', '0');
INSERT INTO `index_region` VALUES ('70', '5', '陇南市', '2', '0');
INSERT INTO `index_region` VALUES ('71', '5', '平凉市', '2', '0');
INSERT INTO `index_region` VALUES ('72', '5', '庆阳市', '2', '0');
INSERT INTO `index_region` VALUES ('73', '5', '天水市', '2', '0');
INSERT INTO `index_region` VALUES ('74', '5', '武威市', '2', '0');
INSERT INTO `index_region` VALUES ('75', '5', '张掖市', '2', '0');
INSERT INTO `index_region` VALUES ('76', '6', '广州市', '2', '0');
INSERT INTO `index_region` VALUES ('77', '6', '深圳市', '2', '0');
INSERT INTO `index_region` VALUES ('78', '6', '潮州市', '2', '0');
INSERT INTO `index_region` VALUES ('79', '6', '东莞市', '2', '0');
INSERT INTO `index_region` VALUES ('80', '6', '佛山市', '2', '0');
INSERT INTO `index_region` VALUES ('81', '6', '河源市', '2', '0');
INSERT INTO `index_region` VALUES ('82', '6', '惠州市', '2', '0');
INSERT INTO `index_region` VALUES ('83', '6', '江门市', '2', '0');
INSERT INTO `index_region` VALUES ('84', '6', '揭阳市', '2', '0');
INSERT INTO `index_region` VALUES ('85', '6', '茂名市', '2', '0');
INSERT INTO `index_region` VALUES ('86', '6', '梅州市', '2', '0');
INSERT INTO `index_region` VALUES ('87', '6', '清远市', '2', '0');
INSERT INTO `index_region` VALUES ('88', '6', '汕头市', '2', '0');
INSERT INTO `index_region` VALUES ('89', '6', '汕尾市', '2', '0');
INSERT INTO `index_region` VALUES ('90', '6', '韶关市', '2', '0');
INSERT INTO `index_region` VALUES ('91', '6', '阳江市', '2', '0');
INSERT INTO `index_region` VALUES ('92', '6', '云浮市', '2', '0');
INSERT INTO `index_region` VALUES ('93', '6', '湛江市', '2', '0');
INSERT INTO `index_region` VALUES ('94', '6', '肇庆市', '2', '0');
INSERT INTO `index_region` VALUES ('95', '6', '中山市', '2', '0');
INSERT INTO `index_region` VALUES ('96', '6', '珠海市', '2', '0');
INSERT INTO `index_region` VALUES ('97', '7', '南宁市', '2', '0');
INSERT INTO `index_region` VALUES ('98', '7', '桂林市', '2', '0');
INSERT INTO `index_region` VALUES ('99', '7', '百色市', '2', '0');
INSERT INTO `index_region` VALUES ('100', '7', '北海市', '2', '0');
INSERT INTO `index_region` VALUES ('101', '7', '崇左市', '2', '0');
INSERT INTO `index_region` VALUES ('102', '7', '防城港市', '2', '0');
INSERT INTO `index_region` VALUES ('103', '7', '贵港市', '2', '0');
INSERT INTO `index_region` VALUES ('104', '7', '河池市', '2', '0');
INSERT INTO `index_region` VALUES ('105', '7', '贺州市', '2', '0');
INSERT INTO `index_region` VALUES ('106', '7', '来宾市', '2', '0');
INSERT INTO `index_region` VALUES ('107', '7', '柳州市', '2', '0');
INSERT INTO `index_region` VALUES ('108', '7', '钦州市', '2', '0');
INSERT INTO `index_region` VALUES ('109', '7', '梧州市', '2', '0');
INSERT INTO `index_region` VALUES ('110', '7', '玉林市', '2', '0');
INSERT INTO `index_region` VALUES ('111', '8', '贵阳市', '2', '0');
INSERT INTO `index_region` VALUES ('112', '8', '安顺市', '2', '0');
INSERT INTO `index_region` VALUES ('113', '8', '毕节市', '2', '0');
INSERT INTO `index_region` VALUES ('114', '8', '六盘水市', '2', '0');
INSERT INTO `index_region` VALUES ('115', '8', '黔东南市', '2', '0');
INSERT INTO `index_region` VALUES ('116', '8', '黔南市', '2', '0');
INSERT INTO `index_region` VALUES ('117', '8', '黔西南市', '2', '0');
INSERT INTO `index_region` VALUES ('118', '8', '铜仁市', '2', '0');
INSERT INTO `index_region` VALUES ('119', '8', '遵义市', '2', '0');
INSERT INTO `index_region` VALUES ('120', '9', '海口市', '2', '0');
INSERT INTO `index_region` VALUES ('121', '9', '三亚市', '2', '0');
INSERT INTO `index_region` VALUES ('122', '9', '白沙市', '2', '0');
INSERT INTO `index_region` VALUES ('123', '9', '保亭市', '2', '0');
INSERT INTO `index_region` VALUES ('124', '9', '昌江市', '2', '0');
INSERT INTO `index_region` VALUES ('125', '9', '澄迈县市', '2', '0');
INSERT INTO `index_region` VALUES ('126', '9', '定安县市', '2', '0');
INSERT INTO `index_region` VALUES ('127', '9', '东方市', '2', '0');
INSERT INTO `index_region` VALUES ('128', '9', '乐东市', '2', '0');
INSERT INTO `index_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `index_region` VALUES ('130', '9', '陵水市', '2', '0');
INSERT INTO `index_region` VALUES ('131', '9', '琼海市', '2', '0');
INSERT INTO `index_region` VALUES ('132', '9', '琼中市', '2', '0');
INSERT INTO `index_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `index_region` VALUES ('134', '9', '万宁市', '2', '0');
INSERT INTO `index_region` VALUES ('135', '9', '文昌市', '2', '0');
INSERT INTO `index_region` VALUES ('136', '9', '五指山市', '2', '0');
INSERT INTO `index_region` VALUES ('137', '9', '儋州市', '2', '0');
INSERT INTO `index_region` VALUES ('138', '10', '石家庄市', '2', '0');
INSERT INTO `index_region` VALUES ('139', '10', '保定市', '2', '0');
INSERT INTO `index_region` VALUES ('140', '10', '沧州市', '2', '0');
INSERT INTO `index_region` VALUES ('141', '10', '承德市', '2', '0');
INSERT INTO `index_region` VALUES ('142', '10', '邯郸市', '2', '0');
INSERT INTO `index_region` VALUES ('143', '10', '衡水市', '2', '0');
INSERT INTO `index_region` VALUES ('144', '10', '廊坊市', '2', '0');
INSERT INTO `index_region` VALUES ('145', '10', '秦皇岛市', '2', '0');
INSERT INTO `index_region` VALUES ('146', '10', '唐山市', '2', '0');
INSERT INTO `index_region` VALUES ('147', '10', '邢台市', '2', '0');
INSERT INTO `index_region` VALUES ('148', '10', '张家口市', '2', '0');
INSERT INTO `index_region` VALUES ('149', '11', '郑州市', '2', '0');
INSERT INTO `index_region` VALUES ('150', '11', '洛阳市', '2', '0');
INSERT INTO `index_region` VALUES ('151', '11', '开封市', '2', '0');
INSERT INTO `index_region` VALUES ('152', '11', '安阳市', '2', '0');
INSERT INTO `index_region` VALUES ('153', '11', '鹤壁市', '2', '0');
INSERT INTO `index_region` VALUES ('154', '11', '济源市', '2', '0');
INSERT INTO `index_region` VALUES ('155', '11', '焦作市', '2', '0');
INSERT INTO `index_region` VALUES ('156', '11', '南阳市', '2', '0');
INSERT INTO `index_region` VALUES ('157', '11', '平顶山市', '2', '0');
INSERT INTO `index_region` VALUES ('158', '11', '三门峡市', '2', '0');
INSERT INTO `index_region` VALUES ('159', '11', '商丘市', '2', '0');
INSERT INTO `index_region` VALUES ('160', '11', '新乡市', '2', '0');
INSERT INTO `index_region` VALUES ('161', '11', '信阳市', '2', '0');
INSERT INTO `index_region` VALUES ('162', '11', '许昌市', '2', '0');
INSERT INTO `index_region` VALUES ('163', '11', '周口市', '2', '0');
INSERT INTO `index_region` VALUES ('164', '11', '驻马店市', '2', '0');
INSERT INTO `index_region` VALUES ('165', '11', '漯河市', '2', '0');
INSERT INTO `index_region` VALUES ('166', '11', '濮阳市', '2', '0');
INSERT INTO `index_region` VALUES ('167', '12', '哈尔滨市', '2', '0');
INSERT INTO `index_region` VALUES ('168', '12', '大庆市', '2', '0');
INSERT INTO `index_region` VALUES ('169', '12', '大兴安岭市', '2', '0');
INSERT INTO `index_region` VALUES ('170', '12', '鹤岗市', '2', '0');
INSERT INTO `index_region` VALUES ('171', '12', '黑河市', '2', '0');
INSERT INTO `index_region` VALUES ('172', '12', '鸡西市', '2', '0');
INSERT INTO `index_region` VALUES ('173', '12', '佳木斯市', '2', '0');
INSERT INTO `index_region` VALUES ('174', '12', '牡丹江市', '2', '0');
INSERT INTO `index_region` VALUES ('175', '12', '七台河市', '2', '0');
INSERT INTO `index_region` VALUES ('176', '12', '齐齐哈尔市', '2', '0');
INSERT INTO `index_region` VALUES ('177', '12', '双鸭山市', '2', '0');
INSERT INTO `index_region` VALUES ('178', '12', '绥化市', '2', '0');
INSERT INTO `index_region` VALUES ('179', '12', '伊春市', '2', '0');
INSERT INTO `index_region` VALUES ('180', '13', '武汉市', '2', '0');
INSERT INTO `index_region` VALUES ('181', '13', '仙桃市', '2', '0');
INSERT INTO `index_region` VALUES ('182', '13', '鄂州市', '2', '0');
INSERT INTO `index_region` VALUES ('183', '13', '黄冈市', '2', '0');
INSERT INTO `index_region` VALUES ('184', '13', '黄石市', '2', '0');
INSERT INTO `index_region` VALUES ('185', '13', '荆门市', '2', '0');
INSERT INTO `index_region` VALUES ('186', '13', '荆州市', '2', '0');
INSERT INTO `index_region` VALUES ('187', '13', '潜江市', '2', '0');
INSERT INTO `index_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `index_region` VALUES ('189', '13', '十堰市', '2', '0');
INSERT INTO `index_region` VALUES ('190', '13', '随州市', '2', '0');
INSERT INTO `index_region` VALUES ('191', '13', '天门市', '2', '0');
INSERT INTO `index_region` VALUES ('192', '13', '咸宁市', '2', '0');
INSERT INTO `index_region` VALUES ('193', '13', '襄樊市', '2', '0');
INSERT INTO `index_region` VALUES ('194', '13', '孝感市', '2', '0');
INSERT INTO `index_region` VALUES ('195', '13', '宜昌市', '2', '0');
INSERT INTO `index_region` VALUES ('196', '13', '恩施市', '2', '0');
INSERT INTO `index_region` VALUES ('197', '14', '长沙市', '2', '0');
INSERT INTO `index_region` VALUES ('198', '14', '张家界市', '2', '0');
INSERT INTO `index_region` VALUES ('199', '14', '常德市', '2', '0');
INSERT INTO `index_region` VALUES ('200', '14', '郴州市', '2', '0');
INSERT INTO `index_region` VALUES ('201', '14', '衡阳市', '2', '0');
INSERT INTO `index_region` VALUES ('202', '14', '怀化市', '2', '0');
INSERT INTO `index_region` VALUES ('203', '14', '娄底市', '2', '0');
INSERT INTO `index_region` VALUES ('204', '14', '邵阳市', '2', '0');
INSERT INTO `index_region` VALUES ('205', '14', '湘潭市', '2', '0');
INSERT INTO `index_region` VALUES ('206', '14', '湘西市', '2', '0');
INSERT INTO `index_region` VALUES ('207', '14', '益阳市', '2', '0');
INSERT INTO `index_region` VALUES ('208', '14', '永州市', '2', '0');
INSERT INTO `index_region` VALUES ('209', '14', '岳阳市', '2', '0');
INSERT INTO `index_region` VALUES ('210', '14', '株洲市', '2', '0');
INSERT INTO `index_region` VALUES ('211', '15', '长春市', '2', '0');
INSERT INTO `index_region` VALUES ('212', '15', '吉林市', '2', '0');
INSERT INTO `index_region` VALUES ('213', '15', '白城市', '2', '0');
INSERT INTO `index_region` VALUES ('214', '15', '白山市', '2', '0');
INSERT INTO `index_region` VALUES ('215', '15', '辽源市', '2', '0');
INSERT INTO `index_region` VALUES ('216', '15', '四平市', '2', '0');
INSERT INTO `index_region` VALUES ('217', '15', '松原市', '2', '0');
INSERT INTO `index_region` VALUES ('218', '15', '通化市', '2', '0');
INSERT INTO `index_region` VALUES ('219', '15', '延边市', '2', '0');
INSERT INTO `index_region` VALUES ('220', '16', '南京市', '2', '0');
INSERT INTO `index_region` VALUES ('221', '16', '苏州市', '2', '0');
INSERT INTO `index_region` VALUES ('222', '16', '无锡市', '2', '0');
INSERT INTO `index_region` VALUES ('223', '16', '常州市', '2', '0');
INSERT INTO `index_region` VALUES ('224', '16', '淮安市', '2', '0');
INSERT INTO `index_region` VALUES ('225', '16', '连云港市', '2', '0');
INSERT INTO `index_region` VALUES ('226', '16', '南通市', '2', '0');
INSERT INTO `index_region` VALUES ('227', '16', '宿迁市', '2', '0');
INSERT INTO `index_region` VALUES ('228', '16', '泰州市', '2', '0');
INSERT INTO `index_region` VALUES ('229', '16', '徐州市', '2', '0');
INSERT INTO `index_region` VALUES ('230', '16', '盐城市', '2', '0');
INSERT INTO `index_region` VALUES ('231', '16', '扬州市', '2', '0');
INSERT INTO `index_region` VALUES ('232', '16', '镇江市', '2', '0');
INSERT INTO `index_region` VALUES ('233', '17', '南昌市', '2', '0');
INSERT INTO `index_region` VALUES ('234', '17', '抚州市', '2', '0');
INSERT INTO `index_region` VALUES ('235', '17', '赣州市', '2', '0');
INSERT INTO `index_region` VALUES ('236', '17', '吉安市', '2', '0');
INSERT INTO `index_region` VALUES ('237', '17', '景德镇市', '2', '0');
INSERT INTO `index_region` VALUES ('238', '17', '九江市', '2', '0');
INSERT INTO `index_region` VALUES ('239', '17', '萍乡市', '2', '0');
INSERT INTO `index_region` VALUES ('240', '17', '上饶市', '2', '0');
INSERT INTO `index_region` VALUES ('241', '17', '新余市', '2', '0');
INSERT INTO `index_region` VALUES ('242', '17', '宜春市', '2', '0');
INSERT INTO `index_region` VALUES ('243', '17', '鹰潭市', '2', '0');
INSERT INTO `index_region` VALUES ('244', '18', '沈阳市', '2', '0');
INSERT INTO `index_region` VALUES ('245', '18', '大连市', '2', '0');
INSERT INTO `index_region` VALUES ('246', '18', '鞍山市', '2', '0');
INSERT INTO `index_region` VALUES ('247', '18', '本溪市', '2', '0');
INSERT INTO `index_region` VALUES ('248', '18', '朝阳市', '2', '0');
INSERT INTO `index_region` VALUES ('249', '18', '丹东市', '2', '0');
INSERT INTO `index_region` VALUES ('250', '18', '抚顺市', '2', '0');
INSERT INTO `index_region` VALUES ('251', '18', '阜新市', '2', '0');
INSERT INTO `index_region` VALUES ('252', '18', '葫芦岛市', '2', '0');
INSERT INTO `index_region` VALUES ('253', '18', '锦州市', '2', '0');
INSERT INTO `index_region` VALUES ('254', '18', '辽阳市', '2', '0');
INSERT INTO `index_region` VALUES ('255', '18', '盘锦市', '2', '0');
INSERT INTO `index_region` VALUES ('256', '18', '铁岭市', '2', '0');
INSERT INTO `index_region` VALUES ('257', '18', '营口市', '2', '0');
INSERT INTO `index_region` VALUES ('258', '19', '呼和浩特市', '2', '0');
INSERT INTO `index_region` VALUES ('259', '19', '阿拉善盟市', '2', '0');
INSERT INTO `index_region` VALUES ('260', '19', '巴彦淖尔盟市', '2', '0');
INSERT INTO `index_region` VALUES ('261', '19', '包头市', '2', '0');
INSERT INTO `index_region` VALUES ('262', '19', '赤峰市', '2', '0');
INSERT INTO `index_region` VALUES ('263', '19', '鄂尔多斯市', '2', '0');
INSERT INTO `index_region` VALUES ('264', '19', '呼伦贝尔市', '2', '0');
INSERT INTO `index_region` VALUES ('265', '19', '通辽市', '2', '0');
INSERT INTO `index_region` VALUES ('266', '19', '乌海市', '2', '0');
INSERT INTO `index_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `index_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `index_region` VALUES ('269', '19', '兴安盟市', '2', '0');
INSERT INTO `index_region` VALUES ('270', '20', '银川市', '2', '0');
INSERT INTO `index_region` VALUES ('271', '20', '固原市', '2', '0');
INSERT INTO `index_region` VALUES ('272', '20', '石嘴山市', '2', '0');
INSERT INTO `index_region` VALUES ('273', '20', '吴忠市', '2', '0');
INSERT INTO `index_region` VALUES ('274', '20', '中卫市', '2', '0');
INSERT INTO `index_region` VALUES ('275', '21', '西宁市', '2', '0');
INSERT INTO `index_region` VALUES ('276', '21', '果洛市', '2', '0');
INSERT INTO `index_region` VALUES ('277', '21', '海北市', '2', '0');
INSERT INTO `index_region` VALUES ('278', '21', '海东市', '2', '0');
INSERT INTO `index_region` VALUES ('279', '21', '海南市', '2', '0');
INSERT INTO `index_region` VALUES ('280', '21', '海西市', '2', '0');
INSERT INTO `index_region` VALUES ('281', '21', '黄南市', '2', '0');
INSERT INTO `index_region` VALUES ('282', '21', '玉树市', '2', '0');
INSERT INTO `index_region` VALUES ('283', '22', '济南市', '2', '0');
INSERT INTO `index_region` VALUES ('284', '22', '青岛市', '2', '0');
INSERT INTO `index_region` VALUES ('285', '22', '滨州市', '2', '0');
INSERT INTO `index_region` VALUES ('286', '22', '德州市', '2', '0');
INSERT INTO `index_region` VALUES ('287', '22', '东营市', '2', '0');
INSERT INTO `index_region` VALUES ('288', '22', '菏泽市', '2', '0');
INSERT INTO `index_region` VALUES ('289', '22', '济宁市', '2', '0');
INSERT INTO `index_region` VALUES ('290', '22', '莱芜市', '2', '0');
INSERT INTO `index_region` VALUES ('291', '22', '聊城市', '2', '0');
INSERT INTO `index_region` VALUES ('292', '22', '临沂市', '2', '0');
INSERT INTO `index_region` VALUES ('293', '22', '日照市', '2', '0');
INSERT INTO `index_region` VALUES ('294', '22', '泰安市', '2', '0');
INSERT INTO `index_region` VALUES ('295', '22', '威海市', '2', '0');
INSERT INTO `index_region` VALUES ('296', '22', '潍坊市', '2', '0');
INSERT INTO `index_region` VALUES ('297', '22', '烟台市', '2', '0');
INSERT INTO `index_region` VALUES ('298', '22', '枣庄市', '2', '0');
INSERT INTO `index_region` VALUES ('299', '22', '淄博市', '2', '0');
INSERT INTO `index_region` VALUES ('300', '23', '太原市', '2', '0');
INSERT INTO `index_region` VALUES ('301', '23', '长治市', '2', '0');
INSERT INTO `index_region` VALUES ('302', '23', '大同市', '2', '0');
INSERT INTO `index_region` VALUES ('303', '23', '晋城市', '2', '0');
INSERT INTO `index_region` VALUES ('304', '23', '晋中市', '2', '0');
INSERT INTO `index_region` VALUES ('305', '23', '临汾市', '2', '0');
INSERT INTO `index_region` VALUES ('306', '23', '吕梁市', '2', '0');
INSERT INTO `index_region` VALUES ('307', '23', '朔州市', '2', '0');
INSERT INTO `index_region` VALUES ('308', '23', '忻州市', '2', '0');
INSERT INTO `index_region` VALUES ('309', '23', '阳泉市', '2', '0');
INSERT INTO `index_region` VALUES ('310', '23', '运城市', '2', '0');
INSERT INTO `index_region` VALUES ('311', '24', '西安市', '2', '0');
INSERT INTO `index_region` VALUES ('312', '24', '安康市', '2', '0');
INSERT INTO `index_region` VALUES ('313', '24', '宝鸡市', '2', '0');
INSERT INTO `index_region` VALUES ('314', '24', '汉中市', '2', '0');
INSERT INTO `index_region` VALUES ('315', '24', '商洛市', '2', '0');
INSERT INTO `index_region` VALUES ('316', '24', '铜川市', '2', '0');
INSERT INTO `index_region` VALUES ('317', '24', '渭南市', '2', '0');
INSERT INTO `index_region` VALUES ('318', '24', '咸阳市', '2', '0');
INSERT INTO `index_region` VALUES ('319', '24', '延安市', '2', '0');
INSERT INTO `index_region` VALUES ('320', '24', '榆林市', '2', '0');
INSERT INTO `index_region` VALUES ('321', '25', '市辖区/县', '2', '0');
INSERT INTO `index_region` VALUES ('322', '26', '成都市', '2', '0');
INSERT INTO `index_region` VALUES ('323', '26', '绵阳市', '2', '0');
INSERT INTO `index_region` VALUES ('324', '26', '阿坝市', '2', '0');
INSERT INTO `index_region` VALUES ('325', '26', '巴中市', '2', '0');
INSERT INTO `index_region` VALUES ('326', '26', '达州市', '2', '0');
INSERT INTO `index_region` VALUES ('327', '26', '德阳市', '2', '0');
INSERT INTO `index_region` VALUES ('328', '26', '甘孜市', '2', '0');
INSERT INTO `index_region` VALUES ('329', '26', '广安市', '2', '0');
INSERT INTO `index_region` VALUES ('330', '26', '广元市', '2', '0');
INSERT INTO `index_region` VALUES ('331', '26', '乐山市', '2', '0');
INSERT INTO `index_region` VALUES ('332', '26', '凉山市', '2', '0');
INSERT INTO `index_region` VALUES ('333', '26', '眉山市', '2', '0');
INSERT INTO `index_region` VALUES ('334', '26', '南充市', '2', '0');
INSERT INTO `index_region` VALUES ('335', '26', '内江市', '2', '0');
INSERT INTO `index_region` VALUES ('336', '26', '攀枝花市', '2', '0');
INSERT INTO `index_region` VALUES ('337', '26', '遂宁市', '2', '0');
INSERT INTO `index_region` VALUES ('338', '26', '雅安市', '2', '0');
INSERT INTO `index_region` VALUES ('339', '26', '宜宾市', '2', '0');
INSERT INTO `index_region` VALUES ('340', '26', '资阳市', '2', '0');
INSERT INTO `index_region` VALUES ('341', '26', '自贡市', '2', '0');
INSERT INTO `index_region` VALUES ('342', '26', '泸州市', '2', '0');
INSERT INTO `index_region` VALUES ('343', '27', '市辖区/县', '2', '0');
INSERT INTO `index_region` VALUES ('344', '28', '拉萨市', '2', '0');
INSERT INTO `index_region` VALUES ('345', '28', '阿里市', '2', '0');
INSERT INTO `index_region` VALUES ('346', '28', '昌都市', '2', '0');
INSERT INTO `index_region` VALUES ('347', '28', '林芝市', '2', '0');
INSERT INTO `index_region` VALUES ('348', '28', '那曲市', '2', '0');
INSERT INTO `index_region` VALUES ('349', '28', '日喀则市', '2', '0');
INSERT INTO `index_region` VALUES ('350', '28', '山南市', '2', '0');
INSERT INTO `index_region` VALUES ('351', '29', '乌鲁木齐市', '2', '0');
INSERT INTO `index_region` VALUES ('352', '29', '阿克苏市', '2', '0');
INSERT INTO `index_region` VALUES ('353', '29', '阿拉尔市', '2', '0');
INSERT INTO `index_region` VALUES ('354', '29', '巴音郭楞市', '2', '0');
INSERT INTO `index_region` VALUES ('355', '29', '博尔塔拉市', '2', '0');
INSERT INTO `index_region` VALUES ('356', '29', '昌吉市', '2', '0');
INSERT INTO `index_region` VALUES ('357', '29', '哈密市', '2', '0');
INSERT INTO `index_region` VALUES ('358', '29', '和田市', '2', '0');
INSERT INTO `index_region` VALUES ('359', '29', '喀什市', '2', '0');
INSERT INTO `index_region` VALUES ('360', '29', '克拉玛依市', '2', '0');
INSERT INTO `index_region` VALUES ('361', '29', '克孜勒苏市', '2', '0');
INSERT INTO `index_region` VALUES ('362', '29', '石河子市', '2', '0');
INSERT INTO `index_region` VALUES ('363', '29', '图木舒克市', '2', '0');
INSERT INTO `index_region` VALUES ('364', '29', '吐鲁番市', '2', '0');
INSERT INTO `index_region` VALUES ('365', '29', '五家渠市', '2', '0');
INSERT INTO `index_region` VALUES ('366', '29', '伊犁市', '2', '0');
INSERT INTO `index_region` VALUES ('367', '30', '昆明市', '2', '0');
INSERT INTO `index_region` VALUES ('368', '30', '怒江市', '2', '0');
INSERT INTO `index_region` VALUES ('369', '30', '普洱市', '2', '0');
INSERT INTO `index_region` VALUES ('370', '30', '丽江市', '2', '0');
INSERT INTO `index_region` VALUES ('371', '30', '保山市', '2', '0');
INSERT INTO `index_region` VALUES ('372', '30', '楚雄市', '2', '0');
INSERT INTO `index_region` VALUES ('373', '30', '大理市', '2', '0');
INSERT INTO `index_region` VALUES ('374', '30', '德宏市', '2', '0');
INSERT INTO `index_region` VALUES ('375', '30', '迪庆市', '2', '0');
INSERT INTO `index_region` VALUES ('376', '30', '红河市', '2', '0');
INSERT INTO `index_region` VALUES ('377', '30', '临沧市', '2', '0');
INSERT INTO `index_region` VALUES ('378', '30', '曲靖市', '2', '0');
INSERT INTO `index_region` VALUES ('379', '30', '文山市', '2', '0');
INSERT INTO `index_region` VALUES ('380', '30', '西双版纳市', '2', '0');
INSERT INTO `index_region` VALUES ('381', '30', '玉溪市', '2', '0');
INSERT INTO `index_region` VALUES ('382', '30', '昭通市', '2', '0');
INSERT INTO `index_region` VALUES ('383', '31', '杭州市', '2', '0');
INSERT INTO `index_region` VALUES ('384', '31', '湖州市', '2', '0');
INSERT INTO `index_region` VALUES ('385', '31', '嘉兴市', '2', '0');
INSERT INTO `index_region` VALUES ('386', '31', '金华市', '2', '0');
INSERT INTO `index_region` VALUES ('387', '31', '丽水市', '2', '0');
INSERT INTO `index_region` VALUES ('388', '31', '宁波市', '2', '0');
INSERT INTO `index_region` VALUES ('389', '31', '绍兴市', '2', '0');
INSERT INTO `index_region` VALUES ('390', '31', '台州市', '2', '0');
INSERT INTO `index_region` VALUES ('391', '31', '温州市', '2', '0');
INSERT INTO `index_region` VALUES ('392', '31', '舟山市', '2', '0');
INSERT INTO `index_region` VALUES ('393', '31', '衢州市', '2', '0');
INSERT INTO `index_region` VALUES ('394', '32', '市辖区/县', '2', '0');
INSERT INTO `index_region` VALUES ('395', '33', '香港特别行政区', '2', '0');
INSERT INTO `index_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `index_region` VALUES ('397', '35', '台湾市', '2', '0');
INSERT INTO `index_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `index_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `index_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `index_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `index_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `index_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `index_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `index_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `index_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `index_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `index_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `index_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `index_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `index_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `index_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `index_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `index_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `index_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `index_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `index_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `index_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `index_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `index_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `index_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `index_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `index_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `index_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `index_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `index_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `index_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `index_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `index_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `index_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `index_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `index_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `index_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `index_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `index_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `index_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `index_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `index_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `index_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `index_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `index_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `index_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `index_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `index_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `index_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `index_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `index_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `index_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `index_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `index_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `index_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `index_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `index_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `index_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `index_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `index_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `index_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `index_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `index_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `index_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `index_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `index_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `index_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `index_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `index_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `index_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `index_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `index_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `index_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `index_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `index_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `index_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `index_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `index_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `index_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `index_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `index_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `index_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `index_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `index_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `index_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `index_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `index_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `index_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `index_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `index_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `index_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `index_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `index_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `index_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `index_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `index_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `index_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `index_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `index_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `index_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `index_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `index_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `index_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `index_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `index_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `index_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `index_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `index_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `index_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `index_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `index_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `index_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `index_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `index_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `index_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `index_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `index_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `index_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `index_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `index_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `index_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `index_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `index_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `index_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `index_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `index_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `index_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `index_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `index_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `index_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `index_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `index_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `index_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `index_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `index_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `index_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `index_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `index_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `index_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `index_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `index_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `index_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `index_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `index_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `index_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `index_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `index_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `index_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `index_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `index_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `index_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `index_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `index_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `index_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `index_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `index_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `index_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `index_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `index_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `index_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `index_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `index_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `index_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `index_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `index_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `index_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `index_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `index_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `index_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `index_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `index_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `index_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `index_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `index_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `index_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `index_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `index_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `index_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `index_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `index_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `index_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `index_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `index_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `index_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `index_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `index_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `index_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `index_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `index_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `index_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `index_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `index_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `index_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `index_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `index_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `index_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `index_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `index_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `index_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `index_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `index_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `index_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `index_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `index_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `index_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `index_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `index_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `index_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `index_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `index_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `index_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `index_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `index_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `index_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `index_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `index_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `index_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `index_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `index_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `index_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `index_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `index_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `index_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `index_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `index_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `index_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `index_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `index_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `index_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `index_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `index_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `index_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `index_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `index_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `index_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `index_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `index_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `index_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `index_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `index_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `index_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `index_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `index_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `index_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `index_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `index_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `index_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `index_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `index_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `index_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `index_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `index_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `index_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `index_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `index_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `index_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `index_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `index_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `index_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `index_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `index_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `index_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `index_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `index_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `index_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `index_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `index_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `index_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `index_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `index_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `index_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `index_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `index_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `index_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `index_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `index_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `index_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `index_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `index_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `index_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `index_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `index_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `index_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `index_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `index_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `index_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `index_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `index_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `index_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `index_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `index_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `index_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `index_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `index_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `index_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `index_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `index_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `index_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `index_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `index_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `index_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `index_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `index_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `index_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `index_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `index_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `index_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `index_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `index_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `index_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `index_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `index_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `index_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `index_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `index_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `index_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `index_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `index_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `index_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `index_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `index_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `index_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `index_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `index_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `index_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `index_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `index_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `index_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `index_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `index_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `index_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `index_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `index_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `index_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `index_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `index_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `index_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `index_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `index_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `index_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `index_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `index_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `index_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `index_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `index_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `index_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `index_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `index_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `index_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `index_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `index_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `index_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `index_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `index_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `index_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `index_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `index_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `index_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `index_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `index_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `index_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `index_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `index_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `index_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `index_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `index_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `index_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `index_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `index_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `index_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `index_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `index_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `index_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `index_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `index_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `index_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `index_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `index_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `index_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `index_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `index_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `index_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `index_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `index_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `index_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `index_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `index_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `index_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `index_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `index_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `index_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `index_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `index_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `index_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `index_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `index_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `index_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `index_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `index_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `index_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `index_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `index_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `index_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `index_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `index_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `index_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `index_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `index_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `index_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `index_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `index_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `index_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `index_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `index_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `index_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `index_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `index_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `index_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `index_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `index_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `index_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `index_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `index_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `index_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `index_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `index_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `index_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `index_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `index_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `index_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `index_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `index_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `index_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `index_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `index_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `index_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `index_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `index_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `index_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `index_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `index_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `index_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `index_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `index_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `index_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `index_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `index_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `index_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `index_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `index_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `index_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `index_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `index_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `index_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `index_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `index_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `index_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `index_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `index_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `index_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `index_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `index_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `index_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `index_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `index_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `index_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `index_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `index_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `index_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `index_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `index_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `index_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `index_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `index_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `index_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `index_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `index_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `index_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `index_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `index_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `index_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `index_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `index_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `index_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `index_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `index_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `index_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `index_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `index_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `index_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `index_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `index_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `index_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `index_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `index_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `index_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `index_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `index_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `index_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `index_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `index_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `index_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `index_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `index_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `index_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `index_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `index_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `index_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `index_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `index_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `index_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `index_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `index_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `index_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `index_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `index_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `index_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `index_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `index_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `index_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `index_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `index_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `index_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `index_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `index_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `index_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `index_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `index_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `index_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `index_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `index_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `index_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `index_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `index_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `index_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `index_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `index_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `index_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `index_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `index_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `index_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `index_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `index_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `index_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `index_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `index_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `index_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `index_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `index_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `index_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `index_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `index_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `index_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `index_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `index_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `index_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `index_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `index_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `index_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `index_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `index_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `index_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `index_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `index_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `index_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `index_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `index_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `index_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `index_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `index_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `index_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `index_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `index_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `index_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `index_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `index_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `index_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `index_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `index_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `index_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `index_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `index_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `index_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `index_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `index_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `index_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `index_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `index_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `index_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `index_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `index_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `index_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `index_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `index_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `index_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `index_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `index_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `index_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `index_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `index_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `index_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `index_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `index_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `index_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `index_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `index_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `index_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `index_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `index_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `index_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `index_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `index_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `index_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `index_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `index_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `index_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `index_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `index_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `index_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `index_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `index_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `index_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `index_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `index_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `index_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `index_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `index_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `index_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `index_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `index_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `index_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `index_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `index_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `index_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `index_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `index_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `index_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `index_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `index_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `index_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `index_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `index_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `index_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `index_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `index_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `index_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `index_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `index_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `index_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `index_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `index_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `index_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `index_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `index_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `index_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `index_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `index_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `index_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `index_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `index_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `index_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `index_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `index_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `index_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `index_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `index_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `index_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `index_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `index_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `index_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `index_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `index_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `index_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `index_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `index_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `index_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `index_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `index_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `index_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `index_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `index_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `index_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `index_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `index_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `index_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `index_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `index_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `index_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `index_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `index_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `index_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `index_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `index_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `index_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `index_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `index_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `index_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `index_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `index_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `index_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `index_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `index_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `index_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `index_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `index_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `index_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `index_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `index_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `index_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `index_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `index_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `index_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `index_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `index_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `index_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `index_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `index_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `index_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `index_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `index_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `index_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `index_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `index_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `index_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `index_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `index_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `index_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `index_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `index_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `index_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `index_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `index_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `index_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `index_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `index_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `index_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `index_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `index_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `index_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `index_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `index_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `index_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `index_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `index_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `index_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `index_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `index_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `index_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `index_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `index_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `index_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `index_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `index_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `index_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `index_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `index_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `index_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `index_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `index_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `index_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `index_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `index_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `index_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `index_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `index_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `index_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `index_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `index_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `index_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `index_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `index_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `index_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `index_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `index_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `index_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `index_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `index_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `index_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `index_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `index_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `index_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `index_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `index_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `index_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `index_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `index_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `index_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `index_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `index_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `index_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `index_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `index_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `index_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `index_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `index_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `index_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `index_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `index_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `index_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `index_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `index_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `index_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `index_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `index_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `index_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `index_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `index_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `index_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `index_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `index_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `index_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `index_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `index_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `index_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `index_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `index_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `index_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `index_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `index_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `index_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `index_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `index_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `index_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `index_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `index_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `index_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `index_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `index_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `index_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `index_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `index_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `index_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `index_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `index_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `index_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `index_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `index_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `index_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `index_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `index_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `index_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `index_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `index_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `index_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `index_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `index_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `index_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `index_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `index_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `index_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `index_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `index_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `index_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `index_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `index_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `index_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `index_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `index_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `index_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `index_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `index_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `index_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `index_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `index_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `index_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `index_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `index_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `index_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `index_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `index_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `index_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `index_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `index_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `index_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `index_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `index_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `index_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `index_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `index_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `index_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `index_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `index_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `index_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `index_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `index_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `index_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `index_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `index_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `index_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `index_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `index_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `index_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `index_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `index_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `index_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `index_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `index_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `index_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `index_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `index_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `index_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `index_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `index_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `index_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `index_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `index_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `index_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `index_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `index_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `index_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `index_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `index_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `index_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `index_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `index_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `index_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `index_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `index_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `index_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `index_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `index_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `index_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `index_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `index_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `index_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `index_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `index_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `index_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `index_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `index_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `index_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `index_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `index_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `index_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `index_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `index_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `index_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `index_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `index_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `index_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `index_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `index_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `index_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `index_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `index_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `index_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `index_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `index_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `index_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `index_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `index_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `index_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `index_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `index_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `index_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `index_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `index_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `index_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `index_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `index_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `index_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `index_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `index_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `index_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `index_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `index_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `index_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `index_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `index_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `index_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `index_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `index_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `index_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `index_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `index_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `index_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `index_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `index_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `index_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `index_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `index_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `index_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `index_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `index_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `index_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `index_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `index_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `index_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `index_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `index_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `index_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `index_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `index_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `index_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `index_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `index_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `index_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `index_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `index_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `index_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `index_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `index_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `index_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `index_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `index_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `index_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `index_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `index_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `index_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `index_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `index_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `index_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `index_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `index_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `index_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `index_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `index_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `index_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `index_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `index_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `index_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `index_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `index_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `index_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `index_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `index_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `index_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `index_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `index_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `index_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `index_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `index_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `index_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `index_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `index_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `index_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `index_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `index_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `index_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `index_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `index_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `index_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `index_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `index_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `index_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `index_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `index_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `index_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `index_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `index_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `index_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `index_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `index_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `index_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `index_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `index_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `index_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `index_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `index_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `index_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `index_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `index_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `index_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `index_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `index_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `index_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `index_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `index_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `index_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `index_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `index_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `index_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `index_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `index_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `index_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `index_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `index_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `index_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `index_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `index_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `index_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `index_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `index_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `index_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `index_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `index_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `index_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `index_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `index_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `index_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `index_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `index_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `index_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `index_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `index_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `index_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `index_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `index_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `index_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `index_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `index_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `index_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `index_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `index_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `index_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `index_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `index_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `index_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `index_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `index_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `index_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `index_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `index_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `index_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `index_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `index_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `index_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `index_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `index_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `index_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `index_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `index_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `index_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `index_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `index_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `index_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `index_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `index_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `index_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `index_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `index_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `index_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `index_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `index_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `index_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `index_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `index_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `index_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `index_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `index_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `index_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `index_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `index_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `index_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `index_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `index_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `index_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `index_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `index_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `index_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `index_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `index_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `index_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `index_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `index_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `index_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `index_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `index_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `index_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `index_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `index_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `index_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `index_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `index_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `index_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `index_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `index_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `index_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `index_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `index_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `index_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `index_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `index_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `index_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `index_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `index_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `index_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `index_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `index_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `index_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `index_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `index_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `index_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `index_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `index_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `index_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `index_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `index_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `index_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `index_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `index_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `index_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `index_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `index_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `index_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `index_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `index_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `index_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `index_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `index_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `index_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `index_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `index_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `index_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `index_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `index_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `index_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `index_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `index_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `index_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `index_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `index_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `index_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `index_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `index_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `index_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `index_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `index_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `index_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `index_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `index_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `index_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `index_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `index_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `index_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `index_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `index_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `index_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `index_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `index_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `index_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `index_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `index_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `index_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `index_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `index_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `index_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `index_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `index_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `index_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `index_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `index_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `index_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `index_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `index_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `index_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `index_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `index_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `index_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `index_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `index_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `index_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `index_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `index_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `index_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `index_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `index_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `index_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `index_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `index_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `index_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `index_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `index_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `index_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `index_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `index_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `index_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `index_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `index_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `index_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `index_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `index_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `index_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `index_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `index_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `index_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `index_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `index_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `index_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `index_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `index_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `index_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `index_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `index_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `index_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `index_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `index_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `index_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `index_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `index_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `index_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `index_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `index_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `index_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `index_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `index_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `index_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `index_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `index_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `index_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `index_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `index_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `index_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `index_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `index_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `index_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `index_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `index_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `index_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `index_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `index_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `index_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `index_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `index_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `index_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `index_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `index_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `index_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `index_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `index_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `index_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `index_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `index_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `index_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `index_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `index_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `index_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `index_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `index_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `index_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `index_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `index_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `index_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `index_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `index_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `index_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `index_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `index_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `index_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `index_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `index_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `index_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `index_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `index_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `index_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `index_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `index_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `index_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `index_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `index_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `index_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `index_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `index_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `index_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `index_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `index_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `index_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `index_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `index_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `index_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `index_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `index_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `index_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `index_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `index_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `index_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `index_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `index_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `index_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `index_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `index_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `index_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `index_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `index_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `index_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `index_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `index_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `index_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `index_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `index_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `index_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `index_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `index_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `index_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `index_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `index_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `index_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `index_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `index_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `index_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `index_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `index_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `index_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `index_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `index_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `index_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `index_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `index_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `index_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `index_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `index_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `index_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `index_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `index_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `index_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `index_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `index_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `index_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `index_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `index_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `index_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `index_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `index_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `index_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `index_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `index_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `index_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `index_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `index_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `index_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `index_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `index_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `index_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `index_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `index_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `index_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `index_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `index_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `index_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `index_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `index_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `index_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `index_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `index_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `index_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `index_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `index_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `index_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `index_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `index_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `index_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `index_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `index_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `index_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `index_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `index_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `index_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `index_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `index_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `index_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `index_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `index_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `index_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `index_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `index_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `index_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `index_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `index_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `index_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `index_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `index_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `index_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `index_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `index_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `index_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `index_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `index_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `index_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `index_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `index_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `index_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `index_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `index_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `index_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `index_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `index_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `index_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `index_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `index_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `index_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `index_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `index_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `index_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `index_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `index_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `index_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `index_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `index_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `index_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `index_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `index_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `index_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `index_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `index_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `index_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `index_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `index_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `index_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `index_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `index_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `index_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `index_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `index_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `index_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `index_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `index_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `index_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `index_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `index_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `index_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `index_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `index_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `index_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `index_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `index_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `index_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `index_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `index_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `index_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `index_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `index_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `index_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `index_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `index_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `index_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `index_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `index_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `index_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `index_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `index_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `index_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `index_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `index_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `index_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `index_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `index_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `index_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `index_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `index_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `index_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `index_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `index_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `index_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `index_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `index_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `index_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `index_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `index_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `index_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `index_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `index_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `index_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `index_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `index_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `index_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `index_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `index_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `index_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `index_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `index_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `index_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `index_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `index_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `index_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `index_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `index_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `index_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `index_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `index_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `index_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `index_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `index_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `index_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `index_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `index_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `index_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `index_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `index_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `index_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `index_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `index_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `index_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `index_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `index_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `index_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `index_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `index_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `index_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `index_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `index_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `index_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `index_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `index_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `index_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `index_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `index_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `index_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `index_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `index_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `index_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `index_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `index_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `index_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `index_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `index_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `index_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `index_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `index_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `index_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `index_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `index_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `index_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `index_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `index_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `index_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `index_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `index_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `index_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `index_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `index_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `index_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `index_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `index_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `index_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `index_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `index_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `index_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `index_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `index_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `index_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `index_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `index_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `index_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `index_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `index_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `index_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `index_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `index_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `index_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `index_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `index_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `index_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `index_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `index_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `index_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `index_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `index_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `index_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `index_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `index_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `index_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `index_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `index_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `index_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `index_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `index_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `index_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `index_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `index_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `index_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `index_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `index_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `index_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `index_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `index_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `index_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `index_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `index_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `index_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `index_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `index_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `index_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `index_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `index_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `index_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `index_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `index_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `index_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `index_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `index_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `index_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `index_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `index_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `index_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `index_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `index_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `index_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `index_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `index_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `index_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `index_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `index_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `index_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `index_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `index_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `index_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `index_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `index_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `index_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `index_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `index_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `index_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `index_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `index_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `index_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `index_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `index_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `index_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `index_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `index_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `index_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `index_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `index_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `index_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `index_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `index_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `index_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `index_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `index_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `index_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `index_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `index_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `index_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `index_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `index_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `index_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `index_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `index_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `index_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `index_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `index_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `index_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `index_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `index_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `index_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `index_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `index_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `index_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `index_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `index_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `index_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `index_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `index_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `index_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `index_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `index_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `index_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `index_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `index_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `index_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `index_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `index_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `index_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `index_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `index_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `index_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `index_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `index_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `index_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `index_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `index_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `index_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `index_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `index_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `index_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `index_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `index_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `index_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `index_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `index_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `index_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `index_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `index_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `index_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `index_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `index_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `index_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `index_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `index_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `index_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `index_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `index_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `index_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `index_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `index_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `index_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `index_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `index_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `index_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `index_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `index_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `index_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `index_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `index_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `index_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `index_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `index_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `index_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `index_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `index_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `index_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `index_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `index_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `index_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `index_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `index_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `index_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `index_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `index_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `index_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `index_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `index_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `index_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `index_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `index_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `index_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `index_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `index_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `index_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `index_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `index_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `index_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `index_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `index_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `index_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `index_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `index_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `index_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `index_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `index_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `index_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `index_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `index_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `index_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `index_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `index_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `index_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `index_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `index_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `index_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `index_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `index_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `index_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `index_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `index_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `index_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `index_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `index_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `index_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `index_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `index_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `index_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `index_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `index_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `index_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `index_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `index_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `index_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `index_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `index_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `index_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `index_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `index_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `index_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `index_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `index_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `index_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `index_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `index_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `index_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `index_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `index_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `index_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `index_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `index_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `index_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `index_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `index_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `index_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `index_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `index_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `index_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `index_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `index_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `index_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `index_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `index_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `index_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `index_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `index_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `index_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `index_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `index_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `index_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `index_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `index_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `index_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `index_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `index_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `index_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `index_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `index_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `index_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `index_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `index_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `index_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `index_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `index_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `index_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `index_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `index_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `index_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `index_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `index_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `index_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `index_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `index_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `index_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `index_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `index_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `index_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `index_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `index_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `index_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `index_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `index_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `index_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `index_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `index_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `index_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `index_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `index_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `index_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `index_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `index_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `index_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `index_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `index_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `index_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `index_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `index_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `index_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `index_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `index_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `index_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `index_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `index_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `index_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `index_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `index_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `index_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `index_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `index_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `index_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `index_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `index_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `index_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `index_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `index_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `index_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `index_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `index_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `index_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `index_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `index_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `index_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `index_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `index_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `index_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `index_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `index_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `index_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `index_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `index_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `index_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `index_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `index_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `index_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `index_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `index_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `index_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `index_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `index_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `index_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `index_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `index_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `index_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `index_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `index_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `index_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `index_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `index_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `index_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `index_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `index_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `index_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `index_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `index_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `index_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `index_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `index_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `index_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `index_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `index_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `index_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `index_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `index_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `index_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `index_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `index_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `index_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `index_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `index_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `index_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `index_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `index_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `index_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `index_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `index_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `index_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `index_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `index_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `index_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `index_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `index_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `index_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `index_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `index_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `index_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `index_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `index_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `index_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `index_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `index_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `index_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `index_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `index_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `index_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `index_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `index_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `index_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `index_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `index_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `index_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `index_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `index_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `index_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `index_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `index_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `index_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `index_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `index_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `index_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `index_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `index_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `index_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `index_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `index_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `index_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `index_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `index_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `index_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `index_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `index_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `index_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `index_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `index_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `index_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `index_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `index_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `index_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `index_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `index_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `index_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `index_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `index_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `index_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `index_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `index_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `index_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `index_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `index_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `index_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `index_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `index_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `index_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `index_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `index_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `index_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `index_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `index_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `index_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `index_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `index_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `index_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `index_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `index_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `index_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `index_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `index_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `index_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `index_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `index_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `index_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `index_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `index_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `index_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `index_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `index_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `index_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `index_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `index_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `index_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `index_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `index_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `index_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `index_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `index_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `index_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `index_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `index_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `index_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `index_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `index_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `index_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `index_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `index_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `index_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `index_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `index_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `index_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `index_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `index_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `index_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `index_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `index_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `index_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `index_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `index_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `index_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `index_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `index_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `index_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `index_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `index_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `index_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `index_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `index_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `index_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `index_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `index_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `index_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `index_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `index_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `index_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `index_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `index_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `index_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `index_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `index_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `index_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `index_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `index_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `index_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `index_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `index_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `index_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `index_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `index_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `index_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `index_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `index_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `index_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `index_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `index_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `index_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `index_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `index_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `index_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `index_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `index_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `index_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `index_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `index_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `index_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `index_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `index_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `index_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `index_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `index_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `index_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `index_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `index_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `index_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `index_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `index_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `index_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `index_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `index_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `index_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `index_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `index_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `index_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `index_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `index_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `index_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `index_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `index_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `index_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `index_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `index_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `index_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `index_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `index_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `index_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `index_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `index_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `index_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `index_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `index_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `index_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `index_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `index_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `index_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `index_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `index_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `index_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `index_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `index_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `index_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `index_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `index_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `index_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `index_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `index_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `index_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `index_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `index_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `index_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `index_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `index_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `index_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `index_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `index_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `index_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `index_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `index_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `index_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `index_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `index_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `index_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `index_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `index_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `index_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `index_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `index_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `index_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `index_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `index_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `index_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `index_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `index_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `index_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `index_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `index_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `index_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `index_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `index_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `index_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `index_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `index_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `index_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `index_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `index_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `index_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `index_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `index_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `index_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `index_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `index_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `index_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `index_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `index_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `index_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `index_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `index_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `index_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `index_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `index_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `index_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `index_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `index_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `index_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `index_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `index_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `index_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `index_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `index_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `index_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `index_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `index_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `index_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `index_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `index_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `index_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `index_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `index_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `index_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `index_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `index_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `index_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `index_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `index_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `index_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `index_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `index_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `index_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `index_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `index_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `index_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `index_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `index_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `index_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `index_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `index_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `index_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `index_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `index_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `index_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `index_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `index_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `index_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `index_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `index_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `index_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `index_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `index_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `index_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `index_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `index_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `index_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `index_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `index_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `index_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `index_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `index_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `index_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `index_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `index_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `index_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `index_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `index_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `index_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `index_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `index_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `index_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `index_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `index_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `index_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `index_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `index_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `index_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `index_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `index_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `index_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `index_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `index_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `index_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `index_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `index_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `index_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `index_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `index_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `index_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `index_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `index_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `index_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `index_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `index_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `index_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `index_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `index_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `index_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `index_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `index_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `index_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `index_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `index_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `index_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `index_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `index_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `index_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `index_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `index_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `index_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `index_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `index_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `index_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `index_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `index_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `index_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `index_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `index_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `index_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `index_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `index_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `index_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `index_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `index_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `index_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `index_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `index_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `index_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `index_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `index_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `index_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `index_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `index_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `index_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `index_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `index_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `index_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `index_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `index_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `index_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `index_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `index_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `index_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `index_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `index_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `index_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `index_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `index_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `index_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `index_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `index_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `index_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `index_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `index_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `index_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `index_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `index_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `index_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `index_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `index_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `index_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `index_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `index_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `index_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `index_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `index_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `index_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `index_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `index_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `index_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `index_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `index_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `index_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `index_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `index_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `index_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `index_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `index_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `index_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `index_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `index_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `index_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `index_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `index_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `index_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `index_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `index_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `index_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `index_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `index_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `index_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `index_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `index_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `index_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `index_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `index_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `index_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `index_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `index_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `index_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `index_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `index_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `index_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `index_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `index_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `index_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `index_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `index_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `index_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `index_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `index_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `index_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `index_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `index_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `index_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `index_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `index_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `index_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `index_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `index_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `index_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `index_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `index_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `index_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `index_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `index_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `index_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `index_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `index_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `index_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `index_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `index_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `index_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `index_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `index_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `index_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `index_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `index_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `index_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `index_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `index_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `index_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `index_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `index_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `index_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `index_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `index_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `index_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `index_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `index_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `index_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `index_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `index_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `index_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `index_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `index_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `index_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `index_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `index_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `index_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `index_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `index_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `index_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `index_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `index_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `index_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `index_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `index_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `index_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `index_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `index_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `index_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `index_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `index_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `index_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `index_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `index_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `index_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `index_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `index_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `index_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `index_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `index_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `index_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `index_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `index_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `index_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `index_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `index_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `index_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `index_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `index_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `index_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `index_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `index_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `index_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `index_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `index_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `index_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `index_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `index_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `index_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `index_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `index_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `index_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `index_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `index_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `index_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `index_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `index_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `index_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `index_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `index_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `index_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `index_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `index_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `index_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `index_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `index_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `index_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `index_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `index_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `index_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `index_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `index_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `index_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `index_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `index_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `index_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `index_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `index_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `index_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `index_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `index_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `index_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `index_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `index_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `index_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `index_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `index_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `index_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `index_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `index_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `index_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `index_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `index_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `index_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `index_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `index_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `index_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `index_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `index_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `index_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `index_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `index_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `index_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `index_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `index_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `index_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `index_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `index_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `index_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `index_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `index_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `index_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `index_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `index_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `index_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `index_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `index_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `index_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `index_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `index_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `index_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `index_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `index_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `index_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `index_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `index_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `index_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `index_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `index_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `index_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `index_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `index_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `index_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `index_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `index_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `index_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `index_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `index_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `index_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `index_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `index_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `index_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `index_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `index_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `index_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `index_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `index_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `index_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `index_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `index_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `index_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `index_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `index_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `index_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `index_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `index_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `index_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `index_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `index_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `index_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `index_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `index_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `index_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `index_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `index_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `index_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `index_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `index_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `index_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `index_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `index_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `index_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `index_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `index_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `index_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `index_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `index_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `index_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `index_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `index_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `index_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `index_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `index_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `index_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `index_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `index_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `index_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `index_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `index_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `index_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `index_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `index_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `index_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `index_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `index_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `index_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `index_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `index_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `index_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `index_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `index_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `index_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `index_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `index_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `index_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `index_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `index_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `index_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `index_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `index_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `index_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `index_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `index_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `index_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `index_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `index_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `index_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `index_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `index_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `index_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `index_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `index_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `index_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `index_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `index_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `index_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `index_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `index_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `index_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `index_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `index_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `index_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `index_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `index_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `index_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `index_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `index_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `index_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `index_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `index_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `index_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `index_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `index_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `index_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `index_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `index_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `index_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `index_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `index_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `index_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `index_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `index_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `index_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `index_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `index_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `index_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `index_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `index_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `index_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `index_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `index_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `index_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `index_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `index_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `index_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `index_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `index_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `index_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `index_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `index_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `index_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `index_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `index_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `index_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `index_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `index_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `index_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `index_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `index_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `index_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `index_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `index_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `index_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `index_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `index_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `index_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `index_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `index_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `index_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `index_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `index_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `index_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `index_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `index_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `index_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `index_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `index_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `index_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `index_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `index_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `index_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `index_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `index_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `index_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `index_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `index_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `index_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `index_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `index_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `index_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `index_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `index_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `index_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `index_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `index_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `index_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `index_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `index_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `index_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `index_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `index_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `index_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `index_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `index_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `index_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `index_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `index_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `index_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `index_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `index_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `index_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `index_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `index_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `index_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `index_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `index_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `index_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `index_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `index_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `index_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `index_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `index_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `index_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `index_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `index_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `index_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `index_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `index_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `index_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `index_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `index_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `index_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `index_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `index_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `index_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `index_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `index_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `index_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `index_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `index_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `index_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `index_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `index_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `index_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `index_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `index_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `index_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `index_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `index_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `index_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `index_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `index_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `index_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `index_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `index_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `index_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `index_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `index_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `index_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `index_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `index_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `index_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `index_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `index_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `index_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `index_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `index_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `index_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `index_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `index_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `index_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `index_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `index_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `index_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `index_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `index_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `index_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `index_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `index_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `index_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `index_region` VALUES ('3401', '3', '合肥市', '2', '0');
INSERT INTO `index_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `index_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `index_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `index_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `index_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `index_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `index_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for `index_relevance`
-- ----------------------------
DROP TABLE IF EXISTS `index_relevance`;
CREATE TABLE `index_relevance` (
  `relevance_id` int(10) NOT NULL AUTO_INCREMENT,
  `classify_id` int(10) DEFAULT NULL,
  `content_id` int(10) DEFAULT NULL,
  `main_id` int(1) DEFAULT '0',
  `type_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`relevance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_relevance
-- ----------------------------

-- ----------------------------
-- Table structure for `index_role`
-- ----------------------------
DROP TABLE IF EXISTS `index_role`;
CREATE TABLE `index_role` (
  `role_id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_describe` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of index_role
-- ----------------------------
INSERT INTO `index_role` VALUES ('1', '开发者管理', '开发者管理权利');
INSERT INTO `index_role` VALUES ('2', '超级管理员', '网站超级管理员权利');
INSERT INTO `index_role` VALUES ('3', '普通管理员', '网站管理权利');

-- ----------------------------
-- Table structure for `index_seo`
-- ----------------------------
DROP TABLE IF EXISTS `index_seo`;
CREATE TABLE `index_seo` (
  `seo_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) DEFAULT NULL,
  `keywords` varchar(99) DEFAULT NULL,
  `description` varchar(299) DEFAULT NULL,
  `version_id` int(10) NOT NULL,
  `module_name` varchar(99) DEFAULT NULL,
  `action_name` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`seo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_seo
-- ----------------------------
INSERT INTO `index_seo` VALUES ('1', '59', '1478158843', '添加收货地址', '添加收货地址', '添加收货地址', '1', 'member', 'add_address');
INSERT INTO `index_seo` VALUES ('2', '59', '1478158895', '个人中心', '个人中心', '个人中心', '1', 'member', 'index');
INSERT INTO `index_seo` VALUES ('3', '59', '1478158926', '确认订单', '确认订单', '确认订单', '1', 'order', 'buy_now');
INSERT INTO `index_seo` VALUES ('4', '59', '1478159366', '全部分类', '全部分类', '全部分类', '1', 'goods', 'classify');
INSERT INTO `index_seo` VALUES ('5', '59', '1478159379', '修改收货地址', '修改收货地址', '修改收货地址', '1', 'member', 'edit_address');
INSERT INTO `index_seo` VALUES ('6', '59', '1478159452', '我的收货地址', '我的收货地址', '我的收货地址', '1', 'member', 'myaddress');
INSERT INTO `index_seo` VALUES ('7', '59', '1478159475', '提交订单', '提交订单', '提交订单', '1', 'cart', 'sure');
INSERT INTO `index_seo` VALUES ('8', '59', '1478159492', '购物车', '购物车', '购物车', '1', 'cart', 'index');
INSERT INTO `index_seo` VALUES ('9', '59', '1478159516', '我的订单', '我的订单', '我的订单', '1', 'order', 'index');

-- ----------------------------
-- Table structure for `index_share`
-- ----------------------------
DROP TABLE IF EXISTS `index_share`;
CREATE TABLE `index_share` (
  `share_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `share_title` varchar(200) DEFAULT NULL,
  `share_img` longtext,
  `intro` longtext,
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_share
-- ----------------------------

-- ----------------------------
-- Table structure for `index_share2`
-- ----------------------------
DROP TABLE IF EXISTS `index_share2`;
CREATE TABLE `index_share2` (
  `share2_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `access_token` longtext,
  `ticket` longtext,
  `date2` int(11) DEFAULT NULL,
  PRIMARY KEY (`share2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_share2
-- ----------------------------

-- ----------------------------
-- Table structure for `index_site`
-- ----------------------------
DROP TABLE IF EXISTS `index_site`;
CREATE TABLE `index_site` (
  `site_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `title` varchar(99) DEFAULT NULL,
  `keywords` varchar(99) DEFAULT NULL,
  `description` varchar(99) DEFAULT NULL,
  `company_name` varchar(99) DEFAULT NULL,
  `url` varchar(40) DEFAULT NULL,
  `logo_img` varchar(99) DEFAULT NULL,
  `header_bj` varchar(99) DEFAULT NULL,
  `header` longtext,
  `inscribe` longtext,
  `proportion_integral` varchar(10) DEFAULT NULL,
  `tel` varchar(99) DEFAULT NULL,
  `qq` varchar(99) DEFAULT NULL,
  `version_name` varchar(10) DEFAULT NULL,
  `sms_number` int(10) DEFAULT NULL,
  `mobile` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_site
-- ----------------------------
INSERT INTO `index_site` VALUES ('1', '1', '0', '1', '', '', '', '', '', '', '', '', '<div style=\"text-align:center;\">\r\n	版权所有 Copyright(C)2009-2010 北京妍丝苑管理顾问有限责任公司\r\n</div>', '10', '', '', '中文版', '999', '');

-- ----------------------------
-- Table structure for `index_text`
-- ----------------------------
DROP TABLE IF EXISTS `index_text`;
CREATE TABLE `index_text` (
  `text_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(199) DEFAULT NULL,
  `keywords` varchar(199) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `version_id` int(10) NOT NULL,
  `text_title` varchar(99) DEFAULT NULL,
  `text_content` longtext,
  PRIMARY KEY (`text_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_text
-- ----------------------------

-- ----------------------------
-- Table structure for `index_user`
-- ----------------------------
DROP TABLE IF EXISTS `index_user`;
CREATE TABLE `index_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(99) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `permissions` varchar(50) DEFAULT NULL,
  `is_wage` int(10) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  `secret` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_user
-- ----------------------------
INSERT INTO `index_user` VALUES ('1', 'bjj', '0319c1cfb179ce3b24294a49df116e3c', '百家骏', '1', null, null, '262901', '1');
INSERT INTO `index_user` VALUES ('6', 'wz', '4115fd7a9e882c53c62593a23aa52156', '网站', '2', null, null, '652070', '1');

-- ----------------------------
-- Table structure for `index_user_classify`
-- ----------------------------
DROP TABLE IF EXISTS `index_user_classify`;
CREATE TABLE `index_user_classify` (
  `user_classify_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `classify_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_classify_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_user_classify
-- ----------------------------
INSERT INTO `index_user_classify` VALUES ('30', '1', '15');
INSERT INTO `index_user_classify` VALUES ('2', '1', '2');
INSERT INTO `index_user_classify` VALUES ('5', '1', '8');
INSERT INTO `index_user_classify` VALUES ('6', '1', '3');
INSERT INTO `index_user_classify` VALUES ('7', '1', '4');
INSERT INTO `index_user_classify` VALUES ('8', '1', '5');
INSERT INTO `index_user_classify` VALUES ('9', '1', '10');
INSERT INTO `index_user_classify` VALUES ('20', '6', '1');
INSERT INTO `index_user_classify` VALUES ('21', '6', '2');
INSERT INTO `index_user_classify` VALUES ('22', '6', '8');
INSERT INTO `index_user_classify` VALUES ('23', '6', '3');
INSERT INTO `index_user_classify` VALUES ('29', '1', '20');
INSERT INTO `index_user_classify` VALUES ('31', '1', '16');
INSERT INTO `index_user_classify` VALUES ('32', '1', '21');
INSERT INTO `index_user_classify` VALUES ('33', '1', '22');
INSERT INTO `index_user_classify` VALUES ('34', '1', '23');
INSERT INTO `index_user_classify` VALUES ('24', '1', '24');

-- ----------------------------
-- Table structure for `index_user_page`
-- ----------------------------
DROP TABLE IF EXISTS `index_user_page`;
CREATE TABLE `index_user_page` (
  `user_page_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `page` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`user_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of index_user_page
-- ----------------------------
INSERT INTO `index_user_page` VALUES ('1', '6', 'site_index.php');
INSERT INTO `index_user_page` VALUES ('2', '6', 'classify_add.php');
INSERT INTO `index_user_page` VALUES ('3', '6', 'classify_edit.php');
INSERT INTO `index_user_page` VALUES ('4', '6', 'classify_index.php');
INSERT INTO `index_user_page` VALUES ('5', '6', 'content_add.php');
INSERT INTO `index_user_page` VALUES ('6', '6', 'content_edit.php');
INSERT INTO `index_user_page` VALUES ('7', '6', 'content_index.php');
INSERT INTO `index_user_page` VALUES ('8', '6', 'login_index.php');
INSERT INTO `index_user_page` VALUES ('10', '6', 'Index_index.php');
INSERT INTO `index_user_page` VALUES ('11', '6', 'site_password_edit.php');

-- ----------------------------
-- Table structure for `index_wxpay`
-- ----------------------------
DROP TABLE IF EXISTS `index_wxpay`;
CREATE TABLE `index_wxpay` (
  `wxpay_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `title` varchar(99) NOT NULL,
  `keywords` varchar(99) NOT NULL,
  `description` varchar(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `weixin_id` int(10) DEFAULT NULL,
  `appid` varchar(99) DEFAULT NULL,
  `appsecret` varchar(99) DEFAULT NULL,
  `mchid` varchar(99) DEFAULT NULL,
  `apiclient_cert` varchar(99) DEFAULT NULL,
  `apiclient_key` varchar(99) DEFAULT NULL,
  `rootca` varchar(99) DEFAULT NULL,
  `apikey` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`wxpay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_wxpay
-- ----------------------------
INSERT INTO `index_wxpay` VALUES ('1', '54', '1490526517', '', '', '', '1', '0', 'wx843aed193e9f4dbe', 'dd3d930205bd07cb676d6dd1e64f09dd', '1272242901', null, null, null, 'fb8e938b95ad09bf2a52122144ab847a');
