package com.ligou4.admin.dao;

import java.util.List;

import com.ligou4.admin.entity.ColorSort;
import com.ligou4.admin.entity.NewsSort;
import com.ligou4.admin.entity.Pic;
import com.ligou4.admin.entity.SizeName;
import com.ligou4.entity.BrandSort;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.News;
import com.ligou4.entity.Products;
import com.ligou4.entity.Sort;
import com.ligou4.entity.User;

public interface AdminDAO {
	public List<Pic> getPics();
	public void save(Pic pic);
	public void deleteImg(String filename, String path, String smallpicpath);
	public void saveCommonInfo(CommonInfo commoninfo);
//	public void deleteNews(int id);
	public List<Sort> findSortList();
	public void saveNews(News news, Integer userid);
	public void deletePic(int id);
	public void updateCommonInfo(CommonInfo commoninfo);
	public CommonInfo findCommonInfoById(int id);
	public void deleteCommonInfo(int id);
	public int saveProducts(Products products);
	public List<Products> getProductsList(int page, int pageSize);
	public void saveProductsImg(int productsid, String imgname, String suffix, String colorname);
	public List<ColorSort> getColorSortList();
	public ColorSort getColorById(int id);
	public User login(String username, String password);
	public void deleteNews(Integer newsid);
	public List<NewsSort> findNewsSortList();
	public Products findProductsById(Integer id);
	public void deleteProductsImgById(Integer id);
	public List<BrandSort> findBrandSortList(String oneclass);
	public List<SizeName> findSizeNameList();
}
