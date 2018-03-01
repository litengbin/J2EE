<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
本页面对应的Servlet为:<%= page.getClass() %><br>
本页面对应的Servlet hash码为:<%= page.hashCode() %><br>
本页面使用的JSP引擎为:<%= ((HttpJspPage)page).getServletInfo() %><br>
</body>
</html>