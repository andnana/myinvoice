package com.ghl.action.deal;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.DealDao;
import com.ghl.entity.Deal;
@Controller
@Scope("prototype")
public class DealListAction extends BaseAction{
	
		@Resource
		@Qualifier("dealImpl")
		private DealDao dealDao;
		private Integer pageSize = 5; 
		private List<Deal> dealList = new ArrayList<Deal>();
		private Integer page = 1; 
		private Integer totalPage;
		private Integer totalItem;
		private Integer totalMoney;
		
	
		
		
		
		public Integer getTotalMoney() {
			return totalMoney;
		}




		public void setTotalMoney(Integer totalMoney) {
			this.totalMoney = totalMoney;
		}




		public List<Deal> getDealList() {
			return dealList;
		}




		public void setDealList(List<Deal> dealList) {
			this.dealList = dealList;
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




		public DealDao getDealDao() {
			return dealDao;
		}




		public void setDealDao(DealDao dealDao) {
			this.dealDao = dealDao;
		}




		public String execute(){
			dealList =	dealDao.getDealList(page, pageSize);
			totalPage = dealDao.getDealTotalPage(pageSize);
			totalItem = dealDao.getTotalDealItem();
		
			return "success";
		}
		
}
