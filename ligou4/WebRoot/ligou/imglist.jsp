<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>

<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<div id="page_wrap">
    	
      
        <div class="container">
        	<section class="content">
     
		<s:debug></s:debug>
        </div><!--end:container-->
       
    </div><!--end:page_wrap-->
     <jsp:include page="footer.jsp"/>