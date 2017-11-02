package org.shlg.news.service;

import java.util.List;

import org.shlg.news.domain.ContactUs;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-21
 * @introduce 这是联系我们服务层接口
 */
public interface IContactUsService {
	
	/**
	 * 定义用户注册模块
	 */
	public boolean addContactUs(ContactUs contactUs);
	
	/**
	 * 定义通过用户名查询用户模块
	 */
	public ContactUs queryUserName(String username);
	
	/**
	 * 定义通过用户Id查询用户模块
	 */
	public ContactUs queryContactUsId(String contactUsId);
	
	/**
	 * 通过查询语句来查询
	 * @param sql
	 * @return
	 */
	public ContactUs queryContactUsSql(String sql);
	
	/**
	 * 定义查询所有用户
	 * @return
	 */
	public List<ContactUs> queryAllContactUs();
	
	/**
	 * 定义通过用户名删除用户模块
	 */
	public boolean deleteUserName(String username);
	
	/**
	 * 定义通过用户Id删除用户模块
	 */
	public boolean deleteContactUsId(String contactUsId);
	
	/**
	 * 定义修改用户信息模块
	 */
	public boolean modifyContactUs(ContactUs contactUs);
}
