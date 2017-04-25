<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<jsp:include page="../header.jsp"></jsp:include>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <div class="span9">
        <div class="row-fluid">
			<div class="page-header">
				<h1>我的个人信息<small></small></h1>
			</div>
	<form class="form-horizontal" action="updatepersonal.action"  method="post">
					<fieldset>
		<input name="user.id" type="hidden" value="<s:property value="user.id" />" />
					<div class="control-group">
						<label class="control-label" for="username"> 姓名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="username" name="user.username" value="<s:property value="user.username" />" />
						</div>
					
					</div>
				<div class="control-group">
						<label class="control-label" for="password"> 密码</label>
						<div class="controls">
							<input type="password" class="input-xlarge" id="password" name="user.password" value="<s:property value="user.password" />" />" 
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="email">电子邮件</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="email" name="user.email" value="<s:property value="user.email" />" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="gender">性别</label>
						<div class="controls">
							
							<div class="radio">
								   <label>
								      <input type="radio" value="1" <s:if test="user.gender eq 1">checked="checked"</s:if> name="user.gender"/> 男
								   </label>
								</div>
								<div class="radio">
								   <label>
								      <input type="radio" value="0" <s:if test="user.gender eq 0">checked="checked"</s:if> name="user.gender"/>女
								         
								   </label>
								</div>
							
						
					</div>
					<div class="control-group">
						<label class="control-label" for="phone">电话</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="phone" name="user.phone" value="<s:property value="user.phone" />" />
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="address">地址</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="address" name="user.address" value="<s:property value="user.address" />" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="description">个人介绍</label>
						<div class="controls">
							<textarea class="input-xlarge" id="description" name="user.description" ><s:property value="user.description" /></textarea>
						</div>
					</div>
						
					<div class="form-actions">
						<input type="submit" class="btn btn-default btn-large" value="更改" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>						
			</fieldset></form>
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>