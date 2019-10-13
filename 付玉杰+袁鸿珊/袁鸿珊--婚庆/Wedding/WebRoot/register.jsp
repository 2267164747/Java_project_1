<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/s_zche.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/page_regist.js?lang=zh"></script>
<script type="text/javascript" src="<%=basePath%>>jquery/jquery-1.7.2.js"></script>
<script type="text/javascript">
</script>
</head>
<body class="loginbody">
<div class="dataEye">
	<div class="loginbox registbox">
		<div class="logo-a">
			<a href="login.jsp">
				<img src="img/1.png">
			</a>
		</div>
		<div class="login-content reg-content">
			<div class="loginbox-title">
				<center><h3>注册</h3></center>
			</div>
			<form id="signupForm" action="RegisterServ" method="post">
			<div class="login-error"></div>
			<div class="row">
				<label class="field" for="email" >注册邮箱</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="email" id="email">
			</div>
			<div class="row">
				<label class="field" for="password">密码</label>
				<input type="password" value="" class="input-text-password noPic input-click" name="password" id="password">
			</div>
			<div class="row">
				<label class="field" for="passwordAgain">确认密码</label>
				<input type="password" value="" class="input-text-password noPic input-click" name="passwordAgain" id="passwordAgain">
			</div>
			<div class="row">
				<label class="field" for="contact">联系人</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="contact" id="contact">
			</div>
			<div class="row">
				<label class="field" for="tel">电话</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="tel" id="tel">
			</div>
			<div class="row">
				<label class="field" for="qq">QQ</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="qq" id="qq">
			</div>
			<div class="row tips">
				<input type="checkbox" id="checkBox">
				<label>
				我已阅读并同意
				<a href="#" target="_blank">隐私政策、服务条款</a>
				</label>
			</div>
			<div class="row btnArea">
				<button type="submit" class="login-btn" id="submit" style="background: blue;">注册</button>
			</div>
			</form>
		</div>
		<div class="go-regist">
			已有帐号,请<a href="login.jsp" class="link">登录</a>
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

