<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<title>美食搜索结果页</title>
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
								<li class="f-item">${title}的搜索结果如下：</li>
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
					</div>
					

				<!-- goods list begin -->
				<div class="goods-list">
					<ul class="yui3-g">
						<#list foodList as food>
						<li class="yui3-u-1-5">
							<div class="list-wrap">
								<div class="p-img">
									<a href="item.html" target="_blank"><img src="../${food.img}" /></a>
								</div>
								<div class="attr">
									<em>${food.title}</em>
								</div>
								<div class="cu">
									<em></em>
								</div>
								<div class="commit">
									<i class="command">已有2000人评价</i>
								</div>
								<div class="operate">
									<a href="/food/footLook?fid=${food.fid}" class="sui-btn btn-bordered btn-danger" target="_blank">查看详情</a>
									<a href="" class="sui-btn btn-bordered" style="margin-left: 30px;">查看评论</a>
								</div>
							</div>
						</li>
						</#list>
					</ul>
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
								<h4>正品保障</h4>
								<p>正品保障，提供发票</p>
							</div>

						</li>
						<li class="grid-service-item  intro intro2">

							<i class="serivce-item fl"></i>
							<div class="service-text">
								<h4>正品保障</h4>
								<p>正品保障，提供发票</p>
							</div>

						</li>
						<li class="grid-service-item intro  intro3">

							<i class="serivce-item fl"></i>
							<div class="service-text">
								<h4>正品保障</h4>
								<p>正品保障，提供发票</p>
							</div>

						</li>
						<li class="grid-service-item  intro intro4">

							<i class="serivce-item fl"></i>
							<div class="service-text">
								<h4>正品保障</h4>
								<p>正品保障，提供发票</p>
							</div>

						</li>
						<li class="grid-service-item intro intro5">

							<i class="serivce-item fl"></i>
							<div class="service-text">
								<h4>正品保障</h4>
								<p>正品保障，提供发票</p>
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
								<li>生活美食/团购</li>
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

					
					</h3>
						<div class="tbar-panel-main">
							<div class="tbar-panel-content J-panel-content">
								<div id="J-cart-tips" class="tbar-tipbox hide">
									<div class="tip-inner">
										<span class="tip-text">还没有登录，登录后美食将被保存</span>
										<a href="#none" class="tip-btn J-login">登录</a>
									</div>
								</div>
								<div id="J-cart-render">
									<!-- 列表 -->
									<div id="cart-list" class="tbar-cart-list">
									</div>
								</div>
							</div>
						</div>
						
					</div>

					
					</h3>
						<div class="tbar-panel-main">
							<div class="tbar-panel-content J-panel-content">
								<div class="tbar-tipbox2">
									<div class="tip-inner"> <i class="i-loading"></i> </div>
								</div>
							</div>
						</div>
						<div class="tbar-panel-footer J-panel-footer"></div>
					</div>

					
					</h3>
						<div class="tbar-panel-footer J-panel-footer"></div>
					</div>

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
		<!-- <script type="text/javascript" src="js/model/cartModel.js"></script> -->
		<script type="text/javascript" src="../js/czFunction.js"></script>
		<script type="text/javascript" src="../js/plugins/jquery.easing/jquery.easing.min.js"></script>
		<script type="text/javascript" src="../js/plugins/sui/sui.min.js"></script>
		<script type="text/javascript" src="../js/widget/cartPanelView.js"></script>
	</body>

</html>