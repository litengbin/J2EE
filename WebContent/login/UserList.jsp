<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<br>
<br>
<br>
<center>
<form action = "../UserLogin.jsp">
登陆成功！
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maiba","root","root");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from login");
int count = 0;
while(rs.next())
{
	count++;	
}
Object[][] info = new Object[count][5];
ResultSet rs2=stmt.executeQuery("select * from login");
 int i=0;
 while(rs2.next()){     
       info[i][0] = Integer.valueOf(rs2.getInt("id"));  
	       info[i][1] = rs2.getString("zhanghao");
	       info[i][2]=  rs2.getString("password");
	       info[i][3]=  rs2.getString("username");
	       info[i][4]=  rs2.getString("email");   
	       i++;
  }
%>
 <table>
 <tr align="center">
 <td>ID</td>
 <td>账号</td>
 <td>密码</td>
 <td>昵称</td>
</tr>
 <%
for(int j=0;j<count;j++)
{
%>
<tr>
<td><%=info[j][0] %> </td>
<td><a href="<%=request.getContextPath()%>/login/UserDetail.jsp?userId=<%=info[j][0]%>"><%=info[j][1]%></a></td>
<td><%=info[j][2] %> </td>
<td><%=info[j][3] %> </td>		
</tr>
<% } %>
</table>
<input type = "submit" value = "返回"/>
</form>
<br>
<a href = "article/article-new.jsp">发表帖子</a>
</center>
<%@ include file="/include/footer.jsp" %>
</body>
</html>