package com.ligou4.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.admin.entity.NewsSort;
import com.ligou4.dao.CostDao;
import com.ligou4.entity.Products;
import com.ligou4.entity.Sort;

@Controller
@Scope("prototype")
public class ToAddNewsAction {
	private List<NewsSort> newsSortList;
	private Integer size = 5;
	private List<Products> recommendedProductsList;
	private List<Sort> sortList; 
	private Integer label = 1;
	@Resource
	@Qualifier("hibernateIndexDAO")
	CostDao costDAO;
	@Resource
	@Qualifier("adminDAOImpl")
	AdminDAO adminDAO;
	public List<Products> getRecommendedProductsList() {
		return recommendedProductsList;
	}
	
	public Integer getLabel() {
		return label;
	}

	public void setLabel(Integer label) {
		this.label = label;
	}

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
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

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}


	



	public CostDao getCostDAO() {
		return costDAO;
	}

	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}

	public List<NewsSort> getNewsSortList() {
		return newsSortList;
	}

	public void setNewsSortList(List<NewsSort> newsSortList) {
		this.newsSortList = newsSortList;
	}	

	public String execute(){
		label= 6;
		recommendedProductsList = costDAO.getRecommendedProductsList(size);
		sortList  = costDAO.findSortList();		newsSortList = adminDAO.findNewsSortList();;
		return "success";
	}
}
