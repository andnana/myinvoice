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

    <link href="<%=basePath %>admin/css/bootstrap.css" rel="stylesheet">
	<link href="<%=basePath %>admin/css/site.css" rel="stylesheet">
    <link href="<%=basePath %>admin/css/bootstrap-responsive.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
window.UEDITOR_HOME_URL = "<%=basePath %>/admin/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
</script>
    <script type="text/JavaScript" charset="utf-8" src="<%=basePath %>admin/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath %>admin/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath %>admin/ueditor/lang/zh-cn/zh-cn.js"></script>
<link href="<%=basePath %>admin/ueditor/themes/default/css/ueditor.css" type="text/css" rel="stylesheet">

</link>
<script src="<%=basePath %>admin/ueditor/third-party/codemirror/codemirror.js" type="text/javascript" defer="defer">

</script>
<link rel="stylesheet" type="text/css" href="<%=basePath %>admin/ueditor/third-party/codemirror/codemirror.css">

</link>
<script src="<%=basePath %>admin/ueditor/third-party/zeroclipboard/ZeroClipboard.js" type="text/javascript" defer="defer">

</script>
  <script type="text/javascript" src="<%=basePath %>admin/tinymce/tinymce.min.js"></script>
<script>
		/*tinyMCE.init(
			{
				mode:'specific_textareas',
				language:'zh_CN',
				
				}

				);*
/*	function GetTinyMceContent(editorId){
		return tinyMCE.activeEditor.getContent();
	}				
	function SetTinyMceContent(editorId,content){
		tinyMCE.activeEditor.setContent("dfre");
	}*/
</script>  
<script type="text/javascript" src="<%=basePath %>admin/js/02.js"></script> 
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
              <li class="nav-header"><i class="icon-wrench"></i>用户管理</li>
              <li class="active"><a href="users.html">用户</a></li>
              <li><a href="roles.html">角色</a></li>
              <li class="nav-header"><i class="icon-signal"></i>数据统计</li>
              <li><a href="stats.html">访问量</a></li>
              <li><a href="user-stats.html">用户</a></li>
              
              <li class="nav-header"><i class="icon-user"></i>修改个人信息</li>
              <li><a href="my-profile.html">修改我的个人信息</a></li>
              <li><a href="#">设置</a></li>
			  <li class="nav-header"><i class="icon-edit"></i>基本信息</li>
              <li><a href="tobcommoninfo.action">添加基本信息</a></li>
              <li><a href="commoninfolist.action">更改基本信息</a></li>
			  <li><a href="adminslide.action">幻灯片图片</a></li>
			  
			   <li class="nav-header"><i class="icon-edit"></i>留言</li>
              <li><a href="adminnews.action">管理留言</a></li>
			  <!-- <li><a href="toaddnews.action">添加留言</a></li> -->
			  <li class="nav-header"><i class="icon-edit"></i>商品信息</li>
              <li><a href="bproductslist.action">管理商品信息</a></li>
			  <li><a href="toaddproducts.action">添加商品信息</a></li>
			  <li class="nav-header"><i class="icon-edit"></i>联系我们</li>
              <li><a href="javascript:void(0)">联系我们</a></li>
			  <li><a href="javascript:void(0)">退出</a></li> 
            </ul>
          </div>
        </div>