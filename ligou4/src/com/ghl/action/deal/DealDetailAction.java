package com.ghl.action.deal;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.DealDao;
import com.ghl.entity.Deal;
import com.ghl.entity.Product2;
@Controller
@Scope("prototype")
public class DealDetailAction extends BaseAction{
	@Resource
	@Qualifier("dealImpl")
	private DealDao dealDao;
	private Deal deal;
	private Double alreadyPayment;
	
	public Double getAlreadyPayment() {
		return alreadyPayment;
	}


	public void setAlreadyPayment(Double alreadyPayment) {
		this.alreadyPayment = alreadyPayment;
	}


	public Deal getDeal() {
		return deal;
	}


	public void setDeal(Deal deal) {
		this.deal = deal;
	}


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
		deal = dealDao.getDealById(dealid);
		alreadyPayment = dealDao.getAlreadyPayment(dealid);
		System.out.println("alreadyPayment(*****(((((**&&");
		System.out.println(alreadyPayment);
		System.out.println("************");
		List<Product2> product2List = deal.getProduct2List();
		for(int i=0;i<product2List.size();i++){
			System.out.println(product2List.get(i).getDate());
		}
		return "success";
	}
}
