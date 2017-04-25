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
						<label class="control-label" for="dealdetailsubtotal">税前总金额</label>
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
						<label class="control-label" for="dealdetailvat">税后总金额</label>
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
						<div class="control-group">
						<label class="control-label" for="alreadyPayment">余款</label>
						<div class="controls">
						 <input type="text" class="input-xlarge" id="dealdetailvat" name="alreadyPayment" value="<s:property value="deal.balance"/>"  readonly="readonly" /> 
						</div>
					</div>
					<form id="toaddinvoiceform" class="form-horizontal" action="toaddinvoice.action"  method="post">
					<input type="hidden" name="dealid" value="<s:property value="deal.id"/>" />
					<div class="form-actions">
						<s:if test="deal.ispaid ==1">
						<input type="submit" id="toaddinvoicesubmit" class="btn btn-large disabled" disabled="disabled" value="添加一次付款" /> <!-- <a class="btn" href="users.html">取消</a> -->
						</s:if>
						<s:else>
						<input type="submit" id="toaddinvoicesubmit" class="btn btn-default btn-large" value="添加一次付款" /> <!-- <a class="btn" href="users.html">取消</a> -->
						</s:else>
						
					</div>
						</form>
									<table  class="gridtable" id="addproduct2table">
		<tr><th>id</th><th>本次付款金额</th><th>本次付款后余款</th><th>付款方式</th><th>支票号码</th><th>附加信息</th><th>日期</th><th>操作</th></tr>
		<s:iterator var="invoice" value="deal.invoiceList">
		<tr>
		<td><s:property value="id"/></td>
		<td><s:property value="deposit"/></td>
		<td><s:property value="balance"/></td>
		<td>
		<s:if test="paymentmethod eq 1">
			现金
		</s:if>
		<s:elseif test="paymentmethod eq 2">
			银行转帐
		</s:elseif>
		<s:elseif test="paymentmethod eq 3">
		支票
		</s:elseif>
		<s:else>
		未知
		</s:else>

		
		</td>
		<td>
			<s:if test="paymentmethod eq 3">
		<s:property value="chequenumber"/>
		</s:if>		
		</td>
		<td><s:property value="note"/></td>
		<td><s:date name="date" format="yyyy-MM-dd HH:mm:ss"/></td>
		<td><a href="toprintinvoice.action?invoiceid=<s:property value="id"/>&dealid=<s:property value="deal.id"/>">打印</a></td>
		</tr>
		  </s:iterator>
		</table>
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>