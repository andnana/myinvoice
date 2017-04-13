package com.ligou4.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class User {
	private Integer id;
	private String username;
	private String pwd;
	private String email;
	private String name;
	private Integer age;
	private String gender;
	private String phone;
	private String qq;
	private Date birthday;
	private String headpic;
	private List<Score> scoreList = new ArrayList<Score>();
	
	public List<Score> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<Score> scoreList) {
		this.scoreList = scoreList;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getHeadpic() {
		return headpic;
	}
	public void setHeadpic(String headpic) {
		this.headpic = headpic;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private List<ProductsComment> productsCommentList = new ArrayList<ProductsComment>();
	private List<Comment> commentlist = new ArrayList<Comment>();
	private List<News> newsList = new ArrayList<News>();

	public List<ProductsComment> getProductsCommentList() {
		return productsCommentList;
	}
	public void setProductsCommentList(List<ProductsComment> productsCommentList) {
		this.productsCommentList = productsCommentList;
	}
	public List<News> getNewsList() {
		return newsList;
	}
	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}
	public List<Comment> getCommentlist() {
		return commentlist;
	}
	public void setCommentlist(List<Comment> commentlist) {
		this.commentlist = commentlist;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	


}
