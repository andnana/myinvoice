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
				<h1>添加产品信息<small></small></h1>
			</div>
				<form class="form-horizontal" action="addproduct.action"  method="post">
					<fieldset>
	
					<div class="control-group">
						<label class="control-label" for="productname">产品名称</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="productname" name="product.productname" />
						</div>
					</div>
							<div class="control-group">
						<label class="control-label" for="introduce">产品介绍</label>
						<div class="controls">
							<textarea class="input-xlarge" id="introduce" name = "product.introduce" >产品介绍内容 </textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="thick">厚度</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="price" name = "product.thick" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="price">单价</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="price" name = "product.price" />
						</div>
					</div>
				
						
					<div class="form-actions">
						<input type="submit" class="btn btn-success btn-large" value="添加" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>						
			</fieldset>
			</form>
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>
