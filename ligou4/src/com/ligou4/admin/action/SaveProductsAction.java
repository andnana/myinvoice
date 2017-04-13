package com.ligou4.admin.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.Products;

@Controller
@Scope("prototype")
public class SaveProductsAction {
	private Products products;
	private File file1;
	private String file1ContentType;
	private String file1FileName;
	private String path;
	private String small_pic_path;
	private Integer beforemoney;
	private Integer sortid;
	private Integer secondsortid;
	private Integer thirdsortid;
	private Integer brandid;
	private List<String> sizeNumList;
	


	public List<String> getSizeNumList() {
		return sizeNumList;
	}

	public void setSizeNumList(List<String> sizeNumList) {
		this.sizeNumList = sizeNumList;
	}

	public Integer getBrandid() {
		return brandid;
	}

	public void setBrandid(Integer brandid) {
		this.brandid = brandid;
	}

	public Integer getSortid() {
		return sortid;
	}

	public void setSortid(Integer sortid) {
		this.sortid = sortid;
	}

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

	public Integer getBeforemoney() {
		return beforemoney;
	}

	public void setBeforemoney(Integer beforemoney) {
		this.beforemoney = beforemoney;
	}

	public String getSmall_pic_path() {
		return small_pic_path;
	}

	public void setSmall_pic_path(String smallPicPath) {
		small_pic_path = smallPicPath;
	}

	public File getFile1() {
		return file1;
	}

	public void setFile1(File file1) {
		this.file1 = file1;
	}

	public String getFile1ContentType() {
		return file1ContentType;
	}

	public void setFile1ContentType(String file1ContentType) {
		this.file1ContentType = file1ContentType;
	}

	public String getFile1FileName() {
		return file1FileName;
	}

	public void setFile1FileName(String file1FileName) {
		this.file1FileName = file1FileName;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao hibernateDAO;

	
	public CostDao getHibernateDAO() {
		return hibernateDAO;
	}

	public void setHibernateDAO(CostDao hibernateDAO) {
		this.hibernateDAO = hibernateDAO;
	}

	public String execute() throws Exception{
		System.out.println(sizeNumList+"sizeNumList");
		path = ServletActionContext.getRequest().getRealPath(path);
		small_pic_path = ServletActionContext.getRequest().getRealPath(small_pic_path);
		file1FileName = getFileName(file1FileName);
		FileOutputStream fos = null;
	
			fos = new FileOutputStream(path+"\\"+file1FileName);
		
		FileInputStream fis = new FileInputStream(file1);
		byte[] b = new byte[1024];
		int length = 0;
		while((length = fis.read(b)) > 0){
			fos.write(b, 0, length);
		}
		if(fos != null){
			fos.close();	
		}
		if(fis != null){
			fis.close();	
		}
		File file = new File(path);
		File file2 = new File(small_pic_path);
		Thumbnails.of(path + "\\" + file1FileName)   
        .size(218, 200)  
        .toFile(file +"\\" + "new_" + file1FileName);
		Thumbnails.of(path + "\\" + file1FileName)   
        .size(54, 50)  
        .toFile(file2 +"\\" + "new_" + file1FileName);
		File oldFile = new File(path + "\\" + file1FileName);
		oldFile.delete();
		System.out.println(products.toString()+"products.toString()");
		Date now = new Date();
		products.setAddtime(now);
		products.setImgname("new_" + file1FileName);
		System.out.println(""+sortid+secondsortid+thirdsortid+"+sortid+secondsortid+thirdsortid+");
	
		hibernateDAO.saveProductsSort(sortid, secondsortid, thirdsortid, brandid, products, sizeNumList);
		
		return "success";
	}
	private String getFileName(String fileName){
		
		int position = fileName.lastIndexOf(".");
		String extension = fileName.substring(position);
		return System.currentTimeMillis()+extension;
	}
}
