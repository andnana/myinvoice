package com.ghl.entity;
import java.util.Date;

import com.ghl.entity.Customer;

public class Product2 {
	private Integer id;
	private Integer product2long;
	private Integer product2width;
	private Integer product2thick;
	private Integer quantity;
	private Integer productid;
	private Product product;
	private Double price;
	private Double amount;
	
	
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getProductid() {
		return productid;
	}
	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	private Date  date;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	private Customer customer;
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getProduct2long() {
		return product2long;
	}
	public void setProduct2long(Integer product2long) {
		this.product2long = product2long;
	}
	public Integer getProduct2width() {
		return product2width;
	}
	public void setProduct2width(Integer product2width) {
		this.product2width = product2width;
	}
	public Integer getProduct2thick() {
		return product2thick;
	}
	public void setProduct2thick(Integer product2thick) {
		this.product2thick = product2thick;
	}


	
}
