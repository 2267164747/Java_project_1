<%@ page language="java" import="java.util.*"
	import="com.etc.wedding.dto.WeddingDress"
	import="com.etc.wedding.dto.Picture" import="java.util.List"
	import="java.io.IOException" import="java.io.PrintWriter"
	import="java.sql.SQLException"
	import="java.util.ArrayList,javax.servlet.ServletException,javax.servlet.http.HttpServlet"
	import="javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"
	import="com.etc.wedding.biz.SSFileBiz" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta charset="utf-8" />
<title>鹤望兰官网，婚礼定制，婚庆公司，婚礼策划，北京服务最好的公司</title>
<script src="js/ajax.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery1.42.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"
	charset="utf-8"></script>
<!--<script src="js/jquery-1.2.6.min.js"></script>-->
<script src="js/snowfall.jquery.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/daohangtiao.css" />
<link rel="stylesheet" type="text/css" href="css/hunsha.css" />
<script type="text/javascript" src="js/hunsha.js"></script>
<script>
	window.onload = function() {
		getURL();
	}
</script>
</head>

<body>
	<div class="navBar">

		<div class="imgtop">
			<a href="#"><img src="img/1.png" width="55%" /></a>
		</div>
		<ul class="nav clearfix" style="width: 800px;">
			<li class="m">
				<h3>
					<a target="_self" href="首页.html">网站首页</a>
				</h3>
			</li>
			<li class="s">|</li>
			<li class="m">
				<h3>
					<a target="_self" href="weddingcase.jsp">婚礼案例</a>
				</h3>
			</li>
			<li class="s">|</li>
			<li class="m ">
				<!-- 当前频道添加on -->
				<h3>
					<a target="_self" href="婚礼风格.html">婚礼风格</a>
				</h3>
			</li>
			<li class="s">|</li>
			<li class="m">
				<h3>
					<a target="_self" href="司仪主页.html">团队司仪</a>
				</h3>
			</li>
			<li class="s">|</li>
			<li class="m">
				<h3>
					<a target="_self" href="#">量身定制</a>
				</h3>
				<ul class="sub">
					<li><a href="婚礼场地.html">婚礼场地</a></li>
					<li><a href="yqhunsha.html">婚纱礼服</a></li>
				</ul>
			</li>
			<li class="s">|</li>
			<li class="m">
				<h3>
					<a target="_self" href="guangyuwomen.html">关于我们</a>
				</h3>
				<ul class="sub">
					<li><a href="新留言板.html">留言板</a></li>
				</ul>
			</li>
			<li class="s">|</li>
			<li class="block"></li>
			<!-- 滑动块 -->
		</ul>
	</div>
	<div id="banner"></div>
	<div class="content" style="height:120px">
		<script type="text/javascript" src="js/daohangtiao.js"></script>
		<!--内容开始-->
		<div class="content_hunsha">
			<p>当前位置：鹤兰亭官网 > 首页 > 婚纱礼服</p>
			<p>
				服务分类： <a href="案例.html">婚礼案例</a> | <a href="#">婚礼场地</a> | <a
					href="司仪主页.html">婚礼司仪</a> | <a href="婚礼风格.html">婚礼风格</a>
			</p>
			<!-- 主页面从这里开始 -->
			<%
				List<WeddingDress> listInf =(List<WeddingDress>)request.getAttribute("listInf");
				List<Picture> listPic =(List<Picture>)request.getAttribute("listPic");
				for(int i=0;i<listInf.size();i++){
				WeddingDress wd=listInf.get(i);
				String wdaccessories=wd.getWdaccessories();
				int wdid=wd.getWdid();
				String wdname=wd.getWdname();
				int wdprice=wd.getWdprice();
				Picture pc=listPic.get(i);
				int pid=pc.getPid();
			%>
			<!-- 	height: 2500px; -->
			<div class="myhunsha">
				<a href="SydDressServ?wdid=<%=wdid %>" target="_blank">
				<div class="myhunsha_img">
				<img src="ImageServ?pcid=<%=pid%>" style="height:220px;width: 278px ">
					</div></a>
				<ul>
					<li class="myhunsha_li1">【<%=wdname %>】</li>
					<li class="myhunsha_li2"><%=wdaccessories %></li>
					<li class="myhunsha_li3"><%=wdprice %></li>
				</ul>
			</div>
			<%
				}
			%>
			
		</div>
		<!--内容结束-->
		<div id="fanhui">
			<img src="img/yqq/fanhui.PNG">
		</div>
		<script>
			fanhui.onclick = function() {
				document.body.scrollTop = document.documentElement.scrollTop = 0;
			}
		</script>


		<!--<div class="content" style="height:120px">-->

		<!-- 内容 -->

	</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>

</body>
</html>