package com.ligou4.interceptor;

import com.ligou4.action.SaveCommentAction;
import com.ligou4.action.SubmitTextAction;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class FontInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		Object object = ai.getAction();
		String font;
		String message; 
		if(object != null){
			if(object instanceof SaveCommentAction){
				if(object instanceof SaveCommentAction){
					SaveCommentAction action = (SaveCommentAction)object;
					font = action.getFont();
					System.out.println(font+"font");
					message = action.getMessage();
					System.out.println(message+"message");
					message = message.replaceAll(font, "*****");
					action.setMessage(message);
				}else if(object instanceof SubmitTextAction){
					SubmitTextAction action = (SubmitTextAction)object;
					font = action.getFont();
					System.out.println(font+"font");
					message = action.getMessage();
					System.out.println(message+"message");
					message = message.replaceAll(font, "*****");
					action.setMessage(message);
				}
				
				
				
				
				return ai.invoke();
			}
		}else{
			return "login";
		}
			
		return "login"; 
	}

}
