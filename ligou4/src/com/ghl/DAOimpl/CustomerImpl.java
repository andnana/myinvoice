package com.ghl.DAOimpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ghl.dao.CustomerDao;
import com.ghl.entity.Customer;
import com.ligou4.entity.News;

@Repository
public class CustomerImpl  extends HibernateDaoSupport  implements CustomerDao{
	@Resource
	public void setSf(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	public void addCustomer(Customer customer) {
		Session session = super.getSession();

		int id = (Integer) session.save(customer);
		System.out.println(id + "(Integer)session.save(customer)");
		session.flush();
		session.close();
		
	}
	public List<Customer> getCustomerList(Integer page, Integer pageSize) {
	
			Session session = super.getSession();
			String hql = "from Customer c order by c.id desc";
			Query query = 
				session.createQuery(hql);
			query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
			System.out.println("######pageSize"+pageSize+"page#####"+page);
			List<Customer> list = query.list();
			session.close();
		return list;
	}
	public int getTotalCustomerItem(){
		String hql ="select count(*) from Customer";
		List list = super.getHibernateTemplate()
					.find(hql);
	
		int rows = new Integer(
				list.get(0).toString());
		return rows;
	}
	public int getCustomerTotalPage(int pageSize) {
		String hql ="select count(*) from Customer";
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
