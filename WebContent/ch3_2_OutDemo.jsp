<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
out.print("明德新民，止于至善");
out.newLine();
out.print("<br>");
%>
缓冲区的大小为：<%= out.getBufferSize() %><br>
缓冲区的可用大小为：<%= out.getRemaining() %><br>
是否为自动清空缓冲区<%= out.isAutoFlush() %><br>
<%
out.println("<SCRIPT type = \"text/javascript\">alert(\"测试out对象的使用!\");</SCRIPT>");
%>
</body>
</html>