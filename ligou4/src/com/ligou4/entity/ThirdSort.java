package com.ligou4.entity;

import java.util.ArrayList;
import java.util.List;

public class ThirdSort {
	private Integer id;
	private String sortname;
	private Integer secondsortid;
	private List<Products> productsList = new ArrayList<Products>();
	
	public List<Products> getProductsList() {
		return productsList;
	}
	public void setProductsList(List<Products> productsList) {
		this.productsList = productsList;
	}
	public Integer getSecondsortid() {
		return secondsortid;
	}
	public void setSecondsortid(Integer secondsortid) {
		this.secondsortid = secondsortid;
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
