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
	<form action = "Handle-UserLogin.jsp" method = "post">
		<table align = "center">
			<tr>
				<td colspan = "2" align = "center" bgcolor = "#C0D9D9">
				用户登陆
				</td>
			</tr>
			<tr>
				<td>
					账号：
				</td>
				<td>
					<input type = "text" name = "z" id = "i" size = "20">
				</td>
			</tr>
			<tr>
				<td>
					密码：
				</td>
				<td>
					<input type = "password" name = "p" id = "m" size = "21">
				</td>
			</tr>
			<tr>
				<td align = "center" colspan = "2" bgcolor = "#C0D9D9">
					<input type = "submit" value = "登陆"/>
					&nbsp;&nbsp;
					<input type = "button" value = "注册" onclick = "javascript:window.location.href='UserRegister.jsp';"/>
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