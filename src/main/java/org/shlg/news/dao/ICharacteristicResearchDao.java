package org.shlg.news.dao;

import java.util.List;

import org.shlg.news.domain.CharacteristicResearch;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是特色研究接口类
 */

public interface ICharacteristicResearchDao {

	 /**
	  * 声明添加特色研究方法
	 * @return
	 */
	public boolean addCharacteristicResearch(CharacteristicResearch characteristicResearch);

	 /**
	  * 声明查询特色研究方法
	 * @return
	 */
	public List<CharacteristicResearch> queryAllCharacteristicResearch();
	
	/**
	 * 声明通过sql语句查询特色研究方法
	 * @return
	 */
	public CharacteristicResearch queryCharacteristicResearchSql(String sql);
	
	/**
	 * 声明通过名称来查询特色研究方法
	 * @return
	 */
	public CharacteristicResearch queryCharacteristicResearchName(String crname);
	
	/**
	 * 声明通过id查询特色研究方法
	 * @return
	 */
	public CharacteristicResearch queryCharacteristicResearchId(String crid);

	 /**
	  * 声明删除特色研究的方法
	 * @return
	 */
	public boolean deleteCharacteristicResearch(CharacteristicResearch characteristicResearch);
	
	/**
	 * 声明通过sql语句来删除特色研究
	 * @param sql
	 * @return
	 */
	public boolean deleteCharacteristicResearchSql(String sql);
	
	/**
	 * 声明通过名称删除特色研究 
	 * @param crname
	 * @return
	 */
	public boolean deleteCharacteristicResearchName(String crname);
	
	/**
	 * 声明通过id来删除特色研究
	 * @param crid
	 * @return
	 */
	public boolean deleteCharacteristicResearchId(String crid);
	
	/**
	 * 声明修改特色研究的方法
	 * @return
	 */
	public boolean modifyCharacteristicResearch(CharacteristicResearch characteristicResearch);
	
}
