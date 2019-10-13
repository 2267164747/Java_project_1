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
		<script src="js/jquery1.42.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/daohangtiao1.css" />
		<!--<script src="js/jquery-1.2.6.min.js" type="text/javascript"></script>-->
		<script src="js/snowfall.jquery.js" type="text/javascript"></script>
		
		<script src="js/ajaxfile.js" type="text/javascript"></script>
		<script src="js/ajax.js" type="text/javascript"></script>
		
        
        
   </head>

		<body>
				<div class="navBar">
					
					
					
					<!--登录部分内容开始-->
			<div id="div">
				
				<a href="#" id="close">点击关闭</a>
				
			<div id="login">
				<br />
			<ul >
				<li>用户名：<input type="text" id="name" /></li>
				<li>密&nbsp;&nbsp;&nbsp;码：<input type="password" id="pwd"/></li>
			    
			    <li>
			    	验证码：<input type = "text" id="code"/>  
                           <input type="button" id="checkbtn" value="获取" title="点击更换验证码" style="width:60px;height: 35px;"/>
          
                </li>
                   <input type="button" value="登录" id="logbtn"/>
               </li>
                <br/>
				<li>
					<a href="javascript:;">修改密码</a>
					<a href="javascript:;">注册</a>
				</li>
			</ul>
			</div>	
		</div>
			<!--登录部分内容结束-->
					
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
			<!--婚礼风格开始部分-->
                <div class="style">
	                                您现在所在的位置><a href="#">婚礼风格</a>
	             	<br /><br />
	             	<p>婚礼风格：</p>
					<ul>
						<li >
							<a href="#"id="li1">中式风尚</a>&nbsp;&nbsp;&nbsp;|
						</li>
						<li >
							<a href="#"id="li2">西式唯美</a>
						</li>
					</ul> 	
                </div>
              <!--婚礼风格结束-->
                
              <!--中式婚礼部分开始-->
              <div id="box1" style="display: block;">
	                <div class="div1">
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					
					
					<div class="div2">
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					
					
					<div class="div3">
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					
					<div class="div4">
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn1.html" target="_blank"><div class="mg"></div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
			  </div>
			  
			  
			  
			  
			  
			  <!--西式婚礼部分开始-->
			  
			  <div id="box2">
			  	<div class="div4">
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					
					<div class="div5">
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					
					<div class="div6">
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					
					<div class="div7">
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					<div class="pri">
						<div class="pri_div1"></div>
						<div class="pri_div2"></div>
						<a href="#"><div class="pri_div3">咨询预订</div></a>
					</div>
					
					<div class="div5">
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
		                <a href="turn2.html" target="_blank"><div class="mg"></div></a>
					</div>
					
			  
              <!--西式婚礼部分结束-->
			  




		
				
   <script type="text/javascript" src="js/daohangtiao.js"></script>
		<div class="content" style="height:120px">

		<!-- 内容 -->

	     </div>

	</div>
	<div class="bottom" style="top: 1800px;">
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

			
			<script src="js/wedding.js" type="text/javascript"></script>
			
			
		</body>
</html>