package com.ligou4.admin.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.admin.entity.ColorSort;

@Controller
@Scope("prototype")
public class ToProductsImgAction {
	private Integer id;
	private List<ColorSort> colorSortList = new ArrayList<ColorSort>();
	@Resource
	@Qualifier("adminDAOImpl")
	private AdminDAO adminDAO;
	
	public List<ColorSort> getColorSortList() {
		return colorSortList;
	}

	public void setColorSortList(List<ColorSort> colorSortList) {
		this.colorSortList = colorSortList;
	}

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
		colorSortList = adminDAO.getColorSortList();
		return "success";
	}
}
