package org.shlg.news.daoImpl;

import static org.junit.Assert.*;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.shlg.news.domain.User;
import org.shlg.news.service.IUserService;
import org.shlg.news.util.HibernateUtil;
import org.springframework.beans.factory.annotation.Autowired;

public class UserDaoImplTest {

	
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
	
	@Test
	public void test() {
		SessionFactory sessionFactory = null;
		Session session = null;
		Transaction ts = null;
		try {
			sessionFactory = HibernateUtil.getSessionfactory();
			session = sessionFactory.openSession();
			
			/*Hibernate.initialize("courseInfo");*/
			ts = session.beginTransaction();
			
			User sc = new User();
			
			sc.setUsername("chencongye");
			sc.setPassword("12345678");
			
			session.save(sc);
			
			ts.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			if (session!=null) {
				session.close();
			}
			if (ts!=null) {
				ts.rollback();
			}
			e.printStackTrace();
		}
	}
	
	}
