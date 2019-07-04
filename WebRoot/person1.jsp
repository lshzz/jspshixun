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
        <ul class="subnav">
            <li><a href="#">俱乐部首页</a></li>
            <li><a href="#">华米月霜手环</a></li>
            <li><a href="#">赤道板块</a></li>
            <li><a href="#">配件板块</a></li>
            <li><a href="#">求助咨询</a></li>
        </ul>
        <div class="space-40"></div>
    </div>
    <div class="clear"></div>
    <div class="left-person">
        <div class="title">设置</div>
        <ul>
            <li><a href="#" class="active"><span>&#xe123;</span> 上传资料</a></li>
            <li><a href="#"><span>&#xe074;</span> 上传头像</a></li>
        </ul>
    </div>
    <div class="right-person">
        <div class="title">个人信息</div>
        <table cellspacing="0" cellpadding="0">
            <tr>
                <td width="160" align="right">用户名：</td>
                <td align="left">Dennisyf</td>
            </tr>
            <tr>
                <td width="160" align="right">真实姓名：</td>
                <td align="left"><input type="text" value="杨帆" class="person-text" /><span class="per-m-tip">*</span></td>
            </tr>
            <tr>
                <td width="160" align="right">手机：</td>
                <td align="left"><input type="text" value="" class="person-text" /><span class="per-m-tip">*</span></td>
            </tr>
            <tr>
                <td width="160" align="right">邮寄地址：</td>
                <td align="left"><input type="text" value="" class="person-text" /><span class="per-m-tip">*</span></td>
            </tr>
            <tr>
                <td width="160" align="right">QQ：</td>
                <td align="left"><input type="text" value="" class="person-text" /><span class="per-m-tip">*</span></td>
            </tr>
            <tr>
                <td width="160" align="right">邮箱：</td>
                <td align="left"><input type="text" value="" class="person-text" /><span class="per-m-tip">*</span></td>
            </tr>
            <tr>
                <td width="160" align="right">城市：</td>
                <td align="left"></td>
            </tr>
            <tr>
                <td width="160" align="right">性别：</td>
                <td align="left"></td>
            </tr>
            <tr>
                <td width="160" align="right">生日：</td>
                <td align="left"></td>
            </tr>
            <tr>
                <td width="160" align="right">身份证号：</td>
                <td align="left"></td>
            </tr>
            <tr>
                <td width="160" align="right">个人主页</td>
                <td align="left"></td>
            </tr>
            <tr>
                <td width="160" align="right">个人签名</td>
                <td align="left"></td>
            </tr>
            <tr>
                <td width="160" align="right"></td>
                <td align="left"></td>
            </tr>
        </table>
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