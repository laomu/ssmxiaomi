<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小米商城</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css">
</head>
<body>
<!-- 网页头部导航 -->
<div id="top">
    <div id="navtop">
        <div class="ntleft">
            <a href="#">小米商城</a> | <a href="#">MIUI</a> | <a href="#">IoT</a> | <a href="#">云服务</a> | <a href="#">金融</a> |
            <a href="#">有品</a> | <a href="#">小爱开放平台</a> | <a href="#">企业团购</a> | <a href="#">资质证照</a> | <a
                href="#">协议规则</a> | <a href="#">下载app</a> | <a href="#">Select Location</a>
        </div>
        <div class="ntright">
            <a href="#">登录</a> | <a href="#">注册</a> | <a href="#">消息通知</a>  <div><a href="/xiaomi/shopcart.jsp">购物车 (0)</a></div>
        </div>
    </div>
</div>
<header>
    <div id="logo">
        <img src="images/logo.png" alt="">
    </div>
    <ul id="navigate">
        <li>小米手机</li>
        <li>Redmi 红米</li>
        <li>电视</li>
        <li>笔记本</li>
        <li>家电</li>
        <li>路由器</li>
        <li>智能硬件</li>
        <li>服务</li>
        <li>社区</li>
    </ul>
    <!-- 搜索框 -->
    <form action="#" id="search">
        <input type="text">
        <button></button>
    </form>
</header>

<!-- 网页bannel和滚动广告 -->
<nav>
    <div id="bannel">
        <div id="bannel-type">
            <ul>
                <!-- 加载商品类型导航 -->
            </ul>
        </div>
        <div id="bannel-imgs">
            <img src="images/bn1.webp" alt="">
        </div>
    </div>
    <div id="advertis">
        <div id="advleft">
            <div>
                <img src="images/ad1.png" alt="">
                <div>小米秒杀</div>
            </div>
            <div>
                <img src="images/ad2.png" alt="">
                <div>企业团购</div>
            </div>
            <div>
                <img src="images/ad3.png" alt="">
                <div>F码通道</div>
            </div>
            <div>
                <img src="images/ad4.png" alt="">
                <div>米粉卡</div>
            </div>
            <div>
                <img src="images/ad5.png" alt="">
                <div>以旧换新</div>
            </div>
            <div>
                <img src="images/ad6.png" alt="">
                <div>话费充值</div>
            </div>
        </div>
        <div id="advright">
            <img src="images/adv1.jpg" alt="">
            <img src="images/adv2.jpg" alt="">
            <img src="images/adv3.jpg" alt="">
        </div>
    </div>
</nav>
<!-- 网页主体内容 -->
<div id="container">
    <!-- 小米闪购 -->
    <div id="home-flashsale">
        <div id="box-hd">
            <h2>小米闪购</h2>
        </div>
        <div id="box-bd">
            <div id="box-bd-timer">
                <div class="round">10:00场</div>
                <img src="images/sgx" alt="">
                <div class="desc">距离结束还有</div>
            </div>
            <div id="box-bd-inner">
                <div class="fav">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="images/sg1.jpg" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="fav">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="images/sg2.jpg" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="fav">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="images/sg3.webp" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>

                    </a>
                </div>
                <div class="fav">
                    <a href="#">
                        <div class="content">
                            <div class="thumb">
                                <img src="images/sg4.jpg" alt="">
                            </div>
                            <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                            <div class="desc">超薄机身，除菌净衣</div>
                            <div class="price">
                                <span>1299</span>元
                                <del>1399元</del>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- 广告条 -->
    <div class="home-banner-box">
        <img src="images/gg1.webp" alt="">
    </div>
    <!-- 小米手机 -->
    <div class="goods_row">
        <div class="gtheader">
            <h2>小米手机</h2>
        </div>
        <div class="grleft">
            <img src="images/sj01.webp" alt="">
        </div>
        <div class="grright" id="xiaomiphone">
            <!-- 小米手机展示区域-->
        </div>
    </div>
    <!-- 广告条 -->
    <div class="home-banner-box">
        <img src="images/gg2.webp" alt="">
    </div>
    <!-- 红米手机 -->
    <div class="goods_row">
        <div class="gtheader">
            <h2>红米手机</h2>
        </div>
        <div class="grleft">
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/jd01.webp" alt="">
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/jd02.webp" alt="">
                </a>
            </div>
        </div>
        <div class="grright" id="hongmiphone">
            <!-- 红米手机展示区域 -->
        </div>
    </div>
    <!-- 广告条 -->
    <div class="home-banner-box">
        <img src="images/gg3.webp" alt="">
    </div>
    <!-- 游戏手机 -->
    <div class="goods_row">
        <div class="gtheader">
            <h2>游戏手机</h2>
        </div>
        <div class="grleft">
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/zn1.webp" alt="">
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/zn2.webp" alt="">
                </a>
            </div>
        </div>
        <div class="grright" id="gamephone">
            <!-- 游戏手机展示区域 -->
        </div>
    </div>

    <!-- 广告条 -->
    <div class="home-banner-box">
        <img src="images/gg4.webp" alt="">
    </div>
    <!-- 全面屏电视 -->
    <div class="goods_row">
        <div class="gtheader">
            <h2>全面屏电视</h2>
        </div>
        <div class="grleft">
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/dp1.webp" alt="">
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/dp2.webp" alt="">
                </a>
            </div>
        </div>
        <div class="grright" id="tv">
            <!-- 电视展示区域 -->
        </div>
    </div>
    <!-- 广告条 -->
    <div class="home-banner-box">
        <img src="images/gg5.webp" alt="">
    </div>
    <!-- 配件 -->
    <div class="goods_row">
        <div class="gtheader">
            <h2>配件</h2>
        </div>
        <div class="grleft">
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/pj1.webp" alt="">
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/pj2.webp" alt="">
                </a>
            </div>
        </div>
        <div class="grright">
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <!-- 广告条 -->
    <div class="home-banner-box">
        <img src="images/gg6.webp" alt="">
    </div>
    <!-- 周边 -->
    <div class="goods_row">
        <div class="gtheader">
            <h2>周边</h2>
        </div>
        <div class="grleft">
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/zb1.webp" alt="">
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <img src="images/zb2.webp" alt="">
                </a>
            </div>
        </div>
        <div class="grright">
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
            <div class="goodsboxitem">
                <a href="#">
                    <div class="content">
                        <div class="thumb">
                            <img src="images/sg4.jpg" alt="">
                        </div>
                        <div class="title">米家变频滚筒洗衣机1S 8kg 银色</div>
                        <div class="desc">超薄机身，除菌净衣</div>
                        <div class="price">
                            <span>1299</span>元
                            <del>1399元</del>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <!-- 广告条 -->
    <div class="home-banner-box">
        <img src="images/gg7.webp" alt="">
    </div>
    <!-- 视频 -->
    <div id="home-video-box" class="goods_row">
        <div class="gtheader">
            <h2>视频</h2>
        </div>
        <div id="home-video-box-bd">
            <div class="goodsboxitem">
                <img src="images/sp1.webp" alt="">
                <div class="desc">
                    小米MIX Alpha 开箱视频
                </div>
            </div>
            <div class="goodsboxitem">
                <img src="images/sp2.webp" alt="">
                <div class="desc">
                    小米5G新品手机发布会
                </div>
            </div>
            <div class="goodsboxitem">
                <img src="images/sp3.webp" alt="">
                <div class="desc">
                    Redmi Note 8 系列发布会
                </div>
            </div>
            <div class="goodsboxitem">
                <img src="images/sp4.webp" alt="">
                <div class="desc">
                    小米电视5 创新背后的故事
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <!-- 维修客户服务 -->
    <div id="footer-service">
        <ul>
            <li><a href="#"><img src="images/ss01.png" alt="">预约维修服务</a></li>
            <li><a href="#"><img src="images/ss02.png" alt="">7天无理由退货</a></li>
            <li><a href="#"><img src="images/ss03.png" alt="">15天免费换货</a></li>
            <li><a href="#"><img src="images/ss04.png" alt="">满150元包邮</a></li>
            <li><a href="#"><img src="images/ss05.png" alt="">520余家售后网点</a></li>
        </ul>
    </div>
    <!-- 快捷连接 -->
    <div id="footer-links">
        <dl>
            <dt>帮助中心</dt>
            <dd><a href="#">账户管理</a></dd>
            <dd><a href="#">购物指南</a></dd>
            <dd><a href="#">订单操作</a></dd>
        </dl>
        <dl>
            <dt>服务支持</dt>
            <dd><a href="#">售后政策</a></dd>
            <dd><a href="#">自助服务</a></dd>
            <dd><a href="#">相关下载</a></dd>
        </dl>
        <dl>
            <dt>线下门店</dt>
            <dd><a href="#">小米之家</a></dd>
            <dd><a href="#">服务网点</a></dd>
            <dd><a href="#">授权体验店</a></dd>
        </dl>
        <dl>
            <dt>关于小米</dt>
            <dd><a href="#">了解小米</a></dd>
            <dd><a href="#">加入小米</a></dd>
            <dd><a href="#">投资者关系</a></dd>
        </dl>
        <dl>
            <dt>关注我们</dt>
            <dd><a href="#">新浪微博</a></dd>
            <dd><a href="#">官方微信</a></dd>
            <dd><a href="#">联系我们</a></dd>
        </dl>
        <dl>
            <dt>特色服务</dt>
            <dd><a href="#">F 码通道</a></dd>
            <dd><a href="#">礼物码</a></dd>
            <dd><a href="#">防伪查询</a></dd>
        </dl>
    </div>
    <!-- 网站信息-->
    <div id="site-info">
        <div class="sileft">
            <img src="images/logo.png" alt="">
        </div>
        <div class="siright">
            <a href="#">小米商城</a> | <a href="#">MIUI</a> | <a href="#">米家</a> | <a href="#">米聊</a> | <a href="#">多看</a> |
            <a href="#">游戏</a> | <a href="#">路由器</a> | <a href="#">米粉卡</a> | <a href="#">政企服务</a> | <a
                href="#">小米天猫店</a> | <a href="#">小米集团隐私政策</a> | <a href="#">小米公司儿童信息保护规则</a> | <a href="#">小米商城隐私政策</a> |
            <a href="#">小米商城用户协议</a> | <a href="#">问题反馈</a> | <a href="#">廉正举报</a> |
            <a href="#">诚信合规</a> | <a href="#">Select Location</a><br/>
            <a href="#">© mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2017]1530-131号</a><br />
            <a href="#">（京）网械平台备字（2018）第00005号 互联网药品信息服务资格证 (京) -非经营性-2014-0090 营业执照 医疗器械质量公告</a><br />
            <a href="#">增值电信业务许可证</a> <a href="#">网络食品经营备案（京）【2018】WLSPJYBAHF-12 食品经营许可证</a>
            <a href="#">违法和不良信息举报电话：185-0130-1238 知识产权侵权投诉 本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</a>
        </div>
    </div>
</footer>
<script src="js/jquery/jquery-3.4.1.js"></script>
<script>
    $(function() {
       // 直接发送请求获取数据
       $.ajax({
           url: "/xiaomi/initIndex",
           method: "GET",
           success: function(response) {
               console.log(response);
               // 获取到后台返回的一级商品类型数据
               let $goodsTypes = response.objectMap.goodsTypeList;
               // 遍历商品类型
               for(let i = 0; i < $goodsTypes.length; i++) {
                   // 创建对应的标签
                   let $li = $("<li>").attr("id", $goodsTypes[i].id).text($goodsTypes[i].name);
                   let $span = $("<span>").append($("<em>").addClass("glyphicon glyphicon-menu-right"));
                   $li.append($span);
                   // 将数据加载到网页中ul菜单中
                   $("#bannel-type > ul").append($li);
               }
               // 加载楼层商品
               // 获取小米手机商品
               let $xiaomiphonelist = response.objectMap.goodsMap["10001"];
               loadGoods($xiaomiphonelist, $("#xiaomiphone"));
               // 获取红米手机商品
               let $hongmiphonelist = response.objectMap.goodsMap["10002"];
               loadGoods($hongmiphonelist, $("#hongmiphone"));
               // 获取游戏手机商品
               let $gamephonelist = response.objectMap.goodsMap["10003"];
               loadGoods($gamephonelist, $("#gamephone"));
               // 获取电视商品
               let $tvlist = response.objectMap.goodsMap["20002"];
               loadGoods($tvlist, $("#tv"));

           },
           error: function() {
               console.log("请求迷路了....")
           }
       });

       function loadGoods(goodslist, container) {
           // 遍历商品列表，将商品添加到页面汇总
           for(let i = 0; i < goodslist.length; i++) {
               let $boxitem = $("<div>").addClass("goodsboxitem");
               let $a = $("<a>").attr("href", "/xiaomi/detail.jsp?gid=" + goodslist[i].id);
               let $content = $("<div>").addClass("content");

               let $thumb = $("<div>").addClass("thumb");
               let $img = $("<img>").attr("src", goodslist[i].goodsImages[0].path);
               $thumb.append($img);

               let $title = $("<div>").addClass("title").text(goodslist[i].name);
               let $desc = $("<div>").addClass("desc").text(goodslist[i].remark.substring(10));

               let $price = $("<div>").addClass("price");
               let $span = $("<span>").text(goodslist[i].price + "元");
               let $del = $("<del>").text(goodslist[i].price + "元");
               $price.append($span).append($del);

               $content.append($thumb).append($title).append($desc).append($price);
               $a.append($content);
               $boxitem.append($a);

               container.append($boxitem);
           }
       }
        $("#search button").click(function() {
            // 获取搜索关键词
            let $word = $("#search input").val();
            console.log($word);
            // 跳转页面
            window.location = "/xiaomi/goodslist.jsp?wd=" + $word;
            // 按钮存在在表单中的，所以点击按钮的时候需要组织浏览器默认行为
            window.event.returnValue = false;
        });
       /*
       通常情况下， 由JS脚本加载的DOM元素（html标签）通过普通的事件处理方式，是添加不了事件操作的。
            JS脚本加载的元素：未来元素，普通事件操作会失效。
            事件委托的方式可以给未来元素增加事件操作
        */
       $("#bannel-type > ul").on("click", "li", function() {
           // 获取商品类型编号
           let $goodsTypeId = $(this).prop("id");
           // 页面跳转
           window.location = "/xiaomi/goodslist2.jsp?level=1&goodsTypeId="+$goodsTypeId;

           /*// 发送ajax请求
           $.ajax({
               url: "/xiaomi/1/" + $goodsTypeId,
               method: "GET",
               success:function(response) {
                   console.log(response);
               },
               error:function() {
                   console.log("请求迷路了...");
               }
           });*/
       })
    });
</script>
</body>
</html>