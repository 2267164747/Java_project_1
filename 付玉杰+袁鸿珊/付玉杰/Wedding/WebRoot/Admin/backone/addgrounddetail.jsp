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
<base href="<%=basePath%>">
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
		<form method="post" class="form-x"
			action="AddGroundDetailServ?wgid=${wgid}"
			enctype="multipart/form-data">
			<div class="panel-head" id="add">
				<strong><span class="icon-pencil-square-o"></span>增加宴会厅1</strong>
			</div>
			<div class="body-content">

				<div class="form-group">
					<div class="label">
						<label>名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhname1" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>桌数：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhcount1" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>面积：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bharea1" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>柱子：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhpillar1" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>楼层：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhfloor1" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>厅高：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhheight1" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>图片：</label>
					</div>
					<div class="field">
						<input type="file" name="bhpic1" style="float:left;">
						<div class="tipss">图片尺寸：500*500</div>
					</div>
				</div>
				<div class="panel-head" id="add">
					<strong><span class="icon-pencil-square-o"></span>增加宴会厅2</strong>
				</div>
				<div class="body-content">

					<div class="form-group">
						<div class="label">

							<label>名称：</label>
						</div>
						<div class="field">
						<input type="text" class="input w50" name="bhname2" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>桌数：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhcount2" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>面积：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bharea2" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>柱子：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhpillar2" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>楼层：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhfloor2" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">

						<label>厅高：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="bhheight2" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>图片：</label>
					</div>
					<div class="field">
						<input type="file" name="bhpic2" style="float:left;">
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
							<input type="text" class="input w50" name="dsname" />
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>信息一：</label>
						</div>
						<div class="field">
							<textarea class="input" name="dsmessage1" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>信息二：</label>
						</div>
						<div class="field">
							<textarea class="input" name="dsmessage2" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>信息三：</label>
						</div>
						<div class="field">
							<textarea class="input" name="dsmessage3" style=" height:90px;"></textarea>
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
							<textarea class="input" name="bcstory" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>仪式亮点：</label>
						</div>
						<div class="field">
							<textarea class="input" name="bcrite" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>迎宾亮点：</label>
						</div>
						<div class="field">
							<textarea class="input" name="bcmeeting" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>婚宴亮点：</label>
						</div>
						<div class="field">
							<textarea class="input" name="bcwedding" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>特色推荐：</label>
						</div>
						<div class="field">
							<textarea class="input" name="bcrecommend" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>

					<div class="panel-head" id="add">
						<strong><span class="icon-pencil-square-o"></span>独家优惠</strong>
					</div>
					<div class="form-group">
						<div class="label">

							<label>名称1：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="wgdname1" />
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label>内容1：</label>
						</div>
						<div class="field">
							<textarea class="input" name="wgdcontents1" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">

							<label>名称2：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="wgdname2" />
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label>内容2：</label>
						</div>
						<div class="field">
							<textarea class="input" name="wgdcontents2" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">

							<label>名称3：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="wgdname3" />
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label>内容3：</label>
						</div>
						<div class="field">
							<textarea class="input" name="wgdcontents3" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">

							<label>名称4：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="wgdname4" />
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label>内容4：</label>
						</div>
						<div class="field">
							<textarea class="input" name="wgdcontents4" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">

							<label>名称5：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="wgdname5" />
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label>内容5：</label>
						</div>
						<div class="field">
							<textarea class="input" name="wgdcontents5" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">

							<label>名称6：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="wgdname6" />
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label>内容6：</label>
						</div>
						<div class="field">
							<textarea class="input" name="wgdcontents6" style=" height:90px;"></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">

							<label>名称7：</label>
						</div>
						<div class="field">
							<input type="text" class="input w50" name="wgdname7" />
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label>内容7：</label>
						</div>
						<div class="field">
							<textarea class="input" name="wgdcontents7" style=" height:90px;"></textarea>
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
				</div>
			</div>
		</form>
	</div>

</body>
</html>
