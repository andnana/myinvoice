package com.ghl.action.deal;


import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.DealDao;
import com.ghl.entity.Product;
@Controller
@Scope("prototype")
public class FindProductByIdAction extends BaseAction{
	private Product product = new Product();
	
	private Integer productid;
	
		@Resource
		@Qualifier("dealImpl")
		private DealDao dealDao;
	

		public Integer getProductid() {
			return productid;
		}

		public void setProductid(Integer productid) {
			this.productid = productid;
		}

		public Product getProduct() {
			return product;
		}

		public void setProduct(Product product) {
			this.product = product;
		}

		public DealDao getDealDao() {
			return dealDao;
		}

		public void setDealDao(DealDao dealDao) {
			this.dealDao = dealDao;
		}

		public String execute(){
			product = dealDao.findProductById(productid);
			return "success";
		}
		
}
