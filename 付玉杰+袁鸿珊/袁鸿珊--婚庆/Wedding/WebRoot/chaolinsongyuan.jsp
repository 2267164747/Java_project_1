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
		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/songyuanjiudian.css"/>
		<link rel="stylesheet" type="text/css" href="css/C_daohangtiao.css"/>
		<link rel="stylesheet" type="text/css" href="css/middle.css" />
		<script type="text/javascript" src="js/snowfall.jquery.js"></script>
		<script type="text/javascript" src="js/songyuanjiudian.js"></script>
			
		</script>
		<script type="text/javascript">
			window.onload = function() {
	        $(document).snowfall('clear');
	        $(document).snowfall({
	            image: "img/huaban.png",
	            flakeCount:30,
	            minSize: 5,
	            maxSize: 22
	        });
	        SY();
			}
		</script>

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
		<div id="top_div">
			<img src="img/songyuanjiudian.jpg" id="top_img"/>
		</div>
		<div id="B_form">
			<span id="suoyin"><font color="#AAAAAA"size="4px">网站首页>量身定制>婚礼场地>朝林松源酒店</font></span>
			<span id="top_title">朝林松源酒店</span>
			<span id="title_biaoqian">星级酒店</span>
			<span id="address">北京 大兴 经济技术开发区荣华中路19号</span>
			<span id="phone">全国热线：400-0019-456</span>
			<hr id="hr1" color="#E7E7E7" />
			<div id="YuYue_box">
				<h1 id="BT_biaoqian">预约咨询</h1>
				<ul id="Ul1">
					<li>
						<input name="" id="peoName" type="text" maxlength="12" placeholder="姓名">
					</li>
					<li>
						<input name=""id="peoPhone" type="text" maxlength="11" placeholder="手机号码">
					</li>
				</ul>
				<input id="bookSub" type="button" value="立即预约"/>
			</div>
			<span id="PingPai">品牌故事</span>
			<div id="P_txt">朝林松源酒店位于北京经济技术开发区核心区域的中心，该区域是开发区唯一的行政商务区。酒店将以精致典雅的环境和细致周到的服务打造宾客难以忘怀的美好回忆。 </div>
			<hr id="hr2" color="#E7E7E7" />
			<span id="TeSe">特色亮点</span>
			<table border="0" cellspacing="20" cellpadding="0" id="T_txt">
				<tr>
					<td class="td1">仪式区亮点</td>
					<td class="td2">8米超高宴会空间，64㎡LED配套设施  </td>
				</tr>
				<tr>
					<td class="td1">迎宾区亮点</td>
					<td class="td2">多国设计大师联袂打造，独具匠心多文化元素迎宾空间  </td>
				</tr>
				<tr>
					<td class="td1">婚宴亮点</td>
					<td class="td2">养生官府菜，私密专属宴会空间。 </td>
				</tr>
				<tr>
					<td class="td1">特色推荐</td>
					<td class="td2">80平米超豪华婚房，婚礼地面免费停车。  </td>
				</tr>
			</table>
			<hr id="hr3" color="#E7E7E7" />
			<span id="DuJia">独家优惠</span>
			<ul id="D_txt">
				<li class="li1">婚房升级礼遇</li>
				<li class="li2">可由豪华大床房升级至豪华商务大床房（最高可升级至套房）</li>
				<li class="li1">住房优惠</li>
				<li class="li2">亲友入住酒店享优惠房价</li>
				<li class="li1">双人自助晚餐</li>
				<li class="li2">预定婚宴免费赠送 </li>
				<li class="li1">婚纱照拍摄</li>
				<li class="li2">预定婚宴赠送新人婚纱照等拍摄取景场地免费使用1次。</li>
				<li class="li1">音响设备提供</li>
				<li class="li2">预定婚宴免费提供室内音响设备及无线麦克2只。</li>
				<li class="li1">LED使用优惠</li>
				<li class="li2">预定婚宴可享主题餐厅宴会厅内置LED屏6折优惠。</li>
				<li class="li1">宝宝宴折扣礼遇</li>
				<li class="li2">婚礼后宝宝满月酒或百日宴预定享受8折优惠。 </li>
			</ul>
			<span id="YHK">领取优惠</span>
			<hr id="hr4" color="#E7E7E7" />
			<div id="MHk"></div>
			<div id="YuYue_box1">
				<h1 id="BT_biaoqian1">预约咨询</h1>
				<input id="GuanBi" type="button" value="关闭" />
				<ul id="Ul2">
					<li>
						<input name="" id="peoName1" type="text" maxlength="12" placeholder="姓名">
					</li>
					<li>
						<input name=""id="peoPhone1" type="text" maxlength="11" placeholder="手机号码">
					</li>
				</ul>
				<input id="bookSub1" type="button" value="立即预约"/>
			</div>
			<span id="YanHui">宴会厅</span>
			<span id="YHT1">长安宫</span>
			<table id="YHT1_txt" border="0" cellpadding="20" cellspacing="">
				<tr>
					<td class="a">桌数</td>
					<td class="b">39 桌 </td>
					<td class="b"></td>
					<td class="a">面积</td>
					<td class="b">700 </td>
				</tr>
				<tr>
					<td class="a">厅高</td>
					<td class="b">8米</td>
					<td class="b"></td>
					<td class="a">柱子</td>
					<td class="b">无</td>
				</tr>
				<tr>
					<td class="a">楼层</td>
					<td class="b">2层</td>
				</tr>
			</table>
			<img src="img/changangong.jpg" id="YHT1_img"/>
			<hr id="hr5" color="#E7E7E7" />
			<span id="YHT2">凤凰厅 </span>
			<table id="YHT2_txt" border="0" cellpadding="20" cellspacing="">
				<tr>
					<td class="a">桌数</td>
					<td class="b">8 桌 </td>
					<td class="b"></td>
					<td class="a">面积</td>
					<td class="b">140 </td>
				</tr>
				<tr>
					<td class="a">厅高</td>
					<td class="b">5米</td>
					<td class="b"></td>
					<td class="a">柱子</td>
					<td class="b">无</td>
				</tr>
				<tr>
					<td class="a">楼层</td>
					<td class="b">2层</td>
				</tr>
			</table>
			<img src="img/fenghuangting.jpg" id="YHT2_img"/>
			<hr id="hr6" color="#E7E7E7" />
			<span id="JaiZai">查看更多</span>
			<div id="CaiDan">
				<hr id="hr9" color="#E7E7E7" />
				<span id="Ch">宴会餐标</span>
				<span id="CaiPing">精选婚宴菜单 </span>
				<span id="jiage">7288/桌起 </span>
				<ul id="Ch_txt">
					<li>主厨精选中式18（8凉10热）道婚宴  </li>
					<li>可提供个性菜品定制</li>
					<li>15%服务费可自带酒水  </li>
				</ul>
				<hr id="hr10" color="#E7E7E7" />
			</div>
			<div id="TuiJian">
				<span id="TuiJian_txt">相关场地推荐</span>
				<img src="img/ground9.jpg" id="Tuijian_1"/>
				<img src="img/ground8.jpg" id="Tuijian_2"/>
				<img src="img/ground7.jpg" id="Tuijian_3"/>
			</div>
			<div id="JaiZaiKuang">
				<span id="YHT3">会议中心聚缘殿</span>
			<table id="YHT3_txt" border="0" cellpadding="20" cellspacing="">
				<tr>
					<td class="a">桌数</td>
					<td class="b">20桌 </td>
					<td class="b"></td>
					<td class="a">面积</td>
					<td class="b">422 </td>
				</tr>
				<tr>
					<td class="a">厅高</td>
					<td class="b">4米</td>
					<td class="b"></td>
					<td class="a">柱子</td>
					<td class="b">无</td>
				</tr>
				<tr>
					<td class="a">楼层</td>
					<td class="b">5层</td>
				</tr>
			</table>
			<img src="img/juyuandian.jpg" id="YHT3_img"/>
			<hr id="hr7" color="#E7E7E7" />
			<span id="YHT4">会馆9号宴会厅 </span>
			<table id="YHT4_txt" border="0" cellpadding="20" cellspacing="">
				<tr>
					<td class="a">桌数</td>
					<td class="b">8桌 </td>
					<td class="b"></td>
					<td class="a">面积</td>
					<td class="b">320 </td>
				</tr>
				<tr>
					<td class="a">厅高</td>
					<td class="b">7米</td>
					<td class="b"></td>
					<td class="a">柱子</td>
					<td class="b">有</td>
				</tr>
				<tr>
					<td class="a">楼层</td>
					<td class="b">2层</td>
				</tr>
			</table>
			<img src="img/nine.jpg" id="YHT4_img"/>
			<hr id="hr8" color="#E7E7E7" />
			<span id="YHT5">主题餐厅宴会厅 </span>
			<table id="YHT5_txt" border="0" cellpadding="20" cellspacing="">
				<tr>
					<td class="a">桌数</td>
					<td class="b">20桌 </td>
					<td class="b"></td>
					<td class="a">面积</td>
					<td class="b">450 </td>
				</tr>
				<tr>
					<td class="a">厅高</td>
					<td class="b">4米</td>
					<td class="b"></td>
					<td class="a">柱子</td>
					<td class="b">无</td>
				</tr>
				<tr>
					<td class="a">楼层</td>
					<td class="b">1层</td>
				</tr>
			</table>
			<img src="img/mainhall.jpg" id="YHT5_img"/>
			</div>
			
		</div>
		
			 <div class="content" style="height:120px">

		<!-- 内容 -->
		<script src="js/daohangtiao.js" type="text/javascript" charset="utf-8"></script>
	</div>

	</div>
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
									
								</div>
							</div>
						</div>
						</div>
						</div>
		</body>

</html>


