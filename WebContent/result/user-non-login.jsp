<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/include/header.jsp" %>
<br>
<br>
<br>
<center>
<p>用户尚未登陆，所以无法执行你所做的操作。请先<a href = "../UserLogin.jsp">登录!</a></p>
<form action = "../UserLogin.jsp">
<input type = "submit" value = "重新登陆"/>
</form>
</center>
<%@ include file = "/include/footer.jsp" %>
</body>
</html>