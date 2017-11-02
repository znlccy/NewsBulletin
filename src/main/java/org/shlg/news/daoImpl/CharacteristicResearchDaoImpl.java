package org.shlg.news.daoImpl;

import java.util.List;

import org.shlg.news.dao.ICharacteristicResearchDao;
import org.shlg.news.domain.CharacteristicResearch;
import org.springframework.stereotype.Repository;


/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是特色研究接口类实现类
 */

@Repository
public class CharacteristicResearchDaoImpl implements ICharacteristicResearchDao {

	/* 
	 * 声明添加特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#addCharacteristicResearch(org.shlg.news.domain.CharacteristicResearch)
	 */
	@Override
	public boolean addCharacteristicResearch(CharacteristicResearch characteristicResearch) {
		// TODO Auto-generated method stub
		return false;
	}

	/* 
	 * 声明查询所有特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#queryAllCharacteristicResearch()
	 */
	@Override
	public List<CharacteristicResearch> queryAllCharacteristicResearch() {
		// TODO Auto-generated method stub
		return null;
	}

	/* 
	 * 声明通过sql语句来查询特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#queryCharacteristicResearchSql(java.lang.String)
	 */
	@Override
	public CharacteristicResearch queryCharacteristicResearchSql(String sql) {
		// TODO Auto-generated method stub
		return null;
	}

	/* 
	 * 声明通过名称来查询特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#queryCharacteristicResearchName(java.lang.String)
	 */
	@Override
	public CharacteristicResearch queryCharacteristicResearchName(String crname) {
		// TODO Auto-generated method stub
		return null;
	}

	/* 
	 * 声明通过id来查询特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#queryCharacteristicResearchId(java.lang.String)
	 */
	@Override
	public CharacteristicResearch queryCharacteristicResearchId(String crid) {
		// TODO Auto-generated method stub
		return null;
	}

	/* 
	 * 声明删除特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#deleteCharacteristicResearch(org.shlg.news.domain.CharacteristicResearch)
	 */
	@Override
	public boolean deleteCharacteristicResearch(
			CharacteristicResearch characteristicResearch) {
		// TODO Auto-generated method stub
		return false;
	}

	/* 
	 * 声明通过id删除特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#deleteCharacteristicResearchSql(java.lang.String)
	 */
	@Override
	public boolean deleteCharacteristicResearchSql(String sql) {
		// TODO Auto-generated method stub
		return false;
	}

	/* 
	 * 声明通过名称删除特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#deleteCharacteristicResearchName(java.lang.String)
	 */
	@Override
	public boolean deleteCharacteristicResearchName(String crname) {
		// TODO Auto-generated method stub
		return false;
	}

	/* 
	 * 声明通过id来删除特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#deleteCharacteristicResearchId(java.lang.String)
	 */
	@Override
	public boolean deleteCharacteristicResearchId(String crid) {
		// TODO Auto-generated method stub
		return false;
	}

	/* 
	 * 声明修改特色研究
	 * (non-Javadoc)
	 * @see org.shlg.news.dao.ICharacteristicResearchDao#modifyCharacteristicResearch(org.shlg.news.domain.CharacteristicResearch)
	 */
	@Override
	public boolean modifyCharacteristicResearch(
			CharacteristicResearch characteristicResearch) {
		// TODO Auto-generated method stub
		return false;
	}

}
