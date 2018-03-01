<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
你选择的结果是: <center>
  <%
  String str = "";
  if(session.getAttribute("s1") != null){
	  str = (String)session.getAttribute("s1");
	  byte  b[]=str.getBytes("ISO-8859-1");
     str=new String(b);
	 out.print(str + "<br>");
  }
  if(session.getAttribute("s2")!= null){
	  str = (String)session.getAttribute("s2");
	  byte  b[]=str.getBytes("ISO-8859-1");
     str=new String(b);
	 out.print(str + "<br>");
  }
  if(session.getAttribute("s3")!=null){
	  str =  (String)session.getAttribute("s3");
	  byte  b[]=str.getBytes("ISO-8859-1");
     str=new String(b);
	 out.print(str + "<br>");
  }
  if(session.getAttribute("s4")!=null){
	  str =  (String)session.getAttribute("s4");
	  byte  b[]=str.getBytes("ISO-8859-1");
     str=new String(b);
	 out.print(str + "<br>");
  }
  if(session.getAttribute("s5")!=null){
	  str =  (String)session.getAttribute("s5");
	  byte  b[]=str.getBytes("ISO-8859-1");
     str=new String(b);
	 out.print(str + "<br>");
  }
  if(session.getAttribute("s6")!=null){
	  str =  (String)session.getAttribute("s6");
	  byte  b[]=str.getBytes("ISO-8859-1");
     str=new String(b);
	 out.print(str + "<br>");
  }
  %>  </center>
</body>
</html>