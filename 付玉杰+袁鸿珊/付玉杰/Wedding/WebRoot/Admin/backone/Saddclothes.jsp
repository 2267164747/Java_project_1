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
			<strong><span class="icon-pencil-square-o"></span>增加婚纱</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="">
				<div class="form-group">
					<div class="label">
						<label>婚纱名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="team"
						data-validate="required:请输入标题" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>
						婚纱系列：</label>
					</div>
					<input type="text" class="input w50" value="" name="styple"
						data-validate="required:请输入系列名称" />
				</div>
				<div class="form-group">
					<div class="label">
						<label>价格：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="price"
							data-validate="required:请输入标题" />
						<div class="tips"></div>
					</div>
				</div>
				        <div class="form-group">
          <div class="label">
            <label>颜色</label>
          </div>
          <div class="field" style="padding-top:8px;"> 
            <input id="iswhite"  type="checkbox" />白色
            <input id="nowhite"  type="checkbox" />珍珠白 
            <input id="isyellowwhite"  type="checkbox" /> 米黄
         
          </div>
        </div>
				<div class="form-group">
					<div class="label">
						<label>简介：</label>
					</div>
					<div class="field">
						<textarea class="input" name="describe" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>服装：</label>
					</div>
					<div class="field">
						<textarea class="input" name="describe" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>配件：</label>
					</div>
					<div class="field">
						<textarea class="input" name="describe" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>说明：</label>
					</div>
					<div class="field">
						<textarea class="input" name="describe" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚纱图片一：</label>
					</div>
					<div class="field">
						<input type="file" id="image1" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚纱图片二：</label>
					</div>
					<div class="field">
						<input type="file" id="image1" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>婚纱图片三：</label>
					</div>
					<div class="field">
						<input type="file" id="image1" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
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
