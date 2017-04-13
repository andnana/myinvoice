package com.ghl.dao;

import java.util.List;

import com.ghl.entity.Customer;

public interface CustomerDao {
	public void addCustomer(Customer customer);
	public List<Customer> getCustomerList(Integer page, Integer pageSize);
	public int getTotalCustomerItem();
	public int getCustomerTotalPage(int pageSize);
	
}
