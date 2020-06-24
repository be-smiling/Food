<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>轮播图管理</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="../plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="../css/style.css">
	<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../js/ajaxfileupload.js"></script>
    
</head>

<body >
  <!-- .box-body -->
                <div>
                    <div class="box-header with-border">
                        <h3 class="box-title">轮播图管理</h3>
                    </div>

                    
                    <!-- /.box-body -->
                            <form action="/illustrationUpdated" method="post" enctype="multipart/form-data" target="iframe">
	          				<div>
                                <div>
                                    <input type="hidden" name="iid" value="${illustration.iid}">
							        做法名称：<input  style="width: 330px;" name="name" value="${illustration.name}"><br/><p></p><p></p><p></p></p><p></p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;描述： <textarea rows="8" cols="36" name="makingdesc">${illustration.makingdesc}</textarea><br/><p></p><p></p><p></p><p></p>
									轮播图片：<input  type="file" name="file" id="file" onchange="uploadImg()" style="display: inline;"><br/><p></p><p></p><p></p><p></p>
									<input  type="hidden" name="img" id="img" value="">
                                    <div style="width: 1116px; height: 270px">
                                        <img src="../${illustration.img}" id="avatarShow" style="width: 1000px; height: 250px; margin-left: 100px">
                                    </div>
									<input class="btn btn-success" type="submit" value="确定" style="margin-left: 80px; width: 280px;">
                                </div>
                            </div>
                            </form>
                        </div>
					    
                                
<!-- 商家详情 -->



</body>

</html>
<script>
    //ajax提交信息
    function uploadImg() {
        if($("#file").val() != "") {
            $.ajaxFileUpload({
                type: "POST",
                url:"../illustrationImgUpload",
                dataType: "json",
                fileElementId:"file",  // 文件的id
                success: function(d){
                        //图片显示
                        $("#img").attr("value",d.img);
                        $("#avatarShow").attr("src",d.img);

                },
                error: function () {
                    alert("上传失败");
                },
            });
        } else {
            alert("请先选择文件");
        }
    }
</script>