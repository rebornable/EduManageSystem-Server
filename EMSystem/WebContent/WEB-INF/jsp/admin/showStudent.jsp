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
</style>
</head>
<body class="well noborder">
   <table class="table table-hover table-striped">
	<caption>学生一览表</caption>
	<thead>
		<tr>
		    <th><span class="glyphicon glyphicon-check"></span></th>
			<th>学生编号</th>
			<th>学生名称</th>
			<th>性别</th>
			<th>出生日期</th>
			<th>入学年月</th>
			<th>院系</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${studentList}" var="list">
	<tr>
		    <td><input type="checkbox" /></td>
			<td>${list.stu_id}</td>
			<td>${list.name}</td>
			<td>${list.gender}</td>
			<td>${list.birth}</td>
			<td>${list.grade}</td>
			<td>${list.depart}</td>
			<td>
			<div class="btn-group btn-group-xs">
			<form action="deletestudent">
			 <input type="hidden" name="studentid" value="${list.stu_id}" />
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