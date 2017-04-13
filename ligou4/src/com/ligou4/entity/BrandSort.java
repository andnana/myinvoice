package com.ligou4.entity;

import java.util.ArrayList;
import java.util.List;

public class BrandSort {
	private Integer id;
	private String brandname;
	private String oneclass;
	private List<Products> productsList = new ArrayList<Products>();
	
	public List<Products> getProductsList() {
		return productsList;
	}
	public void setProductsList(List<Products> productsList) {
		this.productsList = productsList;
	}
	public String getOneclass() {
		return oneclass;
	}
	public void setOneclass(String oneclass) {
		this.oneclass = oneclass;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBrandname() {
		return brandname;
	}
	public void setBrandname(String brandname) {
		this.brandname = brandname;
	}
	
}
