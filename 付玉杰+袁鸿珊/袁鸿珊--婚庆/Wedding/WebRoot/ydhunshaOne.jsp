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
<script src="js/jquery1.42.min.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript" src="js/1.js" charset="UTF-8"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/x1.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/daohangtiao.css" />
<link rel="stylesheet" type="text/css" href="css/1.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>themes/icon.css">
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
<body style="height: 2000px;">
	
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
					<a target="_self" href="案例.html">婚礼案例</a>
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
			<p class="content_hunsha_p">当前位置 > 首页 > 婚纱礼服 > 婚纱详情</p>
			<p class="content_hunsha_p">
				服务分类： <a href="案例.html" class="content_hunsha_p_a">婚礼案例</a> | <a
					href="#" class="content_hunsha_p_a">婚礼场地</a> | <a href="司仪主页.html"
					class="content_hunsha_p_a">婚礼司仪</a> | <a href="婚礼风格.html"
					class="content_hunsha_p_a">婚礼风格</a>
			</p>
<%
		WeddingDress wd=(WeddingDress)request.getAttribute("wd");
		int wdid=wd.getWdid();
		String wdname=wd.getWdname();
		String wdseries =wd.getWdseries();
		int	wdprice=wd.getWdprice();
		String wdcolor=wd.getWdcolor();
		String wdintroduction=wd.getWdintroduction();
		String wdclothes=wd.getWdclothes();
		String wdaccessories=wd.getWdaccessories();
		String wdexplain=wd.getWdexplain();
			List<Picture> listPic=(List<Picture>)request.getAttribute("listPic");
			Picture pc=listPic.get(0);
			int picid0=pc.getPid();
			pc=listPic.get(1);
			int picid1=pc.getPid();
			pc=listPic.get(2);
			int picid2=pc.getPid();
			pc=listPic.get(3);
			int picid3=pc.getPid();
	%>
			<!--上半部分-->
			<form action="SydhunshaServ?wdid=<%=wdid %>" method="post" enctype="multipart/form-data">
			<div class="content_div1">
				<div class="content_div1_left">
					<div class="mybig">
						<div class="mybig_img" style="display: block;">
						<img src="ImageServ?pcid=<%=picid0%>" class="mybig_img_my">
						</div>
						<div class="mybig_img">
						<img src="ImageServ?pcid=<%=picid1%>" class="mybig_img_my">
						</div>
						<div class="mybig_img">
						<img src="ImageServ?pcid=<%=picid2%>" class="mybig_img_my">
						</div>
						<div class="mybig_img">
						<img src="ImageServ?pcid=<%=picid3%>" class="mybig_img_my"></div>
					</div>
					<div class="mysmall">
						<div class="mysmall_img">
						<img src="ImageServ?pcid=<%=picid0%>" class="mysmall_img_my"></div>
						<div class="mysmall_img">
						<img src="ImageServ?pcid=<%=picid1%>" class="mysmall_img_my"></div>
						<div class="mysmall_img">
						<img src="ImageServ?pcid=<%=picid2%>" class="mysmall_img_my"></div>
						<div class="mysmall_img">
						<img src="ImageServ?pcid=<%=picid3%>" class="mysmall_img_my"></div>
					</div>
				</div>
				<div class="content_div1_right">
					<h3>【<%=wdname %>】      <%=wdseries %></h3>
					<p><%=wdintroduction %></p>
					<p>颜色：<%=wdcolor %></p>
					<p>尺码：S M L XL XXL XXXL</p>
					<p style="color: red;font-size: 25px;">￥<%=wdprice %></p>
					<p><input class="easyui-datetimebox" type="text" name="putdate" width="100px"></p>
					<input type="submit" class="yuyue" value="预约到店">
					<div class="content_div1_right_pic">
						<img src="img/yqq/边框1.png" />
					</div>
				</div>
			</div>
			</form>
			<!--下半部分-->
			<div class="content_div2">
				<p class="content_div2_p">
					<a href="javascript:;"><span id="content_div2_span1">参数设置</span></a>
					| <a href="javascript:;"><span id="content_div2_span2">图片详情</span></a>
				</p>
				<div class="content_div2_xq">
					<p>参数设置</p>
					<p>服装详情</p>
					<hr />
					<div class="diva">
						<ul class="ul1">
							<li>服装</li>
							<li>配件</li>
							<li>服装说明</li>
						</ul>
					</div>
					<div class="divb">
						<ul class="ul2">
							<li><%=wdclothes %></li>
							<li><%=wdaccessories %></li>
							<li><%=wdexplain %></li>
						</ul>
					</div>

					<p>服务形式</p>
					<hr />
					<div class="diva">
						<ul class="ul1">
							<li>售卖方式</li>
							<li>定制服务</li>
						</ul>
					</div>
					<div class="divb">
						<ul class="ul2">
							<li>租赁 购买</li>
							<li>支持</li>
						</ul>
					</div>
					<p>补充说明</p>
					<hr />
					<div class="diva">
						<ul class="ul1">
							<li>购买须知</li>
						</ul>
					</div>
					<div class="divb">
						<ul class="ul2">
							<li>请提前联系客服预定档期，口头预定无效</li>
						</ul>
					</div>

					<p>图片详情</p>
					<hr />
					<div class="div_img">
						<img src="ImageServ?pcid=<%=picid0%>" />
					</div>
					<div class="div_img">
						<img src="ImageServ?pcid=<%=picid1%>" />
					</div>
				</div>
				<div class="content_div2_you1">
					<div class="dianpu">
						<img src="img/yqq/dianpu1.jpg">
					</div>
					<p class="p1">SeSe婚礼王国</p>
					<p class="p2">私信商家</p>
					<a href="http://www.sesewedding.com"><p class="p3">关注</p></a> <a
						href="http://www.sesewedding.com"><p class="p4">进入店铺</p></a>
				</div>
				<div class="content_div2_you2">
					<p>推荐套餐</p>
					<ul>
						<li><a href="#"><div class="you2_div1">
									<img src="img/yqq/1.jpg">
								</div></a>
							<div class="you2_div2">
								蒙娜丽莎礼服馆 <br />复古宫廷系列<br> <br>￥10080
							</div></li>
						<li><a href="#"><div class="you2_div1">
									<img src="img/yqq/2.jpg">
								</div></a>
							<div class="you2_div2">
								皇室婚纱 <br />PRONOVIAS<br> <br>￥13800
							</div></li>
						<li><a href="#"><div class="you2_div1">
									<img src="img/yqq/3.jpg">
								</div></a>
							<div class="you2_div2">
								PRONOVIAS 系列C<br> <br> <br>￥20080
							</div></li>
						<li><a href="#"><div class="you2_div1">
									<img src="img/yqq/4.jpg">
								</div>
								<div class="you2_div2">
									蒙娜丽莎礼服馆 <br />仙女系列<br> <br>￥30080
								</div></li>
					</ul>

				</div>
				<div class="content_div2_you3">
					<p>最新套餐</p>
					<ul>
						<li><a href="#">1.pronovias系列A</a></li>
						<li><a href="#">2.pronovias系列B</a></li>
						<li><a href="#">3.pronovias系列C</a></li>
						<li><a href="#">4.蒙娜丽莎礼服馆Sophia tolie系列</a></li>
						<li><a href="#">5.蒙娜丽莎礼服馆tarik ediz系列</a></li>
						<li><a href="#">6.清新自然的果园森系婚礼</a></li>
						<li><a href="#">7.THE ONE甜品-粉色清新主题</a></li>
						<li><a href="#">8.伊泽定制 定制款单件西服</a></li>
						<li><a href="#">9.蓝山梦幻套系</a></li>
						<li><a href="#">10.Miss KK 唯美礼服</a></li>
						<li><a href="#">11.纯手工蕾丝抹胸蓬蓬A字拖尾</a></li>
						<li><a href="#">12.双首席双机位婚礼纪实摄影</a></li>
					</ul>

				</div>
			</div>


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
	<div class="bottom" style="top: 2200px;">
		<div class="footer" id="footer">
			<div class="w clx">
				<div class="footer-title clx">
					<ul class="fl">
						<li><a href="首页.html">网站首页</a></li>
					</ul>
					<p class="fr">全国热线：153-3343-6031</p>
				</div>
				<div class="web-nav footer-cell">
					<h3>网址导航</h3>
					<a href="首页.html" class='' title="网站首页">网站首页</a> <a href="案例.html"
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
							height="100px" /> </a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>