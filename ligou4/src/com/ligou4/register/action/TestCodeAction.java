package com.ligou4.register.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.action.BaseAction;

@Controller
@Scope("prototype")
public class TestCodeAction extends BaseAction{
	private String code;
	private Integer msgflag = 0;
	
	public Integer getMsgflag() {
		return msgflag;
	}
	public void setMsgflag(Integer msgflag) {
		this.msgflag = msgflag;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String execute(){
		String imageCode = session.get("imageCode").toString();
		if(code.equalsIgnoreCase(imageCode)){
			msgflag=1;
		}else{
			msgflag=0;
		}
		
		return "success";
	}
}
