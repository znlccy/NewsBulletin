package org.shlg.news.serviceImpl;

import java.util.List;

import org.shlg.news.dao.INewsDao;
import org.shlg.news.daoImpl.NewsDaoImpl;
import org.shlg.news.domain.News;
import org.shlg.news.service.INewsService;
import org.shlg.news.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-12
 * @introduce 这是新闻服务层实现接口
 */

@Service
public class NewsServiceImpl implements INewsService {

	/**
	 * 声明新闻dao层的依赖注入
	 */
	@Autowired
	private INewsDao newsDao;
	
	/**
	 * 声明新闻dao层的get方法
	 * @return
	 */
	public INewsDao getNewsDao() {
		return newsDao;
	}

	/**
	 * 声明新闻dao层的set方法
	 * @param newsDao
	 */
	public void setNewsDao(INewsDao newsDao) {
		this.newsDao = newsDao;
	}

	/* 
	 * 添加新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#addNews(org.shlg.news.domain.News)
	 */
	@Override
	public boolean addNews(News news) {
		// TODO Auto-generated method stub
		return newsDao.addNews(news);
	}

	/* 
	 * 通过新闻标题查询新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#queryNewsTitle(java.lang.String)
	 */
	@Override
	public News queryNewsTitle(String newsTitle) {
		// TODO Auto-generated method stub
		return newsDao.queryNewsTitle(newsTitle);
	}

	/* 
	 * 通过新闻内容查询新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#queryNewsContent(java.lang.String)
	 */
	@Override
	public News queryNewsContent(String newsContent) {
		// TODO Auto-generated method stub
		return newsDao.queryNewsContent(newsContent);
	}

	/* 
	 * 通过新闻ID来查询新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#queryNewsId(java.lang.String)
	 */
	@Override
	public News queryNewsId(String newsId) {
		// TODO Auto-generated method stub
		return newsDao.queryNewsId(newsId);
	}

	/* 
	 * 通过sql语句查询新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#queryNewsSql(java.lang.String)
	 */
	@Override
	public List<News> queryNewsSql(String sql) {
		// TODO Auto-generated method stub
		return newsDao.queryNewsSql(sql);
	}
	
	/* 
	 * 查询新闻分页
	 * (non-Javadoc)
	 * 
         * 分页查询 
         * @param currentPage 当前页号：现在显示的页数
         * @param pageSize 每页显示的记录条数
         * @return 封闭了分页信息(包括记录集list)的Bean
         * 
	 * @see org.shlg.news.service.INewsService#queryNewsPage(int, int)
	 */
	@Override
	public Page queryForPage(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Page page = new Page();       
        //总记录数
        int allRow = newsDao.getAllRowCount();
        //当前页开始记录
        int offset = page.countOffset(currentPage,pageSize);  
        //分页查询结果集
        List<News> list = newsDao.queryForPage(offset, pageSize); 
        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
        page.setTotalRecords(allRow);
        page.setList(list);    
        return page;
	}

	/* 
	 * 实现搜索分页效果
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#searchForPage(java.lang.String, int, int)
	 */
	@Override
	public Page searchForPage(String content, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Page page = new Page();       
        //总记录数
        int allRow = newsDao.getAllSearchRowCount(content);
        //当前页开始记录
        int offset = page.countOffset(currentPage,pageSize);  
        //分页查询结果集
        List<News> list = newsDao.queryForPage(offset, pageSize); 
        page.setPageNo(currentPage);
        page.setPageSize(pageSize);
        page.setTotalRecords(allRow);
        page.setList(list);    
        return page;
	}
	
	/* 
	 * 获得新闻记录所有
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#getAllRowCount()
	 */
	@Override
	public int getAllRowCount() {
		// TODO Auto-generated method stub
		return newsDao.getAllRowCount();
	}

	/**
	 * 获得搜索所有的记录
	 * @param content
	 * @return
	 */
	public int getAllSearchRowCount(String content) {
		return newsDao.getAllSearchRowCount(content);
	}
	
	/* 
	 * 查询所有新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#queryAllNews()
	 */
	@Override
	public List<News> queryAllNews() {
		// TODO Auto-generated method stub
		return newsDao.queryAllNews();
	}

	/* 
	 * 通过新闻标题删除新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#deleteNewsTitle(java.lang.String)
	 */
	@Override
	public boolean deleteNewsTitle(String newsTitle) {
		// TODO Auto-generated method stub
		return newsDao.deleteNewsTitle(newsTitle);
	}

	/* 
	 * 通过新闻内容删除新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#deleteNewsContent(java.lang.String)
	 */
	@Override
	public boolean deleteNewsContent(String newsContent) {
		// TODO Auto-generated method stub
		return newsDao.deleteNewsContent(newsContent);
	}

	/* 
	 * 通过新闻ID来删除新闻
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#deleteNewsId(java.lang.String)
	 */
	@Override
	public boolean deleteNewsId(String newsId) {
		// TODO Auto-generated method stub
		return newsDao.deleteNewsId(newsId);
	}

	/* 
	 * 修改新闻内容
	 * (non-Javadoc)
	 * @see org.shlg.news.service.INewsService#modifyNews(org.shlg.news.domain.News)
	 */
	@Override
	public boolean modifyNews(News news) {
		// TODO Auto-generated method stub
		return newsDao.modifyNews(news);
	}

}
