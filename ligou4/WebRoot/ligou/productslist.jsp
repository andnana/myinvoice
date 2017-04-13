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
     
	
		<div>
		<form action="fproductslist.action" method="post">
		<input type="hidden"  value="<s:property value="whereStr.brand"/>" id="brand" name="whereStr.brand"/>
		<input type="hidden"  value="<s:property value="whereStr.cost"/>" id="cost" name="whereStr.cost" />
		<ul class="breadcrumb">
		<li>&nbsp;&nbsp;已选择</li>
		<s:if test="whereStr.brand!=''">	<li class="brand-msg"><s:property value="whereStr.brand"/></li></s:if>
		<s:if test="whereStr.cost!=''"><li class="cost-msg"><s:property value="whereStr.cost"/></li></s:if>
		</ul>
	        <ul class="breadcrumb">
	        <li>选择品牌</li>
	        	<s:iterator value="brandSortList">
	        		<li><s:property value="brandname"/></li>
	        	</s:iterator>
	        	
	        	
	        </ul>
	        <ul class="breadcrumb">
	        <li>选择价格</li>
	        <s:iterator value="costSortList">
	        		<li><s:property value="begincost"/>-<s:property value="endcost"/></li>
	        	</s:iterator>
	        </ul>
	        </form>
        </div>
            	    <div id="productslistcontainer">
             		<div class="row">
             		 
            	  <s:iterator value="productsList" status="s"> 
            		 <div class="col-lg-4">
            	  	<a href="productsdetail.action?productsid=<s:property value="id" />" style="text-align:center;display:block;">
            	  		<img src="<%=basePath %>pic_products/<s:property value="imgname"/>" alt="" />
            	  	</a>
            	  	<a href="productsdetail.action?productsid=<s:property value="id" />" style="text-align:center;display:block;">
            	  		<span style="display:block;"><s:property value="productsname"/></span>
            	  	</a>
            	  
            		  <span style="text-align:center;display:block;">
            	  			<s:property value="beforemoney"/>元
            	  		</span>
            	 	</div>
            	  <s:if test="#s.getCount() % 3 ==0 && !#s.isLast()"></div><div class="row"></s:if>
            	  <s:if test="#s.isLast()"></div></s:if>
            	  </s:iterator>  
            	    
            	    </div>
          
                    
		
          
            </section><!--end:content-->
            <%@include file="sidebar.jsp" %>
            
        </div><!--end:container-->
       
    </div><!--end:page_wrap-->
     <jsp:include page="footer.jsp"/>