<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
int id=Integer.parseInt(request.getParameter("boardid").trim());
System.out.println("发表帖子的id为:"+id+"   ");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Posting.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
    <form method="post" action="posting.action" name="posting">
    <p>&nbsp;帖子标题:<input type="text" name="title" style="width: 300px;"></p>
    <input type="hidden" name="id" value="<%=id %>">
    <p>&nbsp;内&nbsp;&nbsp;&nbsp; 容:<textarea name="topicContent"></textarea></p><p>&nbsp;<br></p><p>&nbsp;<input type="submit" value="发表" name="button2"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></form></body>
</html>
