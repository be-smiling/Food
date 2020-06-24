<!DOCTYPE html>
<html>
<script type="text/javascript" src="../plugins/jquery/jquery.min.js"></script>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <style type="text/css">
            #outside{
                width: 1000px;
                margin: 0 auto;
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
                color: #BBBBBB;
                font-size: 12px;
                border-bottom: 1px dashed #E7EAEE;
                font-family: "宋体",sans-serif;
            }
 
            #outside  time{
                float: right;
            }
 
            #outside .comment1 span{
                color: #5979B2;
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
                color: #BBBBBB;
            }
 
            #outside #name{
                width: 200px;
                border: 1px solid #D9E2EF;
            }
 
            #outside #comContent{
                width: 800px;
                height: 100px;
                resize: none;
                border: 1px solid #D9E2EF;
                vertical-align: text-top;
            }
 
            #outside button{
                width: 100px;
                height: 30px;
                background-color: #2D46A3;
                color: white;
                border: hidden;
                float: right;
                margin: 15px 100px;
            }
        </style>
    </head>
 
    <body>
 
        <div id="outside">
            <h3>最新平均</h3>
 
            <div id="comment">
                <div id="comment1" class="comment1">
                    腾讯网友
                    <span>李二狗</span>
                    <time>2010年10月5日 19:21:12</time>
                    <p>
                        公务员好啊！可以为人民服务！
                    </p>
                </div>
            </div>
 
            <h4>发表评论</h4>
 
            <div id="addComment">
                昵&nbsp;&nbsp;&nbsp;&nbsp;称：<input type="text" id="name" />
                <br /><br />
                评论内容:<textarea id="comContent"></textarea>
                <button onclick="addComment()">提交评论</button>
            </div>
        </div>
 
    </body>
 
    <#--<script type="text/javascript">-->
        <#--var idNum = 1;-->
        <#--function addComment(){-->
            <#--idNum++;　　　　　　　//获取input中用户新输入的昵称和评论内容-->
            <#--var inputValue = document.getElementById("name").value;-->
            <#--var textValue = document.getElementById("comContent").value;-->
            <#--//判断是否为空-->
            <#--if(inputValue==""||textValue==""){-->
                <#--alert("昵称和评论内容不能为空！！");-->
                <#--return;-->
            <#--}-->
            <#--//获取已有评论的ID-->
            <#--var comContent1 = document.getElementById("comment1");　　　　　　　//克隆已有评论的节点，true为包含子节点-->
            <#--var newComment = comContent1.cloneNode(true);　　　　　　　//给新克隆的评论设置新的ID-->
            <#--newComment.setAttribute("id","comment"+idNum);　　　　　　　//在标签内赋入新的昵称和评论内容-->
            <#--newComment.getElementsByTagName("span")[0].innerText = inputValue;-->
            <#--newComment.getElementsByTagName("time")[0].innerText = inputValue;-->
            <#--newComment.getElementsByTagName("p")[0].innerText = textValue;-->
 <#---->
            <#--//将新克隆并新赋值的评论加到原有评论的后面-->
            <#--var commentDiv = document.getElementById("comment");-->
            <#--commentDiv.appendChild(newComment);-->
 <#---->
            <#--document.getElementById("name").value = "";-->
            <#--document.getElementById("comContent").value = "";-->
 <#---->
        <#--}-->
 <#---->
    <#--</script>-->
<script type="text/javascript">
    var idNum = 1;
    function addComment() {
        /**
         * jQuery的底层函数ajax实现异步请求
         * $.ajax({
         *    k:v,
         *    k:v
         * })
         */
        $.ajax({
            //服务器路径
            url:"/addCommentary",
            //提交服务器的数据
            // data:"username=zhangsan&age=20",
            data:"cid=${food.fid}",
            //响应失败的回调函数
            error:function(){alert("响应失败")},
            //响应成功的回调函数
            success:function(data){
            idNum++;　　　　　　　//获取input中用户新输入的昵称和评论内容
            var inputValue = document.getElementById("name").value;
            var textValue = document.getElementById("comContent").value;
            //判断是否为空
            if(inputValue==""||textValue==""){
            alert("昵称和评论内容不能为空！！");
            return;
            }
            //获取已有评论的ID
            var comContent1 = document.getElementById("comment1");　　　　　　　//克隆已有评论的节点，true为包含子节点
            var newComment = comContent1.cloneNode(true);　　　　　　　//给新克隆的评论设置新的ID
            var time = String(data.time);　　　　　　　//时间
            var content = String(data.content);　　　　　　　//内容
            newComment.setAttribute("id","comment"+idNum);　　　　　　　//在标签内赋入新的昵称和评论内容
            newComment.getElementsByTagName("span")[0].innerText = inputValue;
            newComment.getElementsByTagName("time")[0].innerText = time;
            newComment.getElementsByTagName("p")[0].innerText = content;

            //将新克隆并新赋值的评论加到原有评论的后面
            var commentDiv = document.getElementById("comment");
            commentDiv.appendChild(newComment);

            document.getElementById("name").value = "";
            document.getElementById("comContent").value = "";



                alert("响应成功"+data.time)},
            //设置接收的响应数据格式
            dataType:"json",
            //设置请求方式
            type:"post"
        });
    }
</script>
 
</html>