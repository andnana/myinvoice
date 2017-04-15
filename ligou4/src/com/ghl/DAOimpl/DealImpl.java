package com.ghl.DAOimpl;

import java.text.DecimalFormat;
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
			Integer salepersonid, Deal deal, Integer vat) {
		
		double subtotal = 0;
		Session session = super.getSession();
		
		Customer customer2 = (Customer)session.get(Customer.class, customer.getId());
		deal.setCustomer(customer2);
		deal.setDate(new Date());
		for(int i=0; i < product2List.size(); i++){
			if(product2List.get(i) != null){
					
					Product2 product2 = product2List.get(i);
					subtotal += product2.getAmount();
					Product product = (Product)session.get(Product.class, product2.getProductid());
					product2.setProduct(product);
					product2.setDate(new Date());
					deal.getProduct2List().add(product2);
			}
		}
		System.out.println("*************");
		System.out.println("salepersonid"+salepersonid+"salepersonid");
		if(salepersonid != null){
			System.out.println("@@@@");
		SalePerson saleperson = (SalePerson)session.get(SalePerson.class, salepersonid);
		deal.setSalePerson(saleperson);
		}else{
			deal.setSalePerson(null);
			System.out.println("**deal.setSalePerson(null);**");
		}
		deal.setSubtotal(subtotal);
		System.out.println(vat/100.0);
		System.out.println("&&&&");
		Double vatValue = subtotal * (vat / 100.0);
	    System.out.println(vatValue);
	    DecimalFormat df = new DecimalFormat("#.00");
	    
		deal.setVat(Double.parseDouble(df.format(vatValue)));
		double total = subtotal + vatValue;
		deal.setTotal(total);
		System.out.println("****getVat()******");
		System.out.println(deal.getVat());
		session.save(deal);
		session.flush();
		session.close();
		
	}

	public Product findProductById(Integer productid) {
		
		Session session = super.getSession();
		Product product = (Product)session.get(Product.class, productid);
		session.close();
		return product;
	}

	public List<Deal> getDealList(Integer page, Integer pageSize) {
		Session session = super.getSession();
		String hql = "from Deal d order by d.id desc";
		Query query = 
			session.createQuery(hql);
		query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
		System.out.println("######pageSize"+pageSize+"page#####"+page);
		List<Deal> list = query.list();
		
		session.close();
	return list;
	}
	public int getTotalDealItem(){
		String hql ="select count(*) from Deal";
		List list = super.getHibernateTemplate()
					.find(hql);
	
		int rows = new Integer(
				list.get(0).toString());
		return rows;
	}
	public int getDealTotalPage(int pageSize) {
		String hql ="select count(*) from Deal";
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

	public int deleteDeal(Integer dealid) {
		System.out.println("deleteimpl"+dealid);
		Session session = super.getSession();
		Deal deal = (Deal)session.get(Deal.class, dealid);
		System.out.println(deal);
		session.delete(deal);
		session.flush();
		session.close();
		return 1;
	}

	public Deal getDealById(Integer id) {
		Session session = super.getSession();
		Deal deal = (Deal)session.get(Deal.class, id);
		session.close();
		return deal;
	}

	public Double getAlreadyPayment(Integer dealid) {
		Session session = super.getSession();
		String hql ="select sum(deposit) from Invoice where dealid=:dealid";
		Query query = 
			session.createQuery(hql);
		query.setParameter("dealid", dealid);
		List list = query.list();
		Double rows = 0.0;
		System.out.println(list.size()+"LIJKJLJLJKL");
			System.out.println(list.get(0));
			if(list.get(0) != null){
		   rows = new Double(
				list.get(0).toString());
			}
		
		
		 return rows;
	}


}
