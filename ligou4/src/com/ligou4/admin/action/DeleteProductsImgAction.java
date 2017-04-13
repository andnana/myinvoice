package com.ligou4.admin.action;

import java.io.File;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;

@Controller
@Scope("prototype")
public class DeleteProductsImgAction {
	private Integer id;
	private Integer productsid;
	private String imgname;
	private String path;
	private String suffix;
	@Resource
	@Qualifier("adminDAOImpl")
	private AdminDAO adminDAO;

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getProductsid() {
		return productsid;
	}

	public void setProductsid(Integer productsid) {
		this.productsid = productsid;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String execute(){
		System.out.println("running DeleteProductsImgAction execute()");
		path = ServletActionContext.getRequest().getRealPath(path);
		System.out.println(path+"\\"+productsid+"\\"+imgname+suffix);
		System.out.println(path+"\\"+productsid+"\\"+imgname+suffix);
		
		File file = new File(path+"\\"+productsid+"\\"+imgname+suffix);
		if(file.exists()){
			System.out.println("delete file exists");
		}
		file.delete();
		File file2 = new File(path+"\\"+productsid+"\\"+imgname+"_big"+suffix);
		file2.delete();
		File file3 = new File(path+"\\"+productsid+"\\"+imgname+"_small"+suffix);
		file3.delete();
		adminDAO.deleteProductsImgById(id);
		return "success";
	}
	
}
