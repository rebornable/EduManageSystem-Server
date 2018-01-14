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
.line {
	width: 100%;
	height: 2px;
	background-color: lightblue;
	margin: 10px 0;
}
.divmargin{
    margin-bottom: 30px;
}
</style>
</head>
<body class="well noborder">
   <ol class="breadcrumb nomargin">
      <li><span class="glyphicon glyphicon-home" style="padding-right:5px;"></span><a href="<%=basePath %>welcome.jsp">Home</a></li>
      <li><span>查看课表</span></li>
   </ol>
   <div class="line"></div>
   <div class="divmargin">
   <select class="form-control" style="width:150px;">
      <option>2017秋季学期</option>
      <option>2017春季学期</option>
      <option>2016秋季学期</option>
      <option>2016春季学期</option>
   </select>
   </div>
   <table class="table table-hover table-striped">
	<thead>
		<tr>
		    <th><span class="glyphicon glyphicon-check"></span></th>
			<th>课程编号</th>
			<th>课程名称</th>
			<th>课程类型</th>
			<th>上课时间</th>
			<th>学时</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${teaCourselist}" var="list">
	<tr>
		    <td><input type="checkbox" /></td>
			<td>${list.course_id}</td>
			<td>${list.name}</td>
			<td>${list.type}</td>
			<td>${list.time}</td>
			<td>${list.weeks}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
 <span style="color:red;">${message}</span>
</body>
<script type="text/javascript" src="<%=basePath %>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>
</html>