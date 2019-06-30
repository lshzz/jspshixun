<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="myhibernate.BoardBean"%>
<%@page import="myhibernate.Board"%>
<%@page import="myhibernate.HibernateSessionFactory"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
BoardBean  board=new BoardBean();
List<Board> list=board.queryBoard();
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdataData.jsp' starting page</title>
    
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
<form name="settingbanzhu" action="settingbanzhu.action" method="post">
用户身份修改:
            		<select name="select">
            		<option value="0">普通用户</option>
            		 <%   
            		for(int i=0;i<list.size();i++)
            		{
            		Board b=list.get(i);    		
            	
            		 %>
              <option value ="<%=b.getBoardid() %>"><%=b.getBoardname() %>版主</option>
              <% }%>
  </select>
  <br>
  <input type="hidden" name="username" value="<%=request.getParameter("name").toString() %>"><br>
  <input type="submit" value="修改" name="button1">
            		</form>
  

  </body>
</html>
<%HibernateSessionFactory.closeSession(); %>