package com.ligou4.register.action;

import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Controller
@Scope("prototype")
public class TestFile1Action {
	protected Map<String, Object> request;
	private Map<String,Object> info = 
		new HashMap<String, Object>();
	private File file1;
	private String file1ContentType;
	private String file1FileName;
	private Integer fileSize;
	private String ext;
	private boolean acceptFileExt = false;
	private boolean acceptFileSize = false;
	public Map<String, Object> getRequest() {
		return request;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
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
	public Integer getFileSize() {
		return fileSize;
	}
	public void setFileSize(Integer fileSize) {
		this.fileSize = fileSize;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
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
	public String execute()throws Exception{
	if(file1FileName != null){
			
			String[] extArr = ext.split(",");
			
			for(int i = 0; i < extArr.length; i++){
				System.out.println(file1FileName+"file1FileName"+extArr[i].trim()+"extArr[i].trim()");
				if(file1FileName.endsWith(extArr[i].trim())){
					setAcceptFileExt(true); 
					System.out.println(acceptFileExt);
					info.put("fileExtMsg", "文件类型符合要求");
				}	
			}
			System.out.println(acceptFileExt+"OOOOOOOOOOAAA");
			if(acceptFileExt == false){
				info.put("fileExtMsg", "文件类型不符合要求");
				
			}
		
			
			
			FileInputStream fis = new FileInputStream(file1);
			System.out.println(fis.available()+"available");
			
			if(fis.available() < fileSize){
				
				setAcceptFileSize(true);
				info.put("fileSizeMsg", "文件大小在指定范围内");
			}else{
				
				info.put("fileSizeMsg", "文件大小超出"+(fileSize/1000)+"kb");
			}
		
			
			if(acceptFileSize == true || acceptFileExt == true){
				info.put("acceptFile1", 1);
			}
		
			
		}
		return "success";
	}


}
