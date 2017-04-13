<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<jsp:include page="header.jsp"></jsp:include>


	<div id="page_wrap">
    	
        <div class="container">
        	<section class="content">
            	<h3>公司地理位置</h3>
                <div id="map_canvas"><iframe width="633" height="552" frameborder="2" marginheight="10" marginwidth="10" scrolling="yes" src="<%=basePath %>ligou/map.html">  </iframe> </div>
               
                
                <p>公司地址：<s:property value="commonInfo.address"/></p>
                <br><br>
                 <p> 热线电话：<s:property value="commonInfo.hotline"/><br><br></p>
		          <p>邮编：<s:property value="commonInfo.zipcode"/><br><br> </p>
			 点击图片qq邮我：<s:property escape="false" value="commonInfo.emailme"/>
                      
                     
                   
            </section><!--end:content-->
            <%@include file="sidebar.jsp" %>
        </div><!--end:container-->
        
    </div><!--end:page_wrap-->
    <jsp:include page="footer.jsp"></jsp:include>
   