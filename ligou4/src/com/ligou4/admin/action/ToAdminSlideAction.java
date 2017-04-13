package com.ligou4.admin.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.admin.entity.Pic;
@Controller
@Scope("prototype")
public class ToAdminSlideAction {
	@Resource		
	@Qualifier("adminDAOImpl")
	AdminDAO adminDAO;
	public List<Pic> pics;
	
	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public List<Pic> getPics() {
		return pics;
	}

	public void setPics(List<Pic> pics) {
		this.pics = pics;
	}

	public String execute(){
		pics = adminDAO.getPics();
		return "success";
	}
}
