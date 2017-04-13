$(document).ready(function() {
	$('#uploadslideimg').hide();
	$('#deleteslideimg').hide();
	$('#slideimglist').hide();
	$('#slideimglist').slideDown('slow');
	$.ajax({ 
		//ought to be alter***************
		url: 'getTimes.do',     
		dataType: 'json',      
		success: function(data) {        
		console.log(data[0].info+"fewfewr");
		if(data[0].times<=2){
			console.log("aaaa");
		
			$('.a1 a').mouseover(function(){
				$('.a1 a').addClass('buttonChangeStyle');
			});
			$('.a1 a').mouseout(function(){
				$('.a1 a').removeClass('buttonChangeStyle');
			});
			$('.a2 a').addClass('buttonChangeStyle');
			$('.a1 a').click(function(event) {
				event.preventDefault();
				$('#getScore').slideDown('slow');
				$('#getScoreFirstStep').hide();
				
				$('#box').progressbar({
					width:150,
					height:15,
					value:0,
					text:'{value}%',
					onChange:function(newValue, oldValue){
						//console.log('newValue:'+newValue+',oldValue:'+oldValue);
						
						if(newValue==100){
							$('#getScoreResult').slideDown('slow');
							$('#getScore').hide();
					
							$.ajax({    
								url: 'beatDevil.do',     
								dataType: 'json',      
								success: function(data) {        
								
									$('#info').text("提示："+data[0].info);
									$('#score').text("分数："+data[0].score);
									$('#addScore').text("添加的分数："+data[0].addScore);
									$('#times').text("操作次数："+data[0].times);
							 }
							});
							
				
						}
					}
					
				});
				start();
				function start(){		
					var value = $('#box').progressbar('getValue');		
					if (value < 100){		
						value += Math.floor(Math.random() * 10);		
						$('#box').progressbar('setValue', value);			
						setTimeout(arguments.callee, 200);		
					}		
				};
			});
		}else{
			console.log("bbbbb");
			$('.a2 a').mouseover(function(){
				$('.a2 a').addClass('buttonChangeStyle');
			});
			$('.a2 a').mouseout(function(){
				$('.a2 a').removeClass('buttonChangeStyle');
			});
			$('.a1 a').addClass('buttonChangeStyle');
		}
	
	 }
	});



});