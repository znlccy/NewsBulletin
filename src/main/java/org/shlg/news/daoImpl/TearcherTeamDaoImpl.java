package org.shlg.news.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.shlg.news.dao.ITearcherTeamDao;
import org.shlg.news.domain.ContactUs;
import org.shlg.news.domain.TearcherTeam;
import org.shlg.news.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-23
 * @introduce 这是师资团队的实现类
 */

@Repository
public class TearcherTeamDaoImpl implements ITearcherTeamDao {

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
	 * 实现添加教师
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ITearcherTeam#addTearcherTeam(org.shlg.news.domain.TearcherTeam)
	 */
	@Override
	public boolean addTearcherTeam(TearcherTeam tearcherTeam) {
		// TODO Auto-generated method stub
		Session session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			session.save(tearcherTeam);
			Hibernate.initialize(tearcherTeam);
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
	 * 实现通过教师名来查询教师
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ITearcherTeam#queryTearcherName(java.lang.String)
	 */
	@Override
	public TearcherTeam queryTearcherName(String tearcherName) {
		// TODO Auto-generated method stub
		TearcherTeam query_tearcherName = new TearcherTeam();
		String query_tearcherName_sql = "from TearcherTeam tt where tt.tearcherName="+"'"+tearcherName+"'";
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			query_tearcherName = (TearcherTeam)session.createQuery(query_tearcherName_sql).uniqueResult();
			Hibernate.initialize(query_tearcherName);
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
		return query_tearcherName;
	}

	/* 
	 * 实现通过教师id来查询教师
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ITearcherTeam#queryTearcherTeamId(java.lang.String)
	 */
	@Override
	public TearcherTeam queryTearcherTeamId(String tearcherTeamId) {
		// TODO Auto-generated method stub
		TearcherTeam query_tearcherTeamId = new TearcherTeam();
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			query_tearcherTeamId = (TearcherTeam)session.load(TearcherTeam.class, tearcherTeamId);
			Hibernate.initialize(query_tearcherTeamId);
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
		
		return query_tearcherTeamId;
	}

	/* 
	 * 实现通过sql语句来查询教师
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ITearcherTeam#queryTearcherTeamSql(java.lang.String)
	 */
	@Override
	public TearcherTeam queryTearcherTeamSql(String sql) {
		// TODO Auto-generated method stub
		Session session = getSession();
		TearcherTeam tearcherTeam = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery(sql);
			tearcherTeam = (TearcherTeam) query.uniqueResult();
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
		return tearcherTeam;
	}

	/* 
	 * 实现查询所有老师
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ITearcherTeam#queryAllTearcherTeam()
	 */
	@Override
	public List<TearcherTeam> queryAllTearcherTeam() {
		// TODO Auto-generated method stub
		List<TearcherTeam> tearcherTeamList = new ArrayList<TearcherTeam>();
		try {
			String query_tearcherTeamList_sql = "from TearcherTeam";
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			tearcherTeamList = session.createQuery(query_tearcherTeamList_sql).list();
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
		return tearcherTeamList;
	}

	/* 
	 * 实现通过教师名删除教师
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ITearcherTeam#deleteTearcherName(java.lang.String)
	 */
	@Override
	public boolean deleteTearcherName(String tearcherName) {
		// TODO Auto-generated method stub
		session = getSession();
		boolean flag = false;
		try {
			
			tx = session.beginTransaction();
			TearcherTeam tearcherTeam = this.queryTearcherName(tearcherName);
			Hibernate.initialize(tearcherTeam);
			session.delete(tearcherTeam);
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
	 * 实现通过教师Id来删除教师
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ITearcherTeam#deleteTearcherTeamId(java.lang.String)
	 */
	@Override
	public boolean deleteTearcherTeamId(String tearcherTeamId) {
		// TODO Auto-generated method stub
		session = getSession();
		boolean flag = false;
		try {
			tx = session.beginTransaction();
			TearcherTeam tearcherTeam = this.queryTearcherTeamId(tearcherTeamId);
			Hibernate.initialize(tearcherTeam);
			session.delete(tearcherTeam);
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
	 * 实现修改教师
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ITearcherTeam#modifyTearcherTeam(org.shlg.news.domain.TearcherTeam)
	 */
	@Override
	public boolean modifyTearcherTeam(TearcherTeam tearcherTeam) {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session.update(tearcherTeam);
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
