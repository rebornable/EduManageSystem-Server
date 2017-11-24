<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
    权限： ${account.role}
    密码：${account.password}
  课程名：  ${course.name}
  课程列表大小：${courseList.size()}
  学生列表大小：${studentList.size()}
</body>
</html>