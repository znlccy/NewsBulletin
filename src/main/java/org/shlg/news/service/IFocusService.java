package org.shlg.news.service;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是关注度数服务的接口类
 */

public interface IFocusService {
	
	/**
	 * 添加QQ关注
	 * @return
	 */
	public boolean addQQ();
	
	/**
	 * 添加新浪关注
	 * @return
	 */
	public boolean addXinLang();
	
	/**
	 * 添加QQzone关注
	 * @return
	 */
	public boolean addQQZone();
	
	/**
	 * 取消QQ关注
	 * @return
	 */
	public boolean cancleQQ();
	
	/**
	 * 取消新浪关注
	 * @return
	 */
	public boolean cancleXinLang();
	
	/**
	 * 取消QQ空间
	 * @return
	 */
	public boolean cancleQQZone();
	
	/**
	 * 获得QQ关注度数
	 * @return
	 */
	public int queryQQ();
	
	/**
	 * 获得新浪关注度数
	 * @return
	 */
	public int queryXinLang();
	
	/**
	 * 获得QQ空间关注度数
	 * @return
	 */
	public int queryQQZone();
	
	/**
	 * 修改QQ关注度数
	 * @return
	 */
	public boolean modifyQQ();
	
	/**
	 * 修改新浪关注度数
	 * @return
	 */
	public boolean modifyXinLang();
	
	/**
	 * 修改QQZone关注度数
	 * @return
	 */
	public boolean modifyQQZone();
}
