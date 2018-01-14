<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"
+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/common.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<script type="text/javascript">
   $().ready(function(){
    });
    function updatePd(){
    	var id=$("#accountid").val();
    	var pd=$("#password").val();
    	var newpd=$("#newpassword").val();
    	window.location.href="<%=request.getContextPath()%>/teacher/update_tea_pd?accountid="+id+"&password="+pd+"&newpassword="+newpd;
    }
</script>
</head>
<body class="well noborder" style="border: 0;padding:0;">
	<div class="panel panel-default well" style="border: 0;padding:0;">
		<div class="panel-heading">
			<h3 class="panel-title">
				<span class="glyphicon glyphicon-edit" style="margin-right:1em;"></span> 修改密码
			</h3>
		</div>
		<div class="panel-body"><br><br>
			<form action="" method="POST" class="form-horizontal">
				<div class="form-group">
					<label class="control-label col-md-3">用户编号 </label>
					<div class="col-md-3">
						<input type="text" readonly="readonly" id="accountid" class="form-control" value="${account.accountid}" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">原密码 </label>
					<div class="col-md-3">
						<input type="password" id="password" class="form-control" placeholder="原密码" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">新密码</label>
					<div class="col-md-3">
						<input type="password" id="newpassword" class="form-control"
							placeholder="新密码" />
					</div>
				</div>
				<br><br><label style="margin-left:300px;color:red;">${msg}</label>
				<div class="form-actions panel-footer">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="margin-left:5em;">
					<button type="button" onclick="updatePd()" class="btn btn-success btn-block">提交</button>
					</div>
				</div>
			</form>
		</div> 
	</div>
</body>
</html>