<%@ page language="java" import="java.util.*,com.etc.wedding.dto.WeddingCase,java.util.List,com.etc.wedding.dto.Picture" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>		
		<link rel="stylesheet" type="text/css" href="css/casePagefirst.css"/>
		<script src="js/casePagefirst.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/daohangtiao3.css" />
		<script type="text/javascript" class="autoinsert" src="js/jquery-1.8.3.min.js"></script> 
		<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			window.onload=function(){
				casepagefirst();
			}
		</script>
	</head>
	<body>
	
				<div class="navBar">
				<div class="imgtop">
					<a href="#"><img src="img/1.png" width="55%" /></a>
				</div>
				<ul class="nav clearfix" style="width: 800px;">
					<li class="m">
						<h3><a target="_self" href="首页.html">网站首页</a></h3>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="案例.html">婚礼案例</a></h3>
					</li>
					<li class="s">|</li>
					<li class="m ">
						<!-- 当前频道添加on -->
						<h3><a target="_self" href="婚礼风格.html">婚礼风格</a></h3>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="司仪主页.html">团队司仪</a></h3>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="#">量身定制</a></h3>
						<ul class="sub">
							<li>
								<a href="婚礼场地.html">婚礼场地</a>
							</li>
							<li>
								<a href="yqhunsha.html">婚纱礼服</a>
							</li>
						</ul>
					</li>
					<li class="s">|</li>
					<li class="m">
						<h3><a target="_self" href="guangyuwomen.html">关于我们</a></h3>
						<ul class="sub">
							<li>
								<a href="留言板.html">留言板</a>
							</li>
						</ul>
					</li>
					<li class="s">|</li>
					<li class="block"></li>
					<!-- 滑动块 -->
				</ul>
			</div>
							<%
	WeddingCase wc=(WeddingCase)request.getAttribute("wc");
	List<Picture> list=(List<Picture>)request.getAttribute("piclist");
	System.out.print("传值成功");
	int wcid=wc.getWcid();
	String introduction=wc.getWcintroduction();//
	String design=wc.getWcdesign();//
	int count=wc.getWccount();//
	String color=wc.getWccolor();//
	String main=wc.getWcmain();//
	String ground=wc.getWcground();//
	String label=wc.getWclabel();//
	String vice=wc.getWcvice();//
	Date wedding_date=wc.getWcwedding_date();//
	Picture pc1=list.get(0);
	int pcid1=pc1.getPid();
	Picture pc2=list.get(1);
	int pcid2=pc2.getPid();
	Picture pc3=list.get(2);
	int pcid3=pc3.getPid();
	Picture pc4=list.get(3);
	int pcid4=pc4.getPid();
	Picture pc5=list.get(4);
	int pcid5=pc5.getPid();
	Picture pc6=list.get(5);
	int pcid6=pc6.getPid();
	Picture pc7=list.get(6);
	int pcid7=pc7.getPid();
	%>
		<div id="casePageBox">
			<div id="casePage_title">
				<span style="text-decoration: none;">
					<a href="首页.html">首页</a> &gt; <a href="案例.html"/>案例</a> &gt;案例详情
				</span>
			</div>
			<div class="pageContent">
				<div class="caseLeft">
					<h1><span id="title"><%=main %></span></h1>
					<p>
						<span id="house">
							酒店：
							<a href="#">北京中软国际</a>
						</span>
						<span id="lable">
							标签：
							<a href="#"><%=label %></a>
						</span>
						<span id="date">
							婚礼日期：
							<a href="#"><%=wedding_date %></a>
						</span>
					</p>
					<div class="caseShowDescription">
						<strong>
							<i></i>
							婚礼简介
						</strong>
						<p><%=introduction %>
						</p>
					</div>
					<div class="caseShowTxt">
						<p style="text-align: center;">
							<img src="ImageServ?pcid=<%=pcid1 %>" height="450px"width="750px"/>
						</p>
						<div id="font">
							<span style="color:#a5a5a5">
								婚礼现场
							</span>
						</div>
						<p style="text-align: center;">
							<img src="ImageServ?pcid=<%=pcid2 %>" height="450px"width="750px"/>
						</p>
						<p style="text-align: center;">
							<img src="ImageServ?pcid=<%=pcid3 %>" height="450px"width="750px"/>
						</p>
						<p style="text-align: center;">
							<img src="ImageServ?pcid=<%=pcid4 %>" height="450px"width="750px"/>
						</p>
						<p style="text-align: center;">
							<img src="ImageServ?pcid=<%=pcid5 %>" height="450px"width="750px"/>
						</p>
						<p style="text-align: center;">
							<img src="ImageServ?pcid=<%=pcid6 %>" height="450px"width="750px"/>
						</p>
						<p style="text-align: center;">
							<img src="ImageServ?pcid=<%=pcid7 %>" height="450px"width="750px"/>
						</p>
					</div>
				</div>

				<div class="caseRight">
					<h2><%=vice %></h2>
					<h3 class="design">设计灵感 :</h3>
					<div class="case-overflow">
						<p class="content-text">
							<span class="case-text">
								<%=design %>
							</span>
						</p>
					</div>
					<h3 class="basic">基本信息：</h3>
					<ul>
						<li class="clx">
							<p>
								<span>婚礼嘉宾</span>
								<span class="later"><%=count %></span>
							</p>
							<p>
								<span>婚礼色系</span>
								<span class="later"><%=color %></span>
							</p>
						</li>
						<li class="clx">
							<p>
								<span>婚礼场地</span>
								<span class="later"><%=ground %></span>
							</p>
						</li>
					</ul>
					<div class="book">
						<h3>预约咨询</h3>
						<ul class="area-box">
							<li>
								<input placeholder="姓名" type="text" maxlength="12" name="" id="name">
							</li>
							<li>
								<input placeholder="手机号" type="text" maxlength="12" name="" id="phone">
							</li>
						</ul>
						<p class="errorMes">手机号格式错误</p>
						<input lock="true" type="button" id="bookSub" value="立即预约" >
					</div>
				</div>
			</div>
			
		</div>

		<!--页脚-->
		
				<div class="bottom" style="top: 4000px;">
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
						</div></div></div>
	</body>
</html>
