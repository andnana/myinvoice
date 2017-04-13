package com.ghl.entity;

import java.util.Date;

public class SalePerson {
	private Integer id;
	private String salepersonname;
	private String contact;
	private String address;
	private Date date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSalepersonname() {
		return salepersonname;
	}
	public void setSalepersonname(String salepersonname) {
		this.salepersonname = salepersonname;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
