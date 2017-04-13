package com.ligou4.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.News;
import com.ligou4.entity.Products;
import com.ligou4.entity.Sort;
@Controller
@Scope("prototype")
public class NewsAction extends BaseAction{
	private CommonInfo commonInfo;
 private List<News> newsList;
	private Integer pageSize = 5; 
	private Integer size = 5;
	private Integer page = 1; 
	private Integer totalPage;
	private Integer totalItem;
	private List<Products> recommendedProductsList;
	private List<Sort> sortList; 

	  
	
public List<Products> getRecommendedProductsList() {
		return recommendedProductsList;
	}

	public void setRecommendedProductsList(List<Products> recommendedProductsList) {
		this.recommendedProductsList = recommendedProductsList;
	}

	public List<Sort> getSortList() {
		return sortList;
	}

	public void setSortList(List<Sort> sortList) {
		this.sortList = sortList;
	}

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
	 label = 3;
	 commonInfo = costDAO.getCommonInfo();
	 System.out.println("1(((((((((((((");
	  newsList = costDAO.getNewsList(page, pageSize);
	  System.out.println("2(((((((((((((");
	  totalItem = costDAO.getTotalNewsItem();
	  System.out.println("3(((((((((((((");
	  totalPage = costDAO.getNewsTotalPage(pageSize);
	  
	  recommendedProductsList = costDAO.getRecommendedProductsList(size);
		
	
		sortList  = costDAO.findSortList();
	  return "success";
 }

public Integer getSize() {
	return size;
}

public void setSize(Integer size) {
	this.size = size;
}
}
