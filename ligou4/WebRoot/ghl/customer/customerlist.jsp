<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="../header.jsp"></jsp:include>
<script type="text/javascript" >
var URL = window.UEDITOR_HOME_URL || "ghl/ueditor/";
</script>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <div class="span9">
        <div class="row-fluid">
			<div class="page-header">
				<h1>顾客信息&nbsp;&nbsp;<small><a href="toaddcustomer.action">添加顾客信息</a></small></h1>
			</div>
	
		<table  class="gridtable">
		<tr><th>id</th><th>姓名</th><th>联系方式</th><th>地址</th><th>记录日期</th><th>操作</th></tr>
		
		        	<s:iterator var="customer" value="customerList">
        <tr><td><s:property value="id"/></td>
        <td><s:property value="customername"/></td>
        <td><s:property value="contact"/></td>
        <td><s:property value="address"/></td>
        <td><s:date name="date" format="yyyy-MM-dd HH:mm:ss"/></td>
        <td><a href="">详细</a>&nbsp;|&nbsp;<a href="">删除</a>&nbsp;|&nbsp;<a href="">更改</a></td>
        </tr>    	
                	
     
			</s:iterator>   
		</table>			
			     <ul class="pagination">
            	  <li class="page">第 <s:property value="page"/> 页/ <s:property value="totalPage"/> 页/ <s:property value="totalItem"/> 条</li>
            	  <s:if test="page gt 1"><li><a href="customerlist.action?page=<s:property value="page-1"/>">&laquo;</a></li></s:if>
                  
                  
                  
                  <s:iterator begin="1" end="totalPage" var="p">
                  <li <s:if test="page eq #p">class="active"</s:if>><a href="customerlist.action?page=<s:property value="#p"/>"  ><s:property value="#p"/></a></li>
                  </s:iterator>
                  <s:if test="page lt totalPage"><li><a href="customerlist.action?page=<s:property value="page+1"/>">&raquo;</a></li></s:if>
            	</ul>
          
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>