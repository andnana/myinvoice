package com.ghl.action.saleperson;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.SalePersonDao;
import com.ghl.entity.SalePerson;
@Controller
@Scope("prototype")
public class AddSalePersonAction extends BaseAction{
		private SalePerson salePerson;
		@Resource
		@Qualifier("salePersonImpl")
		private SalePersonDao salePersonDao;

		
		public SalePerson getSalePerson() {
			return salePerson;
		}

		public void setSalePerson(SalePerson salePerson) {
			this.salePerson = salePerson;
		}
		public String execute(){
			salePerson.setDate(new Date());
			salePersonDao.addSalePerson(salePerson);
			return "success";
		}
}
