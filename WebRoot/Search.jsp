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
<title>��̳</title>
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

<!--ͷ����ʼ-->
<div id="header">
	
		<a class="leftf" href="#nogo"><img src="images/logo.gif" alt="logo"/></a>
		<div class="leftf">��ҳ</div>
		<div class="leftf">
		<form name="form1" method="post" action="Search.action">
			<input type="text" name="sousuo" id="inputSearch" class="leftf" />
			<input type="submit" name="Submit" value="����">
			</form>
		</div>
		<div class="xrightr"><a>��¼</a>  <a>ע��</a></div>
	
</div>
<!--ͷ������-->
<div class="qingchufudong"></div>
<!--���忪ʼ-->
<div class="leftf">
	<div class="leftf">���1</div>
	<div class="leftf">���2</div>
	<div class="leftf">���3</div>
	<div class="leftf">���4</div>
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

<!--�������-->
<!--�ײ���ʼ-->
<div class="qingchufudong"></div>
<div id="footer">�ײ�. </div>
<!--�ײ�����-->
</body>
</html>