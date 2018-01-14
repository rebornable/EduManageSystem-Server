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
<script type="text/javascript">
    $(document).ready(function(){
    	 
    });
    function showModal(e){
   	  	 $("#myModal").modal("show");
   	  	 var id=$(e).parent().parent().siblings(".id").text();
   	  	 var name=$(e).parent().parent().siblings(".name").text();
   	  	 var type=$(e).parent().parent().siblings(".type").text();
   	  	 var time=$(e).parent().parent().siblings(".time").text();
   	  	 var weeks=$(e).parent().parent().siblings(".weeks").text();
   	  	 var score=$(e).parent().parent().siblings(".score").text();
   	  	 $("#id-m").val(id);
   	  	 $("#name-m").val(name);
   	  	 $("#type-m").val(type);
   	  	 $("#time-m").val(time);
   	  	 $("#weeks-m").val(weeks);
   	  	 $("#score-m").val(score);

   	    }
</script>
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
.form-po{
   margin:15px 0;
   padding:0 40px;
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
			<td class="id">${list.course_id}</td>
			<td class="name">${list.name}</td>
			<td class="type">${list.type}</td>
			<td class="time">${list.time}</td>
			<td class="weeks">${list.weeks}</td>
			<td class="score">${list.score}</td>
			<td>
             <form action="deletecourse" >
			 <input type="hidden" name="courseid" value="${list.course_id}" />
			 <button class="btn btn-warning btn-xs editbtn" onclick="showModal(this)"  type="button">修改</button>
			 <button class="btn btn-danger btn-xs"  type="submit" style="margin-left:10px;">删除</button>
			 </form> 
			</td>
			
		</tr>
	</c:forEach>
	</tbody>
</table>
 <span style="color:red;">${message}</span>
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:750px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><strong>课程信息修改</strong></h4>
            </div>
            <div class="modal-body">
                <form role="form" class="form-inline">
                  <div class="form-group form-po" align="left">
                    <label class="form-label">课程编号:</label>
                    <input class="form-control" id="id-m" disabled>
                  </div>
                  <div class="form-group form-po" align="left" align="left">
                  <label class="form-label">课程名称:</label>
                    <input class="form-control" id="name-m">
                  </div>
                  <div class="form-group form-po" align="left" align="left">
                  <label class="form-label">课程类型:</label>
                    <input class="form-control" id="type-m">
                  </div>
                  <div class="form-group form-po" align="left">
                  <label class="form-label">上课时间:</label>
                    <input class="form-control" id="time-m">
                  </div>
                  <div class="form-group form-po" align="left" style="margin-left:30px;">
                  <label class="form-label">学时:</label>
                    <input class="form-control" id="weeks-m">
                  </div>
                  <div class="form-group form-po" align="left" style="margin-left:30px;">
                  <label class="form-label ">学分:</label>
                    <input class="form-control" id="score-m">
                  </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
 
</body>
<script type="text/javascript" src="<%=basePath %>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>
</html>