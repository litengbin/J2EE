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
<jsp:useBean id="Article" class="bean.Article" scope="session"></jsp:useBean>
<p>标题:<jsp:getProperty property="title" name="Article"/>&nbsp;&nbsp;&nbsp;&nbsp;作者:<jsp:getProperty property="userName" name="Article"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时间:<jsp:getProperty property="createTime" name="Article"/></p>
<hr>
<p>内容:<jsp:getProperty property="content" name="Article"/></p>
<br>
<br>
<br>
<br>
<br>
<hr>
<center>
<form action = "article-list.jsp">
<input type = "submit" value = "返回"/>
</form>
</center>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file="/include/footer.jsp" %>
</body>
</html>