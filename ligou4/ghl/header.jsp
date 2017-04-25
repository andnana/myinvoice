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

   





  </head>
  <body>
  
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          
          <a class="brand" href="#">订单发票管理系统</a>
         
     
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
            <s:if test="#session.user.issuper eq 1">
              <li class="nav-header"><i class="icon-wrench"></i>用户信息</li>
              <li <s:if test="active eq 'user'">class="active"</s:if>><a href="userlist.action">用户</a></li>
              
              <li class="nav-header"><i class="icon-signal"></i>数据统计</li>
              <li><a href="stats.html">xxx</a></li>
              <li><a href="user-stats.html">xxx</a></li>
              </s:if>
              <li class="nav-header"><i class="icon-user"></i>个人信息</li>
              <li><a href="personal.action?userid=<s:property value="#session.user.id" />">我的个人信息</a></li>
              
			<li class="nav-header"><i class="icon-edit"></i>订单</li>
              <li <s:if test="active eq 'deal'">class="active"</s:if>><a href="deallist.action">订单信息</a></li>
            <li class="nav-header"><i class="icon-edit"></i>顾客</li>
              <li <s:if test="active eq 'customer'">class="active"</s:if>><a href="customerlist.action">顾客信息</a></li>  
			<li class="nav-header"><i class="icon-edit"></i>销售人员</li>
              <li <s:if test="active eq 'saleperson'">class="active"</s:if>><a href="salepersonlist.action">销售人员信息</a></li>
              <li class="nav-header"><i class="icon-edit"></i>产品</li>
         
              <li <s:if test="active eq 'product'">class="active"</s:if>><a href="productlist.action">产品信息</a></li>
			  <li><a href="logout.action">退出</a></li> 
            </ul>
          </div>
        </div>