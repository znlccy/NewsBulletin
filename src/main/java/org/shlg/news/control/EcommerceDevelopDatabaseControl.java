package org.shlg.news.control;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.shlg.news.domain.News;
import org.shlg.news.service.IEcommerceDevelopDatabaseService;
import org.shlg.news.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是电子商务发展数据库的控制类
 */

@Controller
@CrossOrigin(maxAge=3600,origins="*")
@Scope("singleton")
@RequestMapping(value="eddc")
public class EcommerceDevelopDatabaseControl {

	/**
	 * 声明使用新闻服务接口
	 */
	@Autowired
	private INewsService newsService;
	
	/**
	 * 声明返回给客户端的状态
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
	
	@RequestMapping(value="getdednews",method=RequestMethod.GET)
	public @ResponseBody Map getDedNews(@ModelAttribute News news) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		List<News> query_dednews = newsService.queryNewsSql("from News where newsType='2'");
		if(query_dednews==null)
		{
			status = "403";
			message = "新闻资源不存在!";
			map.put("newstitle", message);
			map.put("newdate", message);
			map.put("newscontent", message);
			map.put("author", message);
			map.put("authorprofile", message);
		}
		else
		{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if(query_dednews.size()==0)
			{
				status = "403";
				message = "新闻资源不存在!";
				map.put("newstitle", message);
				map.put("newdate", message);
				map.put("newscontent", message);
				map.put("author", message);
				map.put("authorprofile", message);
			} else if(query_dednews.size()==1)
			{
				status = "200";
				message = "成功查询!";
				News newsone = query_dednews.get(query_dednews.size()-1);
				map.put("newstitle", newsone.getNewsTitle().replace("\"", ""));
				System.err.println("作者:"+newsone.getAuthor());
				System.err.println("新闻内容:"+newsone.getNewsContent());
				map.put("newsonedate",sdf.format(newsone.getNewsCreateTime()));
				map.put("newscontent",newsone.getNewsContent());
				map.put("author",newsone.getAuthor().replace("\"", ""));
				map.put("authorprofile", newsone.getAuthor().replace("\"", ""));
			} 
			map.put("status", status);
			map.put("message", message);
		}
		return map;
	}
}
