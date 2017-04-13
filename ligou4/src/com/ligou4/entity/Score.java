package com.ligou4.entity;

public class Score {
	private Integer id;
	private Integer score;
	private Integer userid;
	private Integer productsid;
	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getProductsid() {
		return productsid;
	}
	public void setProductsid(Integer productsid) {
		this.productsid = productsid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	
}

