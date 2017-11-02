package org.shlg.news.serviceImpl;

import org.shlg.news.dao.IUerDao;
import org.shlg.news.domain.User;
import org.shlg.news.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-12
 * @introduce 这是用户服务层实现接口
 */

@Service
public class UserServiceImpl implements IUserService {
	
	@Autowired
	private IUerDao userDao;

	/**
	 * 实现用户dao的get方法
	 * @return
	 */
	public IUerDao getUserDao() {
		return userDao;
	}

	/**
	 * 实现用户dao的get
	 * @param userDao
	 */
	public void setUserDao(IUerDao userDao) {
		this.userDao = userDao;
	}

	/* 
	 * 实现用户登录模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#userLogin()
	 */
	@Override
	public void userLogin() {
		// TODO Auto-generated method stub
		
	}

	/* 
	 * 实现用户注册模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#userRegister()
	 */
	@Override
	public void userRegister(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}

	/* 
	 * 实现添加用户模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#addUser()
	 */
	@Override
	public boolean addUser(User user) {
		return userDao.addUser(user);
	}
	
	/* (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#queryUserName(java.lang.String)
	 */
	@Override
	public User queryUserName(String username) {
		// TODO Auto-generated method stub
		return userDao.queryUserName(username);
	}
	
	/* 
	 * 实现通过用户ID的用户
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#queryUserId(java.lang.String)
	 */
	@Override
	public User queryUserId(String userId) {
		// TODO Auto-generated method stub
		return userDao.queryUserId(userId);
	}
	
	/* 
	 * 实现通过sql语句来查询用户
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#queryUserSql(java.lang.String)
	 */
	@Override
	public User queryUserSql(String sql) {
		// TODO Auto-generated method stub
		return userDao.queryUserSql(sql);
	}
	
	@Override
	public boolean deleteUserName(String username) {
		return userDao.deleteUserName(username);
	}
	
	@Override
	public boolean deleteUserId(String userId) {
		return userDao.deleteUserId(userId);
	}

	/* 
	 * 实现更改用户模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#modifyUser()
	 */
	@Override
	public boolean modifyUser(User user) {
		return userDao.modifyUser(user);
	}

	/* 
	 * 实现忘记密码模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#forgetPassword()
	 */
	@Override
	public void forgetPassword(User user) {
		// TODO Auto-generated method stub
		String username = user.getUsername();
		User query_user = userDao.queryUserName(username);
		if(query_user!=null)
		{
			String password = user.getPassword();
			String repassword = user.getPassword();
			if(password.equals(repassword))
			{
				query_user.setPassword(password);
				userDao.modifyUser(query_user);
			}
			else
			{
				System.err.println("两次输入的密码不一致！");
			}
		}
		else
		{
			System.err.println("该用户不存在！");
		}
	}

	/* 
	 * 实现记住密码模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#remeberPassword()
	 */
	@Override
	public void remeberPassword() {
		// TODO Auto-generated method stub
		
	}

	/* 
	 * 实现用户上传文件模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#uploadFile()
	 */
	@Override
	public void uploadFile() {
		// TODO Auto-generated method stub
		
	}

	/* 
	 * 实现用户下载模块
	 * (non-Javadoc)
	 * @see org.shlg.news.service.IUserService#downloadFile()
	 */
	@Override
	public void downloadFile() {
		// TODO Auto-generated method stub
		
	}
	
}
