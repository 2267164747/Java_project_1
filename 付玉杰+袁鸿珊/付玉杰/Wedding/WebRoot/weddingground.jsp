<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>鹤望兰官网，婚礼定制，婚庆公司，婚礼策划，北京服务最好的公司</title>
<script src="js/jquery1.42.min.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/hunlichangdi.css" />
<link rel="stylesheet" type="text/css" href="css/Z_daohangtiao.css" />
<link rel="stylesheet" type="text/css" href="css/middle.css" />

<script type="text/javascript" src="js/snowfall.jquery.js"></script>
<!--<script type="text/javascript" src="js/jiage.js"></script>-->
<script type="text/javascript">
			window.onload = function() {
	        $(document).snowfall('clear');
	        $(document).snowfall({
	            image: "img/huaban.png",
	            flakeCount:30,
	            minSize: 5,
	            maxSize: 22
	        });
	       
			};
		</script>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="a1">
		<div class="a11">
			<span id="sp1"><font color="#AAAAAA" size="4px">网站首页>量身定制>婚礼场地</font></span>
			<hr color="#E7E7E7" id="hr3" />
			<div id="top_div">

				<img src="img/ground.png" id="top_img" />
				<div id="FuGai">
					<span id="jiudian">场地介绍</span>
				</div>
			</div>
		</div>
		<div class="a12">
			<hr
				style="background-color:#E7E7E7;width: 1100px; border:0;height:2px;margin-left: 20px;" />
			<c:forEach var="wg" items="${list}">
			<table class="ground">
				<tr class="groundtr">
					<td rowspan="5" style="width:290px;"><img src="GroundImgServ?type=ground&wgid=${wg.wgid}"
						class="img1" /></td>
					<td class="groundname"><a href="JudgeGroundServ?wgid=${wg.wgid}"><b>${wg.wgbname}</b></a></td>
					<td class="groundp"><b>${wg.wgprice}元/桌起</b></td>
				</tr>
				<tr>
					<td class="groundc1">${wg.wgtype}</td>
				</tr>
				<tr>
					<td class="groundc1">${wg.wgexplain}</td>
				</tr>
				<tr>
					<td class="groundc1">${wg.wgaddress}</td>
				</tr>
				<tr>
					<td><span class="groundc2">户外仪式</span> <span class="groundc3">草坪婚礼</span>
						<span class="groundc4">一年四季青草坪</span></td>
				</tr>
			</table>
			</c:forEach>
		</div>
	<jsp:include page="foot.jsp"></jsp:include>
	</div>
	
	
</body>

</html>


