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
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>增加婚风格</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x"
				action="<%=basePath%>SaddstyleServ" enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>婚礼类型：</label>
					</div>
					<input type="text" class="input w50" name="wstype"
						data-validate="required:请输入嘉宾人数" />
				</div>

				<div class="form-group">
					<div class="label">
						<label>婚礼名称：</label>
					</div>
					<input type="text" class="input w50" name="wsname"
						data-validate="required:请输入嘉宾人数" />
				</div>

				<div class="form-group">
					<div class="label">
						<label>婚礼价格：</label>
					</div>
					<input type="text" class="input w50" name="wsprice"
						data-validate="required:请输入嘉宾人数" />
				</div>
				<div class="form-group">
					<div class="label">
						<label>图描述：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wsdescription" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>图集标签</label>
					</div>
					<div class="field" style="padding-top:8px;">
						<input name="cl" type="checkbox" value="温馨" />温馨 <input name="cl"
							type="checkbox" value="喜庆 " />喜庆 <input name="cl"
							type="checkbox" value="浪漫" />浪漫 <input name="cl" type="checkbox"
							value="奢华 " />奢华 <input name="cl" type="checkbox" value="唯美" />唯美
					</div>
				</div>
				<div class="form-group">
					<div class="label"></div>
					<div class="field">

						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼风格图片一：</label>
					</div>
					<div class="field">
						<input type="file" name="image1" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼风格图片二：</label>
					</div>
					<div class="field">
						<input type="file" name="image2" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼风格图片三：</label>
					</div>
					<div class="field">
						<input type="file" name="image3" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼风格图片四：</label>
					</div>
					<div class="field">
						<input type="file" name="image4" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼风格图片五：</label>
					</div>
					<div class="field">
						<input type="file" name="image5" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼风格图片六：</label>
					</div>
					<div class="field">
						<input type="file" name="image6" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼风格图片七：</label>
					</div>
					<div class="field">
						<input type="file" name="image7" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼风格图片八：</label>
					</div>
					<div class="field">
						<input type="file" name="image8" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>婚礼流程主标题：</label>
					</div>
					<input type="text" class="input w50" name="wsfmain"
						data-validate="required:请输入嘉宾人数" />
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼流程副标题：</label>
					</div>
					<input type="text" class="input w50" name="wsfvice"
						data-validate="required:请输入嘉宾人数" />
				</div>
				<div class="form-group">
					<div class="label">
						<label>前言：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wsfforeword" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>流程内容一：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wsfcontents1" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>流程内容二：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wsfcontents2" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>流程内容三：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wsfcontents3" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>流程内容四：</label>
					</div>
					<div class="field">
						<textarea class="input" name="wsfcontents4" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼流程图片1：</label>
					</div>
					<div class="field">
						<input type="file" name="image9" value="浏览上传" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>婚礼流程图片2：</label>
						</div>
						<div class="field">
							<input type="file" name="image10" value="浏览上传"
								style="float:left;">
							<div class="tipss">图片尺寸：500*500</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label>婚礼流程图片3：</label>
							</div>
							<div class="field">
								<input type="file" name="image11" value="浏览上传"
									style="float:left;">
								<div class="tipss">图片尺寸：500*500</div>
							</div>
							<div class="form-group">
								<div class="label">
									<label>婚礼流程图片4：</label>
								</div>
								<div class="field">
									<input type="file" name="image12" value="浏览上传"
										style="float:left;">
									<div class="tipss">图片尺寸：500*500</div>
								</div>
								<div class="form-group">
									<div class="label">
										<label>婚礼流程图片5：</label>
									</div>
									<div class="field">
										<input type="file" name="image13" value="浏览上传"
											style="float:left;">
										<div class="tipss">图片尺寸：500*500</div>
									</div>
									<div class="form-group">
										<div class="label">
											<label>婚礼流程图片6：</label>
										</div>
										<div class="field">
											<input type="file" name="image14" value="浏览上传"
												style="float:left;">
											<div class="tipss">图片尺寸：500*500</div>
										</div>
										<div class="form-group">
											<div class="label">
												<label>婚礼流程图片7：</label>
											</div>
											<div class="field">
												<input type="file" name="image15" value="浏览上传"
													style="float:left;">
												<div class="tipss">图片尺寸：500*500</div>
											</div>
											<div class="form-group">
												<div class="label">
													<label>婚礼流程图片八：</label>
												</div>
												<div class="field">
													<input type="file" name="image16" value="浏览上传"
														style="float:left;">
													<div class="tipss">图片尺寸：500*500</div>
												</div>
												<div class="form-group">
													<div class="label">
														<label>提交</label>
													</div>
													<div class="field">
														<button class="button bg-main icon-check-square-o"
															type="submit">提交</button>
													</div>
												</div>
			</form>
		</div>
	</div>
</body>
</html>
