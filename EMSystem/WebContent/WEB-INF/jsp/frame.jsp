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
<link rel="stylesheet" type="text/css" href="css/common.css" />
</head>
<body>
	<iframe class="well" src="<%=basePath%>welcome.jsp" id="iframe-main"
		scrolling="no" onload="changeFrameHeight()" name="frame"
		style="width: 100%; padding: 0; border: 0;"></iframe>
	<script type="text/javascript">
		function changeFrameHeight() {
			var ifm = document.getElementById("iframe-main");
			ifm.height = document.documentElement.clientHeight;
		}
		window.onresize = function() {
			changeFrameHeight();
		}
	</script>
</body>
</html>