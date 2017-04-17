<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>

<jsp:include page="../header.jsp"></jsp:include>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

        <div class="span9">
        <div class="row-fluid">
			<div class="page-header">
				<h1>产品信息&nbsp;&nbsp;<small><a href="toaddproduct.action">添加产品信息</a></small></h1>
			</div>
	
		<table  class="gridtable">
		<tr><th>id</th><th>产品名称</th><th>产品介绍</th><th>单价</th><th>记录日期</th><th>操作</th></tr>
		
		        	<s:iterator var="product" value="productList">
        <tr><td><s:property value="id"/></td>
        <td><s:property value="productname"/></td>
        <td><s:property value="introduce"/></td>
        <td><s:property value="price"/></td>
        <td><s:date name="date" format="yyyy-MM-dd HH:mm:ss"/></td>
        <td><a href="">详细</a>&nbsp;|&nbsp;<a href="">删除</a>&nbsp;|&nbsp;<a href="">更改</a></td>
        </tr>    	
                	
     
			</s:iterator>   
		</table>			
			     <ul class="pagination">
            	  <li class="page">第 <s:property value="page"/> 页/ <s:property value="totalPage"/> 页/ <s:property value="totalItem"/> 条</li>
            	  <s:if test="page gt 1"><li><a href="productlist.action?page=<s:property value="page-1"/>">&laquo;</a></li></s:if>
                  
                  
                  
                  <s:iterator begin="1" end="totalPage" var="p">
                  <li <s:if test="page eq #p">class="active"</s:if>><a href="productlist.action?page=<s:property value="#p"/>"  ><s:property value="#p"/></a></li>
                  </s:iterator>
                  <s:if test="page lt totalPage"><li><a href="productlist.action?page=<s:property value="page+1"/>">&raquo;</a></li></s:if>
            	</ul>
          
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>