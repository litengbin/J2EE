<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="dbpool.*"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("z");
String password = request.getParameter("p");
String name = request.getParameter("n");
String email = request.getParameter("y");
String regex = "[0-9a-zA-Z]{1,}@[0-9a-zA-Z]{1,}\\.(com|cn)";
Connection conn= DbcpConnectionPool.getConnection();
//Class.forName("com.mysql.jdbc.Driver");
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maiba","root","ROOT");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select zhanghao from login where zhanghao = '" + id +"'");
if(id == "")
{
%>
	<jsp:forward page = "Failure-UserRegister.jsp">
	<jsp:param value = "sorry!账户不能为空!" name = "result"/>
	</jsp:forward>
<%		
}
else if(rs.next())
{
%>
	<jsp:forward page = "Failure-UserRegister.jsp">
	<jsp:param value = "sorry!用户已被注册，请重新注册!" name = "result"/>
	</jsp:forward>
<%		
}
else if(password == "")
{
%>
	<jsp:forward page = "Failure-UserRegister.jsp">
	<jsp:param value = "sorry!密码不能为空!" name = "result"/>
	</jsp:forward>
<%		
}
else if(password.length() < 6)
{
%>
	<jsp:forward page = "Failure-UserRegister.jsp">
	<jsp:param value = "sorry!密码长度>=6!" name = "result"/>
	</jsp:forward>
<%		
}
else if(name == "")
{
%>
	<jsp:forward page = "Failure-UserRegister.jsp">
	<jsp:param value = "sorry!昵称不能为空!" name = "result"/>
	</jsp:forward>
<%		
}
else if(email == "")
{
%>
	<jsp:forward page = "Failure-UserRegister.jsp">
	<jsp:param value = "sorry!邮箱不能为空!" name = "result"/>
	</jsp:forward>
<%
}
else if(!email.matches(regex))
{
%>
	<jsp:forward page = "Failure-UserRegister.jsp">
	<jsp:param value = "sorry!邮箱格式不对!" name = "result"/>
	</jsp:forward>
<%	
}
else
{
	int count = 1;
	rs = stmt.executeQuery("select * from login");
	while(rs.next())
	{
		count++;
	}
	String sql = "insert into login values('" + count + "','"+ id +"','"+ password +"','"+ name +"','"+ email +"')";
	stmt.executeUpdate(sql);
%>
	<jsp:forward page = "Success-UserRegister.jsp">
	<jsp:param value = "恭喜你! 注册成功!" name = "result"/>
	</jsp:forward>
<%
	rs.close();
}
%>
</body>
</html>