package org.shlg.news.dao;

import java.util.List;

import org.shlg.news.domain.News;
import org.shlg.news.domain.News;
import org.shlg.news.util.Page;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-12
 * @introduce 这是新闻数据库dao层接口
 */

public interface INewsDao {

	/**
	 * 定义新闻注册模块
	 */
	public boolean addNews(News news);
	
	/**
	 * 定义通过新闻名查询新闻模块
	 */
	public News queryNewsTitle(String newsTitle);
	
	/**
	 * 定义通过新闻名查询新闻模块
	 */
	public News queryNewsContent(String newsContent);
	
	/**
	 * 定义通过新闻Id查询新闻模块
	 */
	public News queryNewsId(String newsId);
	
	/**
	 * 定义通过sql语句来查询新闻模块
	 */
	public List<News> queryNewsSql(String sql);
	
	/**
	 * 实现分页查询
	 * @param offset
	 * @param length
	 * @return
	 */
	public List<News> queryForPage(int offset, int length);
	
	/**
	 * 实现搜索分页查询
	 * @param content
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<News> searchForPage(String content, int offset, int length);
	
	/**
	 * 获得所有记录总数
	 * @return
	 */
	public int getAllRowCount();
	
	/**
	 * 获得搜索所有记录
	 * @return
	 */
	public int getAllSearchRowCount(String content);
	
	/**
	 * 定义查询所有新闻
	 * @return
	 */
	public List<News> queryAllNews();
	
	/**
	 * 定义通过新闻标题删除新闻模块
	 */
	public boolean deleteNewsTitle(String newsTitle);
	
	/**
	 * 定义通过新闻内容删除新闻模块
	 */
	public boolean deleteNewsContent(String newsContent);
	
	/**
	 * 定义通过新闻Id删除新闻模块
	 */
	public boolean deleteNewsId(String newsId);
	
	/**
	 * 定义修改新闻信息模块
	 */
	public boolean modifyNews(News news);
	
	/**
	 * 插入新闻图片
	 * @param filePath
	 * @param newsId
	 * @return
	 */
	public boolean addNewsPicture(String filePath,News news);
	
}
