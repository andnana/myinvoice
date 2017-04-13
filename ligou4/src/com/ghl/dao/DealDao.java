package com.ghl.dao;

import java.util.List;

import com.ghl.entity.Customer;
import com.ghl.entity.Product;
import com.ghl.entity.Product2;
import com.ghl.entity.SalePerson;



public interface DealDao {
	public List<Customer> findCustomer(String customername, String contact);
	public List<SalePerson> findSalePerson(String salePersonName, String contact);
	public List<Product> getProductList();
	public void addDeal(Customer customer, List<Product2> product2List, Integer salepersonid);
}
