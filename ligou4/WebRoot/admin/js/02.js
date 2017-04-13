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
	
	$("#sortid").change(function(){
	
		var $onesortid = $("#sortid").val();
		 $.ajax({      
    			url: 'secondSortList.action',    
    			type:"POST",
    			dataType: 'json',
    			data:{onesortid:$onesortid},
    			contentType:"application/x-www-form-urlencoded;charset=utf-8",
    			success: function(data) {       
    				console.log(data);
    			
    			
    			
    					var html = '';
    					
    					$.each( data , function(sortIndex, sort){
    						html += '<option value="'+sort['id']+'" selected>'+sort['sortname']+'</option>';
    					
    					} );
    					$("#secondsortid").html(html);
    					
    					$("#secondsortid").change(function(){
    						
    						$(this).siblings().css("background-color","white");
    					
    						var $secondsortid = $("#secondsortid").val();
//    						alert($secondsortid);
    						 $.ajax({      
    				    			url: 'thirdSortList.action',    
    				    			type:"POST",
    				    			dataType: 'json',
    				    			data:{secondsortid:$secondsortid},
    				    			contentType:"application/x-www-form-urlencoded;charset=utf-8",
    				    			success: function(data) {       
    				    				console.log(data);
    				    			
    				    			
    				    			
    				    					var html = '';
    				    					
    				    					$.each( data , function(sortIndex, sort){
    				    						html += '<option value="'+sort['id']+'" selected>'+sort['sortname']+'</option>';
    				    					//	<li><img src="<%=basePath %>admin/img/<s:property value="products.id"/>/<s:property value="imgname"/><s:property value="suffix"/>" alt="" /></li>
    				    					} );
    				    					$("#thirdsortid").html(html);
    				    					$("#thirdsortid").show();
    			    						$("#thirdsortid option").css("background-color","white");
    			    					
    				    			 }     
    				    			// statusCode: {        
    				    			//	 404: function() {         
    				    			//	     alert("没有找到相关文件~~");     
    				    			//	 }      
    				    			// }   
    				    		 });  
    					});
    					$("#secondsortid").show();
    					$("#secondsortid option").css("background-color","white");
    				
    			 }    
    			// statusCode: {        
    			//	 404: function() {         
    			//	     alert("没有找到相关文件~~");     
    			//	 }      
    			// }   
    		 }); 
	});

});
