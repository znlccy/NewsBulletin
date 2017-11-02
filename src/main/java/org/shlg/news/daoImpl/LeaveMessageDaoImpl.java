package org.shlg.news.daoImpl;

import org.hibernate.SessionFactory;
import org.shlg.news.dao.ILeavaMessageDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-21
 * @introduce 这是实现留言接口的实现类
 */

@Repository
public class LeaveMessageDaoImpl implements ILeavaMessageDao {
	
	/**
	 * 声明Hibernate的会话工厂类
	 */
	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * 实现Hibernate的会话的get方法
	 * @return
	 */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/**
	 * 实现Hibernate会话的set方法
	 * @param sessionFactory
	 */
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
}
