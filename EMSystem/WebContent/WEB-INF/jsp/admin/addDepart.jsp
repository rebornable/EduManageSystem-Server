<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加院系</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/common.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
</head>
<body class="well noborder" style="border: 0; padding: 0;">
	<div class="panel panel-default well" style="border: 0; padding: 0;">
		<div class="panel-heading">
			<h3 class="panel-title">
				<span class="glyphicon glyphicon-edit" style="margin-right: 1em;"></span>
				编辑院系
			</h3>
		</div>
		<div class="panel-body">
			<br>
			<br>
			<form action="adddepart" method="get" class="form-horizontal">
				<div class="form-group">
					<label class="control-label col-md-3">院系编号</label>
					<div class="col-md-3">
						<input type="text" name="depart_id" class="form-control"
							placeholder="院系编号" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">院系名称</label>
					<div class="col-md-3">
						<input type="text" name="name" class="form-control"
							placeholder="院系名称" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">院系地址</label>
					<div class="col-md-3">
						<input type="text" name="addr" class="form-control"
							placeholder="院系地址" />
					</div>
				</div>
				<br>
				<br>
				<div class="form-actions panel-footer">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="margin-left: 5em;">
						<button type="submit" class="btn btn-success btn-block">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>


</html>