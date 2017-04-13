package com.ligou4.admin.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.annotation.Resource;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.admin.entity.ColorSort;

@Controller
@Scope("prototype")
public class ProductsUploadImgAction {
	private Integer id;
	private File file1;
	private String file1ContentType;
	private String file1FileName;
	private String path;
	private Integer colorid;
	
	@Resource
	@Qualifier("adminDAOImpl")
	private AdminDAO adminDAO;

	public Integer getColorid() {
		return colorid;
	}

	public void setColorid(Integer colorid) {
		this.colorid = colorid;
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
	public String execute() throws Exception{
		path = ServletActionContext.getRequest().getRealPath(path);
		File imgDir = new File(path + "\\"	+ id );
		if(!imgDir.exists()) 
			imgDir.mkdir();
		ColorSort colorsort = adminDAO.getColorById(colorid);
		file1FileName =  colorsort.getName()+"_"+getFileName(file1FileName);
		int index = file1FileName.indexOf(".");
		String suffix =  file1FileName.substring(index);
		String leftStr = file1FileName.substring(0, index);
		String bigFileName = leftStr + "_big" + suffix;
		String smallFileName =   leftStr + "_small" + suffix;
		System.out.println(bigFileName+"bigFileName");
		System.out.println(smallFileName+"smallFileName");
		System.out.println(file1FileName);
		FileOutputStream fos = null;
	
			fos = new FileOutputStream(path+"\\"+ id + "\\" + bigFileName);
		
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
		
		Thumbnails.of(path + "\\" + id + "\\" + bigFileName)   
        .size(310, 310)  
        .toFile(imgDir +"\\" + smallFileName);
		
		Thumbnails.of(path + "\\" + id + "\\"+ bigFileName)   
        .size(85, 85)  
        .toFile(imgDir +"\\" + file1FileName);
		int index2 = file1FileName.indexOf(".");
		String suffix2 = file1FileName.substring(index2);
		String fileName = file1FileName.substring(0, index2);
		adminDAO.saveProductsImg(id, fileName, suffix2, colorsort.getName());
	
		
		
		return "success";
	}
	
	private String getFileName(String fileName){
		
		int position = fileName.lastIndexOf(".");
		String extension = fileName.substring(position);
		return System.currentTimeMillis()+extension;
	}
}
