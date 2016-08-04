<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="../resources/css/reset.css">
      <link rel="stylesheet" href="../resources/css/supersized.css">
      <link rel="stylesheet" href="../resources/css/style.css">
		<script src="../resources/js/jquery-1.8.2.min.js" ></script>
      <script src="../resources/js/supersized.3.2.7.min.js" ></script>
      <script src="../resources/js/supersized-init.js" ></script>
      <script src="../resources/js/scripts.js" ></script>

<title>首页</title>
</head>
<body>
	<div class="page-container">
            <h1>登录</h1>
            <form action="login.action" method="post">
                <input type="text" name="name" class="name" placeholder="请输入您的用户名！">
                <input type="password" name="password" class="password" placeholder="请输入您的用户密码！">
                <input type="Captcha" class="Captcha" name="Captcha" placeholder="请输入验证码！">
                <button type="submit" class="submit_button">登录</button>
                <div class="error"><span>+</span></div>
            </form>          
        </div>	
</body>
</html>