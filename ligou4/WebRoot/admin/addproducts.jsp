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
			<s:debug/>
			<form class="form-horizontal" action="saveproducts.action"  method="post" enctype="multipart/form-data">
				
					<fieldset>
					<div class="control-group">
						<label class="control-label" for="name">商品名称</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="productsname" name = "products.productsname" value="" />
						</div>
					</div>
						<div class="control-group">
						<label class="control-label" for="name">价格</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="beforemoney" name = "products.beforemoney" value="" />
						</div>
					</div>
						<div class="control-group">
						<label class="control-label" for="introducecontent">商品介绍</label>
						<div class="controls">
							<textarea class="input-xlarge" id="description" name = "products.description" >商品介绍内容 </textarea>
						</div>
					</div>
						
						<div class="control-group">
						<label class="control-label" for="introducecontent">图片</label>
						<div class="controls">
							<input type="file" name="file1" />
						</div>
					</div>
					
						<div class="control-group">
						<label class="control-label" for="role">分类</label>
						<div class="controls">
							<select id="sortid" name="sortid">
								<option value="0">--请选择--</option>
								<s:iterator value="sortlist">
								<option value="<s:property value="id"/>"><s:property value="sortname"/></option>
								
								</s:iterator>
								
							</select>
							<select id="secondsortid" name="secondsortid">
							
							
								
							</select>
							<select id="thirdsortid" name="thirdsortid">
								
								
								
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="role">品牌</label>
						<div class="controls">
							<select id="brandid" name="brandid">
								
								<s:iterator value="brandSortList">
								<option value="<s:property value="id"/>"><s:property value="brandname"/></option>
								
								</s:iterator>
								
							</select>
							
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="role">尺码</label>
						<div class="controls">
							<select id="sizeNumList" name="sizeNumList" multiple="multiple">
								<s:iterator value="sizeNameList">
								<option value="<s:property value="id"/>"><s:property value="name"/></option>
								</s:iterator>
								
							</select>
							
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
     	