package org.shlg.news.dao;

import java.util.List;

import org.shlg.news.domain.CharacteristicResearch;
import org.shlg.news.domain.EcommerceDevelopDatabase;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是电子商务发展数据库Dao层接口类
 */

public interface IEcommerceDevelopDatabaseDao {
	
	/**
	  * 声明添加电子商务发展数据库方法
	 * @return
	 */
	public boolean addEcommerceDevelopDatabase(EcommerceDevelopDatabase ecommerceDevelopDatabase);

	 /**
	  * 声明查询电子商务发展数据库方法
	 * @return
	 */
	public List<EcommerceDevelopDatabase> queryAllEcommerceDevelopDatabase();
	
	/**
	 * 声明通过sql语句查询电子商务发展数据库方法
	 * @return
	 */
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseSql(String sql);
	
	/**
	 * 声明通过名称来查询电子商务发展数据库方法
	 * @return
	 */
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseName(String eddname);
	
	/**
	 * 声明通过id查询电子商务发展数据库方法
	 * @return
	 */
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseId(String eddid);

	 /**
	  * 声明删除电子商务发展数据库的方法
	 * @return
	 */
	public boolean deleteEcommerceDevelopDatabase(EcommerceDevelopDatabase ecommerceDevelopDatabase);
	
	/**
	 * 声明通过sql语句来删除电子商务发展数据库
	 * @param sql
	 * @return
	 */
	public boolean deleteEcommerceDevelopDatabaseSql(String sql);
	
	/**
	 * 声明通过名称删除电子商务发展数据库 
	 * @param crname
	 * @return
	 */
	public boolean deleteEcommerceDevelopDatabaseName(String eddname);
	
	/**
	 * 声明通过id来删除电子商务发展数据库
	 * @param crid
	 * @return
	 */
	public boolean deleteEcommerceDevelopDatabaseId(String eddid);
	
	/**
	 * 声明修改电子商务发展数据库的方法
	 * @return
	 */
	public boolean modifyEcommerceDevelopDatabase(EcommerceDevelopDatabase ecommerceDevelopDatabase);
	
}
