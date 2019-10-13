<%@ page language="java" import="java.util.*" 
import="java.util.List" 
import="com.etc.wedding.dto.Picture"
import="com.etc.wedding.dto.WeddingCase" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
			<strong><span class="icon-pencil-square-o"></span>案例列表详情</strong>
		</div>
		<div class="body-content">
		<%
		WeddingCase wc=(WeddingCase)request.getAttribute("wc");
		List<Picture> list=(List<Picture>)request.getAttribute("piclist");	
		int wcid=wc.getWcid();
		String introduction=wc.getWcintroduction();
		String design=wc.getWcdesign();
		int count=wc.getWccount();
		String color=wc.getWccolor();
		String main=wc.getWcmain();
		String ground=wc.getWcground();
		String label=wc.getWclabel();
		String vice=wc.getWcvice();
		Date wedding_date=wc.getWcwedding_date();
		Picture pc1=list.get(0);
		int pcid1=pc1.getPid();
		Picture pc2=list.get(1);
		int pcid2=pc2.getPid();
		Picture pc3=list.get(2);
		int pcid3=pc3.getPid();
		Picture pc4=list.get(3);
		int pcid4=pc4.getPid();
		Picture pc5=list.get(4);
		int pcid5=pc5.getPid();
		Picture pc6=list.get(5);
		int pcid6=pc6.getPid();
		Picture pc7=list.get(6);
		int pcid7=pc7.getPid();
		 %>
			<form action="<%=basePath%>SupdateCaseServ2?wcid=<%=wcid %>" method="post"
				enctype="multipart/form-data" class="form-x">
				<div class="form-group">
					<div class="label">
						<label>案例简介：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="introduction"
							data-validate="required:请输入嘉宾人数" value="<%=introduction %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>描述：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="design"
							data-validate="required:请输入嘉宾人数" value="<%=design%>"/>
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>嘉宾人数：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="count"
							data-validate="required:请输入嘉宾人数" value="<%=count %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>色系</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="color"
							data-validate="required:请输入嘉宾人数"  value="<%=color%>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>主标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"  name="main"
							data-validate="required:请输入标题" value="<%=main %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>副标题：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50"  name="vice"
							data-validate="required:请输入标题" value="<%=vice %>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>场地：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="ground"
							data-validate="required:请输入标题" value="<%=ground%>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>标签</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="label"
							data-validate="required:请输入嘉宾人数" value="<%=label%>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼日期：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="wedding_date"
							data-validate="required:婚礼日期" value="<%=wedding_date%>"/>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼案例图片一：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid1 %>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>
				
				<div class="form-group">
					<div class="label">
						<label>婚礼案例图片二：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid2 %>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>婚礼案例图片三：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid3 %>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼案例图片四：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid4 %>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>
					<div class="form-group">
						<div class="label">
							<label>婚礼案例图片五：</label>
						</div>
						<div class="field">
							<td rowspan="2" align="center" width="200px"><img
								src="ImageServ?pcid=<%=pcid5 %>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
						</div>
					</div>
				<div class="form-group">
					<div class="label">
						<label>婚礼案例图片六：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid6 %>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div
				<div class="form-group">
					<div class="label">
						<label>婚礼案例图片七：</label>
					</div>
					<div class="field">
						<td rowspan="2" align="center" width="200px"><img
							src="ImageServ?pcid=<%=pcid7 %>" alt="此处为一葫芦娃" title="葫芦兄弟1" /></td>
					</div>
				</div>
				<div class="form-group">
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">修改</button>
					</div>
					<div class="field"><a href="updateImg.jsp" >修改图片</a></div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
