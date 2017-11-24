<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
    ${course.name}
    ${courseList[0].type}
    <form class="form-horizontal" role="form" action="student/getcourse" id="from1" method="post">
				  <div class="form-group">
				    <label for="firstname" class="col-sm-3 control-label">用户id</label>
				    <div class="col-sm-9">
				      <input type="text" class="form-control" id="userID" placeholder="请输入名字" name="accountid">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="lastname" class="col-sm-3 control-label">密&nbsp;&nbsp;&nbsp;码</label>
				    <div class="col-sm-9">
				      <input type="password" class="form-control" id="password" placeholder="请输入密码" name="password">
				    </div>
				  </div> 
				  <div class="form-group"></div>
				  <div class="form-group">
				    <div class="col-sm-3"></div>
				    <div class="col-sm-6">
				      <button type="submit" class="btn btn-block btn-info">登录</button>
				    </div>
				  </div>
				</form>
</body>
</html>