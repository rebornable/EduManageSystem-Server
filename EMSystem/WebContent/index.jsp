<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<style type="text/css">
	body{
	   background: url(images/a.jpg) repeat;
	}
	#login-box {
		padding: 35px;
		padding-bottom:20px;
		border-radius:15px;
		background: #56666B;
		opacity:0.6;
		color: #fff;
	}
	</style>
</head>
<body>
	<div class="container" id="top">
		<div class="row" style="margin-top: 200px; ">
			<div class="col-md-4"></div>
			<div class="col-md-4" id="login-box">
				<form class="form-horizontal" role="form" action="login" id="from1" method="post">
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
			</div>
			<div class="col-md-4"></div>
		</div>		
	</div>
</body>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</html>