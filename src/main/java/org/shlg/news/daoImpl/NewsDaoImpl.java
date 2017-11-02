package org.shlg.news.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.shlg.news.dao.INewsDao;
import org.shlg.news.domain.News;
import org.shlg.news.domain.User;
import org.shlg.news.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-12
 * @introduce 这新闻数据库dao层实现接口
 */

@Repository
public class NewsDaoImpl implements INewsDao {

	/**
	 * 声明Hibernate的会话
	 */
	private Session session;
	
	/**
	 * 声明Hibernate的事务管理
	 */
	private Transaction tx;
	
	/**
	 * 声明Hibernate的查询
	 */
	private Query query;
		
	/**
	 * 创建Hibernate的会话工厂类
	 */
	@Autowired
	private SessionFactory sessionFactory;
	
	/**
	 * 实现数据库会话工厂类的get方法
	 * @return
	 */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/**
	 * 实现数据库会话工厂类的set方法
	 * @param sessionFactory
	 */
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * 创建获得Session对象
	 * @return
	 */
	private Session getSession(){
		return this.getSessionFactory().openSession();
	}

	/* 
	 * 增加新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#addNews(org.shlg.news.domain.News)
	 */
	@Override
	public boolean addNews(News news) {
		// TODO Auto-generated method stub
		Session session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			int i = (Integer) session.save(news);
			Hibernate.initialize(news);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if(tx!=null)
			{
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if(session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 通过新闻名查询新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#queryNewsName(java.lang.String)
	 */
	@Override
	public News queryNewsTitle(String newsTitle) {
		// TODO Auto-generated method stub
		News query_newsTitle = new News();
		String query_newsTitle_sql = "from News n where n.newsTitle="+"'"+query_newsTitle+"'";
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			query_newsTitle = (News)session.createQuery(query_newsTitle_sql);
			Hibernate.initialize(query_newsTitle);
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null)
			{
				tx.rollback();
			}
		} finally {
			if(session!=null)
			{
				session.close();
			}
		}
		return query_newsTitle;
	}

	@Override
	public News queryNewsContent(String newsContent) {
		// TODO Auto-generated method stub
		News query_newsContent = new News();
		String query_newsContent_sql = "from News n where n.newsTitle="+"'"+query_newsContent+"'";
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			query_newsContent = (News)session.createQuery(query_newsContent_sql);
			Hibernate.initialize(query_newsContent);
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null)
			{
				tx.rollback();
			}
		} finally {
			if(session!=null)
			{
				session.close();
			}
		}
		return query_newsContent;
	}
	
	/* 
	 * 通过新闻ID来查询新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#queryNewsId(java.lang.String)
	 */
	@Override
	public News queryNewsId(String newsId) {
		// TODO Auto-generated method stub
		Session session = getSession();
		News news = null;
		try {
			tx = session.beginTransaction();
			news = (News)session.get(News.class, newsId);
			Hibernate.initialize(news);
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null)
			{
				tx.rollback();
			}
		} finally {
			if(session!=null){
				session.close();
			}
		}
		return news;
	}
	
	/* 
	 * 通过sql语句查询所有新闻内容
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#queryNewsSql(java.lang.String)
	 */
	@Override
	public List<News> queryNewsSql(String sql) {
		// TODO Auto-generated method stub
		List<News> news = new ArrayList<News>();
		Session session = getSession();
		try {
			tx = session.beginTransaction();
			query = session.createQuery(sql);
			news = query.list(); 
			Hibernate.initialize(news);
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if(tx!=null)
			{
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if(session!=null)
			{
				session.close();
			}
		}
		return news;
	}

	/* 
	 * 实现分页查询
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#queryNewsPage(int, int)
	 */
	@Override
	public List<News> queryForPage(int offset, int length) {
		// TODO Auto-generated method stub
		//查询所有的记录数
		try {
			Session session = getSession();
			tx = session.beginTransaction();
			query = session.createQuery("from News");
			query.setFirstResult(offset);
			query.setMaxResults(length);
			System.err.println("请求的页数:"+query.list());
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null) {
				tx.rollback();
			}
		} /*finally {
			if(session!=null)
			{
				session.close();
			}
		}   */        
		return query.list();
	}
	
	/* 
	 * 实现搜索分页查询
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#searchForPage(java.lang.String, int, int)
	 */
	@Override
	public List<News> searchForPage(String content, int offset, int length) {
		// TODO Auto-generated method stub
		//查询所有的记录数
		try {
			Session session = getSession();
			tx = session.beginTransaction();
			query = session.createQuery("from News where newsContent like'%"+content+"%'");
			query.setFirstResult(offset);
			query.setMaxResults(length);
			System.err.println("请求的页数:"+query.list());
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null) {
				tx.rollback();
			}
		}     
		return query.list();
	}
	
	//查询记录总数
    public int getAllRowCount(){
    	
    	int count = 0;
		try {
			session = getSession();
			tx = session.beginTransaction();
			count = ((Long)session.createSQLQuery("select count(*) from News").iterate().next()).intValue();
			System.err.println("获得总的记录!"+count+"条");
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null) {
				tx.rollback();
			}
		} finally {
			if(session!=null) {
				session.close();
			}
		}
        return count;  
    }
    
    /* 
     * 获得所有搜索记录
     * (non-Javadoc)
     * @see org.shlg.news.dao.INewsDao#getAllSearchRowCount(java.lang.String)
     */
    @Override
    public int getAllSearchRowCount(String content) {
    	// TODO Auto-generated method stub
    	int count = 0;
		try {
			session = getSession();
			tx = session.beginTransaction();
			count = session.createSQLQuery("select count(*) from tb_news where newsContent like '%"+content+"%'").list().size();
			System.err.println("获得搜索总的记录!"+count+"条");
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null) {
				tx.rollback();
			}
		} finally {
			if(session!=null) {
				session.close();
			}
		}
        return count;
    }
	
	/* 
	 * 查询所有新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#queryAllNews()
	 */
	@Override
	public List<News> queryAllNews() {
		// TODO Auto-generated method stub
		List<News> news = new ArrayList<News>();
		Session session = getSession();
		try {
			tx = session.beginTransaction();
			query = session.createQuery("from News");
			news = query.list(); 
			Hibernate.initialize(news);
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if(tx!=null)
			{
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if(session!=null)
			{
				session.close();
			}
		}
		return news;
	}

	/* 
	 * 通过新闻内容删除新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#deleteNewsContent(java.lang.String)
	 */
	@Override
	public boolean deleteNewsContent(String newsContent) {
		// TODO Auto-generated method stub
		List<News> news = (List<News>) queryNewsSql("from News where newsContent="+"'"+newsContent+"'");
		session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.delete(news);
			Hibernate.initialize(news);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null)
			{
				tx.rollback();
			}
		} finally {
			if(session!=null)
			{
				session.close();
			}
		}
		return flag;
		
	}
	
	/* 
	 * 通过新闻标题来删除新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#deleteNewsTitle(java.lang.String)
	 */
	@Override
	public boolean deleteNewsTitle(String newsTitle) {
		// TODO Auto-generated method stub
		List<News> news = (List<News>) queryNewsSql("from News where newsTitle="+"'"+newsTitle+"'");
		session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.delete(news);
			Hibernate.initialize(news);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null)
			{
				tx.rollback();
			}
		} finally {
			if(session!=null)
			{
				session.close();
			}
		}
		return flag;
	}
	

	/* 
	 * 通过新闻id删除新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#deleteNewsId(java.lang.String)
	 */
	@Override
	public boolean deleteNewsId(String newsId) {
		// TODO Auto-generated method stub
		News news = queryNewsId(newsId);
		Session session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.delete(news);
			Hibernate.initialize(news);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if(tx!=null)
			{
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if(session!=null) {
				session.close(); 
			}
		}
		return flag;
	}

	/* 
	 * 修改新闻ID
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.INewsDao#modifyNews(org.shlg.news.domain.News)
	 */
	@Override
	public boolean modifyNews(News news) {
		// TODO Auto-generated method stub
		Session session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.update(news);
			Hibernate.initialize(news);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if (tx!=null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if(session!=null) {
				session.close();
			}
		}
		return flag;
	}

}
