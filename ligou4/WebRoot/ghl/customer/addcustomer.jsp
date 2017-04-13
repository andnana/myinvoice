<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
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
				<h1>添加顾客信息<small></small></h1>
			</div>
	<form class="form-horizontal" action="addcustomer.action"  method="post">
					<fieldset>
	
					<div class="control-group">
						<label class="control-label" for="customername"> 姓名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="customername" name="customer.customername" value="" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="contact">联系方式</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="contact" name = "customer.contact" value="" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="address">地址</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="address" name = "customer.address" value="" />
						</div>
					</div>
				
						
					<div class="form-actions">
						<input type="submit" class="btn btn-success btn-large" value="添加" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>						
			</fieldset></form>
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>