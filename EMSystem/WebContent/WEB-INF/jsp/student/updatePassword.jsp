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
<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/common.css" />
</head>
<body class="well noborder" style="border: 0;padding:0;">
	<div class="panel panel-default well" style="border: 0;padding:0;">
		<div class="panel-heading">
			<h3 class="panel-title">
				<span class="glyphicon glyphicon-edit" style="margin-right:1em;"></span> 修改密码
			</h3>
		</div>
		<div class="panel-body"><br><br>
			<form action="update_stu_pd" method="get" class="form-horizontal">
				<div class="form-group">
					<label class="control-label col-md-3">用户编号 </label>
					<div class="col-md-3">
						<input type="text" readonly="readonly" name="accountid" class="form-control" value="${account.accountid}" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">原密码 </label>
					<div class="col-md-3">
						<input type="password" name="password" class="form-control" placeholder="原密码" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">新密码</label>
					<div class="col-md-3">
						<input type="password" name="newpassword" class="form-control"
							placeholder="新密码" />
					</div>
				</div>
				  <label>${message }</label>
				<br><br>
				<div class="form-actions panel-footer">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="margin-left:5em;">
					<button type="submit" class="btn btn-success btn-block">提交</button>
					</div>
				</div>
			</form>
		</div> 
	</div>
</body>
</html>