package com.ligou4.action;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.Products;
import com.ligou4.entity.Sort;

@Controller
@Scope("prototype")
public class ContactAction extends BaseAction{
	private CommonInfo commonInfo;
	private List<Products> recommendedProductsList;
	private List<Sort> sortList; 
	private Integer size = 5;
	  
	
public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

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

	public CostDao getCostDAO() {
		return costDAO;
	}

	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}

	public CommonInfo getCommonInfo() {
		return commonInfo;
	}

	public void setCommonInfo(CommonInfo commonInfo) {
		this.commonInfo = commonInfo;
	}
	@Resource
	@Qualifier("hibernateIndexDAO")
	CostDao costDAO;
	public String execute(){
		label = 6;
		commonInfo = costDAO.getCommonInfo();
		recommendedProductsList = costDAO.getRecommendedProductsList(size);
		
		
		sortList  = costDAO.findSortList();
		return "success";
	}
}
