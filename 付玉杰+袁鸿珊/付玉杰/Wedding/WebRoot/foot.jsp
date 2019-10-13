<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'foot.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/case.css" />
<script type="text/javascript" class="autoinsert"
	src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/contentCase.js"></script>
<script src="js/snowfall.jquery.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />

<link rel="stylesheet" type="text/css" href="css/middle.css" />

</head>

<body>
	<div class="bottom">
		<div class="footer" id="footer">
			<div class="w clx">
				<div class="footer-title clx">
					<ul class="fl">
						<li><a href="index.jsp">网站首页</a></li>
					</ul>
					<p class="fr">全国热线：153-3343-6031</p>
				</div>
				<div class="web-nav footer-cell">
					<h3>网址导航</h3>
					<a href="index.jsp" class='' title="网站首页">网站首页</a> <a href="案例.html"
						class='' title="婚礼案例">婚礼案例</a> <a href="婚礼场地.html" class=''
						title="量身定制">量身定制</a> <a href="司仪主页.html" class='' title="团队介绍">团队司仪</a>
					<a href="婚礼风格.html" class='' title="婚礼课堂">婚礼风格</a> <a
						href="guangyuwomen.html" class='' title="关于我们">关于我们</a>

				</div>
				<div class="contact footer-cell">
					<h3>联系方式</h3>
					<p class=''>客服微信：888-888</p>
					<p class=''>商务合作：666666.qq</p>
					<p class=''>服务时间：周一至周日 10:00-19:00</p>
					<p class=''>地址：北京交通职业技术学院中软大楼108室</p>
				</div>
				<div class="about-amazing footer-cell">
					<h3>关注我们</h3>
					<div class="amazing-way clx">
						<a href="javascript:;" class="fl"> <img
							src="img/weibu_gywm/liantu.png" width="100px" height="100px" />
						</a> <img src="img/weibu_gywm/liantu (1).png" width="100px"
							height="100px" />
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
