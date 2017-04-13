package com.ligou4.admin.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;

@Controller
@Scope("prototype")
public class CommonInfoDeleteAction {
	private Integer id;
	@Resource
	@Qualifier("adminDAOImpl")
	private AdminDAO adminDAO;
	
	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public String execute(){
		adminDAO.deleteCommonInfo(id);
		return "success";
	}
}
