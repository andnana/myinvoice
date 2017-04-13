/*衣服颜色切换*/
$(function(){
	$(".color_change ul li img").click(function(){ 
		
		var bigImgSrc = $("#bigImg").attr("src");
		var bigImgJqimg = $("#bigImg").attr("jqimg");
		var bigImgSrcLeftIndex = bigImgSrc.lastIndexOf("/");
		var bigImgJqimgLeftIndex = bigImgJqimg.lastIndexOf("/");
		var bigImgSrcRightIndex = bigImgSrc.indexOf("_");
		var bigImgJqimgRightIndex = bigImgJqimg.indexOf("_");
		bigImgSrcLeftIndex += 1;
		bigImgJqimgLeftIndex += 1;
		var bigImgJqimgLeft = bigImgJqimg.substring(0, bigImgJqimgLeftIndex);
		var bigImgJqimgRight = bigImgJqimg.substring(bigImgJqimgRightIndex);
		var bigImgSrcLeft = bigImgSrc.substring(0, bigImgSrcLeftIndex);
		var bigImgSrcRight = bigImgSrc.substring(bigImgSrcRightIndex);
		
		  var imgSrc = $(this).attr("src");
		 
		  var i = imgSrc.lastIndexOf("/");
		  i += 1;
		  var unit = imgSrc.substring(i);
		 
		  var imgSrcLeft = imgSrc.substring(0,i);
		
		  var productsid = $("input:[type='hidden']").attr("value");
		  
		 var imgSrcLeft2 = imgSrcLeft + productsid + "/";
		
		 
		 var i2 = unit.lastIndexOf(".");
		
		 
		 var suffix = unit.substring(i2);
		 var colorname = unit.substring(0,i2);
		 
			$.ajax({ 
				
				url: 'getimglist.action', 
				data: {productsid:productsid, colorname:colorname},
				
				dataType: 'json',      
				success: function(data) { 
					$(".pro_detail_left ul.imgList")
					.empty();
			//	console.log(data[0].info+"fewfewr");
				var html = '';
				
				$.each( data , function(picIndex, pic){
					html += '<li><img src="'+imgSrcLeft2+pic['imgname']+pic['suffix']+'" alt="" /></li>';
				//	<li><img src="<%=basePath %>admin/img/<s:property value="products.id"/>/<s:property value="imgname"/><s:property value="suffix"/>" alt="" /></li>
				}
						
				);
				$(".pro_detail_left ul.imgList").html(html);
				 var bigImgSrc = bigImgSrcLeft + data[0].imgname + "_small"+data[0].suffix;
				  var bigImgJqimg = bigImgJqimgLeft + data[0].imgname + "_big"+data[0].suffix ;
				//  var htmlurl =  bigImgSrcLeft + color;
				  $("#bigImg").attr({"src": bigImgSrc ,"jqimg": bigImgJqimg });
				  $("#thickImg").attr("href", bigImgJqimg);
			}
			});
	
		  var alt = $(this).attr("alt");
		  $(".color_change strong").text(alt);
		  
	});
});