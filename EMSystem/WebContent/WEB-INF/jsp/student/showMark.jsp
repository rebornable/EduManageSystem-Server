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
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/common.css"/>
<style>
.table-hover>tbody>tr:hover>td, .table-hover>tbody>tr:hover>th {
	background-color: pink;
	cursor: pointer;
}
</style>
</head>
<body class="well noborder">
   <table class="table table-hover table-striped">
	<caption>2018春季学期</caption>
	<thead>
		<tr>
		    <th><span class="glyphicon glyphicon-check"></span></th>
			<th>课程名称</th>
			<th>课程类型</th>
			<th>学分</th>
			<th>成绩</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${markList}" var="list">
	<tr>
		    <td><input type="checkbox" /></td>
			<td>${list.course.name}</td>
			<td>${list.course.type}</td>
			<td>${list.course.score}</td>
			<td>${list.mark}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
 <span style="color:red;">${message}</span>
</body>
<script type="text/javascript" src="<%=basePath %>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>
</html>