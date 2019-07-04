<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
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
  	<form method="post" action="Updata.action" name="login">
    	
    	修改id为：<input  name="type" id="type" readonly="readonly" value="<s:property value='type'/>"/>
    	用户id为：<input  name="id" id="id" readonly="readonly" value="<s:property value='id'/>"/>
    	</br>
      	<s:property value="ShowTest"/>
  		<p>&nbsp;<input type="text" name="UpdataText">
  		</p><p>&nbsp;<input   type="submit" name="test" value="修改">
  	</form>
  

  </body>
</html>
