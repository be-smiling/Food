<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>更新美食</title>


    <link rel="stylesheet" type="text/css" href="../css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="../css/pages-register.css" />
</head>

<body>
	<div class="register py-container ">
		<!--head-->
		<div class="logoArea">
			<a href="" class="logo"></a>
		</div>
		<!--register-->
		<div class="registerArea">
			<h3>修改美食</h3>
			<div class="info">
				<form class="sui-form form-horizontal" action="/food/updated" method="post" enctype="multipart/form-data">
					<input type="hidden" name="fid" value="${food.fid}">
					<div class="control-group">
						<label class="control-label">分类：</label>
						<div class="controls">
							<select name="cid" class="input-xfat input-xlarge">
				<#list categoryList as category>
                    <option value=${category.id}>${category.categoryname}</option>
                </#list>
                </select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">标题：</label>
						<div class="controls">
							<input placeholder="请输入要更新的美食标题" class="input-xfat input-xlarge" name="title" style="width: 330px;" value="${food.title}">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">描述：</label>
						<div class="controls">
							<textarea cols="54" rows="7" name="description" placeholder="请输入要更新的美食描述">${food.description}</textarea>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">列表页图片：</label>
						<div class="controls">
							<input type="file" placeholder="请选择要更新的列表页图片" class="input-xfat input-xlarge" name="img">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">详情页图片：</label>
						<div class="controls">
							<input type="file" placeholder="请选择要更新的详情页图片" class="input-xfat input-xlarge" name="imgdetail">
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label"></label>
						<div class="controls btn-reg">
							<input type="submit" value="完成修改" class="sui-btn btn-block btn-xlarge btn-danger">
						</div>
					</div>
				</form>
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


<script type="text/javascript" src="../js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="../js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-placeholder/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="../js/pages/register.js"></script>
</body>

</html>