<%@ page language="java" import="java.util.*,java.util.List"
import="com.etc.wedding.dto.WeddingDress" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
					href="<%=basePath%>Admin/backone/Saddclothes.jsp"> 添加内容</a></li>
			</ul>
			<table class="table table-hover text-center">
				<tr>
					<th width="60" style="text-align:left; padding-left:20px;">ID</th>
					<th width="150">婚纱主题</th>
					<th width="150">系列名称</th>
					<th width="100">价格</th>
					<th width="100">色彩</th>
					<th width="300">介绍</th>
					<th width="200">操作</th>
				</tr>
				<%//并没有改   
				 List<WeddingDress>list=(ArrayList<WeddingDress>)request.getAttribute("listWD");
				for(int i=0;i<list.size();i++){
					WeddingDress wd=list.get(i);
					int wdid=wd.getWdid();
					String wdname=wd.getWdname();
					String wdseries=wd.getWdseries();
					int wdprice=wd.getWdprice();
					String wdcolor=wd.getWdcolor();
					String wdintroduction=wd.getWdintroduction();
				%>
				<tr>
					<td style="text-align:left; padding-left:20px;" font color="#00CC99"><%=wdid %></td>
					<td><%=wdname %></td>
					<td><%=wdseries %></td>
					<td><%=wdprice %></td>
					<td><%=wdcolor %></td>
					<td><%=wdintroduction %></td>
					<td>
						<div class="button-group">
							<a class="button border-main" href="SupdateDressServ?wdid=<%=wdid %>"> <span
								class="icon-edit"></span> 显示详情
							</a> <a class="button border-red" href="javascript:void(0)"
								onclick="return del(<%=wdid %>)"> <span class="icon-trash-o"></span>
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
			function del(wdid) {
				if (confirm("您确定要删除本婚纱项目及其所属的图片吗?")) {
					window.location.href="SdeleteDressServ?wdid="+wdid;
				}
			}

		</script>
</body>
</html>
