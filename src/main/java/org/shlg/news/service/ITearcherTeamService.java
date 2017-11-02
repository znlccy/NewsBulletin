package org.shlg.news.service;

import java.util.List;

import org.shlg.news.domain.TearcherTeam;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-23
 * @introduce 这是关于老师服务的页面
 */

public interface ITearcherTeamService {
	
	/**
	 * 定义教师添加的模块
	 */
	public boolean addTearcherTeam(TearcherTeam tearcherTeam);
	
	/**
	 * 定义通过教师名查询教师模块
	 */
	public TearcherTeam queryTearcherName(String tearcherName);
	
	/**
	 * 定义通过教师Id查询教师模块
	 */
	public TearcherTeam queryTearcherTeamId(String tearcherTeamId);
	
	/**
	 * 通过查询语句来查询教师
	 * @param sql
	 * @return
	 */
	public TearcherTeam queryTearcherTeamSql(String sql);
	
	/**
	 * 定义查询所有教师
	 * @return
	 */
	public List<TearcherTeam> queryAllTearcherTeam();
	
	/**
	 * 定义通过教师名删除教师模块
	 */
	public boolean deleteTearcherName(String tearcherName);
	
	/**
	 * 定义通过教师Id删除教师模块
	 */
	public boolean deleteTearcherTeamId(String tearcherTeamId);
	
	/**
	 * 定义修改用户信息模块
	 */
	public boolean modifyTearcherTeam(TearcherTeam tearcherTeam);
}
