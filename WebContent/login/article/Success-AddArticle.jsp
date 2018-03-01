<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "bean.Article"%>
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
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
String s = new String(request.getParameter("result").getBytes("ISO-8859-1"),"utf-8");
out.println(s);
%>
<form action = "article-new.jsp">
<input type = "submit" value = "返回"/>
</form>
</center>
<%@ include file = "/include/footer.jsp" %>
</body>
</html>