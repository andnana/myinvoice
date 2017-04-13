package com.ghl.action.customer;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.CustomerDao;
import com.ghl.entity.Customer;
@Controller
@Scope("prototype")
public class AddCustomerAction extends BaseAction{
	private Customer customer;
	@Resource
	@Qualifier("customerImpl")
	private CustomerDao customerDao;
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public CustomerDao getCustomerDao() {
		return customerDao;
	}
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}
	public String execute(){
		customer.setDate(new Date());
		customerDao.addCustomer(customer);
		return "success";
	}
}
