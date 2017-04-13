package com.ghl.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.ghl.entity.Customer;


public class Deal {
	private Integer id;
	private Customer customer = new Customer();
	private int ispaid;
	private int iscuttail100;
	private int iscuttail1000;
	private double discount;
	private double vat;
	private double subtotal;
	private double total;
	private String note;
	private Date date;
	private SalePerson salePerson = new SalePerson();
	
	public SalePerson getSalePerson() {
		return salePerson;
	}
	public void setSalePerson(SalePerson salePerson) {
		this.salePerson = salePerson;
	}
	private List<Invoice> invoiceList;
	
	public List<Invoice> getInvoiceList() {
		return invoiceList;
	}
	public void setInvoiceList(List<Invoice> invoiceList) {
		this.invoiceList = invoiceList;
	}
	private List<Product2> product2List = new ArrayList<Product2>();
	
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public List<Product2> getProduct2List() {
		return product2List;
	}
	public void setProduct2List(List<Product2> product2List) {
		this.product2List = product2List;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}


	public int getIspaid() {
		return ispaid;
	}
	public void setIspaid(int ispaid) {
		this.ispaid = ispaid;
	}
	public int getIscuttail100() {
		return iscuttail100;
	}
	public void setIscuttail100(int iscuttail100) {
		this.iscuttail100 = iscuttail100;
	}
	public int getIscuttail1000() {
		return iscuttail1000;
	}
	public void setIscuttail1000(int iscuttail1000) {
		this.iscuttail1000 = iscuttail1000;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public double getVat() {
		return vat;
	}
	public void setVat(double vat) {
		this.vat = vat;
	}
	public double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
