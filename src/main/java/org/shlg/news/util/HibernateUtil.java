package org.shlg.news.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/*
* @author Chencongye
* @version 0.0.1
* @introduce 这是Hibernate帮助工具类
*/
@SuppressWarnings("deprecation")
public class HibernateUtil {

	//创建会话工厂
    private static SessionFactory sessionfact = null;

    //创建一个静态类，用来加载hibernate.cfg.xml文件
    static{
         Configuration cfg = new Configuration().configure();
         sessionfact = cfg.buildSessionFactory();
    }

    //设置SessionFactory的get方法
    public static SessionFactory getSessionfactory() {
        return sessionfact;
    }
    
    //设置得到Session的方法
    public static Session getSession() {
		// TODO Auto-generated method stub
    	return sessionfact.openSession();
	}
}
