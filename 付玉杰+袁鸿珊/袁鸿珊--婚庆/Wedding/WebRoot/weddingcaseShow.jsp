<%@ page language="java" import="java.util.*"
	import="com.etc.wedding.dto.WeddingCase"
	import="com.etc.wedding.dto.Picture" import="java.util.List"
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

<!--头部结束-->
<script type="text/javascript">
	window.onload = function() {
		ax();
		daohang();
		//***********************背景设置***************
		$(document).snowfall('clear');
		$(document).snowfall({
			image : "img/caseImg/huaban.png",
			flakeCount : 100,
			minSize : 5,
			maxSize : 22
		});

	}
</script>
</head>
<body>
	<!--头部-->
 	<div class="navBar">
		<div class="imgtop">
			<a href="#"><img src="img/1.png" width="55%" /></a>
		</div>

		<ul class="nav clearfix">
			<li class="m">
				<h3>
					<a target="_self" href="index.jsp">网站首页</a>
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
				当前频道添加on
				<h3>
					<a target="_self" href="weddingstyle.jsp">婚礼风格</a>
				</h3>
			</li>
			<li class="s">|</li>
			<li class="m">
				<h3>
					<a target="_self" href="siyi.jsp">团队司仪</a>
				</h3>
			</li>
			<li class="s">|</li>
			<li class="m">
				<h3>
					<a target="_self" href="#">量身定制</a>
				</h3>
				<ul class="sub">
					<li><a href="weddingground.jsp">婚礼场地</a></li>
					<li><a href="yqhunsha.jsp">婚纱礼服</a></li>
				</ul>
			</li>
			<li class="s">|</li>
			<li class="m">
				<h3>
					<a target="_self" href="#">个人中心</a>
				</h3>
				<ul class="sub">
					<li><a href="">我的预约</a></li>
					<li><a href="yqhunsha.html">修改密码</a></li>
					<li><a href="LoginOutServ">退出登录</a></li>
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
			<li class="block"></li>
			滑动块
		</ul>
	</div>
	<!--头部结束-->
	<div id="caseBox">
		<div class="case_head">
			<div id="case_head_logo"></div>
			<div id="case_head_position">
				<span>您当前所在的位置： <a href="首页.html">首页</a> &gt; <a
					href="案例.html">婚礼案例</a> &gt;
				</span>
			</div>
		</div>
		<div id="content">
			<div class="content_itle"></div>
			<div class="content_option">
				<div class="content_option_style">
					<span>婚礼风格：</span> <a href="#" value="all">全部</a> <a href="#"
						value="west">西式婚礼</a> <a href="#" value="">中式婚礼</a> <a href="#"
						value="">户外婚礼</a> <a href="#" value="">教堂婚礼</a> <a href="#"
						value="">主题婚礼</a> <a href="#" value="">创意婚礼</a> <a href="#"
						value="">明星婚礼</a> <a href="#" value="">其他</a>
				</div>
				<div class="content_option_color">
					<span>婚礼主色：</span> <a href="#" value="all">全部</a> <a href="#"
						value="pink">粉色婚礼</a> <a href="#" value="red">红色婚礼</a> <a href="#"
						value="purple">紫色婚礼</a> <a href="#" value="blue">蓝色婚礼</a> <a
						href="#" value="green">绿色婚礼</a> <a href="#" value="other">其他</a>
				</div>
			</div>
			<%
				List<WeddingCase> lstWC = (List<WeddingCase>) request
						.getAttribute("lstWC");
				List<Picture> lstPic = (List<Picture>) request
						.getAttribute("lstPic");
				System.out.print("跳转body成功");
				Picture pc=lstPic.get(0);
				int pcid1=pc.getPid();
				pc=lstPic.get(1);
				int pcid2=pc.getPid();
				pc=lstPic.get(2);
				int pcid3=pc.getPid();
				pc=lstPic.get(3);
				int pcid4=pc.getPid();
				pc=lstPic.get(4);
				int pcid5=pc.getPid();
				pc=lstPic.get(5);
				int pcid6=pc.getPid();
				pc=lstPic.get(6);
				int pcid7=pc.getPid();
				pc=lstPic.get(7);
				int pcid8=pc.getPid();
				pc=lstPic.get(8);
				int pcid9=pc.getPid();
				WeddingCase wc = lstWC.get(0);
				String wcname1 = wc.getWcmain(); int wcid1=wc.getWcid();
				wc = lstWC.get(1);
				String wcname2 = wc.getWcmain();int wcid2=wc.getWcid();
				wc = lstWC.get(2);
				String wcname3 = wc.getWcmain();int wcid3=wc.getWcid();
				wc = lstWC.get(3);
				String wcname4 = wc.getWcmain();int wcid4=wc.getWcid();
				wc = lstWC.get(4);
				String wcname5 = wc.getWcmain();int wcid5=wc.getWcid();
				wc = lstWC.get(5);
				String wcname6 = wc.getWcmain();int wcid6=wc.getWcid();
				wc = lstWC.get(6);
				String wcname7 = wc.getWcmain();int wcid7=wc.getWcid();
				wc = lstWC.get(7);
				String wcname8 = wc.getWcmain();int wcid8=wc.getWcid();
				wc = lstWC.get(8);
				String wcname9 = wc.getWcmain();int wcid9=wc.getWcid();
			%>
			<div class="content_case">
				<!-- id="case" -->
				<table width="1000px" height="1260px" style=" margin-left:30px;margin-top:30px">
					<tr class="tr_px">
						<td>
							<table class="td_px">
								<tr><td colspan="2">
									<img src="ImageServ?pcid=<%=pcid1%>" class="td_any" ></td>
								</tr>
								<tr >
									<td><%=wcname1 %></td>
									<td ><a href="ScasePageServ?wcid=<%=wcid1 %>">点击查看</a></td>
								</tr>
							</table>
						</td>
						<td ><table class="td_px">
								<tr ><td colspan="2">
									<img src="ImageServ?pcid=<%=pcid2%>" class="td_any"></td>
								</tr>
								<tr >
									<td><%=wcname2 %></td>
									<td><a href="ScasePageServ?wcid=<%=wcid2 %>">点击查看</a></td>
								</tr>
							</table></td>
						<td><table class="td_px">
								<tr ><td colspan="2">
									<img src="ImageServ?pcid=<%=pcid3%>" class="td_any"></td>
								</tr>
								<tr >
									<td><%=wcname3 %></td>
									<td><a href="ScasePageServ?wcid=<%=wcid3 %>">点击查看</a></td>
								</tr>
							</table></td>
					</tr>
					<tr class="tr_px">
						<td ><table class="td_px">
								<tr>
									<td colspan="2"><img src="ImageServ?pcid=<%=pcid4%>" class="td_any"></td>
								</tr>
								<tr>
									<td><%=wcname4 %></td>
									<td><a href="ScasePageServ?wcid=<%=wcid4 %>">点击查看</a></td>
								</tr>
							</table></td>
						<td ><table class="td_px">
								<tr>
									<td colspan="2"><img src="ImageServ?pcid=<%=pcid5%>" class="td_any"></td>
								</tr>
								<tr>
									<td><%=wcname5 %></td>
									<td><a href="ScasePageServ?wcid=<%=wcid5 %>" >点击查看</a></td>
								</tr>
							</table></td>
						<td><table class="td_px">
								<tr>
									<td colspan="2"><img src="ImageServ?pcid=<%=pcid6%>" class="td_any"></td>
								</tr>
								<tr>
									<td><%=wcname6 %></td>
									<td><a href="ScasePageServ?wcid=<%=wcid6 %>" >点击查看</a></td>
								</tr>
							</table></td>
					</tr>
					<tr class="tr_px">
						<td><table class="td_px">
								<tr>
									<td colspan="2"><img src="ImageServ?pcid=<%=pcid7%>" class="td_any"></td>
								</tr>
								<tr>
									<td><%=wcname7 %></td>
									<td><a href="ScasePageServ?wcid=<%=wcid7 %>">点击查看</a></td>
								</tr>
							</table></td>
						<td><table class="td_px">
								<tr >
									<td colspan="2"><img src="ImageServ?pcid=<%=pcid8%>" class="td_any"></td>
								</tr>
								<tr>
									<td><%=wcname8 %></td>
									<td><a href="ScasePageServ?wcid=<%=wcid8 %>" >点击查看</a></td>
								</tr>
							</table></td>
						<td><table class="td_px">
								<tr >
									<td colspan="2"><img src="ImageServ?pcid=<%=pcid9%>" class="td_any"></td>
								</tr>
								<tr>
									<td><strong><%=wcname9 %></strong></td>
									<td><a href="ScasePageServ?wcid=<%=wcid9 %>">点击查看</a></td>
								</tr>
							</table></td>
					</tr>
				</table>



				<!-- 从这里结束 -->
			</div>
		</div>


		<div class="kefu">
			<a href="#"><div id="top"></div></a>
			<div id="tel"></div>
			<div id="telbig">
				<input type="text" placeholder="输入电话号码" maxlength="11" id="telText" />
				<input type="button" value="立即拨通" id="telSub" />
			</div>
			<div id="ma"></div>
			<div id="mabig"></div>
		</div>
	</div>
	<script src="js/daohangtiao.js" type="text/javascript" charset="utf-8"></script>
	<!--尾部-->
				<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>