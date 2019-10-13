<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<meta name="author" content="DeathGhost">
<link rel="stylesheet" type="text/css" href="css/style.css" tppabs="css/style.css">
<script src="js/ajax.js" type="text/javascript" charset="utf-8"></script>
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="js/jquery.js"></script>
<!--<script src="js/verificationNumbers.js" tppabs="js/verificationNumbers.js"></script>-->
<script src="js/Particleground.js" tppabs="js/Particleground.js"></script>
<script>
	window.onload=function(){
				$(document).ready(function() {
		  //粒子背景特效
		  $('body').particleground({
		    dotColor: '#5cbdaa',
		    lineColor: '#5cbdaa'
		  });
		  //验证码
//		  createCode();
		  //测试提交，对接程序删除即可
		  $(".submit_btn").click(function(){
			  location.href="javascrpt:;"/*tpa=http://***index.html*/;
			  });
		});
		var oHuser=document.getElementById('huser');
		var oHpwd=document.getElementById('hpwd');
		var oHbtn=document.getElementById('hbtn');
		var oHbtny=document.getElementById('hbtny');
		var oHyan =document.getElementById('J_codetext');
		var oyanzhneg=document.getElementById("yanzheng");
		var a=1;
		oHbtny.onclick=function(){
				var y=Math.floor(Math.random()*4000+1000);
				oyanzhneg.value=y;
		}
		hbtn.onclick=function(){
				ajax("user.txt",function(str){
						var arr=eval(str);
						for(var i=0;i<arr.length;i++){
							if(oHuser.value==arr[i].user&&oHpwd.value==arr[i].pwd){
								if(oHyan.value==oyanzhneg.value){
										window.location.href="../后台/index.html";
										a=1;
										break;
								}
							
							}
						    else{
						    	a=0;
				         
							}
						}
					});
		}
	}

</script>
</head>
<body>
<dl class="admin_login">
 <dt>
  <strong>微距后台管理系统</strong>
  
 </dt>
 <dd class="user_icon">
  <input type="text" placeholder="账号" class="login_txtbx" id="huser">
 </dd>
 <dd class="pwd_icon">
  <input type="password" placeholder="密码" class="login_txtbx" id="hpwd">
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx" >
    <input type="text" id="yanzheng" value="8564" style="position: absolute;left: 115px;padding-left:-20px;color: red;"/>
  </div>
  <input type="button" value="验证码核验" class="ver_btn" onclick="validate();" id="hbtny">
 </dd>
 <dd>
  <input type="button" value="立即登陆" class="submit_btn" id="hbtn">
 </dd>

</dl>

</html>
