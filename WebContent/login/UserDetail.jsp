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
ResultSet rs=stmt.executeQuery("select * from login where id ='"+id+"'");
Object[] info = new Object[5];
if(rs.next())
{     
       info[0] = Integer.valueOf(rs.getInt("id"));  
	   info[1] = rs.getString("zhanghao");
	   info[2]=  rs.getString("password");
	   info[3]=  rs.getString("username");
	   info[4]=  rs.getString("email");   
}
%>
<script type="text/javascript">
	function handle_modify(){		window.location.href="<%=request.getContextPath()%>/login/UserModify.jsp?userId=<%=info[0]%>";
	}

	function handle_delete(){		window.location.href="<%=request.getContextPath()%>/login/Handle-UserDelete.jsp?userId=<%=info[0]%>";
	}

	function handle_list_user(){		window.location.href="<%=request.getContextPath()%>/login/UserList.jsp";
	}
</script>
<form>
<table align = "center">
<tr><th>用户信息</th></tr>
<tr><td>ID</td><td><%=info[0]%></td></tr>
<tr><td>账号</td><td><%=info[1]%></td></tr>
<tr><td>密码</td><td><%=info[2]%> </td></tr>
<tr><td>昵称</td><td><%=info[3]%> </td></tr>
<tr><td>电子邮件</td><td><%=info[4]%></td></tr>	
<tr><td rowspan = "2">
<input type="button" value="修改" onclick="handle_modify()">
&nbsp;&nbsp;
<input type="button" value="删除" onclick="handle_delete()">
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