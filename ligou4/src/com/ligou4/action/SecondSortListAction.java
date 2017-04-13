package com.ligou4.action;

import java.util.ArrayList;
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
import com.ligou4.entity.SecondSort;

@Controller
@Scope("prototype")
public class SecondSortListAction {
	private Integer onesortid;

	private List<SecondSort> secondSortList = new ArrayList<SecondSort>();
	
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao dao;

	public Integer getOnesortid() {
		return onesortid;
	}
	public void setOnesortid(Integer onesortid) {
		this.onesortid = onesortid;
	}
	public List<SecondSort> getSecondSortList() {
		return secondSortList;
	}
	public void setSecondSortList(List<SecondSort> secondSortList) {
		this.secondSortList = secondSortList;
	}
	public CostDao getDao() {
		return dao;
	}
	public void setDao(CostDao dao) {
		this.dao = dao;
	}
	public String execute(){
		secondSortList = dao.findSecondSortList(onesortid);
		
		return "success";
	}
}
