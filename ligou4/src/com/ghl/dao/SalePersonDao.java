package com.ghl.dao;

import java.util.List;

import com.ghl.entity.SalePerson;

public interface SalePersonDao {
	public void addSalePerson(SalePerson salePerson);
	public List<SalePerson> getSalePersonList(Integer page, Integer pageSize);
	public int getTotalSalePersonItem();
	public int getSalePersonTotalPage(int pageSize);

}
