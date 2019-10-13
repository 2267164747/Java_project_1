<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="Admin/backone/css/pintuer.css">
<link rel="stylesheet" href="Admin/backone/css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript">
 function dele(wgid) {
	var con = confirm('是否删除此项？');
	if(con){
		window.location.href='DeleGroundServ?wgid='+wgid;
	}
}
</script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder">&nbsp;&nbsp;场地列表</strong>
   &nbsp;&nbsp;<a href="Admin/backone/Saddground.jsp" class="button border-blue">
      <span class="icon-pencil-square-o"></span>添加场地</a></div>
  <table class="table table-hover text-center">
    <tr>
      <th width="20%">图片</th>
      <th width="15%">名称</th>
      <th width="30%">地址</th>
      <th width="10%">价格</th>
      <th width="25%">操作</th>
    </tr>
   <c:forEach var="wg" items="${list}">
    <tr>
      <td><img src="<%=basePath%>GroundImgServ?type=ground&wgid=${wg.wgid}" alt="" width="120" height="50" /></td>     
      <td>${wg.wgbname}</td>
      <td>${wg.wgaddress}</td>
      <td>${wg.wgprice}元/桌</td>
      <td><div class="button-group">
      <a href="AllGroundServ?wgid=${wg.wgid}" class="button border-blue">
      <span class="icon-pencil-square-o"></span>修改</a>
      <a class="button border-red" href="javascript:void(0);" onclick="dele(${wg.wgid})">
      <span class="icon-trash-o"></span> 删除</a>
      </div></td>
    </tr>
    </c:forEach>
  </table>
</div>