package org.shlg.news.control;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.shlg.news.domain.ContactUs;
import org.shlg.news.domain.LeaveMessage;
import org.shlg.news.domain.News;
import org.shlg.news.domain.User;
import org.shlg.news.service.IContactUsService;
import org.shlg.news.service.ILeaveMessageService;
import org.shlg.news.service.INewsService;
import org.shlg.news.service.IUserService;
import org.shlg.news.serviceImpl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.mchange.v2.c3p0.stmt.GooGooStatementCache;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-12
 * @introduce 这是用户控制层
 */

@Controller
@Scope("singleton")
@RequestMapping(value="user")
@CrossOrigin(maxAge=3600,origins="*")
public class UserControl {
	
	/**
	 * 声明用户服务
	 */
	@Autowired
	private IUserService userService;
	
	/**
	 * 声明新闻服务
	 */
	@Autowired
	private INewsService newsService;
	
	/**
	 * 声明联系我们服务
	 */
	@Autowired
	private IContactUsService contactUsService;
	
	/**
	 * 声明留言服务
	 */
	@Autowired
	private ILeaveMessageService leaveMessageService;
	
	/**
	 * 声明返回给客户端的状态码
	 */
	private String status;
	
	/**
	 * 声明返回给客户端的信息
	 */
	private String message;
	
	/**
	 * 实现用户的get方法
	 * @return
	 */
	public IUserService getUserService() {
		return userService;
	}

	/**
	 * 实现用户的set方法
	 * @param userService
	 */
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	/**
	 * 实现新闻的get方法
	 * @return
	 */
	public INewsService getNewsService() {
		return newsService;
	}

	/**
	 * 实现新闻的set方法
	 * @param newsService
	 */
	public void setNewsService(INewsService newsService) {
		this.newsService = newsService;
	}

	/**
	 * 实现联系我们的get方法
	 * @return
	 */
	public IContactUsService getContactUsService() {
		return contactUsService;
	}

	/**
	 * 实现联系我们的set方法
	 * @param contactUsService
	 */
	public void setContactUsService(IContactUsService contactUsService) {
		this.contactUsService = contactUsService;
	}
	
	/**
	 * 实现留言的get方法
	 * @return
	 */
	public ILeaveMessageService getLeaveMessageService() {
		return leaveMessageService;
	}

	/**
	 * 实现留言的set方法
	 * @param leaveMessageService
	 */
	public void setLeaveMessageService(ILeaveMessageService leaveMessageService) {
		this.leaveMessageService = leaveMessageService;
	}



	/**
	 * 打印日志文件
	 */
	private static final Log logger = LogFactory.getLog(UserControl.class);
	
	/**
	 * 这个是用户登录模块 
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public @ResponseBody Map userLogin(@ModelAttribute("loginForm") User user) {
		// TODO Auto-generated method stub
		String username = user.getUsername().trim();
		String password = user.getPassword().trim();
		Map<String, Object> map = new HashMap<String, Object>();
		user = userService.queryUserSql("from User where username="+"'"+user.getUsername()+"'"+"and password="+"'"+user.getPassword()+"'");
		if (user == null) {
			/*System.err.println("数据库中不存在这个人！"+user);*/
			map.put("message", "数据库中不存在这个人！");
			map.put("status", "404");
			/*Gson gson = new Gson();
			String json = gson.toJson(map);*/
			System.err.println(map);
		}
		else {
			
			status = "200";
			message = "数据库中存在这个人，";
			map.put("status", status);
			map.put("message", message);
			
			System.err.println("数据库中存在这个人！");
		}
		return map;
	}
	
	/**
	 * 这个是用户注册吗模块
	 */
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public @ResponseBody Map userRegistered(@ModelAttribute("registeredForm") User user,HttpSession session) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		
		session.setAttribute("username", user.getUsername());
		
		System.err.println("调用注册功能！"+user.getUsername());
		/*1.首先查询数据库里是不是已经存在这个账户了，如果存在了，那么不能再注册了，只能通过忘记密码，来修改自己的密码了*/
		User user_query = new User();
		user_query = userService.queryUserSql("from User where username="+"'"+user.getUsername()+"'");
		/*user_query = userService.queryUserName(user.getUsername());*/
		if (user_query == null) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("message", "数据库中不存在这个人！");
			session.setAttribute("message", "数据库中不存在这个人！");
			if(user.getGender().equals("") || user.getGender()==null)
			{
				user.setGender("男");
				userService.addUser(user);
			} else if(user.getGender().equals("on"))
			{
				user.setGender("女");
				userService.addUser(user);
			}
			
			map.put("status", "0404");
			map.put("message", "失败！");
		}
		else {
			map.put("status", "0200");
			map.put("message", "登录成功！");
		}
		return map;
	}
	
	/**
	 * 这个是用户搜索模块
	 */
	@RequestMapping(value="search",method=RequestMethod.GET)
	public @ResponseBody Map getNews(@ModelAttribute News news) {
		// TODO Auto-generated method stub
		/*声明map然后返回给客户端json数据*/
		Map<String, Object> map = new HashMap<String,Object>();
		
		String search_content = news.getNewsContent();
		if(search_content==null)
		{
			status = "405";
			message = "输入的搜索内容为空!";
		}
		else
		{
			String search_sql = "from News where newsTitle like "+"'%"+search_content+"%'"+"or newsContent like"+"'%"+search_content+"%'";
			
			/*1.开始搜索提交的内容*/
			List<News> searcher_news = newsService.queryNewsSql(search_sql);
			if(searcher_news==null)
			{
				System.err.println("没有检索到内容！");
				status = "406";
				message = "没有这个对象!";
			}
			else
			{
				if(searcher_news.size()==0)
				{
					status = "403";
					message = "没有搜索到相应的资源!";
				}
				else
				{
					status = "200";
					message = "搜索到相应的资源!";
					String searchContent = searcher_news.get(0).getNewsContent();
					map.put("searchContent", searcher_news);
				}
			}
		}
		
		map.put("status", status);
		map.put("message", message);
		System.err.println(map);
		return map;
	}
	
	/**
	 * 实现添加用户的功能
	 * @param user
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public void addUser(@ModelAttribute("userForm") User user) {
		// TODO Auto-generated method stub
		String username = user.getUsername();
		String password = user.getPassword();
		String loginStatus = user.getLoginStatus();
		String mobile = user.getMobile();
		
		boolean result = userService.addUser(user);
		if(result)
		{
			System.err.println("添加成功！");
		}
		else
		{
			System.err.println("添加失败！");
		}
	}
	
	/**
	 * 实现查询用户的功能
	 * @param user
	 */
	@RequestMapping(value="/query")
	public void queryUser(@RequestBody User user) {
		// TODO Auto-generated method stub
		userService.queryUserName(user.getUsername());
	}
	
	/**
	 * 实现删除用户的功能
	 * @param user
	 */
	@RequestMapping(value="/delete")
	public void deleteUser(@RequestBody User user) {
		// TODO Auto-generated method stub
		userService.deleteUserName(user.getUsername());
	}
	
	/**
	 * 实现修改用户的功能
	 * @param user
	 */
	@RequestMapping(value="/modify")
	public void modifyUser(@RequestBody User user) {
		// TODO Auto-generated method stub
		String username = user.getUsername();
		User user_query = userService.queryUserName(username);
		if(user_query == null)
		{
			System.err.println("数据库中不存在这个用户，只能新增，不能修改！");
			
		}
		else
		{
			
		}
		userService.modifyUser(user);
	}
	
	/**
	 * 实现上传文件的功能,通过流的方式上传文件
	 * @RequestParam("file") 将name=file控件得到的文件封装成CommonsMultipartFile 对象
	 */
	@RequestMapping(value="/uploadFile1",method=RequestMethod.POST)
	public String uploadFile1(@RequestParam("file") CommonsMultipartFile file) throws IOException {
		// TODO Auto-generated method stub
		/*userService.uploadFile();*/
		//用来检测程序运行时间
        long  startTime=System.currentTimeMillis();
        System.out.println("fileName："+file.getOriginalFilename());
         
        try {
            //获取输出流
            OutputStream os=new FileOutputStream("E:/"+new Date().getTime()+file.getOriginalFilename());
            //获取输入流 CommonsMultipartFile 中可以直接得到文件的流
            InputStream is=file.getInputStream();
            int temp;
            //一个一个字节的读取并写入
            while((temp=is.read())!=(-1))
            {
                os.write(temp);
            }
           os.flush();
           os.close();
           is.close();
         
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        long  endTime=System.currentTimeMillis();
        System.out.println("方法一的运行时间："+String.valueOf(endTime-startTime)+"ms");
        return "success"; 
	}
	
	/**
	 * 实现上传文件的功能,采用file.Transto 来保存上传的文件
	 */
	@RequestMapping(value="/uploadFile2",method=RequestMethod.POST)
	public String uploadFile2(@RequestParam("file") CommonsMultipartFile file) throws IOException {
		// TODO Auto-generated method stub
		/*userService.uploadFile();*/
		long  startTime=System.currentTimeMillis();
        System.out.println("fileName："+file.getOriginalFilename());
        String path="E:/"+new Date().getTime()+file.getOriginalFilename();
         
        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        long  endTime=System.currentTimeMillis();
        System.out.println("方法二的运行时间："+String.valueOf(endTime-startTime)+"ms");
        return "success";  
	}
	
	/**
	 * 实现上传文件的功能,采用spring提供的上传文件的方法
	 */
	@RequestMapping(value="/springUpload",method=RequestMethod.POST)
	public String uploadFile3(HttpServletRequest request) throws IllegalStateException, IOException {
		// TODO Auto-generated method stub
		/*userService.uploadFile();*/
		long  startTime=System.currentTimeMillis();
        //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
       CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
               request.getSession().getServletContext());
       //检查form中是否有enctype="multipart/form-data"
       if(multipartResolver.isMultipart(request))
       {
           //将request变成多部分request
           MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
          //获取multiRequest 中所有的文件名
           Iterator iter=multiRequest.getFileNames();
            
           while(iter.hasNext())
           {
               //一次遍历所有文件
               MultipartFile file=multiRequest.getFile(iter.next().toString());
               if(file!=null)
               {
                   String path="E:/springUpload"+file.getOriginalFilename();
                   //上传
                   file.transferTo(new File(path));
               }
                
           }
          
       }
       long  endTime=System.currentTimeMillis();
       System.out.println("方法三的运行时间："+String.valueOf(endTime-startTime)+"ms");
       return "success";  
	}
	
	/**
	 * 实现下载文件的功能
	 * @throws IOException 
	 */
	@RequestMapping(value="/downloadFile")
	public void downloadFile(HttpServletResponse response/*, @PathVariable("type") String type*/) throws IOException {
		
		final String INTERNAL_FILE="contact_us.jsp";
		final String EXTERNAL_FILE_PATH="E:/springUploadSquirrelSetup.log";
		
		File file = null;
		/*
		if(type.equalsIgnoreCase("internal")){
			ClassLoader classloader = Thread.currentThread().getContextClassLoader();
			file = new File(classloader.getResource(INTERNAL_FILE).getFile());
		}else{*/
			file = new File(EXTERNAL_FILE_PATH);
		/*}*/
		
		if(!file.exists()){
			String errorMessage = "Sorry. The file you are looking for does not exist";
			System.out.println(errorMessage);
			OutputStream outputStream = response.getOutputStream();
			outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
			outputStream.close();
			return;
		}
		
		String mimeType= URLConnection.guessContentTypeFromName(file.getName());
		if(mimeType==null){
			System.out.println("mimetype is not detectable, will take default");
			mimeType = "application/octet-stream";
		}
		
		System.out.println("mimetype : "+mimeType);
		
        response.setContentType(mimeType);
        
        response.setHeader("Content-Disposition", String.format("inline; filename=\"" + file.getName() +"\""));

        
        response.setContentLength((int)file.length());

		InputStream inputStream = new BufferedInputStream(new FileInputStream(file));

        FileCopyUtils.copy(inputStream, response.getOutputStream());
        
	}
	
	/**
	 * 实现联系我们的功能
	 */
	@RequestMapping(value="/contactUs",method=RequestMethod.POST)
	public @ResponseBody Map contactUs(@ModelAttribute("contactForm") ContactUs contactUs) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String,Object>();
		
		String username = contactUs.getUsername().trim();
		String email = contactUs.getEmail().trim();
		String subject = contactUs.getSubject();
		String content = contactUs.getContent();
		System.err.println("用户名："+username+"\t"+"邮箱:"+email+"\t"+"主题:"+subject+"\t"+"内容:"+content);
		
		/*1.先查询数据库库是否已经存在这个账户或者邮箱*/
		String query_sql = "from ContactUs cu where cu.username="+"'"+username+"'"+"or cu.email="+"'"+email+"'"+"cu.";
		
		ContactUs query_contactUs = contactUsService.queryContactUsSql(query_sql);
		
		if(query_contactUs==null)
		{
			boolean result = contactUsService.addContactUs(contactUs);
			if(result)
			{
				System.err.println("添加联系我们成功!");
			}
			else
			{
				System.err.println("添加联系我们失败!");
			}
		}
		else 
		{
			System.err.println("数据库中已经存在该账户了，请重新添加!");
		}
		
		return map;
	}
	
	/**
	 * 实现添加新闻的功能
	 * @param news
	 * @return
	 */
	@RequestMapping(value="/addNews",method=RequestMethod.POST)
	public ModelAndView addNews(@ModelAttribute News news) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 实现查询新闻的功能
	 * @param news
	 * @return
	 */
	@RequestMapping(value="/queryNews",method=RequestMethod.GET)
	public ModelAndView queryNews(@ModelAttribute News news) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 实现删除新闻的功能
	 * @param news
	 * @return
	 */
	@RequestMapping(value="/deletenews",method=RequestMethod.DELETE)
	public ModelAndView deleteNews(@ModelAttribute News news) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 实现修改新闻的功能
	 * @param news
	 * @return
	 */
	@RequestMapping(value="/modifynews",method=RequestMethod.PUT)
	public ModelAndView modifyNews(@ModelAttribute News news) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@RequestMapping(value="/leavemessage",method=RequestMethod.POST)
	public ModelAndView leaveMessage(@ModelAttribute LeaveMessage leaveMessage) {
		// TODO Auto-generated method stub
		return null;
	}
}
