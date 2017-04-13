$(function(){
	$("#msg").hide();
	$("#class2").hide();
	$("#class3").hide();
	$('#advselect').hide();
	$(':checkbox').click(function(event){
		if($(':checkbox').is(':checked')){
			$('#advselect').slideDown('slow');
			}else{
				$('#advselect').slideUp('slow');
			}
		
	});
	function trim(str){
		return str.replace(/^\s*/,"").replace(/\s*$/,"");
	}
//	
//	function change(imgObj){
//		imgObj.src = "createImage?date="+new Date().getTime();
//	}
	$("#code").click(function(){
	
		this.src = "createImage?date="+new Date().getTime();
	});
	$("#changeCode").click(function(){
		
		$("#code").attr('src', "createImage?date="+new Date().getTime());
	});
//	  $("#register").find('tr').each(function() {
//	        $(this).find("td").eq(0).css({'width':'80px'});
//	     });
//	    $("#register").find('tr').each(function() {
//	        $(this).find("td").eq(1).css(
//	        		{
//	        			'width':'320px',
//	        			 'text-indent':'15px',
//	  					 'letter-spacing':'2px' 
//	        				}
//	        		);
//	     });
//	    
//	    $("#register").find('tr').each(function() {
//	    	   $(this).find("td").eq(2).css(
//	    			   {
//	    				   'border':'red 0px solid',
//	    				   'width':'300px',
//	    				   'height':'25px',
//	    				   'margin':'3px',
//	    				   'padding':'6px',
//	    				   'text-indent':'35px',
//	    					 'letter-spacing':'2px'  
//	    			   }
//	    			   
//	    	   );
//	     });
	 var urlstr = window.location.href;
 	
 	var index = urlstr.lastIndexOf("/");
 	index += 1;
 	var urlstr2 = urlstr.substring(0, index);
	
	var $usernameSuccess = 0;
	var $passwordSuccess = 0;
	var $password2Success = 0;
	var $emailSuccess = 0;
	var $headSuccess = 0;
	var $sexSuccess = 0;
	var $nicknameSuccess = 0;
	var $birthdaySuccess = 0;
	var $qqSuccess =0;
	var $mobilephoneSuccess = 0;
	var $codeTextSuccess = 0;
	
	var $username = $("#username");
	var $usernameMsg = $("#tip > ul > li:eq(0)");
	var $password = $("#password");
	var $passwordMsg = $("#tip > ul > li:eq(1)");
	var $password2 = $("#password2");
    var $password2Msg = $("#tip > ul > li:eq(2)");
    var $email = $("#email");
    var $emailMsg = $("#tip > ul > li:eq(3)");
    var $headMsg = $("#tip > ul > li:eq(4)");
    var $sexMsg = $("#tip > ul > li:eq(5)");
    var $nickName = $("#nickname");
    var $nickNameMsg = $("#tip > ul > li:eq(6)");
    var $birthdayMsg = $("#tip > ul > li:eq(7)");
    var $qq = $("#qq");
    var $qqMsg = $("#tip > ul > li:eq(8)");
    var $mobilephone = $("#mobilephone");
    var $mobilephoneMsg = $("#tip > ul > li:eq(9)");
    var $codeText = $("#codeText");
    var $codeTextMsg = $("#tip > ul > li:eq(12)");
    
	function showAccept(inputname){
		inputname.css({
			
			'background-repeat':'no-repeat'
				});
		inputname.css('background-image','url('+urlstr2+'ligou/images/process-accept.png)');
	}
	function showInfo(inputname,text){
		inputname.css({
			
			'background-repeat':'no-repeat'
				});
		inputname.css({
			'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
			
		});
		inputname.html(text);
	}
	function showRightSymbol($usernameSuccess,$passwordSuccess,$password2Success,$emailSuccess,$headSuccess,$sexSuccess,$nicknameSuccess,$birthdaySuccess,$qqSuccess,$mobilephoneSuccess,$codeTextSuccess){
		if($usernameSuccess==1){
			showAccept($usernameMsg);
		}else{
			showInfo($usernameMsg,"请输入用户名");
		}
		if($passwordSuccess==1){
			showAccept($passwordMsg);
		}else{
			showInfo($passwordMsg,"请输入密码");
		}
		if($password2Success==1){
			showAccept($password2Msg);
		}else{
			showInfo($password2Msg,"请确认密码");
		}
		if($emailSuccess==1){
			showAccept($emailMsg);
		}else{
			showInfo($emailMsg,"请输入电子邮箱");
		}
		if($headSuccess==1){
			showAccept($headMsg);
		}else{
			
		}
		if($sexSuccess==1){
			showAccept($sexMsg);
		}else{
			
		}
		if($nicknameSuccess==1){
			showAccept($nickNameMsg);
		}else{
			showInfo($nickNameMsg,"请输入昵称");
		}
		if($birthdaySuccess==1){
			showAccept($birthdayMsg);
		}else{
			
		}
		if($qqSuccess==1){
			showAccept($qqMsg);
		}else{
			showInfo($qqMsg,"请输入qq号码");
		}
		if($mobilephoneSuccess==1){
			showAccept($mobilephoneMsg);
		}else{
			showInfo($mobilephoneMsg,"请输入手机号");
		}
		if($codeTextSuccess==1){
			showAccept($codeTextMsg);
		}else{
			showInfo($codeTextMsg,"请输入验证码");
		}
	}

	    function clearstr(){
//	    	$usernameMsg.empty().css('background-image','none');
//	    	$passwordMsg.empty().css('background-image','none');
//	    	$password2Msg.empty().css('background-image','none');
//	    	$emailMsg.empty().css('background-image','none');
	    	showRightSymbol($usernameSuccess,$passwordSuccess,$password2Success,$emailSuccess,$headSuccess,$sexSuccess,$nicknameSuccess,$birthdaySuccess,$qqSuccess,$mobilephoneSuccess,$codeTextSuccess);
		}
	    
	    clearstr();
	    
	    
	   
	    
	    
	    $username.focus(function(){
	    	clearstr();
	
	    	
	    	
	    	
	    	
	    	$usernameMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
	    	$usernameMsg.html("用户名可以包换中英文，中横线-、下横线_、数字，长度在3-20个字符。"); 
	    	$usernameMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
				
			});
	    });
	    
	    
	    
	    
	    $username.blur(function(){
	    	clearstr();
	     var	$usernameValue = trim($username.val());
	    	if($usernameValue==""){
	    		
	    		$usernameMsg.empty();
	    		$usernameMsg.html("用户名不能为空,请输入用户名");
	    		$usernameMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    		$usernameSuccess = 0;
	    		return;
	    	}
	    	var reg = /^[\u4e00-\u9fa5a-zA-Z0-9\-_]{3,20}$/;
	    	if(!reg.test($usernameValue)){
	    		$usernameMsg.html("用户名格式不正确，请重新输入。");
	    		$usernameMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    		$usernameSuccess = 0;
	    		return;
	    	}
	    	

	    	
	    
	    	 $.ajax({      
	    			url: 'testusername.action',    
	    			type:"POST",
	    			dataType: 'json',
	    			data:{username:$usernameValue},
	    			contentType:"application/x-www-form-urlencoded;charset=utf-8",
	    			success: function(data) {       
	    				console.log(data);
	    				
	    				$usernameMsg.empty();
	    				$usernameMsg.css({
	    					
	    					'background-repeat':'no-repeat'
	    						});
	    				if(data==1){
	    					$usernameMsg.html("用户名已存在"); 
	    					$usernameMsg.css({
	    						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
	    						
	    					});
	    				}else{
	    					$usernameMsg.html("用户名可用"); 
	    					$usernameMsg.css({
	    						'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
	    						
	    					});
	    					$usernameSuccess = 1;
	    				}
	    				
	    			 },     
	    			// statusCode: {        
	    			//	 404: function() {         
	    			//	     alert("没有找到相关文件~~");     
	    			//	 }      
	    			// }   
	    		 });  
	    });
	    
	    
    
    	
    	
    	
	    $password.focus(function(){
	    	clearstr();
	    	
	    	
	    	$passwordMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
	    	$passwordMsg .html("密码可以包换英文，中横线-、下横线_、数字，长度在3-30个字符。"); 
	    	$passwordMsg .css({
				'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
				
			});
	    });
	  
	    $password.blur(function(){
	    	clearstr();
	    
	    	var $passwordValue = trim($password.val());
	    	if($passwordValue==""){
	    		$passwordMsg.html("请输入密码");
	    		$passwordMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    		$passwordSuccess = 0;
	    		return;
	    	}
	    	var reg = /^[a-zA-Z0-9\-_]{3,30}$/;
	    	if(!reg.test($passwordValue)){
	    		$passwordMsg.html("密码可以包换英文，中横线-、下横线_、数字，长度在3-30个字符。密码格式不正确，请重新输入。");
	    		$passwordMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    		$passwordSuccess = 0;
	    		return;
	    	}
	    	$passwordMsg.empty();
	    	$passwordMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
			
	    	$passwordMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
				
			});
	    	$passwordSuccess = 1;
	    
	    
	    });
	    
	    
	    
	    
	    
	    $password2.focus(function(){
	    	clearstr();
	    
	    	
	    	$password2Msg.css({
				
				'background-repeat':'no-repeat'
					});
	    
	    	$password2Msg.html("确认密码"); 
	    	$password2Msg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
				
			});
	    });
	    
	    
	    
	    $password2.blur(function(){
	    	clearstr();
	    	var reg = /^[a-zA-Z0-9\-_]{3,30}$/;
	    	if(!reg.test($password.val())){
	    		$password2Success = 0;
	    		return;
	    	}
	    	var $password2value = trim($password2.val());
	    	if(trim($("#password").val()) != $password2value){
	    	
	    		
		    	
	    		$password2Msg.empty();
	    		$password2Msg.css({
					
					'background-repeat':'no-repeat'
						});
		    
			
	    		$password2Msg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
		    	
	    		$password2Msg.html("两次输入密码不一致，请重新输入。");
	    		$password2Success = 0;
		    	return;
	    	}
	    	$password2Msg.empty();
	    	$password2Msg.css({
				
				'background-repeat':'no-repeat'
					});
	    
		
	    	$password2Msg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
				
			});
	    	$password2Success = 1;
	    });
	   
	    $email.focus(function(){
	    	clearstr();
	    
	    	$emailMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
	    	$emailMsg.html("您的电子邮件"); 
	    	$emailMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
				
			});
	    });
	    $email.blur(function(){
	    	clearstr();
	    	var $emailvalue = trim($email.val());
	 var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	 	if(!reg.test($emailvalue)){
	 		$emailMsg.html("电子邮件格式不正确，请重新输入。");
	 		$emailMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
				
			});
	 		$emailSuccess = 0;
    		return;
    	}
	 	$emailMsg.empty();
	 	$emailMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
		
	 	$emailMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
				
			});
	    $emailSuccess = 1;
	    });
	    $nickName.focus(function(){
	    	clearstr();
	    	$nickNameMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
	    	$nickNameMsg.html("昵称可以包换中英文，中横线-、下横线_、数字，长度在3-20个字符"); 
	    	$nickNameMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
				
			});
	    });
	    
	    $nickName.blur(function(){
	    	clearstr();
//	    		if($nickName.val()==""){
//	    		
//	    			$nickNameMsg.empty();
//	    			$nickNameMsg.html("昵称不能为空,请输入昵称");
//	    			$nickNameMsg.css({
//					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
//					
//				});
//	    			$nicknameSuccess = 0;
//	    		return;
//	    	}
	      var $nickNameValue = trim($nickName.val());
	    	var reg = /^[\u4e00-\u9fa5a-zA-Z0-9\-_]{3,20}$/;
	    	if(!reg.test($nickNameValue)){
	    		$nickNameMsg.html("昵称格式不正确，请重新输入");
	    		$nickNameMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    		$nicknameSuccess = 0;
	    		return;
	    	}
	    	$nickNameMsg.empty();
	    	$nickNameMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
			
	    	$nickNameMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
				
			});
	    	$nicknameSuccess = 1;
	    });
	    $qq.focus(function(){
	    	clearstr();
	    	$qqMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
	    	$qqMsg.html("您的qq号码"); 
	    	$qqMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
				
			});
	    });
	    
	    $qq.blur(function(){
	    	clearstr();
//	    		if($qq.val()==""){
//	    		
//	    		$qqMsg.empty();
//	    		$qqMsg.html("qq号码不能为空,请输入qq号码");
//	    		$qqMsg.css({
//					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
//					
//				});
//	    		$qqSuccess = 0;
//	    		return;
//	    	}
	    	var reg = /^[1-9][0-9]{4,}$/;
	    	var $qqValue = trim($qq.val());
	    	if(!reg.test($qqValue)){
	    		$qqMsg.html("qq号码格式不正确，请重新输入。");
	    		$qqMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    		$qqSuccess = 0;
	    		return;
	    	}
	    	$qqMsg.empty();
	    	$qqMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
			
	    	$qqMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
				
			});
	    	$qqSuccess = 1;
	    });
	    $mobilephone.focus(function(){
	    	clearstr();
	    	$mobilephoneMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
	    	$mobilephoneMsg.html("您的手机号码"); 
	    	$mobilephoneMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
				
			});
	    });
	    
	    $mobilephone.blur(function(){
	    	 clearstr();
//	    		if($mobilephone.val()==""){
//	    		
//	    			$mobilephoneMsg.empty();
//	    			$mobilephoneMsg.html("手机号码不能为空,请输入手机号码号码");
//	    			$mobilephoneMsg.css({
//					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
//					
//				});
//	    			$mobilephoneSuccess = 0;
//	    		return;
//	    	}
	    	var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
	    	var $mobilephoneValue = trim($mobilephone.val());
	    	if(!reg.test($mobilephoneValue)){
	    		$mobilephoneMsg.html("手机号码格式不正确，请重新输入。");
	    		$mobilephoneMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    		$mobilephoneSuccess = 0;
	    		return;
	    	}
	    	$mobilephoneMsg.empty();
	    	$mobilephoneMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
			
	    	$mobilephoneMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
				
			});
	    	$mobilephoneSuccess = 1;
	    });
	    $codeText.focus(function(){
	    	clearstr();
	    	$codeTextMsg.css({
				
				'background-repeat':'no-repeat'
					});
	    
	    	$codeTextMsg.html("请输入验证码"); 
	    	$codeTextMsg.css({
				'background-image':'url('+urlstr2+'ligou/images/process-info.png)'
				
			});
	    });
	    $codeText.blur(function(){
	    	clearstr();
	    	$codeTextValue=trim($codeText.val());
	    
	    	
	    	if($codeTextValue==""){
	    		
	    		$codeTextMsg.empty();
	    		$codeTextMsg.html("请输入验证码");
	    		$codeTextMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    		$codeTextSuccess = 0;
	    		return;
	    	}
	   	 $.ajax({      
 			url: 'testcode.action',    
 			type:"POST",
 			dataType: 'json',
 			data:{code:$codeTextValue},
 			contentType:"application/x-www-form-urlencoded;charset=utf-8",
 			success: function(data) {       
 				console.log(data);
 				
 				$codeTextMsg.empty();
 				$codeTextMsg.css({
 					
 					'background-repeat':'no-repeat'
 						});
 				if(data==0){
 					$codeTextMsg.html("验证码错误"); 
 					$codeTextMsg.css({
 						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
 						
 					});
 					
 				}else{
 					$codeTextMsg.css({
 						'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
 						
 					});
 					$codeTextSuccess = 1;
 				}
 				
 			 },     
 		 
 		 }); 
	    });
	    $("#submitbtn").click(function(){
	    
	    	if(
	    			
	    			 $usernameSuccess != 1 ||
	    	    	$password2Success != 1 ||
	    	    	 $emailSuccess != 1 ||
	    	    	 $codeTextSuccess != 1
	    	    	// $nicknameSuccess != 1 ||
	    	    	// $qqSuccess !=1 ||
	    	    	// $mobilephoneSuccess != 1 	 
	    	){
	    		clearstr();
//	    	alert("dferrgert"+ $usernameSuccess +
//	    	    	$password2Success +
//	    	    	 $emailSuccess +
//	    	    	 $codeTextSuccess
//	    	    	// $nicknameSuccess +
//	    	    	// $qqSuccess +
//	    	    	// $mobilephoneSuccess 
//	    	    	 );	
	    	return false;
	    	}
	     	alert("dfer"+ $usernameSuccess +
	    	    	$password2Success +
	    	    	 $emailSuccess +
	    	    	 $codeTextSuccess
	    	    	// $nicknameSuccess +
	    	    	// $qqSuccess +
	    	    	// $mobilephoneSuccess 
	    	    	 );	
	    	$("form").submit();
	    });
	    
	
	    $("#logout").click(function(){
	    	
	     	$.ajax({      
	 			url: 'logout.action',    
	 			type:"POST",
	 			dataType: 'json',
	 			contentType:"application/x-www-form-urlencoded;charset=utf-8",
	 			success: function(data) {       
	 		
//	 				$acceptMsg.empty();
//	 				$acceptMsg.css({
//	 					
//	 					'background-repeat':'no-repeat'
//	 						});
	 				if(data==0){
//	 					$acceptMsg.html("退出失败"); 
//	 					$acceptMsg.css({
//	 						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
//	 						
//	 					});
	 					
	 				}else{
//	 					$acceptMsg.html("退出成功"); 
//	 					$acceptMsg.css({
//	 						'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
//	 						
//	 					});
	 					$("#msg").fadeIn('slow');
	 					$("#msg").text("退出成功");
	 					setTimeout(function(){
	 						$("#msg").fadeOut('slow');
	 					},2000);
	 					setTimeout(function(){
	 						window.location.reload(true);
	 					},3000);
	 				}
	 				
	 			 },     
	 		 
	 		 }); 
	    });
	    
	    var loginUsernameBoo = false;
	    var loginPasswordBoo = false;
	    var loginCheckCodeBoo = false;
	    
	    
	    $("#loginUsername").blur(function(){
	    	$loginUsernameValue = trim($("#loginUsername").val());
	    	var $usernameMsg = $("#loginMsg > ul > li:eq(0)");
	    	if($loginUsernameValue == ""){
	    		
	    		$usernameMsg.html("请输入用户名");
	    		$usernameMsg.css({
						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
						
					});
	    		return;
	    	}
	    	 $.ajax({      
	    			url: 'testusername.action',    
	    			type:"POST",
	    			dataType: 'json',
	    			data:{username:$loginUsernameValue},
	    			contentType:"application/x-www-form-urlencoded;charset=utf-8",
	    			success: function(data) {       
	    				console.log(data);
	    				
	    				$usernameMsg.empty();
	    				$usernameMsg.css({
	    					
	    					'background-repeat':'no-repeat'
	    						});
	    				if(data==1){
	    					
	    					$usernameMsg.css({
	    						'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
	    						
	    					});
	    					loginUsernameBoo = true;
	    				}else{
	    					
	    					$usernameMsg.html("用户名不存在"); 
	    					$usernameMsg.css({
	    						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
	    						
	    					});
	    					
	    				}
	    				
	    			 }     
	    			// statusCode: {        
	    			//	 404: function() {         
	    			//	     alert("没有找到相关文件~~");     
	    			//	 }      
	    			// }   
	    		 });
	    });
	    $("#loginPassword").blur(function(){
	    	$loginPasswordValue = trim($("#loginPassword").val());
	    	var $passwordMsg = $("#loginMsg > ul > li:eq(1)");
	    	if($loginPasswordValue == ""){
	    		$passwordMsg.html("请输入密码");
	    		$passwordMsg.css({
						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
						
					});
	    	}else{
	    		$passwordMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
					
				});
	    		loginPasswordBoo = true;
	    	}
	    });
	    $("#loginCodeText").blur(function(){
	    	
	    	var $codeTextMsg = $("#loginMsg > ul > li:eq(4)");
	    	var $codeTextValue=trim($("#loginCodeText").val());
	    
	    	
	    	if($codeTextValue==""){
	    		
	    		$codeTextMsg.empty();
	    		$codeTextMsg.html("请输入验证码");
	    		$codeTextMsg.css({
					'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
					
				});
	    	
	    		
	    	}
	   	 $.ajax({      
 			url: 'testcode.action',    
 			type:"POST",
 			dataType: 'json',
 			data:{code:$codeTextValue},
 			contentType:"application/x-www-form-urlencoded;charset=utf-8",
 			success: function(data) {       
 				console.log(data);
 				
 				$codeTextMsg.empty();
 				$codeTextMsg.css({
 					
 					'background-repeat':'no-repeat'
 						});
 				if(data==0){
 					$codeTextMsg.html("验证码错误"); 
 					$codeTextMsg.css({
 						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
 						
 					});
 					
 				}else{
 					$codeTextMsg.css({
 						'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
 						
 					});
 					loginCheckCodeBoo = true;
 				}
 				
 			 },     
 		 
 		 }); 
	    });
	    
	    $("#loginBtn").click(function(){
	    	
		    if(!loginUsernameBoo || !loginPasswordBoo || !loginCheckCodeBoo){
		    	$("#msg").fadeIn('slow');
					$("#msg").text("请继续输入登陆信息");
					setTimeout(function(){
						$("#msg").fadeOut('slow');
					},2000);
					return false;
		    }
	    	var $usernameValue = trim($("#loginUsername").val());
	    	var $passwordValue = trim($("#loginPassword").val());
	    	var $codeTextValue = trim($("#loginCodeText").val());
	    	var $usernameMsg = $("#loginMsg > ul > li:eq(0)");
	    	var $passwordMsg = $("#loginMsg > ul > li:eq(1)");
	    	var $codeTextMsg = $("#loginMsg > ul > li:eq(4)");
	    	
	    	var $acceptMsg = $("#loginMsg > ul > li:eq(5)");
	    
	    	
	    	if($usernameValue == ""){
	    		
	    		$usernameMsg.html("请输入用户名");
	    		$usernameMsg.css({
						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
						
					});
		    	
		    		
		    	
	    	}
	    	
	    	if($passwordValue == ""){
	    		
	    		$passwordMsg.html("请输入密码");
	    		$passwordMsg.css({
						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
						
					});
		    	
		    		
		    	
	    	}
	    	if($codeTextValue == ""){
	    		
	    		$codeTextMsg.html("请输入验证码");
	    		$codeTextMsg.css({
	    			'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
	    			
	    		});
	    		
	    	}
	    	
	    	
	    	$.ajax({      
	 			url: 'login.action',    
	 			type:"POST",
	 			dataType: 'json',
	 			data:{username:$usernameValue,password:$passwordValue},
	 			contentType:"application/x-www-form-urlencoded;charset=utf-8",
	 			success: function(data) {       
	 			
	 				$acceptMsg.empty();
	 				$acceptMsg.css({
	 					
	 					'background-repeat':'no-repeat'
	 						});
	 				if(data==0){
	 					$acceptMsg.html("密码错误"); 
	 					$acceptMsg.css({
	 						'background-image':'url('+urlstr2+'ligou/images/process-stop.png)'
	 						
	 					});
	 					
	 				}else if(data == 1){
//	 					$acceptMsg.html("登陆成功"); 
//	 					$acceptMsg.css({
//	 						'background-image':'url('+urlstr2+'ligou/images/process-accept.png)'
//	 						
//	 					});
	 					$("#msg").fadeIn('slow');
	 					$("#msg").text("登陆成功");
	 					setTimeout(function(){
	 						$("#msg").fadeOut('slow');
	 					},2000);
	 					setTimeout(function(){
	 						window.location.reload(true);
	 					},3000);
	 					
	 				}
	 				
	 			 },     
	 		 
	 		 }); 
	    	
	    });
	    
	    
		$(".breadcrumb:eq(1) li").click(function(){
    		
    		
    		var brand = $(this).html();
    		
    		$("#brand").attr("value",brand);
    		$("form").submit();
    		
    	});
		$(".breadcrumb:eq(2) li").click(function(){
			var cost = $(this).html();
			
			$("#cost").attr("value",cost);
			$("form").submit();
		});
		$(".brand-msg").click(function(){
			$("#brand").removeAttr("value");
			$("form").submit();
		});
		
		$(".cost-msg").click(function(){
			$("#cost").removeAttr("value");
			$("form").submit();
			
		});
		
		$("#class1 li").hover(function(){
			$(this).siblings().css("background-color","white");
			
			$("#class3").hide();
			
			//var $selectStr = $(this).find("a").html();
			var $ahref = $(this).find("a").attr("href");
			var	$ahrefIndex = $ahref.lastIndexOf("=");
			$ahrefIndex += 1;
			var $onesortid = $ahref.substring($ahrefIndex);
		
		
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
	    						html += '<li><a href="'+$ahref+'&secondsortid='+sort['id']+'">'+sort['sortname']+'</a></li>';
	    					} );
	    					$("#class2").html(html);
	    					
	    					$("#class2 li").hover(function(){
	    						
	    						$(this).siblings().css("background-color","white");
	    					
	    						
	    						
	    						var $ahref = $(this).find("a").attr("href");
	    						var	$ahrefIndex = $ahref.lastIndexOf("=");
	    						$ahrefIndex += 1;
	    						var $secondsortid = $ahref.substring($ahrefIndex);
//	    						alert($secondsortid);
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
	    				    						html += '<li><a href="'+$ahref+'&thirdsortid='+sort['id']+'">'+sort['sortname']+'</a></li>';
	    				    					//	<li><img src="<%=basePath %>admin/img/<s:property value="products.id"/>/<s:property value="imgname"/><s:property value="suffix"/>" alt="" /></li>
	    				    					} );
	    				    					$("#class3").html(html);
	    				    					$("#class3").show();
	    			    						$("#class3 li").css("background-color","white");
	    			    					
	    				    			 }     
	    				    			// statusCode: {        
	    				    			//	 404: function() {         
	    				    			//	     alert("没有找到相关文件~~");     
	    				    			//	 }      
	    				    			// }   
	    				    		 });  
	    					});
	    					$("#class2").show();
	    					$("#class2 li").css("background-color","white");
	    				
	    			 }    
	    			// statusCode: {        
	    			//	 404: function() {         
	    			//	     alert("没有找到相关文件~~");     
	    			//	 }      
	    			// }   
	    		 });  
			
		});

	
		$("table").mouseleave(function(){
			$("#class2").hide();
			$("#class1 li").css("background-color","white");
			$("#class3").hide();
		});

		var ua = navigator.userAgent;
		var b = ua.indexOf("MSIE");
		if(b>0){
			$("#productslistcontainer").empty();
			$("#msg").fadeIn('slow');
				$("#msg").text("IE9及以下版本的浏览器不被支持。请换其它浏览器。");
				setTimeout(function(){
					$("#msg").fadeOut('slow');
				},2000);
		}	
		
});




