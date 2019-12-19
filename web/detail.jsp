<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>商品详情页</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/detail.css">
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

    <form action="#" id="search">
        <input type="text">
        <button></button>
    </form>
</header>

<!-- 商品详情部分 -->
<div id="container">
    <!-- 商品导航 1230x60-->
    <div id="goods-nav">
        <div>
            <a href="#">Redmi Note 8</a>
            | <a href="#">Redmi Note 8 Pro</a>
        </div>
        
        <div>
            <a href="#">概述</a> | <a href="#">参数</a> | <a href="#">F码通道</a> | <a href="#">用户评价</a>
        </div>
    </div>
    <!-- 1230 x X -->
    <div id="detail">
        <input type="hidden" name="goodsId" id="goodsId">
        <!-- 图片轮播 560x560 -->
        <div id="dtleft">
            <img src="images/detail.jpg" alt="">
        </div>
        <!-- 商品介绍 -->
        <div id="dtright">
            <h2 id="goods-name">Redmi Note 8</h2>
            <div class="desc" id="goods-desc">
                4800万全场景四摄 / 前置1300万美颜相机 / 骁龙665处理器 / 4000mAh超长续航 / 标配18W快充 / 超线性扬声器 / 90%高屏占比 / 康宁大猩猩保护玻璃 / 6.3英寸水滴全面屏
            </div>
            <div class="goodstype">小米自营</div>
            <div class="price" id="goods-price">
                <span>1299元</span>
                <del>1399元</del>
            </div>
            <div id="address">
                <em></em>
                <span>河南</span>
                <span>平顶山市</span>
                <span>汝州市</span>
                <span><a href="">修改</a></span>
                <p>有现货</p>
            </div>
            <div class="vinfo">
                <h2>选择版本</h2>
                <div>
                    <span>6G+128G</span>
                    <span>1299元</span>
                </div>
                <div>
                    <span>4G+128G</span>
                    <span>999元</span>
                </div>
                <div>
                    <span>6G+64G</span>
                    <span>1099元</span>
                </div>
            </div>
            <div style="clear:both;"></div>
            <div class="vinfo">
                <h2>选择颜色</h2>
                <div>
                    <span></span>
                    <span>梦幻蓝</span>
                </div>
                <div>
                    <span></span>
                    <span>皓月白</span>
                </div>
                <div>
                    <span></span>
                    <span>曜石黑</span>
                </div>
            </div>
            <div style="clear:both;"></div>
            <div class="order">
                <div>
                    <span>Redmi Note 8 6GB+128GB 梦幻蓝</span>
                    <span>1399元 <del>1299 元</del></span>
                    <div style="clear:both;"></div>
                </div>
                <div id="goods-subtotal">
                    总计 ：1299元
                </div>
                <div style="clear:both;"></div>
            </div>
            <div class="btns">
                <input type="submit" id="addCart" value="加入购物车">
                <button><em></em> 喜欢</button>
            </div>
        </div>
        <div style="clear:both;"></div>
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
       // 获取到查询商品的编号
       let $gid = window.location.search.split("=")[1];
       // 发送请求获取商品数据
        $.ajax({
            url: "/xiaomi/goods/detail/" + $gid,
            method: "get",
            success: function(response) {
                console.log(response);
                let $goods = response.objectMap.goods;
                // 更新商品编号
                $("#goodsId").val($goods.id);
                // 更新商品名称
                $("#goods-name").text($goods.name);
                // 更新商品描述
                $("#goods-desc").text($goods.remark);
                // 更新商品价格
                $("#goods-price span").text($goods.price + "元");
                $("#goods-price del").text($goods.price + "元");
                $("#goods-subtotal").text("总计：" + $goods.price + "元");
                // 更新商品图片
                $("#dtleft > img").attr("src", $goods.goodsImages[0].path)
            },
            error: function () {
                console.log("请求迷失了");
            }
        });

        $("#addCart").click(function() {
            // 获取商品编号
            let $gid = $("#goodsId").val();
            // 加入购物车
            $.ajax({
                url: "/xiaomi/shopcart/add/" + $gid,
                method: "GET",
                success: function(response) {
                    if(response.errorCode === "100" ) {
                        alert("Congratulations, 商品成功加入购物车")
                    } else {
                        alert("商品加入购物车失败，请稍后再试..")
                    }
                },
                error: function() {
                    console.log("请求走丢了...");
                    alert("服务器繁忙，小二正在维护的路上，请稍后再试...")
                }
            });
        });
    });
</script>
</body>
</html>