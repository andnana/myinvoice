<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <div class="span9">
         <div class="well hero-unit">
			
			
			<form class="form-horizontal" action="savecommoninfo.action"  method="post">
				
					<fieldset>
					<div class="control-group">
						<label class="control-label" for="name">网站介绍标题</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="name" name = "commoninfo.introducetitle" value="${commoninfo.introducetitle}" />
						</div>
					</div>
						<div class="control-group">
						<label class="control-label" for="introducecontent">网站介绍内容</label>
						<div class="controls">
							<textarea class="input-xlarge" id="content" name = "${commoninfo.introducecontent} " >网站介绍内容 </textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="email"> 电子邮件</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="email" name="commoninfo.email" value="${commoninfo.email} " />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="contactphone">手机</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="mobilephone" name = "commoninfo.mobilephone" value="${commoninfo.mobilephone} " />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="icpnumber">icp号码</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="icpnumber" name = "commoninfo.icpnumber" value="${commoninfo.icpnumber }" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="address">地址</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="address" name = "commoninfo.address" value="${commoninfo.address }" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="hotline">热线电话</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="hotline" name = "commoninfo.hotline" value="${commoninfo.hotline }" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="zipcode">邮编</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="zipcode" name = "commoninfo.zipcode" value="${commoninfo.zipcode }" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="telephone">座机电话</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="telephone" name = "commoninfo.telephone" value="${commoninfo.telephone }" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="emailme">qq邮我组件</label>
						<div class="controls">
							<textarea class="input-xlarge" id="content" name = "commoninfo.emailme" >${commoninfo.emailme } </textarea>
						</div>
					</div>
						<div class="control-group">
						<label class="control-label" for="active">是否启用</label>
						<div class="controls">
							<input type="checkbox" id="active" value="1" name="active" checked />
						</div>
					</div>
					<div class="form-actions">
						<input type="submit" class="btn btn-success btn-large" value="添加" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>					
				</fieldset>
			</form>
			
		
		
			
			
		  </div>
    
		
        </div>
     <jsp:include page="footer.jsp"/>
     	