package org.shlg.news.service;

import org.shlg.news.domain.User;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-12
 * @introduce 这是用户服务层接口
 */

public interface IUserService {
	
	/**
	 * 定义用户登录模块
	 */
	public void userLogin();
	
	/**
	 * 定义用户注册模块
	 */
	public void userRegister(User user);
	
	/**
	 * 定义用户注册模块
	 */
	public boolean addUser(User user);
	
	/**
	 * 定义通过用户名查询用户模块
	 */
	public User queryUserName(String username);
	
	/**
	 * 定义通过用户Id查询用户模块
	 */
	public User queryUserId(String userId);
	
	/**
	 * 定义通过用户名删除用户模块
	 * @param username
	 */
	public boolean deleteUserName(String username);
	
	/**
	 * 定义通过用户Id删除用户模块
	 * @param userId
	 */
	public boolean deleteUserId(String userId);
	
	/**
	 * 通过查询语句来查询
	 * @param sql
	 * @return
	 */
	public User queryUserSql(String sql);
	
	/**
	 * 定义修改用户信息模块
	 */
	public boolean modifyUser(User user);
	
	/**
	 * 定义忘记密码模块
	 */
	public void forgetPassword(User user);
	
	/**
	 * 定义记住密码模块
	 */
	public void remeberPassword();
	
	/**
	 * 定义上传文件模块
	 */
	public void uploadFile();
	
	/**
	 * 定义下载文件模块
	 */
	public void downloadFile();
}
