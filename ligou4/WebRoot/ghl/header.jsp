<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Admin | Strass</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Admin panel developed with the Bootstrap from Twitter.">
    <meta name="author" content="travis">

    <link href="<%=basePath %>ghl/css/bootstrap.css" rel="stylesheet">
	<link href="<%=basePath %>ghl/css/site.css" rel="stylesheet">
    <link href="<%=basePath %>ghl/css/bootstrap-responsive.css" rel="stylesheet">
    <script type="text/javascript" src="<%=basePath %>ghl/js/jquery-1.9.1.min.js"></script> 
   <script type="text/javascript" src="<%=basePath %>ghl/js/jQuery.print.js"></script>   

<script type="text/javascript" src="<%=basePath %>ghl/js/02.js"></script> 

   


  <script type="text/javascript" src="<%=basePath %>ghl/tinymce/tinymce.min.js"></script>
<script>
	/*	tinyMCE.init(
			{
				mode:'specific_textareas',
				language:'zh_CN',
				
				}

				);*/
/*	function GetTinyMceContent(editorId){
		return tinyMCE.activeEditor.getContent();
	}				
	function SetTinyMceContent(editorId,content){
		tinyMCE.activeEditor.setContent("dfre");
	}*/
</script> 

  </head>
  <body>
  
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">网站后台管理系统</a>
          <div class="btn-group pull-right">
			<a class="btn" href="my-profile.html"><i class="icon-user"></i> Admin</a>
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
			  <li><a href="my-profile.html">修改个人信息</a></li>
              <li class="divider"></li>
              <li><a href="#">退出</a></li>
            </ul>
          </div>
          <div class="nav-collapse">
            <ul class="nav">
			<li><a href="tobcommoninfo.action">首页</a></li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">用户 <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="new-user.html">添加用户</a></li>
					<li class="divider"></li>
					<li><a href="users.html">管理用户</a></li>
				</ul>
			  </li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">角色管理<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="new-role.html">添加角色</a></li>
					<li class="divider"></li>
					<li><a href="roles.html">管理角色</a></li>
				</ul>
			  </li>
			  <li><a href="stats.html">状态</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header"><i class="icon-wrench"></i>用户信息</li>
              <li class="active"><a href="users.html">用户</a></li>
              <li><a href="roles.html">角色</a></li>
              <li class="nav-header"><i class="icon-signal"></i>数据统计</li>
              <li><a href="stats.html">xxx</a></li>
              <li><a href="user-stats.html">xxx</a></li>
              
              <li class="nav-header"><i class="icon-user"></i>个人信息</li>
              <li><a href="my-profile.html">我的个人信息</a></li>
              
			<li class="nav-header"><i class="icon-edit"></i>订单</li>
              <li><a href="deallist.action">订单信息</a></li>
            <li class="nav-header"><i class="icon-edit"></i>顾客</li>
              <li><a href="customerlist.action">顾客信息</a></li>  
			<li class="nav-header"><i class="icon-edit"></i>销售人员</li>
              <li><a href="salepersonlist.action">销售人员信息</a></li>
              <li class="nav-header"><i class="icon-edit"></i>产品</li>
              <li><a href="productlist.action">产品信息</a></li>
			  <li><a href="javascript:void(0)">退出</a></li> 
            </ul>
          </div>
        </div>