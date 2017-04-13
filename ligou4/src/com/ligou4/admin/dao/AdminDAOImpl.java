package com.ligou4.admin.dao;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ligou4.admin.entity.ColorSort;
import com.ligou4.admin.entity.Img;
import com.ligou4.admin.entity.NewsSort;
import com.ligou4.admin.entity.Pic;
import com.ligou4.admin.entity.SizeName;
import com.ligou4.entity.BrandSort;
import com.ligou4.entity.Comment;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.News;
import com.ligou4.entity.Products;
import com.ligou4.entity.Sort;
import com.ligou4.entity.User;

@Repository
public class AdminDAOImpl extends HibernateDaoSupport implements AdminDAO{
	@Resource
	public void setSf(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	
	public List<Pic> getPics() {
		
		Session session = super.getSession();
		
		String hql = "from Pic";
		Query query = 
			session.createQuery(hql);
		
		List<Pic> list = query.list();
		session.close();
		for(Pic pic:list){
			System.out.println(pic.getPicname()+"hiiuiji");
			System.out.println(pic.getAdddate()+"adddateadddate=================");
		}
		return list;
}

	public void save(Pic pic) {
		Session session = super.getSession();
		session.persist(pic);
		session.flush();
		session.close();
	}

	public void deleteImg(String filename, String path, String smallpicpath) {
		System.out.println("++++++++++++"+path);
		System.out.println("++++++++++++"+smallpicpath);
		File picfile = new File(path + "\\"  + filename);
		File smallpicfile = new File(smallpicpath + "\\" + filename);
	      
	    if (picfile.isFile() && picfile.exists()) {  
	    	picfile.delete();  
	        System.out.println("路径为文件且不为空则进行删除 完成1  ");
	    } 
	    if (smallpicfile.isFile() && smallpicfile.exists()) {  
	    	smallpicfile.delete();  
	      System.out.println("路径为文件且不为空则进行删除 完成2  ");
	    } 
	    
	    
	  
	
		
	}
	public void deletePic(int id){
		
		 Session session = super.getSession();
			String hql ="delete from Pic where id = :id";
			
			Query query = 
				session.createQuery(hql);
			
			query.setParameter("id", id);
			query.executeUpdate();
	         
			session.close();
	}
	public void saveCommonInfo(CommonInfo commoninfo) {
			Session session = super.getSession();
			session.persist(commoninfo);
			session.flush();
			session.close();
	}
//	public void deleteNews(int id){
//	    Session session = super.getSession();
//		String hql ="delete from News where id = :id";
//		
//		Query query = 
//			session.createQuery(hql);
//		
//		query.setParameter("id", id);
//		query.executeUpdate();
//          hql ="delete from Comment where newsid = :newsid";
//		
//		 query = 
//			session.createQuery(hql);
//		
//		query.setParameter("newsid", id);
//		query.executeUpdate();
//		session.close();
//		
//	}

	public List<Sort> findSortList() {
		
		Session session = super.getSession();
		
		String hql = "from Sort";
		Query query = 
			session.createQuery(hql);
		
		List<Sort> list = query.list();
		session.close();
		for(Sort sort:list){
			System.out.println(sort.getSortname()+"hiiuiji");
		}
		return list;
	}

	public void saveNews(News news, Integer userid) {
		Session session = super.getSession();
		session.persist(news);
		User user = (User)session.get(User.class, userid);
		user.getNewsList().add(news);
		session.update(user);
		session.flush();
		session.close();
	}
	
	public void deleteNews(Integer newsid){
		Session session = super.getSession();
		News news = (News)session.get(News.class, newsid);
		System.out.println(news+"news*(&(&newsid"+newsid);
		try {
			news.getUser().getNewsList().remove(news);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		news.setUser(null);
		List<Comment> commentList = news.getCommentlist();
		for(int i = 0; i<commentList.size(); i++){
			Comment comment = commentList.get(i);
			comment.getUser().getCommentlist().remove(comment);
			comment.setUser(null);
		}
		session.delete(news);
		session.flush();
		session.close();
	}
	public void updateCommonInfo(CommonInfo commoninfo) {
		Session session = super.getSession();
		String hql = "update CommonInfo set introducetitle = :introducetitle , introducecontent = :introducecontent , email = :email, mobilephone = :mobilephone" +
				", icpnumber = :icpnumber, active = :active, address = :address, hotline = :hotline, zipcode = :zipcode, telephone = :telephone, emailme = :emailme where id = :id";
		Query query = 
			session.createQuery(hql);
		
		query.setParameter("introducetitle", commoninfo.getIntroducetitle());
		query.setParameter("introducecontent", commoninfo.getIntroducecontent());
		query.setParameter("email", commoninfo.getEmail());
		query.setParameter("mobilephone", commoninfo.getMobilephone());
		query.setParameter("icpnumber", commoninfo.getIcpnumber());
		query.setParameter("active", commoninfo.getActive());
		query.setParameter("address", commoninfo.getAddress());
		query.setParameter("hotline", commoninfo.getHotline());
		query.setParameter("zipcode", commoninfo.getZipcode());
		query.setParameter("telephone", commoninfo.getTelephone());
		query.setParameter("emailme", commoninfo.getEmailme());
		query.setParameter("id", commoninfo.getId());
		query.executeUpdate();	
		session.close();
	}

	public CommonInfo findCommonInfoById(int id) {
		Session session = super.getSession();
		CommonInfo commoninfo = (CommonInfo)session.get(CommonInfo.class, id);
		session.close();
		return commoninfo;
	}

	public void deleteCommonInfo(int id) {
		   Session session = super.getSession();
			String hql ="delete from CommonInfo where id = :id";
			
			Query query = 
				session.createQuery(hql);
			
			query.setParameter("id", id);
			query.executeUpdate();
			session.close();
	}

	public int saveProducts(Products products) {
		Session session = super.getSession();
		
	int id = (Integer)session.save(products);
	System.out.println(id+"(Integer)session.save(products)");
		session.flush();
		session.close();
		return id;
	}

	public List<Products> getProductsList(int page, int pageSize) {
		Session session = super.getSession();
		String hql = "from Products";
		Query query = 
			session.createQuery(hql);
		query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
		System.out.println("######pageSize"+pageSize+"page#####"+page);
		List<Products> list = query.list();
		session.close();
		return list;
	}

	public void saveProductsImg(int productsid, String imgname, String suffix, String colorname) {
		Session session = super.getSession();
		Img img = new Img();
		img.setImgname(imgname);
		img.setSuffix(suffix);
		img.setColorname(colorname);
		Products products = (Products)session.get(Products.class, productsid);
		products.getImgList().add(img);
		
		
		session.update(products);
		session.flush();
		session.close();
	}


	public List<ColorSort> getColorSortList() {
		Session session = super.getSession();
		String hql = "from ColorSort";
		Query query = 
			session.createQuery(hql);
		List<ColorSort> list = query.list();
		session.close();
		return list;
	}

	public ColorSort getColorById(int id) {
		Session session = super.getSession();
		String hql = "from ColorSort where id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		ColorSort colorsort = (ColorSort)query.uniqueResult();
		session.close();
		return colorsort;
	}

/*	public void updateColor(int colorid, int productsid) {
		Session session = super.getSession();
		String colorset1 = "";
		String colorset2 = "";
		switch(colorid){
		case ColorUse.BLUE:
			colorset1 = "blue =:";
			colorset2 = "blue";
			break;
		case ColorUse.YELLOW:
			colorset1 = "yellow =:";
			colorset2 = "yellow";
			break;
		case ColorUse.BLACK:

			 colorset1 = "black=:";
			 colorset2 = "balck";
			break;
		case ColorUse.WHITE:
			 colorset1 = "white=:";
			 colorset2 = "white";
			break;
		case ColorUse.RED:
			 colorset1 = "red=:";
			 colorset2 = "red";
			break;
		case ColorUse.PURPLE:
			 colorset1 = "purple=:";
			 colorset2 = "purple";
			break;
		case ColorUse.GRAY:
			 colorset1 = "gray=:";
			 colorset2 = "gray";
			break;
		case ColorUse.PINK:
			 colorset1 = "pink=:";
			 colorset2 = "pink";
			break;
		case ColorUse.ORANGE:
			 colorset1 = "orange=:";
			 colorset2 = "orange";
			break;
		case ColorUse.GREEN:
			 colorset1 = "green=:";
			 colorset2 = "green";
			break;
			default:
			
		}
		
		String hql = "update Color set " + colorset1 + colorset2 + " where productsid = :id";
		Query query = 
			session.createQuery(hql);
		
		query.setParameter(colorset2, 1);
		query.setParameter("id", productsid);
		query.executeUpdate();	
		session.close();
	}

	*/
	public User login(String username, String password){
		Session session = super.getSession();
		String hql = "from User where username = :username and pwd = :password";
		User user = null;
		try {
			Query query = session.createQuery(hql);
			query.setParameter("username", username);
			query.setParameter("password", password);
			user = (User)query.uniqueResult();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.close();
		return user;
	}

	public List<NewsSort> findNewsSortList() {

		Session session = super.getSession();
		
		String hql = "from NewsSort";
		Query query = 
			session.createQuery(hql);
		
		List<NewsSort> list = query.list();
		session.close();
		for(NewsSort sort:list){
			System.out.println(sort.getSortname()+"hiiuiji");
		}
		return list;
	}

	public Products findProductsById(Integer id) {
	
		Session session = super.getSession();
		Products products = (Products)session.get(Products.class, id);
		session.flush();
		session.close();
		return products;
	}
	public List<BrandSort> findBrandSortList(String oneclass) {
		Session session = super.getSession();
		String hql = "from BrandSort where oneclass=:oneclass";
		Query query = session.createQuery(hql);
		query.setParameter("oneclass", oneclass);
		List<BrandSort> brandSortList = query.list();
		session.close();
		
		return brandSortList;
	}
	public void deleteProductsImgById(Integer id) {
		Session session = super.getSession();
		Img img = (Img)session.get(Img.class, id);
		Products products = (Products)session.get(Products.class, img.getProducts().getId());
		products.getImgList().remove(img);
		img.setProducts(null);
		session.delete(img);
		session.flush();
		session.close();
	}

	public List<SizeName> findSizeNameList() {
		Session session = super.getSession();
		String hql = "from SizeName";
		Query query = session.createQuery(hql);
		
		List<SizeName> sizeNameList = query.list();
		session.close();
		return sizeNameList;
	}


}
