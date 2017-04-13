package com.ligou4.admin.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.News;

@Controller
@Scope("prototype")
public class DeleteNewsAction {
	private Integer id;
	private String filename;
	private String path;
	private String smallpicpath;
	
	private CommonInfo commonInfo;
	 private List<News> newsList;
		private Integer pageSize = 5; 
		private Integer newsid = 0;
		private Integer page = 1; 
		private Integer totalPage;
		private Integer totalItem;
		
		
		
		
	public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getFilename() {
			return filename;
		}

		public void setFilename(String filename) {
			this.filename = filename;
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

	public Integer getNewsid() {
			return newsid;
		}

		public void setNewsid(Integer newsid) {
			this.newsid = newsid;
		}

		public AdminDAO getAdminDAO() {
			return adminDAO;
		}

		public void setAdminDAO(AdminDAO adminDAO) {
			this.adminDAO = adminDAO;
		}

	public Integer getTotalItem() {
			return totalItem;
		}

		public void setTotalItem(Integer totalItem) {
			this.totalItem = totalItem;
		}

	public Integer getTotalPage() {
			return totalPage;
		}

		public void setTotalPage(Integer totalPage) {
			this.totalPage = totalPage;
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

	public CommonInfo getCommonInfo() {
		return commonInfo;
	}

	public void setCommonInfo(CommonInfo commonInfo) {
		this.commonInfo = commonInfo;
	}

	public CostDao getCostDAO() {
		return costDAO;
	}

	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}
		@Resource
		@Qualifier("hibernateIndexDAO")
		CostDao costDAO;
		@Resource
		@Qualifier("adminDAOImpl")
		AdminDAO adminDAO;
	 public String execute(){
		
		 path = ServletActionContext.getRequest().getRealPath(path);
			smallpicpath = ServletActionContext.getRequest().getRealPath(smallpicpath);
			adminDAO.deleteImg(filename, path, smallpicpath);
			adminDAO.deleteNews(newsid);
		 commonInfo = costDAO.getCommonInfo();
		  newsList = costDAO.getNewsList(page, pageSize);
		  totalItem = costDAO.getTotalNewsItem();
		  totalPage = costDAO.getNewsTotalPage(pageSize);
		  return "success";
	 }
}
