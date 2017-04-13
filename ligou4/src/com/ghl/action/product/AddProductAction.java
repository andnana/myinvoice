package com.ghl.action.product;

import java.util.Date;

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
public class AddProductAction extends BaseAction{
	private Product product;
	@Resource
	@Qualifier("productImpl")
	private ProductDao productDao;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public String execute(){
		product.setDate(new Date());
		System.out.println(product.getPrice()+"product.getPrice()");
		productDao.addProduct(product);
		return "success";
	}
}
