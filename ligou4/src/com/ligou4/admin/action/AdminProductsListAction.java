package com.ligou4.admin.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.entity.Products;

@Controller
@Scope("prototype")
public class AdminProductsListAction {
	private Integer page = 1;
	private Integer pageSize = 8;
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	private List<Products> productslist = new ArrayList<Products>();
	@Resource
	@Qualifier("adminDAOImpl")
	private AdminDAO adminDAO;
	public List<Products> getProductslist() {
		return productslist;
	}
	public void setProductslist(List<Products> productslist) {
		this.productslist = productslist;
	}
	public AdminDAO getAdminDAO() {
		return adminDAO;
	}
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	public String execute(){
		productslist = adminDAO.getProductsList(page, pageSize);
		return "success";
	}
}
