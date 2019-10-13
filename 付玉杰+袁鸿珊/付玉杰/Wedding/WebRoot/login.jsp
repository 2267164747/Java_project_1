<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/s_login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
<script type="text/javascript" src="md5.js"></script>
<script type="text/javascript" src="page_login.js"></script>
</head>
<body class="loginbody">
<div class="dataEye">
	<div class="loginbox">
		<div class="logo-a">
				<img src="img/1.png"/>
			</a>
		</div>
		<div class="login-content">
			<div class="loginbox-title">
				<center><h3>登录</h3></center>
			</div>
			<form id="signupForm" action="LoginServ" method="post">
			<div class="login-error"></div>
			<div class="row">
				<label class="field">用户名</label>
				<input type="text" class="input-text-user input-click" name="uname" id="email">
			</div>
			<div class="row">
				<label class="field">密码</label>
				<input type="password" class="input-text-password input-click" name="password" id="password">
			</div>
			<div class="row btnArea">
				<button type="submit" class="login-btn" id="submit" style="background: blue;">登录</button>
			</div>
			<div class="row tips">
				<a href="#" class="link">忘记密码</a>
				
				<a href="adminlogin.jsp" class="rowt">后台登录</a>
			
			</div>
			
			</form>
		</div>
		<div class="go-regist">
			还没有账号？请
			<a href="register.jsp">立即注册</a>
		</div>
	</div>
	
<div id="footer">
	<div class="dblock">
		<div class="inline-block copyright">
			<p><a href="#">关于我们</a> | <a href="#">微博</a> | <a href="#">隐私政策</a> | <a href="#">人员招聘</a></p>
			<p> Copyright © 2017 鹤望兰</p>
		</div>
	</div>
</div>
</div>
</body>
</html>