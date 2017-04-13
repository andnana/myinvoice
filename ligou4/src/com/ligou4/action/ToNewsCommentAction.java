package com.ligou4.action;

import java.util.ArrayList;
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
public class ToNewsCommentAction extends BaseAction{
	private CommonInfo commonInfo;
	private Integer parentid;
	private Integer newsid;
	private Integer page;
	public List<Sort> sortList;
	private Integer size = 6;
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao dao;
	
	public CommonInfo getCommonInfo() {
		return commonInfo;
	}
	public void setCommonInfo(CommonInfo commonInfo) {
		this.commonInfo = commonInfo;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public CostDao getDao() {
		return dao;
	}
	public void setDao(CostDao dao) {
		this.dao = dao;
	}
	
	private List<Products> recommendedProductsList = new ArrayList<Products>();
	
	public List<Sort> getSortList() {
		return sortList;
	}
	public void setSortList(List<Sort> sortList) {
		this.sortList = sortList;
	}
	public List<Products> getRecommendedProductsList() {
		return recommendedProductsList;
	}
	public void setRecommendedProductsList(List<Products> recommendedProductsList) {
		this.recommendedProductsList = recommendedProductsList;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}

	
	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	public Integer getNewsid() {
		return newsid;
	}
	public void setNewsid(Integer newsid) {
		this.newsid = newsid;
	}
	public String execute(){
		 label = 2;
		 commonInfo = dao.getCommonInfo();
		 recommendedProductsList = dao.getRecommendedProductsList(size);
			sortList  = dao.findSortList();
		return "success";
	}
}
