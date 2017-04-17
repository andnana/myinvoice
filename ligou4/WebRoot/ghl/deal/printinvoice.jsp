<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title></title>
			<link href="<%=basePath %>ghl/css/site.css" rel="stylesheet">
				<script type="text/javascript" src="<%=basePath %>ghl/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>ghl/js/jQuery.print.js"></script>
	<script type="text/javascript">
		$(function(){
			//打印
			$(":submit").bind("click",function(event){
				$("#printdiv").print({ noPrintSelector: ":submit"});
			});
		});
	</script>
	</head>

	<body>
		
	 <div id="printdiv">
    	<div id="invoicepagetop">
    	<div id="logo">
    	<img src="<%=basePath %>ghl/img/GHLlogo.png" />
    	</div>
    	 <div id="invoicepagemyinfo">
    	 <p>Address:14/16 Badejo Kalesanwo Street,Matori,mushin,lagos</p>
    	 <p>Tel:080/78158888 080/781688888 Email:115647659@qq.com</p>
    	 </div>
    	<span class="clearboth"></span>
    	</div>
    	<div id="invoicemain">
    		<table>
    			<tr><th>Customer Name</th><td><span><s:property value="deal.customer.customername" /></span></td><th>Invo No</th><td><span><s:property value="invoice.id" /></span></td></tr>
    			<tr><th>Address</th><td><span><s:property value="deal.customer.address" /></span></td><th>Sale Person</th><td><span><s:property value="deal.salePerson.salepersonname" /></span></td></tr>
    			<tr><th>Contact</th><td><span><s:property value="deal.customer.contact" /></span></td><th>Date</th><td><span><s:date name="invoice.date" format="yyyy-MM-dd HH:mm:ss"/></span></td></tr>
    		</table>
    		<table border="1" cellspacing="0" bordercolor="black">
    			<tr><th colspan="4">Description</th><th>Quantity</th><th>Unit Price.N</th><th>Amount</th></tr>
    			<tr><th>Product Sort</th><th>Long</th><th>Width</th><th>Thick</th><th></th><th></th><th></th></tr>
    			<s:iterator var="product2" value="deal.product2List">
    			<tr><td><s:property value="product.productname" /></td><td><s:property value="product2long" /></td><td><s:property value="product2width" /></td><td><s:property value="product2thick" /></td><td><s:property value="quantity" /></td><td><s:property value="price" /></td><td><s:property value="amount" /></td></tr>
    			</s:iterator>
    			
    			<tr><th colspan="5">Amount</th><th>Sub Total</th><td><s:property value="deal.subtotal" /></td></tr>
    			<tr><td colspan="5" rowspan="3"></td><th>VAT</th><td><s:property value="deal.vat" /></td></tr>
    			<tr><th>Discount</th><td></td></tr>
    			<tr><th>Total</th><td><s:property value="deal.total" /></td></tr>
    			<tr><th colspan="3">Deposit</th><td colspan="2"><s:property value="invoice.deposit" /></td><th>Balance</th><td><s:property value="invoice.balance" /></td></tr>
    		</table>
    		<div id="invoicenote">
    		
    		
						<table>
						<tr>
						<th>
						<label>Order note</label>
						</th>
						<td>
							<p><s:property value="deal.note" /> </p>
							</td>
						</tr>
						<tr>
						<th>					
						<label>This time payment note</label>
						</th>
						<td>
							<p><s:property value="invoice.note" /> </p>
							</td>
							</tr>
						</table>			
    	
    		</div>
    		<div id="paymentmethod">
    			<table>
    				<tr>
    				<td>Cash <s:if test="invoice.paymentmethod eq 1">√ </s:if></td>
					<td>Bank<s:if test="invoice.paymentmethod eq 2">√ </s:if> </td>
					<td>Cheque <s:if test="invoice.paymentmethod eq 3">√ </s:if></td>
					<td>Cheque No <s:if test="invoice.paymentmethod eq 3"><span>${invoice.chequenumber}</span>  </s:if></td>
		</tr>
    			</table>
    		</div>
    		<div id="signature">
    			<table>
    				<tr><th>Customer Signature</th><td></td><th>Sales Rep Signature</th><td></td></tr>
    			</table>
    		</div>
    	</div>
    	 <input type="submit" class="btn btn-default btn-large" value="打印" /> 
    </div>
	</body>
	
</html>