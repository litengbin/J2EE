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
String name = request.getParameter("username");
String pwd = request.getParameter("password");
if(name.equals("root")&&pwd.equals("123456"))
{
	session.setAttribute("username", name);
	out.print(((String)session.getAttribute("username")) + ",欢迎你！");
}
else
{
	out.print("<script type = \" text/javascript\">alert('对不起，用户名或密码错误！');history.go(-1);</script>");
}
%>
</body>
</html>