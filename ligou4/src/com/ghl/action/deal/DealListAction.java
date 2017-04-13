package com.ghl.action.deal;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.DealDao;
@Controller
@Scope("prototype")
public class DealListAction extends BaseAction{
	
		@Resource
		@Qualifier("dealImpl")
		private DealDao dealDao;
	
	
		
		
		
		public DealDao getDealDao() {
			return dealDao;
		}




		public void setDealDao(DealDao dealDao) {
			this.dealDao = dealDao;
		}




		public String execute(){
//			productList = dealDao.getProductList();
			return "success";
		}
		
}
