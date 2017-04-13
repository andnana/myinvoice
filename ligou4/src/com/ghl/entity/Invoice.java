package com.ghl.entity;

import java.util.Date;

public class Invoice {
	private Integer id;
	private double deposit;
	private double balance;
	private String note;
	private int paymentmethod;
	private String chequenumber;
	private Date date;

	public String getChequenumber() {
		return chequenumber;
	}
	public void setChequenumber(String chequenumber) {
		this.chequenumber = chequenumber;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	private Deal deal;
	
	public Deal getDeal() {
		return deal;
	}
	public void setDeal(Deal deal) {
		this.deal = deal;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public double getDeposit() {
		return deposit;
	}
	public void setDeposit(double deposit) {
		this.deposit = deposit;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getPaymentmethod() {
		return paymentmethod;
	}
	public void setPaymentmethod(int paymentmethod) {
		this.paymentmethod = paymentmethod;
	}
	
}
