<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>美食分享平台，欢迎登录</title>

    <link rel="stylesheet" type="text/css" href="css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="css/pages-login.css" />
</head>

<body>
	<div class="login-box">
		
		<!--loginArea-->
		<div class="loginArea" style="background: #a0def5">
			<div class="py-container login">
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
							<img src="img/wx_cz.jpg" />
						</div>
						<div id="profile" class="tab-pane  active">
							<form class="sui-form" action="/user/logined" method="post">
								<div class="input-prepend"><span class="add-on loginname"></span>
									<input id="prependedInput" type="text" placeholder="邮箱/用户名/手机号" class="span2 input-xfat" name="username">
								</div>
								<div class="input-prepend"><span class="add-on loginpwd"></span>
									<input id="prependedInput" type="password" placeholder="请输入密码" class="span2 input-xfat" name="password">
								</div>
								<div class="setting">
									<label class="checkbox inline">
          <input name="m1" type="checkbox" value="2" checked=""> 
          自动登录
        </label>
									<span class="forget">忘记密码？</span>
								</div>
								<div class="logined">
                                    <input type="submit" class="sui-btn btn-block btn-xlarge btn-danger" value="登&nbsp;&nbsp;录">
								</div>
							</form>
							<div class="otherlogin">
								<div class="types">
									<ul>
										<li><img src="img/qq.png" width="35px" height="35px" /></li>
										<li><img src="img/sina.png" /></li>
										<li><img src="img/ali.png" /></li>
										<li><img src="img/weixin.png" /></li>
									</ul>
								</div>
								<span class="register"><a href="register.html" target="_blank">立即注册</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--head-->
		<div class="py-container logoArea" style="margin-top: -50px">
		</div>
		<!--foot-->
		<div class="py-container copyright">
			<ul>
				<li>关于我们</li>
				<li>联系我们</li>
				<li>联系客服</li>
				<li>用户入驻</li>
				<li>营销中心</li>
				<li>手机美食</li>
				<li>美食联盟</li>
				<li>美食社区</li>
			</ul>
			<div class="address">地址：广州大学华软软件学院 邮编：510990 电话：020－87818918 传真：87818020</div>
			<div class="beian">4401840100050 粤ICP备：05085382号
			</div>
		</div>
	</div>

<script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-placeholder/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="js/pages/login.js"></script>
</body>

</html>