package com.ligou4.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.Products;
import com.ligou4.entity.Sort;
@Controller
@Scope("prototype")
public class ProductsListSortAction extends BaseAction {
	public List<Sort> sortList;
	private Integer size = 6;
	private Integer pageSize = 8;
	private Integer sortid;
	private Integer page=1;
	private List<Products> recommendedProductsList = new ArrayList<Products>();
	private List<Products> productsList = new ArrayList<Products>();
	
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
	public List<Products> getRecommendedProductsList() {
		return recommendedProductsList;
	}
	public void setRecommendedProductsList(List<Products> recommendedProductsList) {
		this.recommendedProductsList = recommendedProductsList;
	}
	public List<Products> getProductsList() {
		return productsList;
	}
	public void setProductsList(List<Products> productsList) {
		this.productsList = productsList;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public CostDao getDao() {
		return dao;
	}
	public void setDao(CostDao dao) {
		this.dao = dao;
	}
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao dao;

	
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getSortid() {
		return sortid;
	}
	public void setSortid(Integer sortid) {
		this.sortid = sortid;
	}
	public String execute(){
		System.out.println("recommended run1");
		try {
			recommendedProductsList = dao.getRecommendedProductsList(size);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		productsList = dao.findProductsSortList(page, pageSize, sortid);
		sortList  = dao.findSortList();
		 label = 2;
		return "success";
	}
}
