<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie c[] = request.getCookies();
for(int i = 0; i < c.length; i++)
{
	Cookie temp = c[i];
%>
<%= temp.getName()%>:<%= temp.getValue() %>
<br>
<%
}
%>
</body>
</html>