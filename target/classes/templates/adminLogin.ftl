<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>美食分享平台管理后台</title>
	 <link rel="icon" href="../assets/img/favicon.ico">


    <link rel="stylesheet" type="text/css" href="../css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="../css/pages-login-manage.css" />
</head>

<body>
	<div class="loginmanage">
		<div class="py-container">
			<h4 class="manage-title">美食分享平台管理后台</h4>
			<div class="loginform">

				<ul class="sui-nav nav-tabs tab-wraped">
					<li>
						<a href="#index" data-toggle="tab">
							<h3>扫描登录</h3>
						</a>
					</li>
					<li class="active">
						<a href="#profile" data-toggle="tab">
							<h3>账户登录</h3>
						</a>
					</li>
				</ul>
				<div class="tab-content tab-wraped">
					<div id="index" class="tab-pane">
						<p>二维码登录，暂为微信二维码</p>
						<img src="../img/wx_cz.jpg" />
					</div>
					<div id="profile" class="tab-pane  active">
						<form class="sui-form" action="admin/logined" method="post">
							<div class="input-prepend"><span class="add-on loginname"></span>
								<input id="prependedInput" name="username" type="text" placeholder="邮箱/用户名/手机号" class="span2 input-xfat">
							</div>
							<div class="input-prepend"><span class="add-on loginpwd"></span>
								<input id="prependedInput" name="password" type="password" placeholder="请输入密码" class="span2 input-xfat">
							</div>
							<div class="setting">
							</div>
							<div class="logined">
								<input type="submit" class="sui-btn btn-block btn-xlarge btn-danger" value="登&nbsp;&nbsp;录">
							</div>
						</form>

					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>


	<!--foot-->
	<div class="py-container copyright">
		<ul>
			<li>关于我们</li>
			<li>联系我们</li>
			<li>联系客服</li>
			<li>用户入驻</li>
			<li>手机美食</li>
			<li>美食联盟</li>
			<li>美食社区</li>
		</ul>
		<div class="address">地址：广州大学华软软件学院 邮编：510990 电话：020－87818918 传真：87818020</div>
		<div class="beian">4401840100050 粤ICP备：05085382号
		</div>
	</div>


<script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-placeholder/jquery.placeholder.min.js"></script>
<script src="js/pages/jquery.slideunlock.js"></script>
<script>
	$(function(){
		var slider = new SliderUnlock("#slider",{
				successLabelTip : "欢迎访问美食分享平台管理后台"	
			},function(){
				// alert("验证成功,即将跳转至首页");
            	// window.location.href="index.html"
        	});
        slider.init();
	})
	</script>
</body>

</html>