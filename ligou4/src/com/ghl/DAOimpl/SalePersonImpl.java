package com.ghl.DAOimpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ghl.dao.SalePersonDao;

import com.ghl.entity.Customer;
import com.ghl.entity.SalePerson;
@Repository
public class SalePersonImpl  extends HibernateDaoSupport  implements SalePersonDao{

	@Resource
	public void setSf(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	public void addSalePerson(SalePerson salePerson) {
		Session session = super.getSession();

		int id = (Integer) session.save(salePerson);
		System.out.println(id + "(Integer)session.save(salePerson)");
		session.flush();
		session.close();
	}
	public List<SalePerson> getSalePersonList(Integer page, Integer pageSize) {
		
		Session session = super.getSession();
		String hql = "from SalePerson s order by s.id desc";
		Query query = 
			session.createQuery(hql);
		query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
		System.out.println("######pageSize"+pageSize+"page#####"+page);
		List<SalePerson> list = query.list();
		session.close();
	return list;
}
public int getTotalSalePersonItem(){
	String hql ="select count(*) from SalePerson";
	List list = super.getHibernateTemplate()
				.find(hql);

	int rows = new Integer(
			list.get(0).toString());
	return rows;
}
public int getSalePersonTotalPage(int pageSize) {
	String hql ="select count(*) from SalePerson";
	List list = super.getHibernateTemplate()
				.find(hql);
	int rows = new Integer(
			list.get(0).toString());
	
	if(rows % pageSize == 0){
		return rows/pageSize;
	}else{
		return rows/pageSize+1;	
	}
}


}
