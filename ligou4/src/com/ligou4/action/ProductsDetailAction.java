package com.ligou4.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.entity.Img;
import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.Products;
import com.ligou4.entity.ProductsComment;
import com.ligou4.entity.Score;
import com.ligou4.entity.Sort;
import com.ligou4.entity.User;
@Controller
@Scope("prototype")
public class ProductsDetailAction extends BaseAction{
	private CommonInfo commonInfo;
	private Integer productsid;
	private Products products;
	private List<Img> imgList;
	private List<Img> imgDistinctColorNameList;
	private Integer page = 1;
	private Integer pageSize = 4;
	private Integer totalPage;
	private Integer totalItem;
	private List<ProductsComment> productsCommentList;
	@Resource
	@Qualifier("hibernateIndexDAO")
	CostDao costDAO;
	
	private List<Products> recommendedProductsList;
	private List<Sort> sortList; 
	private Integer size = 5;
	private String scoreSelectClass = "nostar";
	

	public String getScoreSelectClass() {
		return scoreSelectClass;
	}

	public void setScoreSelectClass(String scoreSelectClass) {
		this.scoreSelectClass = scoreSelectClass;
	}

	public CommonInfo getCommonInfo() {
		return commonInfo;
	}

	public void setCommonInfo(CommonInfo commonInfo) {
		this.commonInfo = commonInfo;
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

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
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

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	
	
	public List<ProductsComment> getProductsCommentList() {
		return productsCommentList;
	}

	public void setProductsCommentList(List<ProductsComment> productsCommentList) {
		this.productsCommentList = productsCommentList;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public Integer getProductsid() {
		return productsid;
	}

	public void setProductsid(Integer productsid) {
		this.productsid = productsid;
	}
	
	public List<Img> getImgList() {
		return imgList;
	}

	public void setImgList(List<Img> imgList) {
		this.imgList = imgList;
	}

	public CostDao getCostDAO() {
		return costDAO;
	}

	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}
	
	

	public List<Img> getImgDistinctColorNameList() {
		return imgDistinctColorNameList;
	}

	public void setImgDistinctColorNameList(List<Img> imgDistinctColorNameList) {
		this.imgDistinctColorNameList = imgDistinctColorNameList;
	}

	public String execute(){
		label = 2;
		commonInfo = costDAO.getCommonInfo();
		imgDistinctColorNameList = costDAO.getImgListDistinctByProductsId(productsid);
		products = costDAO.findProductsById(productsid);
		imgList = costDAO.getImgListByProductsId(productsid);
		productsCommentList = costDAO.getProductsCommentList(productsid, page, pageSize);
		totalPage = costDAO.getProductsCommentTotalPage(pageSize, productsid);
		totalItem = costDAO.getTotalProductsCommentItem(productsid);
		
		recommendedProductsList = costDAO.getRecommendedProductsList(size);
		sortList  = costDAO.findSortList();
		User user = (User)session.get("user");
		if(user != null){
			Score score = costDAO.getScore(productsid, user.getId());
			if(score != null){
				switch(score.getScore()){
				case 1:
					scoreSelectClass = "onestar";
					break;
				case 2:
					scoreSelectClass = "twostar";
					break;
				case 3:
					scoreSelectClass = "threestar";
					break;
				case 4:
					scoreSelectClass = "fourstar";
					break;
				case 5:
					scoreSelectClass = "fivestar";
					break;
					default:
					scoreSelectClass = "nostar";
				}
			}else{
				scoreSelectClass = "nostar";
			}	
		}else{
			scoreSelectClass = "nostar";
		}
		
	
		return "success";
	}
}
