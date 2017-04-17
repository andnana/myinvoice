package com.ghl.DAOimpl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ghl.dao.InvoiceDao;
import com.ghl.entity.Deal;
import com.ghl.entity.Invoice;
import com.ghl.entity.Product;

@Repository
public class InvoiceImpl  extends HibernateDaoSupport implements InvoiceDao {
	@Resource
	public void setSf(SessionFactory sf){
		super.setSessionFactory(sf);
	}

	public void addInvoice(Invoice invoice, Integer dealid) {
		System.out.println("*****addinvoice22*****");
		System.out.println(invoice);
		Session session = super.getSession();
		Deal deal = (Deal)session.get(Deal.class, dealid);
		double total = deal.getTotal();
		
		double alreadyPayment = getAlreadyPayment(dealid);
		double balance = total - alreadyPayment - invoice.getDeposit();
		if(balance <= 0){
			deal.setIspaid(1);
		}
		invoice.setBalance(balance);
		invoice.setDeal(deal);
		invoice.setDate(new Date());
		deal.getInvoiceList().add(invoice);
		session.update(deal);
		session.flush();
		session.close();
		
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
			session.close();
		
		 return rows;
	}

	public Invoice getInvoiceById(Integer id) {
		Session session = super.getSession();
		Invoice invoice = (Invoice)session.get(Invoice.class, id);
		session.close();
		return invoice;
	}
	public Deal getDealById(Integer dealid) {
		System.out.println("****dealid*****");
		System.out.println(dealid);
		Session session = super.getSession();
		Deal deal = (Deal)session.get(Deal.class, dealid);
		session.close();
		return deal;
	}
}
