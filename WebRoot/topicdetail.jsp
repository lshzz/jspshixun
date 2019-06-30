<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="myhibernate.Tipicbean"%>
<%@page import="myhibernate.Tipicid"%>
<%@page import="myhibernate.Huifutopic"%>
<%@page import="myhibernate.HuifutopicBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
Tipicbean t=new Tipicbean();

 int id;

 if(request.getParameter("tipicid")==null)
 {
 id=Integer.parseInt(request.getAttribute("tipicid").toString());
 }
 else
 {
  id=Integer.parseInt(request.getParameter("tipicid"));
 }

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
     out.println(tip.getAuthor());
      %>:
      <br/>
      <%
   
    out.println(tip.getTopiccontent());
     %>
     <br/>
     <% 
    out.println(tip.getPublishdate());
    %>
    <hr>
    <%
    }
    HuifutopicBean hf=new HuifutopicBean();
    List<Huifutopic>list=hf.querytiezi(id);
    for(int i=0;i<list.size();i++)
    {
    Huifutopic h=list.get(i);
    out.print(h.getReturncontent());
    
     %>
     <br/>
     <%
     out.print(h.getHuifuname());
      %>
      <br/>
      <%
      out.print(h.getDate());
       %>
            <hr>
       <%
    
       }%>
  
    <form name="huifu" action="huifu.action" method="post"><p>&nbsp;内容回复: <textarea name="content"></textarea></p><p>&nbsp;<input type="text" name="topid" value="<%=id   %>" style="visibility:hidden;"></p><P>&nbsp;<input type="submit" value="提交" name="button1"></P><P>&nbsp;</P><P>&nbsp;</P><P>&nbsp;</P><P>&nbsp;</P></form>
   
  </body>
</html>
