package com.ligou4.admin.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;
@Controller
@Scope("prototype")
public class CommonInfoListAction {
	List<CommonInfo> commoninfolist;
	@Resource
	@Qualifier("hibernateIndexDAO")
	
	CostDao costDAO;

	
	public List<CommonInfo> getCommoninfolist() {
		return commoninfolist;
	}

	public void setCommoninfolist(List<CommonInfo> commoninfolist) {
		this.commoninfolist = commoninfolist;
	}

	public CostDao getCostDAO() {
		return costDAO;
	}

	public void setCostDAO(CostDao costDAO) {
		this.costDAO = costDAO;
	}

	public String execute(){
		commoninfolist = costDAO.getCommonInfoList();
		return "success";
		
	}
}
