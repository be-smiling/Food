<!DOCTYPE html>
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

</head>

<body class="hold-transition skin-red sidebar-mini" style="height: 150px;">
  <!-- .box-body -->
                
                    <div class="box-header with-border">
                        <h3 class="box-title">轮播图管理</h3>
                    </div>

                    <div class="box-body">

                        <!-- 数据表格 -->
                        <div class="table-box">

                              <!--数据列表-->
                              <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                                  <thead>
                                      <tr>
                                          <th class="" style="padding-right:0px">
                                              <input id="selall" type="checkbox" class="icheckbox_square-blue">
                                          </th> 
                                          <th class="sorting_asc" style="width: 131px;">轮播图序号</th>
                                          <th class="sorting" style="width: 131px;">名称</th>
                                          <th class="sorting">描述</th>     
                                          <th class="sorting" style="width: 131px;">图片</th>
                                          <th class="text-center">操作</th>
                                      </tr>
                                  </thead>
                                  <tbody>
                                      <#list illustrationList as illustration>
                                      <tr>
                                          <td><input  type="checkbox"></td>                                       
                                          <td>${illustration_index+1}</td>
                                          <td>${illustration.name}</td>
                                          <td>${illustration.makingdesc}</td>
                                          <td>
                                            <img alt="" src="../${illustration.img}" width="100px" height="50px">
                                          </td>                                                                         
                                          <td class="text-center">                                           
                                              <a href="../illustrationUpdate?iid=${illustration.iid}" target="iframe" class="btn bg-olive btn-xs" data-toggle="modal">编辑</a>
                                          </td>
                                      </tr>
                                      </#list>
                                  </tbody>
                              </table>
                              <!--数据列表/--> 
                        </div>
                        <!-- 数据表格 /-->
                     </div>
</body>

</html>