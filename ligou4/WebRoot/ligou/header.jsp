<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<!DOCTYPE HTML>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>One Piece - Responsive Portfolio &amp; Blog Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link href="<%=basePath %>ligou/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="<%=basePath %>ligou/bootstrap-3.3.7/css/bootstrap-theme.min.css" rel="stylesheet"/>
<link href="<%=basePath %>ligou/css/style.css" type="text/css" rel="stylesheet" media="screen" /> <!-- General style -->
<link href="<%=basePath %>ligou/css/prettyPhoto.css" type="text/css" rel="stylesheet" media="screen"><!-- prettyPhoto -->
<link href="<%=basePath %>ligou/css/tipsy.css" type="text/css" rel="stylesheet" media="screen"><!--tooltip-->
<link href="<%=basePath %>ligou/css/camera.css" type="text/css" rel="stylesheet" media="screen"><!--camera-->
<link href="<%=basePath %>ligou/css/jcarousel.css" type="text/css" rel="stylesheet" media="screen" /> <!-- list_work -->
<link rel="stylesheet" href="<%=basePath %>ligou/css/mosaic.css" type="text/css" media="screen" /><!-- mosaic -->

<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700|Arvo:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<%=basePath %>ligou/js/jquery-1.8.2.min.js"></script>

<script type="text/javascript" src="<%=basePath %>ligou/js/css3-mediaqueries.js"></script><!--mediaqueries-->
<script type="text/javascript" src="<%=basePath %>ligou/js/modernizr-1.7.min.js"></script><!--modernizr-->
<script type="text/javascript" src="<%=basePath %>ligou/js/ddsmoothmenu.js"> </script> <!--menu-->
<script type="text/javascript" src="<%=basePath %>ligou/js/jquery.prettyPhoto.js"></script><!-- prettyPhoto -->
<script type="text/javascript" src="<%=basePath %>ligou/js/jquery.tipsy.js"></script><!--tooltip-->
<script type='text/javascript' src='<%=basePath %>ligou/js/jquery.easing.1.3.js'></script> <!--camera slider-->
<script type='text/javascript' src='<%=basePath %>ligou/js/camera.min.js'></script> <!--camera slider-->
<script type="text/javascript" src="<%=basePath %>ligou/js/jquery.jcarousel.min.js"> </script> <!-- list_work -->
<script type="text/javascript" src="<%=basePath %>ligou/js/mosaic.1.0.1.js"></script> <!-- mosaic -->
<script type="text/javascript" src="<%=basePath %>ligou/js/jquery.quovolver.js"></script><!--blockquote-->
<script type="text/javascript" src="<%=basePath %>ligou/js/custom.js"></script><!--custom-->

<link rel="stylesheet" href="<%=basePath %>ligou/styles/main.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath %>ligou/styles/detail.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath %>ligou/styles/skin/skin_0.css" type="text/css" id="cssfile" />
<link rel="stylesheet" href="<%=basePath %>ligou/styles/thickbox.css" type="text/css" />
<script src="<%=basePath %>ligou/scripts/jquery-1.3.1.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/jquery.cookie.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/nav.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/changeSkin.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/jquery.jqzoom.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/use_jqzoom.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/jquery.thickbox.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/jquery.livequery.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/switchImg.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/tab.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/switchColor.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/sizeAndprice.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/star.js" type="text/javascript"></script>
<script src="<%=basePath %>ligou/scripts/finish.js" type="text/javascript"></script>



<script type="text/javascript" src="<%=basePath %>ligou/tinymce/tinymce.min.js"></script>

<script>
		tinyMCE.init(
			{
				mode:'specific_textareas',
				language:'zh_CN',
				
				}

				);
	function GetTinyMceContent(editorId){
		return tinyMCE.activeEditor.getContent();
	}				
	function SetTinyMceContent(editorId,content){
		tinyMCE.activeEditor.setContent("");
	}
	
	

	
	
		function myformatter(date){
			var y = date.getFullYear();
			var m = date.getMonth()+1;
			var d = date.getDate();
			return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
		}
		function myparser(s){
			if (!s) return new Date();
			var ss = (s.split('-'));
			var y = parseInt(ss[0],10);
			var m = parseInt(ss[1],10);
			var d = parseInt(ss[2],10);
			if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
				return new Date(y,m-1,d);
			} else {
				return new Date();
			}
		}
		
	
	

</script>
<script type="text/javascript" src="<%=basePath %>ligou/js/01.js"></script>


</head>

<body>


	<div id="toTop">&uArr;</div> 
	<div id="loginRegister" >
	<div id="msg">
		
	</div>
	<s:if test="%{#session.user}">
		<ul>
			 <li><a href="<%=basePath %>toregister.action" >
			 欢迎<s:property value="%{#session.user.username}"/>
			 </a></li>
             <li><a href="javascript:void(0)" id="logout" <c:if test="${label==5}">class="current"</c:if>>退出</a></li>
		</ul>
	</s:if>
	<s:else>
		<ul>
			<li><s:property value="%{#session.user.username}"/></li>
			 <li><a href="<%=basePath %>toregister.action" >注册</a></li>
             <li><a href="<%=basePath %>toLogin.action" >登陆</a></li>
		</ul>
		</s:else>
	</div>
	<header>	
	
    	<div id="header_wrap">
        	<!-- <h1 class="logo"><a href="index.html">ligou</a></h1> -->
            <div>
            	<ul class="nav nav-tabs">
                	<li <c:if test="${label==1}">class="active"</c:if>><a href="<%=basePath %>toIndex.action" >首页</a>
                   
                    </li>

                    <li <c:if test="${label==2}">class="active"</c:if>><a href="<%=basePath %>fproductslist.action" >分类服装</a></li>
                   <li <c:if test="${label==3}">class="active"</c:if>><a href="<%=basePath %>news.action" >留言信息</a></li>
                 
                	
            	</ul>
        	</div>
        </div><!--end:header_wrapa-->
    </header><!--end:header-->