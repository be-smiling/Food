<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
	function wyq(){
		if(<s:property value="#session.msg"/>=!""){
			this.alert("${session.msg}");
			
		}
		}
	</script>

  </head>
  
  <body onload="wyq()" style="background-color: #ADD8E6">
   <h3>新闻类型</h3>
  <div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table">
                <thead>
                <tr class="warning">
                    <th>
                        序号
                    </th>
                    <th>
                        类型
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                 <tbody>
   		<s:iterator value="categorys" var="category" status="stu">
   			<tr class="info">
   				<td><s:property value="#stu.count"/> </td>
   				<td><s:property value="#category.categoryName" /> </td>
   				<td>
   					<s:a href="categoryUpdate.action?cid=%{#category.id}" >修改</s:a>
   					<s:a href="categoryDelete.action?cid=%{#category.id}" id="delete">删除</s:a>
   				</td>
   			</tr>
   		</s:iterator>
   		</tbody>
   </table>
   </div>
   </div>
   </div>
   <% 
   	session.invalidate();
   %>
  </body>
</html>
