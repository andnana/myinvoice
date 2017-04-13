package com.ghl.action.deal;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.dao.DealDao;
import com.ghl.entity.Customer;
import com.ghl.entity.SalePerson;

@Controller
@Scope("prototype")
public class FindSalePersonAction {
	 private List<SalePerson> salePersonList;
		@Resource
		@Qualifier("dealImpl")
		private DealDao dealDao;
		private String salepersonname;
		private String contact;
		
		

		public List<SalePerson> getSalePersonList() {
			return salePersonList;
		}



		public void setSalePersonList(List<SalePerson> salePersonList) {
			this.salePersonList = salePersonList;
		}



		public DealDao getDealDao() {
			return dealDao;
		}



		public void setDealDao(DealDao dealDao) {
			this.dealDao = dealDao;
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



		public String execute(){
			salePersonList = dealDao.findSalePerson(salepersonname, contact);
			return "success";
		}
}
