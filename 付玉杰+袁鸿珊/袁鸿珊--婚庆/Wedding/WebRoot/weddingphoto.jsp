<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>鹤望兰官网，婚礼定制，婚庆公司，婚礼策划，北京服务最好的公司</title>
		<script src="js/ajax.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery1.42.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
		<!--<script src="js/jquery-1.2.6.min.js"></script>-->
		<script src="js/snowfall.jquery.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/daohangtiao.css" />
		<link rel="stylesheet" type="text/css" href="css/sheying.css"/>
		<script type="text/javascript" src="js/hunshasheying.js" ></script>
		<script>
			window.onload=function(){
				getURL();
			}
		</script>
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
						<h3><a target="_self" href="#">量身定制</a></h3>
						<ul class="sub">
							<li>
								<a href="weddingground.jsp">婚礼场地</a>
							</li>
							<li>
								<a href="yqhunsha.html">婚纱礼服</a>
							</li>
						</ul>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="#">个人中心</a></h3>
						<ul class="sub">
							<li>
								<a href="">我的预约</a>
							</li>
							<li>
								<a href="yqhunsha.html">修改密码</a>
							</li>
							<li>
								<a href="LoginOutServ">退出登录</a>
							</li>
						</ul>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="guangyuwomen.html">关于我们</a></h3>
						<ul class="sub">
							<li>
								<a href="新留言板.html">留言板</a>
							</li>
						</ul>
					</li>
					<li class="block"></li>
					<!-- 滑动块 -->
				</ul>
			</div>
			<div id="banner">
				
			</div>
			<div class="content" style="height:120px">
				<script type="text/javascript" src="js/daohangtiao.js"></script>
				<!--内容开始-->
				<div class="content_hunsha">
					<p>当前位置：鹤兰亭官网 > 首页 > 婚纱摄影</p>
					<p>服务分类：
						<a href="案例.html">婚礼案例</a> |
						<a href="婚礼场地.html">婚礼场地</a> |
						<a href="司仪主页.html">婚礼司仪</a> |
						<a href="婚礼风格.html">婚礼风格</a>
					</p>
					<div id="paixu">
						<ul>
							<li><a href="#" >价格排序</a></li>
							<div class="hide">
								<li><a href="#" id="moren_a">默认</a></li>
								<li><a href="#" id="gao_a">从高到低</a></li>
								<li><a href="#" id="di_a">从低到高</a></li>
							</div>
							
						</ul>
					</div>
					<div id="moren" style="display: block;">
						<div class="sheying">
								<a href="sheying1.html" target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">222</li>
								</ol>
							</div>
							<div class="sheying">
								<a href="#" target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
							<div class="sheying">
								<a href="#"target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
		
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
					
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol></ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
					</div>
					<div id="gao" style="display: none;">
						<div class="sheying">
								<a href="1.html" target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">211</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">222</li>
								</ol>
							</div>
							<div class="sheying">
								<a href="2.html" target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
							<div class="sheying">
								<a href="3.html"target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="4.html"target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
		
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
					
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol></ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
					</div>
					<div id="di" style="display: none;">
						<div class="sheying">
								<a href="1.html" target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">222</li>
								</ol>
							</div>
							<div class="sheying">
								<a href="2.html" target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
							<div class="sheying">
								<a href="3.html"target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="4.html"target="_blank"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
		
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
					
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol></ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
						
							<div class="sheying">
								<a href="#"><div class="hunsha_img"></div></a>
								<ol>
									<li class="sheying_li1">111</li>
									<li class="sheying_li2">222</li>
									<li class="sheying_li3">333</li>
								</ol>
							</div>
					</div>
							
					
					
					
				</div>
				<!--内容结束-->
				<div id="fanhui"><img src="img/yqq/fanhui.PNG"></div>
					<script>
						fanhui.onclick = function(){
						document.body.scrollTop = document.documentElement.scrollTop = 0;
						}
					</script>
		
				
				<!--<div class="content" style="height:120px">-->

		<!-- 内容 -->

	</div>

	</div>
	<div class="bottom" style="top: 1400px;">
					<div class="footer" id="footer">
						<div class="w clx">
							<div class="footer-title clx">
								<ul class="fl">
									<li>
										<a href="首页.html">网站首页</a>
									</li>
								</ul>
								<p class="fr">全国热线：153-3343-6031</p>
							</div>
							<div class="web-nav footer-cell">
								<h3>网址导航</h3>
								<a href="首页.html" class='' title="网站首页">网站首页</a>
								<a href="案例.html" class='' title="婚礼案例">婚礼案例</a>
								<a href="婚礼场地.html" class='' title="量身定制">量身定制</a>
								<a href="司仪主页.html" class='' title="团队介绍">团队司仪</a>
								<a href="婚礼风格.html" class='' title="婚礼课堂">婚礼风格</a>
								<a href="guangyuwomen.html" class='' title="关于我们">关于我们</a>

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
									<a href="javascript:;" class="fl">
										<img src="img/weibu_gywm/liantu.png" width="100px" height="100px"/>
									</a>
									<img src="img/weibu_gywm/liantu (1).png" width="100px" height="100px"/>
									</a>
								</div>
							</div>
						</div>

		</body>
</html>