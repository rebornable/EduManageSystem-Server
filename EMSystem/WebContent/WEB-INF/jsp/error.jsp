<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/bootstrap.min.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<style>
.noborder {
	border: 0;
}

.nomargin {
	margin: 0;
	padding: 0;
}

.center {
	text-align: center;
}
</style>
</head>
<body class="well noborder">
	<div class="container-fluid nomargin noborder">
			<div class="panel-body">
				<br> <br> <br>
				<div class="panel-body center">
					<h3>Sorry, You're lost.</h3>
					<br>
					<p>We can not find the page you're looking for.</p>
					<br> <br> <a class="btn btn-warning btn-big"
						href="javascript:history.back()">Back to Home</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>