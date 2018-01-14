<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>页头</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="navbar-header col-md-9">
		<a class="navbar-brand" href="index.jsp">信息管理系统平台</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li>
	           <a title="" href="#">
	           <i class="glyphicon glyphicon-user"></i>&nbsp;
	           <span class="text">欢迎你，${account.accountid }</span>&nbsp;
	           </a>
            </li>
			 <li>
            <a href="index.jsp">
            <i class="glyphicon glyphicon-log-out"></i> 
            <span class="text">&nbsp;退出系统</span>
            </a>
            </li>
		</ul>
	</div>
</nav>

</body>
</html>