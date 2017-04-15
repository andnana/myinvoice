$(document).ready(function() {

	
	var ua = navigator.userAgent;
	var b = ua.indexOf("MSIE");
	if(b>0){
		$(".post").css({display:'inline',color:'red',padding:'20px'});
		$(".category").css({display:'inline',color:'red',padding:'20px'});
		$(".comment").css({display:'inline',color:'red',padding:'20px'});
	
		$("table.gridtable").css({fontFamily: 'verdana,arial,sans-serif',
		fontSize:'11px',
		color:'#333333',
		borderWidth: '1px',
		borderColor: '#666666',
		borderCollapse: 'collapse'});
		$("table.gridtableslide").css({fontFamily: 'verdana,arial,sans-serif',
		fontSize:'11px',
		color:'#333333',
		borderWidth: '1px',
		borderColor: '#666666',
		borderCollapse: 'collapse'});
		$("table.gridtableproductsimg").css({fontFamily: 'verdana,arial,sans-serif',
		fontSize:'11px',
		color:'#333333',
		borderWidth: '1px',
		borderColor: '#666666',
		borderCollapse: 'collapse'});
		$("table.gridtable th").css({borderWidth: '1px',
		padding:'8px',
		borderStyle: 'solid',
		borderColor: '#666666',
		backgroundColor: '#dedede'});
		$("table.gridtableslide th").css({borderWidth: '1px',
		padding: '8px',
		borderStyle: 'solid',
		borderColor: '#666666',
		backgroundColor: '#dedede'})
		$("table.gridtableproductsimg th").css({borderWidth: '1px',
		padding: '8px',
		borderStyle: 'solid',
		borderColor: '#666666',
		backgroundColor: '#dedede'});
		$("table.gridtable td:nth-child(1)").css({
			width:'35px',
			height:'30px',
			borderWidth: '1px',
			padding: '8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff'
		});
		$("table.gridtable td:nth-child(2)").css({
			width:'300px',
			height:'30px',
			borderWidth: '1px',
			padding:'8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff'
		});
		$("table.gridtable td:nth-child(3)").css({
			width:'150px',
			height:'30px',
			borderWidth: '1px',
			padding: '8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff'
		});
		$("table.gridtableslide td:nth-child(1)").css({
			width:'200px',
			height:'30px',
			borderWidth: '1px',
			padding:'8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff'
		});
		$("table.gridtableslide td:nth-child(2)").css({
			width:'300px',
			height:'30px',
			borderWidth: '1px',
			padding: '8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff'
		});
		$("table.gridtableslide td:nth-child(3)").css({
			width:'50px',
			height:'30px',
			borderWidth: '1px',
			padding: '8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff',
		});
		$("table.gridtableslide td:nth-child(4)").css({
			width:'80px',
			height:'30px',
			borderWidth: '1px',
			padding: '8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff'
		});
		$("table.gridtableproductsimg td:nth-child(1)").css({
			width:'50px',
			height:'30px',
			borderWidth: '1px',
			padding: '8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff'
		});
		$("table.gridtableproductsimg td:nth-child(2)").css({
			width:'100px',
			height:'30px',
			borderWidth: '1px',
			padding: '8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor: '#ffffff',
		});
		$("table.gridtableproductsimg td:nth-child(3)").css({
			width:'50px',
			height:'30px',
			borderWidth: '1px',
			padding: '8px',
			borderStyle: 'solid',
			borderColor: '#666666',
			backgroundColor:'#ffffff'
		});
	}
	$findwho = "";
	$("#findcustomer").click(function(){
		$findwho = "customer";
		$customername = $("#customername").val();
		$customercontact = $("#customercontact").val();
		
		
	
	

		 $.ajax({      
    			url: 'findcustomer.action',    
    			type:"POST",
    			dataType: 'json',
    			data:{customername:$customername,contact:$customercontact},
    			contentType:"application/x-www-form-urlencoded;charset=utf-8",
    			success: function(data) {       
    				console.log(data);
    			
    			
    			
    				var html = '<tr><td colspan="6" style="color:black;font-weight:bold;font-size:16px;letter-spacing:5px;text-align:center;border:#666666 solid 1px"><span>顾客信息</span></td></tr>'+
						'<tr><th>id</th><th>姓名</th><th>联系方式</th><th>地址</th><th>记录日期</th><th>操作</th></tr>';
    					
    					$.each( data , function(customerIndex, customer){
    						html += '<tr><td>'+customer['id']+'</td><td>'+customer['customername']+'</td><td>'+customer['contact']+'</td><td>'+customer['address']+'</td><td>'+customer['date']+'</td><td><a href="javascript:void(0)">添加</a></td></tr>';
    					} );
    					$("#findinfotable").html(html);
    				
    				
    			 }    
    			// statusCode: {        
    			//	 404: function() {         
    			//	     alert("没有找到相关文件~~");     
    			//	 }      
    			// }   
    		 });  
	
	});
	
$("#findsaleperson").click(function(){
	$findwho = "saleperson";
		$salepersonname = $("#salepersonname").val();
		$salepersoncontact = $("#salepersoncontact").val();
		
		
	
	

		 $.ajax({      
    			url: 'findsaleperson.action',    
    			type:"POST",
    			dataType: 'json',
    			data:{salepersonname:$salepersonname,contact:$salepersoncontact},
    			contentType:"application/x-www-form-urlencoded;charset=utf-8",
    			success: function(data) {       
    				console.log(data);
    			
    			
    			
    					var html = '<tr><td colspan="6" style="color:black;font-weight:bold;font-size:16px;letter-spacing:5px;text-align:center;border:#666666 solid 1px"><span>销售人员信息</span></td></tr>'+
    						'<tr><th>id</th><th>姓名</th><th>联系方式</th><th>地址</th><th>记录日期</th><th>操作</th></tr>';
    						
    					
    					$.each( data , function(salepersonIndex, saleperson){
    						html += '<tr><td>'+saleperson['id']+'</td><td>'+saleperson['salepersonname']+'</td><td>'+saleperson['contact']+'</td><td>'+saleperson['address']+'</td><td>'+saleperson['date']+'</td><td><a href="javascript:void(0)">添加</a></td></tr>';
    					} );
    					$("#findinfotable").html(html);
    				
    				
    			 }    
    			// statusCode: {        
    			//	 404: function() {         
    			//	     alert("没有找到相关文件~~");     
    			//	 }      
    			// }   
    		 });  
	
	});
	
	$("table.gridtable td:nth-child(6)>a").live("click",function(){
		if($findwho=="customer"){
			$("#customerid").val($(this).parent().prev().prev().prev().prev().prev().text());
			$("#address").val($(this).parent().prev().prev().text());
			$("#contact").val($(this).parent().prev().prev().prev().text());
		}
		if($findwho=="saleperson"){
				$("#salepersonid").val($(this).parent().prev().prev().prev().prev().prev().text());
				
				}
		
		
	});
	
	$addproduct2Index = 0;
	$("#addproduct2").live("click",function(){
		$addproduct2Index++;
		 $.ajax({      
   			url: 'dealproductlist.action',    
   			type:"POST",
   			dataType: 'json',
   			data:{},
   			contentType:"application/x-www-form-urlencoded;charset=utf-8",
   			success: function(data) {       
   				console.log(data);
   			
   			
   			
   					var html = '<tr id="tr'+$addproduct2Index+'"><td>'+
   					
   					
					
					
					'<select id="product2select'+$addproduct2Index+'"   onchange="selectChangeEvent('+$addproduct2Index+')"  style="margin:0px;padding:0px;color:red" name="product2List[' + $addproduct2Index + '].productid">';
   					html += '<option value="' + 0 + '"> ---请选择---</option>';
					$.each( data , function(productIndex, product){
						
						html += '<option value="' + product['id'] + '">' + product['productname'] + '</option>';
   					} );
						
				
						
						
						
					html += '</select>'+
								'</td>'+
								
								'<td><input type="text" name="product2List[' + $addproduct2Index + '].product2long" id="long' + $addproduct2Index + '" onblur="longblur(this.id)"/></td>'+
								'<td><input type="text" name="product2List[' + $addproduct2Index + '].product2width" id="width' + $addproduct2Index + '" onblur="widthblur(this.id)"/></td>'+
								'<td><input type="text" name="product2List[' + $addproduct2Index + '].product2thick" id="thick' + $addproduct2Index + '"/></td>'+
							
								'<td><input type="text" name="product2List[' + $addproduct2Index + '].quantity" id="quantity' + $addproduct2Index + '" readonly="readonly"/></td>'+
								'<td><input type="text" name="product2List[' + $addproduct2Index + '].price" id="price' + $addproduct2Index + '"  readonly="readonly"/></td>'+
								'<td><input type="text" name="product2List[' + $addproduct2Index + '].amount" id="amount' + $addproduct2Index + '"  readonly="readonly"/></td>'+
								'<td><a href="javascript:void(0)" onclick="removetr(' + $addproduct2Index + ')">删除</a></td>'+
								'</tr>';	
								   						
   					
   				
   					$("#addproduct2table").append(html);
   				
   				
   			 }    
   			// statusCode: {        
   			//	 404: function() {         
   			//	     alert("没有找到相关文件~~");     
   			//	 }      
   			// }   
   		 });  
		
		$("#toaddinvoicesubmit").click(function(){
			
			$("#toaddinvoiceform").submit();
		});


	});
	
	
//	$("#product2select0").change(function(){
//		
//		 alert("product2select0");
//		});
//	$("#product2select1").change(function(){
//		
//		 alert("product2select1");
//		});
	$("#cheque").click(function(){
              
                    $("#chequenumber").removeAttr("disabled");
               
            
	});
	$("#cash").click(function(){
		
            $("#chequenumber").attr("disabled","disabled");
        
    
	});
	$("#bank").click(function(){
            $("#chequenumber").attr("disabled","disabled");
        
    
	});

});
function selectChangeEvent(product2selectid){
	$productid = $("#product2select"+product2selectid).val();
	
	 $.ajax({      
			url: 'findproductbyid.action',    
			type:"POST",
			dataType: 'json',
			data:{productid:$productid},
			contentType:"application/x-www-form-urlencoded;charset=utf-8",
			success: function(data) {       
				console.log(data);
			$selectInput = $("#product2select"+product2selectid);
			$selectInput.parent().next().next().next().next().next().find("input").val(data['price']+"￥");
			$selectInput.parent().next().next().next().find("input").val(data['thick']);
			 }    
			// statusCode: {        
			//	 404: function() {         
			//	     alert("没有找到相关文件~~");     
			//	 }      
			// }   
		 }); 
//		 alert("product2select"+product2selectid);
	
}
function calculateQuantity(longval, widthval){
	return longval * widthval;
}
function longblur(longid){
	$longval = parseInt($("#"+longid).val());
	$widthval = parseInt($("#"+longid).parent().next().find("input").val());
	
	
		if($longval>0 && $widthval>0){
		
			$quantity = calculateQuantity($longval, $widthval);
			$quantityInput = $("#"+longid).parent().next().next().next().find("input");
			$quantityInput.val($quantity);
			$amount = $quantity * parseInt($quantityInput.parent().next().find("input").val());
			$quantityInput.parent().next().next().find("input").val($amount);
		}
	
}
function widthblur(widthid){
	$longval = parseInt($("#"+widthid).parent().prev().find("input").val());
	$widthval = parseInt($("#"+widthid).val());
	

	if($longval>0 && $widthval>0){
		
		$quantity = calculateQuantity($longval, $widthval);
		$quantityInput = $("#"+widthid).parent().next().next().find("input")
		$quantityInput.val($quantity);
		$amount = $quantity * parseInt($quantityInput.parent().next().find("input").val());
		$quantityInput.parent().next().next().find("input").val($amount);
	}
}

function removetr(trid){
	$("#tr"+trid).remove();
}
