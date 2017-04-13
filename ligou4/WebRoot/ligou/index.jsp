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
          
        <div class="jumbotron">
        	<h1>立够服装</h1>
        	<p>方便，精美，时尚的品位。</p>
        </div>
      
    	
       
        

        
  </div>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
