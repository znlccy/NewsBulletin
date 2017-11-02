package org.shlg.news.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.shlg.news.dao.IUerDao;
import org.shlg.news.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-13
 * @introduce This is 
 */

@Repository
public class UserDaoImpl implements IUerDao {

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
	 * 添加用户
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IUserDao#addUser(org.shlg.news.domain.User)
	 */
	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		Session session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.save(user);
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
		return false;
	}

	/* 
	 * 通过用户名来查询用户
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IUserDao#queryUserName(java.lang.String)
	 */
	@Override
	public User queryUserName(String username) {
		// TODO Auto-generated method stub
		User query_username = new User();
		String query_username_sql = "from User u where u.username="+"'"+username+"'";
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			query_username = (User)session.createQuery(query_username_sql);
			Hibernate.initialize(query_username);
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
		return query_username;
	}
	
	/* 
	 * 通过userId来查询用户
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IUserDao#queryUserId(java.lang.String)
	 */
	@Override
	public User queryUserId(String userId) {
		// TODO Auto-generated method stub
		User query_userId = new User();
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			query_userId = (User)session.load(User.class, userId);
			Hibernate.initialize(query_userId);
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
		
		return query_userId;
	}

	/* 
	 * 通过查询语句来查询用户信息
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IUserDao#queryUserSql(java.lang.String)
	 */
	@Override
	public User queryUserSql(String sql) {
		// TODO Auto-generated method stub
		Session session = getSession();
		User user = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery(sql);
			/*List<User> list = new ArrayList<User>();
			list = query.list();
			if(list!=null && list.size()>0){
				user = (User)list.get(0);
			}
			else
			{
				System.err.println("数组越界,用户输入的内容有空值！！！");
			}*/
			user = (User) query.uniqueResult();
			tx.commit();
			/*return user;*/
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
		return user;
	}
	
	/* 
	 * 定义查询所有用户
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IUserDao#queryAllUser()
	 */
	@Override
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		List<User> userList = new ArrayList<User>();
		try {
			String query_userList_sql = "from User";
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			userList = session.createQuery(query_userList_sql).list();
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
		return userList;
	}
	
	/* 
	 * 通过用户名来删除用户
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IUserDao#deleteUserName(java.lang.String)
	 */
	@Override
	public boolean deleteUserName(String username) {
		// TODO Auto-generated method stub
		session = getSession();
		boolean flag = false;
		try {
			
			tx = session.beginTransaction();
			User user = this.queryUserName(username);
			Hibernate.initialize(user);
			session.delete(user);
			flag = true;
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
		return flag;
	}
	
	/* 
	 * 通过用户id来删除用户
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IUserDao#deleteUserId(java.lang.String)
	 */
	@Override
	public boolean deleteUserId(String userId) {
		// TODO Auto-generated method stub
		session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			User user = this.queryUserId(userId);
			Hibernate.initialize(user);
			session.delete(user);
			flag = true;
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) 
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
	 * 更改用户信息
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IUserDao#modifyUser()
	 */
	@Override
	public boolean modifyUser(User user) {
		// TODO Auto-generated method stub
		String username = user.getUsername();
		boolean flag = false;
		try {
			session.update(user);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) 
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
	
}
