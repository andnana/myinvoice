<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
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
				<h1>订单信息<small><a href="toadddeal.action">添加订单</a></small></h1>
			</div>
	
		<table  class="gridtable">
		<tr><th>id</th><th>顾客</th><th>销售人员</th><th>ispaid</th><th>note</th><th>total</th><th>date</th><th>operation</th></tr>
		<s:iterator var="customer" value="dealList"> 
		<tr><td><s:property value="id"/></td><td><s:property value="customer.customername"/></td><td><s:property value="salePerson.salepersonname"/></td><td>fer</td><td>dfe</td><td>fer</td><td>fer</td><td><a href="">详细</a>|&nbsp;&nbsp;<a href="">删除</a></td></tr>
		</s:iterator>
		</table>			
			    <ul class="pagination">
            	  <li class="page">第 <s:property value="page"/> 页/ <s:property value="totalPage"/> 页/ <s:property value="totalItem"/> 条</li>
            	  <s:if test="page gt 1"><li><a href="deallist.action?page=<s:property value="page-1"/>">&laquo;</a></li></s:if>
                  
                  
                  
                  <s:iterator begin="1" end="totalPage" var="p">
                  <li <s:if test="page eq #p">class="active"</s:if>><a href="deallist.action?page=<s:property value="#p"/>"  ><s:property value="#p"/></a></li>
                  </s:iterator>
                  <s:if test="page lt totalPage"><li><a href="deallist.action?page=<s:property value="page+1"/>">&raquo;</a></li></s:if>
            	</ul>
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>