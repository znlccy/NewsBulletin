package org.shlg.news.control;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Semaphore;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.shlg.news.domain.News;
import org.shlg.news.service.INewsService;
import org.shlg.news.serviceImpl.NewsServiceImpl;
import org.shlg.news.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-25
 * @introduce 这是新闻控制器
 */
@Controller
@RequestMapping(value="news")
@Scope("singleton")
@CrossOrigin(maxAge=3600,origins="*")
public class NewsControl {
	
	/**
	 * 声明使用新闻服务接口
	 */
	@Autowired
	private INewsService newsService;
	
	/**
	 * 声明返回给客户端的状态码
	 */
	private String status;
	
	/**
	 * 声明返回给客户端的信息
	 */
	private String message;
	
	/**
	 * 实现新闻服务的get和set依赖注入
	 * @return
	 */
	public INewsService getNewsService() {
		return newsService;
	}

	/**
	 * 实现新闻服务的get和set依赖注入
	 * @param newsService
	 */
	public void setNewsService(INewsService newsService) {
		this.newsService = newsService;
	}

	/**
	 * 实现添加新闻功能
	 * @param news
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> addNews(@RequestBody Map dataMap) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		String newsTitle = ((String) dataMap.get("newsTitle")).trim();
		String newsContent = ((String) dataMap.get("newsContent")).trim();
		String newsType = ((String) dataMap.get("newsType")).trim();
		String author = (String) dataMap.get("author");
		String newsPicture = (String) dataMap.get("newsPicture");
		
		System.err.println("新闻标题:"+newsTitle+"\t新闻内容:"+newsContent+"\t新闻类型:"+newsType+"\t新闻作者:"+author);
		
		if((newsTitle.equals("") || "".equals(newsTitle)) && (newsContent.equals("") || "".equals(newsContent))) 
		{
			status = "401";
			message = "您输入的新闻标题和内容为空!";
		}
		else
		{
			
			/*File f = new File(this.getClass().getResource("/").getPath());*/ 
			News news = new News();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String now = sdf.format(new Date());
			String newsId = now;
			news.setNewsId(newsId);
			news.setAuthor(author);
			news.setNewsContent(newsContent);
			news.setNewsTitle(newsTitle);
			news.setNewsType(newsType);
			news.setNewsFollow(0);
			news.setNewsPrivilege(0);
			news.setNewsSecriber(0);
			news.setNewsCreateTime(new Date());
			String filePath = "\""+newsPicture+"\"";
			System.err.println("新闻图片路径"+newsPicture);
			
			newsService.addNewsPicture(filePath, news);

			status = "200";
			message = "添加新闻成功";
		}
		map.put("status", status);
		map.put("message", message);
		return map;
	}
	
	/**
	 * 实现查询新闻功能
	 * @param news
	 */
	@RequestMapping(value="/query",method=RequestMethod.POST)
	public void queryNews(@ModelAttribute("newsForm") News news) {
		// TODO Auto-generated method stubv
		
		newsService.queryNewsContent(news.getNewsContent());
	}
	
	/**
	 * 实现删除新闻功能
	 * @param news
	 */
	@RequestMapping(value="/delete",method=RequestMethod.DELETE)
	@ResponseBody
	public Map<String, Object> deleteNews(@RequestBody Map dataMap) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String,Object>();
		
		String newsTitle = (String) dataMap.get("newsTitle");
		String newsContent = (String) dataMap.get("newsContent");
		
		List<News> news = (List<News>) newsService.queryNewsSql("from News where newsTitle like"+"'%"+newsTitle+"%'"+ "or newsContent like"+"'%"+newsContent+"%'");
		if(news.size()==0) {
			status = "401";
			message = "数据库中不存在这个新闻";
			System.err.println("没有查询到新闻内容");
		}
		else {
			/*newsService.deleteNewsContent();*/
			System.err.println("查询到新闻内容");
		}	
		map.put("status", status);
		map.put("message", message);
		return map;
	}
	
	/**
	 * 实现修改新闻功能
	 * @param news
	 */
	@RequestMapping(value="modify",method=RequestMethod.PUT)
	public void modifyNews(@ModelAttribute("newsForm") News news) {
		// TODO Auto-generated method stub
		newsService.modifyNews(news);
	}
	
	@RequestMapping(value="getpostnews",method=RequestMethod.GET)
	public @ResponseBody Map getPostNews(@ModelAttribute News news) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		List<News> query_news = newsService.queryAllNews();
		if(query_news==null)
		{
			status = "403";
			message = "新闻资源不存在!";
			map.put("status", status);
			map.put("message",message);
			map.put("newsone", message);
			map.put("newstwo", message);
			map.put("newsthree", message);
			map.put("newsfour", message);
			map.put("newsfive", message);
			map.put("newssix", message);
			map.put("newsseven", message);
			map.put("newseight", message);
			map.put("newsnine", message);
		}
		else
		{
			/*News it_new = null;
			Iterator it = query_news.iterator();
			while (it.hasNext()) {
				it_new = (News) it.next();
			}*/
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			status = "200";
			message = "查询成功!";
			if(query_news.size()==0)
			{
				map.put("newsone", "没有新闻资源!");
				map.put("newstwo", "没有新闻资源!");
				map.put("newsthree", "没有新闻推送资源!");
				map.put("newsfour", "没有新闻推送资源!");
				map.put("newsfive", "没有新闻推送资源!");
				map.put("newssix", "没有新闻推送资源!");
				map.put("newsseven", "没有新闻推送资源!");
				map.put("newseight", "没有新闻推送资源!");
				map.put("newsnine", "没有新闻推送资源!");
				
			} else if(query_news.size()==1)
			{
				News newsone = query_news.get(query_news.size()-1);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", "没有新闻资源!");
				map.put("newsthree", "没有新闻资源!");
				map.put("newsfour", "没有新闻资源!");
				map.put("newsfive", "没有新闻资源!");
				map.put("newssix", "没有新闻资源!");
				map.put("newsseven", "没有新闻资源!");
				map.put("newseight", "没有新闻资源!");
				map.put("newsnine", "没有新闻资源!");
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
			} else if(query_news.size()==2)
			{
				News newsone = query_news.get(query_news.size()-1);
				News newstwo = query_news.get(query_news.size()-2);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", newstwo.getNewsTitle().replace("\"", ""));
				map.put("newsthree", "没有新闻资源!");
				map.put("newsfour", "没有新闻资源!");
				map.put("newsfive", "没有新闻资源!");
				map.put("newssix", "没有新闻资源!");
				map.put("newsseven", "没有新闻资源!");
				map.put("newseight", "没有新闻资源!");
				map.put("newsnine", "没有新闻资源!");
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newstwodate",sdf.format(newstwo.getNewsCreateTime()));
			} else if(query_news.size()==3)
			{
				News newsone = query_news.get(query_news.size()-1);
				News newstwo = query_news.get(query_news.size()-2);
				News newsthree = query_news.get(query_news.size()-3);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", newstwo.getNewsTitle().replace("\"", ""));
				map.put("newsthree", newsthree.getNewsTitle().replace("\"", ""));
				map.put("newsfour", "没有新闻资源!");
				map.put("newsfive", "没有新闻资源!");
				map.put("newssix", "没有新闻资源!");
				map.put("newsseven", "没有新闻资源!");
				map.put("newseight", "没有新闻资源!");
				map.put("newsnine", "没有新闻资源!");
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newstwodate",sdf.format(newstwo.getNewsCreateTime()));
				map.put("newsthreedate",sdf.format(newsthree.getNewsCreateTime()));
			} else if(query_news.size()==4)
			{
				News newsone = query_news.get(query_news.size()-1);
				News newstwo = query_news.get(query_news.size()-2);
				News newsthree = query_news.get(query_news.size()-3);
				News newsfour = query_news.get(query_news.size()-4);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", newstwo.getNewsTitle().replace("\"", ""));
				map.put("newsthree", newsthree.getNewsTitle().replace("\"", ""));
				map.put("newsfour", newsfour.getNewsTitle().replace("\"", ""));
				map.put("newsfive", "没有新闻资源!");
				map.put("newssix", "没有新闻资源!");
				map.put("newsseven", "没有新闻资源!");
				map.put("newseight", "没有新闻资源!");
				map.put("newsnine", "没有新闻资源!");
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newstwodate",sdf.format(newstwo.getNewsCreateTime()));
				map.put("newsthreedate",sdf.format(newsthree.getNewsCreateTime()));
				map.put("newsfourdate",sdf.format(newsfour.getNewsCreateTime()));
			} else if(query_news.size()==5)
			{
				News newsone = query_news.get(query_news.size()-1);
				News newstwo = query_news.get(query_news.size()-2);
				News newsthree = query_news.get(query_news.size()-3);
				News newsfour = query_news.get(query_news.size()-4);
				News newsfive = query_news.get(query_news.size()-5);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", newstwo.getNewsTitle().replace("\"", ""));
				map.put("newsthree", newsthree.getNewsTitle().replace("\"", ""));
				map.put("newsfour", newsfour.getNewsTitle().replace("\"", ""));
				map.put("newsfive", newsfive.getNewsTitle().replace("\"", ""));
				map.put("newssix", "没有新闻推送资源!");
				map.put("newsseven", "没有新闻推送资源!");
				map.put("newseight", "没有新闻推送资源!");
				map.put("newsnine", "没有新闻推送资源!");
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newstwodate",sdf.format(newstwo.getNewsCreateTime()));
				map.put("newsthreedate",sdf.format(newsthree.getNewsCreateTime()));
				map.put("newsfourdate",sdf.format(newsfour.getNewsCreateTime()));
				map.put("newsfivedate",sdf.format(newsfive.getNewsCreateTime()));
			} else if(query_news.size()==6)
			{
				News newsone = query_news.get(query_news.size()-1);
				News newstwo = query_news.get(query_news.size()-2);
				News newsthree = query_news.get(query_news.size()-3);
				News newsfour = query_news.get(query_news.size()-4);
				News newsfive = query_news.get(query_news.size()-5);
				News newssix = query_news.get(query_news.size()-6);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", newstwo.getNewsTitle().replace("\"", ""));
				map.put("newsthree", newsthree.getNewsTitle().replace("\"", ""));
				map.put("newsfour", newsfour.getNewsTitle().replace("\"", ""));
				map.put("newsfive", newsfive.getNewsTitle().replace("\"", ""));
				map.put("newssix", newssix.getNewsTitle().replace("\"", ""));
				map.put("newsseven", "没有新闻推送资源!");
				map.put("newseight", "没有新闻推送资源!");
				map.put("newsnine", "没有新闻推送资源!");
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newstwodate",sdf.format(newstwo.getNewsCreateTime()));
				map.put("newsthreedate",sdf.format(newsthree.getNewsCreateTime()));
				map.put("newsfourdate",sdf.format(newsfour.getNewsCreateTime()));
				map.put("newsfivedate",sdf.format(newsfive.getNewsCreateTime()));
				map.put("newssixdate",sdf.format(newssix.getNewsCreateTime()));
			} else if(query_news.size()==7) {
				News newsone = query_news.get(query_news.size()-1);
				News newstwo = query_news.get(query_news.size()-2);
				News newsthree = query_news.get(query_news.size()-3);
				News newsfour = query_news.get(query_news.size()-4);
				News newsfive = query_news.get(query_news.size()-5);
				News newssix = query_news.get(query_news.size()-6);
				News newsseven = query_news.get(query_news.size()-7);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", newstwo.getNewsTitle().replace("\"", ""));
				map.put("newsthree", newsthree.getNewsTitle().replace("\"", ""));
				map.put("newsfour", newsfour.getNewsTitle().replace("\"", ""));
				map.put("newsfive", newsfive.getNewsTitle().replace("\"", ""));
				map.put("newssix", newssix.getNewsTitle().replace("\"", ""));
				map.put("newsseven", newsseven.getNewsTitle().replace("\"", ""));
				map.put("newseight", "没有新闻推送资源!");
				map.put("newsnine", "没有新闻推送资源!");
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newstwodate",sdf.format(newstwo.getNewsCreateTime()));
				map.put("newsthreedate",sdf.format(newsthree.getNewsCreateTime()));
				map.put("newsfourdate",sdf.format(newsfour.getNewsCreateTime()));
				map.put("newsfivedate",sdf.format(newsfive.getNewsCreateTime()));
				map.put("newssixdate",sdf.format(newssix.getNewsCreateTime()));
				map.put("newssevendate",sdf.format(newsseven.getNewsCreateTime()));
			} else if(query_news.size()==8) {
				News newsone = query_news.get(query_news.size()-1);
				News newstwo = query_news.get(query_news.size()-2);
				News newsthree = query_news.get(query_news.size()-3);
				News newsfour = query_news.get(query_news.size()-4);
				News newsfive = query_news.get(query_news.size()-5);
				News newssix = query_news.get(query_news.size()-6);
				News newsseven = query_news.get(query_news.size()-7);
				News newseight = query_news.get(query_news.size()-8);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", newstwo.getNewsTitle().replace("\"", ""));
				map.put("newsthree", newsthree.getNewsTitle().replace("\"", ""));
				map.put("newsfour", newsfour.getNewsTitle().replace("\"", ""));
				map.put("newsfive", newsfive.getNewsTitle().replace("\"", ""));
				map.put("newssix", newssix.getNewsTitle().replace("\"", ""));
				map.put("newsseven", newsseven.getNewsTitle().replace("\"", ""));
				map.put("newseight", newseight.getNewsTitle().replace("\"", ""));
				map.put("newsnine", "没有新闻推送资源!");
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newstwodate",sdf.format(newstwo.getNewsCreateTime()));
				map.put("newsthreedate",sdf.format(newsthree.getNewsCreateTime()));
				map.put("newsfourdate",sdf.format(newsfour.getNewsCreateTime()));
				map.put("newsfivedate",sdf.format(newsfive.getNewsCreateTime()));
				map.put("newssixdate",sdf.format(newssix.getNewsCreateTime()));
				map.put("newssevendate",sdf.format(newsseven.getNewsCreateTime()));
				map.put("newseightdate",sdf.format(newseight.getNewsCreateTime()));
			} else {
				News newsone = query_news.get(query_news.size()-1);
				News newstwo = query_news.get(query_news.size()-2);
				News newsthree = query_news.get(query_news.size()-3);
				News newsfour = query_news.get(query_news.size()-4);
				News newsfive = query_news.get(query_news.size()-5);
				News newssix = query_news.get(query_news.size()-6);
				News newsseven = query_news.get(query_news.size()-7);
				News newseight = query_news.get(query_news.size()-8);
				News newsnine = query_news.get(query_news.size()-9);
				map.put("newsone", newsone.getNewsTitle().replace("\"", ""));
				map.put("newstwo", newstwo.getNewsTitle().replace("\"", ""));
				map.put("newsthree", newsthree.getNewsTitle().replace("\"", ""));
				map.put("newsfour", newsfour.getNewsTitle().replace("\"", ""));
				map.put("newsfive", newsfive.getNewsTitle().replace("\"", ""));
				map.put("newssix", newssix.getNewsTitle().replace("\"", ""));
				map.put("newsseven", newsseven.getNewsTitle().replace("\"", ""));
				map.put("newseight", newseight.getNewsTitle().replace("\"", ""));
				map.put("newsnine", newsnine.getNewsTitle().replace("\"", ""));
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newstwodate",sdf.format(newstwo.getNewsCreateTime()));
				map.put("newsthreedate",sdf.format(newsthree.getNewsCreateTime()));
				map.put("newsfourdate",sdf.format(newsfour.getNewsCreateTime()));
				map.put("newsfivedate",sdf.format(newsfive.getNewsCreateTime()));
				map.put("newssixdate",sdf.format(newssix.getNewsCreateTime()));
				map.put("newssevendate",sdf.format(newsseven.getNewsCreateTime()));
				map.put("newseightdate",sdf.format(newseight.getNewsCreateTime()));
				map.put("newsninedate",sdf.format(newsnine.getNewsCreateTime()));
			}
			 
			map.put("status", status);
			map.put("message", message);
		}
		return map;
	}

	@RequestMapping(value="getpagenews",method=RequestMethod.GET)
	public @ResponseBody Map findAllNewsPage(@ModelAttribute News news,HttpServletRequest request) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		String pageNo = request.getParameter("pageNo");
		System.err.println("请求的页码："+pageNo);
		int count = newsService.getAllRowCount();
        if (pageNo == null) {
            pageNo = "1";
        }
        
        Page page = newsService.queryForPage(Integer.valueOf(pageNo), 5);
        request.setAttribute("page", page);
        List<News> list = page.getList();
        
        map.put("pageNo", pageNo);
        map.put("count",count);
        map.put("page", page);
        map.put("list", list);
		return map;
	}
	
	@RequestMapping(value="getsearchnews",method=RequestMethod.GET)
	public @ResponseBody Map searchAllNewsPage(@ModelAttribute News news,HttpServletRequest request) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		String pageNo = request.getParameter("pageNo");
		String content = request.getParameter("content");
		System.err.println("请求的页码："+pageNo);
		int count = newsService.getAllSearchRowCount(content);
        if (pageNo == null) {
            pageNo = "1";
        }
        
        Page page = newsService.searchForPage(content, Integer.valueOf(pageNo), 4);
        request.setAttribute("page", page);
        List<News> list = page.getList();
        
        map.put("pageNo", pageNo);
        map.put("count",count);
        map.put("page", page);
        map.put("list", list);
		return map;
	}
}
