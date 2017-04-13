package com.ghl.action.product;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.CustomerDao;
import com.ghl.dao.ProductDao;
import com.ghl.entity.Customer;
import com.ghl.entity.Product;

@Controller
@Scope("prototype")
public class ProductListAction extends BaseAction{
	 private List<Product> productList;
		@Resource
		@Qualifier("productImpl")
		private ProductDao productDao;
		private Integer pageSize = 5; 
		
		private Integer page = 1; 
		private Integer totalPage;
		private Integer totalItem;
	
		
		public List<Product> getProductList() {
			return productList;
		}
		public void setProductList(List<Product> productList) {
			this.productList = productList;
		}
		public ProductDao getProductDao() {
			return productDao;
		}
		public void setProductDao(ProductDao productDao) {
			this.productDao = productDao;
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
			productList = productDao.getProductList(page, pageSize);
			totalItem = productDao.getTotalProductItem();
			totalPage = productDao.getProductTotalPage(pageSize);
			return "success";
		}
		
}
