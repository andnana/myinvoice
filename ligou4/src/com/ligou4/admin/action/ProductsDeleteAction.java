package com.ligou4.admin.action;

import java.io.File;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.Products;
import com.ligou4.util.FileUtil;

@Controller
@Scope("prototype")
public class ProductsDeleteAction {
	private Integer id;
	private String path;
	private String pic_products;
	private String suffixAll;
	private String msg;
	
	public String getSuffixAll() {
		return suffixAll;
	}
	public void setSuffixAll(String suffixAll) {
		this.suffixAll = suffixAll;
	}
	public String getPic_products() {
		return pic_products;
	}
	public void setPic_products(String picProducts) {
		pic_products = picProducts;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao costDAO;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public CostDao getCostDAO() {
		return costDAO;
	}
	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}
	public String execute(){
		path = ServletActionContext.getRequest().getRealPath(path);
		pic_products = ServletActionContext.getRequest().getRealPath(pic_products);
		System.out.println(path+"pathpathpath");
		File imgDir = new File(path + "\\"	+ id );
		File picProductsDir = new File(pic_products);
		String[] suffixAllArr = suffixAll.split(",");
		if(imgDir.exists()){
			System.out.println("imgDir.exists()");
			
//			
//			for(String suffix:suffixAllArr){
//				File[] files = FileUtil.NeedDeleteFiles(imgDir, suffix);
//				for(File file:files){
//					file.delete();
//				}
//			}
//			imgDir.delete();
			File[] files = imgDir.listFiles();
			for(File f:files){
				f.delete();
			}
			imgDir.delete();
		}else{
			System.out.println("not imgDir.exists()");
		}
		if(picProductsDir.exists()){
			System.out.println("picProductsDir.exists()");
			
		Products products = costDAO.findProductsById(id);
		File imgFile = new File(picProductsDir, products.getImgname());
		imgFile.delete();
		}else{
			System.out.println("not picProductsDir.exists()");
		}
		try {
			costDAO.deleteProductsById(id);
			msg = "删除成功";
		} catch (Exception e) {
			msg = "删除失败";
			e.printStackTrace();
			
		}
		
		return "success";
	}
}
