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
				<h1>订单信息<small>id号&nbsp;<s:property value="deal.id" /></small></h1>
			</div>
			
			
								
			
				
			<div class="control-group">
						<label class="control-label" for="customerid"> 顾客姓名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="customerid" name="customer.id" value="<s:property value="deal.customer.customername"/>" readonly="readonly" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="contact">联系方式</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="contact" name = "customer.contact" value="<s:property value="deal.customer.contact"/>" readonly="readonly" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="address">地址</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="address" name = "customer.address" value="<s:property value="deal.customer.address"/>" readonly="readonly" />
						</div>
					</div>	
						<div class="control-group">
						<label class="control-label" for="salepersonid"> 销售人员姓名</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="salepersonid" name="salepersonid" value="<s:property value="deal.salePerson.salepersonname"/>" readonly="readonly" />
						</div>
					</div>
					
					<table  class="gridtable" id="addproduct2table">
		<tr><th>id</th><th>产品</th><th>单价</th><th>长</th><th>宽</th><th>厚</th><th>数量</th><th>此产品总计</th></tr>
		<s:iterator var="product2" value="deal.product2List">
		<tr>
		<td><s:property value="id"/></td>
		<td><s:property value="product.productname"/></td>
		<td><s:property value="product.price"/></td>
		<td><s:property value="product2long"/></td>
		<td><s:property value="product2width"/></td>
		<td><s:property value="product2thick"/></td>
		<td><s:property value="quantity"/></td>
		<td><s:property value="amount"/></td>
		</tr>
		  </s:iterator>
		</table>
				<div class="control-group">
						<label class="control-label" for="dealdetailsubtotal">subtotal</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="dealdetailsubtotal" name="dealdetailsubtotal" value="<s:property value="deal.subtotal"/>" readonly="readonly" />
						</div>
					</div>
							<div class="control-group">
						<label class="control-label" for="dealdetailvat">税</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="dealdetailvat" name="dealdetailvat" value="<s:property value="deal.vat"/>" readonly="readonly" />
						</div>
					</div>
						<div class="control-group">
						<label class="control-label" for="dealdetailvat">total</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="dealdetailvat" name="dealdetailtotal" value="<s:property value="deal.total"/>" readonly="readonly" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="alreadyPayment">已付金额</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="dealdetailvat" name="alreadyPayment" value="<s:property value="alreadyPayment"/>" readonly="readonly" />
						</div>
					</div>
					<form id="toaddinvoiceform" class="form-horizontal" action="toaddinvoice.action"  method="post">
					<input type="hidden" name="dealid" value="<s:property value="deal.id"/>" />
					<div class="form-actions">
						<input type="submit" id="toaddinvoicesubmit" class="btn btn-success btn-large" value="添加发票" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>
						</form>
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>