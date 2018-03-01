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
<%
int id=Integer.parseInt(request.getParameter("userId"));
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maiba","root","root");
Statement stmt = conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from login where id='"+id+"'");
int i=0;
Object[] info = new Object[5];
if(rs.next()){     
      info[0] = Integer.valueOf(rs.getInt("id")); 
	  info[1] = rs.getString("zhanghao");
	  info[2]=  rs.getString("password");
	  info[3]=  rs.getString("username");
	  info[4]=  rs.getString("email");   
 }
%>
<script type="text/javascript">
	function handle_list_user(){		window.location.href="<%=request.getContextPath()%>/login/UserDetail.jsp?userId=<%=info[0]%>";
	}
</script>

<form action = "Success-UserUpdate.jsp?i=<%=info[0]%>" method = "get">
<table align = "center" >
<tr><th>修改用户信息</th></tr>
<tr><td>ID</td><td><input type = "text" name = "i" readonly value = "<%=info[0]%>"></td></tr>
<tr><td>账号</td><td><input type = "text" name = "z" value = "<%=info[1]%>"></td></tr>
<tr><td>密码</td><td><input type = "text" name = "m" value = "<%=info[2]%>"></td></tr>
<tr><td>昵称</td><td><input type = "text" name = "n" value = "<%=info[3]%>"></td></tr>
<tr><td>电子邮件</td><td><input type = "text" name = "e" value = "<%=info[4]%>"></td></tr>	
<tr><td rowspan = "2">
<input type="submit" value="修改">
&nbsp;&nbsp;
<input type="button" value="返回" onclick="handle_list_user()">
</td></tr>	
</table>
</form>
<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="/include/footer.jsp" %>
</body>
</html>