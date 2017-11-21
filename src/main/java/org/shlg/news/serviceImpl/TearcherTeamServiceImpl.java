package org.shlg.news.serviceImpl;

import java.util.List;

import org.shlg.news.dao.ITearcherTeamDao;
import org.shlg.news.domain.TearcherTeam;
import org.shlg.news.service.ITearcherTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 *
 */
@Service
public class TearcherTeamServiceImpl implements ITearcherTeamService {

	@Autowired
	private ITearcherTeamDao tearcherTeamDao;
	
	/**
	 * 实现教师dao层的set和get方法依赖注入
	 * @return
	 */
	public ITearcherTeamDao getTearcherTeamDao() {
		return tearcherTeamDao;
	}

	/**
	 * 实现教师dao层的set和get方法依赖注入
	 * @param tearcherTeamDao
	 */
	public void setTearcherTeamDao(ITearcherTeamDao tearcherTeamDao) {
		this.tearcherTeamDao = tearcherTeamDao;
	}

	/* 
	 * 实现教师添加的模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.ITearcherTeamService#addTearcherTeam(org.shlg.news.domain.TearcherTeam)
	 */
	@Override
	public boolean addTearcherTeam(TearcherTeam tearcherTeam) {
		// TODO Auto-generated method stub
		return tearcherTeamDao.addTearcherTeam(tearcherTeam);
	}

	/* 
	 * 实现通过教师名来查询教师
	 * (non-Javadoc)
	 * @see org.shlg.news.service.ITearcherTeamService#queryTearcherName(java.lang.String)
	 */
	@Override
	public TearcherTeam queryTearcherName(String tearcherName) {
		// TODO Auto-generated method stub
		return tearcherTeamDao.queryTearcherName(tearcherName);
	}

	/* 
	 * 实现通过教师Id来查询教师
	 * (non-Javadoc)
	 * @see org.shlg.news.service.ITearcherTeamService#queryTearcherTeamId(java.lang.String)
	 */
	@Override
	public TearcherTeam queryTearcherTeamId(String tearcherTeamId) {
		// TODO Auto-generated method stub
		return tearcherTeamDao.queryTearcherTeamId(tearcherTeamId);
	}

	/* 
	 * 实现通过sql语句来查询教师
	 * (non-Javadoc)
	 * @see org.shlg.news.service.ITearcherTeamService#queryTearcherTeamSql(java.lang.String)
	 */
	@Override
	public TearcherTeam queryTearcherTeamSql(String sql) {
		// TODO Auto-generated method stub
		return tearcherTeamDao.queryTearcherTeamSql(sql);
	}

	/* 
	 * 实现查询所有教师
	 * (non-Javadoc)
	 * @see org.shlg.news.service.ITearcherTeamService#queryAllTearcherTeam()
	 */
	@Override
	public List<TearcherTeam> queryAllTearcherTeam() {
		// TODO Auto-generated method stub
		return tearcherTeamDao.queryAllTearcherTeam();
	}

	/* 
	 * 实现通过教师名来删除教师
	 * (non-Javadoc)
	 * @see org.shlg.news.service.ITearcherTeamService#deleteTearcherName(java.lang.String)
	 */
	@Override
	public boolean deleteTearcherName(TearcherTeam tearcherTeam) {
		// TODO Auto-generated method stub
		return tearcherTeamDao.deleteTearcherName(tearcherTeam);
	}

	/* 
	 * 实现通过教师ID来删除教师
	 * (non-Javadoc)
	 * @see org.shlg.news.service.ITearcherTeamService#deleteTearcherTeamId(java.lang.String)
	 */
	@Override
	public boolean deleteTearcherTeamId(String tearcherTeamId) {
		// TODO Auto-generated method stub
		return tearcherTeamDao.deleteTearcherTeamId(tearcherTeamId);
	}

	/* 
	 * 实现修改教师信息
	 * (non-Javadoc)
	 * @see org.shlg.news.service.ITearcherTeamService#modifyTearcherTeam(org.shlg.news.domain.TearcherTeam)
	 */
	@Override
	public boolean modifyTearcherTeam(TearcherTeam tearcherTeam) {
		// TODO Auto-generated method stub
		return tearcherTeamDao.modifyTearcherTeam(tearcherTeam);
	}

}
