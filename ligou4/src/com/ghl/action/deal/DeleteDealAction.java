package com.ghl.action.deal;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.DealDao;
@Controller
@Scope("prototype")
public class DeleteDealAction extends BaseAction{
	@Resource
	@Qualifier("dealImpl")
	private DealDao dealDao;
	
	private Integer dealid;
	

		public Integer getDealid() {
		return dealid;
	}


	public void setDealid(Integer dealid) {
		this.dealid = dealid;
	}


		public DealDao getDealDao() {
		return dealDao;
	}


	public void setDealDao(DealDao dealDao) {
	
		this.dealDao = dealDao;
	}


	public String execute(){
		System.out.println("******"+dealid+"********");
		Integer ifdeleted = dealDao.deleteDeal(dealid);
	
		return "success";
	}
}
