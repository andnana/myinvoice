package com.ligou4.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Controller
@Scope("prototype")
public class LogoutAction extends BaseAction{
	private Integer data;
	
	public Integer getData() {
		return data;
	}

	public void setData(Integer data) {
		this.data = data;
	}

	public String execute(){
		session.remove("user");
		data = 1;
		System.out.println("logout");
		return "success";
	}
}
