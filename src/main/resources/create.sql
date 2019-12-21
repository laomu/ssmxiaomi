-- 创建数据库
DROP DATABASE xiaomi;
CREATE DATABASE xiaomi DEFAULT CHARSET 'utf8';
USE xiaomi;

-- ----------------------------- 创建数据表
-- 用户
CREATE TABLE `consumer` (
                            `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '用户编号',
                            `username` VARCHAR(50) NOT NULL COMMENT '用户账号',
                            `password` VARCHAR(50) NOT NULL COMMENT '用户密码',
                            `email` VARCHAR(50) DEFAULT '待完善' COMMENT '电子邮箱',
                            `phone` VARCHAR(20) DEFAULT '待完善' COMMENT '联系方式'
);

-- 商品类型表
CREATE TABLE `goods_type`(
                             `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '商品类型编号',
                             `name` VARCHAR(100) NOT NULL COMMENT '商品类型名称',
                             `pid` INT COMMENT '上级类型'
);
-- 商品配置
CREATE TABLE `goods_configure` (
                                   `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '配置编号',
                                   `info` VARCHAR(200) NOT NULL COMMENT '配置描述',
                                   `goods_id` INT NOT NULL COMMENT '所属商品'
);
-- 商品套餐
CREATE TABLE `goods_package` (
                                 `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '套餐编号',
                                 `info` VARCHAR(200) NOT NULL COMMENT '套餐描述',
                                 `goods_id` INT NOT NULL COMMENT '所属商品'
);
-- 商品服务-售后服务
CREATE TABLE `goods_service` (
                                 `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '服务编号',
                                 `info` VARCHAR(200) NOT NULL COMMENT '服务描述',
                                 `goods_id` INT NOT NULL COMMENT '所属商品'
);
-- 商品表
CREATE TABLE `goods` (
                         `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '商品编号',
                         `name` VARCHAR(100) NOT NULL COMMENT '商品名称',
                         `price` DOUBLE NOT NULL COMMENT '商品单价',
                         `stock` INT DEFAULT 0 COMMENT '商品库存',
                         `goods_type_id` INT NOT NULL COMMENT '商品类型',
                         `remark` TEXT COMMENT '商品描述'
);

-- 商品图片表
CREATE TABLE `goods_images`(
                               `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '图片编号',
                               `path` VARCHAR(200) NOT NULL COMMENT '图片路径',
                               `title` VARCHAR(100) DEFAULT '小米品质' COMMENT '图片主题',
                               `alt` VARCHAR(100) DEFAULT '小米品质' COMMENT '图片描述',
                               `goods_id` INT NOT NULL COMMENT '所属商品'
);

-- 购物车表
CREATE TABLE `goods_cart` (
                              `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '购物编号',
                              `goods_id` INT NOT NULL COMMENT '商品编号',
                              `buy_count` INT DEFAULT 1 COMMENT '购买数量',
                              `add_date` DATETIME COMMENT '添加时间',
                              `subtotal` DOUBLE COMMENT '小计金额',
                              `consumer_id` INT NOT NULL COMMENT '所属用户'
);

-- 订单
CREATE TABLE `goods_order`(
                              `id` VARCHAR(50) PRIMARY KEY COMMENT '订单编号',
                              `order_date` DATETIME COMMENT '下单时间',
                              `consumer_id` INT NOT NULL COMMENT '所属用户',
                              `status` VARCHAR(10) DEFAULT '待付款'  COMMENT '订单状态(待付款|已付款|已发货|已收货)',
                              `goods_shipping_address_id` INT NOT NULL COMMENT '收货地址'
);

-- 订单商品
CREATE TABLE `goods_order_item` (
                                    `id` VARCHAR(50) PRIMARY KEY COMMENT '订单编号',
                                    `goods_id` INT NOT NULL COMMENT '购买商品编号',
                                    `goods_img` VARCHAR(200) NOT NULL COMMENT '商品图片',
                                    `goods_price` DOUBLE NOT NULL COMMENT '成交金额',
                                    `goods_count` INT NOT NULL COMMENT '成交数量',
                                    `goods_subtotal` DOUBLE COMMENT '小计金额',
                                    `goods_order_id` varchar(50) NOT NULL COMMENT '所属订单'
);

-- 收货地址
CREATE TABLE `goods_shipping_address` (
                                          `id` VARCHAR(50) PRIMARY KEY COMMENT '地址编号',
                                          `name` VARCHAR(50) NOT NULL COMMENT '收货人姓名',
                                          `phone` VARCHAR(20) NOT NULL COMMENT '收货人联系方式',
                                          `email` VARCHAR(20) COMMENT '收货人电子邮箱',
                                          `province` VARCHAR(10) COMMENT '省区',
                                          `city` VARCHAR(10) COMMENT '市区',
                                          `country` VARCHAR(10) COMMENT '县区',
                                          `street` VARCHAR(100) COMMENT '街道',
                                          `remark` TEXT COMMENT '描述',
                                          `consumer_id` INT NOT NULL COMMENT '所属用户'
);
-- 新增商品类型
INSERT INTO goods_type(id, NAME, pid)
VALUES(101, "手机电话", NULL),
      (102, "电视盒子", NULL),
      (103, "笔记本 平板", NULL),
      (104, "家电 插线板", NULL),
      (105, "出行 穿戴", NULL),
      (106, "智能 路由器", NULL),
      (107, "电源 配件", NULL),
      (108, "健康 儿童", NULL),
      (109, "耳机 音箱", NULL),
      (110, "生活 箱包", NULL),
      (10001, "小米CC", 101),
      (10002, "RedMi Note", 101),
      (10003, "黑鲨手机", 101),
      (20001, "小米电视4A", 102),
      (20002, "小米电视Pro", 102),
      (20003, "全面屏电视", 102),
      (30001, "小米笔记本", 103),
      (30002, "小米游戏本", 103);
-- 新增商品数据
INSERT INTO goods(`name`, `price`, `stock`, `goods_type_id`, `remark`)
VALUES("小米CC9e", 3499.0, 100, 10001, "8GB+256GB"),
      ("小米CC9e", 2799.0, 100, 10001, "6GB+256GB"),
      ("小米CC9e", 3099.0, 100, 10001, "8GB+128GB"),
      ("小米CC9 Pro", 3499, 50, 10001, "8GB+256GB"),
      ("小米CC9 Pro", 2799.0, 100, 10001, "6GB+256GB"),
      ("小米CC9 Pro", 3099.0, 100, 10001, "8GB+128GB"),
      ("红米8", 699.0, 100, 10002, "4GB+128GB 5000mAh"),
      ("红米8A", 699.0, 100, 10002, "4GB+128GB 5000mAh 31天超长续航"),
      ("红米7A", 579.0, 100, 10002, "3GB+128GB 小巧大电量，持久又流畅"),
      ("黑鲨手机2 Pro", 2999.0, 100, 10003, "12GB+128GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级"),
      ("黑鲨手机2 Pro", 3499.0, 100, 10003, "12GB+256GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级"),
      ("黑鲨手机2 Pro", 3999.0, 100, 10003, "12GB+512GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级"),
      ("小米电视5 75英寸", 7999.0, 100, 20001, "「小米电视新品火爆预约中！」全面屏设计 / 金属机身 / 4K广色域屏幕 /纤薄机身 / 内置小爱同学 / 3GB+32GB大存储 / 支持8K视频内容"),
      ("小米电视5 Pro 75英寸", 9999.0, 100, 20002, "「小米电视新品火爆预约中！」量子点屏幕 / 全面屏设计 / 超薄金属机身 / 4GB+64GB大存储 / MEMC运动补偿 / 内置小爱同学 / 支持8K视频内容"),
      ("小米全面屏电视Pro 65英寸E65S", 3399.0, 100, 20003, "时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容"),
      ("小米全面屏电视Pro 55英寸E55S", 3499.0, 100, 20003, "时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容"),
      ("小米笔记本 13.3", 4499.0, 100, 30001, "第八代四核处理器，显卡再升级"),
      ("小米笔记本Air 12.5\"2019款\"", 3999.0, 100, 30001, "全高清屏幕 / 长续航全金属 / 超窄边框 / 像杂志一样随身携带 / 哈曼高品质扬声器"),
      ("小米笔记本15.6\" 2019款 独显版", 4699.0, 100, 30001, "独立显卡/ 英特尔四核处理器 / 最高512G高速固态硬盘 / 独立数字键盘 / 全面均衡的国民轻薄本"),
      ("小米笔记本15.6\" 2019款 集显版", 4499.0, 100, 30001, "高速固态硬盘 / 独立数字键盘 / 全面均衡的国民轻薄本"),
      ("Pro 15 增强版 i7 16GB", 6999.0, 100, 30001, "全新十代酷睿处理器 / 大满贯接口 / 100%sRGB高色域 / 全尺寸背光键盘"),
      ("小米笔记本Pro 15.6\" 2019款", 5999.0, 100, 30001, "NVIDIA MX250 2G独显 / 第八代Intel处理器 / PCIe 高速固态硬盘 / 72%NTSC高色域全高清屏 / 更强悍的专业笔记本"),
      ("Pro 15.6\" GTX显卡", 7499.0, 100, 30001, "全新第八代英特尔酷睿处理器 ／ 升级金属双风扇 ／ 带宽提升80% ／ 15.6\"全高清大屏超窄边大视野"),
      ("小米游戏本15.6", 7999.0, 100, 30002, "i5 8G 1T+256G 1060 6G"),
      ("小米游戏本15.6", 8999.0, 100, 30002, "   i7 16G 512G 1060 6G	 "),
      ("小米游戏本15.6", 7999.0, 100, 30002, "   i5 8G 512G 1060 6G	 "),
      ("小米游戏本15.6", 6699.0, 100, 30002, "   i5 8G 1T+256G 1050Ti 4G "),
      ("小米游戏本15.6", 8999.0, 100, 30002, "   i7 16G 1T+256G 1060 6G ");

-- 添加商品对应的图片：主要是图片路径~具体图片已经包含在项目文件夹中
INSERT INTO goods_images(path, title, alt, goods_id)
VALUES("static/images/goodsImage/1_1.jpg", "8GB+256GB", "8GB+256GB", 1),
      ("static/images/goodsImage/1_2.jpg", "8GB+256GB", "8GB+256GB", 1),
      ("static/images/goodsImage/2_1.jpg", "8GB+256GB", "6GB+256GB", 2),
      ("static/images/goodsImage/2_2.jpg", "8GB+256GB", "6GB+256GB", 2),
      ("static/images/goodsImage/3_1.jpg", "8GB+256GB", "8GB+256GB", 3),
      ("static/images/goodsImage/3_2.jpg", "8GB+256GB", "8GB+256GB", 3),
      ("static/images/goodsImage/3_2.jpg", "8GB+256GB", "8GB+256GB", 3),
      ("static/images/goodsImage/4_1.jpg", "小米CC9 Pro", "8GB+128GB", 4),
      ("static/images/goodsImage/4_2.jpg", "小米CC9 Pro", "8GB+256GB", 4),
      ("static/images/goodsImage/5_1.jpg", "小米CC9 Pro", "8GB+256GB", 5),
      ("static/images/goodsImage/5_2.jpg", "小米CC9 Pro", "8GB+256GB", 5),
      ("static/images/goodsImage/6_1.jpg", "小米CC9 Pro", "8GB+256GB", 6),
      ("static/images/goodsImage/6_2.jpg", "小米CC9 Pro", "8GB+256GB", 6),
      ("static/images/goodsImage/7_1.jpg", "8GB+256GB", "8GB+256GB", 7),
      ("static/images/goodsImage/7_2.jpg", "8GB+256GB", "8GB+256GB", 7),
      ("static/images/goodsImage/8_1.jpg", "8GB+256GB", "8GB+256GB", 8),
      ("static/images/goodsImage/8_2.jpg", "8GB+256GB", "8GB+256GB", 8),
      ("static/images/goodsImage/9_1.jpg", "红米7A", "8GB+256GB", 9),
      ("static/images/goodsImage/9_2.jpg", "红米7A", "8GB+256GB", 9),
      ("static/images/goodsImage/9_3.jpg", "红米7A", "8GB+256GB", 9),
      ("static/images/goodsImage/9_4.jpg", "红米7A", "8GB+256GB", 9),
      ("static/images/goodsImage/10_1.jpg", "黑鲨手机2 Pro", "8GB+256GB", 10),
      ("static/images/goodsImage/10_2.jpg", "黑鲨手机2 Pro", "8GB+256GB", 10),
      ("static/images/goodsImage/11_1.jpg", "黑鲨手机2 Pro", "8GB+256GB", 11),
      ("static/images/goodsImage/11_2.jpg", "黑鲨手机2 Pro", "8GB+256GB", 11),
      ("static/images/goodsImage/12_1.jpg", "黑鲨手机2 Pro", "8GB+256GB", 12),
      ("static/images/goodsImage/12_2.jpg", "黑鲨手机2 Pro", "8GB+256GB", 12),
      ("static/images/goodsImage/13_1.jpg", "小米电视5 75英寸", "8GB+256GB", 13),
      ("static/images/goodsImage/13_2.jpg", "小米电视5 75英寸", "8GB+256GB", 13),
      ("static/images/goodsImage/14_1.jpg", "小米电视5 Pro 75英寸", "8GB+256GB", 14),
      ("static/images/goodsImage/14_2.jpg", "小米电视5 Pro 75英寸", "8GB+256GB", 14),
      ("static/images/goodsImage/15_1.jpg", "小米全面屏电视Pro 65英寸E65S", "8GB+256GB", 15),
      ("static/images/goodsImage/15_2.jpg", "小米全面屏电视Pro 65英寸E65S", "8GB+256GB", 15),
      ("static/images/goodsImage/16_1.jpg", "小米全面屏电视Pro 55英寸E55S", "8GB+256GB", 16),
      ("static/images/goodsImage/16_2.jpg", "小米全面屏电视Pro 55英寸E55S", "8GB+256GB", 16),
      ("static/images/goodsImage/17_1.png", "小米笔记本 13.3", "8GB+256GB", 17),
      ("static/images/goodsImage/17_2.png", "小米笔记本 13.3", "8GB+256GB", 17),
      ("static/images/goodsImage/18_1.jpg", "小米笔记本Air 12.5\"2019款\"", "8GB+256GB", 18),
      ("static/images/goodsImage/18_2.jpg", "小米笔记本Air 12.5\"2019款\"", "8GB+256GB", 18),
      ("static/images/goodsImage/19_1.png", "小米笔记本15.6\" 2019款 独显版", "8GB+256GB", 19),
      ("static/images/goodsImage/19_2.png", "小米笔记本15.6\" 2019款 独显版", "8GB+256GB", 19),
      ("static/images/goodsImage/20_1.png", "小米笔记本15.6\" 2019款 集显版", "8GB+256GB", 20),
      ("static/images/goodsImage/20_2.png", "小米笔记本15.6\" 2019款 集显版", "8GB+256GB", 20),
      ("static/images/goodsImage/21_1.png", "Pro 15 增强版 i7 16GB", "8GB+256GB", 21),
      ("static/images/goodsImage/21_2.jpg", "Pro 15 增强版 i7 16GB", "8GB+256GB", 21),
      ("static/images/goodsImage/22_1.jpg", "小米笔记本Pro 15.6\" 2019款", "8GB+256GB", 22),
      ("static/images/goodsImage/22_2.jpg", "小米笔记本Pro 15.6\" 2019款", "8GB+256GB", 22),
      ("static/images/goodsImage/22_1.jpg", "Pro 15.6\" GTX显卡", "8GB+256GB", 23),
      ("static/images/goodsImage/23_2.jpg", "Pro 15.6\" GTX显卡", "8GB+256GB", 23),
      ("static/images/goodsImage/24_1.jpg", "小米游戏本15.6", "8GB+256GB", 24),
      ("static/images/goodsImage/24_2.jpg", "小米游戏本15.6", "8GB+256GB", 24),
      ("static/images/goodsImage/25_1.jpg", "小米游戏本15.6", "8GB+256GB", 25),
      ("static/images/goodsImage/25_2.jpg", "小米游戏本15.6", "8GB+256GB", 25),
      ("static/images/goodsImage/26_1.png", "小米游戏本15.6", "8GB+256GB", 26),
      ("static/images/goodsImage/26_2.png", "小米游戏本15.6", "8GB+256GB", 26),
      ("static/images/goodsImage/27_1.jpg", "小米游戏本15.6", "8GB+256GB", 27),
      ("static/images/goodsImage/27_2.jpg", "小米游戏本15.6", "8GB+256GB", 27),
      ("static/images/goodsImage/28_1.png", "小米游戏本15.6", "8GB+256GB", 28),
      ("static/images/goodsImage/28_2.png", "小米游戏本15.6", "8GB+256GB", 28);-- 创建数据库
DROP DATABASE xiaomi;
CREATE DATABASE xiaomi DEFAULT CHARSET 'utf8';
USE xiaomi;

-- ----------------------------- 创建数据表
-- 用户
CREATE TABLE `consumer` (
                            `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '用户编号',
                            `username` VARCHAR(50) NOT NULL COMMENT '用户账号',
                            `password` VARCHAR(50) NOT NULL COMMENT '用户密码',
                            `email` VARCHAR(50) DEFAULT '待完善' COMMENT '电子邮箱',
                            `phone` VARCHAR(20) DEFAULT '待完善' COMMENT '联系方式'
);

-- 商品类型表
CREATE TABLE `goods_type`(
                             `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '商品类型编号',
                             `name` VARCHAR(100) NOT NULL COMMENT '商品类型名称',
                             `pid` INT COMMENT '上级类型'
);
-- 商品配置
CREATE TABLE `goods_configure` (
                                   `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '配置编号',
                                   `info` VARCHAR(200) NOT NULL COMMENT '配置描述',
                                   `goods_id` INT NOT NULL COMMENT '所属商品'
);
-- 商品套餐
CREATE TABLE `goods_package` (
                                 `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '套餐编号',
                                 `info` VARCHAR(200) NOT NULL COMMENT '套餐描述',
                                 `goods_id` INT NOT NULL COMMENT '所属商品'
);
-- 商品服务-售后服务
CREATE TABLE `goods_service` (
                                 `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '服务编号',
                                 `info` VARCHAR(200) NOT NULL COMMENT '服务描述',
                                 `goods_id` INT NOT NULL COMMENT '所属商品'
);
-- 商品表
CREATE TABLE `goods` (
                         `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '商品编号',
                         `name` VARCHAR(100) NOT NULL COMMENT '商品名称',
                         `price` DOUBLE NOT NULL COMMENT '商品单价',
                         `stock` INT DEFAULT 0 COMMENT '商品库存',
                         `goods_type_id` INT NOT NULL COMMENT '商品类型',
                         `remark` TEXT COMMENT '商品描述'
);

-- 商品图片表
CREATE TABLE `goods_images`(
                               `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '图片编号',
                               `path` VARCHAR(200) NOT NULL COMMENT '图片路径',
                               `title` VARCHAR(100) DEFAULT '小米品质' COMMENT '图片主题',
                               `alt` VARCHAR(100) DEFAULT '小米品质' COMMENT '图片描述',
                               `goods_id` INT NOT NULL COMMENT '所属商品'
);

-- 购物车表
CREATE TABLE `goods_cart` (
                              `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '购物编号',
                              `goods_id` INT NOT NULL COMMENT '商品编号',
                              `buy_count` INT DEFAULT 1 COMMENT '购买数量',
                              `add_date` DATETIME COMMENT '添加时间',
                              `subtotal` DOUBLE COMMENT '小计金额',
                              `consumer_id` INT NOT NULL COMMENT '所属用户'
);

-- 订单
CREATE TABLE `goods_order`(
                              `id` VARCHAR(50) PRIMARY KEY COMMENT '订单编号',
                              `order_date` DATETIME COMMENT '下单时间',
                              `consumer_id` INT NOT NULL COMMENT '所属用户',
                              `status` VARCHAR(10) DEFAULT '待付款'  COMMENT '订单状态(待付款|已付款|已发货|已收货)',
                              `goods_shipping_address_id` INT NOT NULL COMMENT '收货地址'
);

-- 订单商品
CREATE TABLE `goods_order_item` (
                                    `id` VARCHAR(50) PRIMARY KEY COMMENT '订单编号',
                                    `goods_id` INT NOT NULL COMMENT '购买商品编号',
                                    `goods_img` VARCHAR(200) NOT NULL COMMENT '商品图片',
                                    `goods_price` DOUBLE NOT NULL COMMENT '成交金额',
                                    `goods_count` INT NOT NULL COMMENT '成交数量',
                                    `goods_subtotal` DOUBLE COMMENT '小计金额',
                                    `goods_order_id` varchar(50) NOT NULL COMMENT '所属订单'
);

-- 收货地址
CREATE TABLE `goods_shipping_address` (
                                          `id` VARCHAR(50) PRIMARY KEY COMMENT '地址编号',
                                          `name` VARCHAR(50) NOT NULL COMMENT '收货人姓名',
                                          `phone` VARCHAR(20) NOT NULL COMMENT '收货人联系方式',
                                          `email` VARCHAR(20) COMMENT '收货人电子邮箱',
                                          `province` VARCHAR(10) COMMENT '省区',
                                          `city` VARCHAR(10) COMMENT '市区',
                                          `country` VARCHAR(10) COMMENT '县区',
                                          `street` VARCHAR(100) COMMENT '街道',
                                          `remark` TEXT COMMENT '描述',
                                          `consumer_id` INT NOT NULL COMMENT '所属用户'
);
-- 新增商品类型
INSERT INTO goods_type(id, NAME, pid)
VALUES(101, "手机电话", NULL),
      (102, "电视盒子", NULL),
      (103, "笔记本 平板", NULL),
      (104, "家电 插线板", NULL),
      (105, "出行 穿戴", NULL),
      (106, "智能 路由器", NULL),
      (107, "电源 配件", NULL),
      (108, "健康 儿童", NULL),
      (109, "耳机 音箱", NULL),
      (110, "生活 箱包", NULL),
      (10001, "小米CC", 101),
      (10002, "RedMi Note", 101),
      (10003, "黑鲨手机", 101),
      (20001, "小米电视4A", 102),
      (20002, "小米电视Pro", 102),
      (20003, "全面屏电视", 102),
      (30001, "小米笔记本", 103),
      (30002, "小米游戏本", 103);
-- 新增商品数据
INSERT INTO goods(`name`, `price`, `stock`, `goods_type_id`, `remark`)
VALUES("小米CC9e", 3499.0, 100, 10001, "8GB+256GB"),
      ("小米CC9e", 2799.0, 100, 10001, "6GB+256GB"),
      ("小米CC9e", 3099.0, 100, 10001, "8GB+128GB"),
      ("小米CC9 Pro", 3499, 50, 10001, "8GB+256GB"),
      ("小米CC9 Pro", 2799.0, 100, 10001, "6GB+256GB"),
      ("小米CC9 Pro", 3099.0, 100, 10001, "8GB+128GB"),
      ("红米8", 699.0, 100, 10002, "4GB+128GB 5000mAh"),
      ("红米8A", 699.0, 100, 10002, "4GB+128GB 5000mAh 31天超长续航"),
      ("红米7A", 579.0, 100, 10002, "3GB+128GB 小巧大电量，持久又流畅"),
      ("黑鲨手机2 Pro", 2999.0, 100, 10003, "12GB+128GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级"),
      ("黑鲨手机2 Pro", 3499.0, 100, 10003, "12GB+256GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级"),
      ("黑鲨手机2 Pro", 3999.0, 100, 10003, "12GB+512GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级"),
      ("小米电视5 75英寸", 7999.0, 100, 20001, "「小米电视新品火爆预约中！」全面屏设计 / 金属机身 / 4K广色域屏幕 /纤薄机身 / 内置小爱同学 / 3GB+32GB大存储 / 支持8K视频内容"),
      ("小米电视5 Pro 75英寸", 9999.0, 100, 20002, "「小米电视新品火爆预约中！」量子点屏幕 / 全面屏设计 / 超薄金属机身 / 4GB+64GB大存储 / MEMC运动补偿 / 内置小爱同学 / 支持8K视频内容"),
      ("小米全面屏电视Pro 65英寸E65S", 3399.0, 100, 20003, "时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容"),
      ("小米全面屏电视Pro 55英寸E55S", 3499.0, 100, 20003, "时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容"),
      ("小米笔记本 13.3", 4499.0, 100, 30001, "第八代四核处理器，显卡再升级"),
      ("小米笔记本Air 12.5\"2019款\"", 3999.0, 100, 30001, "全高清屏幕 / 长续航全金属 / 超窄边框 / 像杂志一样随身携带 / 哈曼高品质扬声器"),
      ("小米笔记本15.6\" 2019款 独显版", 4699.0, 100, 30001, "独立显卡/ 英特尔四核处理器 / 最高512G高速固态硬盘 / 独立数字键盘 / 全面均衡的国民轻薄本"),
      ("小米笔记本15.6\" 2019款 集显版", 4499.0, 100, 30001, "高速固态硬盘 / 独立数字键盘 / 全面均衡的国民轻薄本"),
      ("Pro 15 增强版 i7 16GB", 6999.0, 100, 30001, "全新十代酷睿处理器 / 大满贯接口 / 100%sRGB高色域 / 全尺寸背光键盘"),
      ("小米笔记本Pro 15.6\" 2019款", 5999.0, 100, 30001, "NVIDIA MX250 2G独显 / 第八代Intel处理器 / PCIe 高速固态硬盘 / 72%NTSC高色域全高清屏 / 更强悍的专业笔记本"),
      ("Pro 15.6\" GTX显卡", 7499.0, 100, 30001, "全新第八代英特尔酷睿处理器 ／ 升级金属双风扇 ／ 带宽提升80% ／ 15.6\"全高清大屏超窄边大视野"),
      ("小米游戏本15.6", 7999.0, 100, 30002, "i5 8G 1T+256G 1060 6G"),
      ("小米游戏本15.6", 8999.0, 100, 30002, "   i7 16G 512G 1060 6G	 "),
      ("小米游戏本15.6", 7999.0, 100, 30002, "   i5 8G 512G 1060 6G	 "),
      ("小米游戏本15.6", 6699.0, 100, 30002, "   i5 8G 1T+256G 1050Ti 4G "),
      ("小米游戏本15.6", 8999.0, 100, 30002, "   i7 16G 1T+256G 1060 6G ");

-- 添加商品对应的图片：主要是图片路径~具体图片已经包含在项目文件夹中
INSERT INTO goods_images(path, title, alt, goods_id)
VALUES("static/images/goodsImage/1_1.jpg", "8GB+256GB", "8GB+256GB", 1),
      ("static/images/goodsImage/1_2.jpg", "8GB+256GB", "8GB+256GB", 1),
      ("static/images/goodsImage/2_1.jpg", "8GB+256GB", "6GB+256GB", 2),
      ("static/images/goodsImage/2_2.jpg", "8GB+256GB", "6GB+256GB", 2),
      ("static/images/goodsImage/3_1.jpg", "8GB+256GB", "8GB+256GB", 3),
      ("static/images/goodsImage/3_2.jpg", "8GB+256GB", "8GB+256GB", 3),
      ("static/images/goodsImage/3_2.jpg", "8GB+256GB", "8GB+256GB", 3),
      ("static/images/goodsImage/4_1.jpg", "小米CC9 Pro", "8GB+128GB", 4),
      ("static/images/goodsImage/4_2.jpg", "小米CC9 Pro", "8GB+256GB", 4),
      ("static/images/goodsImage/5_1.jpg", "小米CC9 Pro", "8GB+256GB", 5),
      ("static/images/goodsImage/5_2.jpg", "小米CC9 Pro", "8GB+256GB", 5),
      ("static/images/goodsImage/6_1.jpg", "小米CC9 Pro", "8GB+256GB", 6),
      ("static/images/goodsImage/6_2.jpg", "小米CC9 Pro", "8GB+256GB", 6),
      ("static/images/goodsImage/7_1.jpg", "8GB+256GB", "8GB+256GB", 7),
      ("static/images/goodsImage/7_2.jpg", "8GB+256GB", "8GB+256GB", 7),
      ("static/images/goodsImage/8_1.jpg", "8GB+256GB", "8GB+256GB", 8),
      ("static/images/goodsImage/8_2.jpg", "8GB+256GB", "8GB+256GB", 8),
      ("static/images/goodsImage/9_1.jpg", "红米7A", "8GB+256GB", 9),
      ("static/images/goodsImage/9_2.jpg", "红米7A", "8GB+256GB", 9),
      ("static/images/goodsImage/9_3.jpg", "红米7A", "8GB+256GB", 9),
      ("static/images/goodsImage/9_4.jpg", "红米7A", "8GB+256GB", 9),
      ("static/images/goodsImage/10_1.jpg", "黑鲨手机2 Pro", "8GB+256GB", 10),
      ("static/images/goodsImage/10_2.jpg", "黑鲨手机2 Pro", "8GB+256GB", 10),
      ("static/images/goodsImage/11_1.jpg", "黑鲨手机2 Pro", "8GB+256GB", 11),
      ("static/images/goodsImage/11_2.jpg", "黑鲨手机2 Pro", "8GB+256GB", 11),
      ("static/images/goodsImage/12_1.jpg", "黑鲨手机2 Pro", "8GB+256GB", 12),
      ("static/images/goodsImage/12_2.jpg", "黑鲨手机2 Pro", "8GB+256GB", 12),
      ("static/images/goodsImage/13_1.jpg", "小米电视5 75英寸", "8GB+256GB", 13),
      ("static/images/goodsImage/13_2.jpg", "小米电视5 75英寸", "8GB+256GB", 13),
      ("static/images/goodsImage/14_1.jpg", "小米电视5 Pro 75英寸", "8GB+256GB", 14),
      ("static/images/goodsImage/14_2.jpg", "小米电视5 Pro 75英寸", "8GB+256GB", 14),
      ("static/images/goodsImage/15_1.jpg", "小米全面屏电视Pro 65英寸E65S", "8GB+256GB", 15),
      ("static/images/goodsImage/15_2.jpg", "小米全面屏电视Pro 65英寸E65S", "8GB+256GB", 15),
      ("static/images/goodsImage/16_1.jpg", "小米全面屏电视Pro 55英寸E55S", "8GB+256GB", 16),
      ("static/images/goodsImage/16_2.jpg", "小米全面屏电视Pro 55英寸E55S", "8GB+256GB", 16),
      ("static/images/goodsImage/17_1.png", "小米笔记本 13.3", "8GB+256GB", 17),
      ("static/images/goodsImage/17_2.png", "小米笔记本 13.3", "8GB+256GB", 17),
      ("static/images/goodsImage/18_1.jpg", "小米笔记本Air 12.5\"2019款\"", "8GB+256GB", 18),
      ("static/images/goodsImage/18_2.jpg", "小米笔记本Air 12.5\"2019款\"", "8GB+256GB", 18),
      ("static/images/goodsImage/19_1.png", "小米笔记本15.6\" 2019款 独显版", "8GB+256GB", 19),
      ("static/images/goodsImage/19_2.png", "小米笔记本15.6\" 2019款 独显版", "8GB+256GB", 19),
      ("static/images/goodsImage/20_1.png", "小米笔记本15.6\" 2019款 集显版", "8GB+256GB", 20),
      ("static/images/goodsImage/20_2.png", "小米笔记本15.6\" 2019款 集显版", "8GB+256GB", 20),
      ("static/images/goodsImage/21_1.png", "Pro 15 增强版 i7 16GB", "8GB+256GB", 21),
      ("static/images/goodsImage/21_2.jpg", "Pro 15 增强版 i7 16GB", "8GB+256GB", 21),
      ("static/images/goodsImage/22_1.jpg", "小米笔记本Pro 15.6\" 2019款", "8GB+256GB", 22),
      ("static/images/goodsImage/22_2.jpg", "小米笔记本Pro 15.6\" 2019款", "8GB+256GB", 22),
      ("static/images/goodsImage/22_1.jpg", "Pro 15.6\" GTX显卡", "8GB+256GB", 23),
      ("static/images/goodsImage/23_2.jpg", "Pro 15.6\" GTX显卡", "8GB+256GB", 23),
      ("static/images/goodsImage/24_1.jpg", "小米游戏本15.6", "8GB+256GB", 24),
      ("static/images/goodsImage/24_2.jpg", "小米游戏本15.6", "8GB+256GB", 24),
      ("static/images/goodsImage/25_1.jpg", "小米游戏本15.6", "8GB+256GB", 25),
      ("static/images/goodsImage/25_2.jpg", "小米游戏本15.6", "8GB+256GB", 25),
      ("static/images/goodsImage/26_1.png", "小米游戏本15.6", "8GB+256GB", 26),
      ("static/images/goodsImage/26_2.png", "小米游戏本15.6", "8GB+256GB", 26),
      ("static/images/goodsImage/27_1.jpg", "小米游戏本15.6", "8GB+256GB", 27),
      ("static/images/goodsImage/27_2.jpg", "小米游戏本15.6", "8GB+256GB", 27),
      ("static/images/goodsImage/28_1.png", "小米游戏本15.6", "8GB+256GB", 28),
      ("static/images/goodsImage/28_2.png", "小米游戏本15.6", "8GB+256GB", 28);