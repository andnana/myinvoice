package com.ghl.action.deal.invoice;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.DealDao;
import com.ghl.entity.Deal;

@Controller
@Scope("prototype")
public class ToAddInvoiceAction extends BaseAction {
	private Integer dealid;
	private Double alreadyPayment;
	private Deal deal;
	@Resource
	@Qualifier("dealImpl")
	private DealDao dealDao;
	
	public Deal getDeal() {
		return deal;
	}

	public void setDeal(Deal deal) {
		this.deal = deal;
	}

	public DealDao getDealDao() {
		return dealDao;
	}

	public void setDealDao(DealDao dealDao) {
		this.dealDao = dealDao;
	}

	public Double getAlreadyPayment() {
		return alreadyPayment;
	}

	public void setAlreadyPayment(Double alreadyPayment) {
		this.alreadyPayment = alreadyPayment;
	}

	public Integer getDealid() {
		return dealid;
	}

	public void setDealid(Integer dealid) {
		this.dealid = dealid;
	}
	public String execute(){
		deal = dealDao.getDealById(dealid);
		alreadyPayment = dealDao.getAlreadyPayment(dealid);
		System.out.println("******dealid*******");
		System.out.println(dealid);
		return "success";
	}
}
