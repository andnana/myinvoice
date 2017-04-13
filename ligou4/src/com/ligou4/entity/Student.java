package com.ligou4.entity;


public class Student {

	private Integer id;

	private String name;            
	private String sex;
	private Integer class_id;
	
	public Integer getClass_id() {
		return class_id;
	}
	public void setClass_id(Integer classId) {
		class_id = classId;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
}
