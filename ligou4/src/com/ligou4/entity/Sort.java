package com.ligou4.entity;

import java.util.ArrayList;
import java.util.List;


public class Sort {
	private Integer id;
	private String sortname;
	private List<Products> productsList = new ArrayList<Products>();
	
	public List<Products> getProductsList() {
		return productsList;
	}
	public void setProductsList(List<Products> productsList) {
		this.productsList = productsList;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSortname() {
		return sortname;
	}
	public void setSortname(String sortname) {
		this.sortname = sortname;
	}
	
}
