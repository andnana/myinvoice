package com.ligou4.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ligou4.admin.entity.Img;
import com.ligou4.admin.entity.SizeName;
import com.ligou4.entity.BrandSort;
import com.ligou4.entity.Comment;
import com.ligou4.entity.CommonInfo;
import com.ligou4.entity.CostSort;
import com.ligou4.entity.News;
import com.ligou4.entity.Products;
import com.ligou4.entity.ProductsComment;
import com.ligou4.entity.Score;
import com.ligou4.entity.SecondSort;
import com.ligou4.entity.Sort;
import com.ligou4.entity.SortStr;
import com.ligou4.entity.Student;
import com.ligou4.entity.ThirdSort;
import com.ligou4.entity.User;
import com.ligou4.entity.WhereStr;

@Repository
public class HibernateIndexDAO 
extends HibernateDaoSupport implements CostDao{

	@Resource
	public void setSf(SessionFactory sf){
		super.setSessionFactory(sf);
	}
	
	public List<Student> findPage1(
			int page, int pageSize) {
		Session session = super.getSession();
		String hql = "from Student order by id";
		Query query = 
			session.createQuery(hql);
		//���÷�ҳ����
		int begin = (page-1)*pageSize;
		query.setFirstResult(begin);//����ץȡ���
		query.setMaxResults(pageSize);//����ץȡ������
		//ִ�в�ѯ
		List<Student> list = query.list();
		session.close();
		return list;
	}
	
	
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
	


	public CommonInfo getCommonInfo(){
		System.out.println("kukuyi");
		Session session = super.getSession();
		String hql = "from CommonInfo where active = :active";
		Query query = 
			session.createQuery(hql);
		query.setParameter("active", 1);
		CommonInfo commonInfo = (CommonInfo)query.uniqueResult();
		session.close();
		return commonInfo;
		}


	public List<News> getNewsList(){
		Session session = super.getSession();
		String hql = "from News";
		Query query = 
			session.createQuery(hql);
		
		List<News> list = query.list();
		
		
		for(News news:list){
			System.out.println(news.getContent()+"hiiuiji");
			System.out.println(news.getUser()+"user");
			System.out.println(news.getCommentlist()+"commentlist");
		}
		session.close();
		System.out.println("&&&&");
		for(News news:list){
			System.out.println("*************");	
		System.out.println(news.getContent()+"hiiuiji");
		System.out.println(news.getUser()+"user");
		System.out.println(news.getCommentlist()+"commentlist");
		}
		return list;
	}
	public List<News> getNewsList(int page ,  int pageSize){
		Session session = super.getSession();
		String hql = "from News";
		Query query = 
			session.createQuery(hql);
		query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
		System.out.println("######pageSize"+pageSize+"page#####"+page);
		List<News> list = query.list();
		
		System.out.println("#######listSize"+list.size());
//		for(News news:list){
//			System.out.println(news.getContent()+"hiiuiji");
//			System.out.println(news.getUser()+"user");
//			System.out.println(news.getCommentlist()+"commentlist");
//			hql = "select sortname from NewsSort where id = :id";
//			query = session.createQuery(hql);
//			query.setParameter("id", news.getSortid());
//			System.out.println(query.getQueryString()+"query.getQueryString()");
//			System.out.println(news.getSortid()+"news.getSortid()");
//			System.out.println(query.list().size()+"query.list().size()");
//			String sortname = query.list().get(0).toString();
//			news.setSortname(sortname);
//		}
		session.close();
		System.out.println("&&&&");
		for(News news:list){
			System.out.println("*************");	
		System.out.println(news.getContent()+"hiiuiji");
		System.out.println(news.getUser()+"user");
		System.out.println(news.getCommentlist()+"commentlist");
//		System.out.println(news.getSortname()+"sortname");
		}
		return list;
	}
	
	public int getNewsTotalPage(int pageSize) {
		String hql ="select count(*) from News";
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

	public int getTotalNewsItem(){
		String hql ="select count(*) from News";
		List list = super.getHibernateTemplate()
					.find(hql);
	
		int rows = new Integer(
				list.get(0).toString());
		return rows;
	}
	
	public List<Comment> getCommentListByNewsId(int newsid) {
		Session session = super.getSession();
		System.out.println("123123");
		String hql = "from Comment c where c.news.id = :id";
		Query query = 
			session.createQuery(hql);
		query.setParameter("id", newsid);
		List<Comment> list = query.list();
		session.close();
	
		return list;
		
	}
	
	public List<Comment> getCommentListByNewsId(int page, int pageSize,
			int newsid) {
		Session session = super.getSession();
		System.out.println("123123");
		String hql = "from Comment c where c.news.id = :id";
		Query query = 
			session.createQuery(hql);
		query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
		query.setParameter("id", newsid);
		List<Comment> list = query.list();
		
		session.close();
	
		return list;
		
		
	}
	public int getTotalCommentItem(int newsid){
		
		
		Session session = super.getSession();
		System.out.println("123123");
		String hql ="select count(*) from Comment where newsid = :newsid";
		
		Query query = 
			session.createQuery(hql);
		
		query.setParameter("newsid", newsid);
		int rows = Integer.valueOf(query.list().get(0).toString());
		session.close();
	
		return rows;
	}
	public int getCommentTotalPage(int pageSize , int newsid ) {
		Session session = super.getSession();
		System.out.println("123123");
		String hql ="select count(*) from Comment where newsid = :newsid";
		
		Query query = 
			session.createQuery(hql);
		
		query.setParameter("newsid", newsid);
		int rows = Integer.valueOf(query.list().get(0).toString());
		session.close();
		if(rows % pageSize == 0){
			return rows/pageSize;
		}else{
			return rows/pageSize+1;	
		}
	}
	public void saveProductsComment(Integer userid, Integer productsid, ProductsComment pc) {
		System.out.println("saveProductsComment**(*(*(***");
			Session session = super.getSession();
			
				User user = (User)session.get(User.class, userid);
				user.getProductsCommentList().add(pc);
				session.update(user);
				Products products = (Products)session.get(Products.class, productsid);
				products.getProductsCommentList().add(pc);
				session.update(products);
			
			session.flush();
			
			session.close();
	
		
	}
	
	public void SaveComment(int parentid, int newsid, String message, Integer userid) {
		
		Session session = super.getSession();
		if(parentid < 1){
			Comment comment = new Comment();
			comment.setContent(message);
			System.out.println(comment.getContent()+"getContent####");
				System.out.println(userid +"userid#######");
				String parentusername = "楼主";
				comment.setParentid(parentid);	
				comment.setParentusername(parentusername);
				User user = (User) session.get(User.class, userid);
				user.getCommentlist().add(comment);
				session.update(user);
				News   news= (News)session.get(News.class, newsid);
				
					
				news.getCommentlist().add(comment);
				session.update(news);
				
				session.flush();
			
					
		
		}else{
			Comment comment = new Comment();
			comment.setContent(message);
				Comment comment2 = (Comment)session.get(Comment.class, parentid);
				comment.setParentid(parentid);	
				comment.setParentusername(comment2.getUser().getUsername());
				User user = (User) session.get(User.class, userid);
				user.getCommentlist().add(comment);
				session.update(user);
				News   news= (News)session.get(News.class, newsid);
				
					
				news.getCommentlist().add(comment);
				session.update(news);
//				user.getNewslist().add(news); 
//				session.flush();
//				session.update(comment);
				
				
				
				session.flush();
		}
		
		
		session.close();
		
		System.out.println("comment save success");
	}
	
	
	public News getNewsById(int id) {
		System.out.println("dferer");
		Session session = super.getSession();
		String hql = "from News where id=:id";
		Query query = 
			session.createQuery(hql);
		query.setParameter("id", id);
		News news = (News)query.uniqueResult();
		System.out.println("UserUserUserUser"+news.getUser());
		System.out.println("^^^^^^^^^");
		System.out.println("commentlistcommentlist"+news.getCommentlist());
//		NewsSort newsSort = (NewsSort)session.get(NewsSort.class, news.getSortid());
//		news.setSortname(newsSort.getSortname());
		session.close();
		return news;
		
	}
  

	

	public News findNewsByCommentId(int id){
		
		Session session = super.getSession();
		String hql = "select n from  News n left join n.commentlist c where c.id =:id";
		Query query = 
			session.createQuery(hql);
		query.setParameter("id", id);
		News news = (News)query.uniqueResult();
		List<Comment> list = news.getCommentlist();
		for(Comment c: list){
			System.out.println(c.getContent());
		}
		System.out.println(news.getContent()+"news.getContent()"+news.getCommentlist()+"news.getcommentlist");
		session.close();
		System.out.println("________)))))"+news.getCommentlist());
		System.out.println("findUserByCommentId success");
		return news;
		
	}
	public Comment findCommentById(int id){
		
			Session session = super.getSession();
			String hql = "from  Comment where id =:id";
			Query query = 
				session.createQuery(hql);
			query.setParameter("id", id);
			Comment comment = (Comment)query.uniqueResult();
			session.close();
			return comment;
		
	}

	

	public Products findProductsById(int id) {
		Session session = super.getSession();
		Products products = (Products)session.get(Products.class, id);
		session.close();
		return products;
	}

	public List<CommonInfo> getCommonInfoList() {
		Session session = super.getSession();
		String hql = "from CommonInfo";
		Query query = 
			session.createQuery(hql);
		
		List<CommonInfo> list = query.list();
		
		
		
		session.close();
		
		return list;
		
	}

	public List<Img> getImgListByProductsId(int id) {
		Session session = super.getSession();
		String hql = "from Img where productsid = :productsid";
		Query query = session.createQuery(hql);
		query.setParameter("productsid", id);
		List<Img>	imgList = query.list();
		session.close();
		return imgList;
	}

	public List<Img> getImgListByProductsIdAndColor(int productsid, String colorname) {
		Session session = super.getSession();
		String hql = "from Img img where img.products.id = :productsid and img.colorname = :colorname";
		List<Img> imgList = null;
		try {
			Query query = session.createQuery(hql);
			query.setParameter("productsid", productsid);
			query.setParameter("colorname", colorname);
			imgList = new ArrayList<Img>();
				  imgList = query.list();
			System.out.println(imgList + " imgList = query.list()");
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.close();
		
		return imgList;
	}

	
	public List<Img> getImgListDistinctByProductsId(int productsid) {
		Session session = super.getSession();
		String hql = " select distinct i.colorname from Img i where productsid = :productsid";
		Query query = session.createQuery(hql);
		query.setParameter("productsid", productsid);
		List<Img> imgList = new ArrayList<Img>();
			  imgList = query.list();
		System.out.println(imgList + " imgList = query.list()");
		for(int i=0;i<imgList.size();i++){
			System.out.println(imgList.get(i)+"&&&&");
		}
		session.close();
		
		return imgList;
		
	}



	public Integer getFloorByProductsId(int productsid) {
		Session session = super.getSession();
		String hql = "select max(floor) as maxfloor from ProductsComment where productsid = :productsid";
		Query query = session.createQuery(hql);
		query.setParameter("productsid", productsid);
		Integer maxfloor;
		System.out.println("query.list()");
		System.out.println(query.list());
		if(query.list().get(0) == null){
			maxfloor = 0;
		}else{
			maxfloor = Integer.valueOf(query.list().get(0).toString());	
		}
		
	
		
		
		session.close();
		return maxfloor+1;
	}

	public List<ProductsComment> getProductsCommentList(int productsid, int page, int pageSize) {
		Session session = super.getSession();
		String hql = "from ProductsComment where productsid = :productsid";
		
		Query query = session.createQuery(hql);
		query.setFirstResult((page-1)*pageSize).setMaxResults(pageSize);
		query.setParameter("productsid", productsid);
		List<ProductsComment> productsCommentList = query.list();
		
		
		session.close();
		return productsCommentList;
	}

	public User findUserById(int id) {
		Session session = super.getSession();
		User user = (User)session.get(User.class, id);
		session.close();
		return user;
	}

	public int getProductsCommentTotalPage(int pageSize , int productsid ) {
		Session session = super.getSession();
		System.out.println("123123");
		String hql ="select count(*) from ProductsComment where productsid = :productsid";
		
		Query query = 
			session.createQuery(hql);
		
		query.setParameter("productsid", productsid);
		int rows = Integer.valueOf(query.list().get(0).toString());
		session.close();
		if(rows % pageSize == 0){
			return rows/pageSize;
		}else{
			return rows/pageSize+1;	
		}
	}

	public int getTotalProductsCommentItem(int productsid){
		
		
		Session session = super.getSession();
		System.out.println("123123");
		String hql ="select count(*) from ProductsComment where productsid = :productsid";
		
		Query query = 
			session.createQuery(hql);
		
		query.setParameter("productsid", productsid);
		int rows = Integer.valueOf(query.list().get(0).toString());
		session.close();
	
		return rows;
	}

	public User findUserByUsername(String username) {
		Session session = super.getSession();
		String hql = "from User where username=:username";
		User user = null;
		try {
			Query query = session.createQuery(hql);
			query.setParameter("username", username);
			System.out.println(query.getQueryString());
			user = (User)query.uniqueResult();
			System.out.println(user+"user");
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.close();
		return user;
	}

	public void saveUser(User user){
		Session session = super.getSession();
		session.save(user);
		session.flush();
		session.close();
		
	}

	public void deleteProductsById(Integer id) {
		Session session = super.getSession();
		Products products = (Products)session.get(Products.class, id);
		System.out.println(products+"productstest");
		products.getSort().getProductsList().remove(products);
		if(products.getSecondSort() != null)
	
			products.getSecondSort().getProductsList().remove(products);
	
		
		if(products.getThirdSort() != null)
		
			products.getThirdSort().getProductsList().remove(products);
		if(products.getBrandSort() != null)
		
			products.getBrandSort().getProductsList().remove(products);
		products.setSort(null);
		products.setSecondSort(null);
		products.setThirdSort(null);
		products.setBrandSort(null);
		
		for(int i = 0 ; i<products.getProductsCommentList().size(); i++){
			List<ProductsComment> productsCommentList = products.getProductsCommentList();
		
		
			productsCommentList.get(i).getUser().getProductsCommentList().remove(productsCommentList.get(i));
			productsCommentList.get(i).setUser(null);
			
		}
		
			Set<SizeName> productsSizeSet = products.getSizeset();
			Iterator<SizeName> it = productsSizeSet.iterator();  
			while (it.hasNext()) {  
			    it.next();
			        it.remove();  
			   
			}
		
		for(int i = 0; i < products.getImgList().size(); i++){
			List<Img> imgList = products.getImgList();
			imgList.get(i).setProducts(null);
			
			imgList.remove(i);
			
		}
		for(int i = 0; i < products.getScoreList().size(); i++){
			products.getScoreList().remove(i);
			
		}
		session.delete(products);
		session.flush();
		session.close();
		
		
	}

	public List<Products> getRecommendedProductsList(Integer size) {
		Session session = super.getSession();
		String hql = "from Products where recommended=:recommended";
		Query query = session.createQuery(hql);
		query.setParameter("recommended", 1);
		//query.setMaxResults(size);
		List<Products> recommendedProductsList = query.list();
		session.close();
		System.out.println("recommended running");
		return recommendedProductsList;
	}

	public List<Products> findProductsList(
			final int page, final int pageSize,WhereStr whereStr, SortStr sortStr) {
		Session session = super.getSession();
		
			System.out.println(sortStr+"sortStrsortStr");
					String hql = " from Products p ";
					
					
					String where = "";
				 
					
					if(!com.ligou4.util.StringUtil.isNull(whereStr.getBrand())){
						System.out.println("run if1");
						if(where.length() != 0)
						where += " and ";
						where += " p.brandSort.brandname=:brandname ";
						
					}
					if(!com.ligou4.util.StringUtil.isNull(whereStr.getCost())){
						System.out.println("run if2");
						
						if(where.length() != 0)
							where += " and ";
						where += " beforemoney between :begincost and :endcost";
						
					}
				
					
					if(!com.ligou4.util.StringUtil.isNull(sortStr.getOneSortName())){
						System.out.println("run if3");
						
						if(where.length() != 0)
							where += " and ";
						where += " p.sort.sortname=:onesortname ";
						
					}
					if(!com.ligou4.util.StringUtil.isNull(sortStr.getSecondSortName())){
						System.out.println("run if4");
						
						if(where.length() != 0)
							where += " and ";
						where += " p.secondSort.sortname=:secondsortname ";
						
					}
					if(!com.ligou4.util.StringUtil.isNull(sortStr.getThirdSortName())){
						System.out.println("run if5");
						
						if(where.length() != 0)
							where += " and ";
						where += " p.thirdSort.sortname=:thirdsortname ";
						
					}
					if(where.length() != 0){
						hql += " where " + where;
					}
					System.out.println(hql+"hql");
					Query query = 
						session.createQuery(hql);
					if(!com.ligou4.util.StringUtil.isNull(whereStr.getBrand())){
						
							query.setParameter("brandname", whereStr.getBrand());
					}
					if(!com.ligou4.util.StringUtil.isNull(whereStr.getCost())){
						String[] beginEndCost = whereStr.getCost().split("-");
					
						query.setParameter("begincost", Integer.parseInt(beginEndCost[0]));
						query.setParameter("endcost", Integer.parseInt(beginEndCost[1]));
					}
					if(!com.ligou4.util.StringUtil.isNull(sortStr.getOneSortName())){
					
					
						query.setParameter("onesortname", sortStr.getOneSortName());
						
					}
					if(!com.ligou4.util.StringUtil.isNull(sortStr.getSecondSortName())){
						
						query.setParameter("secondsortname", sortStr.getSecondSortName());
						
					}
					if(!com.ligou4.util.StringUtil.isNull(sortStr.getThirdSortName())){
						
						query.setParameter("thirdsortname", sortStr.getThirdSortName());
						
					}
					System.out.println(hql+"hql");
				int begin = (page-1)*pageSize;
					query.setFirstResult(begin);
					query.setMaxResults(pageSize);
					System.out.println(query.toString()+"query.toString()");
					List<Products> list = query.list();
		session.close();
		return list;
	}

	public List<Products> findProductsSortList(final int page, final int pageSize, Integer sortid) {
		Session session = super.getSession();
		String hql = "from Products where sortid = :sortid";
		Query query = session.createQuery(hql);
		query.setParameter("sortid", sortid);
		int begin = (page-1)*pageSize;
		query.setFirstResult(begin);
		query.setMaxResults(pageSize);
		List list = query.list();
		session.close();
		return list;
	}
	
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
			e.printStackTrace();
		}
		session.close();
		return user;
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

	public List<CostSort> findCostSortList() {
		Session session = super.getSession();
		String hql = "from CostSort";
		Query query = session.createQuery(hql);
		List<CostSort> costSortList = query.list();
		session.close();
		
		return costSortList;
	}

	public List<SecondSort> findSecondSortList(Integer onesortid) {
		Session session = super.getSession();
		String hql = "from SecondSort where onesortid=:onesortid";
		Query query = session.createQuery(hql);
		query.setParameter("onesortid", onesortid);
	
		List<SecondSort> secondSortList = null;
		
			secondSortList = query.list();
		
		session.close();
		return secondSortList;
	}
	public List<SecondSort> findSecondSortList() {
		Session session = super.getSession();
		String hql = "from SecondSort";
		Query query = session.createQuery(hql);
	
		List<SecondSort> secondSortList = null;
		
			secondSortList = query.list();
		
		session.close();
		return secondSortList;
	}

	public List<ThirdSort> findThirdSortList(Integer secondsortid) {
		Session session = super.getSession();
		String hql = "from ThirdSort where secondsortid=:secondsortid";
		Query query = session.createQuery(hql);
		query.setParameter("secondsortid", secondsortid);
	
		List<ThirdSort> thirdSortList = null;
			thirdSortList = query.list();
		session.close();
		return thirdSortList;
	}
	public List<ThirdSort> findThirdSortList() {
		Session session = super.getSession();
		String hql = "from ThirdSort";
		Query query = session.createQuery(hql);
		List<ThirdSort> thirdSortList = null;
			thirdSortList = query.list();
		session.close();
		return thirdSortList;
	}

	public SecondSort getSecondSortById(Integer id) {
		Session session = super.getSession();
		SecondSort secondSort = (SecondSort)session.get(SecondSort.class, id);
		session.close();
		return secondSort;
	}

	public Sort getSortById(Integer id) {
		Session session = super.getSession();
		Sort sort = (Sort)session.get(Sort.class, id);
		session.close();
		return sort;
	}

	public ThirdSort getThirdSortById(Integer id) {
		Session session = super.getSession();
		ThirdSort thirdSort = (ThirdSort)session.get(ThirdSort.class, id);
		session.close();
		return thirdSort;
	}

	public void saveProductsSort(Integer sortid, Integer secondsortid,
			Integer thirdsortid, Integer brandid, Products products, List<String> sizeNumList) {
			Session session = super.getSession();
			Sort sort = (Sort)session.get(Sort.class, sortid);
			SecondSort secondSort = new SecondSort();
			if(secondsortid != null){
				secondSort = (SecondSort)session.get(SecondSort.class, secondsortid);	
			}
			ThirdSort thirdSort = new ThirdSort();;
			if(thirdsortid != null){
				 thirdSort = (ThirdSort)session.get(ThirdSort.class, thirdsortid);	
			}
			
			BrandSort brandSort = new BrandSort();
			if(brandid != null){
				brandSort = (BrandSort)session.get(BrandSort.class, brandid);	
			}
			
//			Products products2 = (Products)session.get(Products.class, products.getId());
			int[] sizeNumArr = new int[sizeNumList.size()];
			for(int i = 0; i<sizeNumList.size(); i++){
				sizeNumArr[i] = Integer.parseInt(sizeNumList.get(i));
				SizeName sizeName = (SizeName)session.get(SizeName.class, sizeNumArr[i]);
				products.getSizeset().add(sizeName);
			}
			sort.getProductsList().add(products);
			if(secondsortid != null){
				secondSort.getProductsList().add(products);	
			}
		
			if(thirdsortid != null){
				thirdSort.getProductsList().add(products);
			}
			
			
			if(brandid != null){
				brandSort.getProductsList().add(products);
			}
			
			
		
			
			session.update(sort);
			if(secondsortid != null){
				session.update(secondSort);
			}
		
			if(thirdsortid != null){
				session.update(thirdSort);
			}
			
			
			if(brandid != null){
				session.update(brandSort);
			}
	
			
		
			session.flush();
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

	public void saveScore(Integer productsid, Integer userid, Integer score) {
		
		Session session = super.getSession();
		User user = (User)session.get(User.class, userid);
		Products products = (Products)session.get(Products.class, productsid);
		Score scoreObj = new Score();
		scoreObj.setScore(score);
		Score beforeScoreObj = getScore(productsid, userid);
		
		if(beforeScoreObj != null){
			Score beforeScoreObj2 = (Score)session.get(Score.class, beforeScoreObj.getId());
			System.out.println(beforeScoreObj+"beforeScoreObj");
			user.getScoreList().remove(beforeScoreObj2);
			products.getScoreList().remove(beforeScoreObj2);
			session.delete(beforeScoreObj2);
			session.flush();
		}
		user.getScoreList().add(scoreObj);
		products.getScoreList().add(scoreObj);
		
		session.save(scoreObj);
		session.flush();
		session.close();
		
	}

	public Score getScore(Integer productsid, Integer userid) {
		Session session = super.getSession();
		String hql = "from Score where userid = :userid and productsid = :productsid";
		Query query = session.createQuery(hql);
		query.setParameter("userid", userid);
		query.setParameter("productsid", productsid);
		Score score = null;
		if(query.list().size() > 0){
			 score = (Score)query.list().get(0);	
		}
		
		session.close();
		return score;
	}


}