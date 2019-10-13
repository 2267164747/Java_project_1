<%@ page language="java" import="java.util.*" 
import="com.etc.wedding.dto.WeddingCase"
import="com.etc.wedding.dto.Picture"
import="java.util.List"
import="java.io.IOException"
import="java.io.PrintWriter"
import="java.sql.SQLException"
import="java.util.ArrayList,javax.servlet.ServletException,javax.servlet.http.HttpServlet"
import="javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"
import="com.etc.wedding.biz.SFileBiz"
pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>鹤望兰官网，婚礼定制，婚庆公司，婚礼策划，北京服务最好的公司</title>
<link rel="stylesheet" href="css/case.css" />
<script type="text/javascript" class="autoinsert"
	src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/contentCase.js"></script>
<script src="js/snowfall.jquery.js"></script>
<!--头部-->
<!--<script src="js/jquery1.42.min.js" type="text/javascript" charset="utf-8"></script>-->
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/B_daohangtiao.css" />
<link rel="stylesheet" type="text/css" href="css/daohangtiao3.css" />

</head>
<body >	
		<%  
		SFileBiz biz=new SFileBiz();
		List<WeddingCase> lstWC=new ArrayList<WeddingCase>();
		try {
			lstWC = biz.getWedCaseList();
			request.setAttribute("lstWC", lstWC);
		} catch (SQLException e) {
			System.out.println("查找weddingCase失败");
			e.printStackTrace();
		}
		try {
			List<Picture> lstPic=biz.getWedCasePic(lstWC);
			request.setAttribute("lstPic", lstPic);
		} catch (SQLException e) {
			System.out.println("查找Picture失败");
			e.printStackTrace();
		}
		request.getRequestDispatcher("weddingcaseShow.jsp").forward(request, response);
		%>
		
</body>
</html>
