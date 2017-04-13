package com.ligou4.admin.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.admin.dao.AdminDAO;
import com.ligou4.admin.entity.SizeName;
import com.ligou4.dao.CostDao;
import com.ligou4.entity.BrandSort;
import com.ligou4.entity.Sort;


@Controller
@Scope("prototype")
public class ToAddProductsAction {
	private List<Sort> sortlist;
	private List<BrandSort> brandSortList;
	private List<SizeName> sizeNameList;
	@Resource
	@Qualifier("adminDAOImpl")
	private AdminDAO adminDAO;
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao hibernateDAO;
	

	

	public List<SizeName> getSizeNameList() {
		return sizeNameList;
	}

	public void setSizeNameList(List<SizeName> sizeNameList) {
		this.sizeNameList = sizeNameList;
	}

	public List<BrandSort> getBrandSortList() {
		return brandSortList;
	}

	public void setBrandSortList(List<BrandSort> brandSortList) {
		this.brandSortList = brandSortList;
	}

	public CostDao getHibernateDAO() {
		return hibernateDAO;
	}

	public void setHibernateDAO(CostDao hibernateDAO) {
		this.hibernateDAO = hibernateDAO;
	}

	public List<Sort> getSortlist() {
		return sortlist;
	}

	public void setSortlist(List<Sort> sortlist) {
		this.sortlist = sortlist;
	}

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public String execute(){
		sortlist = adminDAO.findSortList();
		for(Sort sort : sortlist){
			System.out.println(sort.getSortname()+"TTTTTTTTT");
		}
		brandSortList = adminDAO.findBrandSortList("clothes");
		sizeNameList = adminDAO.findSizeNameList();
	System.out.println(brandSortList+"brandSortListfer*(&^)");
		return "success";
	}
}
