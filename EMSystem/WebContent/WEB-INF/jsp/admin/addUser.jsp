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
	href="css/common.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
</head>
<body class="well noborder" style="border: 0; padding: 0;">
	<div class="panel panel-default well" style="border: 0; padding: 0;">
		<div class="panel-heading">
			<div class="panel-title">
				<span class="glyphicon glyphicon-edit" style="margin-right: 1em;"></span>
				添加用户
			</div>
			<div style="float: right; margin-top: -1.8em;">
				<a href="#student" data-toggle="tab"> <input type="button"
					class="btn btn-sm " value="学生">
				</a> <a href="#teacher" data-toggle="tab"> <input type="button"
					class="btn btn-sm" value="教师">
				</a>
			</div>
		</div>

		<div class="panel-body tab-content">
			<br>
			<!-- 添加学生 -->
			<div id="student" class="tab-pane fade in active">
				<form action="addstudent" method="get" class="form-horizontal">
					<div class="form-group">
						<label class="control-label col-md-3">学生编号 </label>
						<div class="col-md-3">
							<input type="text" name="stu_id" class="form-control"
								placeholder="学生编号" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">学生名字 </label>
						<div class="col-md-3">
							<input type="text" name="name" class="form-control"
								placeholder="学生名字 " />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">学生性别</label>
						<div class="col-md-3">
							<input type="text" name="gender" class="form-control"
								placeholder="学生性别" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">出生日期</label>
						<div class="col-md-3">
							<input type="text" name="birth" class="form-control"
								placeholder="出生日期" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">入学年月</label>
						<div class="col-md-3">
							<input type="text" name="grade" class="form-control"
								placeholder="入学年月" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">院系编码</label>
						<div class="col-md-3">
							<input type="text" name="depart" class="form-control"
								placeholder="院系编码" />
						</div>
					</div>
					<br>
					<div class="form-actions panel-footer">
						<div class="col-md-2"></div>
						<div class="col-md-2" style="margin-left: 5em;">
							<button type="submit" class="btn btn-success btn-block">提交</button>
						</div>
					</div>
				</form>
			</div>
			<!-- 添加教师 -->
			<div id="teacher" class="tab-pane fade">
				<form action="addteacher" method="get" class="form-horizontal">
					<div class="form-group">
						<label class="control-label col-md-3">教师编号 </label>
						<div class="col-md-3">
							<input type="text" name="teacher_id" class="form-control"
								placeholder="教师编号" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">教师名字 </label>
						<div class="col-md-3">
							<input type="text" name="name" class="form-control"
								placeholder="教师名字" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">教师性别</label>
						<div class="col-md-3">
							<input type="text" name="gender" class="form-control"
								placeholder="教师性别" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">出生日期</label>
						<div class="col-md-3">
							<input type="text" name="birth" class="form-control"
								placeholder="出生日期" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">学位</label>
						<div class="col-md-3">
							<input type="text" name="degree" class="form-control"
								placeholder="学位" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">称号</label>
						<div class="col-md-3">
							<input type="text" name="tittle" class="form-control"
								placeholder="称号" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">院系编号</label>
						<div class="col-md-3">
							<input type="text" name="depart" class="form-control"
								placeholder="院系编号" />
						</div>
					</div>

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
	</div>
</body>
</html>