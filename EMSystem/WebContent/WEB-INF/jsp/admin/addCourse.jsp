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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/common.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
.line {
	width: 100%;
	height: 2px;
	background-color: lightblue;
	margin: 10px 0;
}

.btn-width {
	width: 100px;
	margin-left: 10px;
}

.form-width {
	width: 400px;
	margin-left: 30px;
	padding:15px;
}
</style>
</head>
<body class="well noborder">
	<div>
		<span class="glyphicon glyphicon-edit" style="margin-right: 1em;"></span>
		<strong>编辑课程</strong>
	</div>
	<div class="line"></div>
	<form action="addcourse" id="myform" method="get" role="form" class="form-inline">
		<div style="margin-top: 20px;">
			<div class="form-group form-width">
				<label class="control-label ">课程编号: </label> <input type="text"
					name="course_id" id="courseid" class="form-control" required="required" placeholder="课程编号"/>
			</div>
			<div class="form-group form-width">
				<label class="control-label ">课程名称:</label> <input type="text"
					name="name" class="form-control" placeholder="课程名称" />
			</div>
			<div class="form-group form-width">
				<label class="control-label ">课程类型:</label> <input type="text"
					name="type" class="form-control" placeholder="课程类型" />
			</div>
			<div class="form-group form-width">
				<label class="control-label ">授课教师:</label> <input type="text"
					name="teacherid" class="form-control" placeholder="授课教师编号" />
			</div>
			<div class="form-group form-width">
				<label class="control-label ">课程时间:</label> <input type="text"
					name="time" class="form-control" placeholder="课程时间" />
			</div>
			<div class="form-group form-width">
				<label class="control-label ">课程周期:</label> <input type="text"
					name="weeks" class="form-control" placeholder="课程周期" />
			</div>
			<div class="form-group form-width">
				<label class="control-label ">课程学分:</label> <input type="text"
					name="score" class="form-control" placeholder="课程学分" />
			</div>
		</div>
		<hr class="line">
		<div class="form-actions" style="text-align: center;margin-top:20px;margin-right:90px;">
			<button type="submit" class="btn btn-default btn-width">保存</button>
			<button type="button" onclick="javascript:history.back()" class="btn btn-default btn-width">返回</button>
		</div>
		<br>
	</form>
</body>
</html>