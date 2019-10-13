<%@ page language="java" import="java.util.*"
	import="java.util.List,com.etc.wedding.dto.Picture,com.etc.wedding.dto.WeddingDress"
	pageEncoding="utf-8"%>
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
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>themes/default/easyui.css">
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script type="text/javascript"
	src="<%=basePath%>js/jquery.easyui.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
	<%
		WeddingDress wd = (WeddingDress) request.getAttribute("wd");
		int wdid = wd.getWdid();
		String wdname = wd.getWdname();
		String wdseries = wd.getWdseries();
		int wdprice = wd.getWdprice();
		String wdcolor = wd.getWdcolor();
		String wdintroduction = wd.getWdintroduction();
		String wdclothes = wd.getWdclothes();
		String wdaccessories = wd.getWdaccessories();
		String wdexplain = wd.getWdexplain();
		List<Picture> list = (List<Picture>) request
				.getAttribute("listPic");
		Picture pc1 = list.get(0);
		int pcid1 = pc1.getPid();
		Picture pc2 = list.get(1);
		int pcid2 = pc2.getPid();
		Picture pc3 = list.get(2);
		int pcid3 = pc3.getPid();
		Picture pc4 = list.get(3);
		int pcid4 = pc4.getPid();
	%>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加婚纱</strong>
		</div>
		<div class="body-content">
			<div>
				<a href="<%=basePath%>SlistClothServ">查看婚纱列表</a>
			</div>
			<form method="post" class="form-x"
				action="<%=basePath%>SupdateDressServ2?wdid=<%=wdid %>" enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>婚纱名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wdname"
							data-validate="required:请输入标题" value="<%=wdname %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label> 婚纱系列：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wdseries"
							data-validate="required:请输入系列名称" value="<%=wdseries %>"/>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>价格：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wdprice"
							data-validate="required:请输入标题" value="<%=wdprice %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>颜色</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wdcolor"
							data-validate="required:颜色" value="<%=wdcolor %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>简介：</label>
					</div>
					<div class="field">
						<input type="text" style="width: 400px; height: 30px" name="wdintroduction"
							data-validate="required:颜色" value="<%=wdintroduction %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>服装：</label>
					</div>
					<div class="field">
						<input type="text" style="width: 400px; height: 40px" name="wdclothes"
							data-validate="required:颜色" value="<%=wdclothes %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>配件：</label>
					</div>
					<div class="field">
						<input type="text" style="width: 400px; height: 40px" name="wdaccessories"
							data-validate="required:颜色" value="<%=wdaccessories%>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>说明：</label>
					</div>
					<div class="field">
						<input type="text" style="width: 400px; height: 40px" 
							data-validate="required:颜色" value="<%=wdexplain %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚纱图片一：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid1%>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚纱图片二：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid2%>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>婚纱图片三：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid3%>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚纱图片四：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid4%>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>提交内容</label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>