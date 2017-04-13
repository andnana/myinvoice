package com.ligou4.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.admin.entity.Pic;
import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.Products;
import com.ligou4.entity.Sort;
@Controller
@Scope("prototype")
public class ToIndexAction extends BaseAction{
	CommonInfo commonInfo;
	List<Pic> pics;
	private List<Products> recommendedProductsList;
	private List<Sort> sortList; 
	private Integer size = 5;
	
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

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public List<Pic> getPics() {
		return pics;
	}

	public void setPics(List<Pic> pics) {
		this.pics = pics;
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
	@Resource
	@Qualifier("adminDAOImpl")
	AdminDAO adminDAO;
	public String execute(){
		label = 1;
		commonInfo = costDAO.getCommonInfo();
		pics = adminDAO.getPics();
		recommendedProductsList = costDAO.getRecommendedProductsList(size);

		sortList = costDAO.findSortList();
		return "success";
	}
}
