package com.ghl.dao;

import com.ghl.entity.Deal;
import com.ghl.entity.Invoice;

public interface InvoiceDao {
		public void addInvoice(Invoice invoice, Integer dealid);
		public Invoice getInvoiceById(Integer id);
		public Double getAlreadyPayment(Integer dealid);
		public Deal getDealById(Integer dealid);
}
