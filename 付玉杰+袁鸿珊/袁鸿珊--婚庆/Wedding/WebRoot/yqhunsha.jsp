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
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE html>
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
	<%
		SSFileBiz biz = new SSFileBiz();
		List<WeddingDress> listInf = biz.getWedDressInf();
		if (listInf != null) {
			request.setAttribute("listInf", listInf);
			List<Picture> listPic = biz.getDressPic(listInf);
			if(listPic==null){
				System.out.print("查询失败");
			}
			request.setAttribute("listPic", listPic);
		} else {
			System.out.print("查询失败");
		}
		request.getRequestDispatcher("ydhunshaShow.jsp").forward(request, response);
	%>
</body>
</html>