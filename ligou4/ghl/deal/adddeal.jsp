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
				<h1>添加订单<small></small></h1>
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
							<input type="text" class="input-xlarge" id="customerid" name="customer.id" value="" readonly="readonly" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="contact">联系方式</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="contact" name = "customer.contact" value="" readonly="readonly" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="address">地址</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="address" name = "customer.address" value="" readonly="readonly" />
						</div>
					</div>	
						<div class="control-group">
						<label class="control-label" for="salepersonid"> 销售人员id号</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="salepersonid" name="salepersonid" value="" readonly="readonly" />
						</div>
					</div>
					
					<table  class="gridtable adddealtable" id="addproduct2table">
		<tr><th>产品</th><th>长</th><th>宽</th><th>厚</th><th>数量</th><th>单价</th><th>此产品总计</th><th>操作</th></tr>
		
		<tr id="tr0"><td>
			
					
					
							<select id="product2select0"  onchange="selectChangeEvent(0)" style="margin:0px;padding:0px;color:red" name="product2List[0].productid">
								<option value="0">---请选择---</option>
							
								<s:iterator var="product" value="productList">
								<option value="<s:property value="id"/>"><s:property value="productname"/></option>
									</s:iterator>   
								
								
								
							</select>
						
		
		
		
		
		
		
		</td>
		
		<td><input type="text" name="product2List[0].product2long" id="long0" onblur="longblur(this.id)"/></td>
		<td><input type="text" name="product2List[0].product2width" id="width0" onblur="widthblur(this.id)"/></td>
		<td><input type="text" name="product2List[0].product2thick" id="thick0"  readonly="readonly"/></td>
		
		<td><input type="text" name="product2List[0].quantity" id="quantity0" readonly="readonly"/></td>
		<td><input type="text" name="product2List[0].price" id="price0"  readonly="readonly"/></td>
		<td><input type="text" name="product2List[0].amount" id="amount0"  readonly="readonly"/></td>
		<td></td>
		</tr>
		  
		</table>
				
			<div class="control-group">
						<label class="control-label" for="addproduct">添加产品</label>
						<div class="controls">
							<input type="button" value="添加" id="addproduct2" />		
						</div>
					</div>
						<div class="control-group">
						<label class="control-label" for="introduce">附加信息</label>
						<div class="controls">
							<textarea class="input-xlarge" id="introduce" name = "deal.note" >添加信息 </textarea>
						</div>
					</div>
					<div class="form-actions">
						<input type="submit" class="btn btn-default btn-large" value="添加" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>
		</form>
				
						
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>