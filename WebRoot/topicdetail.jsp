<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="myhibernate.Tipicbean"%>
<%@page import="myhibernate.Tipicid"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%Tipicbean t=new Tipicbean();
 int id=Integer.parseInt(request.getParameter("tipicid"));
Tipicid tip=t.topdetail(id); 
   
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'topicdetail.jsp' starting page</title>
    
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
    <%if(tip!=null)
    {
     out.println(tip.getTitle());
    %>
    <br/>
    <%
    out.println(tip.getTopiccontent());
      %>
      <br/>
      <%
    out.println(tip.getAuthor());
     %>
     <br/>
     <% 
    out.println(tip.getPublishdate());
    %>
    <%
    }
     %>
    
    
  </body>
</html>
