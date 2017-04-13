package com.ligou4.admin.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.News;
@Controller
@Scope("prototype")
public class AdminNewsAction {
	private CommonInfo commonInfo;
	 private List<News> newsList;
		private Integer pageSize = 5; 
		
		private Integer page = 1; 
		private Integer totalPage;
		private Integer totalItem;
		
	public Integer getTotalItem() {
			return totalItem;
		}

		public void setTotalItem(Integer totalItem) {
			this.totalItem = totalItem;
		}

	public Integer getTotalPage() {
			return totalPage;
		}

		public void setTotalPage(Integer totalPage) {
			this.totalPage = totalPage;
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

	public CommonInfo getCommonInfo() {
		return commonInfo;
	}

	public void setCommonInfo(CommonInfo commonInfo) {
		this.commonInfo = commonInfo;
	}

	public CostDao getCostDAO() {
		return costDAO;
	}

	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}
		@Resource
		@Qualifier("hibernateIndexDAO")
		CostDao costDAO;
		
	 public String execute(){
		 
		 commonInfo = costDAO.getCommonInfo();
		  newsList = costDAO.getNewsList(page, pageSize);
		  totalItem = costDAO.getTotalNewsItem();
		  totalPage = costDAO.getNewsTotalPage(pageSize);
		  return "success";
	 }
}
