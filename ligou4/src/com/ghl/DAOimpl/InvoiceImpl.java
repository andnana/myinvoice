package com.ghl.DAOimpl;

import java.util.Date;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ghl.dao.InvoiceDao;
import com.ghl.entity.Deal;
import com.ghl.entity.Invoice;

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
		double subtotal = deal.getTotal();
		double balance = subtotal - invoice.getDeposit();
		invoice.setBalance(balance);
		invoice.setDeal(deal);
		invoice.setDate(new Date());
		deal.getInvoiceList().add(invoice);
		session.update(deal);
		session.flush();
		session.close();
		
	}
}
