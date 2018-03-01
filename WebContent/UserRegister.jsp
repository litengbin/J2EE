<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action = "Handle-UserRegister.jsp" method = "post">
		<table align = "center">
			<tr>
				<td colspan = "2" align = "center" bgcolor = "#C0D9D9">
				用户注册
				</td>
			</tr>
			<tr>
				<td>
					账户：
				</td>
				<td>
					<input type = "text" name = "z" size = "20">
				</td>
			</tr>
			<tr>
				<td>
					密码：
				</td>
				<td>
					<input type = "password" name = "p" size = "21">
				</td>
			</tr>
			<tr>
				<td>
					昵称：
				</td>
				<td>
					<input type = "text" name = "n" size = "20">
				</td>
			</tr>
			<tr>
				<td>
					邮箱：
				</td>
				<td>
					<input type = "text" name = "y" size = "20">
				</td>
			</tr>
			<tr>
				<td colspan = "2" align = "center" bgcolor = "#C0D9D9">
					<input type = "submit" value = "注册"/>
				</td>
			</tr>
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