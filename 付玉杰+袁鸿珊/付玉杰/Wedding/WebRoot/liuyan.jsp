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
		<script type="text/javascript" src="js/liuyan.js"></script>
		<!--
        	作者：2424844437@qq.com
        	时间：2017-08-30
        	描述：<script src="js/snowfall.jquery.js" type="text/javascript"></script>
        -->
		<script src="js/liuyanlunbo.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/word.js"></script>
		<script type="text/javascript" src="js/snowfall.jquery.js">
			
		</script>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/daohangtiao.css" />
		<link rel="stylesheet" type="text/css" href="css/liuyan.css" />
		<style type="text/css">
			.biaoshi{
				width: auto;
				height: 20px;
				margin-top:20px;
				margin-left: 150px;
				font: 500 12px 微软雅黑;
			}
			.can{
				margin-top: 30px;
				width: 100%;
				height: 50px;
				background-color: #f83244;
			}
			#c{
				width: 800px;
				margin-left: 100px;
			}
			.can #c ul li{
				list-style: none;
				float: left;
				text-align: center;
				padding-left:30px ;
			}
			.can #c ul li a{
				display: inline-block;
				width: 80px;
				height: 50px;
				line-height: 50px;
				color: white;
			}
			.can #c ul li a:hover{
				color: black;
				background-color: white;
				opacity: 0.5;
			}
			#liuyanlunbo{
				height: 500px;
				width: 100%;
			}
			#liuyanlunbo #lunbobo{
				margin: 0 auto;
				width: 800px;
				height: 400px;
				position: relative;
				overflow: hidden;
				float: left;
				margin-top:50px ;
				margin-left: 10px;
				border-radius: 10px;
			}
			#lunbobo ul{
				width:3200px;
				height: 400px;
				position: absolute;
			}
			#lunbobo ul li{
				list-style: none;
				float: left;
			}
			#liuyanlunbo img{
				width:800px;
				height: 400px;
				background-size:100% 100% ;	
			}
			#lunbobufen{
				border: 3px solid orangered;
				border-radius: 10px;
				width:1200px ;
				height: 500px;
				margin: 0 auto;
				
				background-size: 120% 120%;
			}
			#jieshao{
				width: 350px;
				height: 400px;
				float: right;
				margin-top:50px;
				margin-right: 15px;
				border-radius: 10px;
				font: 500 15px 微软雅黑;
			}
			#word{
				margin-top:30px;
				margin-left: 10px;
			}
			#word #p1{
				display: none;
			}
		</style>
		<script>
			window.onload = function() {
				var obox=document.getElementById("box");
				document.onscroll=function(){
				var oa=document.body.scrollTop;
					if(oa>=400)
					{
						$("#box").slideDown(3000,function(){
						obox.style.display="block";	
						})
					}
			}
				tianjia();
				lunb();
				word();
				$(document).snowfall('clear');
				$(document).snowfall({
					image: "img/huaban.png",
					flakeCount: 100,
					minSize: 5,
					maxSize: 22
				});
			}
		</script>
	</head>
	<body style="background:url(img/1.jpg) no-repeat;background-attachment: fixed;">
		<div id="big">
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
						<h3><a target="_self" href="#">个人中心</a></h3>
						<ul class="sub">
							<li>
								<a href="userbooking.jsp">我的预约</a>
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
			<div class="content">
			
				<script type="text/javascript" src="js/daohangtiao.js"></script>
			</div>
			<div class="can">
				<div id="c">
					<ul>
					<li><a href="#">首页</a></li>
					<li><a href="#">结婚商城</a></li>
					<li><a href="#">婚品采购</a></li>
					<li><a href="#">新娘说</a></li>
					<li><a href="#">婚礼百科</a></li>
					<li><a href="#">婚礼美图</a></li>
					<li><a href="#">婚礼问答</a></li>
				</ul>
				</div>
			</div>
            <div class="biaoshi"><a href="#">关于我们</a> > <a href="#">留言墙</a></div>
            <div id="liuyanlunbo">
            	<div id="lunbobufen">
	            	<div id="lunbobo">
	            	<ul id="lunbou1">
	            		<li><img src="img/liuyanlunbo/liuyan1.jpg"/></li>
	            		<li><img src="img/liuyanlunbo/liuyan2.jpg"/></li>
	            		<li><img src="img/liuyanlunbo/liuyan3.jpg"/></li>
	            		<li><img src="img/liuyanlunbo/liuyan1.jpg"/></li>
	            	</ul>
	            	</div>
	            	<div id="jieshao">
	            		<div id="word">
	            		<div><p id="b" style="width: 350px;height: 400px;"></p></div>
	            		<p class="p1" id="p1">留言墙:<br>有多少话，想说又说不出口？有多少情，深藏心底来不及表达？现在，给你们一个机会，大声说出爱！在这里，写下对TA最想说的一句话。<br>
	            		例如：<br>我一直在追随你的脚步，回头，我一直在你的反方向，从不相遇。<br>老酒新菜要与你共饮，大城小事要说给你听，一生有你是我所幸。<br>我也害怕颠沛流离后再也找不到自己想要的那个人，我好好过，你慢慢来 ……</p>
	            		</div>
	            	</div>
            	</div>
            </div>
			<div id="renou"><img src="img/renou1.png" /></div>
			<!--<div id="big-kuang">
				<div id="guanzhu">关注</div>
		</div>-->
			<div id="pingping">
				<div id="pingping1">
					<div id="pingping-left">
						<ul>
							<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
							<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
							<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
							<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
							<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
							<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
						</ul>
					</div>
				<!--
                	作者：2424844437@qq.com
                	时间：2017-09-01
                	描述：
               	<div id="pingping-right">
					<ul>
						<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
						<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
						<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
						<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
						<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
						<li><a>红色敬酒服可以搭配银色鞋子吗？</a></li>
					</ul>
				</div> -->
				</div>	
			</div>
			<div id="box">
				<div id="xjt-left">
					<div id="tan">
						<div id="te"><textarea id="t"></textarea></div>
						<div id="yue"><img src="img/yue.png" /></div>
						<div id="pinglun"><input type="button" value="发表" id="btn" /></div>
						<div id="reset"><input type="button" id="btn1" value="取消发表" /></div>
					</div>
					<div class="liuyan1" id="ly1">
						<img src="img/qq.jpg" class="img" />
						<textarea class="textarea" readonly="readonly">是粉色人</textarea>
					</div>
					<div class="liuyan2" id="ly1">
						<img src="img/li/tou1.jpg" class="img" />
						<textarea class="textarea">而为鹅鹅鹅问问</textarea>
					</div>
					<div class="liuyan1" id="ly1">
						<img src="img/li/tou2.jpg" class="img" />
						<textarea class="textarea" readonly="readonly">二五二维吾尔</textarea>
					</div>
					<div class="liuyan2" id="ly1">
						<img src="img/li/tou3.jpg" class="img" />
						<textarea class="textarea">无二文物</textarea>
					</div>
					<div class="liuyan1" id="ly1">
						<img src="img/li/tou4.jpg" class="img" />
						<textarea class="textarea" readonly="readonly">无二文物</textarea>
					</div>
					<div class="liuyan2" id="ly1">
						<img src="img/li/tou5.jpg" class="img" />
						<textarea class="textarea">无二文物</textarea>
					</div>
					<div class="liuyan1" id="ly1">
						<img src="img/li/tou1.jpg" class="img" />
						<textarea class="textarea" readonly="readonly">而台湾特容易惹</textarea>
					</div>
					<div class="liuyan2" id="ly1">
						<img src="img/li/tou3.jpg" class="img" />
						<textarea class="textarea">特感人特让他</textarea>
					</div>
					<div class="liuyan1" id="ly1">
						<img src="img/li/tou2.jpg" class="img" />
						<textarea class="textarea" readonly="readonly">特瑞贵人</textarea>
					</div>
					<div class="liuyan2" id="ly1">
						<img src="img/li/tou5.jpg" class="img" />
						<textarea class="textarea">尔特热锅</textarea>
	
					</div>
					<div class="liuyan1" id="ly1">
						<img src="img/li/tou4.jpg" class="img" />
						<textarea class="textarea" readonly="readonly">尔特人也该</textarea>
					</div>

				</div>
				<div id="xjt-right"></div>
			</div>
			
		</div>
		
	</body>

</html>