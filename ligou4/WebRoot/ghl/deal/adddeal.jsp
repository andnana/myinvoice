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
				<h1>添加订单信息<small></small></h1>
			</div>
			
			
					<fieldset>
				<div style="float:left;margin:10px 25px;">
					<div class="control-group">
						<label class="control-label" for="customername"> 姓名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" placeholder = "顾客姓名" id="customername" name="customer.name" value="" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="contact">联系方式</label>
						<div class="controls">
							<input type="text" class="input-xlarge" placeholder = "顾客联系方式" id="customercontact" name = "customer.contact" value="" />
						</div>
					</div>
					<div class="form-actions">
						 <a class="btn" id="findcustomer" href="javascript:void(0)">查找</a> 
					</div>	
				</div>
				<div style="float:left;margin:10px 25px;">
				
					
						<div class="control-group">
						<label class="control-label" for="customername"> 姓名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" placeholder="销售人员姓名" id="salepersonname" name="customer.customername" value="" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="contact">联系方式</label>
						<div class="controls">
							<input type="text" class="input-xlarge" placeholder="销售人员联系方式" id="salepersoncontact" name = "customer.contact" value="" />
						</div>
					</div>
				
				
						
					<div class="form-actions">
						 <a class="btn" id="findsaleperson" href="javascript:void(0)">查找</a> 
					</div>	
				</div>
				<div style="clear:both"></div>
				
									
			</fieldset>
				<table  class="gridtable"  id="findinfotable">
  
		</table>
			<form class="form-horizontal" action="adddeal.action"  method="post">
			<div class="control-group">
						<label class="control-label" for="customerid"> 顾客id号</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="customerid" name="customer.id" value="" />
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
						<div class="control-group">
						<label class="control-label" for="salepersonid"> 销售人员id号</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="salepersonid" name="salepersonid" value="" />
						</div>
					</div>
					
					<table  class="gridtable" id="addproduct2table">
		<tr><th>产品</th><th>长</th><th>宽</th><th>厚</th><th>数量</th></tr>
		
		<tr><td>
			
					
					
							<select id="productid" style="margin:0px;padding:0px;color:red" name="product2List[0].productid">
								
							
								<s:iterator var="product" value="productList">
								<option value="<s:property value="id"/>"><s:property value="productname"/></option>
									</s:iterator>   
								
								
								
							</select>
						
		
		
		
		
		
		
		</td>
		
		<td><input type="text" name="product2List[0].product2long"/></td>
		<td><input type="text" name="product2List[0].product2width"/></td>
		<td><input type="text" name="product2List[0].product2thick"/></td>
		<td><input type="text" name="product2List[0].quantity"/></td>
		</tr>
		  
		</table>
			<div class="control-group">
						<label class="control-label" for="addproduct">添加产品</label>
						<div class="controls">
							<input type="button" value="添加" id="addproduct2" />		
						</div>
					</div>
					<div class="form-actions">
						<input type="submit" class="btn btn-success btn-large" value="添加" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>
		</form>
				
						
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>