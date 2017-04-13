<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <div class="span9">
         <div class="well hero-unit">
			
		<table  class="gridtable">
		<tr><th>编号</th><th>标题</th><th>操作</th></tr>
		<s:iterator value="productslist" status="s">
			<tr>
				<td><s:property value="id"/></td><td><s:property value="productsname"/></td><td><a href="toproductsimg.action?id=<s:property value="id"/>">添加图片</a>|<a href="productsImgList.action?productsid=<s:property value="id"/>">图片列表</a>|<a id="delete" href="productsdelete.action?id=<s:property value="id"/>">删除</a></td>
			</tr>
		</s:iterator>
		
		</table>
			
		
		
			
			
		  </div>
    
		
        </div>
     <jsp:include page="footer.jsp"/>
     	