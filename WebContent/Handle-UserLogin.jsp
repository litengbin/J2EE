<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("z");
String password = request.getParameter("p");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maiba","root","root");
Statement stmt = conn.createStatement();
String sql = "select * from login where zhanghao = '" + id + "'";
ResultSet rs = stmt.executeQuery(sql);
if(id == "")
{
	out.print("<script LANGUAGE = 'javascript'> alert('账户不能为空!');history.go(-1);</script>");
}
else if(password == "")
{
	out.print("<script LANGUAGE = 'javascript'> alert('密码不能为空!');history.go(-1);</script>");
}
else if(rs.next())
{
	if(rs.getString(3).equals(password))
	{
		session.setAttribute("id",id);
	    session.setAttribute("name",rs.getString("username"));
	    response.sendRedirect(request.getContextPath() + "/login/UserList.jsp");
	}
	else
	{
		response.sendRedirect("Failure-UserLogin.jsp");
	}
}
else
{
	response.sendRedirect("Failure-UserLogin.jsp");
}
%>
</body>
</html>