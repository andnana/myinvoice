package com.ligou4.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ligou4.dao.CostDao;
import com.ligou4.entity.Student;


@Controller
@Scope("prototype")
public class FindCostAction {
	
	private Integer pageSize = 5; //ҳ����
	//input
	private Integer page = 1; //ҳ��
	//output
	private List<Student> students;
	private Integer totalPage; //��ҳ��

	//injection
	@Resource
	@Qualifier("hibernateCostDao")
	private CostDao dao;

	public String execute(){
		System.out.println(dao+"dsrer");
	//	students = dao.findPage(page, pageSize);
	//	totalPage = dao.countPage(pageSize);
		return "success";
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

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	public CostDao getDao() {
		return dao;
	}

	public void setDao(CostDao dao) {
		this.dao = dao;
	}

	
}
