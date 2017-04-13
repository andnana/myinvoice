package com.ghl.action.deal;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.DealDao;
import com.ghl.entity.Customer;
import com.ghl.entity.Product2;
@Controller
@Scope("prototype")
public class AddDealAction extends BaseAction{
	@Resource
	@Qualifier("dealImpl")
	private DealDao dealDao;
	
	private List<Product2> product2List = new ArrayList<Product2>();

	private Customer customer;
	private Integer salepersonid;
	

	public Integer getSalepersonid() {
		return salepersonid;
	}


	public void setSalepersonid(Integer salepersonid) {
		this.salepersonid = salepersonid;
	}


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


	public DealDao getDealDao() {
		return dealDao;
	}


	public void setDealDao(DealDao dealDao) {
		this.dealDao = dealDao;
	}


	public String execute(){
		System.out.println("*****product2List*****");
		System.out.println(product2List);
		System.out.println("*************customer****");
		System.out.println(customer);
		System.out.println("**********salepersonid****");
		System.out.println(salepersonid);
		System.out.println("*****product2List.get(0).getProductid()*****");
		System.out.println(product2List.get(0).getProductid());
		System.out.println("product2List.get(0).getProduct2long()");
		System.out.println(product2List.get(0).getProduct2long());
		System.out.println(("*******customer.getId()**********"));
		System.out.println(customer.getId());
		System.out.println("*******customer.getContact()******");
		System.out.println(customer.getContact());
		dealDao.addDeal(customer, product2List, salepersonid);
	
		return "success";
	}
}
