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
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maiba","root","root");
Statement stmt = conn.createStatement();
String d = request.getParameter("i");
String zhanghao = request.getParameter("z");
String password = request.getParameter("m");
String username = request.getParameter("n");
String email = request.getParameter("e");
String sql1 = "update login set zhanghao = '"+zhanghao+"',password = '"+password+"',";
String sql2 = "username = '"+username+"',email = '"+email+"' where id = '"+d+"'";
String sql = sql1 + sql2;
stmt.executeUpdate(sql);
out.println("恭喜你,修改成功！");
%>
<form action = "UserList.jsp">
<input type = "submit" value = "返回"/>
</form>
</center>
<%@ include file = "/include/footer.jsp" %>
</body>
</html>