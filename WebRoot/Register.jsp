<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("GBK");
  response.setCharacterEncoding("GBK");
 %>
 
<!DOCTYPE html>
<html lang="en">
<head>
   <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>注册-BBS</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/register.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/register.js"></script>
</head>
<body>
    <div class="reg-box">
        <div class="top">
            <a href="index.jsp">
                <img src="img/login.png">
            </a>
            <h1>注册新用户</h1>
        </div>
        <div class="main">
 <form method="post" action="register.action" name="register">
            <input name="username" type="text" id="name" placeholder="昵称"> <br>
            
            <input name="password" type="password" id="pass" placeholder="密码"> <br>
            
            <a href="Login.jsp">已有帐号？</a>
            <!--err info-->
            <span class="err"></span> <br>
            <input type="submit" name="button1" value="注册">
            </form>
        </div>
    </div>

    <div class="footer">
        Copyright © 2018, <a href="https://github.com/TCQC">TCQC</a> All Rights Reserved
    </div>
</body>
</html>