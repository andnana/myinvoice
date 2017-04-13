package com.ligou4.register.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Map;

import javax.annotation.Resource;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.User;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class RegisterAction  extends ActionSupport implements RequestAware{
	private User user;
	private File file1;
	private String file1ContentType;
	private String file1FileName;
	private String path;
	private String smallpicpath;
	private Integer fileSize;
	private String ext;
	private boolean acceptFileExt = false;
	private boolean acceptFileSize = false;
	private Integer label;
	public boolean isAcceptFileExt() {
		return acceptFileExt;
	}



	public void setAcceptFileExt(boolean acceptFileExt) {
		this.acceptFileExt = acceptFileExt;
	}



	public boolean isAcceptFileSize() {
		return acceptFileSize;
	}



	public void setAcceptFileSize(boolean acceptFileSize) {
		this.acceptFileSize = acceptFileSize;
	}



	public String getExt() {
		return ext;
	}



	public void setExt(String ext) {
		this.ext = ext;
	}



	

	protected Map<String, Object> request;
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao costDAO;

	
	

	public Map<String, Object> getRequest() {
		return request;
	}



	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}



	public Integer getFileSize() {
		return fileSize;
	}
	public void setFileSize(Integer fileSize) {
		this.fileSize = fileSize;
	}
	public CostDao getCostDAO() {
		return costDAO;
	}
	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	public String getSmallpicpath() {
		return smallpicpath;
	}
	public void setSmallpicpath(String smallpicpath) {
		this.smallpicpath = smallpicpath;
	}
	
	
	public String execute()throws Exception{
		label = 4;
		if(file1FileName != null){
			
			String[] extArr = ext.split(",");
			
			for(int i = 0; i < extArr.length; i++){
				System.out.println(file1FileName+"file1FileName"+extArr[i].trim()+"extArr[i].trim()");
				if(file1FileName.endsWith(extArr[i].trim())){
					setAcceptFileExt(true); 
					System.out.println(acceptFileExt);
				}	
			}
			System.out.println(acceptFileExt+"OOOOOOOOOOAAA");
			if(acceptFileExt == false){
				request.put("fileExtMsg", "文件类型不符合要求");
				
			}
			System.out.println(file1FileName+"file1FileName");
			System.out.println(file1ContentType+"file1ContentType");
			System.out.println(path+"path");
			System.out.println(smallpicpath+"smallpicpath");
			 path = ServletActionContext.getRequest().getRealPath(path);
			 smallpicpath = ServletActionContext.getRequest().getRealPath(smallpicpath);
			 System.out.println(smallpicpath+"&&&&&&&&&&&&path");
			System.out.println(path+"&&&&&&&&&&&&path");
			
			file1FileName = getFileName(file1FileName);
			FileOutputStream fos = null;
		
				fos = new FileOutputStream(path+"\\"+file1FileName);
			
			FileInputStream fis = new FileInputStream(file1);
			System.out.println(fis.available()+"available");
			
			if(fis.available() < fileSize){
				
				setAcceptFileSize(true);
			}else{
				
				request.put("fileSizeMsg", "文件大小超出"+(fileSize/1000)+"kb");
			}
		
			
			if(acceptFileSize == false || acceptFileExt == false){
				return "input";
			}
			
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
			user.setHeadpic(file1FileName);
		}
		
		System.out.println(path+"path");
		System.out.println(smallpicpath+"smallpicpath");
		 path = ServletActionContext.getRequest().getRealPath(path);
		 smallpicpath = ServletActionContext.getRequest().getRealPath(smallpicpath);
		 System.out.println(smallpicpath+"&&&&&&&&&&&&path");
		System.out.println(path+"&&&&&&&&&&&&path");
		System.out.println(user+"user");
		costDAO.saveUser(user);
		return "success";
	}
	
	private String getFileName(String fileName){
		
		int position = fileName.lastIndexOf(".");
		String extension = fileName.substring(position);
		return System.currentTimeMillis()+extension;
	}
	
	
}
