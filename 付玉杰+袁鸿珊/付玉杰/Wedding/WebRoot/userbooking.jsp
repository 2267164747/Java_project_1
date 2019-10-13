<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>鹤望兰官网，婚礼定制，婚庆公司，婚礼策划，北京服务最好的公司</title>
<link rel="stylesheet" type="text/css" href="css/userbooking.css" />
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<!--<script type="text/javascript" src="js/jiage.js"></script>-->
<script type="text/javascript">
			window.onload = function() {
	        $(document).snowfall('clear');
	        $(document).snowfall({
	            image: "img/huaban.png",
	            flakeCount:30,
	            minSize: 5,
	            maxSize: 22
	        });
	       
			};
		</script>
		<script type="text/javascript">
</script>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="a1">
		<div class="a11">
			<span id="sp1"><font color="#AAAAAA" size="4px">网站首页>个人中心>预约订单</font></span>
		</div>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 订单列表</strong></div>
  <table class="table table-hover text-center">
    <tr>
      <th width="10%">订单号</th>
      <th width="20%">图片</th>
      <th width="15%">名称</th>
      <th width="20%">描述</th>
      <th width="20%">预约日期</th>
      <th width="15%">操作</th>
    </tr>
   <c:forEach var="re" items="${list}" varStatus="id">
   
    <tr>
      <td>${id.index+1}</td>     
      <td><img src="GroundImgServ?type=ground&wgid=${re.wgid}" alt="" width="120" height="50" /></td>     
      <td>${re.wgname}</td>
      <td>${re.remark}</td>
      <td>${re.rdate}</td>
      <td><div class="button-group">
      <a class="button border-red" href="javascript:void(0)" onclick="return dele() "><span class="icon-trash-o"></span> 取消订单</a>
      </div></td>
    </tr>
    </c:forEach>
    
  </table>
</div>

	
	</div>
	
	<jsp:include page="foot.jsp"></jsp:include>
</body>

</html>


