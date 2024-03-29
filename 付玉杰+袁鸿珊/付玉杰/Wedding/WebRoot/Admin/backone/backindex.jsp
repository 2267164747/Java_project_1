<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>鹤望兰后台管理中心</title>  
    <link rel="stylesheet" href="Admin/backone/css/pintuer.css">
    <link rel="stylesheet" href="Admin/backone/css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="../login1/img/photo.jpg" class="radius-circle rotate-hover" height="50" alt="" />鹤望兰后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="<%=basePath%>index.jsp" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;&nbsp;&nbsp;<a class="button button-little bg-red" href="AdminLoginOutServ"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="Admin/backone/addAdmin.jsp" target="right"><span class="icon-caret-right"></span>添加管理员</a></li>
    <li><a href="UpdatePwdServ" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
    <li><a href="UserManagerServ" target="right"><span class="icon-caret-right"></span>用户管理</a></li>  
    <li><a href="Admin/backone/booking.jsp" target="right"><span class="icon-caret-right"></span>预约订单</a></li>   
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
  <ul>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>婚礼案例管理</a></li>
    <li><a href="add.html" target="right"><span class="icon-caret-right"></span>婚礼风格管理</a></li>
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>团队司仪管理</a></li>
    <li><a href="ShowgroundServ?type=after" target="right"><span class="icon-caret-right"></span>婚礼场地管理</a></li> 
    <li><a href="cate.html" target="right"><span class="icon-caret-right"></span>婚纱管理</a></li> 
  </ul>
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  });
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  });
});
</script>
<ul class="bread">
  <li><a href="../首页.html" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0"  name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">

</div>
</body>
</html>