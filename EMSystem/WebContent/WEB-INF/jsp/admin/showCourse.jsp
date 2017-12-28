<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"
+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/common.css" />
<style>
.table-hover>tbody>tr:hover>td, .table-hover>tbody>tr:hover>th {
	background-color: pink;
	cursor: pointer;
}
.line{
    width:100%;
    height:2px;
    background-color: lightblue;
}
.div-width{
   float:right;
   width:260px;
}
</style>
</head>
<body class="well noborder">
	<div>
	<span><b>2018春季学期</b></span>
	<div class="div-width form-group form-inline">
	<button type="button" class="btn btn-default ">搜索</button>
	<input type="search" class="form-control">
	</div>
	</div>
    <hr class="line">
   <table class="table table-hover table-striped">
	<thead>
		<tr>
		    <th><span class="glyphicon glyphicon-check"></span></th>
			<th>课程编号</th>
			<th>课程名称</th>
			<th>课程类型</th>
			<th>上课时间</th>
			<th>学时</th>
			<th>学分</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${courseList}" var="list">
	<tr>
		    <td><input type="checkbox" /></td>
			<td>${list.course_id}</td>
			<td>${list.name}</td>
			<td>${list.type}</td>
			<td>${list.time}</td>
			<td>${list.weeks}</td>
			<td>${list.score}</td>
			<td>
			<div class="btn-group btn-group-xs">
			<form action="deletecourse">
			 <input type="hidden" name="courseid" value="${list.course_id}" />
			 <button class="btn btn-warning btn-xs" type="button">修改</button>
			 <button class="btn btn-danger btn-xs"  type="submit" style="margin-left:10px;">删除</button>
			</form> 
			</div>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
 <span style="color:red;">${message}</span>
</body>
<script type="text/javascript" src="<%=basePath %>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>
</html>