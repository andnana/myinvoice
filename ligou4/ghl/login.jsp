<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>发票管理系统</title>
<!-- Custom Theme files -->
<link href="<%=basePath %>ghl/css/login.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->

<!--Google Fonts-->
</head>
<body>
<!--login form start here-->
<h1>发票管理系统</h1>
<div class="login">
	    <div class="rib"> </div>
	    <form action="<%=basePath %>login.action" method="post">
			<input type="text" name="user.username" value="用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}">
			<input type="password" name="user.password" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}">
			<input type="submit" value="登录" >
	    </form>
</div>
<div class="copyright">
	<p>公司专用<a href="http://xxxxxxx.com/" target="_blank">xxxxxxx</a></p>
</div>
<!--login form end here-->	
</body>
</html>