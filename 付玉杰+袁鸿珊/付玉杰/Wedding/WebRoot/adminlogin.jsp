<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title></title>
<meta name="author" content="DeathGhost">
<link rel="stylesheet" type="text/css" href="css/adminlogin.css" >
<script src="js/ajax.js" type="text/javascript" charset="utf-8"></script>
<script  src="js/jquery.js"></script>
<script src="js/adminjquery.js"></script>
<!--<script src="js/verificationNumbers.js" tppabs="js/verificationNumbers.js"></script>-->
<script src="js/Particleground.js" tppabs="js/Particleground.js"></script>
<script src="js/verificationNumbers.js" tppabs="js/verificationNumbers.js"></script>
<style>
body {
	height: 100%;
	background: #16a085;
	overflow: hidden;
}

canvas {
	z-index: -1;
	position: absolute;
}
</style>
<script>
	
	window.onload=function(){
				$(document).ready(function() {
		  //粒子背景特效
		  $('body').particleground({
		    dotColor: '#5cbdaa',
		    lineColor: '#5cbdaa'
		  });

		});
		validate();
	};
	function validate() {
		var y=Math.floor(Math.random()*9000+1000);
		$("#yanzheng").val(y);
	}
	function checkname() {
		var uname=document.getElementById('huser').value;
		if(uname==""){
			$("#getname").html("用户名不能为空！");
		}else{
			$("#getname").html("√");
		}
	}
	function checkpwd() {
		var pwd=$("#hpwd").val();
		if(pwd==""){
			$("#getpwd").html("密码不能为空");
		}else{
			$("#getpwd").html("√");
		}
	}
	function check() {
		var yz =document.getElementById('J_codetext').value;
		var yzm=document.getElementById("yanzheng").value;
		if(yz!=yzm){
			$("#getyz").html("验证码输入不正确！");
		}else{
			$("#getyz").html("√");
		}
	}
	function adminlogin() {
		checkname();
		checkpwd();
		check();
		if($("#getyz").html()=="√"&&$("#getpwd").html() == "√" &&$("#getname").html()=="√"){
			return true;
		}else{
			validate();
			return false;
		}
	}
</script>
</head>
<body>
<div id="getname" class="valiname">${result}</div>
<div id="getpwd"  class="valipwd" ></div>
<div id="getyz" class="valiyz"></div>
	<form action="AdminLoginServ" method="post" onsubmit="return adminlogin()">
		<dl class="admin_login">

			<dt>
				<strong>鹤望兰后台管理系统</strong>
			</dt>
			<dd class="user_icon">
				<input type="text" placeholder="账号" class="login_txtbx" id="huser" name="uname"
					onblur="window.checkname()"> 
			</dd>
			<dd class="pwd_icon">
				<input type="password" placeholder="密码" class="login_txtbx"
					id="hpwd" onblur="window.checkpwd()" name="password"> 
					
			</dd>
			
			<dd class="val_icon">
				<div class="checkcode">
					<input type="text" id="J_codetext" placeholder="验证码" maxlength="4"
						class="login_txtbx" onblur="check()"> <input type="text" id="yanzheng"
						style="position: absolute;left: 115px;padding-left:-20px;color: red;" />
				</div>
				<input type="button" value="换个验证码" class="ver_btn"
					onclick="validate()" id="hbtny">
			</dd>
			<dd>
				<input type="submit" value="立即登陆" class="submit_btn" id="hbtn">
			</dd>
		</dl>
	</form>
</html>
