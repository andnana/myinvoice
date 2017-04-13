package com.ligou4.admin.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.Comment;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.News;

@Controller
@Scope("prototype")
public class AdminNewsDetailAction {
	private CommonInfo commonInfo;
	private List<Comment> commentlist;
	private News news;
	private Integer newsid;
	private Integer pageSize = 5; 
	
	private Integer page = 1; 
	
	private Integer totalPage;
	private Integer totalItem;



	public Integer getTotalItem() {
		return totalItem;
	}

	public void setTotalItem(Integer totalItem) {
		this.totalItem = totalItem;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getNewsid() {
		return newsid;
	}

	public void setNewsid(Integer newsid) {
		this.newsid = newsid;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	

	public List<Comment> getCommentlist() {
		return commentlist;
	}

	public void setCommentlist(List<Comment> commentlist) {
		this.commentlist = commentlist;
	}

	public CostDao getCostDAO() {
		return costDAO;
	}

	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}

	public CommonInfo getCommonInfo() {
		return commonInfo;
	}

	public void setCommonInfo(CommonInfo commonInfo) {
		this.commonInfo = commonInfo;
	}
	@Resource
	@Qualifier("hibernateIndexDAO")
	CostDao costDAO;
	public String execute(){
		System.out.println("newsid"+newsid);
		commonInfo = costDAO.getCommonInfo();
		System.out.println("1))))))))");
		System.out.println("page"+page+"pageSize"+pageSize+"newsid"+newsid);
		commentlist = costDAO.getCommentListByNewsId(page, pageSize, newsid);
		System.out.println("2))))))))");
		totalPage = costDAO.getCommentTotalPage(pageSize, newsid);
		totalItem = costDAO.getTotalCommentItem(newsid);
		System.out.println("3))))))))");
		news = costDAO.getNewsById(newsid);
		System.out.println("4))))))))");
		return "success";
	}
}
