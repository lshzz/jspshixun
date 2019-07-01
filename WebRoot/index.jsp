<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="myhibernate.UserBean"%>
<%@page import="myhibernate.Userinfo"%>
<%@page import="myhibernate.Tipicid"%>
<%@page import="myhibernate.Tipicbean"%>
<%@page import="myhibernate.HibernateSessionFactory"%>
<%@page import="myhibernate.BoardBean"%>
<%@page import="myhibernate.Board"%>
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
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no"/>
<title></title>
<link rel="stylesheet" href="./css/style.min.css">

</head>
<body>
<div id="head">
    <div class="head-container">
        <a href="#" class="logo"></a>
        <ul class="nav">
            <li><a href="#" class="active">月霜</a></li>
            <li><a href="#">赤道</a></li>
            <li><a href="#">配件</a></li>
            <li><a href="#">App</a></li>
            <li><a href="#">新闻</a></li>
        </ul>
        <div class="login-btn-content">
            <a href="Login.jsp" target="_blank">登录<div class="line-dotted"></div></a>
            <a href="Register.jsp" target="_blank">注册</a>
            <a href="Zhuxiao.jsp">注销</a><br/>
            <a href="MyTopic.jsp" target="_blank">我的发表<div class="line-dotted"></div></a> 
             <a href="Myhuifu.jsp" target="_blank">我的回复</a>
        </div>
    </div>
</div>
<div id="main">
    <div class="left-side">
        <ul class="subnav">
            <li><a href="index.jsp" class="active">首页</a></li>            
            <li><a href="#">赤道板块</a></li>
            <li><a href="#">配件板块</a></li>
            <li><a href="#">求助咨询</a></li>
            <li><a href="#">关于我们</a></li>
        </ul>
        <div class="space-40"></div>
        <div class="main-container">
            <div class="main-h1">
                <h1>华米月霜手环</h1>                 
                <div class="main-h1-nav">
                    <a href="#" >全部</a>
			      <%   for(int i=0;i<boardlist.size();i++){
			      Board board=(Board)boardlist.get(i);   %>
                    <a href="Boardshow.jsp?boardid=<%=board.getBoardid()%>" target="_blank"><%=board.getBoardname() %></a>
                    <% }%>
                </div>
                <dl>
                    <dd>今日：<span>95303</span></dd>
                    <dd>昨日：<span>32432</span></dd>
                    <dd>帖子：<span>3484213</span></dd>
                    <dt>版主：汪大人，李大人，许大人</dt>
                </dl>
                <a href="#" class="btn-collection">&#xe902; 收藏</a>
            </div>
            
            
            <ul class="main-ul">
    <%
      for(int i=0;i<list.size();i++){
      Tipicid tipic=(Tipicid)list.get(i);
   %>
                <li>
                    <img src="./img/hico01.gif" width="50" height="50" alt="">
                    <div class="main-ul-contant">
                        <h3><a href="topicdetail.jsp?tipicid=<%=tipic.getTopicid() %>" target="_blank">[<%=tipic.getBoard().getBoardname() %>]<%=tipic.getTitle()%></a><span class="tag-top">置顶</span></h3>
                        <small><%=tipic.getTopiccontent() %></small><br>
                        <small><%=tipic.getAuthor() %></small>
                        <small><%=tipic.getPublishdate() %></small>
                    </div>
                    
                    <div class="tag-talk" title="回复数"><span>&#xe903;</span> 58</div>
                    <div class="tag-see" title="查看数"><span>&#xe000;</span> 2343</div>
                </li>
                <% }%>
            </ul>
            <div class="clear"></div>
            <div class="page">
                <a href="#" class="prev">&lt;</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#" class="next">&gt;</a>
            </div>
        </div>
    </div>
    <div class="right-side">
                <div class="search-container">
            <ul class="search-type">
                <span>帖子</span><div class="btn-subtype"></div>
                <div class="subtype-wrap">
                    <a href="javascript:;">用户</a>
                </div>
            </ul>
            <form name="form1" method="post" action="Search.action">
            <input type="text"  name="sousuo" class="search-text" placeholder="请输入搜索内容..." />
            <button class="btn-search" type="submit" name="Submit">&#xe036;</button>
            </form>
        </div>
        <div class="clear"></div>
        <div class="btn-wrap">
            <a href="Posting.jsp" class="btn-theme"><span>&#xe900;</span> 发表主题</a>
            <div class="reports-wrap">
                <a href="#" class="btn-reports">
                    <span>&#xe905; 签到</span><br>可获得1天延保
                </a>
                <div class="theme-info-wrap">
                    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&#xe901;</span> 38729人</div>
                    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&#xe014;</span> 2015-11-30</div>
                </div>
            </div>
        </div>
        <div class="hot-wrap">
            <div class="title">今日热帖</div>
            <ul class="ul-hot">
                <li><a href="#">西铁城光动能男表BM8475-26E开箱</a></li>
                <li><a href="#">大婶爱数码，2013年度数码历历数~</a></li>
                <li><a href="#">小米移动电源的宿敌？ -- AIKa 锋芒</a></li>
                <li><a href="#">标记你的生活 -- 「Pinco品酷」数字</a></li>
                <li><a href="#">不止轻薄！--OZAKI iPhone5S超薄保护套</a></li>
                <li><a href="#">搞机历程2013孤独的搞机历程</a></li>
                <li><a href="#">居家旅行好帮手——奥睿科多口USB充电器体</a></li>
                <li><a href="#">我与插座有个约会——实用插座体验</a></li>
            </ul>
        </div>
        <div class="hot-wrap">
            <div class="title"><a href="#">&#xe080; 换一批</a>推荐用户</div>
            <ul class="ul-users">
                <li>
                    <a href="#">
                        <img src="./img/huser01.gif" width="90" height="90" alt=""><br>
                        Flyme OS
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/huser02.gif" width="90" height="90" alt=""><br>
                        摄影体验
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/huser02.gif" width="90" height="90" alt=""><br>
                        摄影体验
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/huser01.gif" width="90" height="90" alt=""><br>
                        Flyme OS
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/huser02.gif" width="90" height="90" alt=""><br>
                        摄影体验
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/huser02.gif" width="90" height="90" alt=""><br>
                        摄影体验
                    </a>
                </li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="hot-wrap">
            <div class="title">推荐活动</div>
            <div class="img-container">
                <a href="#"><img src="./img/action.png" width="300" height="184" alt=""></a>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div id="foot">
    <div class="foot-wrap">
        <a href="http://www.amazfit.com/about.html" target="_blank">关于我们</a><span>|</span>
        <a href="http://weibo.com/amazfit" target="_blank">新浪微博</a><span>|</span>
        <a href="javascript:;" id="wechat">官方微信<img id="wechat_act" src="http://www.amazfit.com/iimg/wechat.jpg" alt=""></a><!-- <span>|</span> -->
        <!-- <a href="https://amazfit.tmall.com/?spm=a220o.1000855.w5001-12297742077.2.tWLKBk&scene=taobao_shop" target="_blank">天猫 Amazfit旗舰店</a> -->
        <p><span>01062667706 京ICP备15043545号-1</span>Copyright © 2015 Huami Co., Ltd. All rights reserved. </p>
    </div>
</div>
<script src="./js/jquery-1.11.2.min.js"></script>
<script src="./js/main.min.js"></script>
</body>
</html>
  <% HibernateSessionFactory.closeSession(); %>