package com.ghl.action.customer;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.CustomerDao;
import com.ghl.entity.Customer;
@Controller
@Scope("prototype")
public class CustomerListAction extends BaseAction{
	 private List<Customer> customerList;
		@Resource
		@Qualifier("customerImpl")
		private CustomerDao customerDao;
		private Integer pageSize = 5; 
		
		private Integer page = 1; 
		private Integer totalPage;
		private Integer totalItem;
	
		public List<Customer> getCustomerList() {
			return customerList;
		}
		public void setCustomerList(List<Customer> customerList) {
			this.customerList = customerList;
		}
		public CustomerDao getCustomerDao() {
			return customerDao;
		}
		public void setCustomerDao(CustomerDao customerDao) {
			this.customerDao = customerDao;
		}
		public Integer getPageSize() {
			return pageSize;
		}
		public void setPageSize(Integer pageSize) {
			this.pageSize = pageSize;
		}
		public Integer getPage() {
			return page;
		}
		public void setPage(Integer page) {
			this.page = page;
		}
		public Integer getTotalPage() {
			return totalPage;
		}
		public void setTotalPage(Integer totalPage) {
			this.totalPage = totalPage;
		}
		public Integer getTotalItem() {
			return totalItem;
		}
		public void setTotalItem(Integer totalItem) {
			this.totalItem = totalItem;
		}
		public String execute(){
			customerList = customerDao.getCustomerList(page, pageSize);
			totalItem = customerDao.getTotalCustomerItem();
			totalPage = customerDao.getCustomerTotalPage(pageSize);
			return "success";
		}
		
}
