package com.ligou4.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.User;

@Controller
@Scope("prototype")
public class TestUsernameAction {
	private String username;
	private Integer msgflag = 0;
	private User user;
	@Resource
	@Qualifier("hibernateIndexDAO")
	
	private CostDao costDAO;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public Integer getMsgflag() {
		return msgflag;
	}
	public void setMsgflag(Integer msgflag) {
		this.msgflag = msgflag;
	}
	public CostDao getCostDAO() {
		return costDAO;
	}
	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}
	public String execute(){
		System.out.println(username+"username");
		user = costDAO.findUserByUsername(username);
		if(user != null){
			msgflag = 1;
		}else{
			msgflag = 0;
		}
		System.out.println(msgflag+"msgflag");
		return "success";
	}
}
