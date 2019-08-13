SET NAMES UTF8;
DROP DATABASE IF EXISTS yj;
CREATE DATABASE yj CHARSET=UTF8;
USE yj;


/**城市**/
CREATE TABLE yj_city(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(32)
);

/**房间**/
CREATE TABLE yj_house(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  city_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格

  rent VARCHAR(64),           #出租情况 整套出租/单间出租
  harea INT,                  #面积
  htype VARCHAR(64),          #1室0厅0厨1卫
  peopel VARCHAR(64),         #居住人数 宜居几人
  bednum VARCHAR(64),         #共几张
  bedsize VARCHAR(64),        #1.8m宽 × 2m长 ×2张

  favorite VARCHAR(1024),     #个性描述

  quilt BOOLEAN,#被子
  lift BOOLEAN,#电梯
  hclear BOOLEAN,#打扫
  hairdryer BOOLEAN,#吹风机
  pclear BOOLEAN,#洗漱用品
  shoot BOOLEAN,#拖鞋
  hot BOOLEAN,#热水
  annihilator BOOLEAN,#灭火器
  intelligent BOOLEAN,#智能锁
  cooking BOOLEAN,     #厨房

  mcome VARCHAR(128),            #接待时间
  mleast VARCHAR(128),            #最少入住天数
  mleave VARCHAR(128),         #退房时间
  mmore VARCHAR(128),          #最多入住几人
  mout VARCHAR(128),            #外宾接待

  travel VARCHAR(1024),       #出行信息 

  shelf_time BIGINT,          #上架时间
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN           #是否促销中
);

/**房间图片**/
CREATE TABLE yj_house_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  house_id INT,               #房间编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128)            #中图片路径
);

/**用户信息**/
CREATE TABLE yj_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/**收货地址信息**/
CREATE TABLE yj_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目**/
CREATE TABLE yj_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**收藏条目**/
CREATE TABLE yj_like_item(
  liid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  house_id INT,   #商品编号
  img VARCHAR(128) #图片
);

/**用户订单**/
CREATE TABLE yj_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  ostatus INT,             #订单状态  1-等待付款  2-等待确认  3-待出行  4-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单**/
CREATE TABLE yj_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  bcount INT               #购买数量
);

/****首页轮播广告商品****/
CREATE TABLE yj_index_carousel(
  carid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****首页信息****/
CREATE TABLE yj_index_house(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  href VARCHAR(128)
);

/*******************/
/******数据导入******/
/*******************/
/**城市**/
INSERT INTO yj_city VALUES
(NULL,'上海'),
(NULL,'北京'),
(NULL,'广州'),
(NULL,'深圳'),
(NULL,'成都'),
(NULL,'丽江'),
(NULL,'大理'),
(NULL,'苏州'),
(NULL,'杭州'),
(NULL,'稻城');

/**房间**/
INSERT INTO yj_house VALUES
(null,1,'【观星居】优乘之家美兰湖别墅单间唯美亲子套房','上海市宝山区抚远路699弄',688,'整套出租',89,'1室0厅0厨1卫','宜住2人','共2张','1.8m宽 × 2m长 ×2张','这大概是向往的生活-意气风发的年纪在烟火气最盛的地方-/-买1个不临街的一居室-*-暖心的装修､舒适干净的床品､想在浴缸里休憩､慵懒的在沙发上看着窗外发呆或者看书､&夜幕降临与三五好友拥入熙熙攘攘的深夜街头｡<br />因为向往这样的处所,所以装饰了这个家,把我想要的都融入其中了,也许你会想来体验一次吗?【户型】我的房子是1室1卫 ,干净整洁,有厨房,有1张双人床可供2人居住,有1个卫生间｡房屋采光非常好,明媚的阳光照射进来非常温暖,让您沐浴阳光,静静的享受着自然日光给您带来的安逸和温暖｡<br />【卧室】卧室有1张1.8米大床采用宜家家居床垫,在一夜安睡后醒来,开始美好的一天!,房间还有北欧 三人座沙发､百兆wifi､网络电视､北欧吧台､椅子......您可以和朋友一起玩游戏､看电影,让这个小家给您带来温馨舒适的感受
<br />【厨房】开放式厨房,为客人准备了有锅具､碗､盘､筷子､勺子､微波炉､电饭锅､电水壶等用品｡让您体验到家一般的感觉<br />【卫生间】吹风机,滚筒洗衣机(每月至少清洗消毒一次),洗衣液等｡洗发沐浴液､毛巾､浴巾､洗漱用品均按星级酒店标准为您准备齐全,请放心使用,无需自带',true,true,true,true,true,true,true,true,true,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','咱们的小家就在四号线鲁班路/十三号线世博会博物馆地铁站附近｡到虹桥大约45分钟(地铁),到浦东机场大约1小时(公交)如果您选择自驾出行,您可以将您的爱车停在距离小区大门口边上的停车场,每小时8元 ,封顶大约64元；<br />周边热门：田子坊（约1.4公里）、世博会中国国家馆（约2.2公里）、上海新天地（约2.2公里）<br />附近地铁站：鲁班路（约300米）、世博会博物馆（约400米）<br />机场 / 火车站：虹桥国际机场（约13.7公里）、浦东国际机场（约32.1公里）、上海火车站（约5.7公里）、上海南站（约6.7公里）、虹桥火车站（约14.9公里）<br />房源具体位置将在预订确认后提供',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','上海市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,1,'【观星居】优乘之家美兰湖别墅单间唯美亲子套房','上海市宝山区抚远路699弄',688,'整套出租',89,'1室0厅0厨1卫','宜住2人','共2张','1.8m宽 × 2m长 ×2张','这大概是向往的生活-意气风发的年纪在烟火气最盛的地方-/-买1个不临街的一居室-*-暖心的装修､舒适干净的床品､想在浴缸里休憩､慵懒的在沙发上看着窗外发呆或者看书､&夜幕降临与三五好友拥入熙熙攘攘的深夜街头｡<br />因为向往这样的处所,所以装饰了这个家,把我想要的都融入其中了,也许你会想来体验一次吗?【户型】我的房子是1室1卫 ,干净整洁,有厨房,有1张双人床可供2人居住,有1个卫生间｡房屋采光非常好,明媚的阳光照射进来非常温暖,让您沐浴阳光,静静的享受着自然日光给您带来的安逸和温暖｡<br />【卧室】卧室有1张1.8米大床采用宜家家居床垫,在一夜安睡后醒来,开始美好的一天!,房间还有北欧 三人座沙发､百兆wifi､网络电视､北欧吧台､椅子......您可以和朋友一起玩游戏､看电影,让这个小家给您带来温馨舒适的感受
<br />【厨房】开放式厨房,为客人准备了有锅具､碗､盘､筷子､勺子､微波炉､电饭锅､电水壶等用品｡让您体验到家一般的感觉<br />【卫生间】吹风机,滚筒洗衣机(每月至少清洗消毒一次),洗衣液等｡洗发沐浴液､毛巾､浴巾､洗漱用品均按星级酒店标准为您准备齐全,请放心使用,无需自带',true,true,true,true,true,true,true,true,true,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','咱们的小家就在四号线鲁班路/十三号线世博会博物馆地铁站附近｡到虹桥大约45分钟(地铁),到浦东机场大约1小时(公交)如果您选择自驾出行,您可以将您的爱车停在距离小区大门口边上的停车场,每小时8元 ,封顶大约64元；<br />周边热门：田子坊（约1.4公里）、世博会中国国家馆（约2.2公里）、上海新天地（约2.2公里）<br />附近地铁站：鲁班路（约300米）、世博会博物馆（约400米）<br />机场 / 火车站：虹桥国际机场（约13.7公里）、浦东国际机场（约32.1公里）、上海火车站（约5.7公里）、上海南站（约6.7公里）、虹桥火车站（约14.9公里）<br />房源具体位置将在预订确认后提供',150123456789,968,true),
(null,1,'【观星居】优乘之家美兰湖别墅单间唯美亲子套房','上海市宝山区抚远路699弄',688,'整套出租',89,'1室0厅0厨1卫','宜住2人','共2张','1.8m宽 × 2m长 ×2张','这大概是向往的生活-意气风发的年纪在烟火气最盛的地方-/-买1个不临街的一居室-*-暖心的装修､舒适干净的床品､想在浴缸里休憩､慵懒的在沙发上看着窗外发呆或者看书､&夜幕降临与三五好友拥入熙熙攘攘的深夜街头｡<br />因为向往这样的处所,所以装饰了这个家,把我想要的都融入其中了,也许你会想来体验一次吗?【户型】我的房子是1室1卫 ,干净整洁,有厨房,有1张双人床可供2人居住,有1个卫生间｡房屋采光非常好,明媚的阳光照射进来非常温暖,让您沐浴阳光,静静的享受着自然日光给您带来的安逸和温暖｡<br />【卧室】卧室有1张1.8米大床采用宜家家居床垫,在一夜安睡后醒来,开始美好的一天!,房间还有北欧 三人座沙发､百兆wifi､网络电视､北欧吧台､椅子......您可以和朋友一起玩游戏､看电影,让这个小家给您带来温馨舒适的感受
<br />【厨房】开放式厨房,为客人准备了有锅具､碗､盘､筷子､勺子､微波炉､电饭锅､电水壶等用品｡让您体验到家一般的感觉<br />【卫生间】吹风机,滚筒洗衣机(每月至少清洗消毒一次),洗衣液等｡洗发沐浴液､毛巾､浴巾､洗漱用品均按星级酒店标准为您准备齐全,请放心使用,无需自带',true,true,true,true,true,true,true,true,true,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','咱们的小家就在四号线鲁班路/十三号线世博会博物馆地铁站附近｡到虹桥大约45分钟(地铁),到浦东机场大约1小时(公交)如果您选择自驾出行,您可以将您的爱车停在距离小区大门口边上的停车场,每小时8元 ,封顶大约64元；<br />周边热门：田子坊（约1.4公里）、世博会中国国家馆（约2.2公里）、上海新天地（约2.2公里）<br />附近地铁站：鲁班路（约300米）、世博会博物馆（约400米）<br />机场 / 火车站：虹桥国际机场（约13.7公里）、浦东国际机场（约32.1公里）、上海火车站（约5.7公里）、上海南站（约6.7公里）、虹桥火车站（约14.9公里）<br />房源具体位置将在预订确认后提供',150123456789,968,true),
(null,2,'【观星居】优乘之家美兰湖别墅单间唯美亲子套房','北京市宝山区抚远路699弄',688,'整套出租',89,'1室0厅0厨1卫','宜住2人','共2张','1.8m宽 × 2m长 ×2张','这大概是向往的生活-意气风发的年纪在烟火气最盛的地方-/-买1个不临街的一居室-*-暖心的装修､舒适干净的床品､想在浴缸里休憩､慵懒的在沙发上看着窗外发呆或者看书､&夜幕降临与三五好友拥入熙熙攘攘的深夜街头｡<br />因为向往这样的处所,所以装饰了这个家,把我想要的都融入其中了,也许你会想来体验一次吗?【户型】我的房子是1室1卫 ,干净整洁,有厨房,有1张双人床可供2人居住,有1个卫生间｡房屋采光非常好,明媚的阳光照射进来非常温暖,让您沐浴阳光,静静的享受着自然日光给您带来的安逸和温暖｡<br />【卧室】卧室有1张1.8米大床采用宜家家居床垫,在一夜安睡后醒来,开始美好的一天!,房间还有北欧 三人座沙发､百兆wifi､网络电视､北欧吧台､椅子......您可以和朋友一起玩游戏､看电影,让这个小家给您带来温馨舒适的感受
<br />【厨房】开放式厨房,为客人准备了有锅具､碗､盘､筷子､勺子､微波炉､电饭锅､电水壶等用品｡让您体验到家一般的感觉<br />【卫生间】吹风机,滚筒洗衣机(每月至少清洗消毒一次),洗衣液等｡洗发沐浴液､毛巾､浴巾､洗漱用品均按星级酒店标准为您准备齐全,请放心使用,无需自带',true,true,true,true,true,true,true,true,true,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','咱们的小家就在四号线鲁班路/十三号线世博会博物馆地铁站附近｡到虹桥大约45分钟(地铁),到浦东机场大约1小时(公交)如果您选择自驾出行,您可以将您的爱车停在距离小区大门口边上的停车场,每小时8元 ,封顶大约64元；<br />周边热门：田子坊（约1.4公里）、世博会中国国家馆（约2.2公里）、上海新天地（约2.2公里）<br />附近地铁站：鲁班路（约300米）、世博会博物馆（约400米）<br />机场 / 火车站：虹桥国际机场（约13.7公里）、浦东国际机场（约32.1公里）、上海火车站（约5.7公里）、上海南站（约6.7公里）、虹桥火车站（约14.9公里）<br />房源具体位置将在预订确认后提供',150123456789,968,true),
(null,3,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','广州市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true),
(null,4,'10号线水城路站步行1分钟/虹桥CBD/优雅舒适一房一厅','深圳市星空广场和仙霞路',320,'整套出租',89,'1室1厅0厨1卫','宜住2人','共1张','1.8m宽 × 2m长 ×1张','生活设施一应俱全,满足您全方位的需求:<br />- 星空广场(综合购物/美食广场)位于小区对面;<br />- 仙霞路美食､酒吧､休闲一条街;<br />
- 24小时便利店<br />均在步行范围内｡',true,true,true,true,true,true,true,true,false,true,'00:00-24:00','1天','12:00以前','6人','暂不支持','【虹桥机场】<br />- 出租车 -- 22分钟<br />- 地铁10号线 -- 12分钟<br />【虹桥火车站】<br />- 出租车 -- 20分钟<br />- 地铁10号线 -- 15 分钟<br />【浦东机场】<br />- 出租车 -- 50分钟<br />- 地铁2号线 -- 1小时26分钟<br />【地铁10号线】:由房间步行2分钟可达水城路站<br />- 虹桥机场 -- 12分钟<br />- 虹桥火车站 -- 15分钟<br />- 交通大学 -- 10分钟,可换乘11号线去往迪士尼<br />- 陕西南路(淮海路商圈)-- 16分钟<br />- 新天地 -- 19分钟<br />- 城隍庙/豫园 -- 28分钟<br />- 南京路步行街 -- 30分钟',150123456789,968,true);

/**房间图片**/
INSERT INTO yj_house_pic VALUES
(NULL, 1, 'imgs/houseimg/lg/10001-1.jpg','imgs/houseimg/lg/10001-1.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-2.jpg','imgs/houseimg/lg/10001-2.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-3.jpg','imgs/houseimg/lg/10001-3.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-4.jpg','imgs/houseimg/lg/10001-4.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-5.jpg','imgs/houseimg/lg/10001-5.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-6.jpg','imgs/houseimg/lg/10001-6.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-7.jpg','imgs/houseimg/lg/10001-7.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-8.jpg','imgs/houseimg/lg/10001-8.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-9.jpg','imgs/houseimg/lg/10001-9.jpg'),
(NULL, 1, 'imgs/houseimg/lg/10001-10.jpg','imgs/houseimg/lg/10001-10.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-1.jpg','imgs/houseimg/lg/10002-1.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-2.jpg','imgs/houseimg/lg/10002-2.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-3.jpg','imgs/houseimg/lg/10002-3.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-4.jpg','imgs/houseimg/lg/10002-4.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-5.jpg','imgs/houseimg/lg/10002-5.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-6.jpg','imgs/houseimg/lg/10002-6.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-7.jpg','imgs/houseimg/lg/10002-7.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-8.jpg','imgs/houseimg/lg/10002-8.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-9.jpg','imgs/houseimg/lg/10002-9.jpg'),
(NULL, 2, 'imgs/houseimg/lg/10002-10.jpg','imgs/houseimg/lg/10002-10.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-1.jpg','imgs/houseimg/lg/10003-1.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-2.jpg','imgs/houseimg/lg/10003-2.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-3.jpg','imgs/houseimg/lg/10003-3.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-4.jpg','imgs/houseimg/lg/10003-4.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-5.jpg','imgs/houseimg/lg/10003-5.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-6.jpg','imgs/houseimg/lg/10003-6.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-7.jpg','imgs/houseimg/lg/10003-7.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-8.jpg','imgs/houseimg/lg/10003-8.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-9.jpg','imgs/houseimg/lg/10003-9.jpg'),
(NULL, 3, 'imgs/houseimg/lg/10003-10.jpg','imgs/houseimg/lg/10003-10.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-1.jpg','imgs/houseimg/lg/10004-1.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-2.jpg','imgs/houseimg/lg/10004-2.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-3.jpg','imgs/houseimg/lg/10004-3.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-4.jpg','imgs/houseimg/lg/10004-4.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-5.jpg','imgs/houseimg/lg/10004-5.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-6.jpg','imgs/houseimg/lg/10004-6.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-7.jpg','imgs/houseimg/lg/10004-7.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-8.jpg','imgs/houseimg/lg/10004-8.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-9.jpg','imgs/houseimg/lg/10004-9.jpg'),
(NULL, 4, 'imgs/houseimg/lg/10004-10.jpg','imgs/houseimg/lg/10004-10.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-1.jpg','imgs/houseimg/lg/10005-1.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-2.jpg','imgs/houseimg/lg/10005-2.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-3.jpg','imgs/houseimg/lg/10005-3.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-4.jpg','imgs/houseimg/lg/10005-4.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-5.jpg','imgs/houseimg/lg/10005-5.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-6.jpg','imgs/houseimg/lg/10005-6.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-7.jpg','imgs/houseimg/lg/10005-7.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-8.jpg','imgs/houseimg/lg/10005-8.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-9.jpg','imgs/houseimg/lg/10005-9.jpg'),
(NULL, 5, 'imgs/houseimg/lg/10005-10.jpg','imgs/houseimg/lg/10005-10.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-1.jpg','imgs/houseimg/lg/10006-1.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-2.jpg','imgs/houseimg/lg/10006-2.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-3.jpg','imgs/houseimg/lg/10006-3.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-4.jpg','imgs/houseimg/lg/10006-4.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-5.jpg','imgs/houseimg/lg/10006-5.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-6.jpg','imgs/houseimg/lg/10006-6.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-7.jpg','imgs/houseimg/lg/10006-7.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-8.jpg','imgs/houseimg/lg/10006-8.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-9.jpg','imgs/houseimg/lg/10006-9.jpg'),
(NULL, 6, 'imgs/houseimg/lg/10006-10.jpg','imgs/houseimg/lg/10006-10.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-1.jpg','imgs/houseimg/lg/10007-1.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-2.jpg','imgs/houseimg/lg/10007-2.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-3.jpg','imgs/houseimg/lg/10007-3.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-4.jpg','imgs/houseimg/lg/10007-4.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-5.jpg','imgs/houseimg/lg/10007-5.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-6.jpg','imgs/houseimg/lg/10007-6.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-7.jpg','imgs/houseimg/lg/10007-7.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-8.jpg','imgs/houseimg/lg/10007-8.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-9.jpg','imgs/houseimg/lg/10007-9.jpg'),
(NULL, 7, 'imgs/houseimg/lg/10007-10.jpg','imgs/houseimg/lg/10007-10.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-1.jpg','imgs/houseimg/lg/10008-1.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-2.jpg','imgs/houseimg/lg/10008-2.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-3.jpg','imgs/houseimg/lg/10008-3.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-4.jpg','imgs/houseimg/lg/10008-4.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-5.jpg','imgs/houseimg/lg/10008-5.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-6.jpg','imgs/houseimg/lg/10008-6.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-7.jpg','imgs/houseimg/lg/10008-7.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-8.jpg','imgs/houseimg/lg/10008-8.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-9.jpg','imgs/houseimg/lg/10008-9.jpg'),
(NULL, 8, 'imgs/houseimg/lg/10008-10.jpg','imgs/houseimg/lg/10008-10.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-1.jpg','imgs/houseimg/lg/10009-1.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-2.jpg','imgs/houseimg/lg/10009-2.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-3.jpg','imgs/houseimg/lg/10009-3.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-4.jpg','imgs/houseimg/lg/10009-4.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-5.jpg','imgs/houseimg/lg/10009-5.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-6.jpg','imgs/houseimg/lg/10009-6.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-7.jpg','imgs/houseimg/lg/10009-7.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-8.jpg','imgs/houseimg/lg/10009-8.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-9.jpg','imgs/houseimg/lg/10009-9.jpg'),
(NULL, 9, 'imgs/houseimg/lg/10009-10.jpg','imgs/houseimg/lg/10009-10.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-1.jpg','imgs/houseimg/lg/10010-1.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-2.jpg','imgs/houseimg/lg/10010-2.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-3.jpg','imgs/houseimg/lg/10010-3.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-4.jpg','imgs/houseimg/lg/10010-4.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-5.jpg','imgs/houseimg/lg/10010-5.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-6.jpg','imgs/houseimg/lg/10010-6.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-7.jpg','imgs/houseimg/lg/10010-7.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-8.jpg','imgs/houseimg/lg/10010-8.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-9.jpg','imgs/houseimg/lg/10010-9.jpg'),
(NULL, 10, 'imgs/houseimg/lg/10010-10.jpg','imgs/houseimg/lg/10010-10.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-1.jpg','imgs/houseimg/lg/10011-1.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-2.jpg','imgs/houseimg/lg/10011-2.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-3.jpg','imgs/houseimg/lg/10011-3.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-4.jpg','imgs/houseimg/lg/10011-4.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-5.jpg','imgs/houseimg/lg/10011-5.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-6.jpg','imgs/houseimg/lg/10011-6.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-7.jpg','imgs/houseimg/lg/10011-7.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-8.jpg','imgs/houseimg/lg/10011-8.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-9.jpg','imgs/houseimg/lg/10011-9.jpg'),
(NULL, 11, 'imgs/houseimg/lg/10011-10.jpg','imgs/houseimg/lg/10011-10.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-1.jpg','imgs/houseimg/lg/10012-1.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-2.jpg','imgs/houseimg/lg/10012-2.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-3.jpg','imgs/houseimg/lg/10012-3.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-4.jpg','imgs/houseimg/lg/10012-4.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-5.jpg','imgs/houseimg/lg/10012-5.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-6.jpg','imgs/houseimg/lg/10012-6.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-7.jpg','imgs/houseimg/lg/10012-7.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-8.jpg','imgs/houseimg/lg/10012-8.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-9.jpg','imgs/houseimg/lg/10012-9.jpg'),
(NULL, 12, 'imgs/houseimg/lg/10012-10.jpg','imgs/houseimg/lg/10012-10.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-1.jpg','imgs/houseimg/lg/20001-1.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-2.jpg','imgs/houseimg/lg/20001-2.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-3.jpg','imgs/houseimg/lg/20001-3.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-4.jpg','imgs/houseimg/lg/20001-4.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-5.jpg','imgs/houseimg/lg/20001-5.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-6.jpg','imgs/houseimg/lg/20001-6.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-7.jpg','imgs/houseimg/lg/20001-7.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-8.jpg','imgs/houseimg/lg/20001-8.jpg'),
(NULL, 13, 'imgs/houseimg/lg/20001-9.jpg','imgs/houseimg/lg/20001-9.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-1.jpg','imgs/houseimg/lg/30001-1.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-2.jpg','imgs/houseimg/lg/30001-2.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-3.jpg','imgs/houseimg/lg/30001-3.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-4.jpg','imgs/houseimg/lg/30001-4.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-5.jpg','imgs/houseimg/lg/30001-5.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-6.jpg','imgs/houseimg/lg/30001-6.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-7.jpg','imgs/houseimg/lg/30001-7.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-8.jpg','imgs/houseimg/lg/30001-8.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-9.jpg','imgs/houseimg/lg/30001-9.jpg'),
(NULL, 14, 'imgs/houseimg/lg/30001-10.jpg','imgs/houseimg/lg/30001-10.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-1.jpg','imgs/houseimg/lg/40001-1.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-2.jpg','imgs/houseimg/lg/40001-2.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-3.jpg','imgs/houseimg/lg/40001-3.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-4.jpg','imgs/houseimg/lg/40001-4.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-5.jpg','imgs/houseimg/lg/40001-5.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-6.jpg','imgs/houseimg/lg/40001-6.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-7.jpg','imgs/houseimg/lg/40001-7.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-8.jpg','imgs/houseimg/lg/40001-8.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-9.jpg','imgs/houseimg/lg/40001-9.jpg'),
(NULL, 15, 'imgs/houseimg/lg/40001-10.jpg','imgs/houseimg/lg/40001-10.jpg');

/**用户信息**/
INSERT INTO yj_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');

/****首页轮播广告商品****/
INSERT INTO yj_index_carousel VALUES
(NULL, 'imgs/index/room1.jpg','轮播广告商品1','Detail.html?hid=1'),
(NULL, 'imgs/index/room2.jpg','轮播广告商品2','Detail.html?hid=2'),
(NULL, 'imgs/index/room3.jpg','轮播广告商品3','Detail.html?hid=3'),
(NULL, 'imgs/index/room4.jpg','轮播广告商品4','Detail.html?hid=4');

/****首页信息****/
INSERT INTO yj_index_house VALUES
(NULL, '家居房', 'imgs/index/houses.jpg','Detail.html?cid=1'),
(NULL, '洋房', 'imgs/index/house.jpg','Detail.html?cid=1'),
(NULL, '风景房', 'imgs/index/view.jpg','Detail.html?cid=1'),
(NULL, '客栈', 'imgs/index/inn.jpg','Detail.html?cid=1'),
(NULL, '别墅', 'imgs/index/villa.jpg','Detail.html?cid=1'),
(NULL, '公寓', 'imgs/index/apartment.jpg','Detail.html?cid=1'),
(NULL, '家庭出游', 'imgs/index/family.png','Detail.html?cid=1'),
(NULL, '新奇出游', 'imgs/index/feature.png','Detail.html?cid=1'),
(NULL, '优惠长住', 'imgs/index/long.png','Detail.html?cid=1'),
(NULL, '热情轰趴', 'imgs/index/party.png','Detail.html?cid=1');