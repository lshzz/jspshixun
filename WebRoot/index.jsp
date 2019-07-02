<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="myhibernate.UserBean"%>
<%@page import="myhibernate.Userinfo"%>
<%@page import="myhibernate.Tipicid"%>
<%@page import="myhibernate.Tipicbean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
Tipicbean tip=new Tipicbean();
List list=tip.QueryAllTopic();
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>论坛</title>
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

<!--头部开始-->
<div id="header">
	
		<a class="leftf" href="#nogo"><img src="images/logo.gif" alt="logo"/></a>
		<div class="leftf">首页</div>
		<div class="leftf">
			<input type="text" id="inputSearch" class="leftf" value="请输入关键字搜索" />
		</div>
		<div class="xrightr"><a>登录</a>  <a>注册</a></div>
	
</div>
<!--头部结束-->
<div class="qingchufudong"></div>
<!--主体开始-->
<div class="leftf">
	<div class="leftf">板块1</div>
	<div class="leftf">板块2</div>
	<div class="leftf">板块3</div>
	<div class="leftf">板块4</div>
</div>


<div class="qingchufudong"></div>

<div  class="leftf">
    
    <table width="1019" height="87" border="1" align="center">
  <tbody>
  
    <tr>
      <td width="160" height="27" align="center">记录ID</td>
      <td width="167" align="center">学号</td>
      <td width="146" align="center">姓名</td>
      <td width="101" align="center">班级</td>
      <td width="139" align="center">年龄</td>
      <td width="266" align="center">住址</td>
    </tr>
    
    
    <%
      for(int i=0;i<list.size();i++){
      Tipicid tipic=(Tipicid)list.get(i);
   %>
    <tr>
      <td height="27" align="center">&nbsp;<%=%></td>
      <td align="center">&nbsp;<%= %></td>
      <td align="center">&nbsp;<%= %></td>
      <td align="center">&nbsp;<%= %></td>
      <td align="center">&nbsp;<%= %></td>
      <td align="center">&nbsp;<%= %></td>
    </tr>
    
    <% }%>
  </tbody>
</table>
    
    

<div >
<div><span>[新闻]</span><span>标题</span></div>
<div><span>张三</span>  <span>时间</span></div>
<div>n内容n内容n内容n内容n内容n内容n内容n内容n内容n内容n内容n内容n内容n内容n内容n内容n内容</div>
</div>
</div>

<!--主体结束-->
<!--底部开始-->
<div class="qingchufudong"></div>
<div id="footer">底部. </div>
<!--底部结束-->
</body>
</html>