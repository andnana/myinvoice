package com.ghl.entity;

import java.util.Date;

public class Product {
	private Integer id;
	private String productname;
	private String introduce;
	private Double price;
	private Integer thick;
	
	public Integer getThick() {
		return thick;
	}
	public void setThick(Integer thick) {
		this.thick = thick;
	}
	private Date date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
