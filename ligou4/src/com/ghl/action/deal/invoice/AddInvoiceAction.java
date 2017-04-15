package com.ghl.action.deal.invoice;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ghl.action.BaseAction;
import com.ghl.dao.DealDao;
import com.ghl.dao.InvoiceDao;
import com.ghl.entity.Invoice;
@Controller
@Scope("prototype")
public class AddInvoiceAction extends BaseAction{
	private Invoice invoice;
	private Integer dealid;
	
	@Resource
	@Qualifier("invoiceImpl")
	private InvoiceDao invoiceDao;
	
	
	public Integer getDealid() {
		return dealid;
	}

	public void setDealid(Integer dealid) {
		this.dealid = dealid;
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
		invoiceDao.addInvoice(invoice, dealid);
		return "success";
	}
}
