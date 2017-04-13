<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="header.jsp"></jsp:include>
        <div class="span9">
          <div class="well hero-unit">
       
    
					
						
							
					
								  <table class="gridtableproductsimg">
								  <tr>
											<th>编号</th><th>商品图片</th><th>操作</th>
										</tr>
										<s:iterator value="products.imgList">
										<tr>
										<td><s:property value="id"/></td>
											<td><img src="<%=basePath %>/admin/img/<s:property value="products.id"/>/<s:property value="imgname"/><s:property value="suffix"/>"/></td>
											<td><a href="deleteProductsImg.action?id=<s:property value="id"/>&imgname=<s:property value="imgname"/>&productsid=<s:property value="products.id"/>&suffix=<s:property value="suffix"/>">删除</a> </td>
											
										</tr>
										</s:iterator>
								  
										</table>
								
								
								
						
					
          </div>
    
		
        </div>
     <jsp:include page="footer.jsp"></jsp:include>