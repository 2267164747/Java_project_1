<%@ page language="java" import="java.util.*" import="java.util.List"
	import="com.etc.wedding.dto.WeddingCase" pageEncoding="utf-8"%>
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
		<div class="panel-head">
			<strong class="icon-reorder"> 内容列表</strong> 
		</div>
		<div class="padding border-bottom">
			<ul class="search" style="padding-left:10px;">
				<li><a class="button border-main icon-plus-square-o"
					href="<%=basePath%>Admin/backone/Saddexample.jsp"> 添加内容</a></li>
			</ul>
			<table class="table table-hover text-center">
				<tr>
					<th width="60" style="text-align:left; padding-left:20px;">ID</th>
					<th width="100">婚礼主题</th>
					<th width="300">婚礼案例简介</th>
					<th width="200">婚礼描述</th>
					<th width="100">参加人数</th>
					<th width="100">婚礼场地</th>
					<th width="100">婚礼标签</th>
					<th width="200">操作</th>
				</tr>
				<%    List<WeddingCase>list=(ArrayList<WeddingCase>)request.getAttribute("list");
				for(int i=0;i<list.size();i++){
					WeddingCase wc=list.get(i);
					int wcid=wc.getWcid();
					String wcmain=wc.getWcmain();
					String wcintroduction=wc.getWcintroduction();
					String wcdesign=wc.getWcdesign();
					int count=wc.getWccount();
					String ground=wc.getWcground();
					String label=wc.getWclabel();
				%>
				<tr>
					<td style="text-align:left; padding-left:20px;" font color="#00CC99"><%=wcid %></td>
					<td><%=wcmain %></td>
					<td><%=wcintroduction %></td>
					<td><%=wcdesign %></td>
					<td><%=count %></td>
					<td><%=ground %></td>
					<td><%=label %></td>
					<td>
						<div class="button-group">
							<a class="button border-main" href="updateCaseServ?wcid=<%=wcid %>"> <span
								class="icon-edit"></span> 显示详情
							</a> <a class="button border-red" href="javascript:void(0)"
								onclick="return del(<%=wcid %>)"> <span class="icon-trash-o"></span>
								删除
							</a>
						</div>
					</td>
				</tr>
				<%} %>
				
			</table>
		</div>
		<script type="text/javascript">
			//搜索
			function changesearch() {

			}

			//单个删除
			function del(wcid) {
				if (confirm("您确定要删除本案例及其所属的图片吗?")) {
					window.location.href="SdeleteCaseServ?wcid="+wcid;
				}
			}

		</script>
</body>
</html>
