package com.ghl.DAOimpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ghl.dao.ProductDao;
import com.ghl.entity.Product;

@Repository
public class ProductImpl  extends HibernateDaoSupport  implements ProductDao{
	@Resource
	public void setSf(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	public void addProduct(Product product) {
		Session session = super.getSession();

		int id = (Integer) session.save(product);
		System.out.println(id + "(Integer)session.save(product)");
		session.flush();
		session.close();
		
	}
	public List<Product> getProductList(Integer page, Integer pageSize) {
	
			Session session = super.getSession();
			String hql = "from Product p order by p.id desc";
			Query query = 
				session.createQuery(hql);
			query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
			System.out.println("######pageSize"+pageSize+"page#####"+page);
			List<Product> list = query.list();
			session.close();
		return list;
	}
	public int getTotalProductItem(){
		String hql ="select count(*) from Product";
		List list = super.getHibernateTemplate()
					.find(hql);
	
		int rows = new Integer(
				list.get(0).toString());
		return rows;
	}
	public int getProductTotalPage(int pageSize) {
		String hql ="select count(*) from Product";
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
