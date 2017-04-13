package com.ligou4.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.CommonInfo;

@Controller
@Scope("prototype")
public class ToRegisterAction extends BaseAction{
	private CommonInfo commonInfo;
	
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
		 commonInfo = costDAO.getCommonInfo();
		label = 4;
		return "success";
	}
}
