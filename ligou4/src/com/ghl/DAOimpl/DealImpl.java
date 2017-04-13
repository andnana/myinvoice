package com.ghl.DAOimpl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ghl.dao.DealDao;
import com.ghl.entity.Customer;
import com.ghl.entity.Deal;
import com.ghl.entity.Product;
import com.ghl.entity.Product2;
import com.ghl.entity.SalePerson;
import com.ligou4.entity.Products;
import com.ligou4.entity.User;
@Repository
public class DealImpl extends HibernateDaoSupport implements DealDao {
	

	@Resource
	public void setSf(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	
	public List<Customer> findCustomer(String customername, String contact) {
		Session session = super.getSession();
		String hql = " from Customer c ";
		System.out.println(customername+"customername");
		System.out.println(contact+"contact");
	
		String where = "";
	 
		
		if(!com.ghl.util.StringUtil.isNull(customername)){
			System.out.println("run if1");
			if(where.length() != 0)
			where += " and ";
			where += " c.customername=:customername ";
		}
		if(!com.ghl.util.StringUtil.isNull(contact)){
			System.out.println("run if2");
			
			if(where.length() != 0)
				where += " and ";
			where += " c.contact=:contact";
			
		}
	
		

		if(where.length() != 0){
			hql += " where " + where;
		}
		hql += "  order by c.id desc";
		System.out.println(hql+"hql");
		Query query = 
			session.createQuery(hql);
		if(!com.ghl.util.StringUtil.isNull(customername)){
			
			query.setParameter("customername", customername);
	}
	if(!com.ghl.util.StringUtil.isNull(contact)){
			
			query.setParameter("contact", contact);
	}
	query.setFirstResult(0);
	query.setMaxResults(5);
	List<Customer> list = query.list();
	System.out.println(list);
	session.close();
		return list;
	}
	public List<SalePerson> findSalePerson(String salepersonname, String contact) {
		Session session = super.getSession();
		String hql = " from SalePerson s ";
		System.out.println(salepersonname+"salepersonname");
		System.out.println(contact+"contact");
	
		String where = "";
	 
		
		if(!com.ghl.util.StringUtil.isNull(salepersonname)){
			System.out.println("run if1");
			if(where.length() != 0)
			where += " and ";
			where += " s.salepersonname=:salepersonname ";
		}
		if(!com.ghl.util.StringUtil.isNull(contact)){
			System.out.println("run if2");
			
			if(where.length() != 0)
				where += " and ";
			where += " s.contact=:contact";
			
		}
	
		

		if(where.length() != 0){
			hql += " where " + where;
		}
		hql += "  order by s.id desc";
		System.out.println(hql+"hql");
		Query query = 
			session.createQuery(hql);
		if(!com.ghl.util.StringUtil.isNull(salepersonname)){
			
			query.setParameter("salepersonname", salepersonname);
	}
	if(!com.ghl.util.StringUtil.isNull(contact)){
			
			query.setParameter("contact", contact);
	}
	query.setFirstResult(0);
	query.setMaxResults(5);
	List<SalePerson> list = query.list();
	System.out.println(list);
	session.close();
		return list;
	}

	public List<Product> getProductList() {
		Session session = super.getSession();
		String hql = "from Product p order by p.id desc";
		Query query = 
			session.createQuery(hql);
//		query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
//		System.out.println("######pageSize"+pageSize+"page#####"+page);
		List<Product> list = query.list();
		session.close();
	return list;
	}

	public void addDeal(Customer customer, List<Product2> product2List,
			Integer salepersonid) {
		
		
		Session session = super.getSession();
		Deal deal = new Deal();
		Customer customer2 = (Customer)session.get(Customer.class, customer.getId());
		deal.setCustomer(customer2);
		for(int i=0; i < product2List.size(); i++){
			Product2 product2 = product2List.get(i);
			Product product = (Product)session.get(Product.class, product2.getProductid());
			product2.setProduct(product);
			product2.setDate(new Date());
			deal.getProduct2List().add(product2);
		}
		SalePerson saleperson = (SalePerson)session.get(SalePerson.class, salepersonid);
		
		
		deal.setSalePerson(saleperson);
		session.save(deal);
		session.flush();
		session.close();
		
	}
}
