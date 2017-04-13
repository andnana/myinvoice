package com.ligou4.action;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.entity.Img;
import com.ligou4.dao.CostDao;
@Controller
@Scope("prototype")
public class GetImgListAction {
	private String colorname;
	private Integer productsid;
	private List<Img> imgList;
	@Resource
	@Qualifier("hibernateIndexDAO")
	CostDao costDAO;
	public String getColorname() {
		return colorname;
	}

	public void setColorname(String colorname) {
		this.colorname = colorname;
	}
	
	
	
	public Integer getProductsid() {
		return productsid;
	}

	public void setProductsid(Integer productsid) {
		this.productsid = productsid;
	}

	public CostDao getCostDAO() {
		return costDAO;
	}

	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}

	


	public List<Img> getImgList() {
		return imgList;
	}

	public void setImgList(List<Img> imgList) {
		this.imgList = imgList;
	}

	public String execute(){
		System.out.println("ddff");
		System.out.println(productsid+"productsid");
		System.out.println(colorname+"colorname");
		imgList = costDAO.getImgListByProductsIdAndColor(productsid, colorname);
		JSONArray jsonArr = new JSONArray();
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		
		for(Img img : imgList){
			JSONObject json = JSONObject.fromObject(img, jsonConfig);
			jsonArr.add(json);
		}
	String jsonStr = jsonArr.toString();
	System.out.println("jsonArr.toString()");
	System.out.println(jsonStr);
		return "success";
	}
}
