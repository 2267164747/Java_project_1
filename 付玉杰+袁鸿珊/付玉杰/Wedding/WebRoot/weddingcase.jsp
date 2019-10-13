<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>鹤望兰官网，婚礼定制，婚庆公司，婚礼策划，北京服务最好的公司</title>
		<link rel="stylesheet" href="css/case.css" />
		<script type="text/javascript" class="autoinsert" src="js/jquery-1.8.3.min.js"></script> 
		<script type="text/javascript" src="js/ajax.js"></script>
		<script type="text/javascript" src="js/contentCase.js" ></script>
		<script src="js/snowfall.jquery.js"></script> 
		<!--头部-->
		<!--<script src="js/jquery1.42.min.js" type="text/javascript" charset="utf-8"></script>-->
		<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/B_daohangtiao.css"/>
		<link rel="stylesheet" type="text/css" href="css/daohangtiao3.css" />
		
		<!--头部结束-->
		<script type="text/javascript">
			window.onload=function(){
				ax();
				daohang();
				//***********************背景设置***************
				  $(document).snowfall('clear');
			        $(document).snowfall({
			            image: "img/caseImg/huaban.png",
			            flakeCount:100,
			            minSize: 5,
			            maxSize: 22
        });
		//头部
//		var contact = document.getElementById("list_photo");
//		contact.onmouseover = function(){}
	}	
	</script>
	</head>
	<body>
		<!--<object type="text/x-scriptlet" data="首页.html" width=100% height=60px;></object>-->
		<!--头部-->
			<jsp:include page="head.jsp"></jsp:include>
		<!--头部结束-->
		
		<div id="caseBox">
			<div class="case_head">
				<div id="case_head_logo"></div>
				<div id="case_head_position">
					<span>您当前所在的位置：
						<a href="首页.html">首页</a>
						&gt;
						<a href="案例.html">婚礼案例</a>
						&gt;
					</span>
				</div>
			</div>
			<div id="content">
				<div class="content_itle"></div>
				<div class="content_option">
					<div class="content_option_style">
						<span>婚礼风格：</span>
							<a href="#" value="all">全部</a>
							<a href="#" value="west">西式婚礼</a>
							<a href="#" value="">中式婚礼</a>
							<a href="#" value="">户外婚礼</a>
							<a href="#" value="">教堂婚礼</a>
							<a href="#" value="">主题婚礼</a>
							<a href="#" value="">创意婚礼</a>
							<a href="#" value="">明星婚礼</a>
							<a href="#" value="">其他</a>
					</div>
					<div class="content_option_color">
						<span>婚礼主色：</span>
							<a href="#" value="all">全部</a>
							<a href="#" value="pink">粉色婚礼</a>
							<a href="#" value="red">红色婚礼</a>
							<a href="#" value="purple">紫色婚礼</a>
							<a href="#" value="blue">蓝色婚礼</a>
							<a href="#" value="green">绿色婚礼</a>
							<a href="#" value="other">其他</a>
					</div>
				</div>
				<div class="content_case" id="case">
					
					<!--<div class="content_row">
						<div class="content_case_scene">
							<ul class="ul1">
								<li class="content_img_row">
									<div class="img_big"></div>
									<div <div class="contclass="img_small">
										<div class="img_small_left"></div>
										<div class="img_small_mid"></div>
										<div class="img_small_right"></div>
									</div>
								</li>
								<li id="content_title_row"><a href="#" class="a"/></a></li>
								<li id="content_person_row">
									<span  id="p1"></span>
									<span  id="p2"></span>
									<div class="content_img1_row"></div>
									<div class="content_img2_row"></div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>-->
			<!--<div id="content_row2">-->
			<!--<div class="content_case_scene">
						<ul class="ul1">
							<li class="content_img">
								<div class="img_big"></div>
								<div class="img_small">
									<div class="img_small_left"></div>
									<div class="img_small_mid"></div>
									<div class="img_small_right"></div>
								</div>
							</li>
							<li id="content_title"><a href="#" class="a"/></a></li>
							<li id="content_person">
								<span  id="p1"></span>
								<span  id="p2"></span>
								<div class="content_img1"></div>
								<div class="content_img2"></div>
							</li>
						</ul>
					</div>-->
					<!--</div>-->
					
				</div>
			</div>
			<div class="bigcase last">
						<ul class="ul2">
							<li>
								<div class="video_content">
	                                <video width="360px" controls="controls" allowFullScreen="true" align="middle" >
	                                    <source src="shipin/aiqing.mp4" type="video/mp4"></source>
	                                </video>
	                                <div class="bigcaseinfo">
		        						<h2>
		        							<a href="#">爱你百年不变</a>
		        						</h2>
		        						<p>
		        							<span>
		        								<i></i>
		        								视频拍摄：
		        								<a href="#">Alin</a>
		        							</span>
		        							<span>
		        								<i></i>
		        								地点：北京
		        							</span>
		        						</p>
		        					</div>
        						</div>
							</li>
							<li>
        					<div class="video_content">
        						<video width="360px" controls="controls" allowFullScreen="true" align="middle" allowScriptAccess="always">
                                    <source src="shipin/aiqing.mp4" type="video/mp4"></source>
                                </video>
                            </div>
                            <div class="bigcaseinfo">
        						<h2>
        							<a href="">承诺重千金</a>
        						</h2>
        						<p>
        							<span>
        								<i></i>
        								视频拍摄：
        								<a href="">align</a>
        							</span>
        							<span>
        								<i></i>
        								地点:北京
        							</span>
        						</p>
        					</div>
        				</li>
        				<li>
        					<div class="video_content">
        						<video width="360px" controls="controls" allowFullScreen="true" align="middle" allowScriptAccess="always">
                                    <source src="shipin/aiqing.mp4" type="video/mp4"></source>
                                </video>
                            </div>
                            <div class="bigcaseinfo">
        						<h2>
        							<a href="">你只管幸福</a>
        						</h2>
        						<p>
        							<span>
        								<i></i>
        								视频拍摄：
        								<a href="">dli</a>
        							</span>
        							<span>
        								<i></i>
        								地点:北京
        							</span>
        						</p>
        					</div>
        				</li>
						</ul>
					</div>
				
				<div class="kefu">
					<a href="#"><div id="top"></div></a>
					<div id="tel"></div>
					<div id="telbig">
						<input type="text" placeholder="输入电话号码" maxlength="11" id="telText"/>
						<input type="button" value="立即拨通"  id="telSub"/>
					</div>
					<div id="ma"></div>
					<div id="mabig"></div>
				</div>
		</div>
		<script src="js/daohangtiao.js" type="text/javascript" charset="utf-8"></script>
		<!--尾部-->
		<div class="bottom" style="top: 2400px;">
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
								
								</div>
								</div>
								</div>
							</div>
						</div>
	</body>
</html>
