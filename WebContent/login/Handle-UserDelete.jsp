<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/include/header.jsp"%>
<br>
<br>
<br>
<center>
<%
int id=Integer.parseInt(request.getParameter("userId"));
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maiba","root","root");
Statement stmt = conn.createStatement();
String sql = "delete from login where id = '"+id+"'";
stmt.executeUpdate(sql);
out.println("恭喜你,删除成功！");
%>
<form action = "UserList.jsp">
<input type = "submit" value = "返回"/>
</form>
</center>
<%@ include file = "/include/footer.jsp" %>
</body>
</html>