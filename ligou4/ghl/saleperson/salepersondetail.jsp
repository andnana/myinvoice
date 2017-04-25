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
				<h1>销售人员信息<small></small></h1>
			</div>
				<form class="form-horizontal" action="updatesaleperson.action"  method="post">
					<fieldset>
	<input name="salePerson.id" type="hidden" value="<s:property value="salePerson.id" />" />
					<div class="control-group">
						<label class="control-label" for="salepersonname">姓名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="salepersonname" name="salePerson.salepersonname" value="<s:property value="salePerson.salepersonname" />" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="contact">联系方式</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="contact" name = "salePerson.contact" value="<s:property value="salePerson.contact" />" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="address">地址</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="address" name = "salePerson.address" value="<s:property value="salePerson.address" />" />
						</div>
					</div>
				
						
					<div class="form-actions">
						<input type="submit" class="btn btn-default btn-large" value="更改" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>						
			</fieldset>
			</form>
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>
