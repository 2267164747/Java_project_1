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
		<link rel="stylesheet" type="text/css" href="css/daohangtiao.css" />
		<link rel="stylesheet" type="text/css" href="css/css1.css"/>
		<script type="text/javascript">
			function pageScroll(){
			    window.scrollBy(0,-50);
			    scrolldelay = setTimeout('pageScroll()',30);
			    var sTop=document.documentElement.scrollTop+document.body.scrollTop;
			    if(sTop==0) clearTimeout(scrolldelay);
			}
			window.onload=function(){
				var Zuihou=document.getElementsByClassName("zuihou")[0];
		        var oDiv=document.getElementsByClassName("div1")[0];
		        var oLi=document.getElementsByClassName("li1")[0];
		        var kuang=document.getElementsByClassName("kuang")[0];
		        var oBtn1=document.getElementsByClassName("btn1")[0];
		        var content_siyi=document.getElementsByClassName("content_siyi")[0];
		        var lianjie=document.getElementsByClassName("lianjie")[0];
		        var shangyi=document.getElementsByClassName("shangyi")[0];
		        var shangyi1=document.getElementsByClassName("shangyi1")[0];
		        var shangyi2=document.getElementsByClassName("shangyi2")[0];
		        var rrr=document.getElementsByClassName("rrr")[0];
		        oLi.onclick=function(){
		        	kuang.style.display="block";
		  
		        	content_siyi.style.opacity=0.2;
		        }
		        oBtn1.onclick=function(){
		        	kuang.style.display="none";
		        	content_siyi.style.opacity=1;
		        }
		        Zuihou.onmouseover=function(){
		        	oDiv.style.display="block";
		        }
		         Zuihou.onmouseout=function(){
		        	oDiv.style.display="";
		        }
		        shangyi1.onmouseover=function(){
		    	   lianjie.style.display="block";
		        }
		        shangyi1.onmouseout=function(){
		    	   lianjie.style.display="none";
		        }
		        shangyi2.onclick=function(){
		        	pageScroll();
		         }
			} 
		</script>
		<body >
				<jsp:include page="head.jsp"></jsp:include>
		<div class="rrr">
			<div class="shangyi">
				<div class="shangyi1"></div>
				<div class="shangyi2"></div> 	
			</div>
			<div class="lianjie">
			        <div class="lianxi1" ></div>
			        <div class="lianxi2" ></div>
			        <div class="lianxi3" ></div>
			</div>
			
	    </div>  
	    <div class="content_siyi">
	    	<script type="text/javascript" src="js/daohangtiao.js"></script>
			<p>当前位置：鹤兰亭官网 > 首页 > 婚礼司仪</p>
			<p>鹤兰亭 >武汉婚礼司仪 >【海之声成歌】稳重大气型主持+DJ</p>	
			<div class="neirong">
				<div class="left" title="【海之声成歌】稳重大气型主持+DJ"></div>
	        	<div class="right">
	        		<h1 class="head">【海之声成歌】稳重大气型主持+DJ</h1>
	        		<ul class="ul1">
	        			<li>婚礼司仪</li>
	        			<li>大气</li>
	        			<li>浪漫</li>
	        			<li>司仪</li>
	        			<li>DJ</li>
	        		</ul>
	        		<p class="p1"><font class="f">¥2000</font>&nbsp;&nbsp;&nbsp;市场价¥<strike>2500</strike></p>
		        	<div class="wenzi">
		        		<p class="p2"><img src="img/000.png" /><span class="zi">可先付定金</span></p>
		        		<p class="p3"><img src="img/22.png" /><span class="zi1">全款支付优惠100元</span></p>
	        	   </div>
	        	    <div class="link1">
	        	    	<div class="li1">预约到店</div>
	        	    	<div class="li2">私信商家</div>
	        	     </div>
	        	    <div class="zuihou"></div> 
	        	    <div class="div1"></div>
	        	    <div class="link"><a href="" >下载手机版随时随地任性买！</a></div>
	        	</div>
	        	<div class="tuijian"></div>
	        </div> 
	        <div class="qita">
	        	<p >——— 超值套餐 ———</p>
	        	<div class="taocan1">
	        		<div class="taocan11">【超值抢购】3套系婚纱租赁送</div>
	        	</div>
	            <p class="tc">¥2880<font class="ff"><strike>¥3880</strike></font></p>
	        	<div class="taocan2">
	        		<div class="taocan22">总监级 4造型全程跟妆 送妈妈妆</div>
	        	</div>
	        	<p class="tc">¥1080<font class="ff"><strike>¥1880</strike></font></p>
	        	<div class="taocan3">
	        		<div class="taocan33">【特惠套餐】超低价 浪漫西式</div>
	        	</div>
	        	<p class="tc">¥9880<font class="ff"><strike>¥11200</strike></font></p>
	        	<div class="qita1">
	        		
	        	</div>
	        </div>
	        <div class="neirong1">
	        	<div class="dh">
	        		<ul class="header">
		        		<li class="li3">介绍</li>
		        		<li >服务</li>
		        		<li >温馨提示</li>
		        		<li class="li4">婚礼服务承诺</li>
		        	</ul>
		        </div>       
	                    <h4 class="hh">介绍</h4>
			        	<div class="p0">
				        	海之声（湖北）执行团队成员</br>
				        	武汉市爱相随婚庆礼仪工作室总经理</br>
				        	武汉市民政职业学院特邀金牌讲师</br>
				        	2007年执麦至今，主持了2000多对新人的婚礼，主持风格大气煽情，温馨浪漫，幽默诙谐，走心率性，特别能和来宾互动，可以顺应新人的要求任意切换，擅长婚礼主持，十岁生日主持，寿宴主持，会议主持，年会主持，联欢晚会主持！</br>
			            </div>
			           <h4 class="hh1">服务</h4>
			            <div  class="aa">
			                               服务内容<br/>
			           		1、华中婚礼SOP标准服务流程执行者，所有婚礼服务采取量化管理追踪； <br/>
			           		2、婚礼前沟通、出具婚礼流程、彩排，及提供婚礼相关的其他咨询 ；<br/>
			           		3、团队标准：主持+DJ； <br/>
			           		4、婚礼中各种突发的临场解决。<br/>
			           	</div>
			           	<div class="bb">
			           	   	服务特色<br/>
			           	    1、专业的婚礼服务团队配备；<br/>
			           	    2、专职新娘小秘书贴身服务；<br/>
			           	    3、多年的主持阅历所带来的经典策划 ；<br/>
			           	    4、个性化婚礼流程的设计及音乐的编排。<br/>
			            </div>
			            <h4 class="hh2">温馨提示</h4>
			            <div class="cc">
			            	*因婚礼服务需预留档期，预定后取消将造成商家的经济损失。
			            	若无故取消，且在服务时间前15天（不含）以上申请退款，将扣除定金的30%作为违约金；若在服务时间前15天内申请退款，将扣除订单总金额的50%作为违约金；若与商家协商一致，商家同意后可全额退款。<br/>
			            	*以上规则不包含意向金订单，在支付余款前向金随时可退。<br/>
			                *如遇特殊情况,用户跟服务商家协商一致可酌情处理。<br/>
			            </div>
			             <h4 class="hh3">婚礼服务承诺</h4>
			             <div  class="hunli">
			             	<div class="hunli1"></div>
			             	<div class="hunli2"></div>
			             	<div class="hunli3"></div>
			             	<div class="hunli4"></div>
			             </div>
			             <div  class="chengnuo">
			             	<div class="chengnuo1">服务保障</div>
			             	<div class="chengnuo2">平台监督</div>
			             	<div class="chengnuo3">一对一服务</div>
			             	<div class="chengnuo4">无隐形消费</div>
			             </div>
	        </div>    
        </div>
       
			      <div class="content" style="height:120px">
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