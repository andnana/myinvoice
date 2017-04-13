package com.ghl.action.deal;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.dao.DealDao;
import com.ghl.entity.Customer;

@Controller
@Scope("prototype")
public class FindCustomerAction {
	 private List<Customer> dealList;
		@Resource
		@Qualifier("dealImpl")
		private DealDao dealDao;
		private String customername;
		private String contact;
		
		public String getCustomername() {
			return customername;
		}

		public void setCustomername(String customername) {
			this.customername = customername;
		}

		public String getContact() {
			return contact;
		}

		public void setContact(String contact) {
			this.contact = contact;
		}

		public List<Customer> getDealList() {
			return dealList;
		}

		public void setDealList(List<Customer> dealList) {
			this.dealList = dealList;
		}

		public DealDao getDealDao() {
			return dealDao;
		}

		public void setDealDao(DealDao dealDao) {
			this.dealDao = dealDao;
		}

		public String execute(){
			dealList = dealDao.findCustomer(customername, contact);
			return "success";
		}
}
