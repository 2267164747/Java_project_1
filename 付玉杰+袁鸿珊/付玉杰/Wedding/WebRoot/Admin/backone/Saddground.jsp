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
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加婚礼场地</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="../../AddGroundServ" enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>场地名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wgname"
							/>
					</div>	
				</div>
				<div class="form-group">
					<div class="tips"></div>
					<div class="label">
						<label>场地类型：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wgtype"
							data-validate="required:请输入场地类型" />
								<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>场地说明：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wgexplain" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>地址：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wgaddress"
							data-validate="required:请输入地址" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>详细地址：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wgaddressdetail" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">

						<label>价格：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wgprice"
							data-validate="required:请输入价格" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>场地图片：</label>
					</div>
					<div class="field">
						<input type="file" name="wgpic" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>场地大图：</label>
					</div>
					<div class="field">
						<input type="file" name="wgbigpic" style="float:left;">
						<div class="tipss">图片尺寸：1920*500</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class="label">
						<label>&nbsp;&nbsp;</label>
					</div>
					<div class="field">
						<input class="button bg-main icon-check-square-o" type="submit" value="提交"/>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
