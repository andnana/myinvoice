package com.ligou4.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.User;

@Controller
@Scope("prototype")
public class LoginAction extends BaseAction{
	private CommonInfo commonInfo;
	private String username;
	private String password;
	
	private Integer data;
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao dao;
	public Integer getData() {
		return data;
	}
	public void setData(Integer data) {
		this.data = data;
	}

	
	public CostDao getDao() {
		return dao;
	}
	public void setDao(CostDao dao) {
		this.dao = dao;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute(){
		commonInfo = dao.getCommonInfo();
		User user = dao.login(username, password);
		if(user != null){
			session.put("user", user);
			data = 1;
		}else{
			data = 0;
		}
		 System.out.println(data+"data");
		return "success";
	}
}
