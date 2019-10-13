<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>鹤望兰官网，婚礼定制，婚庆公司，婚礼策划，北京服务最好的公司</title>
<script src="js/jquery1.42.min.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/beihujiuhao.css" />
<link rel="stylesheet" type="text/css" href="css/B_daohangtiao.css" />
<link rel="stylesheet" type="text/css" href="css/middle.css" />
<script type="text/javascript" src="js/snowfall.jquery.js"></script>
<script type="text/javascript" src="js/beihujiuhao.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>

<script type="text/javascript">
	window.onload = function() {
		$(document).snowfall('clear');
		$(document).snowfall({
			image : "img/huaban.png",
			flakeCount : 30,
			minSize : 5,
			maxSize : 22
		});
		aa();
	};
</script>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div>
		<div class="cont">
			<div id="top_div">
				<img src="GroundImgServ?type=bigpic&wgid=${wg.wgid}" id="top_img1" />
			</div>
			<div id="B_form">

				<span id="suoyin"><font color="#AAAAAA" size="4px">网站首页>量身定制>婚礼场地>${wg.wgbname}</font></span>
				<div style="float: left;width: 100%">
					<span id="top_title">${wg.wgbname}</span> <span id="title_biaoqian">${wg.wgtype}</span>
				</div>
				<span id="address">${wg.wgdetail_address}</span> <span id="phone">全国热线：400-0019-456</span>
				<div id="YuYue_box"
					style="position: fixed; top: 180px; left: 900px;">
				<form action="UserBookingServ?wgid=${wg.wgid}&wgname=${wg.wgbname}" method="post">
					<h1 id="BT_biaoqian">预约咨询</h1>
					<ul id="Ul1">
					<li>
						<input name="reDate" id="peoName" type="text" maxlength="12" placeholder="预约时间" onclick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm'})">
					</li>
					<li>
						<textarea name="reText" id="peoText"  maxlength="12" placeholder="预约留言" ></textarea>
					</li>
					
				</ul>
					<input id="bookSub" type="submit" value="立即预约"  />
				</form>
				</div>
				<span id="PingPai">品牌故事</span>
				<div id="P_txt">${wg.getBc().getBcstory()}</div>
				<span id="TeSe">特色亮点</span>
				<table border="0" cellspacing="20" cellpadding="0" id="T_txt">
					<tr>
						<td class="td1">仪式区亮点</td>
						<td class="td2">${wg.bc.bcrite}</td>
					</tr>
					<tr>
						<td class="td1">迎宾区亮点</td>
						<td class="td2">${wg.bc.bcmeeting}</td>
					</tr>
					<tr>
						<td class="td1">婚宴亮点</td>
						<td class="td2">${wg.bc.bcwedding}</td>
					</tr>
					<tr>
						<td class="td1">特色推荐</td>
						<td class="td2">${wg.bc.bcrecommend}</td>
					</tr>
				</table>
				<span id="DuJia">独家优惠</span>
				<ul id="D_txt">
					<c:forEach var="dc" items="${wg.list2}">
						<li class="li1">${dc.wgdname}</li>
						<li class="li2">${dc.wgdcontents}</li>
					</c:forEach>
				</ul>
				<span id="YHK">领取优惠</span>
				<div id="MHk"></div>
				<div id="YuYue_box1">
					<h1 id="BT_biaoqian1">预约咨询</h1>
					<input id="GuanBi" type="button" value="关闭" />
					<ul id="Ul2">
						<li><input name="" id="peoName1" type="text" maxlength="12"
							placeholder="姓名"></li>
						<li><input name="" id="peoPhone1" type="text" maxlength="11"
							placeholder="手机号码"></li>
					</ul>
					<input id="bookSub1" type="button" value="立即预约" />
				</div>
			</div>
			<div class="hall">
				<span id="YanHui">宴会厅</span>
				<div style="float: left;width: 78%;">
					<c:forEach var="bh" items="${wg.list}">
						<span class="YHT1">${bh.getBhname()}</span>
						<table class="YHT1_txt" border="0" cellpadding="20" cellspacing="">
							<tr>
								<td class="a">桌数</td>
								<td class="b">${bh.bhcount}桌</td>
								<td class="b"></td>
								<td class="a">面积</td>
								<td class="b">${bh.bharea}</td>
							</tr>
							<tr>
								<td class="a">厅高</td>
								<td class="b">${bh.bhheight}</td>
								<td class="b"></td>
								<td class="a">柱子</td>
								<td class="b">${bh.bhpillar}</td>
							</tr>
							<tr>
								<td class="a">楼层</td>
								<td class="b">${bh.bhfloor}</td>
							</tr>
						</table>
						<img src="GroundImgServ?type=grounddetail&bhid=${bh.bhid}"
							class="YHT1_img" />
					</c:forEach>
				</div>
			</div>
			<hr id="hr6" color="#E7E7E7" />
			<div style="width:100% ;float: left;"><span id="JaiZai">查看更多</span></div>
			<div id="CaiDan">
				<span id="Ch">宴会餐标</span> <span id="CaiPing">${wg.ds.dsname} </span> <span
					id="jiage">${wg.wgprice}/桌起 </span>
				<ul id="Ch_txt">
					<li>${wg.ds.dsmessage1}</li>
					<li>${wg.ds.dsmessage2}</li>
					<li>${wg.ds.dsmessage3}</li>
				</ul>
			</div>
			<div id="TuiJian">
				<span id="TuiJian_txt">相关场地推荐</span> 
				<div style="float: left;margin: 20px 0 0 8%; width:100%;"><img src="img/ground8.jpg"
					id="Tuijian_1" /> <img src="img/ground10.jpg" id="Tuijian_2" /> <img
					src="img/ground9.jpg" id="Tuijian_3" />
				</div>
			</div>
		</div>

		<div class="content" style="height:120px">

			<!-- 内容 -->
			<script src="js/daohangtiao.js" type="text/javascript"
				charset="utf-8"></script>
		</div>
	</div>
	<div class="bottom" style="margin-top: 20px;">
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


