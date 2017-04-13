package com.ligou4.admin.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.entity.CommonInfo;

@Controller
@Scope("prototype")
public class CommonInfoUpdateAction {
	private CommonInfo commoninfo;
	@Resource
	@Qualifier("adminDAOImpl")
private AdminDAO adminDAO;

public AdminDAO getAdminDAO() {
	return adminDAO;
}

public void setAdminDAO(AdminDAO adminDAO) {
	this.adminDAO = adminDAO;
}

public CommonInfo getCommoninfo() {
	return commoninfo;
}

public void setCommoninfo(CommonInfo commoninfo) {
	this.commoninfo = commoninfo;
}
public String execute(){
	adminDAO.updateCommonInfo(commoninfo);
	System.out.println(commoninfo.toString());
	return "success";
}
}
