package com.ligou4.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.ThirdSort;

@Controller
@Scope("prototype")
public class ThirdSortListAction {
	private Integer secondsortid;
	private List<ThirdSort> thirdSortList = new ArrayList<ThirdSort>();
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao dao;
	
	public Integer getSecondsortid() {
		return secondsortid;
	}
	
	public void setSecondsortid(Integer secondsortid) {
		this.secondsortid = secondsortid;
	}

	public List<ThirdSort> getThirdSortList() {
		return thirdSortList;
	}

	public void setThirdSortList(List<ThirdSort> thirdSortList) {
		this.thirdSortList = thirdSortList;
	}

	public CostDao getDao() {
		return dao;
	}

	public void setDao(CostDao dao) {
		this.dao = dao;
	}

	public String execute(){
		thirdSortList = dao.findThirdSortList(secondsortid);
		return "success";
	}
}
