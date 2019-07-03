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
<html >
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
		<form name="form1" method="post" action="Search.action">
			<input type="text" name="sousuo" id="inputSearch" class="leftf" />
			<input type="submit" name="Submit" value="搜索">
			</form>
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
 <s:iterator value="list" id="array"> 
	<div class="qingchufudong"></div>
<div><span>	<s:property value="#array.board.boardname"/></span><span>	<s:property value="#array.title"/></span></div>
<div><span><s:property value="#array.author"/></span>  <span><s:property value="#array.publishdate"/></span></div>
<div><s:property value="#array.topiccontent"/></div>
</div>
 </s:iterator> 


</div>

<!--主体结束-->
<!--底部开始-->
<div class="qingchufudong"></div>
<div id="footer">底部. </div>
<!--底部结束-->
</body>
</html>