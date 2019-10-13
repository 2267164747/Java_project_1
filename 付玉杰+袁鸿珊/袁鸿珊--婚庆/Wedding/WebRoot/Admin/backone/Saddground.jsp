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
			<strong><span class="icon-pencil-square-o"></span>增加婚礼场地</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="" enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>场地名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>	
				</div>
				<div class="form-group">
					<div class="tips"></div>
					<div class="label">
						<label>场地类型：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
								<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>场地说明：</label>
					</div>
					<div class="field">
						<textarea class="input" name="introduce" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>地址：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>详细地址：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">

						<label>价格：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>场地图片：</label>
					</div>
					<div class="field">
						<input type="file" name="image1" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="panel-head" id="add">
					<strong><span class="icon-pencil-square-o"></span>增加婚礼宴会厅</strong>
				</div>
				<div class="form-group">
					<div class="label">

						<label>名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>桌数：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>面积：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>柱子：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>楼层：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>厅高：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>图片：</label>
					</div>
					<div class="field">
						<input type="file" name="image2" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="panel-head" id="add">
					<strong><span class="icon-pencil-square-o"></span>宴会餐标</strong>
				</div>
				<div class="form-group">
					<div class="label">
						<label>名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>信息一：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>信息二：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>信息三：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>

				<div class="panel-head" id="add">
					<strong><span class="icon-pencil-square-o"></span>品牌特色</strong>
				</div>
				<div class="form-group">
					<div class="label">
						<label>品牌故事：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>仪式亮点：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>迎宾亮点：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚宴亮点：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>特色推荐：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>

				<div class="panel-head" id="add">
					<strong><span class="icon-pencil-square-o"></span>独家优惠</strong>
				</div>
				<div class="form-group">
					<div class="label">

						<label>名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="num"
							data-validate="required:请输入嘉宾人数" />
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>内容：</label>
					</div>
					<div class="field">
						<textarea class="input" name="design" style=" height:90px;"></textarea>
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
