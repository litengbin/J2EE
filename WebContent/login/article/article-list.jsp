<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="bean.Article"%>
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
<center>
<p><a href = "article-new.jsp">发表帖子</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href = "../../HandleArticleAction?action=MyArticlelist&userId=<%=session.getAttribute("id")%>">我发表的帖子</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href = "#">我评论的帖子</a>&nbsp;&nbsp;&nbsp;&nbsp;帖子列表</p>
<table>
<tr>
<td>点击数</td>
<td>回复数</td>
<td>标题</td>
<td>作者</td>
<td>最后回复</td>
</tr>
<% List<Object> ArticleList = new ArrayList<Object>();
  ArticleList=(List<Object>)session.getAttribute("ArticleList");
  Article articles = new Article();
  for(int i=0;i<ArticleList.size();i++)
  {  
	  articles =(Article)(ArticleList.get(i));
%>
<tr>
<td><%=articles.getHitNum() %></td>
<td><%=articles.getRemarkNum() %></td>
<td><a href="../../HandleArticleAction?action=detail&id=<%=articles.getId()%>"><%=articles.getTitle() %></a></td>
<td><%=articles.getUserName() %></td>
<td><%=articles.getLastRemarkTime() %></td>
</tr> 
<% }%>	
</table>
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