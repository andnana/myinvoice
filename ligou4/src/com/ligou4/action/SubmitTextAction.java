package com.ligou4.action;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.ProductsComment;
import com.ligou4.entity.User;

@Controller
@Scope("prototype")
public class SubmitTextAction extends BaseAction{
	
	private Integer productsid;
	private Integer msg = 0;
	private String message;
	private String font;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getFont() {
		return font;
	}
	public void setFont(String font) {
		this.font = font;
	}
	public Integer getMsg() {
		return msg;
	}
	public void setMsg(Integer msg) {
		this.msg = msg;
	}
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao costDAO;

	
	public CostDao getCostDAO() {
		return costDAO;
	}
	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}
	public Integer getProductsid() {
		return productsid;
	}
	public void setProductsid(Integer productsid) {
		this.productsid = productsid;
	}
	public String execute(){
		System.out.println("OOOOOO");
		System.out.println(productsid+"productsid");
		System.out.println(message+"text");
			ProductsComment pc = new ProductsComment();
			pc.setContent(message);
			User user = (User)session.get("user");
			
			System.out.println("*(***********");
			System.out.println(message);
			Integer floor = costDAO.getFloorByProductsId(productsid);
			System.out.println("floor"+floor);
			pc.setFloor(floor);
			System.out.println("*(***********");
			
			Date now = new Date();
			pc.setAddtime(now);
			System.out.println("*(***********#$#$");
			costDAO.saveProductsComment(user.getId() ,productsid, pc);
			System.out.println("*(**********#@#@");
			msg = 1;
		
		
		
		return "success";
	}
}
