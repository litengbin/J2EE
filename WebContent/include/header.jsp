<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "bean.Article"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form style = "float:right">
<input type = "text" id = "t">
<select>
<option value = "搜索类型">搜索类型</option>
</select>
<input type = "submit" id = "s" value = "搜索">
</form>
<div style = "clear:right;background:#C0D9D9">
<% 
String user = (String)session.getAttribute("id");
String name = (String)session.getAttribute("name");
if(user == null)
{
	out.print("游客，你好");
}
else
{
	out.print(name + ",你好");
}
%>
<div style = "float:right">
<a href = "#">麦吧</a>
<a href = "<%=request.getContextPath()%>/UserLogin.jsp">登陆</a>
<a href = "<%=request.getContextPath()%>/UserRegister.jsp">注册</a>
</div>
</div>
</body>
</html>