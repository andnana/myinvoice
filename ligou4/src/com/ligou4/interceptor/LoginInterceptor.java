package com.ligou4.interceptor;

import java.util.Map;

import com.ligou4.entity.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor{
	public String intercept(ActionInvocation ai)throws Exception{
		System.out.println("loginInterceptor1");
		Map session = ai.getInvocationContext().getSession();
		System.out.println("loginInterceptor2");
		User user = (User)session.get("user");
		System.out.println(user+"user");
		System.out.println("loginInterceptor3");
		if(user != null){
			System.out.println("loginInterceptor4");
			return ai.invoke();
		}else{
			System.out.println("loginInterceptor5");
			return "login";
		}
	}
}
