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
		<script type="text/javascript" src="js/ajax.js"></script>
		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="js/middle.js"></script>
		<script src="js/snowfall.jquery.js"></script>
		<script src="js/fanhui.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/fangda.js" type="text/javascript"></script>
		<script src="js/s_hunsha.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery.luara.0.0.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/middle_right.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/B_daohangtiao.css" />
		<link rel="stylesheet" type="text/css" href="css/lunbo.css" />
		<link rel="stylesheet" type="text/css" href="css/middle.css" />
		<link rel="stylesheet" type="text/css" href="css/middle_right.css" />
		<link rel="stylesheet" type="text/css" href="css/dingbu.css" />
		<link rel="stylesheet" type="text/css" href="css/changdi.css" />
		<link rel="stylesheet" type="text/css" href="css/s_hunsha.css" />
		<link rel="stylesheet" type="text/css" href="css/s_siyi.css" />
		<link rel="stylesheet" type="text/css" href="css/luara.left.css" />
		<link rel="stylesheet" type="text/css" href="css/s_about.css" />
		<link rel="stylesheet" type="text/css" href="css/middle_right_n.css" />
		<link rel="stylesheet" type="text/css" href="css/s_denglu.css"/>
		<script type="text/javascript">
			window.onload = function() {
				getURL();
				middle_right();
				$(document).snowfall('clear');
				$(document).snowfall({
					image: "img/huaban.png",
					flakeCount: 100,
					minSize: 8,
					maxSize: 22
				});
				var result = <%=request.getAttribute("result")%>;
				result = result.trim();
				if(result!=""){
					alert('预约失败！');
				}
			};
		</script>

		<!--<script type="text/javascript">
			window.onload = function() {
				var contact = document.getElementById("list_photo");
				contact.onmouseover = function() {}
			}
		</script>-->

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
								<a href="UserBookingServ">我的预约</a>
							</li>
							<li>
								<a href="AdminLoginOutServ?type=before">退出登录</a>
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
				<div class="img">
					<img style="display: block;" src="img/lunbo1.jpg" width="1550px" height="500px" alt="鹤望兰" />
					<img src="img/lunbo2.jpg" width="1550px" height="500px" alt="鹤望兰" />
					<img src="img/lunbo3.jpg" width="1550px" height="500px" alt="鹤望兰" />
					<img src="img/lunbo5.jpg" width="1550px" height="500px" alt="鹤望兰" />
					<img src="img/lunbo6.jpg" width="1550px" height="500px" alt="鹤望兰" />
				</div>
				<div class="item">
					<!--	<div class="text"></div>-->
					<div class="btn">
						<ul>
							<li class="curr">1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li style="margin-right: 0;">5</li>
						</ul>
					</div>
				</div>
			</div>
			<div id="middle">
				<div class="introduce">
					<!--文字介绍-->
					<img src="img/homgtiao.PNG" />
					<span>婚礼案例</span>
					<a href="案例.html"><span class="middle_sp">更多></span></a>
				</div>
				<div class="middle_photo">
					<ul class="middle_ul1">
						<a href="casePagefirst.html">
							<li class="shouye_middle">
							</li>
							<div class="xiabiank1">
								<span class="shouye_middle_wz"></span>
							</div>
						</a>
							<a href="casePagesecond.html"/>
								<li class="shouye_middle">
								</li>
								<div class="xiabiank2">
									<span class="shouye_middle_wz"></span>
								</div>
							</a>
							<a href="casePagethird.html">
								<li class="shouye_middle">
								</li>
								<div class="xiabiank3">
									<span class="shouye_middle_wz"></span>
								</div>
							</a>
							<a href="casePagethird.html">
								<li class="shouye_middle">
								</li>
								<div class="xiabiank4">
									<span class="shouye_middle_wz"></span>
								</div>
							</a>
					</ul>
					<ul class="middle_ul2">
						<a href="casePagethird.html">
							<li class="shouye_middle">
							</li>
							<div class="xiabiank5">
								<span class="shouye_middle_wz"></span>
							</div>
						<a href="casePagethird.html">
							<li class="shouye_middle">
							</li>
							<div class="xiabiank6">
								<span class="shouye_middle_wz"></span>
							</div>
						<a href="casePagethird.html">
							<li class="shouye_middle">
							</li>
							<div class="xiabiank7">
								<span class="shouye_middle_wz"></span>
							</div>
						<a href="casePagethird.html">
							<li class="shouye_middle">
							</li>
							<div class="xiabiank8">
								<span class="shouye_middle_wz"></span>
							</div>

					</ul>
				</div>
			</div>
			</div>

			<!--
        	作者：offline
        	时间：2017-08-31
        	描述：场地
        -->
			<div id="changdi">
				<div class="introduce_cd">
					<!--文字介绍-->
					<img src="img/homgtiao.PNG" />
					<span>量身定制</span>
					<a href="婚礼场地.html"><span class="changdi_sp">更多></span></a>
				</div>
				<a href="北湖九号.html">
				<div class="changcheng">
					<img class="cc_photo" src="img/changdi/changdi3.jpg" width="660px" height="450px" alt="长城公社" />
					<div class="changcheng_black"></div>
					<p class="changcheng_p1">长城脚下的公社</p>
					<p class="changcheng_p2">北京&nbsp;怀柔&nbsp;|&nbsp;4288/桌起</p>
				</div>
				</a>
				<a href="朝林松源酒店.html">
				<div class="king">
					<img class="king_photo" src="img/changdi/changdi1.jpg" width="320px" height="217px" alt="皇冠假日酒店" />
					<div class="king_black"></div>
					<p class="king_p1">北京朝阳悠唐皇冠假日酒店</p>
					<p class="king_p2">北京&nbsp;朝阳&nbsp;|&nbsp;6888/桌起</p>
				</div>
				</a>
				<a href="北京东升文化酒店.html">
				<div class="wanli">
					<img class="wanli_photo" src="img/changdi/changdi2.jpg" width="320px" height="217px" alt="皇冠假日酒店" />
					<div class="wanli_black"></div>
					<p class="wanli_p1">北京金茂万丽酒店</p>
					<p class="wanli_p2">北京&nbsp;东城&nbsp;|&nbsp;9888/桌起</p>
				</div>
				</a>
			</div>

			<!--婚纱-->
			<div id="s_hunsha">
				<div class="introduce_hs">
					<!--文字介绍-->
					<img src="img/homgtiao.PNG" />
					<span>中西婚纱</span>
					<a href="yqhunsha.html"><span class="s_hunsha_sp">更多></span></a>
				</div>
				<div class="s_hunsha_ph">
					<ul class="clearfix">
						<li>
							<a href="1.html">
							<div class="photo"><img src="img/s_hunsha/s_hunsha1.jpg" width="300" height="430" /></div>
							<div class="rsp"></div>
							<div class="text">
									<h3>三亚婚纱照</h3>
									<div>POST TIME :2017.8.27</div>
							</div>
							</a>
						</li>
						<li>
							<a href="3.html">
							<div class="photo"><img src="img/s_hunsha/s_hunsha2.jpg" width="300" height="430" /></div>
							<div class="rsp"></div>
							<div class="text">
									<h3>樱花树婚纱照</h3>
									<div>POST TIME :2017.8.27</div>
							</div>
							</a>
						</li>
						<li>
							<a href="2.html">
							<div class="photo"><img src="img/s_hunsha/s_hunsha3.jpg" width="300" height="430" /></div>
							<div class="rsp"></div>
							<div class="text">
									<h3>爱丽丝庄园婚纱照</h3>
									<div>POST TIME :2017.8.27</div>
							</div>
							</a>
						</li>
						<li>
							<a href="4.html">
							<div class="photo"><img src="img/s_hunsha/s_hunsha5.jpg" width="300" height="430" /></div>
							<div class="rsp"></div>
							<div class="text">
									<h3>北戴河婚纱照</h3>
									<div>POST TIME :2017.8.27</div>
							</div>
							</a>
						</li>
					</ul>
					<div class="clear"></div>
				</div>
				<!--司仪团队-->
				<div id="s_siyi">
					<div class="introduce_sy">
						<!--文字介绍-->
						<img src="img/homgtiao.PNG" />
						<span>团队司仪</span>
						<a href="司仪主页.html"><span class="s_siyi_sp">更多></span></a>
					</div>
					<div class="s_siyi_lb" style="text-align: center;">
						<ul>
							<li><img src="img/s_siyi/s_siyi1.PNG" width="1220px" height="594px" alt="花艺设计团队" /></li>
							<li><img src="img/s_siyi/s_siyi2.PNG" width="1220px" height="594px" alt="婚礼主持团队" /></li>
							<li><img src="img/s_siyi/s_siyi3.PNG" width="1220px" height="594px" alt="金牌宴设团队" /></li>
						</ul>
						<ol>
							<li></li>
							<li></li>
							<li></li>
						</ol>
					</div>
				</div>

				<!--Luara图片切换骨架end-->
				<script>
					$(function() {
						<!--调用Luara示例-->
						$(".s_siyi_lb").luara({
							width: "1220",
							height: "594",
							interval: 4500,
							selected: "seleted",
							deriction: "left"
						});

					});
				</script>

				<!--小编精选-->
				<div id="about">
					<div class="introduce_ab">
						<!--文字介绍-->
						<img src="img/homgtiao.PNG" />
						<span>小编精选</span>
						<a href="jinxuan.html"><span class="about_sp">更多></span></a>
						<p class="ab_xian">——————————————————————</p>
						<div class="ab_neirou">
							<ul>
								<a href="#">
									<li>微胖手臂粗穿什么敬酒服显瘦？6大缺陷身材...</li>
								</a>
								<a href="#">
									<li>苏州买纱水很深？总攻略看完再下手</li>
								</a>
								<a href="#">
									<li>【9月好物】晒好物奖落地灯</li>
								</a>
								<a href="#">
									<li>10月新娘|倒计时1个月这5件事儿你做了没？</li>
								</a>
								<a href="#">
									<li>寻找最美婚纱</li>
								</a>
							</ul>
						</div>

					</div>
				</div>

				<!--婚礼百科-->
				<div id="about1">
					<div class="introduce_ab1">
						<!--文字介绍-->
						<img src="img/homgtiao.PNG" />
						<span>婚礼百科</span>
						<a href="baike.html"><span class="about_sp1">更多></span></a>
						<p class="ab_xian1">——————————————————————</p>
						<div class="ab_neirou1">
							<ul>
								<a href="#">
									<li>微胖手臂粗穿什么敬酒服显瘦？6大缺陷身材...</li>
								</a>
								<a href="#">
									<li>苏州买纱水很深？总攻略看完再下手</li>
								</a>
								<a href="#">
									<li>【9月好物】晒好物奖落地灯</li>
								</a>
								<a href="#">
									<li>10月新娘|倒计时1个月这5件事儿你做了没？</li>
								</a>
								<a href="#">
									<li>寻找最美婚纱</li>
								</a>
							</ul>
						</div>

					</div>
				</div>

				<!--精彩评论-->
				<div id="about2">
					<div class="introduce_ab2">
						<!--文字介绍-->
						<img src="img/homgtiao.PNG" />
						<span>精彩评论</span>
						<a href="新留言板.html"><span class="about_sp2">更多></span></a>
						<p class="ab_xian2">——————————————————————</p>
						<div class="ab_neirou2">
							<ul>
								<a href="#">
									<li>微胖手臂粗穿什么敬酒服显瘦？6大缺陷身材...</li>
								</a>
								<a href="#">
									<li>苏州买纱水很深？总攻略看完再下手</li>
								</a>
								<a href="#">
									<li>【9月好物】晒好物奖落地灯</li>
								</a>
								<a href="#">
									<li>10月新娘|倒计时1个月这5件事儿你做了没？</li>
								</a>
								<a href="#">
									<li>寻找最美婚纱</li>
								</a>
							</ul>
						</div>

					</div>
				</div>
				<!--页脚-->
		<div class="bottom" style="top: 1400px;">
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

				<script type="text/javascript " src="js/cbl.js "></script>

				<div class="content " style="height:120px ">
					<script type="text/javascript " src="js/daohangtiao.js "></script>
					<script type="text/javascript " src="js/lunbo.js "></script>
					<!--
					回到顶部
                -->
					<div id="dinbu">
						<div class="lianjie ">
							<a href="login.jsp"><img src="img/s_denglu.png" /></a>
							<p class="s_denglu_wz">登录</p>
						</div>
						<div class="s_zc">
							<a href="register.jsp"><img src="img/s_denglu.png" /></a>
							<p class="s_zc_wz">注册</p>
						</div>
						<div class="fanhui ">
							<a onclick="pageScroll() "><img src="img/dingbu/箭头.png "></img>
							</a>
						</div>
					</div>
				</div>

				<!--侧边栏-->
				<div id="middle_right">
					<div class="biaoti">
						<!--侧边栏标题-->
						<span>热门婚纱摄影</span>
					</div>
					<div class="neirou">
						<!--侧边栏内容-->
						<div class="biaoti_xiao1">
							<a href="#">
								<p style="color: #FF8400;">1.厦门台北莎罗婚纱摄影</p>
							</a>
							<div class="xiao_left1">
								<img src="img/chebianlan/cbl10.jpg" />
							</div>

							<div class="xiao_right1">
								<p>套餐11</p>
								<p>案例509</p>
								<p>粉丝4317</p>
							</div>
						</div>
						<div class="neirou">
							<!--侧边栏内容-->
							<div class="biaoti_xiao">
								<a href="#">
									<p>2.厦门罗马假日婚纱摄影</p>
								</a>
								<div class="xiao_left">
									<img src="img/chebianlan/cbl2.jpg" />
								</div>

								<div class="xiao_right">
									<p>套餐11</p>
									<p>案例509</p>
									<p>粉丝4317</p>
								</div>
							</div>

							<div class="neirou">
								<!--侧边栏内容-->
								<div class="biaoti_xiao">
									<a href="#">
										<p>3.厦门国色佳人婚纱摄影</p>
									</a>
									<div class="xiao_left">
										<img src="img/chebianlan/cbl4.jpg" />
									</div>

									<div class="xiao_right">
										<p>套餐11</p>
										<p>案例509</p>
										<p>粉丝4317</p>
									</div>
								</div>
							</div>
						</div>

						<div class="neirou">
							<!--侧边栏内容-->
							<div class="biaoti_xiao">
								<a href="#">
									<p>4.时光海岸环球旅拍</p>
								</a>
								<div class="xiao_left">
									<img src="img/chebianlan/cbl14.jpg">
								</div>
								<div class="xiao_right">
									<p>套餐11</p>
									<p>案例509</p>
									<p>粉丝4317</p>
								</div>
							</div>
						</div>
					</div>


					<!--侧边栏-->
					<div id="middle_right_n">
						<div class="biaoti_n">
							<!--侧边栏标题-->
							<span>热门婚宴酒店</span>
						</div>
						<div class="neirou_n ">
							<!--侧边栏内容-->
							<div class="biaoti_xiao1_n ">
								<a href="#">
									<p style="color: #FF8400; ">1.拉维拉私人婚礼会馆</p>
								</a>
								<div class="xiao_left1_n ">
									<img src="img/chebianlan/cbl15.jpg " />
								</div>

								<div class="xiao_right1_n ">
									<p>桌数56</p>
									<p>粉丝20</p>
									<p>婚礼会所</p>
								</div>
							</div>
							<div class="neirou_n ">
								<!--侧边栏内容-->
								<div class="biaoti_xiao_n ">
									<a href="#">
										<p>2.阅香美地</p>
									</a>
									<div class="xiao_left_n ">
										<img src="img/chebianlan/cbl2.jpg " />
									</div>

									<div class="xiao_right_n ">
										<p>套餐11</p>
										<p>案例509</p>
										<p>粉丝4317</p>
									</div>
								</div>

								<div class="neirou_n ">
									<!--侧边栏内容-->
									<div class="biaoti_xiao_n ">
										<a href="#">
											<p>3.LAVIN玫瑰里(外滩店)</p>
										</a>
										<div class="xiao_left_n ">
											<img src="img/chebianlan/cbl4.jpg " />
										</div>

										<div class="xiao_right_n ">
											<p>套餐11</p>
											<p>案例509</p>
											<p>粉丝4317</p>
										</div>
									</div>
								</div>
							</div>

							<div class="neirou_n ">
								<!--侧边栏内容-->
								<div class="biaoti_xiao_n ">
									<a href="#">
										<p>4.醇情百年世博源婚礼</p>
									</a>
									<div class="xiao_left_n ">
										<img src="img/chebianlan/cbl14.jpg ">
										<p>套餐11</p>
										<p>案例509</p>
										<p>粉丝4317</p>
									</div>
								</div>
							</div>
							<div class="neirou_n">
								<!--侧边栏内容-->
								<div class="biaoti_xiao_n">
									<a href="#">
										<p>5.御花园(元一希尔顿店)</p>
									</a>
									<div class="xiao_left_n">
										<img src="img/chebianlan/cbl14.jpg">
										<p>套餐11</p>
										<p>案例509</p>
										<p>粉丝4317</p>
									</div>
								</div>
							</div>
							<div class="neirou_n ">
								<!--侧边栏内容-->
								<div class="biaoti_xiao_n ">
									<a href="#">
										<p>6.维多利亚庄园(闵行店)</p>
									</a>
									<div class="xiao_left_n ">
										<img src="img/chebianlan/cbl14.jpg ">
										<p>套餐11</p>
										<p>案例509</p>
										<p>粉丝4317</p>
									</div>
								</div>
							</div>
							<div class="neirou_n">
								<!--侧边栏内容-->
								<div class="biaoti_xiao_n">
									<a href="#">
										<p>7.拉维家婚礼会馆</p>
									</a>
									<div class="xiao_left_n">
										<img src="img/chebianlan/cbl14.jpg">
										<p>套餐11</p>
										<p>案例509</p>
										<p>粉丝4317</p>
									</div>
								</div>
							</div>
							<div class="neirou_n ">
								<!--侧边栏内容-->
								<div class="biaoti_xiao_n ">
									<a>
										<p>8尚苑宾馆</p>
									</a>
									<div class="xiao_left_n ">
										<img src="img/chebianlan/cbl14.jpg ">
										<p>套餐11</p>
										<p>案例509</p>
										<p>粉丝4317</p>
									</div>
								</div>
							</div></body>

</html>