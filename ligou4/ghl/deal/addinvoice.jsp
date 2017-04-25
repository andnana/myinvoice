<%@page pageEncoding="utf-8" 
contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
				<h1>添加顾客信息<small></small></h1>
			</div>
			<div class="control-group">
						<label class="control-label" for="total">total</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="total" name="total" value="<s:property value="deal.total"/>" readonly="readonly" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="alreadyPayment">已付金额</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="alreadyPayment" name="alreadyPayment" value="<s:property value="alreadyPayment"/>"  readonly="readonly" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="balance">余款</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="alreadyPayment" name="balance" value="<s:property value="deal.balance"/>"  readonly="readonly" />
						</div>
					</div>
					
	<form class="form-horizontal" action="addinvoice.action"  method="post">
					<fieldset>
					
					<div class="control-group">
						<label class="control-label" for="deposit">付款金额</label>
						<div class="controls">
							<input type="text" class="input-xlarge" id="deposit" name="invoice.deposit" value="" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="note">附加信息</label>
						<div class="controls">
							<textarea class="input-xlarge" id="note" name = "invoice.note" >附加信息 </textarea>
						</div>
					</div>
				
				<table>
					<tr>
					<td><label class="control-label" for="cash">现金</label><input id="cash" type="radio" name="invoice.paymentmethod" value="1" checked="checked" /></td>
						<td><label class="control-label" for="bank">银行转帐</label><input id="bank" type="radio" name="invoice.paymentmethod" value="2"/></td>
						<td><label class="control-label" for="cheque">支票</label><input id="cheque" type="radio" name="invoice.paymentmethod" value="3"/></td>
						<td><label class="control-label" for="chequenumber">支票号码</label><input id="chequenumber" name="invoice.chequenumber" value="" disabled="disabled" /></td>
					</tr>
				</table>
						<input name="dealid" type="hidden" value="<s:property value="dealid" />" />
					<div class="form-actions">
						<input type="submit" class="btn btn-default btn-large" value="添加" /> <!-- <a class="btn" href="users.html">取消</a> -->
					</div>						
			</fieldset></form>
		  </div>
    
		
        </div>
     <jsp:include page="../footer.jsp"></jsp:include>