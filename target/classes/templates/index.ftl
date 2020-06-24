<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>美食分享平台首页</title>
    <link rel="icon" href="../assets/img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="../css/style_.css">
    <link rel="stylesheet" type="text/css" href="../css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="../css/pages-list.css" />
    <link rel="stylesheet" type="text/css" href="../css/widget-cartPanelView.css" />
</head>

<body>
<!-- 头部栏位 -->
<!--页面顶部-->
<div id="nav-bottom">
    <!--顶部-->
    <div class="nav-top">
        <div class="top">
            <div class="py-container">
                <div class="shortcut">
                    <ul class="fl">
                        <li class="f-item">美食分享平台欢迎您！</li>
								<#if user1??>
								<li class="f-item">
                                    　<span>${user1.username}</span></li>
								<#else>
								<li class="f-item">请
                                    <a href="login.html" target="_blank">登录</a>　<span><a href="register.html" target="_blank">免费注册</a></span></li>
								</#if>
                    </ul>
                    <ul class="fr">
                        <li class="f-item"><a href="/food/add" target="_blank">发布美食</a></li>
                        <li class="f-item space"></li>
                        <li class="f-item">
                            <a href="home.html" target="_blank">我的美食</a>
                        </li>
                        <li class="f-item space"></li>
                        <li class="f-item">平台会员</li>
                        <li class="f-item space"></li>
                        <li class="f-item">企业采购</li>
                        <li class="f-item space"></li>
                        <li class="f-item">关注我们</li>
                        <li class="f-item space"></li>
                        <li class="f-item" id="service">
                            <span>客户服务</span>
                            <ul class="service">
                                <li>
                                    <a href="cooperation.html" target="_blank">合作招商</a>
                                </li>
                                <li>
                                    <a href="shoplogin.html" target="_blank">商家后台</a>
                                </li>
                                <li>
                                    <a href="cooperation.html" target="_blank">合作招商</a>
                                </li>
                                <li>
                                    <a href="#">管理后台</a>
                                </li>
                            </ul>
                        </li>
                        <li class="f-item space"></li>
                        <li class="f-item">网站导航</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>


<!--list-content-->
<div class="main">
    <div class="py-container">
        <!--details-->
        <div class="details">
            <div class="sui-navbar">
                <div class="navbar-inner filter">
                    <ul class="sui-nav">
                        <li class="active">
                            <a href="#">综合</a>
                        </li>
                        <li>
                            <a href="#">销量</a>
                        </li>
                        <li>
                            <a href="#">新品</a>
                        </li>
                        <li>
                            <a href="#">评价</a>
                        </li>
                        <li>
                            <a href="#">价格</a>
                        </li>
                    </ul>
                    <div class="search" style="margin-left: 635px;">
                        <form action="../food/search" class="sui-form form-inline" method="post" target="_blank">
                            <!--searchAutoComplete-->
                            <div class="input-append">
                                <input type="text" id="autocomplete" type="text" class="input-error input-xxlarge" name="title"/>
                                <input  class="sui-btn btn-xlarge btn-danger" type="submit" value="搜索">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="main_" id="main" style="margin-top: 5px">

                    <!-- 导航菜单 -->
                    <!-- <div class="menu-box"></div> -->
                    <!-- 子菜单 -->
                    <div class="sub-menu hide" id="sub-menu">
                        <!-- 手机、配件 -->

                    </div>
                    <!-- 菜单内容 -->
                    <div class="menu-content" id="menu-content">

                    </div>
                    <!-- 图片轮播 -->
                    <div class="banner" id="banner">
			<#list illustrationList as illustration>
				<#if illustration_index == 0>
					<a href="../illustration/makingList?iid=${illustration.iid}" target="_blank">
                        <div class="banner-slide slide1 slide-active">
                            <img src="../${illustration.img}">
                        </div>
                    </a>
				<#elseif illustration_index == 1>
					<a href="../illustration/makingList?iid=${illustration.iid}" target="_blank">
                        <div class="banner-slide slide1">
                            <img src="../${illustration.img}">
                        </div>
                    </a>
				<#else>
					<a href="../illustration/makingList?iid=${illustration.iid}" target="_blank">
                        <div class="banner-slide slide2">
                            <img src="../${illustration.img}">
                        </div>
                    </a>
				</#if>
			</#list>
                    </div>
                    <a href="javascript:void(0)" class="button pre" id="pre"></a>
                    <a href="javascript:void(0)" class="button next" id="next"></a>
                    <div class="dots" id="dots">
                        <span class="active"></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <script src="../js/script.js"></script>
            </div>

            <!-- goods list begin -->
            <div class="goods-list" style="margin-top: -30px">
                <ul class="yui3-g">
						<#list foodList as food>
                            <li class="yui3-u-1-5">
                                <div class="list-wrap">
                                    <div class="p-img">
                                        <a href="../food/detail?fid=${food.fid}" target="_blank"><img src="../${food.img}" /></a>
                                    </div>
                                    <div class="attr">
                                        <em>${food.title}</em>
                                    </div>
                                    <div class="cu">
                                        <em></em>
                                    </div>
                                    <div class="commit">
                                        <i class="command">${food.user.username}</i>
                                    </div>
                                    <div class="operate">
                                        <a href="success-cart.html" target="_blank" class="sui-btn btn-bordered btn-danger">查看详情</a>
                                        <a href="javascript:void(0);" class="sui-btn btn-bordered" style="margin-left: 30px;">查看评论</a>
                                    </div>
                                </div>
                            </li>
						</#list>
                </ul>
            </div>
            <!-- goods list end -->
            <div class="fr page">
                <div class="sui-pagination pagination-large">
                    <ul>
                        <li class="prev disabled">
                            <a href="#">«上一页</a>
                        </li>
                        <li class="active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">5</a>
                        </li>
                        <li class="dotted"><span>...</span></li>
                        <li class="next">
                            <a href="#">下一页»</a>
                        </li>
                    </ul>
                    <div><span>共10页&nbsp;</span><span>
      到第
      <input type="text" class="page-num">
      页 <button class="page-confirm" onclick="alert(1)">确定</button></span></div>
                </div>
            </div>
        </div>
        <!--hotsale-->
        <div class="clearfix hot-sale">
            <h4 class="title">最多人看</h4>
            <div class="hot-list">
                <ul class="yui3-g">
                    <li class="yui3-u-1-4">
                        <div class="list-wrap">
                            <div class="p-img">
                                <img src="../img/like_01.png" />
                            </div>
                            <div class="attr">
                                <em>派悦坊大都会红丝绒乳酪生日蛋糕芝士蛋糕聚会</em>
                            </div>
                            <div class="commit">
                                <i class="command">已有700人评价</i>
                            </div>
                        </div>
                    </li>
                    <li class="yui3-u-1-4">
                        <div class="list-wrap">
                            <div class="p-img">
                                <img src="../img/like_02.png" />
                            </div>
                            <div class="attr">
                                <em>21cake百利甜情人新鲜乳脂奶油水果生日礼物蛋糕</em>
                            </div>
                            <div class="commit">
                                <i class="command">已有700人评价</i>
                            </div>
                        </div>
                    </li>
                    <li class="yui3-u-1-4">
                        <div class="list-wrap">
                            <div class="p-img">
                                <img src="../img/like_03.png" />
                            </div>
                            <div class="attr">
                                <em>派悦坊白羊座生日蛋糕“羊咩咩”美式焦糖香蕉蛋糕</em>
                            </div>
                            <div class="commit">
                                <i class="command">已有20人评价</i>
                            </div>
                        </div>
                    </li>
                    <li class="yui3-u-1-4">
                        <div class="list-wrap">
                            <div class="p-img">
                                <img src="../img/like_04.png" />
                            </div>
                            <div class="attr">
                                <em>诺心LECAKE环游世界网红水果奶油芝士生日蛋糕</em>
                            </div>
                            <div class="commit">
                                <i class="command">已有700人评价</i>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- 底部栏位 -->
<!--页面底部-->
<div class="clearfix footer">
    <div class="py-container">
        <div class="footlink">
            <div class="Mod-service">
                <ul class="Mod-Service-list">
                    <li class="grid-service-item intro  intro1">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>超级好吃</h4>
                            <p>超级好吃，营养健康</p>
                        </div>

                    </li>
                    <li class="grid-service-item  intro intro2">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>超级好吃</h4>
                            <p>超级好吃，营养健康</p>
                        </div>

                    </li>
                    <li class="grid-service-item intro  intro3">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>超级好吃</h4>
                            <p>超级好吃，营养健康</p>
                        </div>

                    </li>
                    <li class="grid-service-item  intro intro4">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>超级好吃</h4>
                            <p>超级好吃，营养健康</p>
                        </div>

                    </li>
                    <li class="grid-service-item intro intro5">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>超级好吃</h4>
                            <p>超级好吃，营养健康</p>
                        </div>

                    </li>
                </ul>
            </div>
            <div class="clearfix Mod-list">
                <div class="yui3-g">
                    <div class="yui3-u-1-6">
                        <h4>购物指南</h4>
                        <ul class="unstyled">
                            <li>购物流程</li>
                            <li>会员介绍</li>
                            <li>生活美食</li>
                            <li>常见问题</li>
                            <li>购物指南</li>
                        </ul>

                    </div>
                    <div class="yui3-u-1-6">
                        <h4>配送方式</h4>
                        <ul class="unstyled">
                            <li>上门自提</li>
                            <li>211限时达</li>
                            <li>配送服务查询</li>
                            <li>配送费收取标准</li>
                            <li>立即配送</li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>支付方式</h4>
                        <ul class="unstyled">
                            <li>货到付款</li>
                            <li>在线支付</li>
                            <li>分期付款</li>
                            <li>邮局汇款</li>
                            <li>公司转账</li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>售后服务</h4>
                        <ul class="unstyled">
                            <li>售后政策</li>
                            <li>价格保护</li>
                            <li>退款说明</li>
                            <li>再来一份</li>
                            <li>取消订单</li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>特色服务</h4>
                        <ul class="unstyled">
                            <li>夺宝岛</li>
                            <li>DIY定制</li>
                            <li>保鲜服务</li>
                            <li>平台E卡</li>
                            <li>平台通信</li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>帮助中心</h4>
                        <img src="../img/wx_cz.jpg">
                    </div>
                </div>
            </div>
            <div class="Mod-copyright">
                <ul class="helpLink">
                    <li>关于我们<span class="space"></span></li>
                    <li>联系我们<span class="space"></span></li>
                    <li>关于我们<span class="space"></span></li>
                    <li>商家入驻<span class="space"></span></li>
                    <li>营销中心<span class="space"></span></li>
                    <li>友情链接<span class="space"></span></li>
                    <li>关于我们<span class="space"></span></li>
                    <li>营销中心<span class="space"></span></li>
                    <li>友情链接<span class="space"></span></li>
                    <li>关于我们</li>
                </ul>
                <p>地址：广州大学华软软件学院 邮编：510990 电话：020－87818918 传真：87818020</p>
                <p>4401840100050 粤ICP备：05085382号</p>
            </div>
        </div>
    </div>
</div>
<!--页面底部END-->
<!--侧栏面板开始-->
<div class="J-global-toolbar">
    <div class="toolbar-wrap J-wrap">
        <div class="toolbar">
            <div class="toolbar-panels J-panel">


            </div>

            <div class="toolbar-header"></div>


            <div class="toolbar-mini"></div>

        </div>

        <div id="J-toolbar-load-hook"></div>

    </div>
</div>
<!--购物车单元格 模板-->
<script type="text/template" id="tbar-cart-item-template">
    <div class="tbar-cart-item">
        <div class="jtc-item-promo">
            <em class="promo-tag promo-mz">满赠<i class="arrow"></i></em>
            <div class="promo-text">已购满600元，您可领赠品</div>
        </div>
        <div class="jtc-item-goods">
            <span class="p-img"><a href="#" target="_blank"><img src="{2}" alt="{1}" height="50" width="50" /></a></span>
            <div class="p-name">
                <a href="#">{1}</a>
            </div>
            <div class="p-price"><strong>¥{3}</strong>×{4} </div>
            <a href="#none" class="p-del J-del">删除</a>
        </div>
    </div>
</script>
<!--侧栏面板结束-->
<script type="text/javascript" src="../js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">
    $(function() {
        $("#service").hover(function() {
            $(".service").show();
        }, function() {
            $(".service").hide();
        });
        $("#shopcar").hover(function() {
            $("#shopcarlist").show();
        }, function() {
            $("#shopcarlist").hide();
        });

    })
</script>
<script type="text/javascript" src="../js/model/cartModel.js"></script>
<script type="text/javascript" src="../js/czFunction.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="../js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="../js/widget/cartPanelView.js"></script>
</body>

</html>