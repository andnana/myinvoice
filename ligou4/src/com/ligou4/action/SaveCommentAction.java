package com.ligou4.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.User;

@Controller
@Scope("prototype")
public class SaveCommentAction extends BaseAction{
	private Integer parentid;
	private Integer newsid;
	private String message;
	private Integer page;
	private String font;
	@Resource
	@Qualifier("hibernateIndexDAO")
	CostDao dao;
	

	public String getFont() {
		return font;
	}
	public void setFont(String font) {
		this.font = font;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	
	
	
	public CostDao getDao() {
		return dao;
	}
	public void setDao(CostDao dao) {
		this.dao = dao;
	}
	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	public Integer getNewsid() {
		return newsid;
	}
	public void setNewsid(Integer newsid) {
		this.newsid = newsid;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	public String execute(){
		
			System.out.println(parentid+"parentid");
			System.out.println(newsid+"newsid");
			System.out.println(message+"message");
			if(parentid == null || parentid < 1){
				parentid = 0;
			}
			User user = (User)session.get("user");
			System.out.println(user.getId()+"session userid");
			dao.SaveComment(parentid, newsid, message, user.getId());
			System.out.println("RRRRRRRRRR");
			return "success";	
	
		
	}
}
