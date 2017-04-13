package com.ligou4.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.User;

@Controller
@Scope("prototype")
public class SaveProductsScoreAction extends BaseAction{
	private Integer productsid;
	private Integer userid;
	private Integer score;
	private Integer data;
	
	
	public Integer getData() {
		return data;
	}
	public void setData(Integer data) {
		this.data = data;
	}
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao dao;
	
	public CostDao getDao() {
		return dao;
	}
	public void setDao(CostDao dao) {
		this.dao = dao;
	}
	
	public Integer getProductsid() {
		return productsid;
	}
	public void setProductsid(Integer productsid) {
		this.productsid = productsid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public String execute(){
		System.out.println("saveProductsScore");
		User user = (User)session.get("user");
		if(user != null){
			System.out.println(user.getId()+"user.getId()");
			dao.saveScore(productsid, user.getId(), score);
			data = 1;	
		}else{
			data = 2;
		}
		
		
		return "success";
	}
}
