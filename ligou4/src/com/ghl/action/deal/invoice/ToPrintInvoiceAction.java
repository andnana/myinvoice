package com.ghl.action.deal.invoice;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.dao.InvoiceDao;
import com.ghl.entity.Deal;
import com.ghl.entity.Invoice;

@Controller
@Scope("prototype")
public class ToPrintInvoiceAction {
	private Invoice invoice;
	private Integer dealid;
	private Deal deal;
	
	public Integer getDealid() {
		return dealid;
	}
	public void setDealid(Integer dealid) {
		this.dealid = dealid;
	}
	public Deal getDeal() {
		return deal;
	}
	public void setDeal(Deal deal) {
		this.deal = deal;
	}
	private Integer invoiceid;
	@Resource
	@Qualifier("invoiceImpl")
	private InvoiceDao invoiceDao;
	
	public Integer getInvoiceid() {
		return invoiceid;
	}
	public void setInvoiceid(Integer invoiceid) {
		this.invoiceid = invoiceid;
	}
	public Invoice getInvoice() {
		return invoice;
	}
	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
	}
	public InvoiceDao getInvoiceDao() {
		return invoiceDao;
	}
	public void setInvoiceDao(InvoiceDao invoiceDao) {
		this.invoiceDao = invoiceDao;
	}
	public String execute(){
		System.out.println("******dealid1****");
		System.out.println(dealid);
		deal = invoiceDao.getDealById(dealid);
		invoice = invoiceDao.getInvoiceById(invoiceid);
		return "success";
	}
}
