package com.ligou4.admin.entity;

import com.ligou4.entity.Products;

public class Img {
	private Integer id;
	private Integer productsid;
	private String imgname;
	private String suffix;
	private String colorname;
	private Products products;
	
	public Products getProducts() {
		return products;
	}
	public void setProducts(Products products) {
		this.products = products;
	}
	public String getColorname() {
		return colorname;
	}
	public void setColorname(String colorname) {
		this.colorname = colorname;
	}
	public String getSuffix() {
		return suffix;
	}
	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getProductsid() {
		return productsid;
	}
	public void setProductsid(Integer productsid) {
		this.productsid = productsid;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	
}
