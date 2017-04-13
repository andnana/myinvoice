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

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.admin.entity.Pic;
import com.ligou4.dao.CostDao;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class UploadSlidePicAction extends ActionSupport{
	private File file1;
	private String file1ContentType;
	private String file1FileName;
	private String path;
	private String smallpicpath;
	private String description;
	public List<Pic> pics;
	@Resource
	@Qualifier("adminDAOImpl")
	AdminDAO adminDAO;
	
	
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
	
	public List<Pic> getPics() {
		return pics;
	}
	public void setPics(List<Pic> pics) {
		this.pics = pics;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public void setPath(String path){
		this.path = path;
	}
	public String execute() throws Exception{
	
		 path = ServletActionContext.getRequest().getRealPath(path);
		 smallpicpath = ServletActionContext.getRequest().getRealPath(smallpicpath);
		 System.out.println(smallpicpath+"&&&&&&&&&&&&path");
		System.out.println(path+"&&&&&&&&&&&&path");
		
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
		
		
		File smallImgDir = new File(smallpicpath);
		if(!smallImgDir.exists())
			smallImgDir.mkdir();
		Thumbnails.of(path + "\\" + file1FileName)   
        .size(200, 300)  
        .toFile(smallImgDir +"\\" + file1FileName);
		Pic pic = new Pic();
		pic.setPicname(file1FileName);
		pic.setDescription(description);
		Date now = new Date();
		pic.setAdddate(now);
		adminDAO.save(pic);
		pics = adminDAO.getPics();
		return "success";
	}
	private String getFileName(String fileName){
		
		int position = fileName.lastIndexOf(".");
		String extension = fileName.substring(position);
		return System.currentTimeMillis()+extension;
	}
	
}
