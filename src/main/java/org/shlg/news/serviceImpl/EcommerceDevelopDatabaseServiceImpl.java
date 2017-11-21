package org.shlg.news.serviceImpl;

import java.util.List;

import org.shlg.news.dao.IEcommerceDevelopDatabaseDao;
import org.shlg.news.domain.EcommerceDevelopDatabase;
import org.shlg.news.service.IEcommerceDevelopDatabaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是电子商务发展数据库服务类的实现类
 */

@Service
public class EcommerceDevelopDatabaseServiceImpl implements IEcommerceDevelopDatabaseService {

	/**
	 * 实现电子商务发展数据库的Dao层的引用
	 */
	@Autowired
	private IEcommerceDevelopDatabaseDao ecommerceDevelopDatabaseDao;

	/**
	 * 实现电子商务发展数据库的get方法
	 * @return
	 */
	public IEcommerceDevelopDatabaseDao getEcommerceDevelopDatabaseDao() {
		return ecommerceDevelopDatabaseDao;
	}

	/**
	 * 实现电子商务发展数据库的set方法
	 * @param ecommerceDevelopDatabaseDao
	 */
	public void setEcommerceDevelopDatabaseDao(
			IEcommerceDevelopDatabaseDao ecommerceDevelopDatabaseDao) {
		this.ecommerceDevelopDatabaseDao = ecommerceDevelopDatabaseDao;
	}

	/* 
	 * 实现电子商务发展数据库的添加方法
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#addEcommerceDevelopDatabase(org.shlg.news.domain.EcommerceDevelopDatabase)
	 */
	@Override
	public boolean addEcommerceDevelopDatabase(
			EcommerceDevelopDatabase ecommerceDevelopDatabase) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.addEcommerceDevelopDatabase(ecommerceDevelopDatabase);
	}

	/* 
	 * 实现电子商务发展数据库的查询所有的方法
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#queryAllEcommerceDevelopDatabase()
	 */
	@Override
	public List<EcommerceDevelopDatabase> queryAllEcommerceDevelopDatabase() {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.queryAllEcommerceDevelopDatabase();
	}

	/* 
	 * 实现电子商务发展数据库的通过sql语句来查询
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#queryEcommerceDevelopDatabaseSql(java.lang.String)
	 */
	@Override
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseSql(String sql) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.queryEcommerceDevelopDatabaseSql(sql);
	}

	/* 
	 * 实现通过电子商务发展数据库名称来查询
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#queryEcommerceDevelopDatabaseName(java.lang.String)
	 */
	@Override
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseName(
			String eddname) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.queryEcommerceDevelopDatabaseName(eddname);
	}

	/* 
	 * 实现通过电子商务发展数据库id来查询
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#queryEcommerceDevelopDatabaseId(java.lang.String)
	 */
	@Override
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseId(String eddid) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.queryEcommerceDevelopDatabaseId(eddid);
	}

	/* 
	 * 实现删除电子商务发展数据库
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#deleteEcommerceDevelopDatabase(org.shlg.news.domain.EcommerceDevelopDatabase)
	 */
	@Override
	public boolean deleteEcommerceDevelopDatabase(
			EcommerceDevelopDatabase ecommerceDevelopDatabase) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.deleteEcommerceDevelopDatabase(ecommerceDevelopDatabase);
	}

	/* 
	 * 实现通过sql语句来删除电子商务发展数据库
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#deleteEcommerceDevelopDatabaseSql(java.lang.String)
	 */
	@Override
	public boolean deleteEcommerceDevelopDatabaseSql(String sql) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.deleteEcommerceDevelopDatabaseSql(sql);
	}

	/* 
	 * 实现通过电子商务发展数据库名称来删除
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#deleteEcommerceDevelopDatabaseName(java.lang.String)
	 */
	@Override
	public boolean deleteEcommerceDevelopDatabaseName(String eddname) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.deleteEcommerceDevelopDatabaseName(eddname);
	}

	/* 
	 * 实现通过电子商务发展数据库的id来删除
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IEcommerceDevelopDatabaseService#deleteEcommerceDevelopDatabaseId(java.lang.String)
	 */
	@Override
	public boolean deleteEcommerceDevelopDatabaseId(String eddid) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.deleteEcommerceDevelopDatabaseId(eddid);
	}

	/* 
	 * 实现修改电子商务发展数据库
	 * (non-Javadoc)
	 * @see org.shlg.new0s.service.IEcommerceDevelopDatabaseService#modifyEcommerceDevelopDatabase(org.shlg.news.domain.EcommerceDevelopDatabase)
	 */
	@Override
	public boolean modifyEcommerceDevelopDatabase(
			EcommerceDevelopDatabase ecommerceDevelopDatabase) {
		// TODO Auto-generated method stub
		return ecommerceDevelopDatabaseDao.modifyEcommerceDevelopDatabase(ecommerceDevelopDatabase);
	}
	
}
