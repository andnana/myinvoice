package com.ligou4.admin.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;

import javax.annotation.Resource;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.entity.News;
import com.ligou4.entity.User;

@Controller
@Scope("prototype")
public class SaveNewsAction extends BaseAction{
	private News news;
	private File file1;
	private String file1ContentType;
	private String file1FileName;
	private String path;
	private String smallpicpath;
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



	public AdminDAO getAdminDAO() {
		return adminDAO;
	}



	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}



	@Resource
	@Qualifier("adminDAOImpl")
	private AdminDAO adminDAO;


	public News getNews() {
		return news;
	}



	public void setNews(News news) {
		this.news = news;
	}



	public String execute()throws Exception{

		 path = ServletActionContext.getRequest().getRealPath(path);
		 smallpicpath = ServletActionContext.getRequest().getRealPath(smallpicpath);
		 System.out.println(smallpicpath+"&&&&&&&&&&&&path");
		System.out.println(path+"&&&&&&&&&&&&path");
		if(file1FileName != null){
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
       .toFile(smallImgDir +"\\" +  "new_" + file1FileName);
		
		File file = new File(path);
		Thumbnails.of(path + "\\" + file1FileName)   
        .size(400, 600)  
        .toFile(file +"\\" + "new_" + file1FileName);
		File oldFile = new File(path + "\\" + file1FileName);
		oldFile.delete();
		
		news.setImgname("new_" + file1FileName);
	}
		System.out.println("#########");
		System.out.println(news.getSortid()+"&&&&&&&&&");
		System.out.println("#########");
		System.out.println(news);
		Date now = new Date();
		news.setAddtime(now);
		User user = (User)session.get("user");
		
		adminDAO.saveNews(news, user.getId());
		return "success";
	}
	private String getFileName(String fileName){
		int position = fileName.lastIndexOf(".");
		String extension = fileName.substring(position);
		return System.currentTimeMillis()+extension;
	}
}
