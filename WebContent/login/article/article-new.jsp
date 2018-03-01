<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "bean.Article"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/include/header.jsp" %>
<br>
<br>
<center>
<p>发表帖子&nbsp;&nbsp;&nbsp;&nbsp;<a href = "../../HandleArticleAction?action=MyArticlelist&userId=<%=session.getAttribute("id")%>">我发表的帖子</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href = "#">我评论的帖子</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href = "../../HandleArticleAction?action=Articlelist">帖子列表</a></p>
<jsp:useBean id="articleBean" class="bean.Article" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="articleBean"/>
<form name="articleFrom" action="../../HandleArticleAction?action=add" method="post">
<table>
<caption style = "background-color:#C0D9D9">发表帖子</caption>
<tr>
<td>标题:</td>
<td><input type = "text" id = "title" name = "title" size = "66"></td></tr>
<tr>
<td>文章内容:</td>
<td><textarea name = "content" id = "content" rows = "10" cols = "50"></textarea></td>
</tr>
<tr bgcolor = "#C0D9D9">
<td colspan = "2" align = "center"><input type = "submit" name = "f" value = "发表">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type = "reset" name = "q" value = "取消">
</td>
</tr>
</table>
</form>
<br>

<a href = "../../UserLogin.jsp">返回登陆界面</a>
</center>
<%@ include file = "/include/footer.jsp" %>
</body>
</html>