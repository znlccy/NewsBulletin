package org.shlg.news.serviceImpl;

import org.shlg.news.dao.ILeavaMessageDao;
import org.shlg.news.service.ILeaveMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-21
 * @introduce 这是留言服务类的实现类
 */

@Service
public class LeaveMessageServiceImpl implements ILeaveMessageService {

	/**
	 * 依赖注入留言的dao类
	 */
	@Autowired
	private ILeavaMessageDao leavaMessageDao;

	/**
	 * 实现留言dao的get方法
	 * @return
	 */
	public ILeavaMessageDao getLeavaMessageDao() {
		return leavaMessageDao;
	}

	/**
	 * 实现留言dao的set方法
	 * @param leavaMessageDao
	 */
	public void setLeavaMessageDao(ILeavaMessageDao leavaMessageDao) {
		this.leavaMessageDao = leavaMessageDao;
	}
	
	
}
