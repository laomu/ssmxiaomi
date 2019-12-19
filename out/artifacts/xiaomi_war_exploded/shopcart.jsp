<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小米商城 - 购物车</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/shopcart.css">
    <link rel="stylesheet" href="js/bootstrap-3.3.7-dist/css/bootstrap.min.css">
</head>
<body>
<div id="outer">
    <header>
        <div id="logo">
            <img src="images/logo.png" alt="">
            <div>我的购物车</div>
        </div>
        <div id="cart-info">
            温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算
        </div>

        <div id="personinfo">
            <div>用户DAMU <i class="glyphicon glyphicon-chevron-down"></i>
                <ul>
                    <li></li>
                </ul>
            </div>
            <div>
                <a href="#">我的订单</a>
            </div>
        </div>
    </header>
</div>

<div id="cartcontainer">
    <div class="shopcart">
        <div class="list-head">
            <div class="col-check">
                <input type="checkbox" name="all" id="all">
                <strong>全选</strong>
            </div>
            <div class="col-img">&nbsp;</div>
            <div class="col-name">商品名称</div>
            <div class="col-price">单价</div>
            <div class="col-num">数量</div>
            <div class="col-total">小计</div>
            <div class="col-action">操作</div>
        </div>
        <div class="list-body" id="shopcart-box">
            <!--

            购物车商品展示区域
            -->

        </div>
    </div>

    <div class="list-order">
        <div class="shop">
            <a href="#">继续购物 </a>
            <span>共 <strong>2</strong> 件商品，已选择 <strong>0</strong> 件</span>
        </div>
        <div class="order-res">
            <span>合计：<strong>0</strong>元</span>
            <input type="button" value="去结算">
        </div>
    </div>

    <div class="tuijian">
        <div class="tjtitle">
            <div class="tjline"></div>
            <div class="tjdesc">买购物车中商品的人还买了</div>
        </div>
        <div class="goods_list">
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
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
                        <button>加入购物车</button>
                    </div>
                </a>
            </div>

            <div style="clear:both;"></div>
        </div>
    </div>
</div>

<div style="clear:both;"></div>

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
        $.ajax({
            url: "/xiaomi/shopcart/chk",
            method: "GET",
            success: function(response) {
                console.log(response);
                // 获取所有的商品
                let $cartList = response.objectMap.cartList;
                console.log($cartList);
                for(let i = 0; i < $cartList.length; i++) {
                    console.log("....." + $cartList[i]);
                    let $list_item = $("<div>").addClass("list-item");

                    let $col_check = $("<div>").addClass("col-check");
                    let $checkbox = $("<input>").attr("type", "checkbox");
                    $col_check.append($checkbox);

                    let $col_img = $("<div>").addClass("col-img");
                    let $img = $("<img>").attr("src", $cartList[i].goodsImages[0].path);
                    $col_img.append($img);

                    let $col_name = $("<div>").addClass("col-name").text("商品名称");
                    let $col_price = $("<div>").addClass("col-price").text("商品单价");

                    let $col_num = $("<div>").addClass("col-num");
                    let $add = $("<a>").attr("href", "#").append($("<em>").addClass("glyphicon glyphicon-minus"));
                    let $col_input = $("<input>").attr("type", "text").val($cartList[i].buyCount);
                    let $sub = $("<a>").attr("href", "#").append($("<em>").addClass("glyphicon glyphicon-plus"));
                    $col_num.append($add).append($col_input).append($sub);

                    let $col_total = $("<div>").addClass("col-total").text($cartList[i].subtotal);
                    let $operation = $("<div>").addClass("col-action").append($("<span>").addClass("glyphicon glyphicon-remove"));
                    $col_total.append($operation);

                    let $clear = $("<div>").css("clear", "both");

                    $list_item.append($col_check).append($col_img).append($col_name).append($col_price).append($col_num)
                        .append($col_total).append($operation).append($clear);

                    $("#shopcart-box").append($list_item);
                }
            },
            error: function() {
                console.log("请求走丢了，小二正在路上...");
            }
        });
    });
</script>
</body>
</html>