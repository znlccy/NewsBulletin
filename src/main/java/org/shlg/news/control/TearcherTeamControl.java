package org.shlg.news.control;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.shlg.news.domain.TearcherTeam;
import org.shlg.news.service.ITearcherTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-*10-26
 * @introduce 这是教师团队的控制器
 */

@Controller
@RequestMapping(value="tearcher")
@CrossOrigin(maxAge=3600,origins="*")
@Scope("singleton")
public class TearcherTeamControl {

	/**
	 * 声明老师团队的引用 
	 */
	@Autowired
	private ITearcherTeamService tearcherTeamService;
	
	/**
	 * 声明返回给客户端的状态码
	 */
	private String status;
	
	/**
	 * 声明返回给客户端的信息
	 */
	private String message;
	
	/**
	 * 依赖注入老师服务get方法
	 * @return
	 */
	public ITearcherTeamService getTearcherTeamService() {
		return tearcherTeamService;
	}

	/**
	 * 依赖注入老师服务的set方法
	 * @param tearcherTeamService
	 */
	public void setTearcherTeamService(ITearcherTeamService tearcherTeamService) {
		this.tearcherTeamService = tearcherTeamService;
	}

	/**
	 * 声明通过教师名来查询教师信息
	 * @param tearcherTeam
	 * @return
	 */
	@RequestMapping(value="/query",method=RequestMethod.POST,consumes="application/json")
	public @ResponseBody Map queryTearcher(@RequestBody Map dataMap) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		String tearcherName = (String) dataMap.get("tearcherName");
		
		if(tearcherName.equals("") || "".equals(tearcherName))
		{
			status = "401";
			message = "您输入的老师姓名为空!";
		}
		else
		{
			TearcherTeam team = tearcherTeamService.queryTearcherName(tearcherName);
		    if(team==null)
		    {
		    	status = "403";
		    	message = "请求的资源不存在！";
		    	System.err.println("没查询到");
		    	map.put("status", status);
		    	map.put("message", message);
		    }
		    else
		    {
		    	/*获得个人简介*/
		    	String personalProfile = team.getPersonalProfile().trim();
		    	/*获得学习和工作经验*/
		    	String studyExperience = team.getStudyExperience().trim();
		    	/*获得科研成果*/
		    	String workAchievements = team.getWorkAchievements();
		    	/*获得研究方向*/
		    	String researchDirection = team.getResearchDirection();
		    	/*获得学术团体*/
		    	String academicGroups = team.getAcademicGroups();
		    	/*获得联系方式*/
		    	String contactStyle = team.getContactStyle();
		    	
		    	/*把这个数据封装到map中去放回给客户端*/
		    	/*获得教师信息成功，返回给客户端状态码*/
		    	status = "200";
		    	message = "恭喜您成功获得"+tearcherName+"教师的信息！";
		    	map.put("status", status);
		    	map.put("message", message);
		    	map.put("tearcherName", tearcherName);
		    	map.put("personalProfile", personalProfile);
		    	map.put("studyExperience", studyExperience);
		    	map.put("workAchievements", workAchievements);
		    	map.put("researchDirection", researchDirection);
		    	map.put("academicGroups", academicGroups);
		    	map.put("contactStyle",contactStyle );
		    	System.err.println("查询到老师个人信息");
		    }
		}
	   
		return map;
	}

	/**
	 * 声明添加教师的方法
	 * @return
	 */
	@RequestMapping(value="add",method=RequestMethod.POST,consumes="application/json")
	public @ResponseBody Map<String, Object> addTearcher(@RequestBody Map dataMap) {
		// TODO Auto-generated method stub
		/*声明Map集合引用*/
		Map<String, Object> map = new HashMap<String, Object>();
	
		String tearcherName = (String) dataMap.get("tearcherName");
		String academicGroups = (String) dataMap.get("academicGroups");
		String contactStyle = (String) dataMap.get("contactStyle");
		String personalProfile = (String) dataMap.get("personalProfile");
		String researchDirection = (String) dataMap.get("researchDirection");
		String studyExperience = (String) dataMap.get("studyExperience");
		String workAchievements = (String) dataMap.get("workAchievements");
		
		if(tearcherName.equals("") || "".equals(tearcherName))
		{
			status = "401";
			message = "您输入的老师姓名为空!";
			System.err.println("输入的老师名字为空!");
		}
		else
		{
			TearcherTeam tearcherTeam = new TearcherTeam();
			
			TearcherTeam tcteam =  tearcherTeamService.queryTearcherName(tearcherName);
			if(tcteam!=null)
			{
				status = "405";
				message = tearcherName+"老师这个用户名已经注册过了！";
				map.put("status", status);
				map.put("message", message);
				map.put("tearcherTeamId", tcteam.getTearcherTeamId());
			}
			else
			{
				tearcherTeam.setAcademicGroups(academicGroups);
				tearcherTeam.setContactStyle(contactStyle);
				tearcherTeam.setPersonalProfile(personalProfile);
				tearcherTeam.setResearchDirection(researchDirection);
				tearcherTeam.setStudyExperience(studyExperience);
				tearcherTeam.setTearcherName(tearcherName);
				tearcherTeam.setWorkAchievements(workAchievements);
				/*tearcherTeam.setTearcherPicture(tearcherPicture);*/
				tearcherTeamService.addTearcherTeam(tearcherTeam);
				status = "200";
				message = "添加"+tearcherName+"成功！";
				map.put("status", status);
				map.put("message", message);
				System.err.println("添加成功！");
/*				map.put("tearcherTeamId", tearcherTeamService.queryTearcherName(tearcherName).getTearcherTeamId());*/
			}
		}
		return map;
	}
	
	/**
	 * 声明删除教师的方法
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST,consumes="application/json")
	public @ResponseBody Map<String, Object> delateTearcher(@RequestBody Map dataMap) {
		// TODO Auto-generated method stub
		/*声明Map集合引用*/
		Map<String, Object> map = new HashMap<String, Object>();
		
		String tearcherName = ((String) dataMap.get("tearcherName")).trim();
		
		if(tearcherName.equals("") || "".equals(tearcherName))
		{
			status = "401";
			message = "您输入的老师姓名为空!";
			map.put("status", status);
			map.put("message", message);
		}
		else
		{
			TearcherTeam query_team = tearcherTeamService.queryTearcherName(tearcherName);
			if(query_team==null)
			{
				status = "403";
				message = "数据库中不存在这个"+tearcherName+"老师！";
				map.put("status", status);
				map.put("message", message);
			}
			else
			{
				tearcherTeamService.deleteTearcherName(query_team);
				status = "200";
				message = "删除"+tearcherName+"老师成功！";
				map.put("status", status);
				map.put("message", message);
			}
		}
		
		return map;
	}
	
	/**
	 * 声明修改教师信息
	 * @return
	 */
	@RequestMapping(value="/modify",method=RequestMethod.POST,consumes="application/json")
	public @ResponseBody Map<String,Object> modifyTearcher(@RequestBody Map dataMap) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		String tearcherName = (String) dataMap.get("tearcherName");
		String academicGroups = (String) dataMap.get("academicGroups");
		String contactStyle = (String) dataMap.get("contactStyle");
		String personalProfile = (String) dataMap.get("personalProfile");
		String researchDirection = (String) dataMap.get("researchDirection");
		String studyExperience = (String) dataMap.get("studyExperience");
		String workAchievements = (String) dataMap.get("workAchievements");
		
		if(tearcherName.equals("") || "".equals(tearcherName))
		{
			status = "401";
			message = "您输入的老师姓名为空!";
			System.err.println("传输的数据为空");
		}
		else
		{
			TearcherTeam tearcherTeam = tearcherTeamService.queryTearcherName(tearcherName);
			if(tearcherTeam==null)
			{
				status = "403";
				message = "数据库中不存在这个"+tearcherName+"老师！";
				map.put("status", status);
				map.put("message", message);
				System.err.println("没有调用后台老师修改功能");
			}
			else
			{
				/*if(academicGroups.equals("") || "".equals(academicGroups))
				{
					tearcherTeam.setAcademicGroups(tearcherTeam.getAcademicGroups());
				} else if(contactStyle.equals("") || "".equals(contactStyle))
				{
					tearcherTeam.setContactStyle(tearcherTeam.getContactStyle());
				} else if (personalProfile.equals("") || "".equals(personalProfile))
				{
					tearcherTeam.setPersonalProfile(tearcherTeam.getPersonalProfile());
				} else if (researchDirection.equals("") || "".equals(researchDirection))
				{
					tearcherTeam.setResearchDirection(tearcherTeam.getResearchDirection());
				} else if(studyExperience.equals("") || "".equals(studyExperience))
				{
					tearcherTeam.setStudyExperience(tearcherTeam.getStudyExperience());
				} else if (workAchievements.equals("") || "".equals(workAchievements)) 
				{
					tearcherTeam.setWorkAchievements(tearcherTeam.getWorkAchievements());
				} else
				{*/
				tearcherTeam.setAcademicGroups(academicGroups);
				tearcherTeam.setContactStyle(contactStyle);
				tearcherTeam.setPersonalProfile(personalProfile);
				tearcherTeam.setResearchDirection(researchDirection);
				tearcherTeam.setStudyExperience(studyExperience);
				tearcherTeam.setTearcherName(tearcherName);
				tearcherTeam.setWorkAchievements(workAchievements);
				System.err.println("调用修改老师功能");
				tearcherTeamService.modifyTearcherTeam(tearcherTeam);
				status = "200";
				message = "修改成功!";
				map.put("status", status);
				map.put("message", message);
				/*}*/
			}
		}
		
		return map ;
	}
}
