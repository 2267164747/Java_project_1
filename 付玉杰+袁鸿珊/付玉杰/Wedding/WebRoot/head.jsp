<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>鹤望兰官网，婚礼定制，婚庆公司，婚礼策划，北京服务最好的公司</title>
		<script src="js/jquery1.42.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/Gd_daohangtiao.css" />
		<link rel="stylesheet" type="text/css" href="css/middle.css" />
		<script type="text/javascript" src="js/snowfall.jquery.js"></script>
		<!--<script type="text/javascript" src="js/jiage.js"></script>-->
			
  </head>
  
  <body>
    <div class="navBar">

				<div class="imgtop">
					<a href="#"><img src="img/1.png" width="55%" /></a>
				</div>
				<ul class="nav clearfix" >
					<li class="m">
						<h3><a target="_self" href="index.jsp">网站首页</a></h3>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="weddingcase.jsp">婚礼案例</a></h3>
					</li>
					<li class="s">|</li>
					<li class="m ">
						<!-- 当前频道添加on -->
						<h3><a target="_self" href="weddingstyle.jsp">婚礼风格</a></h3>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="siyi.jsp">团队司仪</a></h3>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" >量身定制</a></h3>
						<ul class="sub">
							<li>
								<a href="ShowgroundServ?type=before">婚礼场地</a>
							</li>
							<li>
								<a href="yqhunsha.html">婚纱礼服</a>
							</li>
						</ul>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="javascript:;">个人中心</a></h3>
						<ul class="sub">
							<li>
								<a href="userbooking.jsp">我的预约</a>
							</li>
							<li>
								<a href="AdminLoginOutServ?type=before">退出登录</a>
							</li>
						</ul>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="guanyuwomen.jsp">关于我们</a></h3>
						<ul class="sub">
							<li>
								<a href="liuyan.jsp">留言板</a>
							</li>
						</ul>
					</li>
					<li class="block"></li>
					<!-- 滑动块 -->
				</ul>
			</div>
  </body>
</html>
