package org.shlg.news.daoImpl;

import java.util.List;

import org.shlg.news.dao.IEcommerceDevelopDatabaseDao;
import org.shlg.news.domain.EcommerceDevelopDatabase;
import org.springframework.stereotype.Repository;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是电子商务发展数据库Dao层的接口的实现类
 */

@Repository
public class EcommerceDevelopDatabaseDaoImpl implements IEcommerceDevelopDatabaseDao {

	/* 
	 * 声明添加电子商务发展数据库
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IEcommerceDevelopDatabaseDao#addEcommerceDevelopDatabase(org.shlg.news.domain.EcommerceDevelopDatabase)
	 */
	@Override
	public boolean addEcommerceDevelopDatabase(
			EcommerceDevelopDatabase ecommerceDevelopDatabase) {
		// TODO Auto-generated method stub
		return false;
	}

	/* 
	 * 查询所有电子商务发展数据库
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.IEcommerceDevelopDatabaseDao#queryAllEcommerceDevelopDatabase()
	 */
	@Override
	public List<EcommerceDevelopDatabase> queryAllEcommerceDevelopDatabase() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseSql(String sql) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseName(
			String eddname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EcommerceDevelopDatabase queryEcommerceDevelopDatabaseId(String eddid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteEcommerceDevelopDatabase(
			EcommerceDevelopDatabase ecommerceDevelopDatabase) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteEcommerceDevelopDatabaseSql(String sql) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteEcommerceDevelopDatabaseName(String eddname) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteEcommerceDevelopDatabaseId(String eddid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modifyEcommerceDevelopDatabase(
			EcommerceDevelopDatabase ecommerceDevelopDatabase) {
		// TODO Auto-generated method stub
		return false;
	}

}
