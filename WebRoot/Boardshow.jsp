<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@page import="myhibernate.Tipicid"%>
<%@page import="myhibernate.Tipicbean"%>
<%@page import="myhibernate.BoardBean"%>
<%@page import="myhibernate.Board"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<%
	request.setCharacterEncoding("GBK");
	response.setCharacterEncoding("GBK");
	Tipicbean t=new Tipicbean();
	
	 int id;
	
	 if(request.getParameter("boardid")==null)
	 {
	 id=Integer.parseInt(request.getAttribute("boardid").toString());
	 }
	 else
	 {
	  id=Integer.parseInt(request.getParameter("boardid"));
	 }
	
	List<Tipicid> list=t.querBoardById(id); 
	
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
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Boardshow.jsp' starting page</title>
    
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

<!--头部开始-->
<div id="header">
	
		<a class="leftf" href="#nogo"><img src="images/logo.gif" alt="logo"/></a>
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
<div id="footer">底部. </div>
<!--底部结束-->
</body>
</html>
