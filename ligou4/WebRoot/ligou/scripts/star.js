/*商品评分效果*/
$(function(){
	//通过修改样式来显示不同的星级
    $("ul.rating li a").click(function(){
	     var title = $(this).attr("title");
	   //  alert("您给此商品的评分是："+title);
	  
	 
			var $score = $(this).text();
			var $productsid = $("#productsid").val();
		  	$.ajax({      
	 			url: 'saveScore.action',    
	 			type:"POST",
	 			dataType: 'json',
	 			data:{productsid:$productsid,score:$score},
	 			contentType:"application/x-www-form-urlencoded;charset=utf-8",
	 			success: function(data) {       
	 			
	 				if(data==1){
	 					
	 					$("#msg").fadeIn('slow');
	 					$("#msg").text("评分保存成功");
	 					setTimeout(function(){
	 						$("#msg").fadeOut('slow');
	 					},2000);
	 				
	 				}else if(data == 2){
	 					$("#msg").fadeIn('slow');
	 					$("#msg").text("请先登陆");
	 					setTimeout(function(){
	 						$("#msg").fadeOut('slow');
	 					},2000);
	 				
	 					
	 				}
	 				
	 			 },     
	 		 
	 		 }); 
		 var cl = $(this).parent().attr("class");
		 $(this).parent().parent().removeClass().addClass("rating "+cl+"star");
		 $(this).blur();//去掉超链接的虚线框
		 return false;
	})
})