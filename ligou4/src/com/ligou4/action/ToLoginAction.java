package com.ligou4.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;

@Controller
@Scope("prototype")
public class ToLoginAction extends BaseAction{
	private CommonInfo commonInfo;
	@Resource
	@Qualifier("hibernateIndexDAO")
	private CostDao dao;
	
	public CostDao getDao() {
		return dao;
	}

	public void setDao(CostDao dao) {
		this.dao = dao;
	}

	public CommonInfo getCommonInfo() {
		return commonInfo;
	}

	public void setCommonInfo(CommonInfo commonInfo) {
		this.commonInfo = commonInfo;
	}

	public String execute(){
		label = 5;
		commonInfo = dao.getCommonInfo();
		System.out.println(commonInfo+"commonInfo");
		return "success";
	}
}
