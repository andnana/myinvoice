package com.ligou4.admin.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.admin.entity.Pic;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class DeleteSlideImg {
	private Integer id;
	private String filename;
	private String path;
	private String smallpicpath;
	public List<Pic> pics;
	@Resource
	@Qualifier("adminDAOImpl")
	AdminDAO adminDAO;
	
	public List<Pic> getPics() {
		return pics;
	}
	public void setPics(List<Pic> pics) {
		this.pics = pics;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getSmallpicpath() {
		return smallpicpath;
	}
	public void setSmallpicpath(String smallpicpath) {
		this.smallpicpath = smallpicpath;
	}
	
	public AdminDAO getAdminDAO() {
		return adminDAO;
	}
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String execute(){
		path = ServletActionContext.getRequest().getRealPath(path);
		smallpicpath = ServletActionContext.getRequest().getRealPath(smallpicpath);
		adminDAO.deleteImg(filename, path, smallpicpath);
		pics = adminDAO.getPics();
		adminDAO.deletePic(id);
		return "success";
	}
}
