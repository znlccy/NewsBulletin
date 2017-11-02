package org.shlg.news.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.shlg.news.dao.IFocusDao;
import org.shlg.news.domain.Focus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是关注度数的实现类
 */

@Repository
public class FocusDaoImpl implements IFocusDao {

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
	 * 添加QQ关注
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#addQQ()
	 */
	@Override
	public boolean addQQ() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone());
			focus.setXinLang(focus.getXinLang());
			focus.setQQ(focus.getQQ()+1);
			session.save(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 添加新浪关注
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#addXinLang()
	 */
	@Override
	public boolean addXinLang() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone());
			focus.setXinLang(focus.getXinLang()+1);
			focus.setQQ(focus.getQQ());
			session.save(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 添加QQ空间关注
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#addQQZone()
	 */
	@Override
	public boolean addQQZone() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone()+1);
			focus.setXinLang(focus.getXinLang());
			focus.setQQ(focus.getQQ());
			session.save(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 取消QQ关注
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#cancleQQ()
	 */
	@Override
	public boolean cancleQQ() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone());
			focus.setXinLang(focus.getXinLang());
			focus.setQQ(focus.getQQ()-1);
			session.update(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 取消新浪关注
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#cancleXinLang()
	 */
	@Override
	public boolean cancleXinLang() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone());
			focus.setXinLang(focus.getXinLang()-1);
			focus.setQQ(focus.getQQ());
			session.update(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 取消QQ空间关注
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#cancleQQZone()
	 */
	@Override
	public boolean cancleQQZone() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone()-1);
			focus.setXinLang(focus.getXinLang());
			focus.setQQ(focus.getQQ());
			session.update(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 获得QQ关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#queryQQ()
	 */
	@Override
	public int queryQQ() {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus = (Focus) session.createQuery("from Focus").uniqueResult();
			result = focus.getQQ();
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return result;
	}

	/* 
	 * 获得新浪关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#queryXinLang()
	 */
	@Override
	public int queryXinLang() {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus = (Focus) session.createQuery("from Focus").uniqueResult();
			result = focus.getXinLang();
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return result;
	}

	/* 
	 * 获得QQ空间关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#queryQQZone()
	 */
	@Override
	public int queryQQZone() {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus = (Focus) session.createQuery("from Focus").uniqueResult();
			result = focus.getQQZone();
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return result;
	}

	/* 
	 * 修改QQ关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#modifyQQ()
	 */
	@Override
	public boolean modifyQQ() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone());
			focus.setXinLang(focus.getXinLang());
			focus.setQQ(focus.getQQ());
			session.update(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 修改新浪关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#modifyXinLang()
	 */
	@Override
	public boolean modifyXinLang() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone());
			focus.setXinLang(focus.getXinLang());
			focus.setQQ(focus.getQQ());
			session.update(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}

	/* 
	 * 修改QQ空间关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IFocusDao#modifyQQZone()
	 */
	@Override
	public boolean modifyQQZone() {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Focus focus = new Focus();
			focus.setQQZone(focus.getQQZone());
			focus.setXinLang(focus.getXinLang());
			focus.setQQ(focus.getQQ());
			session.update(focus);
			flag = true;
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (tx!=null) {
				tx.rollback();
			}
		} finally {
			if (session!=null) {
				session.close();
			}
		}
		return flag;
	}
	
}
