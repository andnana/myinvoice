package com.ghl.dao;

import java.util.List;

import com.ghl.entity.Product;

public interface ProductDao {
	public void addProduct(Product product);
	public List<Product> getProductList(Integer page, Integer pageSize);
	public int getTotalProductItem();
	public int getProductTotalPage(int pageSize);
}
