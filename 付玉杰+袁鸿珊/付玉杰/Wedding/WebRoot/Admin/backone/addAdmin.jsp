<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <title>网站信息</title>  
    <link rel="stylesheet" href="Admin/backone/css/pintuer.css">
    <link rel="stylesheet" href="Admin/backone/css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script> 
    <script type="text/javascript">
   function checkuname(){
	   var name=$("#url1").val();
	   $.ajax({
			 type: "get",
			 url: "<%=basePath%>AddAdminServ",
			 data: "uname=" + name,
			 success: function(msg){
			  		$("#getname").html(msg);
					 }
	   });
	
}
   function checkpwd() {
	var pwd1 = $("#pwd1").val();
	var pwd2 = $("#pwd2").val();
	if(pwd1==pwd2){
		return true;
	}else{
		alert('两次输入的密码不一致！');
		return false;
	}
}
    </script> 
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>添加管理员</strong></div>
  <form method="post" class="form-x" action="AddAdminServ" onsubmit="return window.checkpwd()">
  <div class="body-content">
      <div class="form-group">
        <div class="label">
          <label>管理员名：</label>
        </div>
        <div class="field">
          <input type="text" id="url1" name="uname" onblur="checkuname()"  class="input tips" style="width:25%; float:left;" data-toggle="hover" data-place="right" />
        <span id="getname" style="float:left; color:red; margin: 10px 0 0 20px"></span>
        </div>
      </div>
         <div class="form-group">
        <div class="label">
          <label for="sitename">密码：</label>
        </div>
        <div class="field">
          <input type="password" id="pwd1" class="input w50" name="pwd" size="50" placeholder="请输入密码" data-validate="required:请输入密码,length#>=5:密码不能小于5位" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认密码：</label>
        </div>
        <div class="field">
          <input type="password" id="pwd2" class="input w50" name="pwd2" size="50" placeholder="请再次输入密码" data-validate="required:请再次输入密码,repeat#pwd2:两次输入的密码不一致" />          
        </div>
      </div>
     </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
</div>
</body></html>