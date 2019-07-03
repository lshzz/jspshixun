<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("GBK");
response.setCharacterEncoding("GBK");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserManager.jsp' starting page</title>
    
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
  <table border="1">
  <tr>
    <th>Username</th>
    <th>Passwrord</th>
    <th>UpdataPassworid</th>
    <th>Type</th>
    <th>dfgdfg</th>
  </tr>
    
  <s:iterator value="list" id="array">  
           <tr> 
           
           		 <td><s:property value="#array.username"/></td>  
           		 <td><s:property value="#array.password"/></td> 
                 <td>
            		<a href="toUpdata.action?type=1&id= <s:property value='#array.id'/>&name=<s:property value='#array.username'/>" >修改密码</a>
            	</td>   
            	
            	<td><s:property value="#array.type"/></td> 
             	 <td>
            		<a href="toUpdata.action?type=2&id= <s:property value='#array.id'/>&name=<s:property value='#array.username'/>" >修改用户类型</a>
            	</td> 
            	
             	<td>
            		<a href="UserManager.action?id= <s:property value='#array.id'/>" >删除用户</a>
           		 </td>   
       		</tr>
    </s:iterator>  
    	
</table>

	</br>
<table border="1">
  <tr>
    <th>板块IDs</th>
    <th>板块名字</th>
    <th>删除板块</th>
    <th>顶置板块</th>
  </tr>
	<tr>
	<s:iterator value="list" id="array">  
		
    </s:iterator>
	</tr>
</table>
  </body>
</html>
