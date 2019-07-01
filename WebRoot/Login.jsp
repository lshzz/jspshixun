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
    <title>登录-BBS</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/login.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/login.js"></script>
</head>
<body>
    <div class="main">
        <div class="login-box">
            <div class="body">
                <div class="content">
                    <a href="index.html">
                        <img src="img/login.png">
                    </a>
                    <h2>TCQC BBS</h2>
             <form method="post" action="login.action" name="login">
                    <input name="username" type="text" placeholder="您的邮箱" id="email"> <br>
                    <input  name="password" type="password" placeholder="您的登录密码" id="pass"> <br>

                    <!--show err info in span-->
                    <span class="err"></span>
                    <input   type="submit" name="test" value="登录">
                    </form>
                </div>
            </div>
            <div class="info">
                <span>还没有帐号？ </span>
                <a href="register.html">立即注册 </a>
                 •
                <a href="../index.html"> 游客访问</a>
            </div>
        </div>
    </div>

    <div class="footer">
        Copyright © 2018, <a href="https://github.com/TCQC">TCQC</a> All Rights Reserved
    </div>
</body>
</html>