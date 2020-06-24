<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>美食详情页</title>
	 <link rel="icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="../css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="../css/pages-item.css" />
    <link rel="stylesheet" type="text/css" href="../css/pages-zoom.css" />
    <link rel="stylesheet" type="text/css" href="../css/widget-cartPanelView.css" />
    <style type="text/css">
            #outside{
                width: 1200px;
                /*margin: 0 auto;*/
                margin-bottom: 20px;
                margin-top: -10px;
                border: 1px solid #E7EAEE;
                overflow: hidden;
                padding-bottom: 15px;
            }
 
            #outside h3{
                width: 95%;
                margin: 15px auto;
                padding-bottom: 10px;
                border-bottom: 1px solid #E7EAEE;
                font-family: "宋体",sans-serif;
            }
 
            #outside .comment1{
                width: 95%;
                margin: 10px auto;
                color: black;
                font-size: 12px;
                border-bottom: 1px dashed #E7EAEE;
                font-family: "宋体",sans-serif;
            }
 
            #outside  time{
                float: right;
            }
 
            #outside .comment1 span{
                color: black;
                margin-left: 5px;
                font-weight: bold;
            }
 
            #outside .comment1 p{
                font-size: 16px;
                color: black;
            }
 
            #outside h4{
                width: 95%;
                margin: 15px auto;
                color: #404E73;
                font-size: 16px;
                font-weight: bold;
                font-family: "宋体",sans-serif;
            }
 
            #outside #addComment{
                width: 95%;
                margin: 0 auto;
                font-size: 12px;
                color: black;
            }
 
            #outside #name{
                width: 200px;
                border: 1px solid black;
            }
 
            #outside #comContent{
                width: 1070px;
                height: 100px;
                resize: none;
                border: 1px solid #D9E2EF;
                vertical-align: text-top;
            }
 
            #outside button{
                width: 100px;
                height: 30px;
                background-color: rgb(200,22,35);
                color: white;
                border: hidden;
                float: right;
                margin: 15px;
            }
        </style>
</head>

<body>

<!--页面顶部 开始-->
<div id="nav-bottom">
	<!--顶部-->
	<div class="nav-top">
		<div class="top">
			<div class="py-container">
				<div class="shortcut">
					<ul class="fl">
						<li class="f-item">美食分享平台欢迎您！</li>
						<li class="f-item">${user1.username}</li>
					</ul>
					
				</div>
			</div>
		</div>

		<!--头部-->
		<div class="header">
			<div class="py-container" style="margin-top: 20px;">
				

				
			</div>
		</div>
	</div>
</div>
<!--页面顶部 结束-->
	<div class="py-container">
		<div id="item">
			
			<!--product-info-->
			<div class="product-info">
				<div class="fl preview-wrap">
					<div class="zoom">
						<!--默认第一个预览-->
						<div id="preview">
							<span><img jqimg="img/_/b1.png" src="../${food.img}" height="400" width="400"/></span>
						</div>
						
					</div>
				</div>
				<div class="fr itemInfo-wrap">
                    <div class="sku-name">
                        <h3>${food.title}的做法</h3>
                    </div>
					<div class="summary">
						<div class="summary-wrap">
							<div class="fl title">
								<h3>${food.description}</h3>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<!--product-detail-->
			<div class="clearfix product-detail">
				<div class="fl aside">
					<ul class="sui-nav nav-tabs tab-wraped">
						<li class="active">
							<a href="#index" data-toggle="tab">
								<span>推荐美食</span>
							</a>
						</li>
						<li>
							<a href="#profile" data-toggle="tab">
								<span>查看更多</span>
							</a>
						</li>
					</ul>
					<div class="tab-content tab-wraped">
						<div id="index" class="tab-pane active">
							<ul class="goods-list unstyled">
								<li>
									<div class="list-wrap">
										<div class="p-img" style="margin-right: 30px;">
											<img src="../img/ms1.png" />
										</div>
										<div class="attr" style="margin-top: 10px; margin-left: 40px;">
											<em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三色慕斯杯</em>
										</div>
									</div>
								</li>
								<li>
									<div class="list-wrap">
										<div class="p-img" style="margin-right: 30px;">
											<img src="../img/ms2.png" />
										</div>
										<div class="attr" style="margin-top: 10px; margin-left: 40px;">
											<em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;心心相印慕斯</em>
										</div>
									</div>
								</li>
								<li>
									<div class="list-wrap">
										<div class="p-img" style="margin-right: 30px;">
											<img src="../img/ms3.png" />
										</div>
										<div class="attr" style="margin-top: 10px; margin-left: 40px;">
											<em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;草莓慕斯蛋糕</em>
										</div>
									</div>
								</li>
								<li>
									<div class="list-wrap">
										<div class="p-img" style="margin-right: 30px;">
											<img src="../img/ms4.png" />
										</div>
										<div class="attr" style="margin-top: 10px; margin-left: 40px;">
											<em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;紫薯慕斯蛋糕</em>
										</div>
									</div>
								</li>
								<li>
									<div class="list-wrap">
										<div class="p-img" style="margin-right: 30px;">
											<img src="../img/ms5.png" />
										</div>
										<div class="attr" style="margin-top: 10px; margin-left: 40px;">
											<em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;抹茶巧克力慕斯蛋糕</em>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div id="profile" class="tab-pane">
							<p>推荐品牌</p>
						</div>
					</div>
				</div>
				<div class="fr detail">
					
					<div class="tab-main intro">
						<ul class="sui-nav nav-tabs tab-wraped">
							<li class="active">
								<a href="#one" data-toggle="tab">
									<span>美食做法介绍</span>
								</a>
							</li>
						</ul>
						<div class="clearfix"></div>
						<div class="tab-content tab-wraped">
							<div id="one" class="tab-pane active">
								<div class="intro-detail">
									<img src="../${food.imgdetail}" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 评论区 -->
			<div id="outside">
            <h3>评论区</h3>
 
            <div id="comment">
				<#if commentaryList?? && (commentaryList?size > 0)>
					<#list commentaryList as commentary>
							<#if commentary_index == 0>
								<div id="comment1" class="comment1">
									网友
									<span>${commentary.user.username}</span>
									<time>${commentary.time}</time>
									<p>
										${commentary.content}
									</p>
								</div>
							<#else>
								<div id="comment1_+${commentary_index}" class="comment1">
									网友
									<span>${commentary.user.username}</span>
									<time>${commentary.time}</time>
									<p>
										${commentary.content}
									</p>
								</div>
							</#if>
					</#list>
				<#else>
					<div id="comment1" class="comment1">
                        网友
                        <span></span>
                        <time></time>
                        <p>
                        </p>
                    </div>
				</#if>

            </div>
 
            <h4>发表评论</h4>
 
            <div id="addComment">
                昵&nbsp;&nbsp;&nbsp;&nbsp;称：&nbsp;&nbsp;${user1.username}
                <br /><br />
                评论内容:<textarea id="comContent"></textarea>
                <button onclick="addComment()">发表评论</button>
            </div>
        </div>

			<!-- 评论区结束 -->

			<!--like-->
			<div class="clearfix"></div>
			<div class="like" style="height: 250px;">
				<h4 class="kt">猜你喜欢</h4>
				<div class="like-list">
					<ul class="yui3-g">
						<li class="yui3-u-1-6" style="width: 162px; height: 162px;">
							<div class="list-wrap">
								<div class="p-img">
									<img src="../img/ms4.png" />
								</div>
								<div class="attr" style="margin-left: 30px;">
									<em>紫薯慕斯蛋糕</em>
								</div>
							</div>
						</li>
						<li class="yui3-u-1-6" style="width: 162px; height: 162px; margin-left: 30px;">
							<div class="list-wrap">
								<div class="p-img">
									<img src="../img/ms2.png" />
								</div>
								<div class="attr" style="margin-left: 30px;">
									<em>心心相印慕斯</em>
								</div>
							</div>
						</li>
						<li class="yui3-u-1-6" style="width: 162px; height: 162px; margin-left: 30px;">
							<div class="list-wrap">
								<div class="p-img">
									<img src="../img/ms3.png" />
								</div>
								<div class="attr" style="margin-left: 30px;">
									<em>草莓慕斯蛋糕</em>
								</div>
							</div>
						</li>
						<li class="yui3-u-1-6" style="width: 162px; height: 162px; margin-left: 30px;">
							<div class="list-wrap">
								<div class="p-img">
									<img src="../img/ms1.png" />
								</div>
								<div class="attr" style="margin-left: 30px;">
									<em>三色慕斯杯</em>
								</div>
							</div>
						</li>
						<li class="yui3-u-1-6" style="width: 162px; height: 162px; margin-left: 30px;">
							<div class="list-wrap">
								<div class="p-img">
									<img src="../img/ms6.png" />
								</div>
								<div class="attr" style="margin-left: 30px;">
									<em>芒果慕斯蛋糕</em>
								</div>
							</div>
						</li>
						<li class="yui3-u-1-6" style="width: 162px; height: 162px; margin-left: 30px;">
							<div class="list-wrap">
								<div class="p-img">
									<img src="../img/ms7.png" />
								</div>
								<div class="attr" style="margin-left: 30px;">
									<em>紫薯慕斯蛋糕</em>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部栏位 -->
	
<!--页面底部  开始 -->
<div class="clearfix footer">
	<div class="py-container">
		<div class="footlink">
			<div class="Mod-copyright">
				<ul class="helpLink">
					<li>关于我们<span class="space"></span></li>
					<li>联系我们<span class="space"></span></li>
					<li>用户入驻<span class="space"></span></li>
					<li>美食中心<span class="space"></span></li>
					<li>友情链接<span class="space"></span></li>
					<li>营销中心<span class="space"></span></li>
					<li>手机美食<span class="space"></span></li>
					<li>友情链接</li>
				</ul>
				<p>地址：广州大学华软软件学院 邮编：510990 电话：020－87818918 传真：87818020</p>
				<p>4401840100050 粤ICP备：05085382号</p>
			</div>
		</div>
	</div>
</div>

	

<script type="text/javascript" src="../js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#service").hover(function(){
		$(".service").show();
	},function(){
		$(".service").hide();
	});
	$("#shopcar").hover(function(){
		$("#shopcarlist").show();
	},function(){
		$("#shopcarlist").hide();
	});

})
        //格式化时间 (1) yyyy-MM-dd hh:mm:ss
function getTime() {
  var date = new Date();
  var year = date.getFullYear();
  var month = date.getMonth() + 1 < 10? "0"+(date.getMonth()+1) : date.getMonth()+1;
  var day = date.getDate() < 10? "0"+(date.getDate()) : date.getDate();
  var hour = date.getHours() < 10? "0"+(date.getHours()) : date.getHours();
  var minute = date.getMinutes() < 10? "0"+(date.getMinutes()) : date.getMinutes();
  var second = date.getSeconds() < 10? "0"+date.getSeconds() : date.getSeconds();
  return year+"年"+month+"月"+day+"日 "+hour+":"+minute+":"+second;
}
function isDisplay() {
    var comContent1 = document.getElementById("comment1");
    var commentary = comContent1.getElementsByTagName("time")[0];
    if(commentary.innerText == ""){
    	comContent1.style.display="none";
    }
}
isDisplay();

        var idNum = 1;
        function addComment(){
            idNum++;　　　　　　　//获取input中用户新输入的昵称和评论内容
            var time = getTime();//获取当前发布评论的时间
            // var inputValue = document.getElementById("name").value;
            var textValue = document.getElementById("comContent").value;
            //判断是否为空
            if(textValue==""){
                alert("评论内容不能为空！！");
                return;
            }
            $.ajax({
                //服务器路径
                url:"../addCommentary",
                //提交服务器的数据
                // data:"username=zhangsan&age=20",
                data:"content="+textValue+"&time="+time+"&fid=${food.fid}"+"&user.uid=${user1.uid}",
                //响应失败的回调函数
                error:function(){alert("响应失败")},
                //响应成功的回调函数
                success:function(data){
                    },
            //设置接收的响应数据格式
            dataType:"json",
            //设置请求方式
            type:"post"
        	});
            //获取已有评论的ID
            var comContent1 = document.getElementById("comment1");　　　　　　　//克隆已有评论的节点，true为包含子节点
            var newComment = comContent1.cloneNode(true);　　　　　　　//给新克隆的评论设置新的ID
            newComment.style.display="block";
            newComment.setAttribute("id","comment"+idNum);　　　　　　　//在标签内赋入新的昵称和评论内容
            newComment.getElementsByTagName("span")[0].innerText = '${user1.username}';
            newComment.getElementsByTagName("time")[0].innerText = time;
            newComment.getElementsByTagName("p")[0].innerText = textValue;
            //将新克隆并新赋值的评论加到原有评论的后面
            var commentDiv = document.getElementById("comment");
            commentDiv.appendChild(newComment);
            document.getElementById("comContent").value = "";
        }
</script>
<script type="text/javascript" src="../js/model/cartModel.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="../js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.jqzoom/jquery.jqzoom.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.jqzoom/zoom.js"></script>
<script type="text/javascript" src="../index/index.js"></script>


<!--页面底部  结束 -->
</body>

</html>