package com.ligou4.admin.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.entity.Products;

@Controller
@Scope("prototype")
public class ProductsImgListAction {
	private Integer productsid;
	private Products products;
	
	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public Integer getProductsid() {
		return productsid;
	}

	public void setProductsid(Integer productsid) {
		this.productsid = productsid;
	}
	@Resource
	@Qualifier("adminDAOImpl")
	private AdminDAO adminDAO;
	public String execute(){
		System.out.println(productsid+"productsid*(*(*(*");
		products = adminDAO.findProductsById(productsid);
		return "success";
	}
}
