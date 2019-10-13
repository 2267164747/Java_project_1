<%@page import="com.etc.wedding.dto.WGDiscount"%>
<%@page import="com.etc.wedding.dto.BrandCharacteristics"%>
<%@page import="com.etc.wedding.dto.DiningStandard"%>
<%@page import="com.etc.wedding.dto.WeddingGround"%>
<%@page import="com.etc.wedding.dto.BanquetHall"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="Admin/backone/css/pintuer.css">
<link rel="stylesheet" href="Admin/backone/css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<form method="post" class="form-x" action="<%=basePath%>UpdateGroundServ?wgid=${wg.wgid}">
			<div class="panel-head" id="add">
				<strong><span class="icon-pencil-square-o"></span>婚礼场地</strong>
			</div>
			<div class="body-content">
				<div class="form-group">
					<div class="label">
						<label>场地名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wgname" value="${wg.wgbname}"/>
					</div>
				</div>
				<div class="form-group">
					<div class="tips"></div>
					<div class="label">
						<label>场地类型：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wgtype" value="${wg.wgtype}"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>场地说明：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wgexplain" style=" height:90px;">${wg.wgexplain}</textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>地址：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wgaddress" value="${wg.wgaddress}"/>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>详细地址：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wgaddressdetail"
							style=" height:90px;">${wg.wgdetail_address}</textarea>
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">

						<label>价格：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wgprice" value="${wg.wgprice}"/>
					</div>
				</div>
				<%  WeddingGround wg = (WeddingGround)request.getAttribute("wg"); 
					List<BanquetHall> list = wg.getList();
					for(int i = 0 ; i < list.size() ; i++){
						BanquetHall bh = list.get(i);%>
				<input type="hidden" value="<%=bh.getBhid()%>" name="bhid<%=(i+1)%>" >
				<div class="panel admin-panel">
					<div class="panel-head" id="add">
						<strong><span class="icon-pencil-square-o"></span>宴会厅<%=(i+1)%></strong>
					</div>
					<div class="body-content">

						<div class="form-group">
							<div class="label">
								<label>名称：</label>
							</div>
							<div class="field">
								<input type="text" class="input w50" name="bhname<%=(i+1)%>" value="<%=bh.getBhname()%>"/>
							</div>
						</div>
						<div class="form-group">
							<div class="label">

								<label>桌数：</label>
							</div>
							<div class="field">
								<input type="text" class="input w50" name="bhcount<%=(i+1)%>" value="<%=bh.getBhcount()%>" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">

								<label>面积：</label>
							</div>
							<div class="field">
								<input type="text" class="input w50" name="bharea<%=(i+1)%>" value="<%=bh.getBharea()%>"/>
							</div>
						</div>
						<div class="form-group">
							<div class="label">

								<label>柱子：</label>
							</div>
							<div class="field">
								<input type="text" class="input w50" name="bhpillar<%=(i+1)%>" value="<%=bh.getBhpillar()%>"/>
							</div>
						</div>
						<div class="form-group">
							<div class="label">

								<label>楼层：</label>
							</div>
							<div class="field">
								<input type="text" class="input w50" name="bhfloor<%=(i+1)%>" value="<%=bh.getBhfloor()%>"/>
							</div>
						</div>
						<div class="form-group">
							<div class="label">

								<label>厅高：</label>
							</div>
							<div class="field">
								<input type="text" class="input w50" name="bhheight<%=(i+1)%>" value="<%=bh.getBhheight()%>"/>
							</div>
						</div>
	
						<%}%>
						<% DiningStandard ds = wg.getDs();%>
							<div class="panel-head" id="add">
								<strong><span class="icon-pencil-square-o"></span>宴会餐标</strong>
							</div>
							<div class="form-group">
								<div class="label">
									<label>名称：</label>
								</div>
								<div class="field">
									<input type="text" class="input w50" name="dsname" value="<%=ds.getDsname()%>"/>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label>信息一：</label>
								</div>
								<div class="field">
									<textarea class="input" name="dsmessage1" style=" height:90px;"><%=ds.getDsmessage1()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label>信息二：</label>
								</div>
								<div class="field">
									<textarea class="input" name="dsmessage2" style=" height:90px;"><%=ds.getDsmessage2()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label>信息三：</label>
								</div>
								<div class="field">
									<textarea class="input" name="dsmessage3" style=" height:90px;"><%=ds.getDsmessage3()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<% BrandCharacteristics bc = wg.getBc();%>
							<div class="panel-head" id="add">
								<strong><span class="icon-pencil-square-o"></span>品牌特色</strong>
							</div>
							<div class="form-group">
								<div class="label">
									<label>品牌故事：</label>
								</div>
								<div class="field">
									<textarea class="input" name="bcstory" style=" height:90px;"><%=bc.getBcstory()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label>仪式亮点：</label>
								</div>
								<div class="field">
									<textarea class="input" name="bcrite" style=" height:90px;"><%=bc.getBcrite()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label>迎宾亮点：</label>
								</div>
								<div class="field">
									<textarea class="input" name="bcmeeting" style=" height:90px;"><%=bc.getBcmeeting()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label>婚宴亮点：</label>
								</div>
								<div class="field">
									<textarea class="input" name="bcwedding" style=" height:90px;"><%=bc.getBcwedding()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label>特色推荐：</label>
								</div>
								<div class="field">
									<textarea class="input" name="bcrecommend"
										style=" height:90px;"><%=bc.getBcrecommend()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<div class="panel-head" id="add">
								<strong><span class="icon-pencil-square-o"></span>独家优惠</strong>
							</div>
							<% List<WGDiscount> list2 = wg.getList2();
								for(int i = 0 ; i < list2.size() ; i++){
									WGDiscount wgd = list2.get(i);
							%>
							<input type="hidden" value="<%=wgd.getWgdid()%>" name="wgdid<%=(i+1)%>" >
							
							<div class="form-group">
								<div class="label">

									<label>名称<%=(i+1)%>：</label>
								</div>
								<div class="field">
									<input type="text" class="input w50" name="wgdname<%=(i+1)%>" value="<%=wgd.getWgdname()%>"/>
								</div>
							</div>

							<div class="form-group">
								<div class="label">
									<label>内容<%=(i+1)%>：</label>
								</div>
								<div class="field">
									<textarea class="input" name="wgdcontents<%=(i+1)%>"
										style=" height:90px;"><%=wgd.getWgdcontents()%></textarea>
									<div class="tips"></div>
								</div>
							</div>
							<%}%>
							<div class="form-group">
								<div class="label">
									<label>&nbsp;&nbsp;</label>
								</div>
								<div class="field">
									<button class="button bg-main icon-check-square-o"
										type="submit">提交</button>
								</div>
							</div>
						</div>
					</div>

				</div>

		</form>
	</div>
</body>
</html>
