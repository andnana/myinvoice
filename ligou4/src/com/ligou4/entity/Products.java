package com.ligou4.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.ligou4.admin.entity.Img;
import com.ligou4.admin.entity.SizeName;

public class Products {
	private Integer id;
	private String productsname;
	private String description;
	private Date addtime;
	private Integer sortid;
	private Integer active;
	private Integer recommended;
	private String imgname;
	private Integer money;
	private Integer beforemoney;
	private List<ProductsComment> productsCommentList = new ArrayList<ProductsComment>();
	private List<Img> imgList = new ArrayList<Img>();
	private BrandSort brandSort;
	private SecondSort secondSort;
	private ThirdSort thirdSort;
	private Sort sort;
	private List<Score> scoreList = new ArrayList<Score>();
	
	public List<Score> getScoreList() {
		return scoreList;
	}
	public void setScoreList(List<Score> scoreList) {
		this.scoreList = scoreList;
	}
	private Set<SizeName> sizeset = new HashSet<SizeName>();
	

	public Set<SizeName> getSizeset() {
		return sizeset;
	}
	public void setSizeset(Set<SizeName> sizeset) {
		this.sizeset = sizeset;
	}
	public Sort getSort() {
		return sort;
	}
	public void setSort(Sort sort) {
		this.sort = sort;
	}
	public SecondSort getSecondSort() {
		return secondSort;
	}
	public void setSecondSort(SecondSort secondSort) {
		this.secondSort = secondSort;
	}
	public ThirdSort getThirdSort() {
		return thirdSort;
	}
	public void setThirdSort(ThirdSort thirdSort) {
		this.thirdSort = thirdSort;
	}
	public BrandSort getBrandSort() {
		return brandSort;
	}
	public void setBrandSort(BrandSort brandSort) {
		this.brandSort = brandSort;
	}
	public List<Img> getImgList() {
		return imgList;
	}
	public void setImgList(List<Img> imgList) {
		this.imgList = imgList;
	}
	public List<ProductsComment> getProductsCommentList() {
		return productsCommentList;
	}
	public void setProductsCommentList(List<ProductsComment> productsCommentList) {
		this.productsCommentList = productsCommentList;
	}
	public Integer getMoney() {
		return money;
	}
	public void setMoney(Integer money) {
		this.money = money;
	}
	public Integer getBeforemoney() {
		return beforemoney;
	}
	public void setBeforemoney(Integer beforemoney) {
		this.beforemoney = beforemoney;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProductsname() {
		return productsname;
	}
	public void setProductsname(String productsname) {
		this.productsname = productsname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	public Integer getSortid() {
		return sortid;
	}
	public void setSortid(Integer sortid) {
		this.sortid = sortid;
	}
	public Integer getActive() {
		return active;
	}
	public void setActive(Integer active) {
		this.active = active;
	}
	public Integer getRecommended() {
		return recommended;
	}
	public void setRecommended(Integer recommended) {
		this.recommended = recommended;
	}
	@Override
	public String toString() {
		return "Products [active=" + active + ", addtime=" + addtime
				+ ", description=" + description + ", id=" + id + ", imgname="
				+ imgname + ", productsname=" + productsname + ", recommended="
				+ recommended + ", sortid=" + sortid + "]";
	}
	
}
