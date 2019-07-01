<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="myhibernate.Tipicbean"%>
<%@page import="myhibernate.Tipicid"%>
<%@page import="myhibernate.Board"%>
<%@page import="myhibernate.HibernateSessionFactory"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("GBK");
  response.setCharacterEncoding("GBK");
 %>
<%
String name="";
try{
name=session.getAttribute("username").toString();
}
catch(Exception e)
{
e.printStackTrace();
}
Tipicbean tip=new Tipicbean();
List<Tipicid> list=tip.querByname(name);
System.out.print(name);
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyTopic.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.leftf{
		float: left;
		margin-left: 10px;
	}
		.rightr{
		float: right;
		margin-right:  10px;
	}
	  .qingchufudong{
	  	clear: both;
	  }
	
	</style>
  </head>
  
  <body>
   <div  >
 <%
      for(int i=0;i<list.size();i++){
      Tipicid tipic=(Tipicid)list.get(i);
   %>
<div >
<div><span><%=tipic.getBoard().getBoardname() %></span><a href="topicdetail.jsp?tipicid=<%=tipic.getTopicid() %>"><span><%=tipic.getTitle()%></span></a></div>
<div><span><%=tipic.getAuthor() %></span>  <span><%=tipic.getPublishdate() %></span></div>
<div><%=tipic.getTopiccontent() %></div>
</div>
</div>
<hr>
<% }%>

  </body>

</html>
  <%  HibernateSessionFactory.closeSession(); %>