<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("GBK");
  response.setCharacterEncoding("GBK");
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
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
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
            <a href="#">登录<div class="line-dotted"></div></a>
            <a href="#">注册</a>
        </div>
    </div>
</div>
<div id="main">
    <div class="left-side">
        <ul class="subnav contant-subnav">
            <li><a href="#" class="active">俱乐部首页</a></li>
            <li><a href="#">赤道板块</a></li>
            <li><a href="#">对话高圆圆：最漂亮的智能手环设计师</a></li>
        </ul>
        <div class="space-40"></div>
        <div class="main-container">
            <ul class="main-ul" style="margin-top:0px;">
                <li>
                    <img src="./img/hico01.gif" width="50" height="50" alt="">
                    <div class="main-ul-contant">
                        <h1>对话高圆圆：最漂亮的智能手环设计师</h1>
                        <small style="margin-top:0px;font-size:12px;">发表于：2015 / 11 / 12 作者：特训科技 来源：特效</small>
                    </div>
                    <div class="tag-talk" title="回复数"><span>&#xe903;</span> 58</div>
                    <div class="tag-see" title="查看数"><span>&#xe000;</span> 2343</div>
                </li>
            </ul>
            <div class="clear"></div>
            <div class="contant-head-info">华米科技高端品牌Amazfit发布会会Amazfit与女神高圆圆合作推出了两款联名手环“月霜”与“赤道”去科技范儿的外观颠覆了人们对于智能手环的固有印象，这也是女神高圆圆首次与科技品牌跨界合作。腾讯时尚对话高圆圆，聊聊最漂亮的设计师和最漂亮的智能手环。</div>
            <div class="contant-info">
                <img src="./img/content.png" alt=""><br>
高圆圆：它肯定更多的是一个科技类的产品，这是先决条件，因为功能是非常强大的有一些我自己非常喜欢的功能，比如说来电的时候会震动，如果没有这个功能，有时候你真的会错过一些重要的电话。比如早晨起床，闹钟也是震动式的，这样就会在不影响到其他人的情况下起床。这些功能性的东西，我自己就非常喜欢腾讯时尚：如果用一个词来形容Amzafit，你觉得是什么？
            </div>
            <div class="contant-btn">
                <a href="javascript:;"><span>&#xe902;</span> 收藏</a>
                <a href="javascript:;"><span>&#xe024;</span> 分享</a>
                <a href="javascript:;"><span>&#xe046;</span> 淘贴</a>
                <a href="javascript:;"><span>&#xe904;</span> 顶</a>
                <a href="javascript:;"><span class="ico-cai">&#xe904;</span> 踩</a>
            </div>
        </div>
        <div class="comment-container">
            <div class="title">全部评论</div>
            <ul class="comment-ul">
                <li>
                    <img src="./img/hico02.gif" width="50" height="50" alt="">
                    <div class="comment-ul-contant">
                        <small><a href="#">雾霾中的飞鱼</a>　5小时前</small>
                        <h3>对话高圆圆：最漂亮的智能手环设计师</h3>
                        <div class="comment-btns">
                            <a href="javascript:;"><span>&#xe904;</span> (450)</a>
                            <a href="javascript:;"><span class="ico-repaly">&#xe039;</span> 回复(450)</a>
                            <a href="javascript:;"><span>&#xe024;</span> 分享(450)</a>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <a href="#" class="btn-jb"><span>&#xe108;</span> 举报</a>
                </li>
                <li>
                    <img src="./img/hico02.gif" width="50" height="50" alt="">
                    <div class="comment-ul-contant">
                        <small><a href="#">雾霾中的飞鱼</a>　5小时前</small>
                        <h3>对话高圆圆：最漂亮的智能手环设计师</h3>
                        <div class="comment-btns">
                            <a href="javascript:;"><span>&#xe904;</span> (450)</a>
                            <a href="javascript:;"><span class="ico-repaly">&#xe039;</span> 回复(450)</a>
                            <a href="javascript:;"><span>&#xe024;</span> 分享(450)</a>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <a href="#" class="btn-jb"><span>&#xe108;</span> 举报</a>
                </li>
                <li>
                    <img src="./img/hico02.gif" width="50" height="50" alt="">
                    <div class="comment-ul-contant">
                        <small><a href="#">雾霾中的飞鱼</a>　5小时前</small>
                        <h3>对话高圆圆：最漂亮的智能手环设计师</h3>
                        <div class="comment-btns">
                            <a href="javascript:;"><span>&#xe904;</span> (450)</a>
                            <a href="javascript:;"><span class="ico-repaly">&#xe039;</span> 回复(450)</a>
                            <a href="javascript:;"><span>&#xe024;</span> 分享(450)</a>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <a href="#" class="btn-jb"><span>&#xe108;</span> 举报</a>
                </li>
                <li>
                    <img src="./img/hico02.gif" width="50" height="50" alt="">
                    <div class="comment-ul-contant">
                        <small><a href="#">雾霾中的飞鱼</a>　5小时前</small>
                        <h3>对话高圆圆：最漂亮的智能手环设计师</h3>
                        <div class="comment-btns">
                            <a href="javascript:;"><span>&#xe904;</span> (450)</a>
                            <a href="javascript:;"><span class="ico-repaly">&#xe039;</span> 回复(450)</a>
                            <a href="javascript:;"><span>&#xe024;</span> 分享(450)</a>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <a href="#" class="btn-jb"><span>&#xe108;</span> 举报</a>
                </li>

            </ul>
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
        <div class="comment-container">
            <div class="title">发表评论</div>
            <div class="input-comment"></div>
            <input type="submit" value="发表回复" class="submit-comment" />
            <div class="clear"></div>
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
            <input type="text" class="search-text" placeholder="请输入搜索内容..." />
            <button class="btn-search">&#xe036;</button>
        </div>
        <div class="clear"></div>
        <div class="btn-wrap">
            <a href="#" class="btn-theme"><span>&#xe900;</span> 发表主题</a>
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