<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"
+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%@ include file="../../../script.jsp" %>
<style>
ul {
    list-style: none outside none;
    margin: 0;
}
li {
	
    border-bottom: 1px solid #EBEBEB;
    margin-bottom: 0;
}
</style>
</head>
<body>
<div class="container-fluid">
  <jsp:include page="../top.jsp" />
  <div id="sidebar" class="col-md-2 well">
    <ul class="nav nav-pills nav-stacked">
		<li class="active"><a href="#">
		<span class="glyphicon glyphicon-home">&nbsp;Home</span>
		</a></li>
		<li><a href="teacher/getcourse_tea" target="frame">查看课表</a></li>
		<li><a href="teacher/getteachermarkcourse" target="frame">上传成绩</a></li>
		<li><a href="teacher/update_teacherPd" target="frame">修改密码</a></li>
	   </ul>
  </div>
  <div class="col-md-10">
   <jsp:include page="../frame.jsp" />
  </div>
</div> 
<script type="text/javascript">
//初始化相关元素高度
function init(){
    $("body").height($(window).height()-80);
    $("#iframe-main").height($(window).height()-90);
    $("#sidebar").height($(window).height()-130);
}

$(function(){
    init();
    $(window).resize(function(){
        init();
    });
});
</script>
</body>
</html>