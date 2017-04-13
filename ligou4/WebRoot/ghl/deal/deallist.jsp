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
				<h1>订单信息<small></small></h1>
			</div>
	
		<table  class="gridtable">
		<tr><th>id</th><th>customer name</th><th>contact</th><th>ispaid</th><th>note</th><th>total</th><th>date</th><th>operation</th></tr>
		<tr><td>dfe</td><td>fer</td><td>feserse</td><td>fer</td><td>dfe</td><td>fer</td><td>fer</td><td><a href="">详细</a>|&nbsp;&nbsp;<a href="">删除</a></td></tr>
		<tr><td>dfe</td><td>fer</td><td>feserse</td><td>fer</td><td>dfe</td><td>fer</td><td>fer</td><td><a href="">详细</a>|&nbsp;&nbsp;<a href="">删除</a></td></tr>
		<tr><td>dfe</td><td>fer</td><td>feserse</td><td>fer</td><td>dfe</td><td>fer</td><td>fer</td><td><a href="">详细</a>|&nbsp;&nbsp;<a href="">删除</a></td></tr>
		<tr><td>dfe</td><td>fer</td><td>feserse</td><td>fer</td><td>dfe</td><td>fer</td><td>fer</td><td><a href="">详细</a>|&nbsp;&nbsp;<a href="">删除</a></td></tr>
		</table>			
			
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>