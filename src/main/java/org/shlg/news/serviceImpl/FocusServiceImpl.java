package org.shlg.news.serviceImpl;

import org.shlg.news.dao.IFocusDao;
import org.shlg.news.service.IFocusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是关注度数的实现服务类
 */

@Service
public class FocusServiceImpl implements IFocusService {

	/**
	 * 声明依赖注入关注度数的Dao层调用
	 */
	@Autowired
	private IFocusDao focusDao;
	
	/**
	 * 声明关注度数dao层的依赖注入get方法
	 * @return
	 */
	public IFocusDao getFocusDao() {
		return focusDao;
	}

	/**
	 * 声明关注度数dao层的依赖注入set方法
	 * @param focusDao
	 */
	public void setFocusDao(IFocusDao focusDao) {
		this.focusDao = focusDao;
	}

	/* 
	 * 增加QQ关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#addQQ()
	 */
	@Override
	public boolean addQQ() {
		// TODO Auto-generated method stub
		return focusDao.addQQ();
	}

	/* 
	 * 增加新浪关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#addXinLang()
	 */
	@Override
	public boolean addXinLang() {
		// TODO Auto-generated method stub
		return focusDao.addXinLang();
	}

	/*
	 * 增加QQ空间关注度数
	 *  (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#addQQZone()
	 */
	@Override
	public boolean addQQZone() {
		// TODO Auto-generated method stub
		return focusDao.addQQZone();
	}

	/* 
	 * 取消QQ关注
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#cancleQQ()
	 */
	@Override
	public boolean cancleQQ() {
		// TODO Auto-generated method stub
		return focusDao.cancleQQ();
	}

	/* 
	 * 取消新浪关注
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#cancleXinLang()
	 */
	@Override
	public boolean cancleXinLang() {
		// TODO Auto-generated method stub
		return focusDao.cancleXinLang();
	}

	/* 
	 * 取消QQ空间关注
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#cancleQQZone()
	 */
	@Override
	public boolean cancleQQZone() {
		// TODO Auto-generated method stub
		return focusDao.cancleQQZone();
	}

	/* 
	 * 查询QQ关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#queryQQ()
	 */
	@Override
	public int queryQQ() {
		// TODO Auto-generated method stub
		return focusDao.queryQQ();
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#queryXinLang()
	 */
	@Override
	public int queryXinLang() {
		// TODO Auto-generated method stub
		return focusDao.queryXinLang();
	}

	/* 
	 * 查询QQ空间关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#queryQQZone()
	 */
	@Override
	public int queryQQZone() {
		// TODO Auto-generated method stub
		return focusDao.queryQQZone();
	}

	/* 
	 * 修改QQ关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#modifyQQ()
	 */
	@Override
	public boolean modifyQQ() {
		// TODO Auto-generated method stub
		return focusDao.modifyQQ();
	}

	/* 
	 * 修改新浪关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#modifyXinLang()
	 */
	@Override
	public boolean modifyXinLang() {
		// TODO Auto-generated method stub
		return focusDao.modifyXinLang();
	}

	/* 
	 * 修改QQ空间关注度数
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IFocusService#modifyQQZone()
	 */
	@Override
	public boolean modifyQQZone() {
		// TODO Auto-generated method stub
		return focusDao.modifyQQZone();
	}

}
