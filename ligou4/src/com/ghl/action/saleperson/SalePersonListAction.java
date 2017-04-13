package com.ghl.action.saleperson;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.SalePersonDao;
import com.ghl.entity.SalePerson;

@Controller
@Scope("prototype")
public class SalePersonListAction  extends BaseAction{
	 private List<SalePerson> salePersonList;
		@Resource
		@Qualifier("salePersonImpl")
		private SalePersonDao salePersonDao;
		private Integer pageSize = 5; 
		
		private Integer page = 1; 
		private Integer totalPage;
		private Integer totalItem;
	
		public List<SalePerson> getSalePersonList() {
			return salePersonList;
		}
		public void setSalePersonList(List<SalePerson> salePersonList) {
			this.salePersonList = salePersonList;
		}
	
		public SalePersonDao getSalePersonDao() {
			return salePersonDao;
		}
		public void setSalePersonDao(SalePersonDao salePersonDao) {
			this.salePersonDao = salePersonDao;
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
			salePersonList = salePersonDao.getSalePersonList(page, pageSize);
			totalItem = salePersonDao.getTotalSalePersonItem();
			totalPage = salePersonDao.getSalePersonTotalPage(pageSize);
			return "success";
		}
}
