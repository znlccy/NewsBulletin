package org.shlg.news.daoImpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.shlg.news.dao.IContactUsDao;
import org.shlg.news.domain.ContactUs;
import org.shlg.news.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-21
 * @introduce 这是
 */

@Repository
public class ContactUsDaoImpl implements IContactUsDao {

	/**
	 * 创建Hibernate的会话工厂类
	 */
	@Autowired
	private SessionFactory sessionFactory;
	
	/**
	 * 创建Hibernate的会话类
	 */
	private Session session;
	
	/**
	 * 创建Hibernate的事物管理类
	 */
	private Transaction tx;
	
	/**
	 * 创建Hibernate的查询语句
	 */
	private Query query;
	
	/**
	 * 创建Hibernate的会话工厂类的get方法
	 * @return
	 */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/**
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
	 * 实现添加联系我们的功能
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IContactUsDao#addContactUs(org.shlg.news.domain.ContactUs)
	 */
	@Override
	public boolean addContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		Session session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.save(contactUs);
			Hibernate.initialize(contactUs);
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
	 * 实现通过用户名查询联系我们
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IContactUsDao#queryUserName(java.lang.String)
	 */
	@Override
	public ContactUs queryUserName(String username) {
		// TODO Auto-generated method stub
		ContactUs query_username = new ContactUs();
		String query_username_sql = "from ContactUs cs where cs.username="+"'"+username+"'";
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			query_username = (ContactUs)session.createQuery(query_username_sql);
			Hibernate.initialize(query_username);
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(tx!=null)
			{
				tx.rollback();
			}
			if(session!=null)
			{
				session.close();
			}
		}
		return query_username;
	}

	/* 
	 * 实现通过联系我们ID来查询联系我们
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IContactUsDao#queryContactUsId(java.lang.String)
	 */
	@Override
	public ContactUs queryContactUsId(String contactUsId) {
		// TODO Auto-generated method stub
		ContactUs query_contactUsId = new ContactUs();
		String query_contactUsId_sql = "from ContactUs cs where cs.contactUsId="+"'"+contactUsId+"'";
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			query_contactUsId = (ContactUs)session.createQuery(query_contactUsId_sql);
			Hibernate.initialize(query_contactUsId);
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(tx!=null)
			{
				tx.rollback();
			}
			if(session!=null)
			{
				session.close();
			}
		}
		return query_contactUsId;
	}

	/* 
	 * 实现通过sql语句来查询联系我们
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IContactUsDao#queryContactUsSql(java.lang.String)
	 */
	@Override
	public ContactUs queryContactUsSql(String sql) {
		// TODO Auto-generated method stub
		Session session = getSession();
		ContactUs contactUs = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery(sql);
			contactUs = (ContactUs) query.uniqueResult();
			tx.commit();
			return contactUs;
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
		return contactUs;
	}

	/* 
	 * 查询所有的联系我们
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IContactUsDao#queryAllContactUs()
	 */
	@Override
	public List<ContactUs> queryAllContactUs() {
		// TODO Auto-generated method stub
		List<ContactUs> contactUsList = new ArrayList<ContactUs>();
		try {
			String query_contactUsList_sql = "from ContactUs";
			session = getSession();
			tx = session.beginTransaction();
			contactUsList = session.createQuery(query_contactUsList_sql).list();
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(tx!=null)
			{
				tx.rollback();
			}
			if(session!=null)
			{
				session.close();
			}
		}
		return contactUsList;
	}

	/* 
	 * 实现通过用户名删除联系我们
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IContactUsDao#deleteUserName(java.lang.String)
	 */
	@Override
	public boolean deleteUserName(String username) {
		// TODO Auto-generated method stub
		session = getSession();
		ContactUs contactUs = queryUserName(username);
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.delete(contactUs);
			Hibernate.initialize(contactUs);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if(tx!=null) {
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
	 * 实现通过联系我们ID来删除联系我们
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IContactUsDao#deleteContactUsId(java.lang.String)
	 */
	@Override
	public boolean deleteContactUsId(String contactUsId) {
		// TODO Auto-generated method stub
		session = getSession();
		ContactUs contactUs = queryContactUsId(contactUsId);
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.delete(contactUs);
			Hibernate.initialize(contactUs);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if(tx!=null) {
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
	 * 实现修改联系我们
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IContactUsDao#modifyContactUs(org.shlg.news.domain.ContactUs)
	 */
	@Override
	public boolean modifyContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.update(contactUs);
			Hibernate.initialize(contactUs);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(tx!=null) {
				tx.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return flag;
	}
}
