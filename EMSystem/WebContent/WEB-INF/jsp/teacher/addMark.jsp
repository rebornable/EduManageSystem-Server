<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/common.css" />
<script type="text/javascript">
	$(document).ready(function(){
		$(".editbtn").each(function(){
				$(this).click(function(){
						var mark=$(this).parent().find(".mark").val();
						var id=$(this).parent().find(".studentid").val();
						var courseid=$(this).parent().find(".courseid").val();
						var name=$(this).parent().find(".studentname").val();
						$("#modal-id").val(id);
						$("#modal-name").val(name);
						$("#modal-courseid").val(courseid);
						$("#modal-mark").val(mark);
					});
			});
//				$(".savebtn").each(
//						function() {
//							$(this).click(
//									function() {
//										$(this).parent().siblings(".marktd")
//												.find(".markclass")
//												.removeClass("hiddennone");
//										$(this).parent().siblings(".marktd")
//												.find("input[type='text']")
//												.attr("hidden", true);
//									});
//						});
				
			});
	function saveMark(){
		var id=$("#modal-id").val();
		var courseid=$("#modal-courseid").val();
		var mark=$("#modal-mark").val();
		window.location.href="<%=request.getContextPath() %>/teacher/saveMark?studentid="+id+"&courseid="+courseid+"&mark="+mark+"";
	}
</script>
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

.inputposition {
	position: absolute;
	right: 20px;
}

.btn-width {
	width: 100px;
}

.hiddennone {
	display: none;
}
.form-style{
     margin:25px 0;
     padding: 0 15px;
 }
</style>
</head>
<body class="well noborder">
	<ol class="breadcrumb nomargin">
		<li><span class="glyphicon glyphicon-home"
			style="padding-right: 5px;"></span><a
			href="<%=basePath%>welcome.jsp">Home</a></li>
		<li><a href="getcourse_tea"><span>上传成绩</span></a></li>
		<li><span>成绩输入</span></li>
	</ol>
	<div class="line"></div>
	<div class="divmargin form-inline">
		<button type="button" onclick="javascript:history.back()"
			class="btn btn-default btn-width">返回</button>
		<select class="form-control" style="width: 150px;">
			<option>2017秋季学期</option>
			<option>2017春季学期</option>
			<option>2016秋季学期</option>
			<option>2016春季学期</option>
		</select>
		<div class="input-group inputposition">
			<input type="text" class="form-control" placeholder="学生编号查询学生">
			<span class="input-group-btn">
				<button class="btn btn-default" type="button">Go!</button>
			</span>
		</div>
	</div>
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th><span class="glyphicon glyphicon-check"></span></th>
				<th>学生编号</th>
				<th>学生名称</th>
				<th>性别</th>
				<th>课程名称</th>
				<th>课程成绩</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
				<c:forEach items="${studentMarkList}" var="list">
					<tr>
						<td><input type="checkbox" /></td>
						<td>${list.studentid}</td>
						<td>${list.studentname}</td>
						<td>${list.gender}</td>
						<td>${list.coursename}</td>
						<td class="marktd"><span class="markclass">${list.mark}</span>
						</td>
						<td><input type="hidden" value="${list.studentid}" class="studentid">
						    <input type="hidden" value="${courseid}" class="courseid">
							<input type="hidden" value="${list.mark}" class="mark">
							<input type="hidden" value="${list.studentname}" class="studentname">
							<button type="button" data-toggle="modal" data-target="#myModal"
							 class="editbtn btn btn-default btn-info btn-xs">打分</button>
						</td>
					</tr>
				</c:forEach>
		</tbody>
	</table>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					输入成绩
				</h4>
			</div>
			<form role="form"   class="form-inline">
			<div class="modal-body">
				    <input id="modal-courseid" type="hidden" name="courseid">
				    <div class="form-group form-style">
				       <label class="form-label">学号：</label>
				       <input type="text" id="modal-id" class="form-control" disabled="disabled" name="studentid">
				    </div>
				    <div class="form-group form-style">
				       <label class="form-label">姓名：</label>
				      <input type="text" id="modal-name" class="form-control" disabled="disabled">
				    </div>
				    <div class="form-group form-style"  style="margin-bottom:20px;">
				       <label class="form-label">成绩：</label>
				       <input type="text" id="modal-mark" class="form-control" name="mark">
				    </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" onclick="saveMark()" class="btn btn-primary">
					提交保存
				</button>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>