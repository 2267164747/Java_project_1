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
  <body>
   <div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加婚风格</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="">
			
				<div class="form-group">
					<div class="label">
						<label>婚礼类型：</label>
					</div>
					<input type="text" class="input w50" value="" name="team"
						data-validate="required:请输入嘉宾人数" />
				</div>
				
				<div class="form-group">
					<div class="label">
						<label>婚礼名称：</label>
					</div>
					<input type="text" class="input w50" value="" name="team"
						data-validate="required:请输入嘉宾人数" />
				</div>
				
				<div class="form-group">
					<div class="label">
						<label>婚礼价格：</label>
					</div>
					<input type="text" class="input w50" value="" name="team"
						data-validate="required:请输入嘉宾人数" />
				</div>
				<div class="form-group">
					<div class="label">
						<label>图描述：</label>
					</div>
					<div class="field">
						<textarea class="input" name="introduce" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>图集标签</label>
					</div>
					<div class="field" style="padding-top:8px;">
						<input id="iswhite" type="checkbox" />温馨 <input id="nowhite"
							type="checkbox" />喜庆 <input id="isyellowwhite" type="checkbox" />浪漫
						<input id="iswhite" type="checkbox" />奢华 <input id="iswhite"
							type="checkbox" />唯美
					</div></div>
				<div class="form-group">
					<div class="label">
						
					</div>
					<div class="field">
						
						<div class="tips"></div>
					</div>
				</div>
					<div class="form-group">
						<div class="label">
							<label>婚礼风格图片一：</label>
						</div>
						<div class="field">
							<input type="file" id="image1" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>婚礼风格图片二：</label>
						</div>
						<div class="field">
							<input type="file" id="image1" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼风格图片三：</label>
						</div>
						<div class="field">
							<input type="file" id="image1" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼风格图片四：</label>
						</div>
						<div class="field">
							<input type="file" id="image1" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼风格图片五：</label>
						</div>
						<div class="field">
							<input type="file" id="image1" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼风格图片六：</label>
						</div>
						<div class="field">
							<input type="file" id="image1" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
										<div class="form-group">
						<div class="label">
							<label>婚礼风格图片七：</label>
						</div>
						<div class="field">
							<input type="file" id="image1" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>
															<div class="form-group">
						<div class="label">
							<label>婚礼风格图片八：</label>
						</div>
						<div class="field">
							<input type="file" id="image1" value="浏览上传" style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
					</div>

					<div class="form-group">
					<div class="label">
						<label>婚礼流程主标题：</label>
					</div>
					<input type="text" class="input w50" value="" name="team"
						data-validate="required:请输入嘉宾人数" />
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼流程副标题：</label>
					</div>
					<input type="text" class="input w50" value="" name="team"
						data-validate="required:请输入嘉宾人数" />
				</div>
								<div class="form-group">
					<div class="label">
						<label>前言：</label>
					</div>
					<div class="field">
						<textarea class="input" name="introduce" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
								<div class="form-group">
					<div class="label">
						<label>流程内容一：</label>
					</div>
					<div class="field">
						<textarea class="input" name="introduce" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
								<div class="form-group">
					<div class="label">
						<label>流程内容二：</label>
					</div>
					<div class="field">
						<textarea class="input" name="introduce" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
								<div class="form-group">
					<div class="label">
						<label>流程内容三：</label>
					</div>
					<div class="field">
						<textarea class="input" name="introduce" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
								<div class="form-group">
					<div class="label">
						<label>流程内容四：</label>
					</div>
					<div class="field">
						<textarea class="input" name="introduce" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
									<div class="form-group">
						<div class="label">
							<label>提交</label>
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
