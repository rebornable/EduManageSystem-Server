<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style>
.table-hover>tbody>tr:hover>td, .table-hover>tbody>tr:hover>th {
	background-color: pink;
	cursor: pointer;
}

.line {
	width: 100%;
	height: 2px;
	background-color: lightblue;
	margin: 10px 0;
}

.divmargin {
	width: 100%;
	margin-bottom: 30px;
}

.inputposition{
	position: absolute;
	right: 20px;
}
.btn-width{
   width:100px;
}
</style>
</head>
<body class="well noborder">
	<ol class="breadcrumb nomargin">
		<li><span class="glyphicon glyphicon-home"
			style="padding-right: 5px;"></span><a href="<%=basePath%>welcome.jsp">Home</a></li>
		<li><span>上传成绩</span></li>
	</ol>
	<div class="line"></div>
	<div class="divmargin form-inline">
	    <button type="button" onclick="javascript:history.back()" class="btn btn-default btn-width">返回</button>
		<select class="form-control" style="width: 150px;">
			<option>2017秋季学期</option>
			<option>2017春季学期</option>
			<option>2016秋季学期</option>
			<option>2016春季学期</option>
		</select>
		<div class="input-group inputposition">
			<input type="text" class="form-control" placeholder="课程编号查询课程">
			<span class="input-group-btn">
				<button class="btn btn-default" type="button">Go!</button>
			</span>
		</div>
	</div>
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th><span class="glyphicon glyphicon-check"></span></th>
				<th>课程编号</th>
				<th>课程名称</th>
				<th>课程类型</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${teaCourselist}" var="list">
				<tr>
					<td><input type="checkbox" /></td>
					<td>${list.course_id}</td>
					<td>${list.name}</td>
					<td>${list.type}</td>
					<td>
						<div class="btn-group btn-group-xs">
							<form action="getmarkcourse_tea">
								<input type="hidden" name="courseid" value="${list.course_id}" />
								<button class="btn btn-primary btn-xs" type="submit">上传成绩</button>
							</form>
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<span style="color: red;">${message}</span>
</body>
<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
</html>