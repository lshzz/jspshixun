<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="myhibernate.UserBean"%>
<%@page import="myhibernate.Userinfo"%>
<%@page import="myhibernate.Tipicid"%>
<%@page import="myhibernate.Tipicbean"%>
<%@page import="myhibernate.HibernateSessionFactory"%>
<%@page import="myhibernate.BoardBean"%>
<%@page import="myhibernate.Board"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("GBK");
  response.setCharacterEncoding("GBK");
 %>
<%
Tipicbean tip=new Tipicbean();
List list=tip.QueryAllTopic();
BoardBean boardbean=new BoardBean();
List<Board> boardlist=boardbean.queryAllBoard();
String name="";
try{
name=session.getAttribute("username").toString();
}
catch(Exception e)
{
e.printStackTrace();
}
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
	
		<a class="leftf" href="#nogo"><img src="images/logo.png" alt="logo"/></a>
		<div class="leftf">首页</div>
		<div class="leftf">
		<form name="form1" method="post" action="Search.action">
			<input type="text" name="sousuo" id="inputSearch" class="leftf"  />
			<input type="submit" name="Submit" value="搜索">
			</form>
		</div>
		<div class="xrightr"><a href="Login.jsp">登录</a>  <a>注册</a>   <a href="MyTopic.jsp">我的发表</a>  <a href="Myhuifu.jsp">我的回复</a></div>
	
</div>
<!--头部结束-->
<div class="qingchufudong"></div>
<!--主体开始-->
<div class="leftf">
<div class="leftf"><a href="index.jsp">全部</a></div>
<%
      for(int i=0;i<boardlist.size();i++){
      Board board=(Board)boardlist.get(i);
   %>
	<div class="leftf"><a href="Boardshow.jsp?boardid=<%=board.getBoardid()%>"><%=board.getBoardname() %></a></div>
	<% }%>
</div>


<div class="qingchufudong"></div>
 
<div  class="leftf">
 <%
      for(int i=0;i<list.size();i++){
      Tipicid tipic=(Tipicid)list.get(i);
   %>
<div >
<div><span><%=tipic.getBoard().getBoardname() %></span><a href="topicdetail.jsp?tipicid=<%=tipic.getTopicid() %>"><span><%=tipic.getTitle()%></span></a></div>
<div><span><%=tipic.getAuthor() %></span>  <span><%=tipic.getPublishdate() %></span></div>
<div><%=tipic.getTopiccontent() %></div>
</div>
<% }%>
</div>

<!--主体结束-->
<!--底部开始-->
<div class="qingchufudong"></div>
<div id="footer">关于我们. </div>
<!--底部结束-->
</body>
</html>
  <% HibernateSessionFactory.closeSession(); %>