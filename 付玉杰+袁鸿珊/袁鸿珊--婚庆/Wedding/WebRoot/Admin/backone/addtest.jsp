<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link rel="stylesheet" type="text/css" href="<%=basePath%>themes/default/easyui.css">
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<script type="text/javascript">
</script>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加婚礼案例</strong>
		</div>
		<div class="body-content">
		<div><a href="<%=basePath%>SlistexampleServ1" >查看案例列表</a></div>
			<form action="<%=basePath%>SaddexampleServs" method="post" enctype="multipart/form-data" class="form-x">
				
					<div class="form-group">
						<div class="label">
							<label>婚礼案例图片一：</label>
						</div>
						<div class="field">
							<input type="file" name="image1"  style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>婚礼案例图片二：</label>
						</div>
						<div class="field">
							<input type="file" name="image2"  style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼案例图片三：</label>
						</div>
						<div class="field">
							<input type="file" name="image3" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼案例图片四：</label>
						</div>
						<div class="field">
							<input type="file" name="image4" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼案例图片五：</label>
						</div>
						<div class="field">
							<input type="file" name="image5" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼案例图片六：</label>
						</div>
						<div class="field">
							<input type="file" name="image6" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼案例图片七：</label>
						</div>
						<div class="field">
							<input type="file" name="image7" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>提交</label>
						</div>
						<div class="field">
							<button class="button bg-main icon-check-square-o" type="submit" >提交</button>
						</div>
					</div>
			</form>
		</div>
	</div>
</body>
</html>
