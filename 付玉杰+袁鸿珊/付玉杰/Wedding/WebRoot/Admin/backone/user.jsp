<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
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
    function dele(huid) {
		var con = confirm('确定要删除此项吗？');
		if(con){
			window.location.href="DeleAdminServ?type=singlechoice&huid="+huid;
		}
	}
    function checkAll() {
    	var all = document.getElementById("checkall");
    	var sel = document.getElementsByName("sele");
    	if(all.checked){
    		for(var i = 0 ; i <sel.length ; i++){
    			sel[i].checked = true;
    		}
    	}else{
    		for(var i = 0 ; i <sel.length ; i++){
    			sel[i].checked = false;
    		}
    	}
		
	}
    function deleSele() {
    	var con = confirm("确定要删除所选记录吗？");
    	if(con){
    		var sele = document.getElementsByName("sele");
    		var str="";
    		for(var i = 0 ; i <sele.length ; i++){
    			if(sele[i].checked){
    				str =str+sele[i].value+',';
    			}
    		}
    		location.href="DeleAdminServ?type=choicedelete&str="+str;
    	}
    	
    }
    </script>
</head>
<body>
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">用户管理</strong></div>
    <div class="padding border-bottom">
      <ul class="search">
        <li>
        <input type="checkbox" id="checkall"/>
          <button type="button"  class="button border-green" id="" onclick="checkAll()"> 全选</button>
          <button type="button" class="button border-red" onclick="deleSele()"><span class="icon-trash-o"></span> 批量删除</button>
        </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="120">ID</th>
        <th width="20%">用户名</th>       
        <th>真实姓名</th>
        <th>电话</th>
        <th>QQ</th>
        <th>操作</th>       
      </tr> 
      <c:forEach var="hu" items="${list}">  
      <tr>
          <td><input type="checkbox" name="sele" value="${hu.huid}"/>${hu.huid}</td>
     	  <td>${hu.huuname}</td> 
     	  <td>${hu.huname}</td> 
          <td>${hu.huphone}</td>
          <td>${hu.huqq}</td>
          <td><div class="button-group"> <a class="button border-red" href="" onclick="dele(${hu.huid})"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr> 
        </c:forEach>  
      </table>
      </div>
