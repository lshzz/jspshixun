<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="myhibernate.HuifutopicBean"%>
<%@page import="myhibernate.Huifutopic"%>
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
		catch(Exception e){
		e.printStackTrace();
		}
		System.out.print(name);
		HuifutopicBean tip=new HuifutopicBean();
		List<Huifutopic> list=tip.queryHuifu(name);		
		 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Myhuifu.jsp' starting page</title>
    
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
      <div  >
 <%
      for(int i=0;i<list.size();i++){
      Huifutopic tipic=(Huifutopic)list.get(i);
   %>
<div >
<div><span><%=tipic.getHuifuname() %></span><span><%=tipic.getDate()%></span></div>
<div><span><%=tipic.getReturncontent()%></span>  </div>
</div>
</div>
<% }%>
  </body>
</html>
  <%  HibernateSessionFactory.closeSession(); %>