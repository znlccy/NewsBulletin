package org.shlg.news.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.shlg.news.dao.IContactUsDao;
import org.shlg.news.domain.ContactUs;
import org.shlg.news.service.IContactUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-21
 * @introduce 这是联系我们的服务层实现类
 */

@Service
public class ContactUsServiceImpl implements IContactUsService {

	@Autowired
	private IContactUsDao contactUsDao;
	
	/**
	 * @return
	 */
	public IContactUsDao getContactUsDao() {
		return contactUsDao;
	}

	/**
	 * @param contactUsDao
	 */
	public void setContactUsDao(IContactUsDao contactUsDao) {
		this.contactUsDao = contactUsDao;
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IContactUsService#addContactUs(org.shlg.news.domain.ContactUs)
	 */
	@Override
	public boolean addContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		return contactUsDao.addContactUs(contactUs);
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IContactUsService#queryUserName(java.lang.String)
	 */
	@Override
	public ContactUs queryUserName(String username) {
		// TODO Auto-generated method stub
		return contactUsDao.queryUserName(username);
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IContactUsService#queryContactUsId(java.lang.String)
	 */
	@Override
	public ContactUs queryContactUsId(String contactUsId) {
		// TODO Auto-generated method stub
		return contactUsDao.queryContactUsId(contactUsId);
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IContactUsService#queryContactUsSql(java.lang.String)
	 */
	@Override
	public ContactUs queryContactUsSql(String sql) {
		// TODO Auto-generated method stub
		return contactUsDao.queryContactUsSql(sql);
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IContactUsService#queryAllContactUs()
	 */
	@Override
	public List<ContactUs> queryAllContactUs() {
		// TODO Auto-generated method stub
		return contactUsDao.queryAllContactUs();
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IContactUsService#deleteUserName(java.lang.String)
	 */
	@Override
	public boolean deleteUserName(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IContactUsService#deleteContactUsId(java.lang.String)
	 */
	@Override
	public boolean deleteContactUsId(String contactUsId) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see org.shlg.news.service.IContactUsService#modifyContactUs(org.shlg.news.domain.ContactUs)
	 */
	@Override
	public boolean modifyContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
