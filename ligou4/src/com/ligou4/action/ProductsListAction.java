package com.ligou4.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.BrandSort;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.CostSort;
import com.ligou4.entity.Products;
import com.ligou4.entity.Sort;
import com.ligou4.entity.SortStr;
import com.ligou4.entity.WhereStr;
@Controller
@Scope("prototype")
public class ProductsListAction extends BaseAction {
	private CommonInfo commonInfo;
     	public List<Sort> sortList;
		private Integer size = 6;
		private Integer pageSize = 8;
		private Integer sortid;
		private Integer page=1;
		private List<Products> recommendedProductsList = new ArrayList<Products>();
		private List<Products> productsList = new ArrayList<Products>();
		private List<BrandSort> brandSortList = new ArrayList<BrandSort>();
		private List<CostSort> costSortList = new ArrayList<CostSort>();
		private WhereStr whereStr = new WhereStr();
		private Integer totalPage;
		private Integer totalItem;
		public SortStr sortStr = new SortStr();
		private Integer secondsortid;
		private Integer thirdsortid;
	
		public Integer getSecondsortid() {
			return secondsortid;
		}
		public void setSecondsortid(Integer secondsortid) {
			this.secondsortid = secondsortid;
		}
		public Integer getThirdsortid() {
			return thirdsortid;
		}
		public void setThirdsortid(Integer thirdsortid) {
			this.thirdsortid = thirdsortid;
		}
		public SortStr getSortStr() {
			return sortStr;
		}
		public void setSortStr(SortStr sortStr) {
			this.sortStr = sortStr;
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
		public WhereStr getWhereStr() {
			return whereStr;
		}
		public void setWhereStr(WhereStr whereStr) {
			this.whereStr = whereStr;
		}
		public List<BrandSort> getBrandSortList() {
			return brandSortList;
		}
		public void setBrandSortList(List<BrandSort> brandSortList) {
			this.brandSortList = brandSortList;
		}
		public List<CostSort> getCostSortList() {
			return costSortList;
		}
		public void setCostSortList(List<CostSort> costSortList) {
			this.costSortList = costSortList;
		}
		public CommonInfo getCommonInfo() {
			return commonInfo;
		}
		public void setCommonInfo(CommonInfo commonInfo) {
			this.commonInfo = commonInfo;
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
			System.out.println("sortid"+sortid+"secondsortid"+secondsortid+"thirdsortid"+thirdsortid);
			if(sortid != null && sortid > 0){
				sortStr.setOneSortName(dao.getSortById(sortid).getSortname());
			}
			if(secondsortid != null && secondsortid > 0){
				sortStr.setSecondSortName(dao.getSecondSortById(secondsortid).getSortname());
			}
			if(thirdsortid != null && thirdsortid > 0){
				sortStr.setThirdSortName(dao.getThirdSortById(thirdsortid).getSortname());
			}
			System.out.println(sortStr.getOneSortName()+"sortStr.getOneSortName"+sortStr.getSecondSortName()+"sortStr.getSecondSortName");
			brandSortList = dao.findBrandSortList("clothes");
			
			costSortList = dao.findCostSortList();
			for(CostSort cs:costSortList){
				System.out.println(cs.getBegincost()+"begincost");
				System.out.println(cs.getEndcost()+"endcost");
			}	
			System.out.println(whereStr.getBrand()+"whereStr.brand");
			System.out.println(whereStr.getCost()+"whereStr.cost");
			if(whereStr.getBrand().length() != 0){
				for(int i = 0; i < brandSortList.size(); i++){
					if(whereStr.getBrand().equalsIgnoreCase(brandSortList.get(i).getBrandname())){
						brandSortList.remove(i);
					}
				}
			}
			if(whereStr.getCost().length() != 0){
				for(int i = 0; i < costSortList.size(); i++){
					if(whereStr.getCost().equalsIgnoreCase(costSortList.get(i).getBegincost()+"-"+costSortList.get(i).getEndcost())){
						costSortList.remove(i);
					}
				}
			}
			commonInfo = dao.getCommonInfo();
			productsList = dao.findProductsList(page,pageSize,whereStr,sortStr);
			
			recommendedProductsList = dao.getRecommendedProductsList(size);
		
			sortList  = dao.findSortList();
			 label = 2;
			return "success";
		}
	
}
