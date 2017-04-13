package com.ligou4.dao;

import java.util.List;

import com.ligou4.admin.entity.Img;
import com.ligou4.entity.BrandSort;
import com.ligou4.entity.Comment;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.CostSort;
import com.ligou4.entity.News;
import com.ligou4.entity.Products;
import com.ligou4.entity.ProductsComment;
import com.ligou4.entity.Score;
import com.ligou4.entity.SecondSort;
import com.ligou4.entity.Sort;
import com.ligou4.entity.SortStr;
import com.ligou4.entity.ThirdSort;
import com.ligou4.entity.User;
import com.ligou4.entity.WhereStr;



public interface CostDao {

	public CommonInfo getCommonInfo();

	public List<News> getNewsList();
	public List<Comment> getCommentListByNewsId(int page, int pageSize, int newsid);
	public News getNewsById(int id);
	public List<News> getNewsList(int page ,  int pageSize);
	public int getNewsTotalPage(int pageSize);
	public int getTotalNewsItem();
	public int getTotalCommentItem(int newsid);
	public int getCommentTotalPage(int pageSize , int newsid );
	public void SaveComment(int parentid, int newsid, String message, Integer userid);
	public List<Sort> findSortList();
	public List<Products> findProductsSortList(final int page, final int pageSize, Integer sortid);
	public List<Img> getImgListByProductsId(int productsid);
	public List<Products> findProductsList(
			final int page, final int pageSize, WhereStr whereStr, SortStr sortStr);
	public Products findProductsById(int id);
	public List<CommonInfo> getCommonInfoList();
	public List<Img> getImgListDistinctByProductsId(int productsid);
	public List<Img> getImgListByProductsIdAndColor(int productsid, String colorname);
	public void saveProductsComment(Integer userid, Integer productsid, ProductsComment pc);
	public Integer getFloorByProductsId(int productsid);
	public List<ProductsComment> getProductsCommentList(int productsid, int page, int pageSize);
	public User findUserById(int id);
	public int getProductsCommentTotalPage(int pageSize , int productsid );
	public int getTotalProductsCommentItem(int productsid);
	public User findUserByUsername(String username);
	public void saveUser(User user);
	public void deleteProductsById(Integer id);
	public List<Products> getRecommendedProductsList(Integer size);
	public User login(String username, String password);
	public List<CostSort> findCostSortList();
	public List<BrandSort> findBrandSortList(String oneclass);
	public List<SecondSort> findSecondSortList(Integer onesortid);
	public List<ThirdSort> findThirdSortList(Integer secondsortid);
	public Sort getSortById(Integer id);
	public SecondSort getSecondSortById(Integer id);
	public ThirdSort getThirdSortById(Integer id);
	public List<SecondSort> findSecondSortList();
	public List<ThirdSort> findThirdSortList();
	public void saveProductsSort(Integer sortid, Integer secondsortid, Integer thirdsortid, Integer brandid, Products products, List<String> sizeNumList);
	public int saveProducts(Products products);
	public void saveScore(Integer productsid, Integer userid, Integer score);
	public Score getScore(Integer productsid, Integer userid);
}
