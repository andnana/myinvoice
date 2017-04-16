<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title></title>
			<link href="<%=basePath %>ghl/css/site.css" rel="stylesheet">
				<script type="text/javascript" src="<%=basePath %>ghl/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>ghl/js/jQuery.print.js"></script>
	<script type="text/javascript">
		$(function(){
			//打印
			$(":submit").bind("click",function(event){
				$("#printdiv").print({ noPrintSelector: ":submit"});
			});
		});
	</script>
	</head>

	<body>
		
		  <div id="printdiv">
    	<div id="invoicepagetop">
    	<div id="logo">
    	<img src="<%=basePath %>ghl/img/GHLlogo.png" />
    	</div>
    	 <div id="invoicepagemyinfo">
    	 <p>Address:14/16 Badejo Kalesanwo Street,Matori,mushin,lagos</p>
    	 <p>Tel:080/78158888 080/781688888 Email:115647659@qq.com</p>
    	 </div>
    	<span class="clearboth"></span>
    	</div>
    	 <input type="submit" class="btn btn-default btn-large" value="打印" /> 
    </div>
	</body>
	
</html>